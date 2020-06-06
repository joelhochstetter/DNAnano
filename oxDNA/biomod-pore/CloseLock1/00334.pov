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
	location <35, 94.9851, 44.8844>
	look_at <35, 29.7336, 32.9568>
	direction <0, -65.2515, -11.9276>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 56
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16352, -0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16352, 0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<23.882431, 35.046085, 34.859825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.201717, 34.953369, 35.082218>,  <24.393290, 34.897739, 35.215656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.201717, 34.953369, 35.082218>,  <23.882431, 35.046085, 34.859825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.201717, 34.953369, 35.082218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442156, -0.401365, -0.802125,
		0.409081, 0.886103, -0.217887,
		0.798217, -0.231794, 0.555987,
		24.441183, 34.883831, 35.249016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.410133, 34.817513, 34.415520>,  <23.882431, 35.046085, 34.859825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.410133, 34.817513, 34.415520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.563381, 34.714237, 34.770271>,  <24.655331, 34.652271, 34.983124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.563381, 34.714237, 34.770271>,  <24.410133, 34.817513, 34.415520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.563381, 34.714237, 34.770271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629172, -0.630025, -0.455204,
		0.676285, 0.732399, -0.078932,
		0.383120, -0.258185, 0.886882,
		24.678318, 34.636780, 35.036335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.006048, 34.432404, 33.987072>,  <24.410133, 34.817513, 34.415520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.006048, 34.432404, 33.987072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.723518, 34.329144, 33.723415>,  <24.554001, 34.267185, 33.565224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.723518, 34.329144, 33.723415>,  <25.006048, 34.432404, 33.987072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.723518, 34.329144, 33.723415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497729, 0.843216, 0.203108,
		0.503363, 0.471532, -0.724074,
		-0.706323, -0.258155, -0.659139,
		24.511621, 34.251698, 33.525673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.697977, 34.210564, 33.856537>,  <25.006048, 34.432404, 33.987072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.697977, 34.210564, 33.856537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.088085, 34.144817, 33.797432>,  <26.322149, 34.105370, 33.761967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.088085, 34.144817, 33.797432>,  <25.697977, 34.210564, 33.856537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.088085, 34.144817, 33.797432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207290, -0.912179, -0.353497,
		-0.076687, 0.375385, -0.923691,
		0.975269, -0.164363, -0.147766,
		26.380667, 34.095509, 33.753101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.806189, 34.069122, 33.142582>,  <25.697977, 34.210564, 33.856537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.806189, 34.069122, 33.142582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.092348, 33.884159, 33.352108>,  <26.264044, 33.773178, 33.477821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.092348, 33.884159, 33.352108>,  <25.806189, 34.069122, 33.142582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.092348, 33.884159, 33.352108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213518, -0.858497, -0.466254,
		0.665293, 0.221714, -0.712901,
		0.715399, -0.462413, 0.523812,
		26.306967, 33.745434, 33.509251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.978867, 33.578926, 32.660522>,  <25.806189, 34.069122, 33.142582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.978867, 33.578926, 32.660522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.138720, 33.440975, 33.000252>,  <26.234632, 33.358204, 33.204090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.138720, 33.440975, 33.000252>,  <25.978867, 33.578926, 32.660522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.138720, 33.440975, 33.000252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223489, -0.935226, -0.274599,
		0.889014, -0.080076, -0.450824,
		0.399633, -0.344876, 0.849325,
		26.258610, 33.337513, 33.255051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.519497, 33.114498, 32.418728>,  <25.978867, 33.578926, 32.660522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.519497, 33.114498, 32.418728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.417717, 33.006069, 32.790054>,  <26.356649, 32.941013, 33.012852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.417717, 33.006069, 32.790054>,  <26.519497, 33.114498, 32.418728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.417717, 33.006069, 32.790054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029817, -0.957259, -0.287691,
		0.966626, -0.100882, 0.235492,
		-0.254450, -0.271069, 0.928320,
		26.341383, 32.924747, 33.068550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.005171, 32.608864, 32.594612>,  <26.519497, 33.114498, 32.418728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.005171, 32.608864, 32.594612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.680933, 32.561687, 32.824055>,  <26.486391, 32.533382, 32.961720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.680933, 32.561687, 32.824055>,  <27.005171, 32.608864, 32.594612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.680933, 32.561687, 32.824055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112837, -0.992611, -0.044632,
		0.574636, 0.028546, 0.817911,
		-0.810593, -0.117938, 0.573611,
		26.437756, 32.526306, 32.996140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.226980, 32.134666, 33.009003>,  <27.005171, 32.608864, 32.594612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.226980, 32.134666, 33.009003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.828615, 32.131413, 33.044991>,  <26.589596, 32.129459, 33.066582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.828615, 32.131413, 33.044991>,  <27.226980, 32.134666, 33.009003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.828615, 32.131413, 33.044991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002060, -0.993636, -0.112619,
		0.090312, -0.112343, 0.989557,
		-0.995911, -0.008133, 0.089969,
		26.529842, 32.128971, 33.071980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.103380, 31.450418, 33.269279>,  <27.226980, 32.134666, 33.009003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.103380, 31.450418, 33.269279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.730204, 31.579437, 33.205307>,  <26.506298, 31.656849, 33.166924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.730204, 31.579437, 33.205307>,  <27.103380, 31.450418, 33.269279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.730204, 31.579437, 33.205307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316710, -0.946530, -0.061450,
		-0.171205, -0.006677, 0.985213,
		-0.932944, 0.322547, -0.159936,
		26.450321, 31.676201, 33.157326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.705027, 31.156353, 33.849243>,  <27.103380, 31.450418, 33.269279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.705027, 31.156353, 33.849243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.486368, 31.239187, 33.524704>,  <26.355173, 31.288889, 33.329979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.486368, 31.239187, 33.524704>,  <26.705027, 31.156353, 33.849243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.486368, 31.239187, 33.524704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436839, -0.897164, 0.065329,
		-0.714387, 0.390142, 0.580896,
		-0.546647, 0.207088, -0.811352,
		26.322374, 31.301313, 33.281300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.084305, 31.126368, 34.095253>,  <26.705027, 31.156353, 33.849243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.084305, 31.126368, 34.095253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.060364, 31.083633, 33.698265>,  <26.046000, 31.057993, 33.460072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.060364, 31.083633, 33.698265>,  <26.084305, 31.126368, 34.095253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.060364, 31.083633, 33.698265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295255, -0.947873, 0.119840,
		-0.953542, 0.300206, 0.025188,
		-0.059851, -0.106835, -0.992474,
		26.042408, 31.051582, 33.400524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.508921, 30.670832, 33.973480>,  <26.084305, 31.126368, 34.095253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.508921, 30.670832, 33.973480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.689821, 30.652668, 33.617188>,  <25.798361, 30.641769, 33.403412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.689821, 30.652668, 33.617188>,  <25.508921, 30.670832, 33.973480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.689821, 30.652668, 33.617188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239794, -0.968121, -0.072394,
		-0.859051, 0.246333, -0.448722,
		0.452250, -0.045410, -0.890734,
		25.825497, 30.639046, 33.349968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.062210, 30.336910, 33.390114>,  <25.508921, 30.670832, 33.973480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.062210, 30.336910, 33.390114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.438038, 30.294359, 33.259949>,  <25.663534, 30.268829, 33.181850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.438038, 30.294359, 33.259949>,  <25.062210, 30.336910, 33.390114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.438038, 30.294359, 33.259949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087380, -0.993534, 0.072491,
		-0.331019, -0.039676, -0.942790,
		0.939570, -0.106376, -0.325411,
		25.719910, 30.262445, 33.162327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.967497, 29.808121, 32.883213>,  <25.062210, 30.336910, 33.390114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.967497, 29.808121, 32.883213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.349749, 29.795870, 33.000404>,  <25.579100, 29.788519, 33.070721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.349749, 29.795870, 33.000404>,  <24.967497, 29.808121, 32.883213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.349749, 29.795870, 33.000404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059248, -0.994239, 0.089317,
		0.288557, -0.102712, -0.951937,
		0.955628, -0.030628, 0.292981,
		25.636436, 29.786682, 33.088299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.217003, 29.225962, 32.640404>,  <24.967497, 29.808121, 32.883213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.217003, 29.225962, 32.640404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.502226, 29.308197, 32.908520>,  <25.673359, 29.357538, 33.069389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.502226, 29.308197, 32.908520>,  <25.217003, 29.225962, 32.640404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.502226, 29.308197, 32.908520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076171, -0.973098, 0.217434,
		0.696956, -0.103986, -0.709534,
		0.713057, 0.205588, 0.670287,
		25.716143, 29.369873, 33.109604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.913944, 28.800375, 32.537960>,  <25.217003, 29.225962, 32.640404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.913944, 28.800375, 32.537960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.959938, 28.941620, 32.909355>,  <25.987535, 29.026367, 33.132191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.959938, 28.941620, 32.909355>,  <25.913944, 28.800375, 32.537960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.959938, 28.941620, 32.909355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450528, -0.851567, 0.268065,
		0.885327, 0.387486, -0.257005,
		0.114986, 0.353113, 0.928488,
		25.994434, 29.047554, 33.187901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.568899, 28.698317, 32.716732>,  <25.913944, 28.800375, 32.537960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.568899, 28.698317, 32.716732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.398939, 28.743935, 33.075943>,  <26.296963, 28.771305, 33.291470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.398939, 28.743935, 33.075943>,  <26.568899, 28.698317, 32.716732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.398939, 28.743935, 33.075943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451120, -0.833395, 0.319286,
		0.784824, 0.540783, 0.302663,
		-0.424902, 0.114046, 0.898026,
		26.271469, 28.778149, 33.345352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.111549, 28.646427, 33.101238>,  <26.568899, 28.698317, 32.716732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.111549, 28.646427, 33.101238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.820009, 28.574869, 33.365593>,  <26.645084, 28.531935, 33.524204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.820009, 28.574869, 33.365593>,  <27.111549, 28.646427, 33.101238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.820009, 28.574869, 33.365593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565391, -0.701655, 0.433605,
		0.386144, 0.689693, 0.612549,
		-0.728853, -0.178896, 0.660886,
		26.601353, 28.521200, 33.563858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.506542, 28.559942, 33.688198>,  <27.111549, 28.646427, 33.101238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.506542, 28.559942, 33.688198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.152494, 28.377901, 33.727081>,  <26.940065, 28.268677, 33.750412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.152494, 28.377901, 33.727081>,  <27.506542, 28.559942, 33.688198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.152494, 28.377901, 33.727081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450219, -0.784556, 0.426351,
		-0.117769, 0.421134, 0.899320,
		-0.885118, -0.455102, 0.097206,
		26.886959, 28.241371, 33.756245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.413954, 28.378029, 34.461266>,  <27.506542, 28.559942, 33.688198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.413954, 28.378029, 34.461266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.183981, 28.138937, 34.237774>,  <27.045998, 27.995481, 34.103680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.183981, 28.138937, 34.237774>,  <27.413954, 28.378029, 34.461266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.183981, 28.138937, 34.237774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337089, -0.795263, 0.503912,
		-0.745536, 0.101374, 0.658710,
		-0.574931, -0.597729, -0.558726,
		27.011501, 27.959618, 34.070156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.132622, 27.831730, 34.931328>,  <27.413954, 28.378029, 34.461266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.132622, 27.831730, 34.931328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.066433, 27.648674, 34.581886>,  <27.026720, 27.538839, 34.372223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.066433, 27.648674, 34.581886>,  <27.132622, 27.831730, 34.931328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.066433, 27.648674, 34.581886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209774, -0.881877, 0.422242,
		-0.963646, -0.113391, 0.241926,
		-0.165470, -0.457642, -0.873604,
		27.016792, 27.511381, 34.319805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.816662, 27.247757, 35.226723>,  <27.132622, 27.831730, 34.931328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.816662, 27.247757, 35.226723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.919304, 27.128910, 34.858837>,  <26.980888, 27.057602, 34.638107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.919304, 27.128910, 34.858837>,  <26.816662, 27.247757, 35.226723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.919304, 27.128910, 34.858837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274828, -0.889867, 0.364152,
		-0.926619, -0.346207, -0.146688,
		0.256605, -0.297116, -0.919715,
		26.996286, 27.039776, 34.582924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.562675, 26.583668, 35.201370>,  <26.816662, 27.247757, 35.226723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.562675, 26.583668, 35.201370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.833344, 26.611807, 34.908203>,  <26.995745, 26.628691, 34.732304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.833344, 26.611807, 34.908203>,  <26.562675, 26.583668, 35.201370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.833344, 26.611807, 34.908203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401896, -0.869343, 0.287614,
		-0.616924, -0.489177, -0.616532,
		0.676672, 0.070345, -0.732916,
		27.036345, 26.632910, 34.688328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.535776, 25.984528, 35.039703>,  <26.562675, 26.583668, 35.201370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.535776, 25.984528, 35.039703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.878584, 26.151022, 34.918201>,  <27.084269, 26.250919, 34.845299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.878584, 26.151022, 34.918201>,  <26.535776, 25.984528, 35.039703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.878584, 26.151022, 34.918201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509830, -0.770506, 0.382614,
		-0.074787, -0.482771, -0.872547,
		0.857018, 0.416236, -0.303755,
		27.135689, 26.275892, 34.827076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.972216, 25.635603, 34.500099>,  <26.535776, 25.984528, 35.039703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.972216, 25.635603, 34.500099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.162628, 25.837162, 34.788399>,  <27.276875, 25.958097, 34.961380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.162628, 25.837162, 34.788399>,  <26.972216, 25.635603, 34.500099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.162628, 25.837162, 34.788399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547759, -0.811065, 0.205265,
		0.688009, 0.297085, -0.662106,
		0.476030, 0.503898, 0.720751,
		27.305437, 25.988331, 35.004623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.622877, 25.509083, 34.424427>,  <26.972216, 25.635603, 34.500099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.622877, 25.509083, 34.424427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.598471, 25.588112, 34.815781>,  <27.583826, 25.635529, 35.050594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.598471, 25.588112, 34.815781>,  <27.622877, 25.509083, 34.424427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.598471, 25.588112, 34.815781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448478, -0.870270, 0.203710,
		0.891709, 0.451215, -0.035505,
		-0.061019, 0.197573, 0.978387,
		27.580166, 25.647385, 35.109299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.311508, 25.231966, 34.726082>,  <27.622877, 25.509083, 34.424427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.311508, 25.231966, 34.726082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.007359, 25.261625, 34.984177>,  <27.824869, 25.279421, 35.139034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.007359, 25.261625, 34.984177>,  <28.311508, 25.231966, 34.726082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.007359, 25.261625, 34.984177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251291, -0.882504, 0.397543,
		0.598901, 0.464424, 0.652402,
		-0.760376, 0.074146, 0.645237,
		27.779245, 25.283869, 35.177750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.638594, 25.033039, 35.418865>,  <28.311508, 25.231966, 34.726082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.638594, 25.033039, 35.418865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.241156, 24.987890, 35.420975>,  <28.002693, 24.960800, 35.422241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.241156, 24.987890, 35.420975>,  <28.638594, 25.033039, 35.418865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.241156, 24.987890, 35.420975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100913, -0.865375, 0.490860,
		-0.050840, 0.488248, 0.871223,
		-0.993595, -0.112873, 0.005275,
		27.943077, 24.954029, 35.422558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.397926, 24.740156, 36.123318>,  <28.638594, 25.033039, 35.418865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.397926, 24.740156, 36.123318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.140003, 24.629547, 35.838291>,  <27.985249, 24.563181, 35.667274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.140003, 24.629547, 35.838291>,  <28.397926, 24.740156, 36.123318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.140003, 24.629547, 35.838291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035584, -0.920393, 0.389373,
		-0.763516, 0.276427, 0.583636,
		-0.644808, -0.276525, -0.712571,
		27.946562, 24.546589, 35.624519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.924185, 24.627272, 36.661781>,  <28.397926, 24.740156, 36.123318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.924185, 24.627272, 36.661781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.006079, 24.615864, 37.053143>,  <28.055214, 24.609018, 37.287960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.006079, 24.615864, 37.053143>,  <27.924185, 24.627272, 36.661781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.006079, 24.615864, 37.053143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259428, 0.965409, -0.026145,
		-0.943812, 0.259178, 0.205050,
		0.204733, -0.028520, 0.978402,
		28.067499, 24.607307, 37.346664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.489241, 25.016331, 37.048992>,  <27.924185, 24.627272, 36.661781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.489241, 25.016331, 37.048992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.847107, 24.991945, 37.226017>,  <28.061827, 24.977314, 37.332233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.847107, 24.991945, 37.226017>,  <27.489241, 25.016331, 37.048992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.847107, 24.991945, 37.226017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129196, 0.983622, -0.125686,
		-0.427651, 0.169624, 0.887886,
		0.894664, -0.060961, 0.442562,
		28.115505, 24.973658, 37.358784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.404217, 25.504868, 37.530384>,  <27.489241, 25.016331, 37.048992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.404217, 25.504868, 37.530384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.786175, 25.427885, 37.439930>,  <28.015350, 25.381697, 37.385658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.786175, 25.427885, 37.439930>,  <27.404217, 25.504868, 37.530384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.786175, 25.427885, 37.439930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164146, 0.976719, -0.138112,
		0.247448, 0.094764, 0.964256,
		0.954895, -0.192455, -0.226132,
		28.072643, 25.370148, 37.372089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.757254, 26.163118, 37.608379>,  <27.404217, 25.504868, 37.530384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.757254, 26.163118, 37.608379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.028732, 25.915388, 37.450489>,  <28.191620, 25.766750, 37.355755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.028732, 25.915388, 37.450489>,  <27.757254, 26.163118, 37.608379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.028732, 25.915388, 37.450489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545332, 0.784978, -0.293977,
		0.491916, -0.015733, 0.870501,
		0.678699, -0.619324, -0.394723,
		28.232342, 25.729591, 37.332073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.330431, 26.426699, 37.850826>,  <27.757254, 26.163118, 37.608379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.330431, 26.426699, 37.850826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.357832, 26.227112, 37.505264>,  <28.374273, 26.107359, 37.297928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.357832, 26.227112, 37.505264>,  <28.330431, 26.426699, 37.850826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.357832, 26.227112, 37.505264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388130, 0.811052, -0.437664,
		0.919055, -0.305327, 0.249225,
		0.068504, -0.498969, -0.863908,
		28.378384, 26.077421, 37.246094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.108578, 26.457888, 37.653301>,  <28.330431, 26.426699, 37.850826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.108578, 26.457888, 37.653301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.860142, 26.435713, 37.340591>,  <28.711081, 26.422407, 37.152966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.860142, 26.435713, 37.340591>,  <29.108578, 26.457888, 37.653301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.860142, 26.435713, 37.340591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330019, 0.886252, -0.325032,
		0.710871, -0.459875, -0.532145,
		-0.621088, -0.055438, -0.781777,
		28.673815, 26.419081, 37.106056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.547363, 26.682014, 37.110195>,  <29.108578, 26.457888, 37.653301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.547363, 26.682014, 37.110195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.188587, 26.723175, 36.938190>,  <28.973322, 26.747871, 36.834988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.188587, 26.723175, 36.938190>,  <29.547363, 26.682014, 37.110195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.188587, 26.723175, 36.938190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304512, 0.848892, -0.432036,
		0.320573, -0.518454, -0.792741,
		-0.896942, 0.102900, -0.430007,
		28.919504, 26.754045, 36.809189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.653740, 26.898991, 36.437511>,  <29.547363, 26.682014, 37.110195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.653740, 26.898991, 36.437511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.271147, 27.004837, 36.486698>,  <29.041592, 27.068344, 36.516209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.271147, 27.004837, 36.486698>,  <29.653740, 26.898991, 36.437511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.271147, 27.004837, 36.486698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208862, 0.915164, -0.344750,
		-0.203759, -0.304064, -0.930606,
		-0.956483, 0.264614, 0.122966,
		28.984201, 27.084221, 36.523586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.500538, 27.176052, 35.753433>,  <29.653740, 26.898991, 36.437511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.500538, 27.176052, 35.753433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.236898, 27.305134, 36.025154>,  <29.078714, 27.382584, 36.188187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.236898, 27.305134, 36.025154>,  <29.500538, 27.176052, 35.753433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.236898, 27.305134, 36.025154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160035, 0.942753, -0.292585,
		-0.734830, -0.084131, -0.673013,
		-0.659100, 0.322706, 0.679299,
		29.039167, 27.401945, 36.228943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.208527, 27.741316, 35.417004>,  <29.500538, 27.176052, 35.753433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.208527, 27.741316, 35.417004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.064207, 27.810539, 35.783581>,  <28.977615, 27.852074, 36.003529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.064207, 27.810539, 35.783581>,  <29.208527, 27.741316, 35.417004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.064207, 27.810539, 35.783581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145144, 0.960242, -0.238473,
		-0.921281, -0.219057, -0.321334,
		-0.360798, 0.173061, 0.916447,
		28.955967, 27.862457, 36.058514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.660881, 28.087381, 35.352783>,  <29.208527, 27.741316, 35.417004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.660881, 28.087381, 35.352783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.766315, 28.170607, 35.729557>,  <28.829576, 28.220541, 35.955620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.766315, 28.170607, 35.729557>,  <28.660881, 28.087381, 35.352783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.766315, 28.170607, 35.729557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247557, 0.958349, -0.142416,
		-0.932330, -0.195643, 0.304114,
		0.263584, 0.208064, 0.941930,
		28.845390, 28.233027, 36.012135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.175425, 28.398214, 35.785839>,  <28.660881, 28.087381, 35.352783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.175425, 28.398214, 35.785839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.536045, 28.518335, 35.910435>,  <28.752417, 28.590408, 35.985191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.536045, 28.518335, 35.910435>,  <28.175425, 28.398214, 35.785839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.536045, 28.518335, 35.910435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306720, 0.951345, -0.029427,
		-0.305171, -0.069011, 0.949794,
		0.901551, 0.300301, 0.311490,
		28.806511, 28.608425, 36.003883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.986427, 28.949621, 36.134289>,  <28.175425, 28.398214, 35.785839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.986427, 28.949621, 36.134289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.384695, 28.986134, 36.127193>,  <28.623655, 29.008041, 36.122936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.384695, 28.986134, 36.127193>,  <27.986427, 28.949621, 36.134289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.384695, 28.986134, 36.127193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086551, 0.979458, 0.182130,
		0.033999, -0.179806, 0.983115,
		0.995667, 0.091281, -0.017738,
		28.683395, 29.013517, 36.121872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.150860, 29.353411, 36.710617>,  <27.986427, 28.949621, 36.134289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.150860, 29.353411, 36.710617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.475960, 29.394873, 36.481293>,  <28.671021, 29.419750, 36.343697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.475960, 29.394873, 36.481293>,  <28.150860, 29.353411, 36.710617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.475960, 29.394873, 36.481293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014042, 0.987245, 0.158590,
		0.582440, -0.120844, 0.803841,
		0.812752, 0.103657, -0.573314,
		28.719786, 29.425970, 36.309299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.456564, 29.844263, 37.096066>,  <28.150860, 29.353411, 36.710617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.456564, 29.844263, 37.096066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.670267, 29.861940, 36.758400>,  <28.798489, 29.872547, 36.555801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.670267, 29.861940, 36.758400>,  <28.456564, 29.844263, 37.096066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.670267, 29.861940, 36.758400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048090, 0.998604, 0.021845,
		0.843951, 0.028925, 0.535639,
		0.534259, 0.044195, -0.844164,
		28.830545, 29.875198, 36.505150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.985418, 30.357153, 37.184006>,  <28.456564, 29.844263, 37.096066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.985418, 30.357153, 37.184006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.940210, 30.328476, 36.787605>,  <28.913086, 30.311270, 36.549763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.940210, 30.328476, 36.787605>,  <28.985418, 30.357153, 37.184006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.940210, 30.328476, 36.787605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031122, 0.997160, -0.068588,
		0.993106, 0.023090, -0.114929,
		-0.113019, -0.071692, -0.991003,
		28.906305, 30.306969, 36.490303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.454111, 30.955074, 36.928814>,  <28.985418, 30.357153, 37.184006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.454111, 30.955074, 36.928814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.221163, 30.861416, 36.617424>,  <29.081394, 30.805220, 36.430592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.221163, 30.861416, 36.617424>,  <29.454111, 30.955074, 36.928814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.221163, 30.861416, 36.617424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195240, 0.969878, -0.145662,
		0.789131, 0.067160, -0.610542,
		-0.582369, -0.234148, -0.778473,
		29.046452, 30.791172, 36.383881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.640795, 31.476549, 36.417728>,  <29.454111, 30.955074, 36.928814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.640795, 31.476549, 36.417728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.268120, 31.345259, 36.355465>,  <29.044516, 31.266485, 36.318108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.268120, 31.345259, 36.355465>,  <29.640795, 31.476549, 36.417728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.268120, 31.345259, 36.355465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295516, 0.934019, -0.200695,
		0.211257, -0.140987, -0.967209,
		-0.931687, -0.328224, -0.155654,
		28.988613, 31.246792, 36.308769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.536875, 31.632154, 35.678524>,  <29.640795, 31.476549, 36.417728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.536875, 31.632154, 35.678524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.182529, 31.595675, 35.860481>,  <28.969921, 31.573788, 35.969654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.182529, 31.595675, 35.860481>,  <29.536875, 31.632154, 35.678524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.182529, 31.595675, 35.860481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231654, 0.936465, -0.263382,
		-0.401970, -0.338698, -0.850708,
		-0.885865, -0.091198, 0.454891,
		28.916769, 31.568316, 35.996948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.082403, 31.852041, 35.096699>,  <29.536875, 31.632154, 35.678524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.082403, 31.852041, 35.096699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.898130, 31.872917, 35.451111>,  <28.787567, 31.885443, 35.663757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.898130, 31.872917, 35.451111>,  <29.082403, 31.852041, 35.096699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.898130, 31.872917, 35.451111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512059, 0.799756, -0.313347,
		-0.724961, -0.598053, -0.341708,
		-0.460681, 0.052190, 0.886030,
		28.759926, 31.888575, 35.716919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.399025, 31.796844, 34.934063>,  <29.082403, 31.852041, 35.096699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.399025, 31.796844, 34.934063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.421793, 31.976366, 35.290791>,  <28.435453, 32.084080, 35.504826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.421793, 31.976366, 35.290791>,  <28.399025, 31.796844, 34.934063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.421793, 31.976366, 35.290791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438954, 0.813544, -0.381399,
		-0.896705, -0.369756, 0.243313,
		0.056921, 0.448806, 0.891815,
		28.438869, 32.111008, 35.558334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.815516, 32.050770, 35.029388>,  <28.399025, 31.796844, 34.934063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.815516, 32.050770, 35.029388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.082827, 32.263283, 35.237675>,  <28.243214, 32.390789, 35.362648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.082827, 32.263283, 35.237675>,  <27.815516, 32.050770, 35.029388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.082827, 32.263283, 35.237675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360874, 0.843619, -0.397589,
		-0.650519, 0.077786, 0.755496,
		0.668278, 0.531278, 0.520719,
		28.283310, 32.422665, 35.393890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.399090, 32.661270, 35.177101>,  <27.815516, 32.050770, 35.029388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.399090, 32.661270, 35.177101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.748178, 32.804798, 35.309532>,  <27.957632, 32.890915, 35.388988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.748178, 32.804798, 35.309532>,  <27.399090, 32.661270, 35.177101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.748178, 32.804798, 35.309532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202605, 0.883148, -0.423085,
		-0.444197, 0.302157, 0.843439,
		0.872720, 0.358819, 0.331073,
		28.009995, 32.912445, 35.408855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.172733, 33.145439, 35.607723>,  <27.399090, 32.661270, 35.177101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.172733, 33.145439, 35.607723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.535854, 33.194607, 35.447330>,  <27.753727, 33.224106, 35.351093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.535854, 33.194607, 35.447330>,  <27.172733, 33.145439, 35.607723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.535854, 33.194607, 35.447330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329472, 0.800593, -0.500498,
		0.259504, 0.586466, 0.767278,
		0.907803, 0.122915, -0.400982,
		27.808195, 33.231480, 35.327038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.288635, 33.760647, 35.610355>,  <27.172733, 33.145439, 35.607723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.288635, 33.760647, 35.610355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.548862, 33.634537, 35.333988>,  <27.704998, 33.558872, 35.168167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.548862, 33.634537, 35.333988>,  <27.288635, 33.760647, 35.610355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.548862, 33.634537, 35.333988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264847, 0.758461, -0.595478,
		0.711772, 0.570385, 0.409929,
		0.650566, -0.315276, -0.690916,
		27.744032, 33.539955, 35.126713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.858183, 34.273674, 35.275772>,  <27.288635, 33.760647, 35.610355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.858183, 34.273674, 35.275772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.744694, 34.004341, 35.002678>,  <27.676600, 33.842743, 34.838821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.744694, 34.004341, 35.002678>,  <27.858183, 34.273674, 35.275772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.744694, 34.004341, 35.002678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112623, 0.730462, -0.673604,
		0.952270, -0.114225, -0.283081,
		-0.283722, -0.673334, -0.682732,
		27.659576, 33.802341, 34.797859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.322651, 34.536350, 34.717609>,  <27.858183, 34.273674, 35.275772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.322651, 34.536350, 34.717609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.030155, 34.300137, 34.581043>,  <27.854658, 34.158409, 34.499104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.030155, 34.300137, 34.581043>,  <28.322651, 34.536350, 34.717609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.030155, 34.300137, 34.581043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138131, 0.618342, -0.773675,
		0.667990, -0.518581, -0.533726,
		-0.731238, -0.590531, -0.341414,
		27.810783, 34.122978, 34.478619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.039732, 34.686779, 34.920544>,  <28.322651, 34.536350, 34.717609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.039732, 34.686779, 34.920544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.335323, 34.897266, 34.752254>,  <29.512678, 35.023560, 34.651283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.335323, 34.897266, 34.752254>,  <29.039732, 34.686779, 34.920544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.335323, 34.897266, 34.752254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300637, 0.301293, 0.904898,
		0.602931, -0.795186, 0.064450,
		0.738980, 0.526215, -0.420721,
		29.557018, 35.055130, 34.626038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.568108, 34.581230, 35.371269>,  <29.039732, 34.686779, 34.920544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.568108, 34.581230, 35.371269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.698673, 34.880341, 35.140003>,  <29.777012, 35.059807, 35.001244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.698673, 34.880341, 35.140003>,  <29.568108, 34.581230, 35.371269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.698673, 34.880341, 35.140003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610026, 0.300581, 0.733157,
		0.722026, -0.592011, -0.358051,
		0.326414, 0.747779, -0.578169,
		29.796598, 35.104675, 34.966553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.331833, 34.527657, 35.221081>,  <29.568108, 34.581230, 35.371269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.331833, 34.527657, 35.221081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.200403, 34.904655, 35.196621>,  <30.121546, 35.130856, 35.181946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.200403, 34.904655, 35.196621>,  <30.331833, 34.527657, 35.221081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.200403, 34.904655, 35.196621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697859, 0.285895, 0.656702,
		0.636422, 0.173100, -0.751667,
		-0.328573, 0.942497, -0.061150,
		30.101831, 35.187405, 35.178276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.763863, 35.127148, 35.299179>,  <30.331833, 34.527657, 35.221081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.763863, 35.127148, 35.299179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.435760, 35.340855, 35.380894>,  <30.238899, 35.469078, 35.429924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.435760, 35.340855, 35.380894>,  <30.763863, 35.127148, 35.299179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.435760, 35.340855, 35.380894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478820, 0.445976, 0.756199,
		0.312908, 0.718094, -0.621635,
		-0.820256, 0.534272, 0.204288,
		30.189684, 35.501137, 35.442181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.949591, 35.844486, 35.371025>,  <30.763863, 35.127148, 35.299179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.949591, 35.844486, 35.371025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.598934, 35.814342, 35.561108>,  <30.388540, 35.796257, 35.675156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.598934, 35.814342, 35.561108>,  <30.949591, 35.844486, 35.371025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.598934, 35.814342, 35.561108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423733, 0.346947, 0.836707,
		-0.227927, 0.934852, -0.272215,
		-0.876641, -0.075361, 0.475206,
		30.335941, 35.791733, 35.703671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.730484, 36.537296, 35.737961>,  <30.949591, 35.844486, 35.371025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.730484, 36.537296, 35.737961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.555565, 36.217983, 35.903618>,  <30.450613, 36.026394, 36.003010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.555565, 36.217983, 35.903618>,  <30.730484, 36.537296, 35.737961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.555565, 36.217983, 35.903618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227434, 0.347369, 0.909730,
		-0.870082, 0.492014, 0.029652,
		-0.437300, -0.798283, 0.414141,
		30.424376, 35.978497, 36.027859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.352106, 36.683388, 36.266712>,  <30.730484, 36.537296, 35.737961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.352106, 36.683388, 36.266712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.449118, 36.305798, 36.356239>,  <30.507324, 36.079243, 36.409958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.449118, 36.305798, 36.356239>,  <30.352106, 36.683388, 36.266712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.449118, 36.305798, 36.356239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215342, 0.277334, 0.936330,
		-0.945943, -0.178887, 0.270538,
		0.242527, -0.943973, 0.223821,
		30.521875, 36.022606, 36.423386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.081818, 36.620331, 36.925716>,  <30.352106, 36.683388, 36.266712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.081818, 36.620331, 36.925716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.347696, 36.323162, 36.894093>,  <30.507223, 36.144863, 36.875118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.347696, 36.323162, 36.894093>,  <30.081818, 36.620331, 36.925716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.347696, 36.323162, 36.894093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487487, 0.351079, 0.799438,
		-0.566160, -0.569924, 0.595524,
		0.664695, -0.742920, -0.079064,
		30.547104, 36.100285, 36.870373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.201815, 36.443794, 37.590797>,  <30.081818, 36.620331, 36.925716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.201815, 36.443794, 37.590797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.516541, 36.256943, 37.429451>,  <30.705376, 36.144833, 37.332642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.516541, 36.256943, 37.429451>,  <30.201815, 36.443794, 37.590797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.516541, 36.256943, 37.429451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498287, 0.095146, 0.861776,
		-0.364184, -0.879054, 0.307627,
		0.786817, -0.467131, -0.403370,
		30.752586, 36.116802, 37.308441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.412178, 35.889969, 37.950809>,  <30.201815, 36.443794, 37.590797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.412178, 35.889969, 37.950809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.749138, 35.982903, 37.756332>,  <30.951313, 36.038662, 37.639645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.749138, 35.982903, 37.756332>,  <30.412178, 35.889969, 37.950809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.749138, 35.982903, 37.756332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537769, -0.305269, 0.785885,
		0.034171, -0.923488, -0.382103,
		0.842399, 0.232338, -0.486192,
		31.001858, 36.052605, 37.610474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.798107, 35.365242, 38.163639>,  <30.412178, 35.889969, 37.950809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.798107, 35.365242, 38.163639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.026207, 35.672123, 38.046185>,  <31.163067, 35.856251, 37.975712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.026207, 35.672123, 38.046185>,  <30.798107, 35.365242, 38.163639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.026207, 35.672123, 38.046185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539494, -0.080205, 0.838161,
		0.619487, -0.636373, -0.459637,
		0.570248, 0.767201, -0.293633,
		31.197281, 35.902283, 37.958096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.490480, 35.205944, 38.331841>,  <30.798107, 35.365242, 38.163639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.490480, 35.205944, 38.331841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.506590, 35.603031, 38.286430>,  <31.516256, 35.841282, 38.259186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.506590, 35.603031, 38.286430>,  <31.490480, 35.205944, 38.331841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.506590, 35.603031, 38.286430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643248, 0.061184, 0.763210,
		0.764598, -0.103764, -0.636100,
		0.040274, 0.992718, -0.113527,
		31.518673, 35.900848, 38.252373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.264999, 35.417622, 38.276001>,  <31.490480, 35.205944, 38.331841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.264999, 35.417622, 38.276001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.059837, 35.737019, 38.402077>,  <31.936741, 35.928658, 38.477722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.059837, 35.737019, 38.402077>,  <32.264999, 35.417622, 38.276001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.059837, 35.737019, 38.402077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571817, 0.043938, 0.819204,
		0.640277, 0.600404, -0.479126,
		-0.512905, 0.798489, 0.315189,
		31.905966, 35.976566, 38.496632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.737469, 35.900192, 38.598331>,  <32.264999, 35.417622, 38.276001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.737469, 35.900192, 38.598331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.415157, 36.077667, 38.755234>,  <32.221771, 36.184151, 38.849377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.415157, 36.077667, 38.755234>,  <32.737469, 35.900192, 38.598331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.415157, 36.077667, 38.755234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487258, 0.120229, 0.864942,
		0.336602, 0.888081, -0.313068,
		-0.805779, 0.443686, 0.392255,
		32.173424, 36.210773, 38.872910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.023624, 36.319748, 39.107243>,  <32.737469, 35.900192, 38.598331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.023624, 36.319748, 39.107243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.637215, 36.341354, 39.208344>,  <32.405369, 36.354317, 39.269005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.637215, 36.341354, 39.208344>,  <33.023624, 36.319748, 39.107243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.637215, 36.341354, 39.208344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256600, 0.317694, 0.912813,
		-0.030992, 0.946653, -0.320760,
		-0.966021, 0.054017, 0.252757,
		32.347408, 36.357559, 39.284172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.914852, 36.987091, 39.443604>,  <33.023624, 36.319748, 39.107243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.914852, 36.987091, 39.443604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.617657, 36.742352, 39.552128>,  <32.439339, 36.595509, 39.617245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.617657, 36.742352, 39.552128>,  <32.914852, 36.987091, 39.443604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.617657, 36.742352, 39.552128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280436, 0.083484, 0.956235,
		-0.607720, 0.786558, 0.109556,
		-0.742989, -0.611847, 0.271314,
		32.394760, 36.558796, 39.633522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.646847, 37.366879, 40.037876>,  <32.914852, 36.987091, 39.443604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.646847, 37.366879, 40.037876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.546791, 36.981098, 40.071953>,  <32.486759, 36.749630, 40.092400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.546791, 36.981098, 40.071953>,  <32.646847, 37.366879, 40.037876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.546791, 36.981098, 40.071953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239008, 0.023757, 0.970727,
		-0.938246, 0.263179, 0.224570,
		-0.250139, -0.964454, 0.085192,
		32.471748, 36.691761, 40.097511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237339, 37.375416, 40.543568>,  <32.646847, 37.366879, 40.037876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237339, 37.375416, 40.543568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.375004, 37.001205, 40.511711>,  <32.457603, 36.776680, 40.492596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.375004, 37.001205, 40.511711>,  <32.237339, 37.375416, 40.543568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.375004, 37.001205, 40.511711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152946, -0.027830, 0.987843,
		-0.926369, -0.352159, 0.133507,
		0.344162, -0.935526, -0.079642,
		32.478252, 36.720547, 40.487820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.811758, 36.931438, 40.931824>,  <32.237339, 37.375416, 40.543568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.811758, 36.931438, 40.931824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.164932, 36.747395, 40.894470>,  <32.376839, 36.636967, 40.872059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.164932, 36.747395, 40.894470>,  <31.811758, 36.931438, 40.931824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.164932, 36.747395, 40.894470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082331, -0.044086, 0.995630,
		-0.462219, -0.886765, -0.001044,
		0.882936, -0.460113, -0.093385,
		32.429813, 36.609360, 40.866455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.755630, 36.508026, 41.602077>,  <31.811758, 36.931438, 40.931824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.755630, 36.508026, 41.602077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.132702, 36.474083, 41.472984>,  <32.358944, 36.453716, 41.395531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.132702, 36.474083, 41.472984>,  <31.755630, 36.508026, 41.602077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.132702, 36.474083, 41.472984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297889, -0.221872, 0.928458,
		-0.150389, -0.971376, -0.183877,
		0.942680, -0.084855, -0.322729,
		32.415504, 36.448627, 41.376163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.861027, 35.809345, 41.600651>,  <31.755630, 36.508026, 41.602077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.861027, 35.809345, 41.600651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.207802, 36.000271, 41.658047>,  <32.415867, 36.114826, 41.692482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.207802, 36.000271, 41.658047>,  <31.861027, 35.809345, 41.600651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.207802, 36.000271, 41.658047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043349, -0.214585, 0.975743,
		0.496527, -0.852128, -0.165341,
		0.866938, 0.477316, 0.143486,
		32.467884, 36.143467, 41.701092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.102432, 35.488056, 42.111279>,  <31.861027, 35.809345, 41.600651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.102432, 35.488056, 42.111279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.352200, 35.800289, 42.122524>,  <32.502060, 35.987629, 42.129272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.352200, 35.800289, 42.122524>,  <32.102432, 35.488056, 42.111279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.352200, 35.800289, 42.122524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097755, -0.113811, 0.988681,
		0.774950, -0.614601, -0.147371,
		0.624417, 0.780585, 0.028118,
		32.539524, 36.034466, 42.130959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.536499, 35.318718, 42.574169>,  <32.102432, 35.488056, 42.111279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.536499, 35.318718, 42.574169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.569279, 35.716770, 42.552258>,  <32.588947, 35.955601, 42.539112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.569279, 35.716770, 42.552258>,  <32.536499, 35.318718, 42.574169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.569279, 35.716770, 42.552258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094942, 0.046918, 0.994377,
		0.992104, -0.086685, -0.090635,
		0.081946, 0.995130, -0.054778,
		32.593861, 36.015308, 42.535824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129940, 35.576817, 42.894859>,  <32.536499, 35.318718, 42.574169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129940, 35.576817, 42.894859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.926159, 35.920929, 42.902504>,  <32.803890, 36.127396, 42.907093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.926159, 35.920929, 42.902504>,  <33.129940, 35.576817, 42.894859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.926159, 35.920929, 42.902504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070297, 0.019468, 0.997336,
		0.857621, 0.509442, -0.070393,
		-0.509456, 0.860285, 0.019116,
		32.773323, 36.179016, 42.908237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.482277, 36.047073, 43.426170>,  <33.129940, 35.576817, 42.894859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.482277, 36.047073, 43.426170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.097702, 36.151917, 43.392845>,  <32.866959, 36.214825, 43.372849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.097702, 36.151917, 43.392845>,  <33.482277, 36.047073, 43.426170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097702, 36.151917, 43.392845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106159, -0.074206, 0.991576,
		0.253721, 0.962180, 0.099170,
		-0.961434, 0.262112, -0.083317,
		32.809273, 36.230549, 43.367851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332561, 36.542660, 43.992043>,  <33.482277, 36.047073, 43.426170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332561, 36.542660, 43.992043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970146, 36.404480, 43.894253>,  <32.752697, 36.321571, 43.835579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970146, 36.404480, 43.894253>,  <33.332561, 36.542660, 43.992043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.970146, 36.404480, 43.894253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234238, -0.071777, 0.969526,
		-0.352470, 0.935688, -0.015885,
		-0.906034, -0.345450, -0.244473,
		32.698338, 36.300846, 43.820911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.878128, 36.911324, 44.313118>,  <33.332561, 36.542660, 43.992043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.878128, 36.911324, 44.313118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.651859, 36.590118, 44.238079>,  <32.516098, 36.397396, 44.193054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.651859, 36.590118, 44.238079>,  <32.878128, 36.911324, 44.313118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.651859, 36.590118, 44.238079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356937, 0.033344, 0.933533,
		-0.743382, 0.595031, -0.305486,
		-0.565668, -0.803011, -0.187602,
		32.482159, 36.349216, 44.181797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.152504, 37.168636, 44.345600>,  <32.878128, 36.911324, 44.313118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.152504, 37.168636, 44.345600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.149139, 36.773376, 44.406910>,  <32.147121, 36.536221, 44.443695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.149139, 36.773376, 44.406910>,  <32.152504, 37.168636, 44.345600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.149139, 36.773376, 44.406910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204838, 0.151732, 0.966964,
		-0.978760, -0.023259, -0.203687,
		-0.008415, -0.988148, 0.153274,
		32.146614, 36.476933, 44.452892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.593254, 37.139332, 44.827835>,  <32.152504, 37.168636, 44.345600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.593254, 37.139332, 44.827835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.756163, 36.774105, 44.819424>,  <31.853909, 36.554970, 44.814377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.756163, 36.774105, 44.819424>,  <31.593254, 37.139332, 44.827835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.756163, 36.774105, 44.819424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251123, -0.134087, 0.958623,
		-0.878104, -0.385140, -0.283901,
		0.407271, -0.913065, -0.021025,
		31.878344, 36.500187, 44.813118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.011522, 36.664440, 45.058525>,  <31.593254, 37.139332, 44.827835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.011522, 36.664440, 45.058525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.338636, 36.449974, 45.142189>,  <31.534904, 36.321293, 45.192387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.338636, 36.449974, 45.142189>,  <31.011522, 36.664440, 45.058525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.338636, 36.449974, 45.142189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319663, -0.120948, 0.939780,
		-0.478584, -0.835401, -0.270303,
		0.817785, -0.536169, 0.209163,
		31.583973, 36.289124, 45.204937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.827631, 36.135342, 45.388329>,  <31.011522, 36.664440, 45.058525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.827631, 36.135342, 45.388329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.211102, 36.110699, 45.499432>,  <31.441183, 36.095913, 45.566093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.211102, 36.110699, 45.499432>,  <30.827631, 36.135342, 45.388329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.211102, 36.110699, 45.499432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282356, -0.086307, 0.955419,
		-0.034888, -0.994362, -0.100135,
		0.958675, -0.061606, 0.277753,
		31.498705, 36.092216, 45.582756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.873156, 35.624523, 45.895454>,  <30.827631, 36.135342, 45.388329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.873156, 35.624523, 45.895454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.196228, 35.851425, 45.959789>,  <31.390072, 35.987568, 45.998390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.196228, 35.851425, 45.959789>,  <30.873156, 35.624523, 45.895454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.196228, 35.851425, 45.959789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215001, 0.029342, 0.976173,
		0.549023, -0.823017, 0.145660,
		0.807681, 0.567259, 0.160840,
		31.438532, 36.021603, 46.008041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.194380, 35.316589, 46.457699>,  <30.873156, 35.624523, 45.895454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.194380, 35.316589, 46.457699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.321608, 35.695747, 46.450417>,  <31.397945, 35.923241, 46.446049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.321608, 35.695747, 46.450417>,  <31.194380, 35.316589, 46.457699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.321608, 35.695747, 46.450417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012260, 0.023312, 0.999653,
		0.947988, -0.317737, 0.019036,
		0.318070, 0.947892, -0.018204,
		31.417028, 35.980114, 46.444954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.857981, 35.267769, 46.831375>,  <31.194380, 35.316589, 46.457699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.857981, 35.267769, 46.831375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.755659, 35.654045, 46.849323>,  <31.694265, 35.885811, 46.860092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.755659, 35.654045, 46.849323>,  <31.857981, 35.267769, 46.831375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.755659, 35.654045, 46.849323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358673, 0.051707, 0.932030,
		0.897730, 0.254509, -0.359592,
		-0.255804, 0.965687, 0.044867,
		31.678919, 35.943752, 46.862782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.450073, 35.562698, 47.096966>,  <31.857981, 35.267769, 46.831375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.450073, 35.562698, 47.096966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.139938, 35.807228, 47.160385>,  <31.953857, 35.953945, 47.198437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.139938, 35.807228, 47.160385>,  <32.450073, 35.562698, 47.096966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.139938, 35.807228, 47.160385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335222, 0.185608, 0.923675,
		0.535240, 0.769305, -0.348838,
		-0.775335, 0.611326, 0.158544,
		31.907337, 35.990627, 47.207947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.710491, 36.246376, 47.271454>,  <32.450073, 35.562698, 47.096966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.710491, 36.246376, 47.271454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.355129, 36.150799, 47.428242>,  <32.141911, 36.093452, 47.522312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.355129, 36.150799, 47.428242>,  <32.710491, 36.246376, 47.271454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.355129, 36.150799, 47.428242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357271, 0.176260, 0.917219,
		-0.288248, 0.954903, -0.071225,
		-0.888409, -0.238939, 0.391965,
		32.088608, 36.079117, 47.545830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.479298, 36.775921, 47.742764>,  <32.710491, 36.246376, 47.271454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.479298, 36.775921, 47.742764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.269127, 36.452797, 47.849628>,  <32.143024, 36.258923, 47.913746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.269127, 36.452797, 47.849628>,  <32.479298, 36.775921, 47.742764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.269127, 36.452797, 47.849628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157617, 0.216149, 0.963554,
		-0.836111, 0.548388, 0.013753,
		-0.525429, -0.807806, 0.267160,
		32.111500, 36.210457, 47.929775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.218433, 36.914345, 48.483292>,  <32.479298, 36.775921, 47.742764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.218433, 36.914345, 48.483292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.161381, 36.524963, 48.411690>,  <32.127148, 36.291332, 48.368729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.161381, 36.524963, 48.411690>,  <32.218433, 36.914345, 48.483292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.161381, 36.524963, 48.411690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021691, -0.183881, 0.982709,
		-0.989538, 0.136282, 0.047343,
		-0.142631, -0.973455, -0.179001,
		32.118591, 36.232925, 48.357990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.915548, 36.720905, 49.144859>,  <32.218433, 36.914345, 48.483292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.915548, 36.720905, 49.144859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.993256, 36.365036, 48.979580>,  <32.039879, 36.151512, 48.880413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.993256, 36.365036, 48.979580>,  <31.915548, 36.720905, 49.144859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.993256, 36.365036, 48.979580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124672, -0.395416, 0.910002,
		-0.972994, -0.228297, 0.034102,
		0.194266, -0.889678, -0.413200,
		32.051537, 36.098133, 48.855621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.615196, 36.194927, 49.622219>,  <31.915548, 36.720905, 49.144859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.615196, 36.194927, 49.622219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.893736, 36.005066, 49.406887>,  <32.060860, 35.891148, 49.277687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.893736, 36.005066, 49.406887>,  <31.615196, 36.194927, 49.622219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.893736, 36.005066, 49.406887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249339, -0.543361, 0.801617,
		-0.673000, -0.692432, -0.260019,
		0.696349, -0.474655, -0.538332,
		32.102642, 35.862671, 49.245388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.503078, 35.509140, 49.752060>,  <31.615196, 36.194927, 49.622219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.503078, 35.509140, 49.752060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.880671, 35.519482, 49.620464>,  <32.107224, 35.525688, 49.541504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.880671, 35.519482, 49.620464>,  <31.503078, 35.509140, 49.752060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.880671, 35.519482, 49.620464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261242, -0.667679, 0.697107,
		-0.201638, -0.744000, -0.637029,
		0.943978, 0.025855, -0.328994,
		32.163864, 35.527237, 49.521767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.730612, 34.804420, 49.586643>,  <31.503078, 35.509140, 49.752060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.730612, 34.804420, 49.586643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.061649, 35.017685, 49.656872>,  <32.260273, 35.145645, 49.699009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.061649, 35.017685, 49.656872>,  <31.730612, 34.804420, 49.586643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.061649, 35.017685, 49.656872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219179, -0.594877, 0.773357,
		0.516768, -0.601545, -0.609175,
		0.827594, 0.533165, 0.175567,
		32.309929, 35.177635, 49.709541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.313320, 34.257980, 49.574677>,  <31.730612, 34.804420, 49.586643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.313320, 34.257980, 49.574677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.420135, 34.579578, 49.787197>,  <32.484226, 34.772537, 49.914711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.420135, 34.579578, 49.787197>,  <32.313320, 34.257980, 49.574677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.420135, 34.579578, 49.787197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134147, -0.576969, 0.805674,
		0.954303, -0.143875, -0.261927,
		0.267040, 0.803994, 0.531303,
		32.500248, 34.820778, 49.946587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.944344, 33.990341, 49.851395>,  <32.313320, 34.257980, 49.574677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.944344, 33.990341, 49.851395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.839443, 34.311874, 50.064968>,  <32.776505, 34.504795, 50.193111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.839443, 34.311874, 50.064968>,  <32.944344, 33.990341, 49.851395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.839443, 34.311874, 50.064968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329310, -0.445539, 0.832496,
		0.907073, 0.394150, -0.147867,
		-0.262248, 0.803829, 0.533934,
		32.760769, 34.553024, 50.225147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410675, 33.927017, 50.448219>,  <32.944344, 33.990341, 49.851395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410675, 33.927017, 50.448219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102924, 34.159344, 50.554577>,  <32.918274, 34.298740, 50.618393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102924, 34.159344, 50.554577>,  <33.410675, 33.927017, 50.448219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102924, 34.159344, 50.554577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014702, -0.400043, 0.916378,
		0.638620, 0.708954, 0.299246,
		-0.769382, 0.580819, 0.265898,
		32.872108, 34.333588, 50.634346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696568, 34.276478, 51.052467>,  <33.410675, 33.927017, 50.448219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696568, 34.276478, 51.052467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.296631, 34.281296, 51.047188>,  <33.056667, 34.284187, 51.044022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.296631, 34.281296, 51.047188>,  <33.696568, 34.276478, 51.052467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.296631, 34.281296, 51.047188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015099, -0.174444, 0.984551,
		0.009555, 0.984594, 0.174598,
		-0.999840, 0.012044, -0.013199,
		32.996677, 34.284908, 51.043228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495754, 34.533199, 51.594612>,  <33.696568, 34.276478, 51.052467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495754, 34.533199, 51.594612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.124966, 34.394005, 51.538570>,  <32.902493, 34.310490, 51.504948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.124966, 34.394005, 51.538570>,  <33.495754, 34.533199, 51.594612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124966, 34.394005, 51.538570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141454, -0.021652, 0.989708,
		-0.347436, 0.937251, -0.029153,
		-0.926973, -0.347984, -0.140101,
		32.846874, 34.289608, 51.496540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.112854, 34.803391, 52.158905>,  <33.495754, 34.533199, 51.594612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.112854, 34.803391, 52.158905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872494, 34.513111, 52.024868>,  <32.728279, 34.338943, 51.944447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872494, 34.513111, 52.024868>,  <33.112854, 34.803391, 52.158905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.872494, 34.513111, 52.024868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266487, -0.213351, 0.939929,
		-0.753597, 0.654096, -0.065188,
		-0.600896, -0.725699, -0.335089,
		32.692226, 34.295403, 51.924343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.391846, 34.819225, 52.537956>,  <33.112854, 34.803391, 52.158905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.391846, 34.819225, 52.537956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.479343, 34.456738, 52.393223>,  <32.531841, 34.239246, 52.306381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.479343, 34.456738, 52.393223>,  <32.391846, 34.819225, 52.537956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.479343, 34.456738, 52.393223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097052, -0.389182, 0.916034,
		-0.970944, -0.165260, -0.173081,
		0.218744, -0.906215, -0.361835,
		32.544968, 34.184872, 52.284672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.742462, 34.943176, 53.221329>,  <32.391846, 34.819225, 52.537956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.742462, 34.943176, 53.221329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.830368, 34.581669, 53.074409>,  <32.883114, 34.364765, 52.986259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.830368, 34.581669, 53.074409>,  <32.742462, 34.943176, 53.221329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.830368, 34.581669, 53.074409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788281, -0.057295, 0.612642,
		-0.574731, -0.424170, 0.699832,
		0.219767, -0.903768, -0.367295,
		32.896297, 34.310539, 52.964222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.779869, 34.527901, 53.814602>,  <32.742462, 34.943176, 53.221329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.779869, 34.527901, 53.814602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991585, 34.340816, 53.531448>,  <33.118614, 34.228565, 53.361557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991585, 34.340816, 53.531448>,  <32.779869, 34.527901, 53.814602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.991585, 34.340816, 53.531448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703678, -0.224148, 0.674236,
		-0.474019, -0.854987, 0.210481,
		0.529285, -0.467712, -0.707887,
		33.150372, 34.200504, 53.319084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202240, 34.167789, 54.212143>,  <32.779869, 34.527901, 53.814602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202240, 34.167789, 54.212143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.343864, 34.144085, 53.838806>,  <33.428841, 34.129860, 53.614803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.343864, 34.144085, 53.838806>,  <33.202240, 34.167789, 54.212143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.343864, 34.144085, 53.838806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850668, -0.394262, 0.347737,
		-0.388590, -0.917085, -0.089178,
		0.354063, -0.059266, -0.933342,
		33.450085, 34.126305, 53.558804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.339073, 33.534428, 53.975887>,  <33.202240, 34.167789, 54.212143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.339073, 33.534428, 53.975887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.586197, 33.773449, 53.771442>,  <33.734470, 33.916862, 53.648773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.586197, 33.773449, 53.771442>,  <33.339073, 33.534428, 53.975887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.586197, 33.773449, 53.771442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781361, -0.393575, 0.484328,
		0.088252, -0.698587, -0.710062,
		0.617808, 0.597558, -0.511115,
		33.771538, 33.952717, 53.618107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.854527, 33.053226, 54.407230>,  <33.339073, 33.534428, 53.975887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.854527, 33.053226, 54.407230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.579273, 33.006962, 54.120708>,  <32.414120, 32.979202, 53.948795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.579273, 33.006962, 54.120708>,  <32.854527, 33.053226, 54.407230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.579273, 33.006962, 54.120708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221898, -0.973461, -0.055987,
		-0.690822, -0.197474, 0.695536,
		-0.688133, -0.115661, -0.716307,
		32.372833, 32.972263, 53.905815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.411854, 32.362347, 54.528370>,  <32.854527, 33.053226, 54.407230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.411854, 32.362347, 54.528370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.436111, 32.479393, 54.146648>,  <32.450665, 32.549622, 53.917614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.436111, 32.479393, 54.146648>,  <32.411854, 32.362347, 54.528370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.436111, 32.479393, 54.146648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406207, -0.880549, -0.244190,
		-0.911767, -0.372837, -0.172262,
		0.060642, 0.292618, -0.954305,
		32.454304, 32.567177, 53.860355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098255, 31.804064, 53.982754>,  <32.411854, 32.362347, 54.528370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098255, 31.804064, 53.982754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.406189, 32.038555, 53.881802>,  <32.590950, 32.179249, 53.821228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.406189, 32.038555, 53.881802>,  <32.098255, 31.804064, 53.982754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.406189, 32.038555, 53.881802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536303, -0.808536, -0.242176,
		-0.346031, 0.051081, -0.936832,
		0.769832, 0.586226, -0.252383,
		32.637138, 32.214424, 53.806087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.362549, 31.568634, 53.313427>,  <32.098255, 31.804064, 53.982754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.362549, 31.568634, 53.313427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.616478, 31.729330, 53.577431>,  <32.768833, 31.825748, 53.735832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.616478, 31.729330, 53.577431>,  <32.362549, 31.568634, 53.313427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.616478, 31.729330, 53.577431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536158, -0.844115, -0.001893,
		0.556361, 0.355070, -0.751258,
		0.634821, 0.401740, 0.660006,
		32.806923, 31.849852, 53.775433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.245689, 30.859308, 53.177158>,  <32.362549, 31.568634, 53.313427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.245689, 30.859308, 53.177158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.011177, 30.539633, 53.124134>,  <31.870470, 30.347828, 53.092319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.011177, 30.539633, 53.124134>,  <32.245689, 30.859308, 53.177158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.011177, 30.539633, 53.124134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690730, 0.407645, 0.597258,
		-0.423285, 0.441723, -0.791018,
		-0.586278, -0.799191, -0.132561,
		31.835293, 30.299875, 53.084366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.611931, 31.077152, 52.538681>,  <32.245689, 30.859308, 53.177158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.611931, 31.077152, 52.538681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465302, 31.444983, 52.482105>,  <32.377323, 31.665680, 52.448162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465302, 31.444983, 52.482105>,  <32.611931, 31.077152, 52.538681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.465302, 31.444983, 52.482105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002645, -0.150987, -0.988532,
		-0.930385, -0.362745, 0.052916,
		-0.366575, 0.919576, -0.141436,
		32.355328, 31.720856, 52.439674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.147972, 31.000397, 51.876637>,  <32.611931, 31.077152, 52.538681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.147972, 31.000397, 51.876637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.237030, 31.385834, 51.935863>,  <32.290462, 31.617096, 51.971401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.237030, 31.385834, 51.935863>,  <32.147972, 31.000397, 51.876637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.237030, 31.385834, 51.935863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065666, 0.136711, -0.988432,
		-0.972686, 0.229789, -0.032838,
		0.222642, 0.963590, 0.148067,
		32.303822, 31.674911, 51.980282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.740017, 31.245644, 51.332363>,  <32.147972, 31.000397, 51.876637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.740017, 31.245644, 51.332363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.999659, 31.535778, 51.424053>,  <32.155445, 31.709860, 51.479069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.999659, 31.535778, 51.424053>,  <31.740017, 31.245644, 51.332363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.999659, 31.535778, 51.424053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027324, 0.278914, -0.959927,
		-0.760207, 0.629358, 0.161226,
		0.649106, 0.725338, 0.229229,
		32.194389, 31.753380, 51.492821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.533606, 31.833832, 50.930820>,  <31.740017, 31.245644, 51.332363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.533606, 31.833832, 50.930820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.912100, 31.904993, 51.038887>,  <32.139194, 31.947689, 51.103725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.912100, 31.904993, 51.038887>,  <31.533606, 31.833832, 50.930820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.912100, 31.904993, 51.038887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258666, 0.085391, -0.962185,
		-0.194245, 0.980336, 0.034783,
		0.946235, 0.177903, 0.270166,
		32.195969, 31.958364, 51.119938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.749073, 32.427357, 50.662563>,  <31.533606, 31.833832, 50.930820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.749073, 32.427357, 50.662563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.095375, 32.246254, 50.747868>,  <32.303158, 32.137592, 50.799049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.095375, 32.246254, 50.747868>,  <31.749073, 32.427357, 50.662563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.095375, 32.246254, 50.747868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357697, 0.261759, -0.896401,
		0.350025, 0.852348, 0.388568,
		0.865757, -0.452753, 0.213260,
		32.355103, 32.110428, 50.811844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.316166, 33.007610, 50.572563>,  <31.749073, 32.427357, 50.662563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.316166, 33.007610, 50.572563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.436871, 32.628002, 50.536137>,  <32.509293, 32.400238, 50.514278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.436871, 32.628002, 50.536137>,  <32.316166, 33.007610, 50.572563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.436871, 32.628002, 50.536137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420847, 0.218308, -0.880471,
		0.855469, 0.227368, 0.465271,
		0.301763, -0.949023, -0.091068,
		32.527401, 32.343296, 50.508816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.916412, 33.188850, 50.186092>,  <32.316166, 33.007610, 50.572563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.916412, 33.188850, 50.186092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.843235, 32.796173, 50.164894>,  <32.799328, 32.560566, 50.152176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.843235, 32.796173, 50.164894>,  <32.916412, 33.188850, 50.186092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.843235, 32.796173, 50.164894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472920, -0.040616, -0.880169,
		0.861903, -0.186087, 0.471693,
		-0.182947, -0.981693, -0.052997,
		32.788349, 32.501663, 50.148994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.487461, 32.871365, 50.030022>,  <32.916412, 33.188850, 50.186092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.487461, 32.871365, 50.030022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.216560, 32.615185, 49.885155>,  <33.054020, 32.461475, 49.798237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.216560, 32.615185, 49.885155>,  <33.487461, 32.871365, 50.030022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.216560, 32.615185, 49.885155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466974, 0.006223, -0.884249,
		0.568570, -0.767976, 0.294859,
		-0.677248, -0.640448, -0.362163,
		33.013386, 32.423050, 49.776505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828327, 32.452232, 49.562000>,  <33.487461, 32.871365, 50.030022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.828327, 32.452232, 49.562000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.446537, 32.413361, 49.449188>,  <33.217464, 32.390038, 49.381500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.446537, 32.413361, 49.449188>,  <33.828327, 32.452232, 49.562000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.446537, 32.413361, 49.449188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235886, 0.332848, -0.913001,
		0.182593, -0.937960, -0.294772,
		-0.954472, -0.097175, -0.282027,
		33.160194, 32.384209, 49.364578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971531, 32.152340, 48.916054>,  <33.828327, 32.452232, 49.562000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971531, 32.152340, 48.916054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.586391, 32.259647, 48.903702>,  <33.355309, 32.324032, 48.896290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.586391, 32.259647, 48.903702>,  <33.971531, 32.152340, 48.916054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.586391, 32.259647, 48.903702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083553, 0.187229, -0.978756,
		-0.256789, -0.944975, -0.202688,
		-0.962849, 0.268269, -0.030877,
		33.297535, 32.340126, 48.894440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659107, 31.837200, 48.350239>,  <33.971531, 32.152340, 48.916054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.659107, 31.837200, 48.350239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419811, 32.152855, 48.405910>,  <33.276234, 32.342247, 48.439312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419811, 32.152855, 48.405910>,  <33.659107, 31.837200, 48.350239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419811, 32.152855, 48.405910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148254, 0.279687, -0.948576,
		-0.787485, -0.546840, -0.284313,
		-0.598238, 0.789139, 0.139178,
		33.240341, 32.389595, 48.447662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.044758, 31.790930, 47.846581>,  <33.659107, 31.837200, 48.350239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.044758, 31.790930, 47.846581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.108078, 32.174728, 47.939793>,  <33.146072, 32.405006, 47.995720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.108078, 32.174728, 47.939793>,  <33.044758, 31.790930, 47.846581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.108078, 32.174728, 47.939793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031199, 0.231029, -0.972446,
		-0.986897, 0.161212, 0.006637,
		0.158303, 0.959498, 0.233032,
		33.155567, 32.462578, 48.009701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.673832, 32.179497, 47.370991>,  <33.044758, 31.790930, 47.846581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.673832, 32.179497, 47.370991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.936275, 32.450298, 47.504372>,  <33.093742, 32.612778, 47.584400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.936275, 32.450298, 47.504372>,  <32.673832, 32.179497, 47.370991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.936275, 32.450298, 47.504372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127562, 0.336001, -0.933183,
		-0.743809, 0.654803, 0.134092,
		0.656106, 0.677005, 0.333449,
		33.133106, 32.653400, 47.604408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.453182, 32.846748, 47.069916>,  <32.673832, 32.179497, 47.370991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.453182, 32.846748, 47.069916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.826477, 32.911488, 47.198212>,  <33.050453, 32.950333, 47.275188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.826477, 32.911488, 47.198212>,  <32.453182, 32.846748, 47.069916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.826477, 32.911488, 47.198212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212248, 0.471933, -0.855705,
		-0.289866, 0.866651, 0.406072,
		0.933236, 0.161852, 0.320742,
		33.106449, 32.960045, 47.294434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561329, 33.655724, 47.160660>,  <32.453182, 32.846748, 47.069916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561329, 33.655724, 47.160660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.911114, 33.466015, 47.119896>,  <33.120983, 33.352188, 47.095440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.911114, 33.466015, 47.119896>,  <32.561329, 33.655724, 47.160660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.911114, 33.466015, 47.119896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209786, 0.559143, -0.802090,
		0.437392, 0.680016, 0.588444,
		0.874459, -0.474275, -0.101907,
		33.173450, 33.323730, 47.089325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.097263, 34.177727, 47.067574>,  <32.561329, 33.655724, 47.160660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.097263, 34.177727, 47.067574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244125, 33.842411, 46.906342>,  <33.332241, 33.641224, 46.809601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244125, 33.842411, 46.906342>,  <33.097263, 34.177727, 47.067574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.244125, 33.842411, 46.906342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113470, 0.470473, -0.875088,
		0.923213, 0.275555, 0.267856,
		0.367154, -0.838287, -0.403080,
		33.354271, 33.590923, 46.785419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648155, 34.395981, 46.636230>,  <33.097263, 34.177727, 47.067574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648155, 34.395981, 46.636230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.578484, 34.020851, 46.516132>,  <33.536682, 33.795773, 46.444073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.578484, 34.020851, 46.516132>,  <33.648155, 34.395981, 46.636230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.578484, 34.020851, 46.516132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045815, 0.296855, -0.953823,
		0.983648, -0.179890, -0.008739,
		-0.174178, -0.937825, -0.300242,
		33.526230, 33.739502, 46.426060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.158749, 34.226715, 46.168499>,  <33.648155, 34.395981, 46.636230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.158749, 34.226715, 46.168499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.842426, 33.990147, 46.105442>,  <33.652634, 33.848206, 46.067608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.842426, 33.990147, 46.105442>,  <34.158749, 34.226715, 46.168499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.842426, 33.990147, 46.105442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070478, 0.167854, -0.983289,
		0.608000, -0.788699, -0.091057,
		-0.790803, -0.591422, -0.157641,
		33.605186, 33.812721, 46.058151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409481, 33.819260, 45.688095>,  <34.158749, 34.226715, 46.168499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409481, 33.819260, 45.688095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.012379, 33.778942, 45.661953>,  <33.774117, 33.754753, 45.646267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.012379, 33.778942, 45.661953>,  <34.409481, 33.819260, 45.688095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.012379, 33.778942, 45.661953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057183, 0.081945, -0.994995,
		0.105647, -0.991527, -0.075588,
		-0.992758, -0.100796, -0.065355,
		33.714550, 33.748707, 45.642345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355801, 33.329342, 45.096588>,  <34.409481, 33.819260, 45.688095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.355801, 33.329342, 45.096588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.989281, 33.486698, 45.126610>,  <33.769367, 33.581112, 45.144623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.989281, 33.486698, 45.126610>,  <34.355801, 33.329342, 45.096588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.989281, 33.486698, 45.126610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065191, 0.038401, -0.997134,
		-0.395149, -0.918568, -0.009541,
		-0.916301, 0.393394, 0.075056,
		33.714390, 33.604717, 45.149128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034065, 32.910378, 44.673817>,  <34.355801, 33.329342, 45.096588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.034065, 32.910378, 44.673817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.781593, 33.219929, 44.694710>,  <33.630108, 33.405659, 44.707245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.781593, 33.219929, 44.694710>,  <34.034065, 32.910378, 44.673817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.781593, 33.219929, 44.694710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051713, 0.025210, -0.998344,
		-0.773909, -0.632838, 0.024107,
		-0.631182, 0.773874, 0.052236,
		33.592239, 33.452091, 44.710381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.418797, 32.740528, 44.329254>,  <34.034065, 32.910378, 44.673817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.418797, 32.740528, 44.329254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414120, 33.139984, 44.308929>,  <33.411316, 33.379658, 44.296734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414120, 33.139984, 44.308929>,  <33.418797, 32.740528, 44.329254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.414120, 33.139984, 44.308929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112503, -0.051807, -0.992300,
		-0.993582, -0.005881, 0.112956,
		-0.011687, 0.998640, -0.050812,
		33.410614, 33.439575, 44.293686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.821594, 32.839993, 44.008701>,  <33.418797, 32.740528, 44.329254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.821594, 32.839993, 44.008701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021873, 33.184200, 43.971169>,  <33.142040, 33.390724, 43.948650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021873, 33.184200, 43.971169>,  <32.821594, 32.839993, 44.008701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.021873, 33.184200, 43.971169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150545, -0.020180, -0.988397,
		-0.852428, 0.509018, 0.119443,
		0.500702, 0.860519, -0.093832,
		33.172085, 33.442356, 43.943020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.455620, 33.184196, 43.516518>,  <32.821594, 32.839993, 44.008701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.455620, 33.184196, 43.516518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.813175, 33.362995, 43.502922>,  <33.027710, 33.470272, 43.494766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.813175, 33.362995, 43.502922>,  <32.455620, 33.184196, 43.516518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.813175, 33.362995, 43.502922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063242, 0.050687, -0.996710,
		-0.443801, 0.893099, 0.073578,
		0.893891, 0.446995, -0.033986,
		33.081341, 33.497093, 43.492725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.382542, 33.848797, 43.148525>,  <32.455620, 33.184196, 43.516518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.382542, 33.848797, 43.148525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.778633, 33.794106, 43.137531>,  <33.016289, 33.761292, 43.130936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.778633, 33.794106, 43.137531>,  <32.382542, 33.848797, 43.148525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.778633, 33.794106, 43.137531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025809, 0.014002, -0.999569,
		0.137056, 0.990509, 0.010336,
		0.990227, -0.136730, -0.027483,
		33.075703, 33.753086, 43.129288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.545528, 34.253437, 42.651260>,  <32.382542, 33.848797, 43.148525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.545528, 34.253437, 42.651260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.855488, 34.000748, 42.659863>,  <33.041462, 33.849136, 42.665024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.855488, 34.000748, 42.659863>,  <32.545528, 34.253437, 42.651260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855488, 34.000748, 42.659863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001589, -0.035976, -0.999351,
		0.632085, 0.774361, -0.028881,
		0.774898, -0.631721, 0.021509,
		33.087955, 33.811230, 42.666317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.028145, 34.518307, 42.098141>,  <32.545528, 34.253437, 42.651260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.028145, 34.518307, 42.098141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.093533, 34.133602, 42.186043>,  <33.132767, 33.902779, 42.238785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.093533, 34.133602, 42.186043>,  <33.028145, 34.518307, 42.098141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.093533, 34.133602, 42.186043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013035, -0.220627, -0.975271,
		0.986462, 0.162296, -0.023530,
		0.163474, -0.961761, 0.219755,
		33.142574, 33.845074, 42.251968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.672169, 34.331402, 41.845543>,  <33.028145, 34.518307, 42.098141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.672169, 34.331402, 41.845543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484150, 33.978664, 41.860558>,  <33.371338, 33.767021, 41.869564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484150, 33.978664, 41.860558>,  <33.672169, 34.331402, 41.845543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484150, 33.978664, 41.860558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130315, -0.111391, -0.985195,
		0.872971, -0.458193, 0.167276,
		-0.470042, -0.881846, 0.037532,
		33.343136, 33.714111, 41.871819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.064854, 33.825047, 41.357819>,  <33.672169, 34.331402, 41.845543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.064854, 33.825047, 41.357819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.698158, 33.685520, 41.435707>,  <33.478142, 33.601807, 41.482441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.698158, 33.685520, 41.435707>,  <34.064854, 33.825047, 41.357819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698158, 33.685520, 41.435707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140952, -0.173639, -0.974670,
		0.373788, -0.920966, 0.110016,
		-0.916741, -0.348814, 0.194716,
		33.423138, 33.580875, 41.494122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115334, 33.192692, 41.124187>,  <34.064854, 33.825047, 41.357819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115334, 33.192692, 41.124187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.724651, 33.278496, 41.126549>,  <33.490242, 33.329979, 41.127968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.724651, 33.278496, 41.126549>,  <34.115334, 33.192692, 41.124187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.724651, 33.278496, 41.126549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030049, -0.109458, -0.993537,
		-0.212480, -0.970569, 0.113354,
		-0.976704, 0.214513, 0.005907,
		33.431641, 33.342850, 41.128323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747879, 32.702602, 40.736374>,  <34.115334, 33.192692, 41.124187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.747879, 32.702602, 40.736374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.480553, 33.000084, 40.742840>,  <33.320156, 33.178574, 40.746719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.480553, 33.000084, 40.742840>,  <33.747879, 32.702602, 40.736374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.480553, 33.000084, 40.742840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199841, -0.158565, -0.966913,
		-0.716536, -0.649429, 0.254594,
		-0.668311, 0.743706, 0.016165,
		33.280060, 33.223194, 40.747688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144878, 32.379745, 40.319893>,  <33.747879, 32.702602, 40.736374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.144878, 32.379745, 40.319893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.117306, 32.776497, 40.362637>,  <33.100761, 33.014549, 40.388283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.117306, 32.776497, 40.362637>,  <33.144878, 32.379745, 40.319893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.117306, 32.776497, 40.362637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359071, 0.075270, -0.930270,
		-0.930761, -0.102493, 0.350968,
		-0.068929, 0.991882, 0.106861,
		33.096626, 33.074062, 40.394695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.446655, 32.510033, 39.970886>,  <33.144878, 32.379745, 40.319893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.446655, 32.510033, 39.970886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.658215, 32.848671, 39.994713>,  <32.785149, 33.051853, 40.009007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.658215, 32.848671, 39.994713>,  <32.446655, 32.510033, 39.970886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.658215, 32.848671, 39.994713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288251, 0.245205, -0.925627,
		-0.798236, 0.472391, 0.373719,
		0.528895, 0.846594, 0.059565,
		32.816883, 33.102650, 40.012581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.039402, 33.017231, 39.719902>,  <32.446655, 32.510033, 39.970886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.039402, 33.017231, 39.719902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.402042, 33.182732, 39.686714>,  <32.619625, 33.282032, 39.666801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.402042, 33.182732, 39.686714>,  <32.039402, 33.017231, 39.719902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.402042, 33.182732, 39.686714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166684, 0.170489, -0.971159,
		-0.387677, 0.894282, 0.223532,
		0.906600, 0.413755, -0.082967,
		32.674023, 33.306858, 39.661823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.045643, 33.713223, 39.311329>,  <32.039402, 33.017231, 39.719902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.045643, 33.713223, 39.311329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.417175, 33.572613, 39.264507>,  <32.640095, 33.488247, 39.236412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.417175, 33.572613, 39.264507>,  <32.045643, 33.713223, 39.311329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.417175, 33.572613, 39.264507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079857, 0.118576, -0.989728,
		0.361794, 0.928639, 0.082066,
		0.928832, -0.351524, -0.117058,
		32.695824, 33.467155, 39.229389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.396713, 34.144012, 38.713398>,  <32.045643, 33.713223, 39.311329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.396713, 34.144012, 38.713398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.656948, 33.845169, 38.767895>,  <32.813087, 33.665863, 38.800594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.656948, 33.845169, 38.767895>,  <32.396713, 34.144012, 38.713398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.656948, 33.845169, 38.767895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081235, -0.109908, -0.990616,
		0.755075, 0.655549, -0.010813,
		0.650586, -0.747112, 0.136242,
		32.852123, 33.621037, 38.808769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.916107, 34.248440, 38.202385>,  <32.396713, 34.144012, 38.713398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.916107, 34.248440, 38.202385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933727, 33.857410, 38.284760>,  <32.944298, 33.622791, 38.334183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933727, 33.857410, 38.284760>,  <32.916107, 34.248440, 38.202385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.933727, 33.857410, 38.284760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023037, -0.205086, -0.978473,
		0.998764, 0.047842, 0.013487,
		0.044046, -0.977574, 0.205934,
		32.946941, 33.564137, 38.346539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515121, 33.970490, 37.919415>,  <32.916107, 34.248440, 38.202385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515121, 33.970490, 37.919415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.249878, 33.675632, 37.971420>,  <33.090733, 33.498718, 38.002625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.249878, 33.675632, 37.971420>,  <33.515121, 33.970490, 37.919415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249878, 33.675632, 37.971420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073689, -0.237134, -0.968678,
		0.744887, -0.632758, 0.211565,
		-0.663108, -0.737146, 0.130010,
		33.050945, 33.454487, 38.010422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.825607, 33.542870, 37.553741>,  <33.515121, 33.970490, 37.919415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.825607, 33.542870, 37.553741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.448772, 33.412220, 37.584183>,  <33.222672, 33.333832, 37.602448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.448772, 33.412220, 37.584183>,  <33.825607, 33.542870, 37.553741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.448772, 33.412220, 37.584183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035533, -0.322852, -0.945782,
		0.333482, -0.888305, 0.315760,
		-0.942087, -0.326621, 0.076101,
		33.166145, 33.314232, 37.607014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756153, 32.976162, 37.255501>,  <33.825607, 33.542870, 37.553741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756153, 32.976162, 37.255501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.370064, 33.079357, 37.238640>,  <33.138409, 33.141273, 37.228523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.370064, 33.079357, 37.238640>,  <33.756153, 32.976162, 37.255501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.370064, 33.079357, 37.238640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054435, -0.356074, -0.932871,
		-0.255680, -0.898139, 0.357736,
		-0.965228, 0.257990, -0.042151,
		33.080494, 33.156754, 37.225994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179424, 32.321835, 37.358650>,  <33.756153, 32.976162, 37.255501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179424, 32.321835, 37.358650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458050, 32.058628, 37.244232>,  <34.625225, 31.900705, 37.175583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458050, 32.058628, 37.244232>,  <34.179424, 32.321835, 37.358650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.458050, 32.058628, 37.244232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303774, -0.090716, 0.948416,
		-0.650020, -0.747521, 0.136698,
		0.696560, -0.658015, -0.286044,
		34.667019, 31.861223, 37.158421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.054932, 31.777714, 37.811890>,  <34.179424, 32.321835, 37.358650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.054932, 31.777714, 37.811890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.426067, 31.751337, 37.665047>,  <34.648746, 31.735512, 37.576939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.426067, 31.751337, 37.665047>,  <34.054932, 31.777714, 37.811890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.426067, 31.751337, 37.665047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355585, -0.140726, 0.923989,
		-0.112587, -0.987850, -0.107124,
		0.927838, -0.065938, -0.367109,
		34.704418, 31.731554, 37.554913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.326008, 31.251432, 38.094345>,  <34.054932, 31.777714, 37.811890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.326008, 31.251432, 38.094345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648598, 31.457674, 37.978584>,  <34.842152, 31.581419, 37.909130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648598, 31.457674, 37.978584>,  <34.326008, 31.251432, 38.094345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648598, 31.457674, 37.978584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371183, -0.060505, 0.926586,
		0.460240, -0.854689, -0.240178,
		0.806476, 0.515602, -0.289399,
		34.890541, 31.612354, 37.891766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937706, 30.889452, 38.277271>,  <34.326008, 31.251432, 38.094345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937706, 30.889452, 38.277271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.040920, 31.272257, 38.224281>,  <35.102848, 31.501940, 38.192490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.040920, 31.272257, 38.224281>,  <34.937706, 30.889452, 38.277271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.040920, 31.272257, 38.224281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445262, 0.003888, 0.895392,
		0.857416, -0.290024, -0.425117,
		0.258032, 0.957011, -0.132470,
		35.118328, 31.559361, 38.184540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.556858, 30.841043, 38.476067>,  <34.937706, 30.889452, 38.277271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.556858, 30.841043, 38.476067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.446728, 31.224659, 38.502701>,  <35.380650, 31.454828, 38.518681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.446728, 31.224659, 38.502701>,  <35.556858, 30.841043, 38.476067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446728, 31.224659, 38.502701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550266, 0.100425, 0.828928,
		0.788290, 0.264868, -0.555378,
		-0.275331, 0.959041, 0.066584,
		35.364128, 31.512371, 38.522675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030121, 30.993279, 38.811878>,  <35.556858, 30.841043, 38.476067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030121, 30.993279, 38.811878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.765900, 31.288404, 38.867447>,  <35.607368, 31.465481, 38.900787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.765900, 31.288404, 38.867447>,  <36.030121, 30.993279, 38.811878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.765900, 31.288404, 38.867447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276958, 0.067474, 0.958510,
		0.697831, 0.671621, -0.248914,
		-0.660551, 0.737816, 0.138925,
		35.567734, 31.509748, 38.909122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361179, 31.536695, 39.130203>,  <36.030121, 30.993279, 38.811878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361179, 31.536695, 39.130203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.980656, 31.631424, 39.209129>,  <35.752342, 31.688261, 39.256485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.980656, 31.631424, 39.209129>,  <36.361179, 31.536695, 39.130203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.980656, 31.631424, 39.209129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258625, 0.264926, 0.928939,
		0.167721, 0.934735, -0.313274,
		-0.951306, 0.236823, 0.197313,
		35.695263, 31.702471, 39.268322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.430832, 32.148678, 39.575764>,  <36.361179, 31.536695, 39.130203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.430832, 32.148678, 39.575764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057610, 32.014553, 39.627880>,  <35.833675, 31.934078, 39.659149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057610, 32.014553, 39.627880>,  <36.430832, 32.148678, 39.575764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057610, 32.014553, 39.627880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045045, 0.250439, 0.967084,
		-0.356905, 0.908210, -0.218569,
		-0.933054, -0.335312, 0.130294,
		35.777695, 31.913960, 39.666969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027710, 32.670357, 39.952229>,  <36.430832, 32.148678, 39.575764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.027710, 32.670357, 39.952229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.822758, 32.334938, 40.026314>,  <35.699787, 32.133686, 40.070766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.822758, 32.334938, 40.026314>,  <36.027710, 32.670357, 39.952229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.822758, 32.334938, 40.026314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006934, 0.219713, 0.975540,
		-0.858731, 0.498563, -0.118392,
		-0.512380, -0.838547, 0.185218,
		35.669044, 32.083374, 40.081879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590378, 32.847256, 40.492336>,  <36.027710, 32.670357, 39.952229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590378, 32.847256, 40.492336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.591137, 32.447716, 40.511513>,  <35.591595, 32.207993, 40.523018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.591137, 32.447716, 40.511513>,  <35.590378, 32.847256, 40.492336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.591137, 32.447716, 40.511513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184310, 0.047472, 0.981721,
		-0.982866, 0.006971, 0.184187,
		0.001901, -0.998848, 0.047944,
		35.591705, 32.148060, 40.525894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907646, 32.583260, 40.875179>,  <35.590378, 32.847256, 40.492336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.907646, 32.583260, 40.875179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195385, 32.305565, 40.884747>,  <35.368027, 32.138947, 40.890488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195385, 32.305565, 40.884747>,  <34.907646, 32.583260, 40.875179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195385, 32.305565, 40.884747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184372, 0.224008, 0.956989,
		-0.669739, -0.683995, 0.289138,
		0.719344, -0.694242, 0.023917,
		35.411190, 32.097294, 40.891922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768185, 32.188461, 41.559010>,  <34.907646, 32.583260, 40.875179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.768185, 32.188461, 41.559010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.138252, 32.068012, 41.466579>,  <35.360291, 31.995743, 41.411121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.138252, 32.068012, 41.466579>,  <34.768185, 32.188461, 41.559010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.138252, 32.068012, 41.466579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179191, -0.190166, 0.965260,
		-0.334605, -0.934431, -0.121976,
		0.925165, -0.301125, -0.231072,
		35.415802, 31.977674, 41.397259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791119, 31.491533, 41.783813>,  <34.768185, 32.188461, 41.559010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.791119, 31.491533, 41.783813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.171806, 31.612961, 41.765587>,  <35.400219, 31.685818, 41.754650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.171806, 31.612961, 41.765587>,  <34.791119, 31.491533, 41.783813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171806, 31.612961, 41.765587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140743, -0.299599, 0.943627,
		0.272805, -0.904481, -0.327859,
		0.951719, 0.303570, -0.045567,
		35.457321, 31.704031, 41.751915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107349, 30.944452, 42.274048>,  <34.791119, 31.491533, 41.783813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107349, 30.944452, 42.274048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.362118, 31.246496, 42.211895>,  <35.514977, 31.427723, 42.174603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.362118, 31.246496, 42.211895>,  <35.107349, 30.944452, 42.274048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.362118, 31.246496, 42.211895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297654, -0.054942, 0.953091,
		0.711153, -0.653290, -0.259756,
		0.636917, 0.755111, -0.155382,
		35.553192, 31.473030, 42.165279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758129, 30.708172, 42.537086>,  <35.107349, 30.944452, 42.274048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.758129, 30.708172, 42.537086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.746380, 31.107904, 42.528393>,  <35.739330, 31.347744, 42.523178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.746380, 31.107904, 42.528393>,  <35.758129, 30.708172, 42.537086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.746380, 31.107904, 42.528393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133500, 0.025472, 0.990721,
		0.990614, 0.026195, -0.134159,
		-0.029369, 0.999332, -0.021735,
		35.737568, 31.407703, 42.521873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.375740, 30.919973, 42.867672>,  <35.758129, 30.708172, 42.537086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.375740, 30.919973, 42.867672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.144615, 31.244652, 42.901806>,  <36.005939, 31.439459, 42.922287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.144615, 31.244652, 42.901806>,  <36.375740, 30.919973, 42.867672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144615, 31.244652, 42.901806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137797, -0.006037, 0.990442,
		0.804455, 0.584046, -0.108362,
		-0.577809, 0.811698, 0.085337,
		35.971272, 31.488161, 42.927406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.696949, 31.327759, 43.358448>,  <36.375740, 30.919973, 42.867672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.696949, 31.327759, 43.358448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.321808, 31.466305, 43.349781>,  <36.096725, 31.549433, 43.344582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.321808, 31.466305, 43.349781>,  <36.696949, 31.327759, 43.358448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321808, 31.466305, 43.349781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020217, 0.007800, 0.999765,
		0.346454, 0.938067, -0.000313,
		-0.937849, 0.346367, -0.021667,
		36.040455, 31.570215, 43.343281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611099, 32.060329, 43.692390>,  <36.696949, 31.327759, 43.358448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611099, 32.060329, 43.692390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.245983, 31.899881, 43.723145>,  <36.026913, 31.803612, 43.741596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.245983, 31.899881, 43.723145>,  <36.611099, 32.060329, 43.692390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.245983, 31.899881, 43.723145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015903, 0.153201, 0.988067,
		-0.408115, 0.903122, -0.133462,
		-0.912792, -0.401122, 0.076886,
		35.972145, 31.779545, 43.746212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394741, 32.494602, 44.114193>,  <36.611099, 32.060329, 43.692390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.394741, 32.494602, 44.114193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.127579, 32.196999, 44.121750>,  <35.967281, 32.018436, 44.126286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.127579, 32.196999, 44.121750>,  <36.394741, 32.494602, 44.114193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.127579, 32.196999, 44.121750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213061, 0.215471, 0.952983,
		-0.713098, 0.632476, -0.302433,
		-0.667905, -0.744007, 0.018896,
		35.927208, 31.973797, 44.127419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719448, 32.751709, 44.422997>,  <36.394741, 32.494602, 44.114193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719448, 32.751709, 44.422997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.720810, 32.357658, 44.491714>,  <35.721626, 32.121227, 44.532948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.720810, 32.357658, 44.491714>,  <35.719448, 32.751709, 44.422997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.720810, 32.357658, 44.491714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327528, 0.161222, 0.930985,
		-0.944835, -0.059442, -0.322107,
		0.003409, -0.985126, 0.171797,
		35.721832, 32.062119, 44.543255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180458, 32.676117, 44.921883>,  <35.719448, 32.751709, 44.422997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.180458, 32.676117, 44.921883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355343, 32.316860, 44.940563>,  <35.460274, 32.101307, 44.951771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355343, 32.316860, 44.940563>,  <35.180458, 32.676117, 44.921883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355343, 32.316860, 44.940563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214122, -0.053517, 0.975340,
		-0.873496, -0.436432, -0.215711,
		0.437213, -0.898144, 0.046703,
		35.486507, 32.047417, 44.954575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.661743, 32.139492, 45.208168>,  <35.180458, 32.676117, 44.921883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.661743, 32.139492, 45.208168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037647, 32.028183, 45.287579>,  <35.263191, 31.961399, 45.335224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037647, 32.028183, 45.287579>,  <34.661743, 32.139492, 45.208168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037647, 32.028183, 45.287579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230812, -0.088175, 0.968995,
		-0.252137, -0.956447, -0.147092,
		0.939762, -0.278270, 0.198527,
		35.319576, 31.944702, 45.347137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611141, 31.601910, 45.682255>,  <34.661743, 32.139492, 45.208168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.611141, 31.601910, 45.682255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992100, 31.721516, 45.706005>,  <35.220676, 31.793280, 45.720257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992100, 31.721516, 45.706005>,  <34.611141, 31.601910, 45.682255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992100, 31.721516, 45.706005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084390, 0.071435, 0.993869,
		0.292943, -0.951570, 0.093269,
		0.952398, 0.299017, 0.059377,
		35.277821, 31.811220, 45.723820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908794, 31.134806, 46.240906>,  <34.611141, 31.601910, 45.682255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.908794, 31.134806, 46.240906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.172180, 31.434868, 46.216614>,  <35.330212, 31.614906, 46.202038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.172180, 31.434868, 46.216614>,  <34.908794, 31.134806, 46.240906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172180, 31.434868, 46.216614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084101, 0.006842, 0.996434,
		0.747898, -0.661224, -0.058584,
		0.658465, 0.750157, -0.060727,
		35.369720, 31.659916, 46.198395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397770, 31.071712, 46.761505>,  <34.908794, 31.134806, 46.240906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.397770, 31.071712, 46.761505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.437325, 31.456511, 46.659695>,  <35.461056, 31.687389, 46.598610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.437325, 31.456511, 46.659695>,  <35.397770, 31.071712, 46.761505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437325, 31.456511, 46.659695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426771, 0.190066, 0.884161,
		0.898938, -0.196053, -0.391758,
		0.098882, 0.961997, -0.254527,
		35.466988, 31.745110, 46.583336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102585, 31.260725, 46.964920>,  <35.397770, 31.071712, 46.761505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102585, 31.260725, 46.964920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.889961, 31.597767, 46.930370>,  <35.762386, 31.799992, 46.909641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.889961, 31.597767, 46.930370>,  <36.102585, 31.260725, 46.964920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.889961, 31.597767, 46.930370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302312, 0.283986, 0.909923,
		0.791234, 0.457567, -0.405685,
		-0.531559, 0.842606, -0.086371,
		35.730492, 31.850548, 46.904461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603241, 31.745909, 47.140266>,  <36.102585, 31.260725, 46.964920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.603241, 31.745909, 47.140266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.244495, 31.920395, 47.169533>,  <36.029247, 32.025085, 47.187092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.244495, 31.920395, 47.169533>,  <36.603241, 31.745909, 47.140266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244495, 31.920395, 47.169533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274846, 0.420016, 0.864897,
		0.346553, 0.795802, -0.496588,
		-0.896862, 0.436218, 0.073165,
		35.975437, 32.051262, 47.191483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701553, 32.559547, 47.272915>,  <36.603241, 31.745909, 47.140266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701553, 32.559547, 47.272915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352859, 32.416405, 47.406792>,  <36.143642, 32.330517, 47.487118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352859, 32.416405, 47.406792>,  <36.701553, 32.559547, 47.272915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352859, 32.416405, 47.406792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222127, 0.320229, 0.920931,
		-0.436744, 0.877149, -0.199663,
		-0.871731, -0.357860, 0.334697,
		36.091339, 32.309048, 47.507202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.409889, 33.055859, 47.769531>,  <36.701553, 32.559547, 47.272915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.409889, 33.055859, 47.769531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.205906, 32.719082, 47.840054>,  <36.083515, 32.517017, 47.882366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.205906, 32.719082, 47.840054>,  <36.409889, 33.055859, 47.769531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.205906, 32.719082, 47.840054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046213, 0.177851, 0.982972,
		-0.858958, 0.509420, -0.051788,
		-0.509956, -0.841938, 0.176309,
		36.052917, 32.466499, 47.892944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887444, 33.259254, 48.177544>,  <36.409889, 33.055859, 47.769531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887444, 33.259254, 48.177544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.949238, 32.867012, 48.225780>,  <35.986317, 32.631668, 48.254723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.949238, 32.867012, 48.225780>,  <35.887444, 33.259254, 48.177544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949238, 32.867012, 48.225780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008586, 0.120723, 0.992649,
		-0.987958, -0.154387, 0.010231,
		0.154487, -0.980607, 0.120595,
		35.995583, 32.572830, 48.261959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.585022, 33.174164, 48.790878>,  <35.887444, 33.259254, 48.177544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.585022, 33.174164, 48.790878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.761982, 32.817593, 48.751602>,  <35.868156, 32.603649, 48.728035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.761982, 32.817593, 48.751602>,  <35.585022, 33.174164, 48.790878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761982, 32.817593, 48.751602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203528, -0.006838, 0.979045,
		-0.873418, -0.453114, 0.178405,
		0.442400, -0.891426, -0.098194,
		35.894703, 32.550163, 48.722145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334698, 32.723183, 49.467739>,  <35.585022, 33.174164, 48.790878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.334698, 32.723183, 49.467739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683216, 32.599800, 49.315060>,  <35.892326, 32.525768, 49.223454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683216, 32.599800, 49.315060>,  <35.334698, 32.723183, 49.467739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683216, 32.599800, 49.315060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417766, 0.058091, 0.906696,
		-0.257507, -0.949462, 0.179479,
		0.871299, -0.308460, -0.381694,
		35.944607, 32.507263, 49.200550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503334, 32.139248, 49.899418>,  <35.334698, 32.723183, 49.467739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.503334, 32.139248, 49.899418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.838409, 32.269077, 49.723724>,  <36.039455, 32.346973, 49.618309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.838409, 32.269077, 49.723724>,  <35.503334, 32.139248, 49.899418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.838409, 32.269077, 49.723724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478198, -0.047392, 0.876972,
		0.263821, -0.944674, -0.194908,
		0.837690, 0.324568, -0.439239,
		36.089718, 32.366447, 49.591953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967545, 31.768734, 50.178051>,  <35.503334, 32.139248, 49.899418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.967545, 31.768734, 50.178051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.181652, 32.077816, 50.041573>,  <36.310116, 32.263264, 49.959686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.181652, 32.077816, 50.041573>,  <35.967545, 31.768734, 50.178051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181652, 32.077816, 50.041573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458140, 0.073773, 0.885813,
		0.709642, -0.630466, -0.314517,
		0.535272, 0.772703, -0.341194,
		36.342236, 32.309628, 49.939213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555492, 31.651745, 50.518417>,  <35.967545, 31.768734, 50.178051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.555492, 31.651745, 50.518417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.591717, 32.026051, 50.382099>,  <36.613449, 32.250633, 50.300308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.591717, 32.026051, 50.382099>,  <36.555492, 31.651745, 50.518417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591717, 32.026051, 50.382099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761767, 0.155341, 0.628952,
		0.641491, -0.316566, -0.698767,
		0.090558, 0.935764, -0.340800,
		36.618885, 32.306782, 50.279858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242825, 31.693092, 50.303455>,  <36.555492, 31.651745, 50.518417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.242825, 31.693092, 50.303455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.096474, 32.058311, 50.375538>,  <37.008663, 32.277443, 50.418789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.096474, 32.058311, 50.375538>,  <37.242825, 31.693092, 50.303455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096474, 32.058311, 50.375538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589152, 0.077334, 0.804313,
		0.720441, 0.400449, -0.566220,
		-0.365875, 0.913050, 0.180211,
		36.986710, 32.332226, 50.429600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.887856, 32.067936, 50.403637>,  <37.242825, 31.693092, 50.303455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.887856, 32.067936, 50.403637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.593540, 32.279255, 50.573116>,  <37.416950, 32.406044, 50.674805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.593540, 32.279255, 50.573116>,  <37.887856, 32.067936, 50.403637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.593540, 32.279255, 50.573116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597375, 0.211616, 0.773539,
		0.318996, 0.822267, -0.471295,
		-0.735789, 0.528296, 0.423697,
		37.372803, 32.437744, 50.700226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184216, 32.668568, 50.694344>,  <37.887856, 32.067936, 50.403637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.184216, 32.668568, 50.694344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.836491, 32.628342, 50.887913>,  <37.627853, 32.604206, 51.004055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.836491, 32.628342, 50.887913>,  <38.184216, 32.668568, 50.694344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.836491, 32.628342, 50.887913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440686, 0.285632, 0.851006,
		-0.223802, 0.953048, -0.203988,
		-0.869315, -0.100563, 0.483920,
		37.575695, 32.598171, 51.033089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566372, 32.927929, 51.239223>,  <38.184216, 32.668568, 50.694344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.566372, 32.927929, 51.239223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.882454, 33.168961, 51.194550>,  <39.072102, 33.313580, 51.167744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.882454, 33.168961, 51.194550>,  <38.566372, 32.927929, 51.239223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882454, 33.168961, 51.194550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181127, 0.055534, -0.981890,
		-0.585464, 0.796125, 0.153027,
		0.790206, 0.602579, -0.111686,
		39.119514, 33.349735, 51.161045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.307575, 33.468472, 50.861511>,  <38.566372, 32.927929, 51.239223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.307575, 33.468472, 50.861511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.700745, 33.522999, 50.812065>,  <38.936646, 33.555714, 50.782398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.700745, 33.522999, 50.812065>,  <38.307575, 33.468472, 50.861511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700745, 33.522999, 50.812065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149798, 0.202544, -0.967748,
		-0.106880, 0.969739, 0.219504,
		0.982923, 0.136314, -0.123617,
		38.995621, 33.563892, 50.774979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320339, 33.964203, 50.310287>,  <38.307575, 33.468472, 50.861511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.320339, 33.964203, 50.310287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.684036, 33.800224, 50.281380>,  <38.902256, 33.701836, 50.264034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.684036, 33.800224, 50.281380>,  <38.320339, 33.964203, 50.310287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.684036, 33.800224, 50.281380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005279, 0.162237, -0.986738,
		0.416235, 0.897564, 0.145349,
		0.909242, -0.409947, -0.072267,
		38.956810, 33.677238, 50.259701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789268, 34.385395, 49.896816>,  <38.320339, 33.964203, 50.310287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789268, 34.385395, 49.896816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.952805, 34.021362, 49.869663>,  <39.050926, 33.802944, 49.853371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.952805, 34.021362, 49.869663>,  <38.789268, 34.385395, 49.896816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952805, 34.021362, 49.869663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093264, 0.032327, -0.995117,
		0.907828, 0.413174, -0.071661,
		0.408839, -0.910078, -0.067881,
		39.075455, 33.748341, 49.849300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254864, 34.344273, 49.394409>,  <38.789268, 34.385395, 49.896816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.254864, 34.344273, 49.394409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.137760, 33.963181, 49.426888>,  <39.067497, 33.734524, 49.446373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.137760, 33.963181, 49.426888>,  <39.254864, 34.344273, 49.394409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.137760, 33.963181, 49.426888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081992, -0.059592, -0.994850,
		0.952666, -0.297905, -0.060671,
		-0.292755, -0.952734, 0.081197,
		39.049934, 33.677361, 49.451248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625710, 33.959286, 48.791256>,  <39.254864, 34.344273, 49.394409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.625710, 33.959286, 48.791256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.345360, 33.711620, 48.932915>,  <39.177151, 33.563023, 49.017910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.345360, 33.711620, 48.932915>,  <39.625710, 33.959286, 48.791256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.345360, 33.711620, 48.932915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137288, -0.370123, -0.918782,
		0.699952, -0.692567, 0.174405,
		-0.700870, -0.619160, 0.354150,
		39.135098, 33.525871, 49.039158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.826847, 33.233826, 48.541859>,  <39.625710, 33.959286, 48.791256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.826847, 33.233826, 48.541859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.434647, 33.238911, 48.620300>,  <39.199326, 33.241962, 48.667366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.434647, 33.238911, 48.620300>,  <39.826847, 33.233826, 48.541859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.434647, 33.238911, 48.620300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192138, -0.271420, -0.943088,
		0.041234, -0.962377, 0.268570,
		-0.980501, 0.012716, 0.196101,
		39.140495, 33.242725, 48.679131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.520416, 32.596546, 48.188564>,  <39.826847, 33.233826, 48.541859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.520416, 32.596546, 48.188564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.229973, 32.862179, 48.259850>,  <39.055706, 33.021557, 48.302620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.229973, 32.862179, 48.259850>,  <39.520416, 32.596546, 48.188564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.229973, 32.862179, 48.259850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349030, -0.132674, -0.927672,
		-0.592406, -0.735793, 0.328121,
		-0.726108, 0.664083, 0.178217,
		39.012142, 33.061405, 48.313316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878624, 32.228550, 48.195789>,  <39.520416, 32.596546, 48.188564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.878624, 32.228550, 48.195789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.763145, 32.604362, 48.122093>,  <38.693859, 32.829849, 48.077877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.763145, 32.604362, 48.122093>,  <38.878624, 32.228550, 48.195789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.763145, 32.604362, 48.122093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309495, -0.273681, -0.910665,
		-0.906018, -0.205883, 0.369789,
		-0.288695, 0.939527, -0.184240,
		38.676537, 32.886219, 48.066822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198734, 32.157719, 48.039932>,  <38.878624, 32.228550, 48.195789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198734, 32.157719, 48.039932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.289703, 32.511742, 47.877472>,  <38.344284, 32.724155, 47.779995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.289703, 32.511742, 47.877472>,  <38.198734, 32.157719, 48.039932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.289703, 32.511742, 47.877472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333357, -0.321121, -0.886428,
		-0.914960, 0.336989, 0.222007,
		0.227425, 0.885054, -0.406151,
		38.357929, 32.777256, 47.755627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800941, 32.112240, 47.501549>,  <38.198734, 32.157719, 48.039932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.800941, 32.112240, 47.501549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.058990, 32.404266, 47.411369>,  <38.213821, 32.579483, 47.357262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.058990, 32.404266, 47.411369>,  <37.800941, 32.112240, 47.501549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.058990, 32.404266, 47.411369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329126, -0.000772, -0.944286,
		-0.689561, 0.683381, 0.239785,
		0.645121, 0.730062, -0.225451,
		38.252525, 32.623283, 47.343735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415989, 32.678997, 47.068855>,  <37.800941, 32.112240, 47.501549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.415989, 32.678997, 47.068855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.810722, 32.711124, 47.012695>,  <38.047562, 32.730400, 46.979000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.810722, 32.711124, 47.012695>,  <37.415989, 32.678997, 47.068855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.810722, 32.711124, 47.012695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129581, -0.126972, -0.983406,
		-0.096812, 0.988649, -0.114892,
		0.986831, 0.080318, -0.140403,
		38.106773, 32.735218, 46.970573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415993, 33.024597, 46.395851>,  <37.415989, 32.678997, 47.068855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.415993, 33.024597, 46.395851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.782745, 32.873863, 46.448498>,  <38.002796, 32.783424, 46.480083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.782745, 32.873863, 46.448498>,  <37.415993, 33.024597, 46.395851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.782745, 32.873863, 46.448498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126921, -0.037375, -0.991208,
		0.378442, 0.925526, 0.013560,
		0.916882, -0.376836, 0.131613,
		38.057812, 32.760811, 46.487980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.731045, 33.325878, 45.857838>,  <37.415993, 33.024597, 46.395851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.731045, 33.325878, 45.857838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.004124, 33.050747, 45.956478>,  <38.167969, 32.885666, 46.015663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.004124, 33.050747, 45.956478>,  <37.731045, 33.325878, 45.857838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004124, 33.050747, 45.956478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047470, -0.295029, -0.954309,
		0.729159, 0.663209, -0.168764,
		0.682696, -0.687832, 0.246605,
		38.208931, 32.844398, 46.030460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269875, 33.548412, 45.448872>,  <37.731045, 33.325878, 45.857838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.269875, 33.548412, 45.448872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.309258, 33.160461, 45.537987>,  <38.332886, 32.927689, 45.591457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.309258, 33.160461, 45.537987>,  <38.269875, 33.548412, 45.448872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.309258, 33.160461, 45.537987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001770, -0.224050, -0.974576,
		0.995140, 0.095558, -0.023776,
		0.098456, -0.969882, 0.222792,
		38.338795, 32.869495, 45.604824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819672, 33.374676, 45.223431>,  <38.269875, 33.548412, 45.448872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.819672, 33.374676, 45.223431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.604317, 33.038280, 45.244843>,  <38.475101, 32.836441, 45.257690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.604317, 33.038280, 45.244843>,  <38.819672, 33.374676, 45.223431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604317, 33.038280, 45.244843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017817, -0.052151, -0.998480,
		0.842506, -0.538527, 0.013093,
		-0.538391, -0.840993, 0.053532,
		38.442799, 32.785984, 45.260902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042858, 33.069592, 44.614334>,  <38.819672, 33.374676, 45.223431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042858, 33.069592, 44.614334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.741234, 32.818520, 44.691700>,  <38.560261, 32.667877, 44.738121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.741234, 32.818520, 44.691700>,  <39.042858, 33.069592, 44.614334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.741234, 32.818520, 44.691700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097692, -0.184017, -0.978056,
		0.649498, -0.756409, 0.077441,
		-0.754061, -0.627680, 0.193414,
		38.515015, 32.630215, 44.749725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152306, 32.452789, 44.217381>,  <39.042858, 33.069592, 44.614334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152306, 32.452789, 44.217381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.761436, 32.472343, 44.300076>,  <38.526913, 32.484077, 44.349693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.761436, 32.472343, 44.300076>,  <39.152306, 32.452789, 44.217381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761436, 32.472343, 44.300076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210193, -0.081474, -0.974259,
		-0.030783, -0.995476, 0.089890,
		-0.977175, 0.048885, 0.206734,
		38.468285, 32.487011, 44.362095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818558, 31.992498, 43.692947>,  <39.152306, 32.452789, 44.217381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.818558, 31.992498, 43.692947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.550816, 32.243484, 43.852070>,  <38.390171, 32.394077, 43.947544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.550816, 32.243484, 43.852070>,  <38.818558, 31.992498, 43.692947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.550816, 32.243484, 43.852070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510668, 0.000332, -0.859778,
		-0.539614, -0.778644, 0.320204,
		-0.669354, 0.627466, 0.397808,
		38.350010, 32.431725, 43.971413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241489, 31.766932, 43.452377>,  <38.818558, 31.992498, 43.692947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.241489, 31.766932, 43.452377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.144836, 32.140862, 43.556465>,  <38.086845, 32.365219, 43.618919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.144836, 32.140862, 43.556465>,  <38.241489, 31.766932, 43.452377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.144836, 32.140862, 43.556465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510450, 0.105613, -0.853397,
		-0.825260, -0.339039, 0.451662,
		-0.241633, 0.934825, 0.260220,
		38.072346, 32.421310, 43.634533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526726, 31.838629, 43.305912>,  <38.241489, 31.766932, 43.452377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.526726, 31.838629, 43.305912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.711403, 32.190655, 43.261513>,  <37.822212, 32.401871, 43.234871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.711403, 32.190655, 43.261513>,  <37.526726, 31.838629, 43.305912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711403, 32.190655, 43.261513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343976, 0.062285, -0.936910,
		-0.817628, 0.470751, 0.331478,
		0.461697, 0.880065, -0.111001,
		37.849911, 32.454674, 43.228214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135994, 32.196415, 42.878502>,  <37.526726, 31.838629, 43.305912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135994, 32.196415, 42.878502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.463272, 32.425655, 42.860126>,  <37.659637, 32.563198, 42.849102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.463272, 32.425655, 42.860126>,  <37.135994, 32.196415, 42.878502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463272, 32.425655, 42.860126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275513, 0.320691, -0.906228,
		-0.504628, 0.754129, 0.420286,
		0.818195, 0.573102, -0.045943,
		37.708729, 32.597588, 42.846344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971107, 32.833641, 42.523945>,  <37.135994, 32.196415, 42.878502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.971107, 32.833641, 42.523945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.369957, 32.825974, 42.494614>,  <37.609268, 32.821373, 42.477016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.369957, 32.825974, 42.494614>,  <36.971107, 32.833641, 42.523945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369957, 32.825974, 42.494614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060627, 0.378799, -0.923491,
		0.045480, 0.925280, 0.376548,
		0.997124, -0.019171, -0.073324,
		37.669094, 32.820221, 42.472618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362633, 33.419407, 42.034935>,  <36.971107, 32.833641, 42.523945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.362633, 33.419407, 42.034935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.642956, 33.135117, 42.059349>,  <37.811150, 32.964542, 42.073997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.642956, 33.135117, 42.059349>,  <37.362633, 33.419407, 42.034935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642956, 33.135117, 42.059349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248668, 0.163203, -0.954740,
		0.668600, 0.684272, 0.291111,
		0.700812, -0.710730, 0.061039,
		37.853199, 32.921898, 42.077660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956619, 33.724548, 41.806030>,  <37.362633, 33.419407, 42.034935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.956619, 33.724548, 41.806030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987820, 33.329243, 41.753498>,  <38.006538, 33.092060, 41.721977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987820, 33.329243, 41.753498>,  <37.956619, 33.724548, 41.806030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987820, 33.329243, 41.753498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143855, 0.141515, -0.979428,
		0.986520, 0.057503, 0.153206,
		0.078001, -0.988265, -0.131335,
		38.011219, 33.032764, 41.714096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321957, 33.605488, 41.190361>,  <37.956619, 33.724548, 41.806030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.321957, 33.605488, 41.190361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.204247, 33.226627, 41.241440>,  <38.133621, 32.999310, 41.272087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.204247, 33.226627, 41.241440>,  <38.321957, 33.605488, 41.190361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.204247, 33.226627, 41.241440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095701, -0.162143, -0.982115,
		0.950917, -0.276793, 0.138358,
		-0.294277, -0.947151, 0.127695,
		38.115963, 32.942482, 41.279747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734112, 33.203224, 40.761543>,  <38.321957, 33.605488, 41.190361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.734112, 33.203224, 40.761543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.384499, 33.021599, 40.830704>,  <38.174732, 32.912624, 40.872200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.384499, 33.021599, 40.830704>,  <38.734112, 33.203224, 40.761543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.384499, 33.021599, 40.830704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097873, -0.184026, -0.978036,
		0.475909, -0.871757, 0.116404,
		-0.874032, -0.454064, 0.172902,
		38.122288, 32.885380, 40.882576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767479, 32.707195, 40.264618>,  <38.734112, 33.203224, 40.761543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.767479, 32.707195, 40.264618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.384258, 32.754349, 40.369102>,  <38.154324, 32.782642, 40.431793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.384258, 32.754349, 40.369102>,  <38.767479, 32.707195, 40.264618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.384258, 32.754349, 40.369102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277689, -0.156564, -0.947827,
		-0.070835, -0.980608, 0.182731,
		-0.958056, 0.117882, 0.261213,
		38.096840, 32.789715, 40.447468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414036, 32.108734, 39.955532>,  <38.767479, 32.707195, 40.264618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414036, 32.108734, 39.955532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.156200, 32.410511, 40.005047>,  <38.001499, 32.591579, 40.034756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.156200, 32.410511, 40.005047>,  <38.414036, 32.108734, 39.955532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156200, 32.410511, 40.005047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286857, -0.088582, -0.953869,
		-0.708677, -0.650357, 0.273517,
		-0.644585, 0.754446, 0.123783,
		37.962826, 32.636845, 40.042183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890133, 31.819286, 39.703571>,  <38.414036, 32.108734, 39.955532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890133, 31.819286, 39.703571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.786270, 32.205177, 39.720921>,  <37.723953, 32.436710, 39.731331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.786270, 32.205177, 39.720921>,  <37.890133, 31.819286, 39.703571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.786270, 32.205177, 39.720921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275041, -0.030821, -0.960938,
		-0.925705, -0.261448, 0.273342,
		-0.259660, 0.964725, 0.043377,
		37.708370, 32.494595, 39.733932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283058, 31.870499, 39.198948>,  <37.890133, 31.819286, 39.703571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283058, 31.870499, 39.198948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.428394, 32.237740, 39.262283>,  <37.515598, 32.458084, 39.300285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.428394, 32.237740, 39.262283>,  <37.283058, 31.870499, 39.198948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428394, 32.237740, 39.262283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267532, 0.265616, -0.926215,
		-0.892417, 0.294173, 0.342131,
		0.363343, 0.918102, 0.158340,
		37.537395, 32.513168, 39.309784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885632, 32.258377, 38.773384>,  <37.283058, 31.870499, 39.198948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885632, 32.258377, 38.773384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.203426, 32.494476, 38.830517>,  <37.394104, 32.636135, 38.864796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.203426, 32.494476, 38.830517>,  <36.885632, 32.258377, 38.773384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203426, 32.494476, 38.830517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179644, 0.453102, -0.873170,
		-0.580102, 0.668063, 0.466018,
		0.794487, 0.590245, 0.142832,
		37.441772, 32.671551, 38.873367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755013, 32.966034, 38.376755>,  <36.885632, 32.258377, 38.773384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755013, 32.966034, 38.376755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.147430, 32.994831, 38.448727>,  <37.382881, 33.012108, 38.491909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.147430, 32.994831, 38.448727>,  <36.755013, 32.966034, 38.376755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147430, 32.994831, 38.448727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110310, 0.555924, -0.823881,
		-0.159338, 0.828110, 0.537443,
		0.981042, 0.071991, 0.179928,
		37.441742, 33.016430, 38.502705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975586, 33.688618, 38.365173>,  <36.755013, 32.966034, 38.376755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.975586, 33.688618, 38.365173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.308868, 33.486824, 38.274605>,  <37.508839, 33.365746, 38.220264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.308868, 33.486824, 38.274605>,  <36.975586, 33.688618, 38.365173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308868, 33.486824, 38.274605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162660, 0.614950, -0.771607,
		0.528500, 0.606078, 0.594439,
		0.833204, -0.504486, -0.226417,
		37.558830, 33.335480, 38.206680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446110, 34.215633, 38.206409>,  <36.975586, 33.688618, 38.365173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446110, 34.215633, 38.206409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.625370, 33.888390, 38.062263>,  <37.732925, 33.692043, 37.975777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.625370, 33.888390, 38.062263>,  <37.446110, 34.215633, 38.206409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.625370, 33.888390, 38.062263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376197, 0.538269, -0.754150,
		0.810945, 0.202409, 0.548997,
		0.448155, -0.818106, -0.360361,
		37.759815, 33.642960, 37.954155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091103, 34.404320, 38.044949>,  <37.446110, 34.215633, 38.206409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.091103, 34.404320, 38.044949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.039516, 34.066486, 37.837086>,  <38.008564, 33.863785, 37.712368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.039516, 34.066486, 37.837086>,  <38.091103, 34.404320, 38.044949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.039516, 34.066486, 37.837086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293385, 0.468077, -0.833564,
		0.947255, -0.259963, 0.187421,
		-0.128968, -0.844585, -0.519658,
		38.000828, 33.813110, 37.681187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.740105, 34.353012, 37.769997>,  <38.091103, 34.404320, 38.044949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.740105, 34.353012, 37.769997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.470539, 34.176971, 37.532623>,  <38.308800, 34.071346, 37.390202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.470539, 34.176971, 37.532623>,  <38.740105, 34.353012, 37.769997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470539, 34.176971, 37.532623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455260, 0.385238, -0.802702,
		0.581880, -0.811113, -0.059256,
		-0.673910, -0.440099, -0.593429,
		38.268368, 34.044941, 37.354595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148045, 34.060051, 37.197735>,  <38.740105, 34.353012, 37.769997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.148045, 34.060051, 37.197735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.775753, 34.061111, 37.051460>,  <38.552376, 34.061749, 36.963696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.775753, 34.061111, 37.051460>,  <39.148045, 34.060051, 37.197735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.775753, 34.061111, 37.051460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353833, 0.259204, -0.898674,
		0.092401, -0.965819, -0.242190,
		-0.930733, 0.002656, -0.365689,
		38.496532, 34.061909, 36.941753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239624, 33.622105, 36.601742>,  <39.148045, 34.060051, 37.197735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239624, 33.622105, 36.601742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.920486, 33.857361, 36.548782>,  <38.729004, 33.998516, 36.517006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.920486, 33.857361, 36.548782>,  <39.239624, 33.622105, 36.601742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920486, 33.857361, 36.548782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268746, 0.150393, -0.951398,
		-0.539646, -0.794650, -0.278052,
		-0.797845, 0.588144, -0.132400,
		38.681133, 34.033806, 36.509064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083614, 33.459110, 35.950504>,  <39.239624, 33.622105, 36.601742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.083614, 33.459110, 35.950504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.889523, 33.802448, 36.017189>,  <38.773067, 34.008450, 36.057198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.889523, 33.802448, 36.017189>,  <39.083614, 33.459110, 35.950504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.889523, 33.802448, 36.017189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211590, 0.300259, -0.930094,
		-0.848397, -0.416039, -0.327313,
		-0.485234, 0.858345, 0.166709,
		38.743954, 34.059952, 36.067204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579311, 33.722275, 35.369328>,  <39.083614, 33.459110, 35.950504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579311, 33.722275, 35.369328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.782669, 34.014095, 35.552319>,  <38.904682, 34.189190, 35.662113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.782669, 34.014095, 35.552319>,  <38.579311, 33.722275, 35.369328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.782669, 34.014095, 35.552319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409591, 0.262446, -0.873703,
		-0.757477, 0.631565, -0.165392,
		0.508394, 0.729553, 0.457480,
		38.935188, 34.232960, 35.689564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674446, 34.279613, 34.979408>,  <38.579311, 33.722275, 35.369328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.674446, 34.279613, 34.979408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.993671, 34.299953, 35.219578>,  <39.185207, 34.312157, 35.363678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.993671, 34.299953, 35.219578>,  <38.674446, 34.279613, 34.979408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.993671, 34.299953, 35.219578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564626, 0.284899, -0.774616,
		-0.210450, 0.957208, 0.198656,
		0.798065, 0.050852, 0.600421,
		39.233089, 34.315208, 35.399704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246452, 34.536121, 34.602280>,  <38.674446, 34.279613, 34.979408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.246452, 34.536121, 34.602280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.467720, 34.443138, 34.922272>,  <39.600479, 34.387348, 35.114265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.467720, 34.443138, 34.922272>,  <39.246452, 34.536121, 34.602280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.467720, 34.443138, 34.922272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831102, 0.219951, -0.510775,
		-0.057225, 0.947411, 0.314863,
		0.553168, -0.232454, 0.799981,
		39.633671, 34.373402, 35.162266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.749226, 35.157433, 34.832603>,  <39.246452, 34.536121, 34.602280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.749226, 35.157433, 34.832603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.865433, 34.779465, 34.892895>,  <39.935158, 34.552685, 34.929070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.865433, 34.779465, 34.892895>,  <39.749226, 35.157433, 34.832603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.865433, 34.779465, 34.892895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795662, 0.151049, -0.586605,
		0.531530, 0.290349, 0.795722,
		0.290514, -0.944924, 0.150732,
		39.952587, 34.495987, 34.938114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.474899, 35.108200, 34.917953>,  <39.749226, 35.157433, 34.832603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.474899, 35.108200, 34.917953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.363171, 34.747978, 34.784698>,  <40.296135, 34.531845, 34.704746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.363171, 34.747978, 34.784698>,  <40.474899, 35.108200, 34.917953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.363171, 34.747978, 34.784698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746298, 0.014692, -0.665450,
		0.604170, -0.434490, 0.667980,
		-0.279317, -0.900557, -0.333136,
		40.279377, 34.477810, 34.684757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.057495, 34.549931, 34.910923>,  <40.474899, 35.108200, 34.917953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.057495, 34.549931, 34.910923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.793064, 34.491302, 34.616577>,  <40.634407, 34.456123, 34.439968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.793064, 34.491302, 34.616577>,  <41.057495, 34.549931, 34.910923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.793064, 34.491302, 34.616577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730481, -0.349764, -0.586569,
		-0.171403, -0.925300, 0.338290,
		-0.661074, -0.146575, -0.735865,
		40.594742, 34.447330, 34.395817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.000389, 34.323235, 35.585121>,  <41.057495, 34.549931, 34.910923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.000389, 34.323235, 35.585121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.255886, 34.298134, 35.278378>,  <41.409184, 34.283073, 35.094334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.255886, 34.298134, 35.278378>,  <41.000389, 34.323235, 35.585121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.255886, 34.298134, 35.278378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100173, -0.994968, -0.002015,
		-0.762869, 0.078105, -0.641818,
		0.638746, -0.062756, -0.766854,
		41.447510, 34.279308, 35.048321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.711563, 33.875904, 34.895988>,  <41.000389, 34.323235, 35.585121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.711563, 33.875904, 34.895988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.108780, 33.862862, 34.941250>,  <41.347111, 33.855034, 34.968407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.108780, 33.862862, 34.941250>,  <40.711563, 33.875904, 34.895988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.108780, 33.862862, 34.941250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022038, -0.995380, -0.093447,
		0.115679, 0.090304, -0.989173,
		0.993042, -0.032609, 0.113155,
		41.406693, 33.853077, 34.975197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.035828, 33.458038, 34.299305>,  <40.711563, 33.875904, 34.895988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.035828, 33.458038, 34.299305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.272305, 33.459026, 34.621918>,  <41.414188, 33.459618, 34.815483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.272305, 33.459026, 34.621918>,  <41.035828, 33.458038, 34.299305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.272305, 33.459026, 34.621918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053056, -0.997948, -0.035834,
		0.804786, 0.063976, -0.590108,
		0.591189, 0.002470, 0.806529,
		41.449661, 33.459766, 34.863876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.687855, 33.221519, 34.116661>,  <41.035828, 33.458038, 34.299305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.687855, 33.221519, 34.116661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.658470, 33.138668, 34.506882>,  <41.640839, 33.088955, 34.741013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.658470, 33.138668, 34.506882>,  <41.687855, 33.221519, 34.116661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.658470, 33.138668, 34.506882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343267, -0.923676, -0.170268,
		0.936361, 0.322367, 0.138953,
		-0.073459, -0.207130, 0.975551,
		41.636433, 33.076530, 34.799545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.305550, 32.733742, 34.326149>,  <41.687855, 33.221519, 34.116661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.305550, 32.733742, 34.326149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.049980, 32.677116, 34.628601>,  <41.896637, 32.643143, 34.810074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.049980, 32.677116, 34.628601>,  <42.305550, 32.733742, 34.326149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.049980, 32.677116, 34.628601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196421, -0.980362, -0.017567,
		0.743770, 0.137296, 0.654184,
		-0.638925, -0.141561, 0.756132,
		41.858303, 32.634647, 34.855442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.611561, 32.267811, 34.770523>,  <42.305550, 32.733742, 34.326149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.611561, 32.267811, 34.770523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.217152, 32.238705, 34.830471>,  <41.980507, 32.221241, 34.866440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.217152, 32.238705, 34.830471>,  <42.611561, 32.267811, 34.770523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.217152, 32.238705, 34.830471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033660, -0.968042, -0.248520,
		0.163166, -0.240002, 0.956961,
		-0.986024, -0.072761, 0.149873,
		41.921345, 32.216877, 34.875435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.483295, 31.671608, 35.313217>,  <42.611561, 32.267811, 34.770523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.483295, 31.671608, 35.313217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.132629, 31.724096, 35.128071>,  <41.922230, 31.755589, 35.016983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.132629, 31.724096, 35.128071>,  <42.483295, 31.671608, 35.313217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.132629, 31.724096, 35.128071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019459, -0.970970, -0.238407,
		-0.480714, -0.199995, 0.853766,
		-0.876662, 0.131218, -0.462867,
		41.869633, 31.763462, 34.989212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.009293, 31.119890, 35.567188>,  <42.483295, 31.671608, 35.313217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.009293, 31.119890, 35.567188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.824715, 31.238670, 35.232792>,  <41.713966, 31.309938, 35.032154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.824715, 31.238670, 35.232792>,  <42.009293, 31.119890, 35.567188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.824715, 31.238670, 35.232792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226392, -0.950535, -0.212673,
		-0.857796, 0.091125, 0.505848,
		-0.461446, 0.296950, -0.835995,
		41.686279, 31.327755, 34.981995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.441341, 30.747826, 35.522732>,  <42.009293, 31.119890, 35.567188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.441341, 30.747826, 35.522732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.500294, 30.862532, 35.144093>,  <41.535667, 30.931355, 34.916908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.500294, 30.862532, 35.144093>,  <41.441341, 30.747826, 35.522732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.500294, 30.862532, 35.144093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156450, -0.938240, -0.308591,
		-0.976628, 0.193576, -0.093417,
		0.147383, 0.286764, -0.946596,
		41.544510, 30.948561, 34.860115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.010410, 30.408478, 35.143635>,  <41.441341, 30.747826, 35.522732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.010410, 30.408478, 35.143635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.297974, 30.510752, 34.885086>,  <41.470512, 30.572117, 34.729958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.297974, 30.510752, 34.885086>,  <41.010410, 30.408478, 35.143635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.297974, 30.510752, 34.885086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003197, -0.928665, -0.370906,
		-0.695102, 0.268712, -0.666803,
		0.718904, 0.255686, -0.646376,
		41.513645, 30.587458, 34.691174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.825741, 30.031359, 34.572414>,  <41.010410, 30.408478, 35.143635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.825741, 30.031359, 34.572414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.208157, 30.131142, 34.510757>,  <41.437607, 30.191011, 34.473763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.208157, 30.131142, 34.510757>,  <40.825741, 30.031359, 34.572414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.208157, 30.131142, 34.510757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164351, -0.891162, -0.422870,
		-0.242852, 0.378947, -0.892985,
		0.956040, 0.249458, -0.154140,
		41.494968, 30.205978, 34.464516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.894516, 29.752117, 33.929020>,  <40.825741, 30.031359, 34.572414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.894516, 29.752117, 33.929020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.269478, 29.829399, 34.044914>,  <41.494453, 29.875769, 34.114452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.269478, 29.829399, 34.044914>,  <40.894516, 29.752117, 33.929020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.269478, 29.829399, 34.044914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314977, -0.825258, -0.468764,
		0.148540, 0.530681, -0.834454,
		0.937404, 0.193203, 0.289736,
		41.550697, 29.887360, 34.131836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.212627, 29.644274, 33.334251>,  <40.894516, 29.752117, 33.929020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.212627, 29.644274, 33.334251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.495415, 29.635330, 33.617008>,  <41.665089, 29.629965, 33.786663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.495415, 29.635330, 33.617008>,  <41.212627, 29.644274, 33.334251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.495415, 29.635330, 33.617008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365632, -0.844015, -0.392367,
		0.605401, 0.535853, -0.588516,
		0.706967, -0.022359, 0.706893,
		41.707504, 29.628622, 33.829075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.832500, 29.568951, 32.959389>,  <41.212627, 29.644274, 33.334251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.832500, 29.568951, 32.959389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.885532, 29.446259, 33.336395>,  <41.917351, 29.372643, 33.562599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.885532, 29.446259, 33.336395>,  <41.832500, 29.568951, 32.959389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.885532, 29.446259, 33.336395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248222, -0.910334, -0.331175,
		0.959588, 0.277860, -0.044554,
		0.132579, -0.306733, 0.942517,
		41.925304, 29.354239, 33.619152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.415874, 29.275227, 32.878807>,  <41.832500, 29.568951, 32.959389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.415874, 29.275227, 32.878807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.287670, 29.116976, 33.223076>,  <42.210747, 29.022026, 33.429638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.287670, 29.116976, 33.223076>,  <42.415874, 29.275227, 32.878807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.287670, 29.116976, 33.223076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357923, -0.891825, -0.276657,
		0.877020, 0.219383, 0.427442,
		-0.320510, -0.395625, 0.860671,
		42.191517, 28.998289, 33.481277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.982704, 28.906935, 33.089119>,  <42.415874, 29.275227, 32.878807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.982704, 28.906935, 33.089119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.661743, 28.749586, 33.268635>,  <42.469166, 28.655176, 33.376343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.661743, 28.749586, 33.268635>,  <42.982704, 28.906935, 33.089119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.661743, 28.749586, 33.268635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353263, -0.919185, -0.174079,
		0.480999, 0.018860, 0.876518,
		-0.802400, -0.393373, 0.448790,
		42.421024, 28.631575, 33.403271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.195705, 28.284386, 33.508209>,  <42.982704, 28.906935, 33.089119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.195705, 28.284386, 33.508209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.798004, 28.245897, 33.489414>,  <42.559383, 28.222805, 33.478138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.798004, 28.245897, 33.489414>,  <43.195705, 28.284386, 33.508209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.798004, 28.245897, 33.489414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099948, -0.991376, -0.084759,
		-0.038430, -0.088968, 0.995293,
		-0.994250, -0.096221, -0.046990,
		42.499729, 28.217031, 33.475319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.064034, 27.719213, 33.903130>,  <43.195705, 28.284386, 33.508209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.064034, 27.719213, 33.903130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.772385, 27.759899, 33.632416>,  <42.597397, 27.784311, 33.469986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.772385, 27.759899, 33.632416>,  <43.064034, 27.719213, 33.903130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.772385, 27.759899, 33.632416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071310, -0.972220, -0.222941,
		-0.680660, -0.210812, 0.701613,
		-0.729121, 0.101715, -0.676784,
		42.553650, 27.790413, 33.429382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.700283, 27.140709, 34.032070>,  <43.064034, 27.719213, 33.903130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.700283, 27.140709, 34.032070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.604412, 27.266037, 33.664509>,  <42.546890, 27.341234, 33.443974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.604412, 27.266037, 33.664509>,  <42.700283, 27.140709, 34.032070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.604412, 27.266037, 33.664509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277555, -0.884874, -0.374114,
		-0.930332, -0.344714, 0.125122,
		-0.239680, 0.313322, -0.918903,
		42.532509, 27.360033, 33.388840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.321518, 26.517319, 33.717690>,  <42.700283, 27.140709, 34.032070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.321518, 26.517319, 33.717690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.403660, 26.748507, 33.401772>,  <42.452946, 26.887218, 33.212219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.403660, 26.748507, 33.401772>,  <42.321518, 26.517319, 33.717690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.403660, 26.748507, 33.401772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198419, -0.814824, -0.544694,
		-0.958363, -0.044855, -0.282009,
		0.205355, 0.577970, -0.789797,
		42.465267, 26.921898, 33.164833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.934956, 26.283014, 33.172615>,  <42.321518, 26.517319, 33.717690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.934956, 26.283014, 33.172615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.228043, 26.483358, 32.988323>,  <42.403893, 26.603565, 32.877747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.228043, 26.483358, 32.988323>,  <41.934956, 26.283014, 33.172615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.228043, 26.483358, 32.988323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204442, -0.807737, -0.552959,
		-0.649102, 0.310969, -0.694237,
		0.732714, 0.500858, -0.460729,
		42.447857, 26.633615, 32.850105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.949894, 26.088634, 32.436382>,  <41.934956, 26.283014, 33.172615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.949894, 26.088634, 32.436382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.316025, 26.218611, 32.531532>,  <42.535706, 26.296597, 32.588623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.316025, 26.218611, 32.531532>,  <41.949894, 26.088634, 32.436382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.316025, 26.218611, 32.531532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400988, -0.680975, -0.612765,
		-0.037128, 0.656267, -0.753615,
		0.915331, 0.324941, 0.237872,
		42.590626, 26.316093, 32.602894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.320175, 26.020849, 31.775633>,  <41.949894, 26.088634, 32.436382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.320175, 26.020849, 31.775633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.588783, 26.036793, 32.071598>,  <42.749947, 26.046358, 32.249176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.588783, 26.036793, 32.071598>,  <42.320175, 26.020849, 31.775633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.588783, 26.036793, 32.071598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623062, -0.570852, -0.534717,
		0.401070, 0.820085, -0.408171,
		0.671519, 0.039856, 0.739915,
		42.790237, 26.048750, 32.293571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.005215, 26.164328, 31.522747>,  <42.320175, 26.020849, 31.775633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.005215, 26.164328, 31.522747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.035194, 25.986115, 31.879597>,  <43.053181, 25.879187, 32.093708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.035194, 25.986115, 31.879597>,  <43.005215, 26.164328, 31.522747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.035194, 25.986115, 31.879597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737365, -0.577525, -0.350367,
		0.671324, 0.684080, 0.285236,
		0.074948, -0.445533, 0.892123,
		43.057678, 25.852455, 32.147232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.688560, 26.159681, 31.657280>,  <43.005215, 26.164328, 31.522747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.688560, 26.159681, 31.657280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.494534, 25.868378, 31.850918>,  <43.378117, 25.693596, 31.967100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.494534, 25.868378, 31.850918>,  <43.688560, 26.159681, 31.657280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.494534, 25.868378, 31.850918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695896, -0.656703, -0.290639,
		0.529567, 0.195901, 0.825337,
		-0.485065, -0.728261, 0.484095,
		43.349014, 25.649899, 31.996147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.349148, 25.916779, 31.859804>,  <43.688560, 26.159681, 31.657280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.349148, 25.916779, 31.859804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.026649, 25.680248, 31.852861>,  <43.833149, 25.538330, 31.848696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.026649, 25.680248, 31.852861>,  <44.349148, 25.916779, 31.859804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.026649, 25.680248, 31.852861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504768, -0.672330, -0.541463,
		0.308511, -0.445314, 0.840545,
		-0.806245, -0.591327, -0.017359,
		43.784775, 25.502850, 31.847654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.562649, 25.998522, 32.546192>,  <44.349148, 25.916779, 31.859804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.562649, 25.998522, 32.546192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.641167, 26.323435, 32.326496>,  <44.688278, 26.518383, 32.194679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.641167, 26.323435, 32.326496>,  <44.562649, 25.998522, 32.546192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.641167, 26.323435, 32.326496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760688, 0.227298, 0.608021,
		0.618726, -0.537153, -0.573275,
		0.196296, 0.812282, -0.549241,
		44.700054, 26.567120, 32.161724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.201092, 26.051634, 32.439495>,  <44.562649, 25.998522, 32.546192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.201092, 26.051634, 32.439495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.064922, 26.424820, 32.392693>,  <44.983219, 26.648731, 32.364609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.064922, 26.424820, 32.392693>,  <45.201092, 26.051634, 32.439495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.064922, 26.424820, 32.392693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643044, 0.321794, 0.694941,
		0.686007, 0.161333, -0.709483,
		-0.340424, 0.932963, -0.117009,
		44.962795, 26.704708, 32.357590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.754128, 25.602556, 32.465885>,  <45.201092, 26.051634, 32.439495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.754128, 25.602556, 32.465885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.714096, 25.319124, 32.186485>,  <45.690075, 25.149065, 32.018845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.714096, 25.319124, 32.186485>,  <45.754128, 25.602556, 32.465885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.714096, 25.319124, 32.186485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531251, -0.555523, 0.639662,
		-0.841282, 0.435097, -0.320835,
		-0.100083, -0.708580, -0.698497,
		45.684071, 25.106550, 31.976936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.540581, 25.931646, 31.832260>,  <45.754128, 25.602556, 32.465885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.540581, 25.931646, 31.832260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.249603, 25.799833, 31.591515>,  <45.075016, 25.720745, 31.447067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.249603, 25.799833, 31.591515>,  <45.540581, 25.931646, 31.832260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.249603, 25.799833, 31.591515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025768, 0.863395, -0.503870,
		0.685686, -0.382045, -0.619578,
		-0.727441, -0.329531, -0.601862,
		45.031372, 25.700974, 31.410955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.517647, 26.633158, 31.884470>,  <45.540581, 25.931646, 31.832260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.517647, 26.633158, 31.884470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.194290, 26.770542, 31.693245>,  <45.000278, 26.852972, 31.578510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.194290, 26.770542, 31.693245>,  <45.517647, 26.633158, 31.884470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.194290, 26.770542, 31.693245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289424, 0.939098, 0.185282,
		0.512585, 0.011416, -0.858561,
		-0.808388, 0.343461, -0.478063,
		44.951775, 26.873581, 31.549826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.732918, 27.122681, 31.406063>,  <45.517647, 26.633158, 31.884470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.732918, 27.122681, 31.406063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.350662, 27.187155, 31.504665>,  <45.121307, 27.225840, 31.563828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.350662, 27.187155, 31.504665>,  <45.732918, 27.122681, 31.406063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.350662, 27.187155, 31.504665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204993, 0.964973, 0.163724,
		-0.211482, 0.206994, -0.955211,
		-0.955643, 0.161187, 0.246506,
		45.063969, 27.235512, 31.578617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.497627, 27.729488, 30.960695>,  <45.732918, 27.122681, 31.406063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.497627, 27.729488, 30.960695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.343578, 27.655472, 31.322344>,  <45.251148, 27.611061, 31.539333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.343578, 27.655472, 31.322344>,  <45.497627, 27.729488, 30.960695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.343578, 27.655472, 31.322344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347645, 0.878433, 0.327870,
		-0.854880, 0.440585, -0.273979,
		-0.385127, -0.185043, 0.904122,
		45.228039, 27.599958, 31.593580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.286201, 28.335005, 31.199280>,  <45.497627, 27.729488, 30.960695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.286201, 28.335005, 31.199280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.240196, 28.133223, 31.541576>,  <45.212593, 28.012154, 31.746954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.240196, 28.133223, 31.541576>,  <45.286201, 28.335005, 31.199280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.240196, 28.133223, 31.541576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135132, 0.845505, 0.516586,
		-0.984129, 0.175055, -0.029079,
		-0.115017, -0.504457, 0.855742,
		45.205692, 27.981886, 31.798300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.823895, 28.686556, 31.560148>,  <45.286201, 28.335005, 31.199280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.823895, 28.686556, 31.560148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.047699, 28.485046, 31.823406>,  <45.181984, 28.364141, 31.981361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.047699, 28.485046, 31.823406>,  <44.823895, 28.686556, 31.560148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.047699, 28.485046, 31.823406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058502, 0.816100, 0.574942,
		-0.826753, -0.283186, 0.486092,
		0.559515, -0.503772, 0.658146,
		45.215553, 28.333914, 32.020851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.527996, 28.757589, 32.134422>,  <44.823895, 28.686556, 31.560148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.527996, 28.757589, 32.134422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.894386, 28.642870, 32.246662>,  <45.114220, 28.574038, 32.314007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.894386, 28.642870, 32.246662>,  <44.527996, 28.757589, 32.134422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.894386, 28.642870, 32.246662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134655, 0.878508, 0.458359,
		-0.377968, -0.382060, 0.843309,
		0.915974, -0.286801, 0.280602,
		45.169178, 28.556829, 32.330841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.586636, 28.724947, 32.901680>,  <44.527996, 28.757589, 32.134422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.586636, 28.724947, 32.901680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.961601, 28.757713, 32.766308>,  <45.186581, 28.777374, 32.685085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.961601, 28.757713, 32.766308>,  <44.586636, 28.724947, 32.901680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.961601, 28.757713, 32.766308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153770, 0.774635, 0.613429,
		0.312411, -0.627080, 0.713561,
		0.937419, 0.081918, -0.338431,
		45.242828, 28.782290, 32.664780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.993279, 28.742929, 33.507954>,  <44.586636, 28.724947, 32.901680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.993279, 28.742929, 33.507954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.192112, 28.920740, 33.209877>,  <45.311413, 29.027426, 33.031033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.192112, 28.920740, 33.209877>,  <44.993279, 28.742929, 33.507954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.192112, 28.920740, 33.209877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219300, 0.766563, 0.603563,
		0.839535, -0.463439, 0.283558,
		0.497079, 0.444528, -0.745189,
		45.341236, 29.054098, 32.986320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.536453, 29.145451, 33.816261>,  <44.993279, 28.742929, 33.507954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.536453, 29.145451, 33.816261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.537033, 29.321266, 33.456974>,  <45.537380, 29.426756, 33.241402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.537033, 29.321266, 33.456974>,  <45.536453, 29.145451, 33.816261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.537033, 29.321266, 33.456974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025326, 0.897919, 0.439432,
		0.999678, -0.023385, -0.009832,
		0.001448, 0.439540, -0.898222,
		45.537468, 29.453129, 33.187508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.032097, 29.564808, 33.838776>,  <45.536453, 29.145451, 33.816261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.032097, 29.564808, 33.838776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.828419, 29.708717, 33.526035>,  <45.706211, 29.795063, 33.338390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.828419, 29.708717, 33.526035>,  <46.032097, 29.564808, 33.838776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.828419, 29.708717, 33.526035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191188, 0.933022, 0.304823,
		0.839148, 0.005734, -0.543873,
		-0.509193, 0.359774, -0.781847,
		45.675659, 29.816650, 33.291481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.364765, 30.162008, 33.702175>,  <46.032097, 29.564808, 33.838776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.364765, 30.162008, 33.702175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.020103, 30.236849, 33.513474>,  <45.813309, 30.281754, 33.400253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.020103, 30.236849, 33.513474>,  <46.364765, 30.162008, 33.702175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.020103, 30.236849, 33.513474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036398, 0.949948, 0.310279,
		0.506197, 0.250181, -0.825333,
		-0.861650, 0.187103, -0.471754,
		45.761608, 30.292980, 33.371948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.404663, 30.825024, 33.310158>,  <46.364765, 30.162008, 33.702175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.404663, 30.825024, 33.310158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.016052, 30.755430, 33.374500>,  <45.782887, 30.713675, 33.413105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.016052, 30.755430, 33.374500>,  <46.404663, 30.825024, 33.310158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.016052, 30.755430, 33.374500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147072, 0.975039, 0.166336,
		-0.185779, 0.137942, -0.972861,
		-0.971522, -0.173982, 0.160854,
		45.724594, 30.703236, 33.422756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.064144, 31.479536, 33.071136>,  <46.404663, 30.825024, 33.310158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.064144, 31.479536, 33.071136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.778008, 31.303070, 33.287895>,  <45.606323, 31.197191, 33.417950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.778008, 31.303070, 33.287895>,  <46.064144, 31.479536, 33.071136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.778008, 31.303070, 33.287895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281963, 0.891803, 0.353815,
		-0.639357, 0.100305, -0.762340,
		-0.715346, -0.441165, 0.541898,
		45.563404, 31.170721, 33.450466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.525005, 31.918558, 33.030800>,  <46.064144, 31.479536, 33.071136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.525005, 31.918558, 33.030800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.418846, 31.697435, 33.346767>,  <45.355152, 31.564762, 33.536346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.418846, 31.697435, 33.346767>,  <45.525005, 31.918558, 33.030800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.418846, 31.697435, 33.346767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332733, 0.821477, 0.463102,
		-0.904905, -0.139927, -0.401953,
		-0.265395, -0.552807, 0.789918,
		45.339226, 31.531593, 33.583744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.724598, 31.990715, 33.153812>,  <45.525005, 31.918558, 33.030800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.724598, 31.990715, 33.153812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.915844, 31.905210, 33.494568>,  <45.030594, 31.853907, 33.699020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.915844, 31.905210, 33.494568>,  <44.724598, 31.990715, 33.153812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.915844, 31.905210, 33.494568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509913, 0.722166, 0.467402,
		-0.715116, -0.657861, 0.236281,
		0.478119, -0.213764, 0.851885,
		45.059280, 31.841082, 33.750134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.197460, 31.974707, 33.587528>,  <44.724598, 31.990715, 33.153812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.197460, 31.974707, 33.587528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.521179, 32.014435, 33.819103>,  <44.715412, 32.038273, 33.958050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.521179, 32.014435, 33.819103>,  <44.197460, 31.974707, 33.587528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.521179, 32.014435, 33.819103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481060, 0.677639, 0.556225,
		-0.337069, -0.728657, 0.596191,
		0.809299, 0.099318, 0.578939,
		44.763969, 32.044231, 33.992786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.926266, 32.028461, 34.252689>,  <44.197460, 31.974707, 33.587528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.926266, 32.028461, 34.252689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.288280, 32.198418, 34.260567>,  <44.505489, 32.300392, 34.265293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.288280, 32.198418, 34.260567>,  <43.926266, 32.028461, 34.252689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.288280, 32.198418, 34.260567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345066, 0.706367, 0.618041,
		0.248686, -0.566142, 0.785899,
		0.905033, 0.424886, 0.019693,
		44.559792, 32.325882, 34.266476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.989731, 32.180637, 34.987175>,  <43.926266, 32.028461, 34.252689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.989731, 32.180637, 34.987175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.284576, 32.379063, 34.803619>,  <44.461483, 32.498119, 34.693485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.284576, 32.379063, 34.803619>,  <43.989731, 32.180637, 34.987175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.284576, 32.379063, 34.803619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082194, 0.739839, 0.667744,
		0.670753, -0.454485, 0.586118,
		0.737113, 0.496066, -0.458893,
		44.505711, 32.527882, 34.665951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.298428, 32.559006, 35.600990>,  <43.989731, 32.180637, 34.987175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.298428, 32.559006, 35.600990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.409821, 32.740547, 35.262413>,  <44.476658, 32.849472, 35.059269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.409821, 32.740547, 35.262413>,  <44.298428, 32.559006, 35.600990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.409821, 32.740547, 35.262413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045539, 0.874073, 0.483655,
		0.959360, -0.173237, 0.222748,
		0.278485, 0.453856, -0.846440,
		44.493366, 32.876705, 35.008480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.836971, 32.901993, 35.807636>,  <44.298428, 32.559006, 35.600990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.836971, 32.901993, 35.807636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.677715, 33.073040, 35.483013>,  <44.582161, 33.175667, 35.288239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.677715, 33.073040, 35.483013>,  <44.836971, 32.901993, 35.807636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.677715, 33.073040, 35.483013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084183, 0.863938, 0.496512,
		0.913456, 0.265998, -0.307967,
		-0.398136, 0.427616, -0.811562,
		44.558273, 33.201324, 35.239544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.269638, 33.517105, 35.730183>,  <44.836971, 32.901993, 35.807636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.269638, 33.517105, 35.730183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.925434, 33.576050, 35.535118>,  <44.718914, 33.611416, 35.418079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.925434, 33.576050, 35.535118>,  <45.269638, 33.517105, 35.730183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.925434, 33.576050, 35.535118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095621, 0.893520, 0.438724,
		0.500387, 0.424156, -0.754788,
		-0.860505, 0.147358, -0.487664,
		44.667282, 33.620258, 35.388821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.315697, 34.084534, 35.432560>,  <45.269638, 33.517105, 35.730183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.315697, 34.084534, 35.432560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.921265, 34.029953, 35.470562>,  <44.684605, 33.997204, 35.493362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.921265, 34.029953, 35.470562>,  <45.315697, 34.084534, 35.432560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.921265, 34.029953, 35.470562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106693, 0.957534, 0.267854,
		-0.127515, 0.253990, -0.958764,
		-0.986081, -0.136449, 0.095001,
		44.625439, 33.989017, 35.499062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.976509, 34.137878, 35.234489>,  <45.315697, 34.084534, 35.432560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.976509, 34.137878, 35.234489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.204655, 33.816040, 35.168385>,  <46.341541, 33.622936, 35.128723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.204655, 33.816040, 35.168385>,  <45.976509, 34.137878, 35.234489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.204655, 33.816040, 35.168385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506460, 0.186090, 0.841944,
		-0.646668, -0.563916, 0.513634,
		0.570367, -0.804593, -0.165262,
		46.375767, 33.574661, 35.118805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.957554, 34.040215, 34.588505>,  <45.976509, 34.137878, 35.234489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.957554, 34.040215, 34.588505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.639050, 34.282196, 34.587509>,  <45.447948, 34.427383, 34.586910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.639050, 34.282196, 34.587509>,  <45.957554, 34.040215, 34.588505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.639050, 34.282196, 34.587509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444130, 0.587366, 0.676572,
		0.410756, 0.537620, -0.736372,
		-0.796259, 0.604951, -0.002491,
		45.400173, 34.463680, 34.586761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.560669, 34.421711, 34.744194>,  <45.957554, 34.040215, 34.588505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.560669, 34.421711, 34.744194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.832500, 34.253929, 34.984936>,  <46.995602, 34.153259, 35.129379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.832500, 34.253929, 34.984936>,  <46.560669, 34.421711, 34.744194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.832500, 34.253929, 34.984936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446924, -0.413862, -0.793081,
		0.581744, 0.807946, -0.093789,
		0.679583, -0.419454, 0.601852,
		47.036377, 34.128094, 35.165493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.253490, 34.695229, 34.639801>,  <46.560669, 34.421711, 34.744194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.253490, 34.695229, 34.639801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.242474, 34.312263, 34.754768>,  <47.235863, 34.082485, 34.823750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.242474, 34.312263, 34.754768>,  <47.253490, 34.695229, 34.639801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.242474, 34.312263, 34.754768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300232, -0.282175, -0.911174,
		0.953468, 0.061197, 0.295217,
		-0.027542, -0.957409, 0.287419,
		47.234211, 34.025040, 34.840996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.741581, 35.203293, 34.980442>,  <47.253490, 34.695229, 34.639801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.741581, 35.203293, 34.980442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.666996, 34.814663, 35.038795>,  <47.622246, 34.581486, 35.073807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.666996, 34.814663, 35.038795>,  <47.741581, 35.203293, 34.980442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.666996, 34.814663, 35.038795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612279, 0.001204, 0.790641,
		-0.768339, 0.236746, 0.594648,
		-0.186465, -0.971571, 0.145879,
		47.611057, 34.523193, 35.082558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.787071, 37.376232, 45.178108> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.419708, 37.534302, 45.185741>,  <35.199291, 37.629143, 45.190323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.419708, 37.534302, 45.185741>,  <35.787071, 37.376232, 45.178108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419708, 37.534302, 45.185741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008885, 0.068826, -0.997589,
		-0.395532, -0.916026, -0.066722,
		-0.918409, 0.395171, 0.019084,
		35.144184, 37.652851, 45.191467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541248, 37.021511, 44.592621>,  <35.787071, 37.376232, 45.178108>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.541248, 37.021511, 44.592621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.288486, 37.324863, 44.656559>,  <35.136829, 37.506874, 44.694923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.288486, 37.324863, 44.656559>,  <35.541248, 37.021511, 44.592621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288486, 37.324863, 44.656559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137113, 0.093604, -0.986123,
		-0.762821, -0.645054, 0.044836,
		-0.631905, 0.758382, 0.159848,
		35.098915, 37.552380, 44.704514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.984699, 36.850529, 44.221977>,  <35.541248, 37.021511, 44.592621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.984699, 36.850529, 44.221977> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.933037, 37.243011, 44.279316>,  <34.902039, 37.478500, 44.313721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.933037, 37.243011, 44.279316>,  <34.984699, 36.850529, 44.221977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.933037, 37.243011, 44.279316> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275084, 0.103433, -0.955840,
		-0.952705, -0.162886, 0.256556,
		-0.129157, 0.981208, 0.143348,
		34.894291, 37.537373, 44.322319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327019, 37.009892, 43.964245>,  <34.984699, 36.850529, 44.221977>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.327019, 37.009892, 43.964245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.549877, 37.341934, 43.955200>,  <34.683594, 37.541161, 43.949772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.549877, 37.341934, 43.955200>,  <34.327019, 37.009892, 43.964245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.549877, 37.341934, 43.955200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146124, 0.071200, -0.986701,
		-0.817454, 0.553045, 0.160968,
		0.557151, 0.830104, -0.022610,
		34.717022, 37.590965, 43.948418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952358, 37.435059, 43.581799>,  <34.327019, 37.009892, 43.964245>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952358, 37.435059, 43.581799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.318352, 37.593769, 43.552490>,  <34.537949, 37.688995, 43.534904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.318352, 37.593769, 43.552490>,  <33.952358, 37.435059, 43.581799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318352, 37.593769, 43.552490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054563, -0.058240, -0.996810,
		-0.399781, 0.916064, -0.031639,
		0.914985, 0.396780, -0.073267,
		34.592846, 37.712803, 43.530510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.991673, 37.950050, 42.977772>,  <33.952358, 37.435059, 43.581799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.991673, 37.950050, 42.977772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.382496, 37.892227, 43.040321>,  <34.616989, 37.857533, 43.077850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.382496, 37.892227, 43.040321>,  <33.991673, 37.950050, 42.977772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.382496, 37.892227, 43.040321> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098691, -0.343336, -0.934013,
		0.188710, 0.928021, -0.321193,
		0.977061, -0.144559, 0.156378,
		34.675613, 37.848858, 43.087234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166950, 37.929173, 42.339672>,  <33.991673, 37.950050, 42.977772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.166950, 37.929173, 42.339672> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.512096, 37.813316, 42.505356>,  <34.719185, 37.743801, 42.604767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.512096, 37.813316, 42.505356>,  <34.166950, 37.929173, 42.339672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512096, 37.813316, 42.505356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275880, -0.416781, -0.866132,
		0.423503, 0.861628, -0.279720,
		0.862865, -0.289640, 0.414213,
		34.770954, 37.726425, 42.629620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799133, 38.296707, 42.007458>,  <34.166950, 37.929173, 42.339672>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.799133, 38.296707, 42.007458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.930721, 37.957188, 42.173023>,  <35.009674, 37.753475, 42.272362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.930721, 37.957188, 42.173023>,  <34.799133, 38.296707, 42.007458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930721, 37.957188, 42.173023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166551, -0.379293, -0.910164,
		0.929539, 0.368352, 0.016593,
		0.328967, -0.848796, 0.413916,
		35.029411, 37.702549, 42.297199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503838, 38.167397, 41.875370>,  <34.799133, 38.296707, 42.007458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.503838, 38.167397, 41.875370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.330673, 37.810345, 41.925644>,  <35.226776, 37.596111, 41.955807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.330673, 37.810345, 41.925644>,  <35.503838, 38.167397, 41.875370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330673, 37.810345, 41.925644> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343638, -0.292314, -0.892449,
		0.833367, -0.343162, 0.433288,
		-0.432911, -0.892632, 0.125681,
		35.200798, 37.542557, 41.963348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.881054, 37.817543, 41.397598>,  <35.503838, 38.167397, 41.875370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.881054, 37.817543, 41.397598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.563843, 37.595383, 41.497707>,  <35.373516, 37.462086, 41.557774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.563843, 37.595383, 41.497707>,  <35.881054, 37.817543, 41.397598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563843, 37.595383, 41.497707> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105905, -0.530276, -0.841184,
		0.599908, -0.640578, 0.479344,
		-0.793029, -0.555398, 0.250277,
		35.325935, 37.428764, 41.572792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097961, 37.147972, 41.243809>,  <35.881054, 37.817543, 41.397598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097961, 37.147972, 41.243809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.700340, 37.132111, 41.284367>,  <35.461765, 37.122593, 41.308701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.700340, 37.132111, 41.284367>,  <36.097961, 37.147972, 41.243809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700340, 37.132111, 41.284367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064420, -0.536577, -0.841389,
		0.087773, -0.842919, 0.530832,
		-0.994055, -0.039655, 0.101398,
		35.402122, 37.120213, 41.314785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.939808, 36.557484, 41.078384>,  <36.097961, 37.147972, 41.243809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.939808, 36.557484, 41.078384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.594341, 36.750999, 41.021778>,  <35.387062, 36.867107, 40.987812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.594341, 36.750999, 41.021778>,  <35.939808, 36.557484, 41.078384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594341, 36.750999, 41.021778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002706, -0.276303, -0.961067,
		-0.504054, -0.830426, 0.237325,
		-0.863668, 0.483787, -0.141519,
		35.335239, 36.896137, 40.979321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314072, 36.026138, 40.711834>,  <35.939808, 36.557484, 41.078384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.314072, 36.026138, 40.711834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.221992, 36.410217, 40.648556>,  <35.166744, 36.640667, 40.610588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.221992, 36.410217, 40.648556>,  <35.314072, 36.026138, 40.711834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.221992, 36.410217, 40.648556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291474, -0.223133, -0.930191,
		-0.928468, -0.168015, 0.331238,
		-0.230196, 0.960199, -0.158200,
		35.152935, 36.698277, 40.601097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966412, 35.987362, 40.086945>,  <35.314072, 36.026138, 40.711834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966412, 35.987362, 40.086945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.036461, 36.379349, 40.124905>,  <35.078491, 36.614540, 40.147678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.036461, 36.379349, 40.124905>,  <34.966412, 35.987362, 40.086945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036461, 36.379349, 40.124905> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027913, 0.091406, -0.995422,
		-0.984151, 0.176970, -0.011347,
		0.175123, 0.979963, 0.094897,
		35.088997, 36.673336, 40.153374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.432053, 36.309853, 39.696457>,  <34.966412, 35.987362, 40.086945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.432053, 36.309853, 39.696457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.754494, 36.543797, 39.732548>,  <34.947956, 36.684162, 39.754204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.754494, 36.543797, 39.732548>,  <34.432053, 36.309853, 39.696457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754494, 36.543797, 39.732548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166519, -0.077866, -0.982959,
		-0.567870, 0.807387, -0.160158,
		0.806099, 0.584862, 0.090228,
		34.996323, 36.719254, 39.759617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425526, 36.614651, 39.102539>,  <34.432053, 36.309853, 39.696457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425526, 36.614651, 39.102539> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.774643, 36.767170, 39.224419>,  <34.984112, 36.858681, 39.297546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.774643, 36.767170, 39.224419>,  <34.425526, 36.614651, 39.102539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774643, 36.767170, 39.224419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174806, 0.338659, -0.924528,
		-0.455713, 0.860185, 0.228926,
		0.872794, 0.381302, 0.304697,
		35.036480, 36.881561, 39.315826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.552208, 37.407845, 38.813499>,  <34.425526, 36.614651, 39.102539>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.552208, 37.407845, 38.813499> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.897247, 37.216255, 38.878628>,  <35.104271, 37.101299, 38.917706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.897247, 37.216255, 38.878628>,  <34.552208, 37.407845, 38.813499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897247, 37.216255, 38.878628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235307, 0.094950, -0.967272,
		0.447839, 0.872678, 0.194609,
		0.862595, -0.478975, 0.162825,
		35.156025, 37.072563, 38.927475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003078, 37.811237, 38.420002>,  <34.552208, 37.407845, 38.813499>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003078, 37.811237, 38.420002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.181660, 37.456287, 38.466042>,  <35.288807, 37.243317, 38.493668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.181660, 37.456287, 38.466042>,  <35.003078, 37.811237, 38.420002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.181660, 37.456287, 38.466042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361322, 0.061101, -0.930437,
		0.818611, 0.456986, 0.347907,
		0.446455, -0.887373, 0.115101,
		35.315598, 37.190075, 38.500572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762779, 37.886318, 38.174454>,  <35.003078, 37.811237, 38.420002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762779, 37.886318, 38.174454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.669807, 37.497417, 38.163811>,  <35.614025, 37.264076, 38.157425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.669807, 37.497417, 38.163811>,  <35.762779, 37.886318, 38.174454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.669807, 37.497417, 38.163811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221196, -0.026203, -0.974877,
		0.947127, -0.232473, 0.221148,
		-0.232428, -0.972250, -0.026604,
		35.600079, 37.205742, 38.155830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.221764, 37.668533, 37.743496>,  <35.762779, 37.886318, 38.174454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.221764, 37.668533, 37.743496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.953739, 37.371655, 37.738323>,  <35.792923, 37.193527, 37.735218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.953739, 37.371655, 37.738323>,  <36.221764, 37.668533, 37.743496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.953739, 37.371655, 37.738323> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100742, -0.073665, -0.992182,
		0.735440, -0.666123, 0.124130,
		-0.670059, -0.742195, -0.012931,
		35.752720, 37.148994, 37.734444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576920, 37.076008, 37.375469>,  <36.221764, 37.668533, 37.743496>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.576920, 37.076008, 37.375469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.182255, 37.011044, 37.370972>,  <35.945457, 36.972065, 37.368275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.182255, 37.011044, 37.370972>,  <36.576920, 37.076008, 37.375469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.182255, 37.011044, 37.370972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027096, -0.095734, -0.995038,
		0.160527, -0.982068, 0.098857,
		-0.986659, -0.162410, -0.011243,
		35.886257, 36.962322, 37.367599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530289, 36.562317, 36.942543>,  <36.576920, 37.076008, 37.375469>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530289, 36.562317, 36.942543> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.163132, 36.720718, 36.932266>,  <35.942837, 36.815758, 36.926102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.163132, 36.720718, 36.932266>,  <36.530289, 36.562317, 36.942543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163132, 36.720718, 36.932266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026749, -0.002855, -0.999638,
		-0.395934, -0.918244, -0.007972,
		-0.917889, 0.396004, -0.025692,
		35.887764, 36.839520, 36.924557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208050, 36.102608, 37.003727>,  <36.530289, 36.562317, 36.942543>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208050, 36.102608, 37.003727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.589439, 36.223148, 37.007282>,  <37.818272, 36.295471, 37.009415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.589439, 36.223148, 37.007282>,  <37.208050, 36.102608, 37.003727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589439, 36.223148, 37.007282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005914, -0.048171, 0.998822,
		0.301426, -0.952295, -0.047712,
		0.953471, 0.301353, 0.008888,
		37.875481, 36.313553, 37.009949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.523212, 35.647118, 37.514397>,  <37.208050, 36.102608, 37.003727>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.523212, 35.647118, 37.514397> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.799469, 35.934597, 37.482185>,  <37.965221, 36.107086, 37.462856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.799469, 35.934597, 37.482185>,  <37.523212, 35.647118, 37.514397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.799469, 35.934597, 37.482185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245375, -0.128121, 0.960925,
		0.680297, -0.683416, -0.264836,
		0.690643, 0.718698, -0.080533,
		38.006660, 36.150208, 37.458027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172253, 35.365311, 37.845222>,  <37.523212, 35.647118, 37.514397>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.172253, 35.365311, 37.845222> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.194302, 35.764690, 37.848423>,  <38.207531, 36.004318, 37.850346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.194302, 35.764690, 37.848423>,  <38.172253, 35.365311, 37.845222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.194302, 35.764690, 37.848423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110472, -0.014065, 0.993780,
		0.992350, -0.053891, -0.111076,
		0.055118, 0.998448, 0.008004,
		38.210838, 36.064224, 37.850822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712463, 35.526779, 38.374321>,  <38.172253, 35.365311, 37.845222>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.712463, 35.526779, 38.374321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.527782, 35.875359, 38.308098>,  <38.416973, 36.084507, 38.268364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.527782, 35.875359, 38.308098>,  <38.712463, 35.526779, 38.374321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527782, 35.875359, 38.308098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070213, 0.150150, 0.986167,
		0.884253, 0.466937, -0.008137,
		-0.461700, 0.871450, -0.165555,
		38.389271, 36.136795, 38.258430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139496, 36.048214, 38.805164>,  <38.712463, 35.526779, 38.374321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.139496, 36.048214, 38.805164> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.771065, 36.187157, 38.734795>,  <38.550007, 36.270523, 38.692574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.771065, 36.187157, 38.734795>,  <39.139496, 36.048214, 38.805164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.771065, 36.187157, 38.734795> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018811, 0.490993, 0.870960,
		0.388914, 0.798916, -0.458779,
		-0.921082, 0.347359, -0.175926,
		38.494740, 36.291363, 38.682018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220688, 36.671078, 39.092419>,  <39.139496, 36.048214, 38.805164>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.220688, 36.671078, 39.092419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.826305, 36.617020, 39.053173>,  <38.589676, 36.584583, 39.029625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.826305, 36.617020, 39.053173>,  <39.220688, 36.671078, 39.092419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826305, 36.617020, 39.053173> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152087, 0.483931, 0.861789,
		-0.068988, 0.864608, -0.497689,
		-0.985956, -0.135145, -0.098110,
		38.530518, 36.576477, 39.023739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885700, 37.246899, 39.216351>,  <39.220688, 36.671078, 39.092419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885700, 37.246899, 39.216351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.552990, 37.026913, 39.246506>,  <38.353363, 36.894920, 39.264599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.552990, 37.026913, 39.246506>,  <38.885700, 37.246899, 39.216351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.552990, 37.026913, 39.246506> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242930, 0.482742, 0.841395,
		-0.499130, 0.681541, -0.535137,
		-0.831778, -0.549966, 0.075384,
		38.303455, 36.861923, 39.269119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284172, 37.754360, 39.395878>,  <38.885700, 37.246899, 39.216351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.284172, 37.754360, 39.395878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.193352, 37.384415, 39.517910>,  <38.138859, 37.162449, 39.591129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.193352, 37.384415, 39.517910>,  <38.284172, 37.754360, 39.395878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193352, 37.384415, 39.517910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566609, 0.380236, 0.731010,
		-0.792087, -0.006883, -0.610370,
		-0.227053, -0.924864, 0.305080,
		38.125237, 37.106956, 39.609432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607857, 37.796963, 39.701077>,  <38.284172, 37.754360, 39.395878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.607857, 37.796963, 39.701077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.730381, 37.435410, 39.820526>,  <37.803894, 37.218479, 39.892197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.730381, 37.435410, 39.820526>,  <37.607857, 37.796963, 39.701077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.730381, 37.435410, 39.820526> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513775, 0.107111, 0.851212,
		-0.801380, -0.414158, -0.431582,
		0.306309, -0.903881, 0.298621,
		37.822273, 37.164246, 39.910110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004719, 37.358139, 39.899155>,  <37.607857, 37.796963, 39.701077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004719, 37.358139, 39.899155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.328506, 37.232628, 40.097668>,  <37.522781, 37.157322, 40.216778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.328506, 37.232628, 40.097668>,  <37.004719, 37.358139, 39.899155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328506, 37.232628, 40.097668> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500802, 0.072279, 0.862539,
		-0.306519, -0.946740, -0.098634,
		0.809471, -0.313781, 0.496285,
		37.571346, 37.138493, 40.246552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751846, 37.036678, 40.454117>,  <37.004719, 37.358139, 39.899155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751846, 37.036678, 40.454117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.126778, 37.082714, 40.585670>,  <37.351738, 37.110336, 40.664604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.126778, 37.082714, 40.585670>,  <36.751846, 37.036678, 40.454117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126778, 37.082714, 40.585670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302480, -0.199777, 0.931984,
		0.172970, -0.973058, -0.152443,
		0.937330, 0.115094, 0.328886,
		37.407978, 37.117241, 40.684338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987740, 36.373501, 40.891872>,  <36.751846, 37.036678, 40.454117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.987740, 36.373501, 40.891872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.178928, 36.711952, 40.986191>,  <37.293644, 36.915024, 41.042782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.178928, 36.711952, 40.986191>,  <36.987740, 36.373501, 40.891872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.178928, 36.711952, 40.986191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285587, -0.104162, 0.952675,
		0.830649, -0.522698, 0.191857,
		0.477977, 0.846131, 0.235798,
		37.322323, 36.965790, 41.056931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185207, 36.210575, 41.553272>,  <36.987740, 36.373501, 40.891872>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185207, 36.210575, 41.553272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.283817, 36.594456, 41.499310>,  <37.342983, 36.824783, 41.466930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.283817, 36.594456, 41.499310>,  <37.185207, 36.210575, 41.553272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.283817, 36.594456, 41.499310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062744, 0.123109, 0.990408,
		0.967104, -0.252620, -0.029867,
		0.246520, 0.959702, -0.134909,
		37.357773, 36.882366, 41.458836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818916, 36.180084, 41.959953>,  <37.185207, 36.210575, 41.553272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818916, 36.180084, 41.959953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.659107, 36.546284, 41.941002>,  <37.563221, 36.766003, 41.929630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.659107, 36.546284, 41.941002>,  <37.818916, 36.180084, 41.959953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.659107, 36.546284, 41.941002> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139353, 0.111737, 0.983919,
		0.906071, 0.386493, -0.172219,
		-0.399520, 0.915499, -0.047383,
		37.539249, 36.820934, 41.926788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.272316, 36.550392, 42.316048>,  <37.818916, 36.180084, 41.959953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.272316, 36.550392, 42.316048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.931759, 36.760155, 42.311420>,  <37.727425, 36.886013, 42.308643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.931759, 36.760155, 42.311420>,  <38.272316, 36.550392, 42.316048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.931759, 36.760155, 42.311420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123682, 0.222144, 0.967137,
		0.509744, 0.821979, -0.253991,
		-0.851389, 0.524407, -0.011573,
		37.676342, 36.917477, 42.307949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457596, 37.238804, 42.673042>,  <38.272316, 36.550392, 42.316048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.457596, 37.238804, 42.673042> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.057663, 37.238297, 42.665791>,  <37.817703, 37.237991, 42.661442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.057663, 37.238297, 42.665791>,  <38.457596, 37.238804, 42.673042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.057663, 37.238297, 42.665791> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017012, 0.415691, 0.909347,
		0.006385, 0.909505, -0.415643,
		-0.999835, -0.001265, -0.018126,
		37.757713, 37.237919, 42.660351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297237, 37.810966, 43.014732>,  <38.457596, 37.238804, 42.673042>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.297237, 37.810966, 43.014732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.968552, 37.585197, 43.046284>,  <37.771339, 37.449738, 43.065212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.968552, 37.585197, 43.046284>,  <38.297237, 37.810966, 43.014732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968552, 37.585197, 43.046284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121338, 0.308494, 0.943456,
		-0.556836, 0.765678, -0.321979,
		-0.821712, -0.564418, 0.078875,
		37.722038, 37.415871, 43.069946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656975, 38.160526, 43.303238>,  <38.297237, 37.810966, 43.014732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656975, 38.160526, 43.303238> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.583450, 37.771706, 43.361652>,  <37.539337, 37.538414, 43.396702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.583450, 37.771706, 43.361652>,  <37.656975, 38.160526, 43.303238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583450, 37.771706, 43.361652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107233, 0.167506, 0.980022,
		-0.977096, 0.164476, -0.135025,
		-0.183807, -0.972054, 0.146032,
		37.528309, 37.480091, 43.405460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.107826, 38.199684, 43.788395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.258953, 37.829361, 43.792934>,  <37.349628, 37.607166, 43.795658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.258953, 37.829361, 43.792934>,  <37.107826, 38.199684, 43.788395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.258953, 37.829361, 43.792934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240636, -0.086352, 0.966767,
		-0.894062, -0.367996, -0.255408,
		0.377821, -0.925809, 0.011349,
		37.372299, 37.551617, 43.796341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479961, 37.797016, 44.185280>,  <37.107826, 38.199684, 43.788395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479961, 37.797016, 44.185280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.832581, 37.609272, 44.205601>,  <37.044151, 37.496624, 44.217793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.832581, 37.609272, 44.205601>,  <36.479961, 37.797016, 44.185280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.832581, 37.609272, 44.205601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155354, -0.186787, 0.970039,
		-0.445809, -0.863024, -0.237578,
		0.881544, -0.469361, 0.050803,
		37.097042, 37.468464, 44.220840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291050, 37.220505, 44.566628>,  <36.479961, 37.797016, 44.185280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291050, 37.220505, 44.566628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.688778, 37.239014, 44.604954>,  <36.927414, 37.250118, 44.627949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.688778, 37.239014, 44.604954>,  <36.291050, 37.220505, 44.566628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.688778, 37.239014, 44.604954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068172, -0.414376, 0.907549,
		0.081695, -0.908929, -0.408869,
		0.994323, 0.046269, 0.095816,
		36.987076, 37.252895, 44.633698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439468, 36.640610, 44.988583>,  <36.291050, 37.220505, 44.566628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439468, 36.640610, 44.988583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.743828, 36.899933, 44.999458>,  <36.926441, 37.055527, 45.005981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.743828, 36.899933, 44.999458>,  <36.439468, 36.640610, 44.988583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.743828, 36.899933, 44.999458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104725, -0.164042, 0.980879,
		0.640370, -0.743497, -0.192712,
		0.760894, 0.648307, 0.027185,
		36.972095, 37.094425, 45.007614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853199, 36.349590, 45.460625>,  <36.439468, 36.640610, 44.988583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853199, 36.349590, 45.460625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.012260, 36.715393, 45.430843>,  <37.107697, 36.934875, 45.412975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.012260, 36.715393, 45.430843>,  <36.853199, 36.349590, 45.460625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012260, 36.715393, 45.430843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025569, 0.070067, 0.997214,
		0.917178, -0.398453, 0.004479,
		0.397657, 0.914508, -0.074452,
		37.131557, 36.989746, 45.408508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365601, 36.290306, 45.911671>,  <36.853199, 36.349590, 45.460625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.365601, 36.290306, 45.911671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.307827, 36.681068, 45.848694>,  <37.273163, 36.915527, 45.810909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.307827, 36.681068, 45.848694>,  <37.365601, 36.290306, 45.911671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307827, 36.681068, 45.848694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035964, 0.164188, 0.985773,
		0.988861, 0.136714, -0.058847,
		-0.144431, 0.976909, -0.157442,
		37.264496, 36.974140, 45.801460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918133, 36.650169, 46.206734>,  <37.365601, 36.290306, 45.911671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918133, 36.650169, 46.206734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.600037, 36.892544, 46.198437>,  <37.409180, 37.037968, 46.193459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.600037, 36.892544, 46.198437>,  <37.918133, 36.650169, 46.206734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600037, 36.892544, 46.198437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103033, 0.168775, 0.980254,
		0.597470, 0.777405, -0.196649,
		-0.795244, 0.605935, -0.020740,
		37.361462, 37.074326, 46.192215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114418, 37.099922, 46.594898>,  <37.918133, 36.650169, 46.206734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.114418, 37.099922, 46.594898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.717102, 37.145786, 46.588943>,  <37.478710, 37.173306, 46.585369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.717102, 37.145786, 46.588943>,  <38.114418, 37.099922, 46.594898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717102, 37.145786, 46.588943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017137, -0.018669, 0.999679,
		0.114343, 0.993230, 0.020509,
		-0.993294, 0.114658, -0.014887,
		37.419113, 37.180183, 46.584476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.164772, 37.602924, 47.041218>,  <38.114418, 37.099922, 46.594898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.164772, 37.602924, 47.041218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.807545, 37.423203, 47.031834>,  <37.593208, 37.315369, 47.026203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.807545, 37.423203, 47.031834>,  <38.164772, 37.602924, 47.041218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.807545, 37.423203, 47.031834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000854, -0.050453, 0.998726,
		-0.449917, 0.891953, 0.044674,
		-0.893070, -0.449305, -0.023461,
		37.539623, 37.288410, 47.024796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770935, 37.862595, 47.482853>,  <38.164772, 37.602924, 47.041218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770935, 37.862595, 47.482853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.575573, 37.515961, 47.441875>,  <37.458355, 37.307980, 47.417290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.575573, 37.515961, 47.441875>,  <37.770935, 37.862595, 47.482853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575573, 37.515961, 47.441875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130108, -0.188408, 0.973434,
		-0.862864, 0.462099, 0.204769,
		-0.488404, -0.866583, -0.102448,
		37.429050, 37.255985, 47.411140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188637, 37.813602, 48.001759>,  <37.770935, 37.862595, 47.482853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188637, 37.813602, 48.001759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.258465, 37.437119, 47.886074>,  <37.300362, 37.211227, 47.816662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.258465, 37.437119, 47.886074>,  <37.188637, 37.813602, 48.001759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.258465, 37.437119, 47.886074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048040, -0.285229, 0.957254,
		-0.983472, -0.181004, -0.004577,
		0.174572, -0.941213, -0.289211,
		37.310837, 37.154755, 47.799313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868931, 37.453583, 48.553112>,  <37.188637, 37.813602, 48.001759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868931, 37.453583, 48.553112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.075047, 37.172779, 48.356476>,  <37.198715, 37.004299, 48.238495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.075047, 37.172779, 48.356476>,  <36.868931, 37.453583, 48.553112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075047, 37.172779, 48.356476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189548, -0.466048, 0.864217,
		-0.835792, -0.538502, -0.107085,
		0.515290, -0.702008, -0.491591,
		37.229633, 36.962177, 48.209000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.550507, 36.773335, 48.766441>,  <36.868931, 37.453583, 48.553112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.550507, 36.773335, 48.766441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.931168, 36.745071, 48.646866>,  <37.159565, 36.728111, 48.575123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.931168, 36.745071, 48.646866>,  <36.550507, 36.773335, 48.766441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931168, 36.745071, 48.646866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171978, -0.683794, 0.709119,
		-0.254517, -0.726245, -0.638583,
		0.951654, -0.070661, -0.298935,
		37.216663, 36.723873, 48.557186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640774, 36.079292, 48.863945>,  <36.550507, 36.773335, 48.766441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640774, 36.079292, 48.863945> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.004444, 36.244408, 48.842014>,  <37.222645, 36.343479, 48.828857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.004444, 36.244408, 48.842014>,  <36.640774, 36.079292, 48.863945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004444, 36.244408, 48.842014> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313771, -0.592543, 0.741917,
		0.273770, -0.691734, -0.668247,
		0.909174, 0.412791, -0.054825,
		37.277195, 36.368244, 48.825565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089725, 35.507950, 48.913063>,  <36.640774, 36.079292, 48.863945>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089725, 35.507950, 48.913063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.316032, 35.823212, 49.009998>,  <37.451817, 36.012367, 49.068157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.316032, 35.823212, 49.009998>,  <37.089725, 35.507950, 48.913063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.316032, 35.823212, 49.009998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276103, -0.458005, 0.844984,
		0.776968, -0.411151, -0.476734,
		0.565763, 0.788153, 0.242336,
		37.485760, 36.059658, 49.082699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727444, 35.247952, 49.054169>,  <37.089725, 35.507950, 48.913063>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727444, 35.247952, 49.054169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.695690, 35.602699, 49.236233>,  <37.676640, 35.815548, 49.345470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.695690, 35.602699, 49.236233>,  <37.727444, 35.247952, 49.054169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.695690, 35.602699, 49.236233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349977, -0.402737, 0.845765,
		0.933389, 0.226433, -0.278412,
		-0.079383, 0.886866, 0.455157,
		37.671875, 35.868759, 49.372780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414307, 35.351185, 49.499733>,  <37.727444, 35.247952, 49.054169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414307, 35.351185, 49.499733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.136860, 35.595470, 49.652531>,  <37.970390, 35.742043, 49.744209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.136860, 35.595470, 49.652531>,  <38.414307, 35.351185, 49.499733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136860, 35.595470, 49.652531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363265, -0.161376, 0.917604,
		0.622038, 0.775234, -0.109917,
		-0.693619, 0.610713, 0.381997,
		37.928776, 35.778683, 49.767128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.798286, 35.580097, 50.064381>,  <38.414307, 35.351185, 49.499733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.798286, 35.580097, 50.064381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.413708, 35.667461, 50.131207>,  <38.182961, 35.719879, 50.171303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.413708, 35.667461, 50.131207>,  <38.798286, 35.580097, 50.064381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413708, 35.667461, 50.131207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132235, -0.165435, 0.977315,
		0.241096, 0.961731, 0.130175,
		-0.961450, 0.218413, 0.167060,
		38.125271, 35.732986, 50.181324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743092, 36.027843, 50.720787>,  <38.798286, 35.580097, 50.064381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743092, 36.027843, 50.720787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.370007, 35.892967, 50.669628>,  <38.146156, 35.812042, 50.638935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.370007, 35.892967, 50.669628>,  <38.743092, 36.027843, 50.720787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370007, 35.892967, 50.669628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039067, -0.258077, 0.965334,
		-0.358507, 0.905373, 0.227538,
		-0.932709, -0.337189, -0.127893,
		38.090195, 35.791809, 50.631260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.323586, 36.320091, 51.298199>,  <38.743092, 36.027843, 50.720787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.323586, 36.320091, 51.298199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.091579, 36.016003, 51.181137>,  <37.952377, 35.833549, 51.110901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.091579, 36.016003, 51.181137>,  <38.323586, 36.320091, 51.298199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091579, 36.016003, 51.181137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292528, -0.140912, 0.945818,
		-0.760271, 0.634196, -0.140656,
		-0.580014, -0.760223, -0.292651,
		37.917576, 35.787937, 51.093342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642231, 36.387699, 51.750149>,  <38.323586, 36.320091, 51.298199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.642231, 36.387699, 51.750149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.681320, 36.012016, 51.618488>,  <37.704773, 35.786606, 51.539494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.681320, 36.012016, 51.618488>,  <37.642231, 36.387699, 51.750149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681320, 36.012016, 51.618488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284992, -0.343289, 0.894948,
		-0.953536, 0.006348, -0.301214,
		0.097722, -0.939209, -0.329147,
		37.710636, 35.730255, 51.519745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.178085, 36.091465, 52.202106>,  <37.642231, 36.387699, 51.750149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.178085, 36.091465, 52.202106> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.379234, 35.782078, 52.047771>,  <37.499924, 35.596447, 51.955170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.379234, 35.782078, 52.047771>,  <37.178085, 36.091465, 52.202106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.379234, 35.782078, 52.047771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215021, -0.544292, 0.810871,
		-0.837191, -0.324798, -0.440019,
		0.502868, -0.773468, -0.385838,
		37.530094, 35.550037, 51.932018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817932, 35.385117, 52.265190>,  <37.178085, 36.091465, 52.202106>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817932, 35.385117, 52.265190> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.215622, 35.342312, 52.268299>,  <37.454235, 35.316631, 52.270164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.215622, 35.342312, 52.268299>,  <36.817932, 35.385117, 52.265190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215622, 35.342312, 52.268299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066368, -0.556502, 0.828191,
		-0.084301, -0.823926, -0.560392,
		0.994228, -0.107010, 0.007769,
		37.513889, 35.310207, 52.270630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899822, 34.849407, 52.787743>,  <36.817932, 35.385117, 52.265190>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899822, 34.849407, 52.787743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.525146, 34.709488, 52.794098>,  <36.300343, 34.625538, 52.797913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.525146, 34.709488, 52.794098>,  <36.899822, 34.849407, 52.787743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525146, 34.709488, 52.794098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154349, 0.371734, -0.915418,
		0.314301, -0.859917, -0.402190,
		-0.936692, -0.349794, 0.015891,
		36.244141, 34.604549, 52.798866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.727180, 34.558434, 52.039944>,  <36.899822, 34.849407, 52.787743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.727180, 34.558434, 52.039944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.371246, 34.622505, 52.210842>,  <36.157684, 34.660946, 52.313381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.371246, 34.622505, 52.210842>,  <36.727180, 34.558434, 52.039944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371246, 34.622505, 52.210842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370083, 0.294341, -0.881137,
		-0.266894, -0.942182, -0.202636,
		-0.889835, 0.160178, 0.427243,
		36.104298, 34.670559, 52.339016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153179, 34.403576, 51.464355>,  <36.727180, 34.558434, 52.039944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.153179, 34.403576, 51.464355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.972889, 34.637966, 51.733719>,  <35.864716, 34.778599, 51.895336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.972889, 34.637966, 51.733719>,  <36.153179, 34.403576, 51.464355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.972889, 34.637966, 51.733719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431670, 0.517241, -0.739001,
		-0.781351, -0.623777, 0.019814,
		-0.450723, 0.585973, 0.673413,
		35.837673, 34.813759, 51.935741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721413, 34.711899, 51.074463>,  <36.153179, 34.403576, 51.464355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.721413, 34.711899, 51.074463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.623905, 34.946712, 51.383259>,  <35.565403, 35.087601, 51.568535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.623905, 34.946712, 51.383259>,  <35.721413, 34.711899, 51.074463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623905, 34.946712, 51.383259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516557, 0.595108, -0.615642,
		-0.820822, -0.548847, 0.158172,
		-0.243764, 0.587037, 0.771988,
		35.550777, 35.122826, 51.614857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967987, 34.762928, 51.109180>,  <35.721413, 34.711899, 51.074463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.967987, 34.762928, 51.109180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.156044, 35.079010, 51.266430>,  <35.268879, 35.268658, 51.360779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.156044, 35.079010, 51.266430>,  <34.967987, 34.762928, 51.109180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156044, 35.079010, 51.266430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478536, 0.602491, -0.638755,
		-0.741602, 0.112177, 0.661394,
		0.470138, 0.790203, 0.393128,
		35.297085, 35.316071, 51.384369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407742, 35.303673, 51.122444>,  <34.967987, 34.762928, 51.109180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407742, 35.303673, 51.122444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.751934, 35.506165, 51.145466>,  <34.958450, 35.627659, 51.159279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.751934, 35.506165, 51.145466>,  <34.407742, 35.303673, 51.122444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.751934, 35.506165, 51.145466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360226, 0.684387, -0.633918,
		-0.360296, 0.524739, 0.771256,
		0.860479, 0.506225, 0.057557,
		35.010078, 35.658031, 51.162731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193699, 36.153408, 51.109112>,  <34.407742, 35.303673, 51.122444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193699, 36.153408, 51.109112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.566589, 36.065865, 50.993839>,  <34.790325, 36.013340, 50.924675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.566589, 36.065865, 50.993839>,  <34.193699, 36.153408, 51.109112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566589, 36.065865, 50.993839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062890, 0.686266, -0.724627,
		0.356360, 0.693643, 0.625993,
		0.932230, -0.218860, -0.288181,
		34.846260, 36.000206, 50.907387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.352558, 36.866161, 50.852974>,  <34.193699, 36.153408, 51.109112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.352558, 36.866161, 50.852974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.619087, 36.603855, 50.710999>,  <34.779003, 36.446472, 50.625813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.619087, 36.603855, 50.710999>,  <34.352558, 36.866161, 50.852974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619087, 36.603855, 50.710999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134349, 0.573798, -0.807903,
		0.733461, 0.490638, 0.470436,
		0.666323, -0.655767, -0.354941,
		34.818985, 36.407124, 50.604515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.958202, 37.224483, 50.476471>,  <34.352558, 36.866161, 50.852974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.958202, 37.224483, 50.476471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.953491, 36.846535, 50.345585>,  <34.950665, 36.619766, 50.267052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.953491, 36.846535, 50.345585>,  <34.958202, 37.224483, 50.476471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.953491, 36.846535, 50.345585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054724, 0.327360, -0.943314,
		0.998432, 0.006801, -0.055562,
		-0.011773, -0.944875, -0.327219,
		34.949959, 36.563072, 50.247417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.374393, 37.173725, 49.794941>,  <34.958202, 37.224483, 50.476471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.374393, 37.173725, 49.794941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.132545, 36.855160, 49.789936>,  <34.987438, 36.664021, 49.786934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.132545, 36.855160, 49.789936>,  <35.374393, 37.173725, 49.794941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.132545, 36.855160, 49.789936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091413, 0.084982, -0.992180,
		0.791253, -0.598747, -0.124185,
		-0.604618, -0.796417, -0.012509,
		34.951160, 36.616234, 49.786182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675564, 36.634331, 49.408932>,  <35.374393, 37.173725, 49.794941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.675564, 36.634331, 49.408932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.282452, 36.565277, 49.382595>,  <35.046585, 36.523846, 49.366791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.282452, 36.565277, 49.382595>,  <35.675564, 36.634331, 49.408932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.282452, 36.565277, 49.382595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068919, -0.011867, -0.997552,
		0.171427, -0.984915, 0.023560,
		-0.982783, -0.172631, -0.065845,
		34.987617, 36.513489, 49.362843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629837, 36.108944, 48.924995>,  <35.675564, 36.634331, 49.408932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.629837, 36.108944, 48.924995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.256821, 36.251514, 48.948082>,  <35.033012, 36.337055, 48.961933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.256821, 36.251514, 48.948082>,  <35.629837, 36.108944, 48.924995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.256821, 36.251514, 48.948082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003822, 0.169595, -0.985506,
		-0.361045, -0.918804, -0.159516,
		-0.932540, 0.356422, 0.057720,
		34.977058, 36.358440, 48.965397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.348610, 35.884918, 48.229725>,  <35.629837, 36.108944, 48.924995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.348610, 35.884918, 48.229725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.090691, 36.160801, 48.361500>,  <34.935940, 36.326332, 48.440563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.090691, 36.160801, 48.361500>,  <35.348610, 35.884918, 48.229725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.090691, 36.160801, 48.361500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022059, 0.414033, -0.909995,
		-0.764031, -0.594034, -0.251755,
		-0.644803, 0.689710, 0.329438,
		34.897251, 36.367714, 48.460331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809566, 35.874989, 47.752102>,  <35.348610, 35.884918, 48.229725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809566, 35.874989, 47.752102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.822998, 36.234314, 47.927330>,  <34.831055, 36.449909, 48.032467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.822998, 36.234314, 47.927330>,  <34.809566, 35.874989, 47.752102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822998, 36.234314, 47.927330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033868, 0.439090, -0.897804,
		-0.998862, 0.015308, 0.045166,
		0.033575, 0.898313, 0.438072,
		34.833069, 36.503807, 48.058750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174648, 36.418606, 47.493263>,  <34.809566, 35.874989, 47.752102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174648, 36.418606, 47.493263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.454391, 36.667774, 47.633476>,  <34.622238, 36.817276, 47.717606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.454391, 36.667774, 47.633476>,  <34.174648, 36.418606, 47.493263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.454391, 36.667774, 47.633476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127387, 0.373942, -0.918662,
		-0.703330, 0.687126, 0.182167,
		0.699356, 0.622917, 0.350535,
		34.664200, 36.854649, 47.738636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913097, 37.060020, 47.443527>,  <34.174648, 36.418606, 47.493263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.913097, 37.060020, 47.443527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.305157, 37.130966, 47.478970>,  <34.540394, 37.173534, 47.500233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.305157, 37.130966, 47.478970>,  <33.913097, 37.060020, 47.443527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305157, 37.130966, 47.478970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009508, 0.488414, -0.872560,
		-0.198038, 0.854396, 0.480405,
		0.980148, 0.177368, 0.088601,
		34.599201, 37.184177, 47.505550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965210, 37.666050, 47.089474>,  <33.913097, 37.060020, 47.443527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965210, 37.666050, 47.089474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.353809, 37.591019, 47.147446>,  <34.586967, 37.545998, 47.182228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.353809, 37.591019, 47.147446>,  <33.965210, 37.666050, 47.089474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.353809, 37.591019, 47.147446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228719, 0.581104, -0.781029,
		0.062286, 0.791917, 0.607444,
		0.971498, -0.187582, 0.144932,
		34.645260, 37.534744, 47.190926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.319519, 38.370167, 47.058468>,  <33.965210, 37.666050, 47.089474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.319519, 38.370167, 47.058468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.565575, 38.068790, 46.965572>,  <34.713207, 37.887966, 46.909836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.565575, 38.068790, 46.965572>,  <34.319519, 38.370167, 47.058468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565575, 38.068790, 46.965572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072242, 0.347186, -0.935010,
		0.785103, 0.558382, 0.267998,
		0.615138, -0.753439, -0.232238,
		34.750114, 37.842758, 46.895901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782356, 38.631248, 46.525383>,  <34.319519, 38.370167, 47.058468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.782356, 38.631248, 46.525383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.830982, 38.235615, 46.492077>,  <34.860157, 37.998234, 46.472095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.830982, 38.235615, 46.492077>,  <34.782356, 38.631248, 46.525383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.830982, 38.235615, 46.492077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049574, 0.077729, -0.995741,
		0.991344, 0.125178, -0.039583,
		0.121568, -0.989085, -0.083262,
		34.867455, 37.938889, 46.467098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346230, 38.551605, 46.107014>,  <34.782356, 38.631248, 46.525383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346230, 38.551605, 46.107014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.123550, 38.219688, 46.091358>,  <34.989944, 38.020538, 46.081963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.123550, 38.219688, 46.091358>,  <35.346230, 38.551605, 46.107014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.123550, 38.219688, 46.091358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069254, 0.000596, -0.997599,
		0.827825, -0.558069, 0.057135,
		-0.556695, -0.829795, -0.039142,
		34.956543, 37.970749, 46.079617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775387, 38.006203, 45.719284>,  <35.346230, 38.551605, 46.107014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.775387, 38.006203, 45.719284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.392925, 37.892696, 45.690292>,  <35.163448, 37.824593, 45.672897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.392925, 37.892696, 45.690292>,  <35.775387, 38.006203, 45.719284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.392925, 37.892696, 45.690292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089697, -0.048157, -0.994804,
		0.278800, -0.957684, 0.071498,
		-0.956151, -0.283765, -0.072476,
		35.106079, 37.807568, 45.668549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.813507, 26.773798, 32.822624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.441677, 26.654074, 32.736546>,  <43.218578, 26.582239, 32.684898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.441677, 26.654074, 32.736546>,  <43.813507, 26.773798, 32.822624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.441677, 26.654074, 32.736546> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356020, 0.880358, 0.313400,
		0.095647, 0.367942, -0.924916,
		-0.929570, -0.299313, -0.215199,
		43.162807, 26.564280, 32.671986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.432388, 27.339989, 32.351887>,  <43.813507, 26.773798, 32.822624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.432388, 27.339989, 32.351887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.122883, 27.129168, 32.492458>,  <42.937180, 27.002674, 32.576801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.122883, 27.129168, 32.492458>,  <43.432388, 27.339989, 32.351887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.122883, 27.129168, 32.492458> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420308, 0.842208, 0.337677,
		-0.473948, 0.113576, -0.873197,
		-0.773766, -0.527054, 0.351426,
		42.890755, 26.971052, 32.597885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.830235, 27.577261, 32.106586>,  <43.432388, 27.339989, 32.351887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.830235, 27.577261, 32.106586> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.710403, 27.390760, 32.439541>,  <42.638504, 27.278860, 32.639313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.710403, 27.390760, 32.439541>,  <42.830235, 27.577261, 32.106586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.710403, 27.390760, 32.439541> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426067, 0.846004, 0.320538,
		-0.853651, -0.258626, -0.452098,
		-0.299577, -0.466252, 0.832384,
		42.620529, 27.250885, 32.689255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.201118, 27.891600, 32.219284>,  <42.830235, 27.577261, 32.106586>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.201118, 27.891600, 32.219284> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.266979, 27.714500, 32.571842>,  <42.306496, 27.608240, 32.783379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.266979, 27.714500, 32.571842>,  <42.201118, 27.891600, 32.219284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.266979, 27.714500, 32.571842> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460926, 0.755485, 0.465606,
		-0.872030, -0.482923, -0.079682,
		0.164654, -0.442750, 0.881398,
		42.316376, 27.581676, 32.836262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.507950, 27.899496, 32.600952>,  <42.201118, 27.891600, 32.219284>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.507950, 27.899496, 32.600952> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.823269, 27.877480, 32.846085>,  <42.012459, 27.864269, 32.993164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.823269, 27.877480, 32.846085>,  <41.507950, 27.899496, 32.600952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.823269, 27.877480, 32.846085> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457212, 0.614120, 0.643284,
		-0.411758, -0.787291, 0.458942,
		0.788297, -0.055044, 0.612828,
		42.059757, 27.860966, 33.029934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.263985, 27.834782, 33.288311>,  <41.507950, 27.899496, 32.600952>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.263985, 27.834782, 33.288311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.628788, 27.998547, 33.298363>,  <41.847668, 28.096806, 33.304394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.628788, 27.998547, 33.298363>,  <41.263985, 27.834782, 33.288311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.628788, 27.998547, 33.298363> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341854, 0.724806, 0.598158,
		0.226681, -0.554111, 0.800985,
		0.912004, 0.409411, 0.025125,
		41.902390, 28.121370, 33.305901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.323593, 28.100307, 33.884022>,  <41.263985, 27.834782, 33.288311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.323593, 28.100307, 33.884022> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.656902, 28.266451, 33.738068>,  <41.856888, 28.366137, 33.650497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.656902, 28.266451, 33.738068>,  <41.323593, 28.100307, 33.884022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.656902, 28.266451, 33.738068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087602, 0.750839, 0.654650,
		0.545881, -0.513536, 0.662039,
		0.833270, 0.415357, -0.364882,
		41.906883, 28.391058, 33.628601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.535229, 28.449390, 34.436947>,  <41.323593, 28.100307, 33.884022>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.535229, 28.449390, 34.436947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.756107, 28.635389, 34.160149>,  <41.888634, 28.746988, 33.994072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.756107, 28.635389, 34.160149>,  <41.535229, 28.449390, 34.436947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.756107, 28.635389, 34.160149> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217360, 0.881605, 0.418960,
		0.804878, -0.080939, 0.587895,
		0.552201, 0.464996, -0.691991,
		41.921768, 28.774889, 33.952549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.091980, 28.918188, 34.815983>,  <41.535229, 28.449390, 34.436947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.091980, 28.918188, 34.815983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.036476, 29.053083, 34.443527>,  <42.003174, 29.134020, 34.220055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.036476, 29.053083, 34.443527>,  <42.091980, 28.918188, 34.815983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.036476, 29.053083, 34.443527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005943, 0.940500, 0.339742,
		0.990309, 0.041607, -0.132504,
		-0.138756, 0.337237, -0.931138,
		41.994850, 29.154255, 34.164185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.550179, 29.455103, 34.780582>,  <42.091980, 28.918188, 34.815983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.550179, 29.455103, 34.780582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.291462, 29.511040, 34.480690>,  <42.136230, 29.544601, 34.300755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.291462, 29.511040, 34.480690>,  <42.550179, 29.455103, 34.780582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.291462, 29.511040, 34.480690> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078442, 0.965635, 0.247783,
		0.758618, 0.219075, -0.613599,
		-0.646796, 0.139841, -0.749733,
		42.097424, 29.552992, 34.255772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.773724, 30.030195, 34.516243>,  <42.550179, 29.455103, 34.780582>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.773724, 30.030195, 34.516243> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.390709, 30.003624, 34.404018>,  <42.160900, 29.987680, 34.336681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.390709, 30.003624, 34.404018>,  <42.773724, 30.030195, 34.516243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.390709, 30.003624, 34.404018> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159533, 0.932628, 0.323657,
		0.240162, 0.354672, -0.903621,
		-0.957534, -0.066428, -0.280564,
		42.103447, 29.983696, 34.319851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.673225, 30.577515, 34.104702>,  <42.773724, 30.030195, 34.516243>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.673225, 30.577515, 34.104702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.319836, 30.475254, 34.261726>,  <42.107800, 30.413897, 34.355942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.319836, 30.475254, 34.261726>,  <42.673225, 30.577515, 34.104702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.319836, 30.475254, 34.261726> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257215, 0.965079, 0.049626,
		-0.391544, -0.057130, -0.918384,
		-0.883478, -0.255653, 0.392565,
		42.054790, 30.398558, 34.379498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.237572, 30.998648, 33.720226>,  <42.673225, 30.577515, 34.104702>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.237572, 30.998648, 33.720226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.000034, 30.856836, 34.009132>,  <41.857513, 30.771749, 34.182476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.000034, 30.856836, 34.009132>,  <42.237572, 30.998648, 33.720226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.000034, 30.856836, 34.009132> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374938, 0.916195, 0.141449,
		-0.711882, -0.186806, -0.676998,
		-0.593839, -0.354528, 0.722264,
		41.821884, 30.750479, 34.225811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.645267, 31.408533, 33.655258>,  <42.237572, 30.998648, 33.720226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.645267, 31.408533, 33.655258> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.597614, 31.272011, 34.028206>,  <41.569023, 31.190098, 34.251976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.597614, 31.272011, 34.028206>,  <41.645267, 31.408533, 33.655258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.597614, 31.272011, 34.028206> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128433, 0.936467, 0.326396,
		-0.984537, -0.080863, -0.155399,
		-0.119133, -0.341307, 0.932371,
		41.561874, 31.169619, 34.307919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.987312, 31.641525, 33.959549>,  <41.645267, 31.408533, 33.655258>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.987312, 31.641525, 33.959549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.217937, 31.549330, 34.273098>,  <41.356312, 31.494013, 34.461227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.217937, 31.549330, 34.273098>,  <40.987312, 31.641525, 33.959549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.217937, 31.549330, 34.273098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295104, 0.835877, 0.462843,
		-0.761898, -0.498181, 0.413916,
		0.576563, -0.230491, 0.783869,
		41.390907, 31.480183, 34.508259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.676983, 31.988665, 34.458256>,  <40.987312, 31.641525, 33.959549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.676983, 31.988665, 34.458256> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.044861, 31.914228, 34.596550>,  <41.265587, 31.869566, 34.679527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.044861, 31.914228, 34.596550>,  <40.676983, 31.988665, 34.458256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.044861, 31.914228, 34.596550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027688, 0.909094, 0.415670,
		-0.391658, -0.372717, 0.841241,
		0.919694, -0.186093, 0.345734,
		41.320770, 31.858400, 34.700272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.669533, 32.180710, 35.180012>,  <40.676983, 31.988665, 34.458256>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.669533, 32.180710, 35.180012> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.050350, 32.206509, 35.060371>,  <41.278839, 32.221989, 34.988586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.050350, 32.206509, 35.060371>,  <40.669533, 32.180710, 35.180012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.050350, 32.206509, 35.060371> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075938, 0.897136, 0.435178,
		0.296398, -0.437020, 0.849212,
		0.952041, 0.064499, -0.299096,
		41.335964, 32.225857, 34.970642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.968422, 32.431301, 35.760231>,  <40.669533, 32.180710, 35.180012>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.968422, 32.431301, 35.760231> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.225533, 32.509560, 35.463970>,  <41.379799, 32.556515, 35.286213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.225533, 32.509560, 35.463970>,  <40.968422, 32.431301, 35.760231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.225533, 32.509560, 35.463970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152995, 0.914573, 0.374364,
		0.750618, -0.353949, 0.557936,
		0.642779, 0.195643, -0.740648,
		41.418365, 32.568253, 35.241776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.470455, 32.925812, 36.080425>,  <40.968422, 32.431301, 35.760231>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.470455, 32.925812, 36.080425> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.547131, 32.971027, 35.690456>,  <41.593136, 32.998158, 35.456474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.547131, 32.971027, 35.690456>,  <41.470455, 32.925812, 36.080425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.547131, 32.971027, 35.690456> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012937, 0.993550, 0.112650,
		0.981370, -0.008981, 0.191918,
		0.191692, 0.113035, -0.974924,
		41.604637, 33.004936, 35.397980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.062351, 33.384094, 36.071465>,  <41.470455, 32.925812, 36.080425>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.062351, 33.384094, 36.071465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.866016, 33.405186, 35.723602>,  <41.748215, 33.417839, 35.514885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.866016, 33.405186, 35.723602>,  <42.062351, 33.384094, 36.071465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.866016, 33.405186, 35.723602> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121227, 0.992591, -0.008239,
		0.862776, -0.109469, -0.493593,
		-0.490838, 0.052728, -0.869654,
		41.718765, 33.421005, 35.462708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.566162, 33.550240, 35.513664>,  <42.062351, 33.384094, 36.071465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.566162, 33.550240, 35.513664> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.200417, 33.661804, 35.396259>,  <41.980968, 33.728741, 35.325817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.200417, 33.661804, 35.396259>,  <42.566162, 33.550240, 35.513664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.200417, 33.661804, 35.396259> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325198, 0.937745, -0.121985,
		0.241215, -0.206988, -0.948141,
		-0.914364, 0.278909, -0.293510,
		41.926105, 33.745476, 35.308205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.666965, 34.064682, 35.097336>,  <42.566162, 33.550240, 35.513664>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.666965, 34.064682, 35.097336> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.306801, 34.109200, 35.265564>,  <42.090702, 34.135910, 35.366501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.306801, 34.109200, 35.265564>,  <42.666965, 34.064682, 35.097336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.306801, 34.109200, 35.265564> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078718, 0.992447, -0.094090,
		-0.427863, -0.051613, -0.902369,
		-0.900409, 0.111291, 0.420568,
		42.036678, 34.142586, 35.391735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.338818, 33.776054, 35.311623>,  <42.666965, 34.064682, 35.097336>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.338818, 33.776054, 35.311623> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.723923, 33.878868, 35.345123>,  <43.954987, 33.940556, 35.365223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.723923, 33.878868, 35.345123>,  <43.338818, 33.776054, 35.311623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.723923, 33.878868, 35.345123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257834, -0.779916, -0.570309,
		-0.081268, 0.570669, -0.817149,
		0.962765, 0.257037, 0.083756,
		44.012753, 33.955978, 35.370251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.605053, 33.855171, 34.656551>,  <43.338818, 33.776054, 35.311623>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.605053, 33.855171, 34.656551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.926311, 33.770714, 34.879398>,  <44.119068, 33.720039, 35.013107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.926311, 33.770714, 34.879398>,  <43.605053, 33.855171, 34.656551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.926311, 33.770714, 34.879398> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324569, -0.629092, -0.706327,
		0.499612, 0.748105, -0.436722,
		0.803146, -0.211143, 0.557114,
		44.167255, 33.707371, 35.046532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.121216, 33.714447, 34.128929>,  <43.605053, 33.855171, 34.656551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.121216, 33.714447, 34.128929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.261787, 33.567875, 34.473537>,  <44.346130, 33.479931, 34.680302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.261787, 33.567875, 34.473537>,  <44.121216, 33.714447, 34.128929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.261787, 33.567875, 34.473537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377217, -0.786800, -0.488522,
		0.856857, 0.496662, -0.138281,
		0.351430, -0.366432, 0.861525,
		44.367218, 33.457947, 34.731995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.743641, 33.543068, 33.945087>,  <44.121216, 33.714447, 34.128929>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.743641, 33.543068, 33.945087> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.664364, 33.323452, 34.269871>,  <44.616798, 33.191681, 34.464741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.664364, 33.323452, 34.269871>,  <44.743641, 33.543068, 33.945087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.664364, 33.323452, 34.269871> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385484, -0.805296, -0.450444,
		0.901178, 0.223722, 0.371250,
		-0.198191, -0.549042, 0.811957,
		44.604908, 33.158741, 34.513458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.410122, 33.268112, 34.109653>,  <44.743641, 33.543068, 33.945087>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.410122, 33.268112, 34.109653> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.133507, 33.035389, 34.280895>,  <44.967537, 32.895756, 34.383640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.133507, 33.035389, 34.280895>,  <45.410122, 33.268112, 34.109653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.133507, 33.035389, 34.280895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356377, -0.790315, -0.498394,
		0.628312, -0.192089, 0.753874,
		-0.691534, -0.581811, 0.428108,
		44.926048, 32.860847, 34.409328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.825771, 32.639938, 34.337845>,  <45.410122, 33.268112, 34.109653>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.825771, 32.639938, 34.337845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.440468, 32.532677, 34.343765>,  <45.209286, 32.468319, 34.347317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.440468, 32.532677, 34.343765>,  <45.825771, 32.639938, 34.337845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.440468, 32.532677, 34.343765> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246908, -0.905931, -0.343986,
		0.105652, -0.327693, 0.938858,
		-0.963262, -0.268155, 0.014804,
		45.151489, 32.452229, 34.348206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.839550, 32.055309, 34.781166>,  <45.825771, 32.639938, 34.337845>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.839550, 32.055309, 34.781166> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.500835, 32.041176, 34.568863>,  <45.297607, 32.032696, 34.441483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.500835, 32.041176, 34.568863>,  <45.839550, 32.055309, 34.781166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.500835, 32.041176, 34.568863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212267, -0.937351, -0.276253,
		-0.487740, -0.346589, 0.801240,
		-0.846790, -0.035337, -0.530753,
		45.246799, 32.030575, 34.409637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.487171, 31.465502, 34.910370>,  <45.839550, 32.055309, 34.781166>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.487171, 31.465502, 34.910370> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.369850, 31.579853, 34.545460>,  <45.299458, 31.648464, 34.326515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.369850, 31.579853, 34.545460>,  <45.487171, 31.465502, 34.910370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.369850, 31.579853, 34.545460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227188, -0.906066, -0.356974,
		-0.928635, -0.311958, 0.200798,
		-0.293297, 0.285880, -0.912277,
		45.281860, 31.665617, 34.271778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.087578, 30.859671, 34.648327>,  <45.487171, 31.465502, 34.910370>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.087578, 30.859671, 34.648327> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.172272, 31.071941, 34.320045>,  <45.223087, 31.199303, 34.123077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.172272, 31.071941, 34.320045>,  <45.087578, 30.859671, 34.648327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.172272, 31.071941, 34.320045> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107096, -0.847283, -0.520232,
		-0.971442, 0.022255, -0.236229,
		0.211731, 0.530675, -0.820703,
		45.235790, 31.231144, 34.073833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.698704, 30.564541, 34.137630>,  <45.087578, 30.859671, 34.648327>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.698704, 30.564541, 34.137630> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.973629, 30.765997, 33.928272>,  <45.138584, 30.886869, 33.802658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.973629, 30.765997, 33.928272>,  <44.698704, 30.564541, 34.137630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.973629, 30.765997, 33.928272> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104820, -0.781808, -0.614646,
		-0.718757, 0.367592, -0.590140,
		0.687315, 0.503639, -0.523398,
		45.179825, 30.917089, 33.771252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.438259, 30.618410, 33.451874>,  <44.698704, 30.564541, 34.137630>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.438259, 30.618410, 33.451874> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.836880, 30.645725, 33.432991>,  <45.076050, 30.662113, 33.421661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.836880, 30.645725, 33.432991>,  <44.438259, 30.618410, 33.451874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.836880, 30.645725, 33.432991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018012, -0.732951, -0.680042,
		-0.081036, 0.676845, -0.731651,
		0.996548, 0.068286, -0.047204,
		45.135845, 30.666212, 33.418831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.664684, 30.649197, 32.839191>,  <44.438259, 30.618410, 33.451874>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.664684, 30.649197, 32.839191> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.996525, 30.496853, 33.002510>,  <45.195629, 30.405447, 33.100502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.996525, 30.496853, 33.002510>,  <44.664684, 30.649197, 32.839191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.996525, 30.496853, 33.002510> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009001, -0.722028, -0.691806,
		0.558281, 0.577599, -0.595568,
		0.829603, -0.380862, 0.408293,
		45.245407, 30.382595, 33.124996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.071079, 30.346703, 32.306915>,  <44.664684, 30.649197, 32.839191>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.071079, 30.346703, 32.306915> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.270466, 30.187931, 32.615196>,  <45.390099, 30.092669, 32.800163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.270466, 30.187931, 32.615196>,  <45.071079, 30.346703, 32.306915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.270466, 30.187931, 32.615196> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186284, -0.819209, -0.542397,
		0.846657, 0.413936, -0.334407,
		0.498467, -0.396929, 0.770699,
		45.420006, 30.068851, 32.846405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.633247, 30.089436, 32.029461>,  <45.071079, 30.346703, 32.306915>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.633247, 30.089436, 32.029461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.597454, 29.877523, 32.366821>,  <45.575977, 29.750376, 32.569237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.597454, 29.877523, 32.366821>,  <45.633247, 30.089436, 32.029461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.597454, 29.877523, 32.366821> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278557, -0.826317, -0.489495,
		0.956242, 0.191135, 0.221513,
		-0.089481, -0.529780, 0.843401,
		45.570610, 29.718590, 32.619843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.107841, 29.472704, 31.993540>,  <45.633247, 30.089436, 32.029461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.107841, 29.472704, 31.993540> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.885162, 29.355196, 32.304356>,  <45.751556, 29.284691, 32.490845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.885162, 29.355196, 32.304356>,  <46.107841, 29.472704, 31.993540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.885162, 29.355196, 32.304356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015088, -0.938806, -0.344116,
		0.830578, -0.179845, 0.527064,
		-0.556698, -0.293768, 0.777038,
		45.718151, 29.267065, 32.537468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.445724, 28.917522, 32.265114>,  <46.107841, 29.472704, 31.993540>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.445724, 28.917522, 32.265114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.070049, 28.879486, 32.397102>,  <45.844643, 28.856665, 32.476295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.070049, 28.879486, 32.397102>,  <46.445724, 28.917522, 32.265114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.070049, 28.879486, 32.397102> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068909, -0.889165, -0.452369,
		0.336412, -0.447598, 0.828543,
		-0.939190, -0.095089, 0.329969,
		45.788292, 28.850960, 32.496094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.405479, 28.187782, 32.628014>,  <46.445724, 28.917522, 32.265114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.405479, 28.187782, 32.628014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.037067, 28.308643, 32.529701>,  <45.816021, 28.381159, 32.470715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.037067, 28.308643, 32.529701>,  <46.405479, 28.187782, 32.628014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.037067, 28.308643, 32.529701> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148519, -0.855802, -0.495525,
		-0.360062, -0.419891, 0.833095,
		-0.921031, 0.302150, -0.245780,
		45.760757, 28.399288, 32.455967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.899227, 27.615726, 32.871624>,  <46.405479, 28.187782, 32.628014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.899227, 27.615726, 32.871624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.699947, 27.838358, 32.605686>,  <45.580379, 27.971937, 32.446125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.699947, 27.838358, 32.605686>,  <45.899227, 27.615726, 32.871624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.699947, 27.838358, 32.605686> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286877, -0.829400, -0.479371,
		-0.818225, -0.048099, 0.572882,
		-0.498206, 0.556580, -0.664838,
		45.550488, 28.005333, 32.406235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.229511, 27.441879, 32.948170>,  <45.899227, 27.615726, 32.871624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.229511, 27.441879, 32.948170> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.243584, 27.598122, 32.580215>,  <45.252026, 27.691868, 32.359444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.243584, 27.598122, 32.580215>,  <45.229511, 27.441879, 32.948170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.243584, 27.598122, 32.580215> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462882, -0.809402, -0.361397,
		-0.885722, 0.438513, 0.152329,
		0.035182, 0.390608, -0.919885,
		45.254139, 27.715303, 32.304249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.656929, 27.130152, 32.709812>,  <45.229511, 27.441879, 32.948170>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.656929, 27.130152, 32.709812> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.861153, 27.267572, 32.394520>,  <44.983685, 27.350025, 32.205345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.861153, 27.267572, 32.394520>,  <44.656929, 27.130152, 32.709812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.861153, 27.267572, 32.394520> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344608, -0.758112, -0.553635,
		-0.787768, 0.554292, -0.268669,
		0.510556, 0.343550, -0.788229,
		45.014320, 27.370638, 32.158051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.262905, 37.876114, 41.237663> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.982632, 37.597340, 41.176575>,  <37.814468, 37.430077, 41.139923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.982632, 37.597340, 41.176575>,  <38.262905, 37.876114, 41.237663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.982632, 37.597340, 41.176575> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489059, -0.313311, -0.814038,
		0.519483, -0.645072, 0.560375,
		-0.700684, -0.696935, -0.152718,
		37.772427, 37.388260, 41.130760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634537, 37.361984, 40.938370>,  <38.262905, 37.876114, 41.237663>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.634537, 37.361984, 40.938370> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248070, 37.279476, 40.876427>,  <38.016190, 37.229973, 40.839260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248070, 37.279476, 40.876427>,  <38.634537, 37.361984, 40.938370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248070, 37.279476, 40.876427> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243647, -0.532822, -0.810393,
		0.084643, -0.820704, 0.565049,
		-0.966164, -0.206267, -0.154862,
		37.958221, 37.217598, 40.829967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605206, 36.594154, 40.856926>,  <38.634537, 37.361984, 40.938370>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.605206, 36.594154, 40.856926> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296513, 36.773529, 40.676559>,  <38.111298, 36.881153, 40.568340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296513, 36.773529, 40.676559>,  <38.605206, 36.594154, 40.856926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296513, 36.773529, 40.676559> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247781, -0.440991, -0.862631,
		-0.585687, -0.777452, 0.229215,
		-0.771735, 0.448436, -0.450920,
		38.064991, 36.908058, 40.541283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348656, 36.121666, 40.390942>,  <38.605206, 36.594154, 40.856926>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348656, 36.121666, 40.390942> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195454, 36.464199, 40.252377>,  <38.103531, 36.669720, 40.169239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195454, 36.464199, 40.252377>,  <38.348656, 36.121666, 40.390942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.195454, 36.464199, 40.252377> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073099, -0.345732, -0.935482,
		-0.920849, -0.383618, 0.069820,
		-0.383006, 0.856333, -0.346409,
		38.080551, 36.721100, 40.148453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815323, 35.903870, 40.088326>,  <38.348656, 36.121666, 40.390942>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.815323, 35.903870, 40.088326> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.939144, 36.259487, 39.953400>,  <38.013439, 36.472858, 39.872444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.939144, 36.259487, 39.953400>,  <37.815323, 35.903870, 40.088326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939144, 36.259487, 39.953400> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098766, -0.382880, -0.918503,
		-0.945738, 0.251012, -0.206329,
		0.309555, 0.889042, -0.337313,
		38.032009, 36.526199, 39.852207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436768, 35.901474, 39.435627>,  <37.815323, 35.903870, 40.088326>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.436768, 35.901474, 39.435627> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698460, 36.203861, 39.426643>,  <37.855473, 36.385292, 39.421253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698460, 36.203861, 39.426643>,  <37.436768, 35.901474, 39.435627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698460, 36.203861, 39.426643> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143970, -0.153634, -0.977583,
		-0.742469, 0.636329, -0.209347,
		0.654227, 0.755965, -0.022456,
		37.894730, 36.430649, 39.419907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218544, 36.393124, 38.871273>,  <37.436768, 35.901474, 39.435627>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218544, 36.393124, 38.871273> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612732, 36.445438, 38.914612>,  <37.849247, 36.476826, 38.940617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612732, 36.445438, 38.914612>,  <37.218544, 36.393124, 38.871273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.612732, 36.445438, 38.914612> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125759, -0.133192, -0.983079,
		-0.114143, 0.982423, -0.147704,
		0.985473, 0.130787, 0.108346,
		37.908375, 36.484673, 38.947117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402348, 36.955669, 38.522381>,  <37.218544, 36.393124, 38.871273>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.402348, 36.955669, 38.522381> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741394, 36.747906, 38.565762>,  <37.944820, 36.623249, 38.591789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741394, 36.747906, 38.565762>,  <37.402348, 36.955669, 38.522381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741394, 36.747906, 38.565762> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137996, 0.018421, -0.990261,
		0.512350, 0.854329, 0.087290,
		0.847617, -0.519406, 0.108456,
		37.995678, 36.592083, 38.598297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915131, 37.264736, 38.060627>,  <37.402348, 36.955669, 38.522381>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915131, 37.264736, 38.060627> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056774, 36.898994, 38.139183>,  <38.141762, 36.679550, 38.186317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056774, 36.898994, 38.139183>,  <37.915131, 37.264736, 38.060627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056774, 36.898994, 38.139183> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213264, -0.125516, -0.968899,
		0.910563, 0.384980, 0.150551,
		0.354110, -0.914350, 0.196392,
		38.163006, 36.624691, 38.198101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.518730, 37.320530, 37.719833>,  <37.915131, 37.264736, 38.060627>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.518730, 37.320530, 37.719833> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412220, 36.939384, 37.777996>,  <38.348312, 36.710697, 37.812893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412220, 36.939384, 37.777996>,  <38.518730, 37.320530, 37.719833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.412220, 36.939384, 37.777996> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071588, -0.169984, -0.982843,
		0.961235, -0.251298, 0.113477,
		-0.266275, -0.952867, 0.145404,
		38.332336, 36.653526, 37.821617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935425, 37.025669, 37.299068>,  <38.518730, 37.320530, 37.719833>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.935425, 37.025669, 37.299068> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656300, 36.744598, 37.354637>,  <38.488823, 36.575958, 37.387978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656300, 36.744598, 37.354637>,  <38.935425, 37.025669, 37.299068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656300, 36.744598, 37.354637> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009290, -0.185053, -0.982685,
		0.716215, -0.687025, 0.122605,
		-0.697817, -0.702675, 0.138920,
		38.446953, 36.533794, 37.396313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.172134, 36.475933, 37.045616>,  <38.935425, 37.025669, 37.299068>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.172134, 36.475933, 37.045616> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775166, 36.429981, 37.028160>,  <38.536983, 36.402409, 37.017685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775166, 36.429981, 37.028160>,  <39.172134, 36.475933, 37.045616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.775166, 36.429981, 37.028160> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066289, -0.201399, -0.977264,
		0.103478, -0.972749, 0.207487,
		-0.992421, -0.114879, -0.043642,
		38.477440, 36.395519, 37.015068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043232, 35.786156, 36.858536>,  <39.172134, 36.475933, 37.045616>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.043232, 35.786156, 36.858536> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734821, 36.022533, 36.763622>,  <38.549774, 36.164360, 36.706673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734821, 36.022533, 36.763622>,  <39.043232, 35.786156, 36.858536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734821, 36.022533, 36.763622> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071991, -0.451111, -0.889559,
		-0.632726, -0.668788, 0.390360,
		-0.771022, 0.590949, -0.237283,
		38.503513, 36.199818, 36.692436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.986671, 35.366661, 36.187199>,  <39.043232, 35.786156, 36.858536>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.986671, 35.366661, 36.187199> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806568, 35.048462, 36.024990>,  <38.698505, 34.857544, 35.927666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806568, 35.048462, 36.024990>,  <38.986671, 35.366661, 36.187199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.806568, 35.048462, 36.024990> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240339, -0.329423, 0.913082,
		-0.859942, 0.508589, -0.042863,
		-0.450263, -0.795499, -0.405518,
		38.671490, 34.809811, 35.903336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238907, 35.232079, 36.378799>,  <38.986671, 35.366661, 36.187199>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.238907, 35.232079, 36.378799> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340717, 34.863056, 36.262791>,  <38.401802, 34.641644, 36.193184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340717, 34.863056, 36.262791>,  <38.238907, 35.232079, 36.378799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.340717, 34.863056, 36.262791> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438471, -0.377395, 0.815669,
		-0.861951, -0.080441, -0.500569,
		0.254526, -0.922552, -0.290025,
		38.417076, 34.586292, 36.175785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643867, 34.833542, 36.397736>,  <38.238907, 35.232079, 36.378799>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.643867, 34.833542, 36.397736> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.957771, 34.587799, 36.430515>,  <38.146114, 34.440353, 36.450184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.957771, 34.587799, 36.430515>,  <37.643867, 34.833542, 36.397736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.957771, 34.587799, 36.430515> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473513, -0.508964, 0.718848,
		-0.399918, -0.602929, -0.690320,
		0.784762, -0.614355, 0.081951,
		38.193199, 34.403492, 36.455101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422604, 34.034508, 36.269852>,  <37.643867, 34.833542, 36.397736>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422604, 34.034508, 36.269852> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756500, 34.038223, 36.490078>,  <37.956837, 34.040455, 36.622211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756500, 34.038223, 36.490078>,  <37.422604, 34.034508, 36.269852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.756500, 34.038223, 36.490078> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430002, -0.613554, 0.662306,
		0.343956, -0.789598, -0.508163,
		0.834741, 0.009293, 0.550564,
		38.006924, 34.041012, 36.655247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383091, 33.385197, 36.584156>,  <37.422604, 34.034508, 36.269852>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.383091, 33.385197, 36.584156> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668777, 33.561501, 36.801643>,  <37.840187, 33.667282, 36.932137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668777, 33.561501, 36.801643>,  <37.383091, 33.385197, 36.584156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.668777, 33.561501, 36.801643> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257605, -0.556764, 0.789718,
		0.650798, -0.704092, -0.284107,
		0.714214, 0.440759, 0.543718,
		37.883041, 33.693729, 36.964760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710850, 32.859474, 36.890041>,  <37.383091, 33.385197, 36.584156>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710850, 32.859474, 36.890041> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800426, 33.153099, 37.146481>,  <37.854172, 33.329273, 37.300343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800426, 33.153099, 37.146481>,  <37.710850, 32.859474, 36.890041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800426, 33.153099, 37.146481> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204118, -0.607888, 0.767338,
		0.952987, -0.302701, 0.013701,
		0.223945, 0.734060, 0.641097,
		37.867611, 33.373318, 37.338810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.243198, 32.543854, 37.431568>,  <37.710850, 32.859474, 36.890041>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.243198, 32.543854, 37.431568> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105961, 32.883663, 37.591869>,  <38.023617, 33.087547, 37.688049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105961, 32.883663, 37.591869>,  <38.243198, 32.543854, 37.431568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105961, 32.883663, 37.591869> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047647, -0.441840, 0.895828,
		0.938092, 0.288258, 0.192070,
		-0.343093, 0.849520, 0.400752,
		38.003033, 33.138519, 37.712093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650627, 32.778496, 37.989204>,  <38.243198, 32.543854, 37.431568>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.650627, 32.778496, 37.989204> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281013, 32.919052, 38.049454>,  <38.059246, 33.003387, 38.085606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281013, 32.919052, 38.049454>,  <38.650627, 32.778496, 37.989204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.281013, 32.919052, 38.049454> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002036, -0.398500, 0.917166,
		0.382311, 0.847184, 0.368942,
		-0.924031, 0.351394, 0.150626,
		38.003803, 33.024471, 38.094643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781113, 32.846153, 38.694122>,  <38.650627, 32.778496, 37.989204>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.781113, 32.846153, 38.694122> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.390324, 32.905357, 38.632641>,  <38.155849, 32.940880, 38.595753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.390324, 32.905357, 38.632641>,  <38.781113, 32.846153, 38.694122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.390324, 32.905357, 38.632641> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187467, -0.251282, 0.949586,
		0.101926, 0.956530, 0.273242,
		-0.976968, 0.148012, -0.153706,
		38.097233, 32.949760, 38.586529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512531, 33.374985, 39.111900>,  <38.781113, 32.846153, 38.694122>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512531, 33.374985, 39.111900> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186085, 33.157032, 39.034904>,  <37.990215, 33.026260, 38.988705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186085, 33.157032, 39.034904>,  <38.512531, 33.374985, 39.111900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186085, 33.157032, 39.034904> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201971, -0.043145, 0.978441,
		-0.541440, 0.837402, -0.074839,
		-0.816119, -0.544882, -0.192491,
		37.941250, 32.993568, 38.977158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998013, 33.698391, 39.403397>,  <38.512531, 33.374985, 39.111900>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998013, 33.698391, 39.403397> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861050, 33.323597, 39.375637>,  <37.778873, 33.098721, 39.358982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861050, 33.323597, 39.375637>,  <37.998013, 33.698391, 39.403397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.861050, 33.323597, 39.375637> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234221, 0.013593, 0.972088,
		-0.909890, 0.349102, -0.224117,
		-0.342404, -0.936986, -0.069399,
		37.758327, 33.042500, 39.354816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376820, 33.771370, 39.751797>,  <37.998013, 33.698391, 39.403397>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.376820, 33.771370, 39.751797> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483318, 33.386002, 39.739548>,  <37.547218, 33.154781, 39.732197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483318, 33.386002, 39.739548>,  <37.376820, 33.771370, 39.751797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.483318, 33.386002, 39.739548> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060890, -0.048519, 0.996965,
		-0.961980, -0.263574, -0.071580,
		0.266247, -0.963418, -0.030625,
		37.563194, 33.096977, 39.730362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989716, 33.481174, 40.198414>,  <37.376820, 33.771370, 39.751797>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.989716, 33.481174, 40.198414> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.288338, 33.219299, 40.151020>,  <37.467510, 33.062176, 40.122581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.288338, 33.219299, 40.151020>,  <36.989716, 33.481174, 40.198414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.288338, 33.219299, 40.151020> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036333, -0.137706, 0.989807,
		-0.664329, -0.743252, -0.079018,
		0.746557, -0.654686, -0.118487,
		37.512306, 33.022892, 40.115475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826469, 32.983803, 40.666409>,  <36.989716, 33.481174, 40.198414>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.826469, 32.983803, 40.666409> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207470, 32.895695, 40.582298>,  <37.436069, 32.842831, 40.531830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207470, 32.895695, 40.582298>,  <36.826469, 32.983803, 40.666409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207470, 32.895695, 40.582298> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167994, -0.195869, 0.966133,
		-0.253996, -0.955572, -0.149563,
		0.952504, -0.220268, -0.210280,
		37.493221, 32.829617, 40.519215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965084, 32.332039, 40.885944>,  <36.826469, 32.983803, 40.666409>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.965084, 32.332039, 40.885944> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329689, 32.495586, 40.903664>,  <37.548454, 32.593716, 40.914295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329689, 32.495586, 40.903664>,  <36.965084, 32.332039, 40.885944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329689, 32.495586, 40.903664> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081605, -0.285395, 0.954930,
		0.403085, -0.866819, -0.293508,
		0.911517, 0.408869, 0.044301,
		37.603146, 32.618248, 40.916954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614040, 31.631147, 41.081253>,  <36.965084, 32.332039, 40.885944>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614040, 31.631147, 41.081253> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.236828, 31.720957, 41.179466>,  <36.010502, 31.774841, 41.238396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.236828, 31.720957, 41.179466>,  <36.614040, 31.631147, 41.081253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.236828, 31.720957, 41.179466> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292872, -0.210017, -0.932802,
		-0.157863, -0.951570, 0.263807,
		-0.943030, 0.224516, 0.245534,
		35.953918, 31.788313, 41.253124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246807, 31.097811, 40.875275>,  <36.614040, 31.631147, 41.081253>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.246807, 31.097811, 40.875275> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989803, 31.403753, 40.893925>,  <35.835602, 31.587318, 40.905113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989803, 31.403753, 40.893925>,  <36.246807, 31.097811, 40.875275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.989803, 31.403753, 40.893925> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353585, -0.241943, -0.903571,
		-0.679823, -0.597039, 0.425893,
		-0.642509, 0.764858, 0.046626,
		35.797050, 31.633211, 40.907913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596157, 30.811975, 40.568344>,  <36.246807, 31.097811, 40.875275>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596157, 30.811975, 40.568344> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.603397, 31.211369, 40.547558>,  <35.607742, 31.451004, 40.535084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.603397, 31.211369, 40.547558>,  <35.596157, 30.811975, 40.568344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603397, 31.211369, 40.547558> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457168, -0.037961, -0.888570,
		-0.889196, 0.039841, 0.455788,
		0.018099, 0.998485, -0.051969,
		35.608826, 31.510914, 40.531967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002682, 30.999424, 40.315670>,  <35.596157, 30.811975, 40.568344>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.002682, 30.999424, 40.315670> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193024, 31.345270, 40.251171>,  <35.307228, 31.552778, 40.212471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193024, 31.345270, 40.251171>,  <35.002682, 30.999424, 40.315670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.193024, 31.345270, 40.251171> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337060, 0.009937, -0.941431,
		-0.812373, 0.502337, 0.296156,
		0.475858, 0.864615, -0.161245,
		35.335781, 31.604654, 40.202797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585300, 31.433746, 39.812042>,  <35.002682, 30.999424, 40.315670>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.585300, 31.433746, 39.812042> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.958797, 31.574743, 39.787136>,  <35.182896, 31.659342, 39.772194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.958797, 31.574743, 39.787136>,  <34.585300, 31.433746, 39.812042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.958797, 31.574743, 39.787136> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087741, 0.056758, -0.994525,
		-0.347029, 0.934092, 0.083926,
		0.933741, 0.352493, -0.062261,
		35.238918, 31.680490, 39.768459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.458920, 31.958084, 39.399956>,  <34.585300, 31.433746, 39.812042>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.458920, 31.958084, 39.399956> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853065, 31.903496, 39.359100>,  <35.089554, 31.870743, 39.334587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853065, 31.903496, 39.359100>,  <34.458920, 31.958084, 39.399956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.853065, 31.903496, 39.359100> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091767, 0.080266, -0.992540,
		0.143653, 0.987387, 0.066568,
		0.985364, -0.136472, -0.102140,
		35.148674, 31.862555, 39.328457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.635708, 32.435570, 38.925613>,  <34.458920, 31.958084, 39.399956>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.635708, 32.435570, 38.925613> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.923367, 32.157925, 38.938519>,  <35.095963, 31.991337, 38.946262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.923367, 32.157925, 38.938519>,  <34.635708, 32.435570, 38.925613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923367, 32.157925, 38.938519> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025276, -0.072531, -0.997046,
		0.694403, 0.716202, -0.069704,
		0.719142, -0.694113, 0.032263,
		35.139111, 31.949690, 38.948196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097176, 32.746563, 38.525734>,  <34.635708, 32.435570, 38.925613>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.097176, 32.746563, 38.525734> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.175030, 32.354439, 38.539036>,  <35.221745, 32.119164, 38.547016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.175030, 32.354439, 38.539036>,  <35.097176, 32.746563, 38.525734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175030, 32.354439, 38.539036> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014184, -0.036710, -0.999225,
		0.980772, 0.194016, -0.021050,
		0.194639, -0.980311, 0.033252,
		35.233421, 32.060345, 38.549011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615730, 32.749031, 37.898430>,  <35.097176, 32.746563, 38.525734>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615730, 32.749031, 37.898430> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.459431, 32.392033, 37.988560>,  <35.365650, 32.177834, 38.042637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.459431, 32.392033, 37.988560>,  <35.615730, 32.749031, 37.898430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459431, 32.392033, 37.988560> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033600, -0.230791, -0.972423,
		0.919883, -0.387545, 0.060194,
		-0.390750, -0.892493, 0.225322,
		35.342205, 32.124283, 38.056156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951084, 32.176491, 37.456856>,  <35.615730, 32.749031, 37.898430>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.951084, 32.176491, 37.456856> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.599949, 32.023750, 37.572506>,  <35.389267, 31.932106, 37.641895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.599949, 32.023750, 37.572506>,  <35.951084, 32.176491, 37.456856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.599949, 32.023750, 37.572506> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186497, -0.283493, -0.940665,
		0.441161, -0.879670, 0.177646,
		-0.877836, -0.381854, 0.289122,
		35.336597, 31.909195, 37.659241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926342, 31.565012, 37.062618>,  <35.951084, 32.176491, 37.456856>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926342, 31.565012, 37.062618> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.560314, 31.671186, 37.184067>,  <35.340698, 31.734892, 37.256935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.560314, 31.671186, 37.184067>,  <35.926342, 31.565012, 37.062618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.560314, 31.671186, 37.184067> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373821, -0.275766, -0.885557,
		-0.151330, -0.923849, 0.351572,
		-0.915072, 0.265436, 0.303622,
		35.285793, 31.750818, 37.275154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563122, 31.050428, 36.792362>,  <35.926342, 31.565012, 37.062618>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563122, 31.050428, 36.792362> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293922, 31.330097, 36.888882>,  <35.132401, 31.497898, 36.946793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293922, 31.330097, 36.888882>,  <35.563122, 31.050428, 36.792362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.293922, 31.330097, 36.888882> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531703, -0.230540, -0.814950,
		-0.514161, -0.676763, 0.526906,
		-0.673001, 0.699173, 0.241302,
		35.092022, 31.539848, 36.961273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.254459, 31.010900, 45.064953> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.013645, 31.328604, 45.032207>,  <35.869156, 31.519226, 45.012558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.013645, 31.328604, 45.032207>,  <36.254459, 31.010900, 45.064953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013645, 31.328604, 45.032207> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016142, -0.114615, -0.993279,
		-0.798305, -0.596669, 0.081824,
		-0.602037, 0.794260, -0.081867,
		35.833035, 31.566881, 45.007648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668011, 30.762896, 44.694427>,  <36.254459, 31.010900, 45.064953>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668011, 30.762896, 44.694427> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.705074, 31.159094, 44.653767>,  <35.727314, 31.396812, 44.629372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.705074, 31.159094, 44.653767>,  <35.668011, 30.762896, 44.694427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705074, 31.159094, 44.653767> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151439, -0.086880, -0.984641,
		-0.984114, 0.106629, 0.141949,
		0.092659, 0.990496, -0.101648,
		35.732872, 31.456244, 44.623272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091225, 30.943754, 44.304653>,  <35.668011, 30.762896, 44.694427>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091225, 30.943754, 44.304653> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.369049, 31.226461, 44.250893>,  <35.535744, 31.396086, 44.218636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.369049, 31.226461, 44.250893>,  <35.091225, 30.943754, 44.304653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369049, 31.226461, 44.250893> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089430, -0.100553, -0.990904,
		-0.713854, 0.700263, -0.006634,
		0.694561, 0.706767, -0.134405,
		35.577419, 31.438492, 44.210571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.745884, 31.390011, 43.819363>,  <35.091225, 30.943754, 44.304653>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.745884, 31.390011, 43.819363> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.115616, 31.538900, 43.785728>,  <35.337456, 31.628235, 43.765549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.115616, 31.538900, 43.785728>,  <34.745884, 31.390011, 43.819363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115616, 31.538900, 43.785728> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156493, 0.168786, -0.973150,
		-0.348040, 0.912666, 0.214264,
		0.924326, 0.372226, -0.084081,
		35.392914, 31.650568, 43.760506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763988, 32.034523, 43.453602>,  <34.745884, 31.390011, 43.819363>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763988, 32.034523, 43.453602> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.125725, 31.869692, 43.409130>,  <35.342766, 31.770792, 43.382446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.125725, 31.869692, 43.409130>,  <34.763988, 32.034523, 43.453602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125725, 31.869692, 43.409130> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008645, 0.278118, -0.960508,
		0.426726, 0.867664, 0.255075,
		0.904340, -0.412079, -0.111179,
		35.397026, 31.746069, 43.375778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107895, 32.471951, 42.955128>,  <34.763988, 32.034523, 43.453602>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107895, 32.471951, 42.955128> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.358955, 32.160717, 42.945015>,  <35.509590, 31.973976, 42.938946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.358955, 32.160717, 42.945015>,  <35.107895, 32.471951, 42.955128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.358955, 32.160717, 42.945015> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046807, -0.005303, -0.998890,
		0.777086, 0.628139, -0.039749,
		0.627652, -0.778083, -0.025281,
		35.547253, 31.927292, 42.937431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721684, 32.710991, 42.602947>,  <35.107895, 32.471951, 42.955128>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.721684, 32.710991, 42.602947> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.714119, 32.311848, 42.577869>,  <35.709579, 32.072361, 42.562824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.714119, 32.311848, 42.577869>,  <35.721684, 32.710991, 42.602947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714119, 32.311848, 42.577869> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086806, 0.060830, -0.994366,
		0.996046, -0.024247, 0.085469,
		-0.018911, -0.997854, -0.062695,
		35.708447, 32.012493, 42.559059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219894, 32.569771, 42.075874>,  <35.721684, 32.710991, 42.602947>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219894, 32.569771, 42.075874> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.045151, 32.210587, 42.097126>,  <35.940304, 31.995077, 42.109879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.045151, 32.210587, 42.097126>,  <36.219894, 32.569771, 42.075874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045151, 32.210587, 42.097126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112036, -0.112923, -0.987267,
		0.892525, -0.425344, 0.149935,
		-0.436860, -0.897959, 0.053133,
		35.914093, 31.941198, 42.113068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.730583, 32.053181, 41.683815>,  <36.219894, 32.569771, 42.075874>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.730583, 32.053181, 41.683815> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.344543, 31.948675, 41.691032>,  <36.112919, 31.885973, 41.695362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.344543, 31.948675, 41.691032>,  <36.730583, 32.053181, 41.683815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.344543, 31.948675, 41.691032> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021670, -0.148350, -0.988698,
		0.260987, -0.953800, 0.148834,
		-0.965099, -0.261262, 0.018048,
		36.055016, 31.870296, 41.696445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.419094, 31.832911, 41.281906>,  <36.730583, 32.053181, 41.683815>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.419094, 31.832911, 41.281906> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.621597, 32.177448, 41.298828>,  <37.743099, 32.384171, 41.308983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.621597, 32.177448, 41.298828>,  <37.419094, 31.832911, 41.281906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621597, 32.177448, 41.298828> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121186, -0.119631, 0.985394,
		0.853824, -0.493737, -0.164947,
		0.506259, 0.861343, 0.042310,
		37.773476, 32.435852, 41.311520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.113667, 31.747528, 41.645527>,  <37.419094, 31.832911, 41.281906>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.113667, 31.747528, 41.645527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.073673, 32.144958, 41.666725>,  <38.049679, 32.383415, 41.679443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.073673, 32.144958, 41.666725>,  <38.113667, 31.747528, 41.645527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.073673, 32.144958, 41.666725> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382104, -0.010837, 0.924056,
		0.918695, 0.112638, -0.378566,
		-0.099981, 0.993577, 0.052996,
		38.043678, 32.443031, 41.682625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584053, 31.903816, 42.264168>,  <38.113667, 31.747528, 41.645527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.584053, 31.903816, 42.264168> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.348927, 32.219425, 42.192699>,  <38.207851, 32.408791, 42.149818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.348927, 32.219425, 42.192699>,  <38.584053, 31.903816, 42.264168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348927, 32.219425, 42.192699> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103894, 0.292655, 0.950557,
		0.802299, 0.540185, -0.254000,
		-0.587811, 0.789020, -0.178675,
		38.172585, 32.456131, 42.139095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916233, 32.547001, 42.452477>,  <38.584053, 31.903816, 42.264168>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.916233, 32.547001, 42.452477> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.527641, 32.638798, 42.476322>,  <38.294487, 32.693874, 42.490631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.527641, 32.638798, 42.476322>,  <38.916233, 32.547001, 42.452477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527641, 32.638798, 42.476322> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136492, 0.335673, 0.932037,
		0.193879, 0.913597, -0.357424,
		-0.971484, 0.229488, 0.059619,
		38.236195, 32.707645, 42.494209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.850277, 33.248512, 42.916351>,  <38.916233, 32.547001, 42.452477>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.850277, 33.248512, 42.916351> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.506187, 33.045063, 42.901821>,  <38.299732, 32.922993, 42.893105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.506187, 33.045063, 42.901821>,  <38.850277, 33.248512, 42.916351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.506187, 33.045063, 42.901821> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035175, -0.011876, 0.999311,
		-0.508700, 0.860910, -0.007675,
		-0.860225, -0.508619, -0.036324,
		38.248119, 32.892479, 42.890923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.368233, 33.627102, 43.279568>,  <38.850277, 33.248512, 42.916351>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.368233, 33.627102, 43.279568> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.204475, 33.262508, 43.263580>,  <38.106220, 33.043755, 43.253990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.204475, 33.262508, 43.263580>,  <38.368233, 33.627102, 43.279568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.204475, 33.262508, 43.263580> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017803, -0.035815, 0.999200,
		-0.912182, 0.409782, -0.001564,
		-0.409398, -0.911480, -0.039964,
		38.081657, 32.989063, 43.251591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954742, 33.684292, 43.840256>,  <38.368233, 33.627102, 43.279568>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.954742, 33.684292, 43.840256> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.979458, 33.291378, 43.769478>,  <37.994286, 33.055630, 43.727013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.979458, 33.291378, 43.769478>,  <37.954742, 33.684292, 43.840256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979458, 33.291378, 43.769478> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105710, -0.182724, 0.977464,
		-0.992476, -0.041687, -0.115127,
		0.061784, -0.982280, -0.176942,
		37.997993, 32.996693, 43.716396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504734, 33.314354, 44.304966>,  <37.954742, 33.684292, 43.840256>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504734, 33.314354, 44.304966> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.756660, 33.024384, 44.193382>,  <37.907818, 32.850403, 44.126434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.756660, 33.024384, 44.193382>,  <37.504734, 33.314354, 44.304966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.756660, 33.024384, 44.193382> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040917, -0.327674, 0.943904,
		-0.775666, -0.605900, -0.176713,
		0.629816, -0.724924, -0.278957,
		37.945606, 32.806908, 44.109695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171154, 32.776978, 44.659794>,  <37.504734, 33.314354, 44.304966>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.171154, 32.776978, 44.659794> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.555065, 32.685120, 44.595192>,  <37.785412, 32.630005, 44.556431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.555065, 32.685120, 44.595192>,  <37.171154, 32.776978, 44.659794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.555065, 32.685120, 44.595192> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074232, -0.347227, 0.934839,
		-0.270759, -0.909229, -0.316215,
		0.959781, -0.229643, -0.161509,
		37.842999, 32.616226, 44.546738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367439, 32.124508, 45.011665>,  <37.171154, 32.776978, 44.659794>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367439, 32.124508, 45.011665> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.725060, 32.287106, 44.936363>,  <37.939632, 32.384663, 44.891182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.725060, 32.287106, 44.936363>,  <37.367439, 32.124508, 45.011665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725060, 32.287106, 44.936363> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289873, -0.204571, 0.934946,
		0.341535, -0.890459, -0.300727,
		0.894051, 0.406490, -0.188251,
		37.993275, 32.409054, 44.879887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.945072, 31.635109, 45.236454>,  <37.367439, 32.124508, 45.011665>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.945072, 31.635109, 45.236454> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.054516, 32.019436, 45.254200>,  <38.120182, 32.250031, 45.264847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.054516, 32.019436, 45.254200>,  <37.945072, 31.635109, 45.236454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.054516, 32.019436, 45.254200> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220686, -0.107608, 0.969391,
		0.936182, -0.255441, -0.241481,
		0.273607, 0.960818, 0.044368,
		38.136597, 32.307682, 45.267509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.427673, 31.554184, 45.744488>,  <37.945072, 31.635109, 45.236454>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.427673, 31.554184, 45.744488> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.405338, 31.951569, 45.704647>,  <38.391937, 32.189999, 45.680744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.405338, 31.951569, 45.704647>,  <38.427673, 31.554184, 45.744488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.405338, 31.951569, 45.704647> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303693, 0.111929, 0.946172,
		0.951132, 0.022580, -0.307956,
		-0.055834, 0.993460, -0.099602,
		38.388588, 32.249607, 45.674767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840431, 31.756292, 46.231026>,  <38.427673, 31.554184, 45.744488>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.840431, 31.756292, 46.231026> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.645859, 32.100239, 46.169033>,  <38.529118, 32.306606, 46.131840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.645859, 32.100239, 46.169033>,  <38.840431, 31.756292, 46.231026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.645859, 32.100239, 46.169033> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051582, 0.205331, 0.977332,
		0.872196, 0.467409, -0.144232,
		-0.486429, 0.859865, -0.154979,
		38.499931, 32.358200, 46.122540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257778, 32.181709, 46.568958>,  <38.840431, 31.756292, 46.231026>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.257778, 32.181709, 46.568958> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.893372, 32.343491, 46.536781>,  <38.674728, 32.440559, 46.517475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.893372, 32.343491, 46.536781>,  <39.257778, 32.181709, 46.568958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.893372, 32.343491, 46.536781> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049587, 0.086203, 0.995043,
		0.409382, 0.910487, -0.058476,
		-0.911014, 0.404453, -0.080439,
		38.620068, 32.464828, 46.512650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.153343, 37.149979, 46.919861> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.340096, 36.796452, 46.907982>,  <31.452147, 36.584335, 46.900856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.340096, 36.796452, 46.907982>,  <31.153343, 37.149979, 46.919861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.340096, 36.796452, 46.907982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177616, 0.126616, -0.975920,
		0.866299, 0.450365, 0.216096,
		0.466881, -0.883821, -0.029696,
		31.480160, 36.531303, 46.899075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.805593, 37.243282, 46.511047>,  <31.153343, 37.149979, 46.919861>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.805593, 37.243282, 46.511047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.709948, 36.855618, 46.487194>,  <31.652559, 36.623020, 46.472881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.709948, 36.855618, 46.487194>,  <31.805593, 37.243282, 46.511047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.709948, 36.855618, 46.487194> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321288, -0.021016, -0.946748,
		0.916296, -0.245541, 0.316404,
		-0.239115, -0.969159, -0.059632,
		31.638214, 36.564869, 46.469303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.360424, 36.938793, 46.142815>,  <31.805593, 37.243282, 46.511047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.360424, 36.938793, 46.142815> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.091511, 36.644920, 46.106438>,  <31.930162, 36.468597, 46.084614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.091511, 36.644920, 46.106438>,  <32.360424, 36.938793, 46.142815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.091511, 36.644920, 46.106438> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354228, -0.211384, -0.910955,
		0.650041, -0.644637, 0.402356,
		-0.672287, -0.734684, -0.090940,
		31.889824, 36.424515, 46.079155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.708710, 36.381729, 45.757416>,  <32.360424, 36.938793, 46.142815>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.708710, 36.381729, 45.757416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.318581, 36.299614, 45.724926>,  <32.084503, 36.250343, 45.705433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.318581, 36.299614, 45.724926>,  <32.708710, 36.381729, 45.757416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.318581, 36.299614, 45.724926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156859, -0.385459, -0.909295,
		0.155357, -0.899599, 0.408149,
		-0.975325, -0.205287, -0.081226,
		32.025982, 36.238029, 45.700558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676937, 35.610981, 45.531185>,  <32.708710, 36.381729, 45.757416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676937, 35.610981, 45.531185> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.350063, 35.817520, 45.428738>,  <32.153938, 35.941444, 45.367268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.350063, 35.817520, 45.428738>,  <32.676937, 35.610981, 45.531185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.350063, 35.817520, 45.428738> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142124, -0.250131, -0.957724,
		-0.558583, -0.819036, 0.131017,
		-0.817182, 0.516348, -0.256124,
		32.104908, 35.972424, 45.351902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.501110, 35.304668, 44.990295>,  <32.676937, 35.610981, 45.531185>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.501110, 35.304668, 44.990295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.286831, 35.638897, 44.941563>,  <32.158264, 35.839436, 44.912323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.286831, 35.638897, 44.941563>,  <32.501110, 35.304668, 44.990295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.286831, 35.638897, 44.941563> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067795, -0.101250, -0.992548,
		-0.841685, -0.539964, -0.002408,
		-0.535696, 0.835576, -0.121827,
		32.126122, 35.889568, 44.905014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.031761, 35.180702, 44.502403>,  <32.501110, 35.304668, 44.990295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.031761, 35.180702, 44.502403> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.067917, 35.578705, 44.485512>,  <32.089611, 35.817509, 44.475376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.067917, 35.578705, 44.485512>,  <32.031761, 35.180702, 44.502403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.067917, 35.578705, 44.485512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177613, -0.057828, -0.982400,
		-0.979941, 0.081294, -0.181953,
		0.090385, 0.995011, -0.042230,
		32.095032, 35.877209, 44.472843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.761322, 35.368637, 43.807041>,  <32.031761, 35.180702, 44.502403>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.761322, 35.368637, 43.807041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.963051, 35.693054, 43.925613>,  <32.084087, 35.887703, 43.996758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.963051, 35.693054, 43.925613>,  <31.761322, 35.368637, 43.807041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.963051, 35.693054, 43.925613> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113149, 0.278251, -0.953821,
		-0.856070, 0.514574, 0.048559,
		0.504323, 0.811043, 0.296426,
		32.114349, 35.936367, 44.014542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.477953, 35.937969, 43.431492>,  <31.761322, 35.368637, 43.807041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.477953, 35.937969, 43.431492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.847635, 36.022957, 43.558426>,  <32.069443, 36.073948, 43.634586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.847635, 36.022957, 43.558426>,  <31.477953, 35.937969, 43.431492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.847635, 36.022957, 43.558426> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240547, 0.321513, -0.915842,
		-0.296616, 0.922760, 0.246035,
		0.924206, 0.212470, 0.317333,
		32.124897, 36.086697, 43.653625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.605385, 36.607651, 43.253941>,  <31.477953, 35.937969, 43.431492>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.605385, 36.607651, 43.253941> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.966722, 36.437614, 43.276810>,  <32.183525, 36.335594, 43.290531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.966722, 36.437614, 43.276810>,  <31.605385, 36.607651, 43.253941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.966722, 36.437614, 43.276810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172090, 0.237114, -0.956118,
		0.392881, 0.873542, 0.287349,
		0.903344, -0.425090, 0.057170,
		32.237724, 36.310089, 43.293961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.921738, 37.100559, 42.857502>,  <31.605385, 36.607651, 43.253941>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.921738, 37.100559, 42.857502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.181484, 36.796417, 42.862812>,  <32.337334, 36.613930, 42.865997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.181484, 36.796417, 42.862812>,  <31.921738, 37.100559, 42.857502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.181484, 36.796417, 42.862812> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319816, 0.257214, -0.911898,
		0.689955, 0.596403, 0.410202,
		0.649368, -0.760358, 0.013273,
		32.376293, 36.568310, 42.866795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.533447, 37.339329, 42.516258>,  <31.921738, 37.100559, 42.857502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.533447, 37.339329, 42.516258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.582073, 36.942318, 42.511898>,  <32.611248, 36.704113, 42.509281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.582073, 36.942318, 42.511898>,  <32.533447, 37.339329, 42.516258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582073, 36.942318, 42.511898> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441598, 0.063914, -0.894934,
		0.888940, 0.103976, 0.446066,
		0.121562, -0.992524, -0.010900,
		32.618542, 36.644562, 42.508629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.132885, 37.171623, 42.226139>,  <32.533447, 37.339329, 42.516258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.132885, 37.171623, 42.226139> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.959778, 36.814640, 42.175171>,  <32.855915, 36.600452, 42.144588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.959778, 36.814640, 42.175171>,  <33.132885, 37.171623, 42.226139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959778, 36.814640, 42.175171> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320454, -0.020181, -0.947049,
		0.842627, -0.450684, 0.294725,
		-0.432768, -0.892455, -0.127419,
		32.829948, 36.546902, 42.136944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582760, 36.807472, 41.849518>,  <33.132885, 37.171623, 42.226139>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.582760, 36.807472, 41.849518> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.232956, 36.621914, 41.792908>,  <33.023071, 36.510578, 41.758942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.232956, 36.621914, 41.792908>,  <33.582760, 36.807472, 41.849518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.232956, 36.621914, 41.792908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121762, 0.072455, -0.989911,
		0.469472, -0.882921, -0.006878,
		-0.874511, -0.463898, -0.141521,
		32.970604, 36.482746, 41.750450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.284714, 36.641697, 41.946476>,  <33.582760, 36.807472, 41.849518>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.284714, 36.641697, 41.946476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.621887, 36.824966, 41.833668>,  <34.824192, 36.934929, 41.765984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.621887, 36.824966, 41.833668>,  <34.284714, 36.641697, 41.946476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.621887, 36.824966, 41.833668> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154246, 0.296378, 0.942533,
		0.515429, -0.837995, 0.179156,
		0.842936, 0.458175, -0.282019,
		34.874767, 36.962418, 41.749062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779793, 36.432716, 42.379082>,  <34.284714, 36.641697, 41.946476>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779793, 36.432716, 42.379082> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.931053, 36.775204, 42.238289>,  <35.021809, 36.980698, 42.153812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.931053, 36.775204, 42.238289>,  <34.779793, 36.432716, 42.379082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.931053, 36.775204, 42.238289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195269, 0.297890, 0.934415,
		0.904916, -0.422080, -0.054545,
		0.378150, 0.856218, -0.351985,
		35.044498, 37.032070, 42.132694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.379074, 36.544239, 42.821548>,  <34.779793, 36.432716, 42.379082>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.379074, 36.544239, 42.821548> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.263870, 36.892605, 42.662277>,  <35.194748, 37.101624, 42.566715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.263870, 36.892605, 42.662277>,  <35.379074, 36.544239, 42.821548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263870, 36.892605, 42.662277> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012657, 0.412303, 0.910959,
		0.957543, 0.267408, -0.107726,
		-0.288013, 0.870919, -0.398182,
		35.177467, 37.153881, 42.542824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.757515, 37.095612, 43.225193>,  <35.379074, 36.544239, 42.821548>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.757515, 37.095612, 43.225193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.456177, 37.294651, 43.053211>,  <35.275372, 37.414074, 42.950024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.456177, 37.294651, 43.053211>,  <35.757515, 37.095612, 43.225193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.456177, 37.294651, 43.053211> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121033, 0.537720, 0.834391,
		0.646386, 0.680627, -0.344866,
		-0.753350, 0.497598, -0.429953,
		35.230171, 37.443932, 42.924225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949333, 37.734898, 43.320660>,  <35.757515, 37.095612, 43.225193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949333, 37.734898, 43.320660> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.557800, 37.736832, 43.238808>,  <35.322880, 37.737991, 43.189697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.557800, 37.736832, 43.238808>,  <35.949333, 37.734898, 43.320660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.557800, 37.736832, 43.238808> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182752, 0.429592, 0.884337,
		0.092179, 0.903010, -0.419613,
		-0.978828, 0.004832, -0.204627,
		35.264153, 37.738281, 43.177422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758663, 38.268551, 43.689754>,  <35.949333, 37.734898, 43.320660>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.758663, 38.268551, 43.689754> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.402344, 38.104305, 43.611919>,  <35.188553, 38.005756, 43.565220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.402344, 38.104305, 43.611919>,  <35.758663, 38.268551, 43.689754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402344, 38.104305, 43.611919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315327, 0.250282, 0.915384,
		-0.327172, 0.876785, -0.352431,
		-0.890802, -0.410619, -0.194589,
		35.135105, 37.981121, 43.553543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262981, 38.783066, 43.992962>,  <35.758663, 38.268551, 43.689754>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.262981, 38.783066, 43.992962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.114697, 38.411724, 43.982079>,  <35.025726, 38.188919, 43.975548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.114697, 38.411724, 43.982079>,  <35.262981, 38.783066, 43.992962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.114697, 38.411724, 43.982079> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242790, 0.068590, 0.967651,
		-0.896453, 0.365323, -0.250822,
		-0.370709, -0.928350, -0.027209,
		35.003483, 38.133221, 43.973915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.794949, 38.808777, 44.557457>,  <35.262981, 38.783066, 43.992962>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.794949, 38.808777, 44.557457> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.833321, 38.415504, 44.495293>,  <34.856342, 38.179543, 44.457996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.833321, 38.415504, 44.495293>,  <34.794949, 38.808777, 44.557457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833321, 38.415504, 44.495293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191514, -0.171442, 0.966401,
		-0.976791, -0.062943, -0.204740,
		0.095929, -0.983181, -0.155409,
		34.862099, 38.120548, 44.448669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261272, 38.553272, 44.896004>,  <34.794949, 38.808777, 44.557457>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.261272, 38.553272, 44.896004> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.510887, 38.244343, 44.848503>,  <34.660656, 38.058987, 44.820004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.510887, 38.244343, 44.848503>,  <34.261272, 38.553272, 44.896004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510887, 38.244343, 44.848503> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226846, -0.324492, 0.918284,
		-0.747744, -0.546102, -0.377692,
		0.624035, -0.772320, -0.118756,
		34.698097, 38.012646, 44.812878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936649, 38.070507, 45.324200>,  <34.261272, 38.553272, 44.896004>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936649, 38.070507, 45.324200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.309177, 37.930626, 45.283497>,  <34.532692, 37.846699, 45.259075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.309177, 37.930626, 45.283497>,  <33.936649, 38.070507, 45.324200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.309177, 37.930626, 45.283497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031714, -0.200459, 0.979189,
		-0.362824, -0.915163, -0.175601,
		0.931318, -0.349705, -0.101755,
		34.588573, 37.825714, 45.252972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910370, 37.342648, 45.588974>,  <33.936649, 38.070507, 45.324200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910370, 37.342648, 45.588974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.277836, 37.499268, 45.609924>,  <34.498314, 37.593239, 45.622494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.277836, 37.499268, 45.609924>,  <33.910370, 37.342648, 45.588974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.277836, 37.499268, 45.609924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085688, -0.326932, 0.941155,
		0.385632, -0.860119, -0.333892,
		0.918665, 0.391550, 0.052374,
		34.553436, 37.616734, 45.625637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370384, 36.814743, 45.989910>,  <33.910370, 37.342648, 45.588974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.370384, 36.814743, 45.989910> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.551815, 37.171219, 45.992661>,  <34.660675, 37.385105, 45.994312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.551815, 37.171219, 45.992661>,  <34.370384, 36.814743, 45.989910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.551815, 37.171219, 45.992661> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169495, -0.093835, 0.981054,
		0.874951, -0.443817, -0.193614,
		0.453576, 0.891191, 0.006876,
		34.687889, 37.438576, 45.994724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975826, 36.671677, 46.328922>,  <34.370384, 36.814743, 45.989910>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.975826, 36.671677, 46.328922> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.980629, 37.069946, 46.365791>,  <34.983509, 37.308907, 46.387913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.980629, 37.069946, 46.365791>,  <34.975826, 36.671677, 46.328922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.980629, 37.069946, 46.365791> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150935, -0.092928, 0.984166,
		0.988471, 0.002097, -0.151397,
		0.012005, 0.995670, 0.092173,
		34.984230, 37.368649, 46.393444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629166, 36.955536, 46.582596>,  <34.975826, 36.671677, 46.328922>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.629166, 36.955536, 46.582596> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.344822, 37.216122, 46.688633>,  <35.174217, 37.372475, 46.752254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.344822, 37.216122, 46.688633>,  <35.629166, 36.955536, 46.582596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.344822, 37.216122, 46.688633> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209555, -0.163613, 0.964011,
		0.671394, 0.740825, -0.020213,
		-0.710856, 0.651467, 0.265092,
		35.131565, 37.411560, 46.768162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084763, 37.349865, 46.447708>,  <35.629166, 36.955536, 46.582596>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084763, 37.349865, 46.447708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.476723, 37.303429, 46.512600>,  <36.711899, 37.275566, 46.551533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.476723, 37.303429, 46.512600>,  <36.084763, 37.349865, 46.447708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.476723, 37.303429, 46.512600> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191156, 0.313881, -0.930021,
		0.057051, 0.942338, 0.329764,
		0.979900, -0.116095, 0.162227,
		36.770691, 37.268600, 46.561268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431522, 37.921646, 46.133625>,  <36.084763, 37.349865, 46.447708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431522, 37.921646, 46.133625> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.736370, 37.663200, 46.150162>,  <36.919277, 37.508133, 46.160084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.736370, 37.663200, 46.150162>,  <36.431522, 37.921646, 46.133625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736370, 37.663200, 46.150162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257384, 0.243760, -0.935059,
		0.594081, 0.723265, 0.352074,
		0.762116, -0.646119, 0.041344,
		36.965004, 37.469364, 46.162563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880562, 38.272388, 45.665440>,  <36.431522, 37.921646, 46.133625>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880562, 38.272388, 45.665440> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.010899, 37.895756, 45.699497>,  <37.089100, 37.669777, 45.719933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.010899, 37.895756, 45.699497>,  <36.880562, 38.272388, 45.665440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010899, 37.895756, 45.699497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208402, -0.016311, -0.977907,
		0.922171, 0.336384, 0.190913,
		0.325838, -0.941584, 0.085145,
		37.108650, 37.613281, 45.725040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531635, 38.214111, 45.461494>,  <36.880562, 38.272388, 45.665440>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.531635, 38.214111, 45.461494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.414135, 37.833038, 45.430229>,  <37.343636, 37.604393, 45.411472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.414135, 37.833038, 45.430229>,  <37.531635, 38.214111, 45.461494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.414135, 37.833038, 45.430229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121812, 0.043793, -0.991587,
		0.948089, -0.300799, 0.103183,
		-0.293750, -0.952682, -0.078160,
		37.326012, 37.547234, 45.406780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.892162, 37.970924, 44.967838>,  <37.531635, 38.214111, 45.461494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.892162, 37.970924, 44.967838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.590794, 37.708965, 44.991383>,  <37.409973, 37.551792, 45.005508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.590794, 37.708965, 44.991383>,  <37.892162, 37.970924, 44.967838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.590794, 37.708965, 44.991383> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106430, -0.209804, -0.971933,
		0.648864, -0.726013, 0.227772,
		-0.753424, -0.654894, 0.058865,
		37.364765, 37.512497, 45.009041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246117, 37.465210, 44.720524>,  <37.892162, 37.970924, 44.967838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246117, 37.465210, 44.720524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.854599, 37.388760, 44.691029>,  <37.619690, 37.342892, 44.673332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.854599, 37.388760, 44.691029>,  <38.246117, 37.465210, 44.720524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.854599, 37.388760, 44.691029> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124718, -0.270398, -0.954636,
		0.162515, -0.943587, 0.288500,
		-0.978793, -0.191123, -0.073738,
		37.560963, 37.331425, 44.668907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237732, 36.872890, 44.353413>,  <38.246117, 37.465210, 44.720524>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.237732, 36.872890, 44.353413> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.885132, 37.052029, 44.293568>,  <37.673569, 37.159512, 44.257660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.885132, 37.052029, 44.293568>,  <38.237732, 36.872890, 44.353413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.885132, 37.052029, 44.293568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019875, -0.281385, -0.959389,
		-0.471757, -0.848679, 0.239141,
		-0.881505, 0.447845, -0.149613,
		37.620682, 37.186382, 44.248684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810280, 36.317387, 43.960773>,  <38.237732, 36.872890, 44.353413>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810280, 36.317387, 43.960773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.667809, 36.687508, 43.908684>,  <37.582325, 36.909580, 43.877430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.667809, 36.687508, 43.908684>,  <37.810280, 36.317387, 43.960773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.667809, 36.687508, 43.908684> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120389, -0.183648, -0.975592,
		-0.926630, -0.331809, 0.176807,
		-0.356180, 0.925298, -0.130227,
		37.560955, 36.965096, 43.869617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308784, 36.222786, 43.485531>,  <37.810280, 36.317387, 43.960773>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308784, 36.222786, 43.485531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.358761, 36.618980, 43.462482>,  <37.388748, 36.856697, 43.448654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.358761, 36.618980, 43.462482>,  <37.308784, 36.222786, 43.485531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.358761, 36.618980, 43.462482> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294401, -0.018446, -0.955504,
		-0.947479, 0.136348, 0.289297,
		0.124945, 0.990489, -0.057618,
		37.396244, 36.916126, 43.445198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737396, 36.482548, 43.039768>,  <37.308784, 36.222786, 43.485531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737396, 36.482548, 43.039768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.037308, 36.747154, 43.045967>,  <37.217255, 36.905918, 43.049686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.037308, 36.747154, 43.045967>,  <36.737396, 36.482548, 43.039768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037308, 36.747154, 43.045967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015535, 0.005823, -0.999862,
		-0.661511, 0.749912, -0.005910,
		0.749775, 0.661512, 0.015502,
		37.262241, 36.945606, 43.050617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477318, 37.142483, 42.748596>,  <36.737396, 36.482548, 43.039768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.477318, 37.142483, 42.748596> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.875210, 37.155769, 42.709793>,  <37.113945, 37.163742, 42.686512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.875210, 37.155769, 42.709793>,  <36.477318, 37.142483, 42.748596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.875210, 37.155769, 42.709793> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099610, 0.088398, -0.991092,
		-0.024347, 0.995531, 0.091241,
		0.994729, 0.033218, -0.097012,
		37.173630, 37.165733, 42.680691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.548275, 37.634247, 42.262936>,  <36.477318, 37.142483, 42.748596>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.548275, 37.634247, 42.262936> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.888088, 37.423954, 42.280411>,  <37.091976, 37.297779, 42.290894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.888088, 37.423954, 42.280411>,  <36.548275, 37.634247, 42.262936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.888088, 37.423954, 42.280411> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134214, 0.135310, -0.981671,
		0.510181, 0.839822, 0.185510,
		0.849531, -0.525728, 0.043683,
		37.142948, 37.266235, 42.293514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120609, 38.037685, 42.012474>,  <36.548275, 37.634247, 42.262936>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.120609, 38.037685, 42.012474> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.228779, 37.657024, 41.954197>,  <37.293682, 37.428627, 41.919231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.228779, 37.657024, 41.954197>,  <37.120609, 38.037685, 42.012474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228779, 37.657024, 41.954197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257345, 0.217279, -0.941575,
		0.927709, 0.217131, 0.303661,
		0.270424, -0.951653, -0.145695,
		37.309906, 37.371529, 41.910488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626499, 38.179531, 41.447029>,  <37.120609, 38.037685, 42.012474>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.626499, 38.179531, 41.447029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.549606, 37.786999, 41.444782>,  <37.503471, 37.551479, 41.443436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.549606, 37.786999, 41.444782>,  <37.626499, 38.179531, 41.447029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.549606, 37.786999, 41.444782> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144886, -0.022720, -0.989188,
		0.970595, -0.190969, 0.146549,
		-0.192234, -0.981333, -0.005617,
		37.491936, 37.492599, 41.443096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.236315, 26.785086, 34.455170> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.887966, 26.607698, 34.539944>,  <27.678957, 26.501266, 34.590809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.887966, 26.607698, 34.539944>,  <28.236315, 26.785086, 34.455170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.887966, 26.607698, 34.539944> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473789, 0.642692, -0.602056,
		0.130785, -0.624726, -0.769814,
		-0.870873, -0.443469, 0.211934,
		27.626705, 26.474657, 34.603523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.943485, 26.660515, 33.794220>,  <28.236315, 26.785086, 34.455170>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.943485, 26.660515, 33.794220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.660568, 26.656973, 34.076965>,  <27.490818, 26.654848, 34.246613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.660568, 26.656973, 34.076965>,  <27.943485, 26.660515, 33.794220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.660568, 26.656973, 34.076965> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376251, 0.851242, -0.365817,
		-0.598473, -0.524699, -0.605410,
		-0.707294, -0.008855, 0.706864,
		27.448380, 26.654316, 34.289024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.412243, 26.766140, 33.368134>,  <27.943485, 26.660515, 33.794220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.412243, 26.766140, 33.368134> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.290939, 26.853954, 33.739044>,  <27.218157, 26.906643, 33.961590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.290939, 26.853954, 33.739044>,  <27.412243, 26.766140, 33.368134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.290939, 26.853954, 33.739044> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530289, 0.769621, -0.355635,
		-0.791725, -0.599573, -0.116977,
		-0.303257, 0.219534, 0.927276,
		27.199963, 26.919815, 34.017227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.685148, 26.999031, 33.254276>,  <27.412243, 26.766140, 33.368134>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.685148, 26.999031, 33.254276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.769470, 27.168495, 33.606655>,  <26.820063, 27.270174, 33.818085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.769470, 27.168495, 33.606655>,  <26.685148, 26.999031, 33.254276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.769470, 27.168495, 33.606655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635286, 0.744314, -0.205933,
		-0.742950, -0.516244, 0.426050,
		0.210803, 0.423661, 0.880950,
		26.832710, 27.295593, 33.870941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.024769, 27.309225, 33.374760>,  <26.685148, 26.999031, 33.254276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.024769, 27.309225, 33.374760> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.316874, 27.495817, 33.574402>,  <26.492136, 27.607773, 33.694187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.316874, 27.495817, 33.574402>,  <26.024769, 27.309225, 33.374760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.316874, 27.495817, 33.574402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375965, 0.884415, -0.276513,
		-0.570408, 0.014279, 0.821237,
		0.730263, 0.466482, 0.499110,
		26.535952, 27.635761, 33.724136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.718689, 27.646938, 33.850471>,  <26.024769, 27.309225, 33.374760>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.718689, 27.646938, 33.850471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.076529, 27.825468, 33.859314>,  <26.291233, 27.932585, 33.864620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.076529, 27.825468, 33.859314>,  <25.718689, 27.646938, 33.850471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.076529, 27.825468, 33.859314> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437472, 0.884804, -0.160442,
		-0.091167, 0.133861, 0.986798,
		0.894599, 0.446323, 0.022104,
		26.344908, 27.959366, 33.865944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.585899, 28.248093, 34.333107>,  <25.718689, 27.646938, 33.850471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.585899, 28.248093, 34.333107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.902651, 28.341461, 34.107384>,  <26.092701, 28.397482, 33.971951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.902651, 28.341461, 34.107384>,  <25.585899, 28.248093, 34.333107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.902651, 28.341461, 34.107384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381984, 0.910303, -0.159487,
		0.476465, 0.341852, 0.810011,
		0.791877, 0.233421, -0.564309,
		26.140213, 28.411488, 33.938091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.828173, 28.928253, 34.533081>,  <25.585899, 28.248093, 34.333107>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.828173, 28.928253, 34.533081> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.936644, 28.853819, 34.155334>,  <26.001726, 28.809158, 33.928684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.936644, 28.853819, 34.155334>,  <25.828173, 28.928253, 34.533081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.936644, 28.853819, 34.155334> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262145, 0.929767, -0.258483,
		0.926145, 0.317656, 0.203349,
		0.271176, -0.186086, -0.944371,
		26.017996, 28.797993, 33.872025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.095867, 29.580736, 34.343777>,  <25.828173, 28.928253, 34.533081>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.095867, 29.580736, 34.343777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.077564, 29.388948, 33.993229>,  <26.066582, 29.273876, 33.782902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.077564, 29.388948, 33.993229>,  <26.095867, 29.580736, 34.343777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.077564, 29.388948, 33.993229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104716, 0.870149, -0.481534,
		0.993449, -0.113803, 0.010392,
		-0.045758, -0.479468, -0.876366,
		26.063837, 29.245108, 33.730320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.612572, 29.682455, 33.992516>,  <26.095867, 29.580736, 34.343777>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.612572, 29.682455, 33.992516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.368059, 29.589350, 33.689953>,  <26.221352, 29.533487, 33.508415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.368059, 29.589350, 33.689953>,  <26.612572, 29.682455, 33.992516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.368059, 29.589350, 33.689953> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237576, 0.857720, -0.455931,
		0.754912, -0.458408, -0.469010,
		-0.611282, -0.232762, -0.756410,
		26.184675, 29.519522, 33.463028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.972694, 29.787035, 33.281982>,  <26.612572, 29.682455, 33.992516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.972694, 29.787035, 33.281982> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.577673, 29.774185, 33.220402>,  <26.340660, 29.766476, 33.183453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.577673, 29.774185, 33.220402>,  <26.972694, 29.787035, 33.281982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.577673, 29.774185, 33.220402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040684, 0.893410, -0.447396,
		0.151916, -0.448091, -0.880986,
		-0.987556, -0.032124, -0.153953,
		26.281406, 29.764547, 33.174217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.913086, 30.152210, 32.674129>,  <26.972694, 29.787035, 33.281982>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.913086, 30.152210, 32.674129> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.551794, 30.182962, 32.843018>,  <26.335018, 30.201414, 32.944351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.551794, 30.182962, 32.843018>,  <26.913086, 30.152210, 32.674129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.551794, 30.182962, 32.843018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089266, 0.928650, -0.360055,
		-0.419773, -0.362902, -0.831921,
		-0.903229, 0.076880, 0.422217,
		26.280825, 30.206026, 32.969681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.590511, 30.616516, 32.283852>,  <26.913086, 30.152210, 32.674129>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.590511, 30.616516, 32.283852> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.369535, 30.627821, 32.617081>,  <26.236950, 30.634604, 32.817017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.369535, 30.627821, 32.617081>,  <26.590511, 30.616516, 32.283852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.369535, 30.627821, 32.617081> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176113, 0.972906, -0.149792,
		-0.814737, -0.229466, -0.532494,
		-0.552439, 0.028262, 0.833074,
		26.203804, 30.636299, 32.867004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.970079, 31.003801, 32.091038>,  <26.590511, 30.616516, 32.283852>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.970079, 31.003801, 32.091038> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.993195, 31.012424, 32.490276>,  <26.007065, 31.017599, 32.729820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.993195, 31.012424, 32.490276>,  <25.970079, 31.003801, 32.091038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.993195, 31.012424, 32.490276> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042175, 0.998927, -0.019135,
		-0.997438, -0.040989, 0.058637,
		0.057789, 0.021559, 0.998096,
		26.010532, 31.018892, 32.789703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.562359, 31.606176, 32.173798>,  <25.970079, 31.003801, 32.091038>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.562359, 31.606176, 32.173798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.773869, 31.516499, 32.501244>,  <25.900774, 31.462692, 32.697712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.773869, 31.516499, 32.501244>,  <25.562359, 31.606176, 32.173798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.773869, 31.516499, 32.501244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025492, 0.959854, 0.279339,
		-0.848380, -0.168575, 0.501830,
		0.528773, -0.224193, 0.818619,
		25.932501, 31.449242, 32.746830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.315050, 32.028683, 32.588596>,  <25.562359, 31.606176, 32.173798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.315050, 32.028683, 32.588596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.664120, 31.923374, 32.753098>,  <25.873562, 31.860189, 32.851799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.664120, 31.923374, 32.753098>,  <25.315050, 32.028683, 32.588596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.664120, 31.923374, 32.753098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092419, 0.916035, 0.390306,
		-0.479481, -0.302602, 0.823730,
		0.872672, -0.263272, 0.411255,
		25.925922, 31.844393, 32.876472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.239277, 32.228603, 33.230198>,  <25.315050, 32.028683, 32.588596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.239277, 32.228603, 33.230198> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.633440, 32.189835, 33.174229>,  <25.869938, 32.166573, 33.140648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.633440, 32.189835, 33.174229>,  <25.239277, 32.228603, 33.230198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.633440, 32.189835, 33.174229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147601, 0.896005, 0.418795,
		0.084782, -0.433337, 0.897235,
		0.985407, -0.096927, -0.139926,
		25.929062, 32.160755, 33.132252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.467823, 32.399399, 33.843235>,  <25.239277, 32.228603, 33.230198>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.467823, 32.399399, 33.843235> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.793272, 32.439590, 33.614178>,  <25.988541, 32.463707, 33.476742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.793272, 32.439590, 33.614178>,  <25.467823, 32.399399, 33.843235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.793272, 32.439590, 33.614178> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235330, 0.843745, 0.482405,
		0.531640, -0.527256, 0.662843,
		0.813621, 0.100479, -0.572647,
		26.037357, 32.469734, 33.442383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.037111, 32.593246, 34.266254>,  <25.467823, 32.399399, 33.843235>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.037111, 32.593246, 34.266254> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.166431, 32.688602, 33.899944>,  <26.244024, 32.745815, 33.680157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.166431, 32.688602, 33.899944>,  <26.037111, 32.593246, 34.266254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.166431, 32.688602, 33.899944> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438380, 0.819909, 0.368200,
		0.838631, -0.520497, 0.160567,
		0.323298, 0.238395, -0.915777,
		26.263422, 32.760120, 33.625210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.741873, 32.753288, 34.301495>,  <26.037111, 32.593246, 34.266254>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.741873, 32.753288, 34.301495> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.611143, 32.942078, 33.973976>,  <26.532705, 33.055351, 33.777466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.611143, 32.942078, 33.973976>,  <26.741873, 32.753288, 34.301495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.611143, 32.942078, 33.973976> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497114, 0.822689, 0.275792,
		0.803780, -0.316898, -0.503501,
		-0.326827, 0.471973, -0.818795,
		26.513096, 33.083668, 33.728336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.289667, 33.096294, 33.985432>,  <26.741873, 32.753288, 34.301495>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.289667, 33.096294, 33.985432> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.974186, 33.308792, 33.861675>,  <26.784897, 33.436291, 33.787422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.974186, 33.308792, 33.861675>,  <27.289667, 33.096294, 33.985432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.974186, 33.308792, 33.861675> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539308, 0.839470, 0.066609,
		0.295111, -0.114323, -0.948599,
		-0.788705, 0.531244, -0.309393,
		26.737574, 33.468166, 33.768856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.892181, 32.967506, 34.438702>,  <27.289667, 33.096294, 33.985432>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.892181, 32.967506, 34.438702> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.958479, 33.349018, 34.538975>,  <27.998257, 33.577923, 34.599136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.958479, 33.349018, 34.538975>,  <27.892181, 32.967506, 34.438702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.958479, 33.349018, 34.538975> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379320, -0.296297, 0.876541,
		0.910300, -0.050194, -0.410896,
		0.165744, 0.953776, 0.250680,
		28.008202, 33.635151, 34.614178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.680590, 33.142128, 34.348812>,  <27.892181, 32.967506, 34.438702>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.680590, 33.142128, 34.348812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.393955, 33.274162, 34.594593>,  <28.221973, 33.353382, 34.742062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.393955, 33.274162, 34.594593>,  <28.680590, 33.142128, 34.348812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.393955, 33.274162, 34.594593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461490, -0.436175, 0.772514,
		0.523000, 0.837137, 0.160228,
		-0.716587, 0.330081, 0.614450,
		28.178980, 33.373188, 34.778927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.077757, 33.410847, 34.944489>,  <28.680590, 33.142128, 34.348812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.077757, 33.410847, 34.944489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.697437, 33.346928, 35.050652>,  <28.469246, 33.308575, 35.114349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.697437, 33.346928, 35.050652>,  <29.077757, 33.410847, 34.944489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.697437, 33.346928, 35.050652> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306311, -0.613138, 0.728172,
		0.046372, 0.773645, 0.631920,
		-0.950801, -0.159797, 0.265409,
		28.412197, 33.298988, 35.130276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.148920, 33.379086, 35.658146>,  <29.077757, 33.410847, 34.944489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.148920, 33.379086, 35.658146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.796824, 33.209576, 35.572735>,  <28.585566, 33.107868, 35.521488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.796824, 33.209576, 35.572735>,  <29.148920, 33.379086, 35.658146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.796824, 33.209576, 35.572735> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212202, -0.754006, 0.621647,
		-0.424440, 0.501887, 0.753632,
		-0.880239, -0.423774, -0.213529,
		28.532751, 33.082443, 35.508675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.972868, 33.150833, 36.308022>,  <29.148920, 33.379086, 35.658146>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.972868, 33.150833, 36.308022> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.770046, 32.943459, 36.032597>,  <28.648354, 32.819035, 35.867344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.770046, 32.943459, 36.032597>,  <28.972868, 33.150833, 36.308022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.770046, 32.943459, 36.032597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268220, -0.854118, 0.445579,
		-0.819118, 0.041247, 0.572140,
		-0.507054, -0.518441, -0.688560,
		28.617929, 32.787926, 35.826027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.591524, 32.651009, 36.723473>,  <28.972868, 33.150833, 36.308022>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.591524, 32.651009, 36.723473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.518190, 32.490040, 36.364708>,  <28.474190, 32.393459, 36.149448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.518190, 32.490040, 36.364708>,  <28.591524, 32.651009, 36.723473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.518190, 32.490040, 36.364708> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299075, -0.891959, 0.339063,
		-0.936452, -0.206081, 0.283881,
		-0.183336, -0.402418, -0.896910,
		28.463190, 32.369316, 36.095634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.056606, 32.095703, 36.834145>,  <28.591524, 32.651009, 36.723473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.056606, 32.095703, 36.834145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.260973, 32.035030, 36.495686>,  <28.383593, 31.998627, 36.292610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.260973, 32.035030, 36.495686>,  <28.056606, 32.095703, 36.834145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.260973, 32.035030, 36.495686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037193, -0.987288, 0.154525,
		-0.858826, -0.047479, -0.510063,
		0.510916, -0.151681, -0.846143,
		28.414248, 31.989527, 36.241844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.754669, 31.501057, 36.544868>,  <28.056606, 32.095703, 36.834145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.754669, 31.501057, 36.544868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.104893, 31.512941, 36.351990>,  <28.315027, 31.520071, 36.236263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.104893, 31.512941, 36.351990>,  <27.754669, 31.501057, 36.544868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.104893, 31.512941, 36.351990> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008345, -0.998888, -0.046391,
		-0.483041, 0.036593, -0.874833,
		0.875558, 0.029709, -0.482199,
		28.367559, 31.521854, 36.207329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.767590, 30.915134, 35.915833>,  <27.754669, 31.501057, 36.544868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.767590, 30.915134, 35.915833> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.134853, 31.012081, 36.041206>,  <28.355211, 31.070250, 36.116428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.134853, 31.012081, 36.041206>,  <27.767590, 30.915134, 35.915833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.134853, 31.012081, 36.041206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217940, -0.969592, 0.111325,
		0.330883, -0.033905, -0.943062,
		0.918161, 0.242366, 0.313433,
		28.410301, 31.084791, 36.135235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.274509, 30.795935, 35.402138>,  <27.767590, 30.915134, 35.915833>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.274509, 30.795935, 35.402138> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.410994, 30.748417, 35.775120>,  <28.492884, 30.719906, 35.998909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.410994, 30.748417, 35.775120>,  <28.274509, 30.795935, 35.402138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.410994, 30.748417, 35.775120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176133, -0.966332, -0.187561,
		0.923339, 0.228233, -0.308797,
		0.341208, -0.118793, 0.932451,
		28.513355, 30.712778, 36.054855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.697693, 30.174026, 35.221825>,  <28.274509, 30.795935, 35.402138>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.697693, 30.174026, 35.221825> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.752020, 30.220968, 35.615330>,  <28.784616, 30.249134, 35.851433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.752020, 30.220968, 35.615330>,  <28.697693, 30.174026, 35.221825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.752020, 30.220968, 35.615330> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370005, -0.927121, 0.059518,
		0.919049, 0.355912, -0.169340,
		0.135815, 0.117357, 0.983759,
		28.792765, 30.256176, 35.910458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.433151, 30.042536, 35.354881>,  <28.697693, 30.174026, 35.221825>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.433151, 30.042536, 35.354881> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.216503, 29.981623, 35.685566>,  <29.086514, 29.945076, 35.883976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.216503, 29.981623, 35.685566>,  <29.433151, 30.042536, 35.354881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.216503, 29.981623, 35.685566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298795, -0.954108, 0.020009,
		0.785728, 0.257855, 0.562265,
		-0.541621, -0.152281, 0.826715,
		29.054016, 29.935938, 35.933582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.789036, 29.576702, 35.647758>,  <29.433151, 30.042536, 35.354881>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.789036, 29.576702, 35.647758> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.436691, 29.529924, 35.831242>,  <29.225285, 29.501858, 35.941330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.436691, 29.529924, 35.831242>,  <29.789036, 29.576702, 35.647758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.436691, 29.529924, 35.831242> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145007, -0.989081, 0.026294,
		0.450622, 0.089677, 0.888199,
		-0.880859, -0.116946, 0.458706,
		29.172434, 29.494841, 35.968853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.952808, 29.141739, 36.183632>,  <29.789036, 29.576702, 35.647758>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.952808, 29.141739, 36.183632> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.555426, 29.125473, 36.140942>,  <29.316996, 29.115713, 36.115326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.555426, 29.125473, 36.140942>,  <29.952808, 29.141739, 36.183632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.555426, 29.125473, 36.140942> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002552, -0.942137, 0.335219,
		-0.114182, 0.332753, 0.936076,
		-0.993457, -0.040665, -0.106725,
		29.257389, 29.113274, 36.108925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.689791, 28.906063, 36.864792>,  <29.952808, 29.141739, 36.183632>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.689791, 28.906063, 36.864792> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.400129, 28.837944, 36.597481>,  <29.226332, 28.797073, 36.437092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.400129, 28.837944, 36.597481>,  <29.689791, 28.906063, 36.864792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.400129, 28.837944, 36.597481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055052, -0.951664, 0.302167,
		-0.687438, 0.255605, 0.679776,
		-0.724153, -0.170298, -0.668282,
		29.182884, 28.786854, 36.396996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.326284, 28.414122, 37.226765>,  <29.689791, 28.906063, 36.864792>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.326284, 28.414122, 37.226765> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.164557, 28.373760, 36.863152>,  <29.067520, 28.349543, 36.644981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.164557, 28.373760, 36.863152>,  <29.326284, 28.414122, 37.226765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.164557, 28.373760, 36.863152> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148671, -0.973426, 0.174178,
		-0.902454, 0.205571, 0.378573,
		-0.404319, -0.100905, -0.909035,
		29.043261, 28.343489, 36.590443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.671982, 28.161648, 37.291161>,  <29.326284, 28.414122, 37.226765>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.671982, 28.161648, 37.291161> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.738539, 28.080242, 36.905228>,  <28.778473, 28.031399, 36.673668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.738539, 28.080242, 36.905228>,  <28.671982, 28.161648, 37.291161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.738539, 28.080242, 36.905228> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266327, -0.951379, 0.154749,
		-0.949411, 0.231210, -0.212509,
		0.166398, -0.203517, -0.964828,
		28.788456, 28.019188, 36.615780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.125378, 27.910244, 37.036297>,  <28.671982, 28.161648, 37.291161>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.125378, 27.910244, 37.036297> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.397139, 27.756422, 36.786327>,  <28.560194, 27.664129, 36.636345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.397139, 27.756422, 36.786327>,  <28.125378, 27.910244, 37.036297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.397139, 27.756422, 36.786327> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356350, -0.917410, 0.177127,
		-0.641426, 0.102351, -0.760326,
		0.679402, -0.384556, -0.624924,
		28.600960, 27.641056, 36.598850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.756636, 27.358538, 36.845043>,  <28.125378, 27.910244, 37.036297>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.756636, 27.358538, 36.845043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.114817, 27.266972, 36.692326>,  <28.329725, 27.212032, 36.600697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.114817, 27.266972, 36.692326>,  <27.756636, 27.358538, 36.845043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.114817, 27.266972, 36.692326> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259927, -0.965132, -0.030949,
		-0.361393, 0.126951, -0.923731,
		0.895451, -0.228918, -0.381790,
		28.383451, 27.198296, 36.577789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.735340, 26.791164, 36.277164>,  <27.756636, 27.358538, 36.845043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.735340, 26.791164, 36.277164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.091906, 26.791494, 36.458443>,  <28.305845, 26.791693, 36.567207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.091906, 26.791494, 36.458443>,  <27.735340, 26.791164, 36.277164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.091906, 26.791494, 36.458443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081035, -0.983592, 0.161183,
		0.445889, -0.180405, -0.876720,
		0.891412, 0.000825, 0.453192,
		28.359329, 26.791742, 36.594398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.044662, 26.249903, 35.979546>,  <27.735340, 26.791164, 36.277164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.044662, 26.249903, 35.979546> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.253275, 26.302475, 36.316765>,  <28.378443, 26.334019, 36.519096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.253275, 26.302475, 36.316765>,  <28.044662, 26.249903, 35.979546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.253275, 26.302475, 36.316765> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207568, -0.938838, 0.274769,
		0.827598, -0.318291, -0.462355,
		0.521533, 0.131429, 0.843048,
		28.409735, 26.341904, 36.569679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.484745, 32.674740, 47.027077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.103153, 32.738659, 46.925579>,  <38.874199, 32.777012, 46.864681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.103153, 32.738659, 46.925579>,  <39.484745, 32.674740, 47.027077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.103153, 32.738659, 46.925579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145127, 0.494455, 0.857002,
		0.262414, 0.854388, -0.448508,
		-0.953979, 0.159799, -0.253747,
		38.816959, 32.786598, 46.849457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274563, 33.411499, 47.107994>,  <39.484745, 32.674740, 47.027077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.274563, 33.411499, 47.107994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.929054, 33.220600, 47.172661>,  <38.721748, 33.106060, 47.211460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.929054, 33.220600, 47.172661>,  <39.274563, 33.411499, 47.107994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.929054, 33.220600, 47.172661> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122229, 0.509705, 0.851623,
		-0.488840, 0.715844, -0.498601,
		-0.863768, -0.477251, 0.161667,
		38.669926, 33.077423, 47.221161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.825253, 33.891815, 47.357754>,  <39.274563, 33.411499, 47.107994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.825253, 33.891815, 47.357754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.683693, 33.539757, 47.484306>,  <38.598755, 33.328522, 47.560238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.683693, 33.539757, 47.484306>,  <38.825253, 33.891815, 47.357754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.683693, 33.539757, 47.484306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009972, 0.341809, 0.939717,
		-0.935229, 0.329413, -0.129744,
		-0.353902, -0.880144, 0.316385,
		38.577522, 33.275715, 47.579220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.322662, 34.107693, 47.879971>,  <38.825253, 33.891815, 47.357754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.322662, 34.107693, 47.879971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.449635, 33.731743, 47.930355>,  <38.525818, 33.506172, 47.960587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.449635, 33.731743, 47.930355>,  <38.322662, 34.107693, 47.879971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.449635, 33.731743, 47.930355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114860, 0.169963, 0.978734,
		-0.941299, -0.296213, 0.161906,
		0.317432, -0.939878, 0.125963,
		38.544865, 33.449780, 47.968143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006451, 33.899372, 48.540241>,  <38.322662, 34.107693, 47.879971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006451, 33.899372, 48.540241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.290085, 33.629486, 48.458313>,  <38.460266, 33.467556, 48.409157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.290085, 33.629486, 48.458313>,  <38.006451, 33.899372, 48.540241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.290085, 33.629486, 48.458313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221261, -0.062894, 0.973184,
		-0.669505, -0.735393, 0.104691,
		0.709089, -0.674715, -0.204822,
		38.502811, 33.427071, 48.396866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.847904, 33.370651, 48.944069>,  <38.006451, 33.899372, 48.540241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.847904, 33.370651, 48.944069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.228806, 33.288723, 48.853508>,  <38.457348, 33.239567, 48.799171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.228806, 33.288723, 48.853508>,  <37.847904, 33.370651, 48.944069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228806, 33.288723, 48.853508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224447, -0.033066, 0.973925,
		-0.206963, -0.978241, 0.014484,
		0.952255, -0.204817, -0.226406,
		38.514481, 33.227280, 48.785587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.170670, 32.747425, 49.380070>,  <37.847904, 33.370651, 48.944069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.170670, 32.747425, 49.380070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.480972, 32.976051, 49.273094>,  <38.667152, 33.113228, 49.208908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.480972, 32.976051, 49.273094>,  <38.170670, 32.747425, 49.380070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.480972, 32.976051, 49.273094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376927, -0.079795, 0.922800,
		0.506097, -0.816670, -0.277338,
		0.775753, 0.571562, -0.267440,
		38.713699, 33.147518, 49.192863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836987, 32.429417, 49.702248>,  <38.170670, 32.747425, 49.380070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.836987, 32.429417, 49.702248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.911057, 32.806370, 49.590801>,  <38.955498, 33.032543, 49.523933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.911057, 32.806370, 49.590801>,  <38.836987, 32.429417, 49.702248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.911057, 32.806370, 49.590801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485020, 0.158933, 0.859940,
		0.854672, -0.294375, -0.427643,
		0.185178, 0.942382, -0.278613,
		38.966610, 33.089085, 49.507217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.510670, 32.551662, 49.858955>,  <38.836987, 32.429417, 49.702248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.510670, 32.551662, 49.858955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.367859, 32.925064, 49.845695>,  <39.282173, 33.149105, 49.837742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.367859, 32.925064, 49.845695>,  <39.510670, 32.551662, 49.858955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.367859, 32.925064, 49.845695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347451, 0.165659, 0.922949,
		0.867069, 0.318002, -0.383492,
		-0.357028, 0.933505, -0.033147,
		39.260750, 33.205116, 49.835751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036747, 32.968327, 50.114059>,  <39.510670, 32.551662, 49.858955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.036747, 32.968327, 50.114059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.710251, 33.193626, 50.165451>,  <39.514355, 33.328804, 50.196285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.710251, 33.193626, 50.165451>,  <40.036747, 32.968327, 50.114059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.710251, 33.193626, 50.165451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199774, 0.066521, 0.977581,
		0.542072, 0.823608, -0.166819,
		-0.816240, 0.563246, 0.128477,
		39.465378, 33.362598, 50.203995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.244980, 33.595562, 50.523529>,  <40.036747, 32.968327, 50.114059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.244980, 33.595562, 50.523529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.854343, 33.621246, 50.605640>,  <39.619961, 33.636658, 50.654907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.854343, 33.621246, 50.605640>,  <40.244980, 33.595562, 50.523529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.854343, 33.621246, 50.605640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204853, -0.013255, 0.978703,
		0.065560, 0.997848, -0.000208,
		-0.976595, 0.064207, 0.205281,
		39.561363, 33.640507, 50.667225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051174, 34.200455, 50.909069>,  <40.244980, 33.595562, 50.523529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.051174, 34.200455, 50.909069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.781815, 33.918289, 50.997551>,  <39.620197, 33.748989, 51.050640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.781815, 33.918289, 50.997551>,  <40.051174, 34.200455, 50.909069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.781815, 33.918289, 50.997551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297972, 0.014850, 0.954459,
		-0.676570, 0.708644, 0.200192,
		-0.673399, -0.705410, 0.221203,
		39.579796, 33.706665, 51.063911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798759, 34.333931, 51.659660>,  <40.051174, 34.200455, 50.909069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798759, 34.333931, 51.659660> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.752193, 33.958874, 51.528652>,  <39.724255, 33.733841, 51.450047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.752193, 33.958874, 51.528652>,  <39.798759, 34.333931, 51.659660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752193, 33.958874, 51.528652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086632, -0.338095, 0.937116,
		-0.989415, 0.080723, 0.120591,
		-0.116418, -0.937644, -0.327523,
		39.717270, 33.677582, 51.430397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.013721, 34.469585, 51.603691>,  <39.798759, 34.333931, 51.659660>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.013721, 34.469585, 51.603691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.968689, 34.724564, 51.298801>,  <38.941669, 34.877548, 51.115868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.968689, 34.724564, 51.298801>,  <39.013721, 34.469585, 51.603691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.968689, 34.724564, 51.298801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979548, -0.199945, -0.022536,
		-0.166769, 0.744102, 0.646915,
		-0.112579, 0.637443, -0.762228,
		38.934914, 34.915798, 51.070133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222466, 34.519821, 51.579620>,  <39.013721, 34.469585, 51.603691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222466, 34.519821, 51.579620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.965874, 34.810627, 51.677559>,  <37.811916, 34.985111, 51.736320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.965874, 34.810627, 51.677559>,  <38.222466, 34.519821, 51.579620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965874, 34.810627, 51.677559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027003, 0.297569, -0.954318,
		-0.766662, -0.618790, -0.171254,
		-0.641482, 0.727016, 0.244844,
		37.773430, 35.028732, 51.751011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563251, 34.463726, 51.247234>,  <38.222466, 34.519821, 51.579620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.563251, 34.463726, 51.247234> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.640285, 34.849724, 51.318439>,  <37.686504, 35.081322, 51.361160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.640285, 34.849724, 51.318439>,  <37.563251, 34.463726, 51.247234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640285, 34.849724, 51.318439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091872, 0.198340, -0.975818,
		-0.976970, 0.171575, 0.126854,
		0.192586, 0.964999, 0.178009,
		37.698063, 35.139225, 51.371841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326447, 34.741863, 50.631920>,  <37.563251, 34.463726, 51.247234>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.326447, 34.741863, 50.631920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.486996, 35.073196, 50.788258>,  <37.583324, 35.271996, 50.882061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.486996, 35.073196, 50.788258>,  <37.326447, 34.741863, 50.631920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486996, 35.073196, 50.788258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104160, 0.465243, -0.879033,
		-0.909973, 0.312109, 0.273015,
		0.401372, 0.828334, 0.390849,
		37.607407, 35.321697, 50.905514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.886551, 35.330658, 50.619041>,  <37.326447, 34.741863, 50.631920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.886551, 35.330658, 50.619041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.260353, 35.473026, 50.620560>,  <37.484634, 35.558449, 50.621471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.260353, 35.473026, 50.620560>,  <36.886551, 35.330658, 50.619041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.260353, 35.473026, 50.620560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184885, 0.494490, -0.849292,
		-0.304162, 0.792967, 0.527910,
		0.934507, 0.355925, 0.003797,
		37.540707, 35.579803, 50.621700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831486, 36.011864, 50.467918>,  <36.886551, 35.330658, 50.619041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.831486, 36.011864, 50.467918> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.209732, 35.922363, 50.373470>,  <37.436680, 35.868664, 50.316799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.209732, 35.922363, 50.373470>,  <36.831486, 36.011864, 50.467918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.209732, 35.922363, 50.373470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064207, 0.583216, -0.809775,
		0.318896, 0.780895, 0.537131,
		0.945612, -0.223746, -0.236124,
		37.493416, 35.855240, 50.302631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243244, 36.698067, 50.456520>,  <36.831486, 36.011864, 50.467918>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243244, 36.698067, 50.456520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.429546, 36.420654, 50.236671>,  <37.541328, 36.254208, 50.104763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.429546, 36.420654, 50.236671>,  <37.243244, 36.698067, 50.456520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.429546, 36.420654, 50.236671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083969, 0.652936, -0.752744,
		0.880923, 0.304441, 0.362341,
		0.465752, -0.693535, -0.549623,
		37.569271, 36.212593, 50.071785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613346, 37.034187, 49.929653>,  <37.243244, 36.698067, 50.456520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.613346, 37.034187, 49.929653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.662807, 36.672531, 49.766075>,  <37.692482, 36.455536, 49.667927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.662807, 36.672531, 49.766075>,  <37.613346, 37.034187, 49.929653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.662807, 36.672531, 49.766075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047999, 0.406177, -0.912533,
		0.991164, 0.132464, 0.006826,
		0.123651, -0.904142, -0.408946,
		37.699902, 36.401287, 49.643391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151714, 37.127106, 49.421040>,  <37.613346, 37.034187, 49.929653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.151714, 37.127106, 49.421040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.929367, 36.808041, 49.327450>,  <37.795959, 36.616604, 49.271294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.929367, 36.808041, 49.327450>,  <38.151714, 37.127106, 49.421040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929367, 36.808041, 49.327450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024668, 0.297177, -0.954504,
		0.830902, -0.524810, -0.184870,
		-0.555872, -0.797659, -0.233979,
		37.762604, 36.568745, 49.257256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494125, 36.769760, 48.788811>,  <38.151714, 37.127106, 49.421040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494125, 36.769760, 48.788811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.106461, 36.673691, 48.810860>,  <37.873863, 36.616047, 48.824089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.106461, 36.673691, 48.810860>,  <38.494125, 36.769760, 48.788811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.106461, 36.673691, 48.810860> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083649, 0.110224, -0.990380,
		0.231794, -0.964450, -0.126916,
		-0.969162, -0.240180, 0.055126,
		37.815712, 36.601639, 48.827396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401863, 36.474655, 48.145023>,  <38.494125, 36.769760, 48.788811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401863, 36.474655, 48.145023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.038525, 36.559830, 48.289009>,  <37.820522, 36.610935, 48.375401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.038525, 36.559830, 48.289009>,  <38.401863, 36.474655, 48.145023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038525, 36.559830, 48.289009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336178, 0.140257, -0.931296,
		-0.248794, -0.966947, -0.055817,
		-0.908343, 0.212937, 0.359961,
		37.766022, 36.623711, 48.396996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077587, 36.137970, 47.673168>,  <38.401863, 36.474655, 48.145023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.077587, 36.137970, 47.673168> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.800564, 36.369415, 47.845474>,  <37.634350, 36.508282, 47.948860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.800564, 36.369415, 47.845474>,  <38.077587, 36.137970, 47.673168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800564, 36.369415, 47.845474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323637, 0.284457, -0.902409,
		-0.644685, -0.764386, -0.009742,
		-0.692560, 0.578617, 0.430769,
		37.592796, 36.542999, 47.974705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372734, 35.891415, 47.491703>,  <38.077587, 36.137970, 47.673168>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372734, 35.891415, 47.491703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.355942, 36.279896, 47.585522>,  <37.345867, 36.512985, 47.641811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.355942, 36.279896, 47.585522>,  <37.372734, 35.891415, 47.491703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355942, 36.279896, 47.585522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217189, 0.220265, -0.950953,
		-0.975226, -0.090864, 0.201687,
		-0.041983, 0.971199, 0.234543,
		37.343346, 36.571255, 47.655884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957424, 36.161884, 46.999264>,  <37.372734, 35.891415, 47.491703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.957424, 36.161884, 46.999264> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.102146, 36.504196, 47.147182>,  <37.188980, 36.709583, 47.235931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.102146, 36.504196, 47.147182>,  <36.957424, 36.161884, 46.999264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.102146, 36.504196, 47.147182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171880, 0.451099, -0.875767,
		-0.916274, 0.253292, 0.310298,
		0.361800, 0.855776, 0.369794,
		37.210686, 36.760929, 47.258121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.280457, 36.651913, 46.924080>,  <36.957424, 36.161884, 46.999264>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.280457, 36.651913, 46.924080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.651638, 36.800968, 46.926914>,  <36.874348, 36.890400, 46.928616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.651638, 36.800968, 46.926914>,  <36.280457, 36.651913, 46.924080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651638, 36.800968, 46.926914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148099, 0.386117, -0.910484,
		-0.342019, 0.843833, 0.413484,
		0.927949, 0.372639, 0.007088,
		36.930023, 36.912762, 46.929039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.880928, 37.194714, 47.234840>,  <36.280457, 36.651913, 46.924080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.880928, 37.194714, 47.234840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.496704, 37.305935, 47.236244>,  <35.266171, 37.372669, 47.237087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.496704, 37.305935, 47.236244>,  <35.880928, 37.194714, 47.234840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496704, 37.305935, 47.236244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088982, -0.319319, 0.943461,
		0.263453, 0.905938, 0.331466,
		-0.960560, 0.278052, 0.003514,
		35.208538, 37.389351, 47.237297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.804714, 37.567284, 47.855412>,  <35.880928, 37.194714, 47.234840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.804714, 37.567284, 47.855412> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.432800, 37.465027, 47.749477>,  <35.209652, 37.403671, 47.685917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.432800, 37.465027, 47.749477>,  <35.804714, 37.567284, 47.855412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.432800, 37.465027, 47.749477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209770, -0.223220, 0.951929,
		-0.302473, 0.940648, 0.153921,
		-0.929788, -0.255645, -0.264838,
		35.153862, 37.388332, 47.670025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.321423, 37.753220, 48.380775>,  <35.804714, 37.567284, 47.855412>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.321423, 37.753220, 48.380775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.129772, 37.463634, 48.182251>,  <35.014782, 37.289883, 48.063137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.129772, 37.463634, 48.182251>,  <35.321423, 37.753220, 48.380775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129772, 37.463634, 48.182251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340604, -0.367780, 0.865290,
		-0.808969, 0.583624, -0.070373,
		-0.479123, -0.723962, -0.496307,
		34.986034, 37.246445, 48.033360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652489, 37.643848, 48.624393>,  <35.321423, 37.753220, 48.380775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.652489, 37.643848, 48.624393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.723804, 37.290131, 48.451771>,  <34.766594, 37.077900, 48.348198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.723804, 37.290131, 48.451771>,  <34.652489, 37.643848, 48.624393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.723804, 37.290131, 48.451771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444697, -0.463651, 0.766337,
		-0.877757, 0.055279, -0.475907,
		0.178293, -0.884292, -0.431555,
		34.777294, 37.024841, 48.322304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075039, 37.312275, 48.839230>,  <34.652489, 37.643848, 48.624393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.075039, 37.312275, 48.839230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.325172, 37.018002, 48.735126>,  <34.475250, 36.841438, 48.672665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.325172, 37.018002, 48.735126>,  <34.075039, 37.312275, 48.839230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325172, 37.018002, 48.735126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257678, -0.509465, 0.821004,
		-0.736590, -0.446336, -0.508153,
		0.625330, -0.735683, -0.260255,
		34.512772, 36.797298, 48.657051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.725128, 36.695293, 48.987797>,  <34.075039, 37.312275, 48.839230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.725128, 36.695293, 48.987797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.111504, 36.592289, 48.977531>,  <34.343327, 36.530487, 48.971371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.111504, 36.592289, 48.977531>,  <33.725128, 36.695293, 48.987797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.111504, 36.592289, 48.977531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094556, -0.443523, 0.891261,
		-0.240891, -0.858473, -0.452764,
		0.965935, -0.257508, -0.025667,
		34.401283, 36.515038, 48.969830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749958, 36.182320, 49.446377>,  <33.725128, 36.695293, 48.987797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749958, 36.182320, 49.446377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.132835, 36.295086, 49.420128>,  <34.362560, 36.362747, 49.404377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.132835, 36.295086, 49.420128>,  <33.749958, 36.182320, 49.446377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.132835, 36.295086, 49.420128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144939, -0.270573, 0.951726,
		0.250556, -0.920495, -0.299851,
		0.957191, 0.281921, -0.065622,
		34.419994, 36.379662, 49.400440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.435123, 35.588547, 49.125774>,  <33.749958, 36.182320, 49.446377>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.435123, 35.588547, 49.125774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.059315, 35.566292, 49.260944>,  <32.833828, 35.552937, 49.342045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.059315, 35.566292, 49.260944>,  <33.435123, 35.588547, 49.125774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.059315, 35.566292, 49.260944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342312, 0.122029, -0.931628,
		0.010599, -0.990966, -0.133696,
		-0.939526, -0.055640, 0.337926,
		32.777458, 35.549599, 49.362324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.989830, 35.222038, 48.607662>,  <33.435123, 35.588547, 49.125774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.989830, 35.222038, 48.607662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.688526, 35.413719, 48.787868>,  <32.507744, 35.528728, 48.895992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.688526, 35.413719, 48.787868>,  <32.989830, 35.222038, 48.607662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.688526, 35.413719, 48.787868> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419689, 0.177207, -0.890201,
		-0.506425, -0.859627, 0.067635,
		-0.753256, 0.479206, 0.450518,
		32.462547, 35.557480, 48.923023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.398525, 34.967419, 48.334957>,  <32.989830, 35.222038, 48.607662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.398525, 34.967419, 48.334957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.262325, 35.310204, 48.489712>,  <32.180607, 35.515873, 48.582565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.262325, 35.310204, 48.489712>,  <32.398525, 34.967419, 48.334957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.262325, 35.310204, 48.489712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550669, 0.151771, -0.820810,
		-0.762120, -0.492529, 0.420224,
		-0.340495, 0.856960, 0.386887,
		32.160175, 35.567291, 48.605778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.700432, 35.019413, 48.202530>,  <32.398525, 34.967419, 48.334957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.700432, 35.019413, 48.202530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.819933, 35.394630, 48.272762>,  <31.891634, 35.619759, 48.314899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.819933, 35.394630, 48.272762>,  <31.700432, 35.019413, 48.202530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819933, 35.394630, 48.272762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558433, 0.321026, -0.764915,
		-0.773886, 0.130472, 0.619740,
		0.298753, 0.938040, 0.175577,
		31.909559, 35.676041, 48.325436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.136414, 35.431175, 48.174934>,  <31.700432, 35.019413, 48.202530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.136414, 35.431175, 48.174934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.443165, 35.675785, 48.097023>,  <31.627216, 35.822552, 48.050278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.443165, 35.675785, 48.097023>,  <31.136414, 35.431175, 48.174934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.443165, 35.675785, 48.097023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417470, 0.244801, -0.875095,
		-0.487458, 0.752405, 0.443024,
		0.766879, 0.611522, -0.194776,
		31.673229, 35.859241, 48.038589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.884506, 36.100544, 47.863686>,  <31.136414, 35.431175, 48.174934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.884506, 36.100544, 47.863686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.272043, 36.081493, 47.766464>,  <31.504566, 36.070065, 47.708134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.272043, 36.081493, 47.766464>,  <30.884506, 36.100544, 47.863686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.272043, 36.081493, 47.766464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191250, 0.479666, -0.856355,
		0.157367, 0.876158, 0.455613,
		0.968844, -0.047626, -0.243049,
		31.562696, 36.067207, 47.693550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.910213, 36.759228, 47.480698>,  <30.884506, 36.100544, 47.863686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.910213, 36.759228, 47.480698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.215508, 36.522438, 47.377136>,  <31.398684, 36.380363, 47.314999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.215508, 36.522438, 47.377136>,  <30.910213, 36.759228, 47.480698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.215508, 36.522438, 47.377136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113475, 0.271671, -0.955677,
		0.636078, 0.758786, 0.140174,
		0.763236, -0.591978, -0.258907,
		31.444479, 36.344845, 47.299465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.362160, 32.530605, 51.554577> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.726982, 32.590176, 51.401752>,  <36.945877, 32.625919, 51.310059>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.726982, 32.590176, 51.401752>,  <36.362160, 32.530605, 51.554577>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726982, 32.590176, 51.401752> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408787, 0.256867, -0.875736,
		-0.032285, 0.954903, 0.295159,
		0.912059, 0.148930, -0.382059,
		37.000599, 32.634853, 51.287136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379391, 33.226421, 51.171730>,  <36.362160, 32.530605, 51.554577>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379391, 33.226421, 51.171730> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.680710, 33.008255, 51.024723>,  <36.861500, 32.877357, 50.936520>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.680710, 33.008255, 51.024723>,  <36.379391, 33.226421, 51.171730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.680710, 33.008255, 51.024723> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366877, 0.115308, -0.923096,
		0.545847, 0.830198, -0.113238,
		0.753294, -0.545413, -0.367521,
		36.906696, 32.844631, 50.914467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706116, 33.667065, 50.600883>,  <36.379391, 33.226421, 51.171730>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706116, 33.667065, 50.600883> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.794525, 33.279495, 50.556454>,  <36.847569, 33.046955, 50.529797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.794525, 33.279495, 50.556454>,  <36.706116, 33.667065, 50.600883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.794525, 33.279495, 50.556454> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427691, 0.006062, -0.903905,
		0.876488, 0.247287, -0.413060,
		0.221020, -0.968923, -0.111075,
		36.860832, 32.988819, 50.523132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626938, 33.600513, 49.931526>,  <36.706116, 33.667065, 50.600883>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626938, 33.600513, 49.931526> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.673447, 33.212227, 50.015621>,  <36.701351, 32.979256, 50.066078>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.673447, 33.212227, 50.015621>,  <36.626938, 33.600513, 49.931526>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.673447, 33.212227, 50.015621> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380190, -0.239047, -0.893483,
		0.917571, 0.023959, -0.396850,
		0.116273, -0.970712, 0.210233,
		36.708328, 32.921013, 50.078690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007572, 33.253704, 49.378010>,  <36.626938, 33.600513, 49.931526>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.007572, 33.253704, 49.378010> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.819447, 32.945866, 49.550762>,  <36.706570, 32.761162, 49.654415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.819447, 32.945866, 49.550762>,  <37.007572, 33.253704, 49.378010>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.819447, 32.945866, 49.550762> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344478, -0.290465, -0.892729,
		0.812488, -0.568640, -0.128499,
		-0.470318, -0.769596, 0.431883,
		36.678352, 32.714985, 49.680328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195454, 32.704563, 49.012932>,  <37.007572, 33.253704, 49.378010>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.195454, 32.704563, 49.012932> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.843388, 32.626507, 49.186016>,  <36.632149, 32.579674, 49.289867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.843388, 32.626507, 49.186016>,  <37.195454, 32.704563, 49.012932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843388, 32.626507, 49.186016> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379031, -0.259836, -0.888156,
		0.285751, -0.945729, 0.154732,
		-0.880160, -0.195143, 0.432709,
		36.579338, 32.567963, 49.315830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117218, 31.985029, 48.853020>,  <37.195454, 32.704563, 49.012932>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.117218, 31.985029, 48.853020> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.772797, 32.171131, 48.935112>,  <36.566143, 32.282791, 48.984367>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.772797, 32.171131, 48.935112>,  <37.117218, 31.985029, 48.853020>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.772797, 32.171131, 48.935112> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411882, -0.401433, -0.818049,
		-0.298215, -0.788918, 0.537287,
		-0.861058, 0.465253, 0.205228,
		36.514481, 32.310707, 48.996681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623932, 31.510836, 48.613853>,  <37.117218, 31.985029, 48.853020>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.623932, 31.510836, 48.613853> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.417694, 31.852505, 48.640839>,  <36.293949, 32.057507, 48.657032>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.417694, 31.852505, 48.640839>,  <36.623932, 31.510836, 48.613853>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417694, 31.852505, 48.640839> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466469, -0.213778, -0.858316,
		-0.718726, -0.474016, 0.508667,
		-0.515597, 0.854172, 0.067466,
		36.263016, 32.108757, 48.661079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965843, 31.284067, 48.437119>,  <36.623932, 31.510836, 48.613853>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.965843, 31.284067, 48.437119> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.997391, 31.679098, 48.382759>,  <36.016319, 31.916117, 48.350143>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.997391, 31.679098, 48.382759>,  <35.965843, 31.284067, 48.437119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997391, 31.679098, 48.382759> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304830, -0.105905, -0.946500,
		-0.949136, 0.116075, 0.292691,
		0.078868, 0.987578, -0.135901,
		36.021049, 31.975372, 48.341988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.272686, 31.486996, 48.092415>,  <35.965843, 31.284067, 48.437119>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.272686, 31.486996, 48.092415> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.532269, 31.784712, 48.029320>,  <35.688019, 31.963343, 47.991463>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.532269, 31.784712, 48.029320>,  <35.272686, 31.486996, 48.092415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.532269, 31.784712, 48.029320> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213172, -0.021137, -0.976786,
		-0.730348, 0.667519, 0.144945,
		0.648960, 0.744292, -0.157734,
		35.726955, 32.007999, 47.981998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859726, 32.053436, 47.894894>,  <35.272686, 31.486996, 48.092415>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.859726, 32.053436, 47.894894> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.233650, 32.117142, 47.767918>,  <35.458004, 32.155365, 47.691730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.233650, 32.117142, 47.767918>,  <34.859726, 32.053436, 47.894894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233650, 32.117142, 47.767918> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339848, 0.141530, -0.929770,
		-0.103154, 0.977038, 0.186430,
		0.934806, 0.159267, -0.317445,
		35.514091, 32.164921, 47.672684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.840656, 32.661289, 47.521328>,  <34.859726, 32.053436, 47.894894>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.840656, 32.661289, 47.521328> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.176636, 32.486588, 47.392498>,  <35.378223, 32.381767, 47.315201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.176636, 32.486588, 47.392498>,  <34.840656, 32.661289, 47.521328>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176636, 32.486588, 47.392498> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342425, 0.033850, -0.938935,
		0.420984, 0.898945, -0.121122,
		0.839951, -0.436752, -0.322072,
		35.428619, 32.355560, 47.295876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351711, 33.192558, 47.628426>,  <34.840656, 32.661289, 47.521328>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351711, 33.192558, 47.628426> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.967354, 33.138058, 47.531994>,  <33.736740, 33.105358, 47.474136>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.967354, 33.138058, 47.531994>,  <34.351711, 33.192558, 47.628426>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967354, 33.138058, 47.531994> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224036, -0.129177, 0.965982,
		-0.162760, 0.982216, 0.093600,
		-0.960894, -0.136253, -0.241077,
		33.679085, 33.097183, 47.459671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926540, 33.598930, 48.127266>,  <34.351711, 33.192558, 47.628426>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926540, 33.598930, 48.127266> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.701241, 33.306297, 47.973629>,  <33.566059, 33.130718, 47.881447>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.701241, 33.306297, 47.973629>,  <33.926540, 33.598930, 48.127266>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.701241, 33.306297, 47.973629> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257427, -0.286342, 0.922897,
		-0.785161, 0.618701, -0.027047,
		-0.563253, -0.731585, -0.384095,
		33.532265, 33.086823, 47.858402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312389, 33.669041, 48.455173>,  <33.926540, 33.598930, 48.127266>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312389, 33.669041, 48.455173> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.280899, 33.297691, 48.309887>,  <33.262005, 33.074883, 48.222717>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.280899, 33.297691, 48.309887>,  <33.312389, 33.669041, 48.455173>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.280899, 33.297691, 48.309887> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328771, -0.319781, 0.888622,
		-0.941122, 0.189375, -0.280046,
		-0.078729, -0.928373, -0.363215,
		33.257278, 33.019180, 48.200924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.627777, 33.461681, 48.675854>,  <33.312389, 33.669041, 48.455173>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.627777, 33.461681, 48.675854> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.806511, 33.111916, 48.600239>,  <32.913750, 32.902054, 48.554871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.806511, 33.111916, 48.600239>,  <32.627777, 33.461681, 48.675854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.806511, 33.111916, 48.600239> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406495, -0.386680, 0.827793,
		-0.796934, -0.293040, -0.528227,
		0.446831, -0.874418, -0.189040,
		32.940559, 32.849590, 48.543526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.119930, 32.876423, 48.705559>,  <32.627777, 33.461681, 48.675854>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.119930, 32.876423, 48.705559> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.472095, 32.721748, 48.815357>,  <32.683395, 32.628944, 48.881237>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.472095, 32.721748, 48.815357>,  <32.119930, 32.876423, 48.705559>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.472095, 32.721748, 48.815357> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420339, -0.368400, 0.829215,
		-0.219522, -0.845432, -0.486883,
		0.880412, -0.386687, 0.274496,
		32.736217, 32.605743, 48.897705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.943140, 32.210064, 49.093185>,  <32.119930, 32.876423, 48.705559>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.943140, 32.210064, 49.093185> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.329243, 32.282040, 49.168972>,  <32.560905, 32.325226, 49.214443>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.329243, 32.282040, 49.168972>,  <31.943140, 32.210064, 49.093185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.329243, 32.282040, 49.168972> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071513, -0.515515, 0.853891,
		0.251320, -0.837776, -0.484738,
		0.965259, 0.179935, 0.189471,
		32.618820, 32.336021, 49.225815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.084137, 31.637152, 49.367279>,  <31.943140, 32.210064, 49.093185>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.084137, 31.637152, 49.367279> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.371422, 31.891747, 49.479748>,  <32.543793, 32.044502, 49.547230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.371422, 31.891747, 49.479748>,  <32.084137, 31.637152, 49.367279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.371422, 31.891747, 49.479748> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037680, -0.367920, 0.929094,
		0.694804, -0.677880, -0.240261,
		0.718211, 0.636485, 0.281175,
		32.586884, 32.082691, 49.564098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.544273, 31.250118, 49.858150>,  <32.084137, 31.637152, 49.367279>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.544273, 31.250118, 49.858150> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.637474, 31.628000, 49.950447>,  <32.693394, 31.854729, 50.005825>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.637474, 31.628000, 49.950447>,  <32.544273, 31.250118, 49.858150>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.637474, 31.628000, 49.950447> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075460, -0.218996, 0.972804,
		0.969544, -0.244079, 0.020261,
		0.233004, 0.944704, 0.230744,
		32.707375, 31.911411, 50.019669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.870869, 31.116276, 50.416283>,  <32.544273, 31.250118, 49.858150>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.870869, 31.116276, 50.416283> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.805779, 31.510525, 50.434494>,  <32.766724, 31.747074, 50.445419>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.805779, 31.510525, 50.434494>,  <32.870869, 31.116276, 50.416283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.805779, 31.510525, 50.434494> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091537, -0.061022, 0.993930,
		0.982416, 0.157569, 0.100151,
		-0.162724, 0.985621, 0.045526,
		32.756962, 31.806211, 50.448151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.420391, 31.462313, 50.899651>,  <32.870869, 31.116276, 50.416283>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.420391, 31.462313, 50.899651> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.104862, 31.705410, 50.862984>,  <32.915543, 31.851269, 50.840984>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.104862, 31.705410, 50.862984>,  <33.420391, 31.462313, 50.899651>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.104862, 31.705410, 50.862984> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105894, 0.012531, 0.994298,
		0.605425, 0.794036, 0.054471,
		-0.788827, 0.607741, -0.091671,
		32.868214, 31.887732, 50.835484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.433247, 32.057426, 51.318787>,  <33.420391, 31.462313, 50.899651>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.433247, 32.057426, 51.318787> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.037498, 32.074711, 51.263252>,  <32.800049, 32.085079, 51.229931>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.037498, 32.074711, 51.263252>,  <33.433247, 32.057426, 51.318787>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.037498, 32.074711, 51.263252> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139952, -0.023867, 0.989871,
		0.039457, 0.998781, 0.029660,
		-0.989372, 0.043208, -0.138839,
		32.740688, 32.087673, 51.221600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.165764, 32.568687, 51.782284>,  <33.433247, 32.057426, 51.318787>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.165764, 32.568687, 51.782284> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.857666, 32.329803, 51.692787>,  <32.672806, 32.186474, 51.639091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.857666, 32.329803, 51.692787>,  <33.165764, 32.568687, 51.782284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857666, 32.329803, 51.692787> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247735, -0.043085, 0.967869,
		-0.587662, 0.800926, -0.114764,
		-0.770247, -0.597212, -0.223737,
		32.626591, 32.150639, 51.625668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.612400, 32.910839, 52.095390>,  <33.165764, 32.568687, 51.782284>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.612400, 32.910839, 52.095390> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.493546, 32.532806, 52.040947>,  <32.422234, 32.305988, 52.008282>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.493546, 32.532806, 52.040947>,  <32.612400, 32.910839, 52.095390>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.493546, 32.532806, 52.040947> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329233, -0.032394, 0.943693,
		-0.896277, 0.325221, -0.301527,
		-0.297141, -0.945083, -0.136107,
		32.404404, 32.249283, 52.000114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.832706, 32.863789, 52.129059>,  <32.612400, 32.910839, 52.095390>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.832706, 32.863789, 52.129059> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.002087, 32.515747, 52.229939>,  <32.103714, 32.306923, 52.290466>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.002087, 32.515747, 52.229939>,  <31.832706, 32.863789, 52.129059>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.002087, 32.515747, 52.229939> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372921, 0.086288, 0.923842,
		-0.825603, -0.485251, -0.287942,
		0.423450, -0.870107, 0.252199,
		32.129120, 32.254715, 52.305599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.950548, 33.278435, 51.550892>,  <31.832706, 32.863789, 52.129059>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.950548, 33.278435, 51.550892> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.204853, 33.581451, 51.610142>,  <32.357437, 33.763260, 51.645691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.204853, 33.581451, 51.610142>,  <31.950548, 33.278435, 51.550892>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.204853, 33.581451, 51.610142> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323655, 0.435840, -0.839816,
		-0.700754, 0.485980, 0.522271,
		0.635761, 0.757540, 0.148126,
		32.395580, 33.808712, 51.654579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.791012, 33.783142, 51.088905>,  <31.950548, 33.278435, 51.550892>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.791012, 33.783142, 51.088905> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.127319, 33.941082, 51.237068>,  <32.329105, 34.035847, 51.325966>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.127319, 33.941082, 51.237068>,  <31.791012, 33.783142, 51.088905>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.127319, 33.941082, 51.237068> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027544, 0.652083, -0.757647,
		-0.540692, 0.647209, 0.537376,
		0.840769, 0.394852, 0.370403,
		32.379551, 34.059536, 51.348190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.727760, 34.535625, 51.042416>,  <31.791012, 33.783142, 51.088905>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.727760, 34.535625, 51.042416> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.113297, 34.429794, 51.055122>,  <32.344620, 34.366295, 51.062744>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.113297, 34.429794, 51.055122>,  <31.727760, 34.535625, 51.042416>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.113297, 34.429794, 51.055122> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174074, 0.534880, -0.826802,
		0.201763, 0.802436, 0.561595,
		0.963841, -0.264577, 0.031764,
		32.402451, 34.350422, 51.064651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.026257, 35.202076, 51.176285>,  <31.727760, 34.535625, 51.042416>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.026257, 35.202076, 51.176285> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.274414, 34.939152, 51.005142>,  <32.423309, 34.781399, 50.902458>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.274414, 34.939152, 51.005142>,  <32.026257, 35.202076, 51.176285>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.274414, 34.939152, 51.005142> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206416, 0.663136, -0.719474,
		0.756643, 0.358039, 0.547083,
		0.620390, -0.657312, -0.427852,
		32.460529, 34.741959, 50.876785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.513546, 35.604958, 50.993603>,  <32.026257, 35.202076, 51.176285>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.513546, 35.604958, 50.993603> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.600979, 35.290344, 50.762573>,  <32.653439, 35.101578, 50.623955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.600979, 35.290344, 50.762573>,  <32.513546, 35.604958, 50.993603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.600979, 35.290344, 50.762573> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052579, 0.600521, -0.797878,
		0.974402, 0.144031, 0.172616,
		0.218579, -0.786530, -0.577576,
		32.666553, 35.054386, 50.589302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.006214, 35.839314, 50.561893>,  <32.513546, 35.604958, 50.993603>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.006214, 35.839314, 50.561893> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.862629, 35.516644, 50.374096>,  <32.776478, 35.323044, 50.261417>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.862629, 35.516644, 50.374096>,  <33.006214, 35.839314, 50.561893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.862629, 35.516644, 50.374096> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047537, 0.486564, -0.872351,
		0.932140, -0.335462, -0.136313,
		-0.358965, -0.806673, -0.469492,
		32.754940, 35.274643, 50.233250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408039, 35.734493, 49.952904>,  <33.006214, 35.839314, 50.561893>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408039, 35.734493, 49.952904> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.047249, 35.574928, 49.886795>,  <32.830776, 35.479191, 49.847130>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.047249, 35.574928, 49.886795>,  <33.408039, 35.734493, 49.952904>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.047249, 35.574928, 49.886795> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036379, 0.451595, -0.891481,
		0.430244, -0.798085, -0.421841,
		-0.901979, -0.398900, -0.165263,
		32.776657, 35.455257, 49.837215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.080498, 35.661972, 49.789616>,  <33.408039, 35.734493, 49.952904>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.080498, 35.661972, 49.789616> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.367516, 35.940357, 49.778477>,  <34.539726, 36.107388, 49.771793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.367516, 35.940357, 49.778477>,  <34.080498, 35.661972, 49.789616>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.367516, 35.940357, 49.778477> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322942, -0.297007, 0.898607,
		0.617125, -0.653779, -0.437869,
		0.717541, 0.695959, -0.027842,
		34.582779, 36.149143, 49.770123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898811, 35.364071, 49.738400>,  <34.080498, 35.661972, 49.789616>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898811, 35.364071, 49.738400> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.887299, 35.726177, 49.907948>,  <34.880390, 35.943439, 50.009678>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.887299, 35.726177, 49.907948>,  <34.898811, 35.364071, 49.738400>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887299, 35.726177, 49.907948> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408327, -0.376404, 0.831618,
		0.912382, 0.197011, -0.358812,
		-0.028780, 0.905266, 0.423869,
		34.878666, 35.997757, 50.035107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.606422, 35.515594, 50.049267>,  <34.898811, 35.364071, 49.738400>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.606422, 35.515594, 50.049267> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.374344, 35.791649, 50.222282>,  <35.235096, 35.957279, 50.326092>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.374344, 35.791649, 50.222282>,  <35.606422, 35.515594, 50.049267>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.374344, 35.791649, 50.222282> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399826, -0.221337, 0.889465,
		0.709586, 0.689005, -0.147514,
		-0.580196, 0.690132, 0.432540,
		35.200287, 35.998688, 50.352043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060234, 35.664986, 50.620338>,  <35.606422, 35.515594, 50.049267>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.060234, 35.664986, 50.620338> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.711586, 35.838013, 50.712566>,  <35.502396, 35.941830, 50.767902>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.711586, 35.838013, 50.712566>,  <36.060234, 35.664986, 50.620338>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.711586, 35.838013, 50.712566> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191614, -0.132268, 0.972517,
		0.451174, 0.891848, 0.032402,
		-0.871623, 0.432566, 0.230566,
		35.450100, 35.967781, 50.781734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130337, 36.229328, 51.189362>,  <36.060234, 35.664986, 50.620338>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130337, 36.229328, 51.189362> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.767826, 36.060310, 51.184956>,  <35.550320, 35.958900, 51.182312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.767826, 36.060310, 51.184956>,  <36.130337, 36.229328, 51.189362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.767826, 36.060310, 51.184956> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148727, -0.343171, 0.927423,
		-0.395663, 0.838860, 0.373852,
		-0.906273, -0.422549, -0.011019,
		35.495945, 35.933544, 51.181648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.838234, 36.420349, 51.874771>,  <36.130337, 36.229328, 51.189362>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.838234, 36.420349, 51.874771> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.649364, 36.088482, 51.755642>,  <35.536041, 35.889362, 51.684166>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.649364, 36.088482, 51.755642>,  <35.838234, 36.420349, 51.874771>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649364, 36.088482, 51.755642> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215029, -0.436056, 0.873853,
		-0.854876, 0.348573, 0.384298,
		-0.472176, -0.829670, -0.297820,
		35.507713, 35.839581, 51.666294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.599609, 36.080925, 52.467911>,  <35.838234, 36.420349, 51.874771>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.599609, 36.080925, 52.467911> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.520889, 35.778656, 52.218037>,  <35.473656, 35.597294, 52.068111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.520889, 35.778656, 52.218037>,  <35.599609, 36.080925, 52.467911>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520889, 35.778656, 52.218037> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001124, -0.637321, 0.770597,
		-0.980442, 0.150955, 0.126277,
		-0.196805, -0.755668, -0.624687,
		35.461849, 35.551956, 52.030632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136696, 35.629143, 52.684963>,  <35.599609, 36.080925, 52.467911>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136696, 35.629143, 52.684963> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.357143, 35.373837, 52.469971>,  <35.489410, 35.220654, 52.340977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.357143, 35.373837, 52.469971>,  <35.136696, 35.629143, 52.684963>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.357143, 35.373837, 52.469971> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092561, -0.593389, 0.799576,
		-0.829277, -0.490410, -0.267949,
		0.551118, -0.638269, -0.537477,
		35.522480, 35.182358, 52.308727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.029213, 34.994572, 52.958508>,  <35.136696, 35.629143, 52.684963>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.029213, 34.994572, 52.958508> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.355247, 34.881142, 52.756428>,  <35.550869, 34.813084, 52.635181>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.355247, 34.881142, 52.756428>,  <35.029213, 34.994572, 52.958508>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355247, 34.881142, 52.756428> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177553, -0.707780, 0.683756,
		-0.551464, -0.647018, -0.526551,
		0.815084, -0.283576, -0.505195,
		35.599773, 34.796070, 52.604870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.735645, 37.423347, 37.030399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.075775, 37.216518, 36.991234>,  <35.279854, 37.092422, 36.967735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.075775, 37.216518, 36.991234>,  <34.735645, 37.423347, 37.030399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075775, 37.216518, 36.991234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099639, -0.024514, 0.994722,
		-0.516740, -0.855592, 0.030675,
		0.850324, -0.517069, -0.097918,
		35.330872, 37.061398, 36.961857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.601498, 36.794518, 37.462074>,  <34.735645, 37.423347, 37.030399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.601498, 36.794518, 37.462074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.998646, 36.824837, 37.425259>,  <35.236935, 36.843029, 37.403172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.998646, 36.824837, 37.425259>,  <34.601498, 36.794518, 37.462074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.998646, 36.824837, 37.425259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101719, -0.135772, 0.985505,
		0.062207, -0.987836, -0.142514,
		0.992866, 0.075801, -0.092035,
		35.296505, 36.847576, 37.397648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876751, 36.210377, 37.806503>,  <34.601498, 36.794518, 37.462074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876751, 36.210377, 37.806503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.153397, 36.497902, 37.778252>,  <35.319382, 36.670418, 37.761299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.153397, 36.497902, 37.778252>,  <34.876751, 36.210377, 37.806503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153397, 36.497902, 37.778252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168500, -0.065482, 0.983524,
		0.702341, -0.692116, -0.166407,
		0.691610, 0.718809, -0.070630,
		35.360878, 36.713543, 37.757061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372795, 35.913948, 38.186367>,  <34.876751, 36.210377, 37.806503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372795, 35.913948, 38.186367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.419025, 36.311073, 38.173992>,  <35.446766, 36.549351, 38.166565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.419025, 36.311073, 38.173992>,  <35.372795, 35.913948, 38.186367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419025, 36.311073, 38.173992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318938, -0.007594, 0.947745,
		0.940702, -0.119407, -0.317525,
		0.115579, 0.992816, -0.030940,
		35.453701, 36.608917, 38.164711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926342, 36.050098, 38.637173>,  <35.372795, 35.913948, 38.186367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926342, 36.050098, 38.637173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.755424, 36.410896, 38.612438>,  <35.652874, 36.627377, 38.597595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.755424, 36.410896, 38.612438>,  <35.926342, 36.050098, 38.637173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.755424, 36.410896, 38.612438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029759, 0.054330, 0.998079,
		0.903624, 0.428310, 0.003628,
		-0.427291, 0.901997, -0.061841,
		35.627235, 36.681496, 38.593887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.299397, 36.487331, 39.155617>,  <35.926342, 36.050098, 38.637173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.299397, 36.487331, 39.155617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.957600, 36.686214, 39.095448>,  <35.752522, 36.805546, 39.059345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.957600, 36.686214, 39.095448>,  <36.299397, 36.487331, 39.155617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957600, 36.686214, 39.095448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132987, 0.070535, 0.988605,
		0.502156, 0.864757, 0.005851,
		-0.854490, 0.497212, -0.150421,
		35.701252, 36.835377, 39.050320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.252819, 36.776062, 39.800076>,  <36.299397, 36.487331, 39.155617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.252819, 36.776062, 39.800076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.895786, 36.842987, 39.632595>,  <35.681568, 36.883141, 39.532108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.895786, 36.842987, 39.632595>,  <36.252819, 36.776062, 39.800076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895786, 36.842987, 39.632595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355200, 0.311067, 0.881516,
		0.277729, 0.935545, -0.218224,
		-0.892580, 0.167309, -0.418698,
		35.628014, 36.893181, 39.506985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.954033, 37.469154, 39.973503>,  <36.252819, 36.776062, 39.800076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.954033, 37.469154, 39.973503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.619316, 37.280460, 39.862331>,  <35.418484, 37.167244, 39.795628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.619316, 37.280460, 39.862331>,  <35.954033, 37.469154, 39.973503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.619316, 37.280460, 39.862331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435751, 0.266453, 0.859723,
		-0.331507, 0.840517, -0.428525,
		-0.836794, -0.471734, -0.277925,
		35.368279, 37.138939, 39.778954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435760, 37.923595, 40.093254>,  <35.954033, 37.469154, 39.973503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435760, 37.923595, 40.093254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288429, 37.552883, 40.122665>,  <35.200031, 37.330456, 40.140312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288429, 37.552883, 40.122665>,  <35.435760, 37.923595, 40.093254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288429, 37.552883, 40.122665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350015, 0.211500, 0.912555,
		-0.861292, 0.310385, -0.402290,
		-0.368328, -0.926784, 0.073524,
		35.177933, 37.274849, 40.144722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.800613, 37.916439, 40.450630>,  <35.435760, 37.923595, 40.093254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.800613, 37.916439, 40.450630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.905483, 37.531864, 40.483849>,  <34.968403, 37.301117, 40.503780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.905483, 37.531864, 40.483849>,  <34.800613, 37.916439, 40.450630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.905483, 37.531864, 40.483849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173645, 0.037654, 0.984088,
		-0.949270, -0.272419, -0.157078,
		0.262170, -0.961441, 0.083048,
		34.984135, 37.243431, 40.508762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251656, 37.572891, 40.773659>,  <34.800613, 37.916439, 40.450630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.251656, 37.572891, 40.773659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.569092, 37.347610, 40.865765>,  <34.759552, 37.212444, 40.921028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.569092, 37.347610, 40.865765>,  <34.251656, 37.572891, 40.773659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569092, 37.347610, 40.865765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166377, 0.163160, 0.972470,
		-0.585264, -0.810053, 0.035779,
		0.793590, -0.563198, 0.230266,
		34.807167, 37.178650, 40.934845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.028622, 37.058025, 41.329544>,  <34.251656, 37.572891, 40.773659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.028622, 37.058025, 41.329544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428379, 37.071712, 41.327038>,  <34.668232, 37.079926, 41.325535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428379, 37.071712, 41.327038>,  <34.028622, 37.058025, 41.329544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428379, 37.071712, 41.327038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000184, 0.174787, 0.984606,
		0.034789, -0.984011, 0.174675,
		0.999395, 0.034221, -0.006261,
		34.728199, 37.081978, 41.325161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.675053, 36.463051, 41.205338>,  <34.028622, 37.058025, 41.329544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.675053, 36.463051, 41.205338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279205, 36.429829, 41.252254>,  <33.041698, 36.409897, 41.280407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279205, 36.429829, 41.252254>,  <33.675053, 36.463051, 41.205338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.279205, 36.429829, 41.252254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109804, -0.089675, -0.989900,
		0.092736, -0.992502, 0.079624,
		-0.989618, -0.083056, 0.117297,
		32.982319, 36.404911, 41.287445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.516430, 36.004700, 40.715626>,  <33.675053, 36.463051, 41.205338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.516430, 36.004700, 40.715626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168949, 36.189701, 40.786560>,  <32.960461, 36.300701, 40.829121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168949, 36.189701, 40.786560>,  <33.516430, 36.004700, 40.715626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.168949, 36.189701, 40.786560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266125, -0.133840, -0.954602,
		-0.417777, -0.876455, 0.239352,
		-0.868700, 0.462508, 0.177331,
		32.908340, 36.328453, 40.839760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.020611, 35.550896, 40.449665>,  <33.516430, 36.004700, 40.715626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.020611, 35.550896, 40.449665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.833939, 35.904617, 40.455387>,  <32.721935, 36.116852, 40.458820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.833939, 35.904617, 40.455387>,  <33.020611, 35.550896, 40.449665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.833939, 35.904617, 40.455387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485538, -0.242654, -0.839864,
		-0.739228, -0.398896, 0.542608,
		-0.466685, 0.884308, 0.014303,
		32.693932, 36.169910, 40.459679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.241741, 35.410091, 40.299789>,  <33.020611, 35.550896, 40.449665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.241741, 35.410091, 40.299789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.325008, 35.789375, 40.203823>,  <32.374969, 36.016945, 40.146244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.325008, 35.789375, 40.203823>,  <32.241741, 35.410091, 40.299789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.325008, 35.789375, 40.203823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611097, -0.065439, -0.788846,
		-0.763694, 0.310823, 0.565828,
		0.208165, 0.948212, -0.239918,
		32.387459, 36.073837, 40.131847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.581709, 35.821987, 40.279026>,  <32.241741, 35.410091, 40.299789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.581709, 35.821987, 40.279026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.841583, 36.020466, 40.048653>,  <31.997507, 36.139553, 39.910427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.841583, 36.020466, 40.048653>,  <31.581709, 35.821987, 40.279026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.841583, 36.020466, 40.048653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661268, -0.004861, -0.750134,
		-0.375012, 0.868198, 0.324960,
		0.649685, 0.496194, -0.575934,
		32.036488, 36.169323, 39.875874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.148556, 36.199135, 39.759472>,  <31.581709, 35.821987, 40.279026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.148556, 36.199135, 39.759472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.521713, 36.243557, 39.622433>,  <31.745607, 36.270210, 39.540211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.521713, 36.243557, 39.622433>,  <31.148556, 36.199135, 39.759472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.521713, 36.243557, 39.622433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348611, 0.039609, -0.936430,
		-0.090422, 0.993025, 0.075665,
		0.932895, 0.111052, -0.342598,
		31.801582, 36.276871, 39.519653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.070251, 36.683502, 39.324337>,  <31.148556, 36.199135, 39.759472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.070251, 36.683502, 39.324337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.417404, 36.536312, 39.190845>,  <31.625696, 36.447998, 39.110752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.417404, 36.536312, 39.190845>,  <31.070251, 36.683502, 39.324337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.417404, 36.536312, 39.190845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289564, 0.171133, -0.941736,
		0.403650, 0.913950, 0.041970,
		0.867882, -0.367979, -0.333725,
		31.677769, 36.425919, 39.090729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.244787, 37.140686, 38.748318>,  <31.070251, 36.683502, 39.324337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.244787, 37.140686, 38.748318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.418531, 36.783787, 38.698956>,  <31.522778, 36.569649, 38.669338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.418531, 36.783787, 38.698956>,  <31.244787, 37.140686, 38.748318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.418531, 36.783787, 38.698956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318033, -0.023738, -0.947783,
		0.842726, 0.450924, -0.294075,
		0.434359, -0.892247, -0.123404,
		31.548840, 36.516113, 38.661934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.333839, 37.146873, 38.030281>,  <31.244787, 37.140686, 38.748318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.333839, 37.146873, 38.030281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.377222, 36.759090, 38.118267>,  <31.403252, 36.526421, 38.171059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.377222, 36.759090, 38.118267>,  <31.333839, 37.146873, 38.030281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.377222, 36.759090, 38.118267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308289, -0.243163, -0.919690,
		0.945090, 0.031935, -0.325246,
		0.108458, -0.969460, 0.219966,
		31.409760, 36.468254, 38.184258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.779381, 36.972961, 37.505913>,  <31.333839, 37.146873, 38.030281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.779381, 36.972961, 37.505913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.614666, 36.638306, 37.650394>,  <31.515837, 36.437511, 37.737083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.614666, 36.638306, 37.650394>,  <31.779381, 36.972961, 37.505913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.614666, 36.638306, 37.650394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336984, -0.228473, -0.913368,
		0.846683, -0.497835, -0.187851,
		-0.411788, -0.836636, 0.361207,
		31.491129, 36.387314, 37.758755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.053783, 36.460194, 37.071178>,  <31.779381, 36.972961, 37.505913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.053783, 36.460194, 37.071178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.717411, 36.322319, 37.238049>,  <31.515589, 36.239594, 37.338169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.717411, 36.322319, 37.238049>,  <32.053783, 36.460194, 37.071178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.717411, 36.322319, 37.238049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287159, -0.369183, -0.883880,
		0.458674, -0.863074, 0.211476,
		-0.840927, -0.344685, 0.417174,
		31.465134, 36.218914, 37.363201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.887506, 35.797806, 36.786652>,  <32.053783, 36.460194, 37.071178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.887506, 35.797806, 36.786652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.532089, 35.890915, 36.944794>,  <31.318838, 35.946781, 37.039680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.532089, 35.890915, 36.944794>,  <31.887506, 35.797806, 36.786652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.532089, 35.890915, 36.944794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454491, -0.564289, -0.689214,
		0.062668, -0.792083, 0.607188,
		-0.888544, 0.232770, 0.395357,
		31.265526, 35.960747, 37.063400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.477804, 35.172943, 36.862766>,  <31.887506, 35.797806, 36.786652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.477804, 35.172943, 36.862766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.209002, 35.468632, 36.845066>,  <31.047720, 35.646046, 36.834446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.209002, 35.468632, 36.845066>,  <31.477804, 35.172943, 36.862766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.209002, 35.468632, 36.845066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541787, -0.531508, -0.651127,
		-0.504840, -0.413595, 0.757678,
		-0.672015, 0.739215, -0.044246,
		31.007399, 35.690399, 36.831791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.020718, 34.822525, 36.547432>,  <31.477804, 35.172943, 36.862766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.020718, 34.822525, 36.547432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.855230, 35.186626, 36.540775>,  <30.755938, 35.405087, 36.536781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.855230, 35.186626, 36.540775>,  <31.020718, 34.822525, 36.547432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.855230, 35.186626, 36.540775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676479, -0.319597, -0.663501,
		-0.609274, -0.263242, 0.747990,
		-0.413717, 0.910253, -0.016645,
		30.731115, 35.459702, 36.535782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.679317, 34.501114, 36.658913>,  <31.020718, 34.822525, 36.547432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.679317, 34.501114, 36.658913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.496964, 34.246281, 36.410301>,  <31.387550, 34.093380, 36.261135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.496964, 34.246281, 36.410301>,  <31.679317, 34.501114, 36.658913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.496964, 34.246281, 36.410301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319359, 0.534724, -0.782355,
		0.830769, -0.555155, -0.040316,
		-0.455887, -0.637082, -0.621526,
		31.360197, 34.055157, 36.223843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.252167, 33.941666, 36.847805>,  <31.679317, 34.501114, 36.658913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.252167, 33.941666, 36.847805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.390720, 33.567207, 36.871986>,  <32.473854, 33.342533, 36.886494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.390720, 33.567207, 36.871986>,  <32.252167, 33.941666, 36.847805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.390720, 33.567207, 36.871986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086925, 0.032137, 0.995696,
		-0.934057, -0.350147, -0.070242,
		0.346383, -0.936143, 0.060455,
		32.494637, 33.286366, 36.890121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.837444, 33.537445, 37.380093>,  <32.252167, 33.941666, 36.847805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.837444, 33.537445, 37.380093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.201981, 33.376869, 37.343647>,  <32.420704, 33.280521, 37.321781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.201981, 33.376869, 37.343647>,  <31.837444, 33.537445, 37.380093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.201981, 33.376869, 37.343647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077731, -0.049530, 0.995743,
		-0.404246, -0.914544, -0.013934,
		0.911342, -0.401442, -0.091111,
		32.475384, 33.256435, 37.316315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.865246, 32.831852, 37.708576>,  <31.837444, 33.537445, 37.380093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.865246, 32.831852, 37.708576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239265, 32.971409, 37.683411>,  <32.463676, 33.055141, 37.668312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239265, 32.971409, 37.683411>,  <31.865246, 32.831852, 37.708576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.239265, 32.971409, 37.683411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105304, -0.103889, 0.988998,
		0.338519, -0.931386, -0.133881,
		0.935048, 0.348893, -0.062910,
		32.519779, 33.076077, 37.664539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.413212, 32.376160, 38.104183>,  <31.865246, 32.831852, 37.708576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.413212, 32.376160, 38.104183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.561394, 32.747299, 38.086922>,  <32.650303, 32.969982, 38.076565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.561394, 32.747299, 38.086922>,  <32.413212, 32.376160, 38.104183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.561394, 32.747299, 38.086922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146621, -0.012536, 0.989113,
		0.917204, -0.372753, -0.140686,
		0.370459, 0.927846, -0.043155,
		32.672531, 33.025654, 38.073975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.921257, 32.338318, 38.666328>,  <32.413212, 32.376160, 38.104183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.921257, 32.338318, 38.666328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.941101, 32.725574, 38.568146>,  <32.953007, 32.957928, 38.509235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.941101, 32.725574, 38.568146>,  <32.921257, 32.338318, 38.666328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.941101, 32.725574, 38.568146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263591, 0.224356, 0.938182,
		0.963358, -0.111243, -0.244062,
		0.049610, 0.968137, -0.245458,
		32.955982, 33.016014, 38.494507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618382, 32.611420, 38.863400>,  <32.921257, 32.338318, 38.666328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618382, 32.611420, 38.863400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.399189, 32.945621, 38.847141>,  <33.267673, 33.146141, 38.837387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.399189, 32.945621, 38.847141>,  <33.618382, 32.611420, 38.863400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.399189, 32.945621, 38.847141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096553, 0.111441, 0.989070,
		0.830902, 0.538064, -0.141738,
		-0.547978, 0.835505, -0.040644,
		33.234795, 33.196274, 38.834949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.989323, 33.077541, 39.240181>,  <33.618382, 32.611420, 38.863400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.989323, 33.077541, 39.240181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.607189, 33.195671, 39.244652>,  <33.377911, 33.266548, 39.247334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.607189, 33.195671, 39.244652>,  <33.989323, 33.077541, 39.240181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.607189, 33.195671, 39.244652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078546, 0.217264, 0.972947,
		0.284907, 0.930365, -0.230756,
		-0.955332, 0.295325, 0.011176,
		33.320591, 33.284267, 39.248005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864784, 33.740417, 39.507885>,  <33.989323, 33.077541, 39.240181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864784, 33.740417, 39.507885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.516834, 33.557465, 39.581768>,  <33.308064, 33.447693, 39.626099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.516834, 33.557465, 39.581768>,  <33.864784, 33.740417, 39.507885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.516834, 33.557465, 39.581768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028698, 0.326894, 0.944625,
		-0.492435, 0.827008, -0.271232,
		-0.869876, -0.457383, 0.184707,
		33.255871, 33.420250, 39.637180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.499920, 34.272182, 39.821972>,  <33.864784, 33.740417, 39.507885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.499920, 34.272182, 39.821972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.327614, 33.919403, 39.898502>,  <33.224232, 33.707733, 39.944420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.327614, 33.919403, 39.898502>,  <33.499920, 34.272182, 39.821972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.327614, 33.919403, 39.898502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053367, 0.236522, 0.970159,
		-0.900887, 0.407696, -0.148951,
		-0.430761, -0.881953, 0.191322,
		33.198387, 33.654816, 39.955898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.963726, 34.394447, 40.231899>,  <33.499920, 34.272182, 39.821972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.963726, 34.394447, 40.231899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.988308, 33.999599, 40.290974>,  <33.003056, 33.762691, 40.326420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.988308, 33.999599, 40.290974>,  <32.963726, 34.394447, 40.231899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.988308, 33.999599, 40.290974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210154, 0.131850, 0.968737,
		-0.975735, -0.090570, -0.199345,
		0.061455, -0.987123, 0.147685,
		33.006744, 33.703461, 40.335278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.403515, 34.220482, 40.723030>,  <32.963726, 34.394447, 40.231899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.403515, 34.220482, 40.723030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.668007, 33.920906, 40.740314>,  <32.826702, 33.741161, 40.750687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.668007, 33.920906, 40.740314>,  <32.403515, 34.220482, 40.723030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.668007, 33.920906, 40.740314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104235, -0.034675, 0.993948,
		-0.742909, -0.661729, -0.100994,
		0.661227, -0.748941, 0.043215,
		32.866375, 33.696224, 40.753281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.148655, 33.676830, 41.211231>,  <32.403515, 34.220482, 40.723030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.148655, 33.676830, 41.211231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.535030, 33.575508, 41.190044>,  <32.766853, 33.514717, 41.177334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.535030, 33.575508, 41.190044>,  <32.148655, 33.676830, 41.211231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.535030, 33.575508, 41.190044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018781, -0.135510, 0.990598,
		-0.258100, -0.957849, -0.126136,
		0.965936, -0.253305, -0.052965,
		32.824810, 33.499516, 41.174156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.241444, 33.077316, 41.728889>,  <32.148655, 33.676830, 41.211231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.241444, 33.077316, 41.728889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.597836, 33.235832, 41.640247>,  <32.811672, 33.330944, 41.587063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.597836, 33.235832, 41.640247>,  <32.241444, 33.077316, 41.728889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.597836, 33.235832, 41.640247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271052, -0.072682, 0.959817,
		0.364262, -0.915243, -0.172174,
		0.890979, 0.396293, -0.221603,
		32.865128, 33.354721, 41.573765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.687584, 32.622696, 42.037411>,  <32.241444, 33.077316, 41.728889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.687584, 32.622696, 42.037411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.874992, 32.970978, 41.977592>,  <32.987438, 33.179947, 41.941700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.874992, 32.970978, 41.977592>,  <32.687584, 32.622696, 42.037411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.874992, 32.970978, 41.977592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217825, 0.050198, 0.974696,
		0.856180, -0.489236, -0.166143,
		0.468517, 0.870706, -0.149546,
		33.015549, 33.232189, 41.932728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.328659, 32.621426, 42.526752>,  <32.687584, 32.622696, 42.037411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.328659, 32.621426, 42.526752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.276962, 33.005047, 42.425938>,  <33.245945, 33.235218, 42.365448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.276962, 33.005047, 42.425938>,  <33.328659, 32.621426, 42.526752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.276962, 33.005047, 42.425938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287738, 0.279501, 0.916016,
		0.948949, 0.045868, -0.312078,
		-0.129243, 0.959049, -0.252035,
		33.238190, 33.292763, 42.350327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.016899, 32.880360, 42.654785>,  <33.328659, 32.621426, 42.526752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.016899, 32.880360, 42.654785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.722748, 33.150852, 42.672314>,  <33.546257, 33.313148, 42.682831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.722748, 33.150852, 42.672314>,  <34.016899, 32.880360, 42.654785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.722748, 33.150852, 42.672314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273683, 0.237216, 0.932109,
		0.619927, 0.697450, -0.359518,
		-0.735383, 0.676233, 0.043823,
		33.502132, 33.353722, 42.685459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.352276, 33.508087, 43.083393>,  <34.016899, 32.880360, 42.654785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.352276, 33.508087, 43.083393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.954937, 33.554024, 43.080090>,  <33.716534, 33.581585, 43.078106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.954937, 33.554024, 43.080090>,  <34.352276, 33.508087, 43.083393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.954937, 33.554024, 43.080090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030028, 0.327659, 0.944319,
		0.111156, 0.937791, -0.328928,
		-0.993349, 0.114844, -0.008261,
		33.656933, 33.588478, 43.077610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226158, 34.061016, 43.494381>,  <34.352276, 33.508087, 43.083393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226158, 34.061016, 43.494381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.856762, 33.908215, 43.480366>,  <33.635124, 33.816532, 43.471954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.856762, 33.908215, 43.480366>,  <34.226158, 34.061016, 43.494381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.856762, 33.908215, 43.480366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129737, 0.225057, 0.965670,
		-0.361006, 0.896337, -0.257399,
		-0.923495, -0.382007, -0.035041,
		33.579712, 33.793613, 43.469852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787392, 34.525230, 43.809780>,  <34.226158, 34.061016, 43.494381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787392, 34.525230, 43.809780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.593655, 34.178074, 43.853920>,  <33.477413, 33.969780, 43.880405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.593655, 34.178074, 43.853920>,  <33.787392, 34.525230, 43.809780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593655, 34.178074, 43.853920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163416, 0.213657, 0.963144,
		-0.859482, 0.448457, -0.245310,
		-0.484341, -0.867893, 0.110349,
		33.448353, 33.917706, 43.887024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.191029, 34.678051, 44.231483>,  <33.787392, 34.525230, 43.809780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.191029, 34.678051, 44.231483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.271465, 34.287449, 44.262489>,  <33.319725, 34.053089, 44.281094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.271465, 34.287449, 44.262489>,  <33.191029, 34.678051, 44.231483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.271465, 34.287449, 44.262489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106268, 0.056920, 0.992707,
		-0.973792, -0.207860, -0.092324,
		0.201089, -0.976501, 0.077517,
		33.331791, 33.994499, 44.285744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.760353, 34.420143, 44.730091>,  <33.191029, 34.678051, 44.231483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.760353, 34.420143, 44.730091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.058624, 34.153782, 44.720810>,  <33.237587, 33.993965, 44.715240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.058624, 34.153782, 44.720810>,  <32.760353, 34.420143, 44.730091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058624, 34.153782, 44.720810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046938, 0.017768, 0.998740,
		-0.664650, -0.745828, 0.044506,
		0.745679, -0.665901, -0.023198,
		33.282330, 33.954010, 44.713852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.493179, 34.001133, 45.222141>,  <32.760353, 34.420143, 44.730091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.493179, 34.001133, 45.222141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.873047, 33.879208, 45.193245>,  <33.100967, 33.806053, 45.175907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.873047, 33.879208, 45.193245>,  <32.493179, 34.001133, 45.222141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.873047, 33.879208, 45.193245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013122, -0.191712, 0.981363,
		-0.312989, -0.932915, -0.178063,
		0.949666, -0.304820, -0.072245,
		33.157948, 33.787762, 45.171570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.445030, 33.429230, 45.576550>,  <32.493179, 34.001133, 45.222141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.445030, 33.429230, 45.576550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835175, 33.516373, 45.562603>,  <33.069260, 33.568657, 45.554234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835175, 33.516373, 45.562603>,  <32.445030, 33.429230, 45.576550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.835175, 33.516373, 45.562603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126508, -0.422758, 0.897369,
		0.180760, -0.879666, -0.439901,
		0.975357, 0.217859, -0.034867,
		33.127781, 33.581730, 45.552143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.803108, 32.874287, 45.626472>,  <32.445030, 33.429230, 45.576550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.803108, 32.874287, 45.626472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036762, 33.164124, 45.772758>,  <33.176952, 33.338028, 45.860531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036762, 33.164124, 45.772758>,  <32.803108, 32.874287, 45.626472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.036762, 33.164124, 45.772758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144141, -0.536026, 0.831805,
		0.798757, -0.433170, -0.417554,
		0.584133, 0.724597, 0.365716,
		33.212002, 33.381504, 45.882473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.344452, 32.478378, 46.031818>,  <32.803108, 32.874287, 45.626472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.344452, 32.478378, 46.031818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.399414, 32.859619, 46.139683>,  <33.432392, 33.088364, 46.204403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.399414, 32.859619, 46.139683>,  <33.344452, 32.478378, 46.031818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.399414, 32.859619, 46.139683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215228, -0.294472, 0.931109,
		0.966848, -0.069903, -0.245596,
		0.137408, 0.953100, 0.269664,
		33.440636, 33.145550, 46.220581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.899921, 32.358727, 46.402096>,  <33.344452, 32.478378, 46.031818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.899921, 32.358727, 46.402096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766304, 32.721107, 46.506145>,  <33.686134, 32.938538, 46.568573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766304, 32.721107, 46.506145>,  <33.899921, 32.358727, 46.402096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766304, 32.721107, 46.506145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134094, -0.227490, 0.964504,
		0.932972, 0.357064, -0.045492,
		-0.334041, 0.905955, 0.260122,
		33.666092, 32.992893, 46.584183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.279995, 32.675972, 46.948109>,  <33.899921, 32.358727, 46.402096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.279995, 32.675972, 46.948109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927029, 32.863178, 46.967319>,  <33.715248, 32.975502, 46.978848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927029, 32.863178, 46.967319>,  <34.279995, 32.675972, 46.948109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927029, 32.863178, 46.967319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111630, -0.307451, 0.944994,
		0.457043, 0.828512, 0.323543,
		-0.882412, 0.468020, 0.048031,
		33.662304, 33.003586, 46.981728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053406, 32.970959, 46.889538>,  <34.279995, 32.675972, 46.948109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.053406, 32.970959, 46.889538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.262653, 32.630104, 46.883759>,  <35.388203, 32.425591, 46.880291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.262653, 32.630104, 46.883759>,  <35.053406, 32.970959, 46.889538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.262653, 32.630104, 46.883759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010412, 0.023342, -0.999673,
		0.852198, 0.522794, 0.021082,
		0.523115, -0.852139, -0.014449,
		35.419586, 32.374462, 46.879425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526485, 33.007210, 46.419586>,  <35.053406, 32.970959, 46.889538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526485, 33.007210, 46.419586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.509865, 32.609207, 46.455879>,  <35.499893, 32.370403, 46.477654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.509865, 32.609207, 46.455879>,  <35.526485, 33.007210, 46.419586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509865, 32.609207, 46.455879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201585, -0.097292, -0.974627,
		0.978589, -0.022203, 0.204621,
		-0.041548, -0.995008, 0.090733,
		35.497402, 32.310703, 46.483101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.982487, 32.700031, 45.884193>,  <35.526485, 33.007210, 46.419586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.982487, 32.700031, 45.884193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809868, 32.359337, 46.003063>,  <35.706295, 32.154919, 46.074383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809868, 32.359337, 46.003063>,  <35.982487, 32.700031, 45.884193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809868, 32.359337, 46.003063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136280, -0.387199, -0.911869,
		0.891736, -0.353018, 0.283170,
		-0.431549, -0.851737, 0.297170,
		35.680405, 32.103817, 46.092213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479126, 32.241512, 45.831474>,  <35.982487, 32.700031, 45.884193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479126, 32.241512, 45.831474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.116516, 32.074036, 45.809906>,  <35.898949, 31.973549, 45.796967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.116516, 32.074036, 45.809906>,  <36.479126, 32.241512, 45.831474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.116516, 32.074036, 45.809906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183909, -0.276722, -0.943187,
		0.379985, -0.864940, 0.327857,
		-0.906526, -0.418693, -0.053920,
		35.844559, 31.948427, 45.793732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524586, 31.500938, 45.576267>,  <36.479126, 32.241512, 45.831474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524586, 31.500938, 45.576267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.156712, 31.642868, 45.508995>,  <35.935989, 31.728025, 45.468632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.156712, 31.642868, 45.508995>,  <36.524586, 31.500938, 45.576267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.156712, 31.642868, 45.508995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095198, -0.214042, -0.972174,
		-0.380951, -0.910101, 0.163072,
		-0.919681, 0.354827, -0.168180,
		35.880806, 31.749315, 45.458542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
