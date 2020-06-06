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
	<24.229204, 34.674976, 34.935936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.387413, 35.027908, 34.833904>,  <24.482338, 35.239666, 34.772686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.387413, 35.027908, 34.833904>,  <24.229204, 34.674976, 34.935936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.387413, 35.027908, 34.833904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808228, -0.202438, 0.552979,
		0.436269, -0.424877, -0.793189,
		0.395520, 0.882325, -0.255080,
		24.506069, 35.292606, 34.757381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.834757, 34.696365, 34.540539>,  <24.229204, 34.674976, 34.935936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.834757, 34.696365, 34.540539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.825953, 35.020664, 34.774532>,  <24.820671, 35.215244, 34.914928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.825953, 35.020664, 34.774532>,  <24.834757, 34.696365, 34.540539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.825953, 35.020664, 34.774532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655982, -0.429845, 0.620421,
		0.754456, 0.397392, -0.522375,
		-0.022010, 0.810749, 0.584980,
		24.819349, 35.263889, 34.950027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.504765, 34.779629, 34.797176>,  <24.834757, 34.696365, 34.540539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.504765, 34.779629, 34.797176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.269274, 34.989689, 35.042976>,  <25.127979, 35.115726, 35.190456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.269274, 34.989689, 35.042976>,  <25.504765, 34.779629, 34.797176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.269274, 34.989689, 35.042976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542314, -0.307122, 0.782031,
		0.599413, 0.793657, -0.103987,
		-0.588727, 0.525153, 0.614504,
		25.092655, 35.147236, 35.227329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.820570, 35.330803, 35.250378>,  <25.504765, 34.779629, 34.797176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.820570, 35.330803, 35.250378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.497171, 35.131008, 35.374859>,  <25.303133, 35.011131, 35.449547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.497171, 35.131008, 35.374859>,  <25.820570, 35.330803, 35.250378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.497171, 35.131008, 35.374859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534954, -0.403382, 0.742366,
		-0.245271, 0.766677, 0.593336,
		-0.808497, -0.499489, 0.311199,
		25.254622, 34.981163, 35.468220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.664282, 35.582024, 35.876705>,  <25.820570, 35.330803, 35.250378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.664282, 35.582024, 35.876705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.545837, 35.202015, 35.837154>,  <25.474771, 34.974010, 35.813423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.545837, 35.202015, 35.837154>,  <25.664282, 35.582024, 35.876705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.545837, 35.202015, 35.837154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742415, -0.294052, 0.601957,
		-0.600948, 0.104837, 0.792383,
		-0.296110, -0.950022, -0.098877,
		25.457005, 34.917007, 35.807491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.610529, 36.251877, 36.226883>,  <25.664282, 35.582024, 35.876705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.610529, 36.251877, 36.226883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.764303, 36.088326, 36.557949>,  <25.856567, 35.990196, 36.756588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.764303, 36.088326, 36.557949>,  <25.610529, 36.251877, 36.226883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.764303, 36.088326, 36.557949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115162, 0.910802, 0.396456,
		-0.915940, -0.057097, 0.397233,
		0.384437, -0.408875, 0.827665,
		25.879635, 35.965664, 36.806248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.212255, 36.482506, 36.805786>,  <25.610529, 36.251877, 36.226883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.212255, 36.482506, 36.805786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.586245, 36.400898, 36.921856>,  <25.810638, 36.351933, 36.991497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.586245, 36.400898, 36.921856>,  <25.212255, 36.482506, 36.805786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.586245, 36.400898, 36.921856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041525, 0.875375, 0.481658,
		-0.352281, -0.438288, 0.826923,
		0.934973, -0.204017, 0.290178,
		25.866737, 36.339691, 37.008911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.257528, 36.522690, 37.645382>,  <25.212255, 36.482506, 36.805786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.257528, 36.522690, 37.645382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.613148, 36.603695, 37.481148>,  <25.826519, 36.652298, 37.382607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.613148, 36.603695, 37.481148>,  <25.257528, 36.522690, 37.645382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.613148, 36.603695, 37.481148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100971, 0.788024, 0.607309,
		0.446539, -0.581384, 0.680144,
		0.889049, 0.202512, -0.410586,
		25.879862, 36.664448, 37.357971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.857025, 36.557945, 38.198772>,  <25.257528, 36.522690, 37.645382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.857025, 36.557945, 38.198772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.951571, 36.775677, 37.876820>,  <26.008299, 36.906315, 37.683647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.951571, 36.775677, 37.876820>,  <25.857025, 36.557945, 38.198772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.951571, 36.775677, 37.876820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186249, 0.787615, 0.587345,
		0.953647, -0.288736, 0.084784,
		0.236365, 0.544329, -0.804883,
		26.022480, 36.938976, 37.635353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.372408, 37.007675, 38.505100>,  <25.857025, 36.557945, 38.198772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.372408, 37.007675, 38.505100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.342873, 37.192772, 38.151737>,  <26.325151, 37.303829, 37.939720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.342873, 37.192772, 38.151737>,  <26.372408, 37.007675, 38.505100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.342873, 37.192772, 38.151737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166695, 0.879094, 0.446549,
		0.983240, -0.114289, -0.142046,
		-0.073836, 0.462743, -0.883412,
		26.320723, 37.331596, 37.886715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.983299, 37.317410, 38.498440>,  <26.372408, 37.007675, 38.505100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.983299, 37.317410, 38.498440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.733166, 37.506924, 38.250416>,  <26.583086, 37.620632, 38.101601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.733166, 37.506924, 38.250416>,  <26.983299, 37.317410, 38.498440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.733166, 37.506924, 38.250416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199508, 0.865251, 0.459932,
		0.754421, 0.163904, -0.635597,
		-0.625336, 0.473789, -0.620063,
		26.545565, 37.649059, 38.064396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.389704, 37.875935, 38.277142>,  <26.983299, 37.317410, 38.498440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.389704, 37.875935, 38.277142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.013653, 37.982422, 38.192017>,  <26.788023, 38.046314, 38.140942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.013653, 37.982422, 38.192017>,  <27.389704, 37.875935, 38.277142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.013653, 37.982422, 38.192017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155864, 0.891109, 0.426182,
		0.303094, 0.367497, -0.879250,
		-0.940128, 0.266217, -0.212810,
		26.731615, 38.062286, 38.128174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.449497, 38.586216, 38.041195>,  <27.389704, 37.875935, 38.277142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.449497, 38.586216, 38.041195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.058664, 38.567741, 38.124313>,  <26.824165, 38.556656, 38.174183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.058664, 38.567741, 38.124313>,  <27.449497, 38.586216, 38.041195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.058664, 38.567741, 38.124313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037472, 0.923609, 0.381500,
		-0.209543, 0.380543, -0.900710,
		-0.977081, -0.046189, 0.207796,
		26.765539, 38.553886, 38.186653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.158478, 39.011333, 37.579426>,  <27.449497, 38.586216, 38.041195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.158478, 39.011333, 37.579426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.950811, 38.972927, 37.919132>,  <26.826212, 38.949883, 38.122955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.950811, 38.972927, 37.919132>,  <27.158478, 39.011333, 37.579426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.950811, 38.972927, 37.919132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184241, 0.957735, 0.220906,
		-0.834578, 0.271156, -0.479534,
		-0.519167, -0.096014, 0.849263,
		26.795061, 38.944122, 38.173912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.791727, 39.522259, 37.638924>,  <27.158478, 39.011333, 37.579426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.791727, 39.522259, 37.638924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.854956, 39.418407, 38.019997>,  <26.892893, 39.356098, 38.248642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.854956, 39.418407, 38.019997>,  <26.791727, 39.522259, 37.638924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.854956, 39.418407, 38.019997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189287, 0.954888, 0.228823,
		-0.969115, 0.144160, 0.200086,
		0.158072, -0.259630, 0.952683,
		26.902378, 39.340519, 38.305801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.476988, 40.074879, 38.028854>,  <26.791727, 39.522259, 37.638924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.476988, 40.074879, 38.028854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.669195, 39.891281, 38.327766>,  <26.784519, 39.781124, 38.507114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.669195, 39.891281, 38.327766>,  <26.476988, 40.074879, 38.028854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.669195, 39.891281, 38.327766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126979, 0.879538, 0.458573,
		-0.867742, -0.125464, 0.480918,
		0.480520, -0.458990, 0.747281,
		26.813351, 39.753586, 38.551952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.306938, 40.493469, 38.693596>,  <26.476988, 40.074879, 38.028854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.306938, 40.493469, 38.693596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.639959, 40.281075, 38.756725>,  <26.839771, 40.153637, 38.794601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.639959, 40.281075, 38.756725>,  <26.306938, 40.493469, 38.693596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.639959, 40.281075, 38.756725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426071, 0.795894, 0.430135,
		-0.354008, -0.290866, 0.888862,
		0.832551, -0.530990, 0.157823,
		26.889725, 40.121777, 38.804073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.486797, 40.575737, 39.416012>,  <26.306938, 40.493469, 38.693596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.486797, 40.575737, 39.416012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.832125, 40.464062, 39.247852>,  <27.039322, 40.397057, 39.146957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.832125, 40.464062, 39.247852>,  <26.486797, 40.575737, 39.416012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.832125, 40.464062, 39.247852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475081, 0.730610, 0.490415,
		0.170231, -0.623109, 0.763385,
		0.863319, -0.279186, -0.420399,
		27.091120, 40.380306, 39.121731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.925566, 40.910332, 39.795624>,  <26.486797, 40.575737, 39.416012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.925566, 40.910332, 39.795624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.170244, 40.788765, 39.503471>,  <27.317051, 40.715824, 39.328178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.170244, 40.788765, 39.503471>,  <26.925566, 40.910332, 39.795624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.170244, 40.788765, 39.503471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692766, 0.651578, 0.309065,
		0.381972, -0.695039, 0.609112,
		0.611697, -0.303918, -0.730385,
		27.353754, 40.697590, 39.284355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.477577, 40.693752, 40.150475>,  <26.925566, 40.910332, 39.795624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.477577, 40.693752, 40.150475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.571732, 40.814964, 39.781094>,  <27.628225, 40.887691, 39.559464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.571732, 40.814964, 39.781094>,  <27.477577, 40.693752, 40.150475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.571732, 40.814964, 39.781094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607286, 0.695973, 0.383178,
		0.758813, -0.650996, -0.020202,
		0.235387, 0.303028, -0.923454,
		27.642347, 40.905872, 39.504059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.265957, 40.662380, 40.016506>,  <27.477577, 40.693752, 40.150475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.265957, 40.662380, 40.016506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.108088, 40.920544, 39.754917>,  <28.013367, 41.075443, 39.597965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.108088, 40.920544, 39.754917>,  <28.265957, 40.662380, 40.016506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.108088, 40.920544, 39.754917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712885, 0.664134, 0.225211,
		0.579679, -0.377323, -0.722218,
		-0.394672, 0.645409, -0.653973,
		27.989685, 41.114166, 39.558723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.885387, 40.902355, 39.702774>,  <28.265957, 40.662380, 40.016506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.885387, 40.902355, 39.702774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.629227, 41.192257, 39.601097>,  <28.475531, 41.366199, 39.540089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.629227, 41.192257, 39.601097>,  <28.885387, 40.902355, 39.702774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.629227, 41.192257, 39.601097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696301, 0.687535, 0.206061,
		0.324112, -0.045036, -0.944946,
		-0.640403, 0.724753, -0.254197,
		28.437105, 41.409683, 39.524837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.238323, 41.348309, 39.398808>,  <28.885387, 40.902355, 39.702774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.238323, 41.348309, 39.398808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.919020, 41.580082, 39.464577>,  <28.727438, 41.719147, 39.504040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.919020, 41.580082, 39.464577>,  <29.238323, 41.348309, 39.398808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.919020, 41.580082, 39.464577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602311, 0.768203, 0.216990,
		-0.000581, 0.272249, -0.962226,
		-0.798261, 0.579434, 0.164425,
		28.679541, 41.753914, 39.513905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.426725, 42.040859, 39.130238>,  <29.238323, 41.348309, 39.398808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.426725, 42.040859, 39.130238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.119045, 42.104805, 39.377712>,  <28.934437, 42.143173, 39.526196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.119045, 42.104805, 39.377712>,  <29.426725, 42.040859, 39.130238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.119045, 42.104805, 39.377712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428154, 0.847667, 0.313281,
		-0.474358, 0.505869, -0.720473,
		-0.769200, 0.159866, 0.618688,
		28.888285, 42.152763, 39.563320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.286377, 42.791401, 39.106712>,  <29.426725, 42.040859, 39.130238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.286377, 42.791401, 39.106712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.151218, 42.642605, 39.452534>,  <29.070124, 42.553326, 39.660027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.151218, 42.642605, 39.452534>,  <29.286377, 42.791401, 39.106712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.151218, 42.642605, 39.452534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416324, 0.764752, 0.491761,
		-0.844098, 0.526098, -0.103539,
		-0.337896, -0.371989, 0.864552,
		29.049850, 42.531010, 39.711899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.824020, 43.287132, 39.447411>,  <29.286377, 42.791401, 39.106712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.824020, 43.287132, 39.447411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.010103, 43.065090, 39.723221>,  <29.121754, 42.931866, 39.888706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.010103, 43.065090, 39.723221>,  <28.824020, 43.287132, 39.447411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.010103, 43.065090, 39.723221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314206, 0.831771, 0.457636,
		-0.827561, 0.003756, 0.561364,
		0.465208, -0.555105, 0.689521,
		29.149666, 42.898560, 39.930077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.593912, 43.202660, 40.200840>,  <28.824020, 43.287132, 39.447411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.593912, 43.202660, 40.200840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.988361, 43.139393, 40.221027>,  <29.225031, 43.101433, 40.233139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.988361, 43.139393, 40.221027>,  <28.593912, 43.202660, 40.200840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.988361, 43.139393, 40.221027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108209, 0.842861, 0.527139,
		-0.125908, -0.514363, 0.848279,
		0.986122, -0.158163, 0.050464,
		29.284199, 43.091946, 40.236168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.808483, 43.863281, 39.952583>,  <28.593912, 43.202660, 40.200840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.808483, 43.863281, 39.952583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.806942, 44.134468, 39.658550>,  <28.806017, 44.297180, 39.482128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.806942, 44.134468, 39.658550>,  <28.808483, 43.863281, 39.952583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.806942, 44.134468, 39.658550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174680, -0.724245, -0.667050,
		-0.984618, 0.125836, 0.121216,
		-0.003852, 0.677964, -0.735085,
		28.805786, 44.337856, 39.438026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.219887, 43.732201, 39.619827>,  <28.808483, 43.863281, 39.952583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.219887, 43.732201, 39.619827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.508410, 43.899632, 39.399101>,  <28.681524, 44.000092, 39.266666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.508410, 43.899632, 39.399101>,  <28.219887, 43.732201, 39.619827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.508410, 43.899632, 39.399101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107444, -0.719449, -0.686184,
		-0.684229, 0.554240, -0.473971,
		0.721308, 0.418582, -0.551818,
		28.724802, 44.025208, 39.233555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.051092, 43.750156, 38.919666>,  <28.219887, 43.732201, 39.619827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.051092, 43.750156, 38.919666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.447983, 43.730843, 38.965549>,  <28.686117, 43.719254, 38.993080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.447983, 43.730843, 38.965549>,  <28.051092, 43.750156, 38.919666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.447983, 43.730843, 38.965549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037755, -0.761446, -0.647128,
		0.118587, 0.646427, -0.753703,
		0.992226, -0.048285, 0.114703,
		28.745651, 43.716358, 38.999962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.707693, 44.284294, 38.480507>,  <28.051092, 43.750156, 38.919666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.707693, 44.284294, 38.480507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.054989, 44.414188, 38.330463>,  <28.263367, 44.492126, 38.240437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.054989, 44.414188, 38.330463>,  <27.707693, 44.284294, 38.480507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.054989, 44.414188, 38.330463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458420, 0.235910, -0.856853,
		-0.189760, 0.915911, 0.353692,
		0.868241, 0.324736, -0.375105,
		28.315460, 44.511608, 38.217934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.729536, 45.022587, 38.310249>,  <27.707693, 44.284294, 38.480507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.729536, 45.022587, 38.310249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.984417, 44.830120, 38.069431>,  <28.137344, 44.714642, 37.924942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.984417, 44.830120, 38.069431>,  <27.729536, 45.022587, 38.310249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.984417, 44.830120, 38.069431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530977, 0.292110, -0.795446,
		0.558605, 0.826529, -0.069356,
		0.637200, -0.481167, -0.602042,
		28.175577, 44.685772, 37.888817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.865551, 45.449722, 37.748058>,  <27.729536, 45.022587, 38.310249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.865551, 45.449722, 37.748058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.898357, 45.058979, 37.669044>,  <27.918041, 44.824532, 37.621635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.898357, 45.058979, 37.669044>,  <27.865551, 45.449722, 37.748058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.898357, 45.058979, 37.669044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579168, 0.114581, -0.807115,
		0.811072, 0.180603, -0.556368,
		0.082018, -0.976859, -0.197533,
		27.922962, 44.765923, 37.609783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.217251, 45.291344, 37.051056>,  <27.865551, 45.449722, 37.748058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.217251, 45.291344, 37.051056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.994661, 44.968761, 37.131027>,  <27.861107, 44.775211, 37.179008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.994661, 44.968761, 37.131027>,  <28.217251, 45.291344, 37.051056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.994661, 44.968761, 37.131027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425200, 0.069683, -0.902413,
		0.713823, -0.587177, -0.381680,
		-0.556473, -0.806454, 0.199926,
		27.827719, 44.726826, 37.191006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.880857, 45.397964, 36.451050>,  <28.217251, 45.291344, 37.051056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.880857, 45.397964, 36.451050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.740515, 45.073246, 36.637760>,  <27.656309, 44.878414, 36.749786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.740515, 45.073246, 36.637760>,  <27.880857, 45.397964, 36.451050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.740515, 45.073246, 36.637760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396199, -0.322964, -0.859489,
		0.848484, -0.486496, -0.208320,
		-0.350858, -0.811798, 0.466779,
		27.635258, 44.829708, 36.777794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.875053, 44.864502, 35.995708>,  <27.880857, 45.397964, 36.451050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.875053, 44.864502, 35.995708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.611456, 44.762642, 36.278801>,  <27.453299, 44.701527, 36.448658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.611456, 44.762642, 36.278801>,  <27.875053, 44.864502, 35.995708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.611456, 44.762642, 36.278801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591042, -0.406633, -0.696649,
		0.465187, -0.877385, 0.117461,
		-0.658992, -0.254647, 0.707731,
		27.413757, 44.686249, 36.491119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.820526, 44.228367, 35.850826>,  <27.875053, 44.864502, 35.995708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.820526, 44.228367, 35.850826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.032625, 44.144833, 36.179516>,  <28.159885, 44.094711, 36.376728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.032625, 44.144833, 36.179516>,  <27.820526, 44.228367, 35.850826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.032625, 44.144833, 36.179516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201670, -0.910307, -0.361485,
		0.823508, 0.357393, -0.440573,
		0.530249, -0.208835, 0.821720,
		28.191700, 44.082184, 36.426033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.421824, 43.906143, 35.595982>,  <27.820526, 44.228367, 35.850826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.421824, 43.906143, 35.595982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.400284, 43.799442, 35.980885>,  <28.387360, 43.735420, 36.211826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.400284, 43.799442, 35.980885>,  <28.421824, 43.906143, 35.595982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.400284, 43.799442, 35.980885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425633, -0.877860, -0.219541,
		0.903292, 0.397747, 0.160811,
		-0.053848, -0.266757, 0.962258,
		28.384129, 43.719414, 36.269562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.075743, 43.653316, 35.785450>,  <28.421824, 43.906143, 35.595982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.075743, 43.653316, 35.785450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.837225, 43.470554, 36.049469>,  <28.694115, 43.360897, 36.207882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.837225, 43.470554, 36.049469>,  <29.075743, 43.653316, 35.785450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.837225, 43.470554, 36.049469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469807, -0.865333, -0.174586,
		0.650935, 0.205993, 0.730651,
		-0.596293, -0.456909, 0.660052,
		28.658337, 43.333481, 36.247486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.506502, 43.328545, 36.254189>,  <29.075743, 43.653316, 35.785450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.506502, 43.328545, 36.254189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.149471, 43.154991, 36.303253>,  <28.935253, 43.050858, 36.332691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.149471, 43.154991, 36.303253>,  <29.506502, 43.328545, 36.254189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.149471, 43.154991, 36.303253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450436, -0.845834, 0.285783,
		-0.020246, 0.310335, 0.950411,
		-0.892579, -0.433886, 0.122662,
		28.881697, 43.024826, 36.340054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.490795, 42.962639, 36.891075>,  <29.506502, 43.328545, 36.254189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.490795, 42.962639, 36.891075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.216784, 42.782211, 36.662247>,  <29.052376, 42.673954, 36.524948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.216784, 42.782211, 36.662247>,  <29.490795, 42.962639, 36.891075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.216784, 42.782211, 36.662247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382705, -0.890996, 0.244261,
		-0.619895, -0.051610, 0.782986,
		-0.685031, -0.451068, -0.572075,
		29.011274, 42.646893, 36.490623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.417772, 42.325661, 37.202507>,  <29.490795, 42.962639, 36.891075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.417772, 42.325661, 37.202507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.244894, 42.265923, 36.846775>,  <29.141167, 42.230080, 36.633335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.244894, 42.265923, 36.846775>,  <29.417772, 42.325661, 37.202507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.244894, 42.265923, 36.846775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174895, -0.981348, 0.079801,
		-0.884658, -0.121049, 0.450252,
		-0.432194, -0.149344, -0.889328,
		29.115236, 42.221119, 36.579975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.209011, 41.677158, 37.194969>,  <29.417772, 42.325661, 37.202507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.209011, 41.677158, 37.194969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.182716, 41.726833, 36.798939>,  <29.166939, 41.756638, 36.561321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.182716, 41.726833, 36.798939>,  <29.209011, 41.677158, 37.194969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.182716, 41.726833, 36.798939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111649, -0.985078, -0.130978,
		-0.991571, -0.119151, 0.050889,
		-0.065736, 0.124192, -0.990078,
		29.162996, 41.764091, 36.501915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.709164, 41.212578, 36.946884>,  <29.209011, 41.677158, 37.194969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.709164, 41.212578, 36.946884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.917841, 41.309933, 36.619812>,  <29.043047, 41.368343, 36.423569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.917841, 41.309933, 36.619812>,  <28.709164, 41.212578, 36.946884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.917841, 41.309933, 36.619812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001851, -0.958764, -0.284197,
		-0.853132, 0.146750, -0.500629,
		0.521691, 0.243385, -0.817681,
		29.074348, 41.382950, 36.374508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.359440, 40.998482, 36.336800>,  <28.709164, 41.212578, 36.946884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.359440, 40.998482, 36.336800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.753042, 41.029961, 36.272873>,  <28.989202, 41.048847, 36.234516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.753042, 41.029961, 36.272873>,  <28.359440, 40.998482, 36.336800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.753042, 41.029961, 36.272873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024409, -0.948236, -0.316627,
		-0.176464, 0.307661, -0.934990,
		0.984005, 0.078696, -0.159820,
		29.048244, 41.053570, 36.224926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.468319, 40.613037, 35.741676>,  <28.359440, 40.998482, 36.336800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.468319, 40.613037, 35.741676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.825153, 40.648361, 35.918938>,  <29.039253, 40.669556, 36.025295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.825153, 40.648361, 35.918938>,  <28.468319, 40.613037, 35.741676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.825153, 40.648361, 35.918938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177431, -0.970406, -0.163798,
		0.415573, 0.224751, -0.881355,
		0.892086, 0.088310, 0.443153,
		29.092779, 40.674854, 36.051884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.885145, 40.219994, 35.386875>,  <28.468319, 40.613037, 35.741676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.885145, 40.219994, 35.386875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.064558, 40.272324, 35.740532>,  <29.172207, 40.303722, 35.952724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.064558, 40.272324, 35.740532>,  <28.885145, 40.219994, 35.386875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.064558, 40.272324, 35.740532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321124, -0.946762, -0.022816,
		0.834084, 0.294152, -0.466667,
		0.448534, 0.130828, 0.884139,
		29.199118, 40.311573, 36.005772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.438375, 39.786560, 35.370258>,  <28.885145, 40.219994, 35.386875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.438375, 39.786560, 35.370258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.386229, 39.852375, 35.761345>,  <29.354940, 39.891865, 35.995998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.386229, 39.852375, 35.761345>,  <29.438375, 39.786560, 35.370258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.386229, 39.852375, 35.761345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180616, -0.965690, 0.186601,
		0.974875, 0.200919, 0.096177,
		-0.130369, 0.164542, 0.977717,
		29.347118, 39.901737, 36.054661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.951336, 39.356190, 35.707085>,  <29.438375, 39.786560, 35.370258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.951336, 39.356190, 35.707085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.671274, 39.429268, 35.983173>,  <29.503237, 39.473114, 36.148827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.671274, 39.429268, 35.983173>,  <29.951336, 39.356190, 35.707085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.671274, 39.429268, 35.983173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084161, -0.981086, 0.174318,
		0.709014, 0.063960, 0.702288,
		-0.700155, 0.182699, 0.690220,
		29.461227, 39.484077, 36.190239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.175465, 39.010090, 36.350426>,  <29.951336, 39.356190, 35.707085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.175465, 39.010090, 36.350426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.788719, 39.073772, 36.430256>,  <29.556671, 39.111980, 36.478153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.788719, 39.073772, 36.430256>,  <30.175465, 39.010090, 36.350426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.788719, 39.073772, 36.430256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123625, -0.975940, 0.179605,
		0.223365, 0.148981, 0.963282,
		-0.966863, 0.159203, 0.199573,
		29.498661, 39.121532, 36.490128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.057318, 38.616840, 36.995567>,  <30.175465, 39.010090, 36.350426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.057318, 38.616840, 36.995567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.719389, 38.660378, 36.786022>,  <29.516632, 38.686501, 36.660297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.719389, 38.660378, 36.786022>,  <30.057318, 38.616840, 36.995567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.719389, 38.660378, 36.786022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273227, -0.929565, 0.247499,
		-0.460024, 0.352225, 0.815055,
		-0.844822, 0.108840, -0.523860,
		29.465942, 38.693031, 36.628864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.482567, 38.407490, 37.445396>,  <30.057318, 38.616840, 36.995567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.482567, 38.407490, 37.445396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.319042, 38.399605, 37.080433>,  <29.220928, 38.394875, 36.861454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.319042, 38.399605, 37.080433>,  <29.482567, 38.407490, 37.445396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.319042, 38.399605, 37.080433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482519, -0.843930, 0.234432,
		-0.774629, 0.536092, 0.335495,
		-0.408811, -0.019715, -0.912406,
		29.196400, 38.393692, 36.806709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.781116, 38.255684, 37.582508>,  <29.482567, 38.407490, 37.445396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.781116, 38.255684, 37.582508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.854839, 38.153687, 37.202820>,  <28.899073, 38.092487, 36.975006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.854839, 38.153687, 37.202820>,  <28.781116, 38.255684, 37.582508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.854839, 38.153687, 37.202820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625797, -0.775150, 0.086722,
		-0.757898, 0.578033, -0.302437,
		0.184306, -0.254990, -0.949216,
		28.910131, 38.077190, 36.918056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.197319, 37.975189, 37.443710>,  <28.781116, 38.255684, 37.582508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.197319, 37.975189, 37.443710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.424889, 37.843376, 37.142319>,  <28.561430, 37.764290, 36.961483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.424889, 37.843376, 37.142319>,  <28.197319, 37.975189, 37.443710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.424889, 37.843376, 37.142319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541073, -0.839966, -0.041187,
		-0.619328, 0.431122, -0.656175,
		0.568922, -0.329531, -0.753483,
		28.595566, 37.744518, 36.916275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.790604, 37.857288, 36.867634>,  <28.197319, 37.975189, 37.443710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.790604, 37.857288, 36.867634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.100582, 37.606243, 36.837818>,  <28.286570, 37.455616, 36.819931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.100582, 37.606243, 36.837818>,  <27.790604, 37.857288, 36.867634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.100582, 37.606243, 36.837818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631558, -0.773505, -0.053140,
		-0.024301, 0.088254, -0.995802,
		0.774948, -0.627616, -0.074535,
		28.333067, 37.417957, 36.815456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.488920, 37.382980, 36.344627>,  <27.790604, 37.857288, 36.867634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.488920, 37.382980, 36.344627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.788988, 37.177425, 36.511078>,  <27.969028, 37.054092, 36.610947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.788988, 37.177425, 36.511078>,  <27.488920, 37.382980, 36.344627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.788988, 37.177425, 36.511078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549870, -0.834336, -0.039074,
		0.367269, -0.199504, -0.908467,
		0.750171, -0.513889, 0.416127,
		28.014040, 37.023258, 36.635918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.595453, 36.824535, 35.869522>,  <27.488920, 37.382980, 36.344627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.595453, 36.824535, 35.869522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.730082, 36.718212, 36.230865>,  <27.810860, 36.654419, 36.447674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.730082, 36.718212, 36.230865>,  <27.595453, 36.824535, 35.869522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.730082, 36.718212, 36.230865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535349, -0.843229, -0.048656,
		0.774675, -0.467238, -0.426108,
		0.336572, -0.265809, 0.903363,
		27.831053, 36.638470, 36.501873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.703516, 36.121117, 35.790878>,  <27.595453, 36.824535, 35.869522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.703516, 36.121117, 35.790878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.714142, 36.161263, 36.188717>,  <27.720518, 36.185349, 36.427422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.714142, 36.161263, 36.188717>,  <27.703516, 36.121117, 35.790878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.714142, 36.161263, 36.188717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133494, -0.985679, 0.103031,
		0.990693, -0.135510, -0.012788,
		0.026566, 0.100365, 0.994596,
		27.722113, 36.191372, 36.487095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.240711, 35.626858, 36.040421>,  <27.703516, 36.121117, 35.790878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.240711, 35.626858, 36.040421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.949999, 35.727638, 36.296017>,  <27.775572, 35.788109, 36.449375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.949999, 35.727638, 36.296017>,  <28.240711, 35.626858, 36.040421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.949999, 35.727638, 36.296017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381913, -0.921463, -0.071049,
		0.570906, -0.295676, 0.765925,
		-0.726779, 0.251954, 0.638992,
		27.731964, 35.803223, 36.487713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.759571, 35.149857, 36.318321>,  <28.240711, 35.626858, 36.040421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.759571, 35.149857, 36.318321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.083612, 35.146751, 36.552814>,  <29.278036, 35.144890, 36.693512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.083612, 35.146751, 36.552814>,  <28.759571, 35.149857, 36.318321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.083612, 35.146751, 36.552814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474289, -0.579126, -0.663071,
		0.344650, 0.815201, -0.465471,
		0.810102, -0.007760, 0.586237,
		29.326643, 35.144424, 36.728687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.384668, 35.252823, 35.926888>,  <28.759571, 35.149857, 36.318321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.384668, 35.252823, 35.926888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.500372, 35.052673, 36.253311>,  <29.569794, 34.932583, 36.449165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.500372, 35.052673, 36.253311>,  <29.384668, 35.252823, 35.926888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.500372, 35.052673, 36.253311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676410, -0.496390, -0.544119,
		0.677347, 0.709385, 0.194870,
		0.289258, -0.500370, 0.816063,
		29.587149, 34.902561, 36.498131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.108109, 35.177731, 35.986752>,  <29.384668, 35.252823, 35.926888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.108109, 35.177731, 35.986752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.975557, 34.887909, 36.228481>,  <29.896027, 34.714016, 36.373520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.975557, 34.887909, 36.228481>,  <30.108109, 35.177731, 35.986752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.975557, 34.887909, 36.228481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820936, -0.537118, -0.193828,
		0.465032, 0.431880, 0.772803,
		-0.331376, -0.724558, 0.604323,
		29.876144, 34.670540, 36.409779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.582008, 35.071651, 36.554459>,  <30.108109, 35.177731, 35.986752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.582008, 35.071651, 36.554459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.399221, 34.743896, 36.416016>,  <30.289549, 34.547245, 36.332951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.399221, 34.743896, 36.416016>,  <30.582008, 35.071651, 36.554459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.399221, 34.743896, 36.416016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833461, -0.530351, 0.155147,
		-0.310683, -0.217569, 0.925278,
		-0.456967, -0.819385, -0.346106,
		30.262131, 34.498081, 36.312183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.123529, 35.247822, 37.086292>,  <30.582008, 35.071651, 36.554459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.123529, 35.247822, 37.086292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.471052, 35.051125, 37.109497>,  <31.679565, 34.933105, 37.123421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.471052, 35.051125, 37.109497>,  <31.123529, 35.247822, 37.086292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.471052, 35.051125, 37.109497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172596, -0.190936, 0.966310,
		-0.464096, -0.849550, -0.250759,
		0.868807, -0.491741, 0.058016,
		31.731695, 34.903603, 37.126904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.960348, 34.736740, 37.399166>,  <31.123529, 35.247822, 37.086292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.960348, 34.736740, 37.399166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.355028, 34.754017, 37.461849>,  <31.591837, 34.764385, 37.499458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.355028, 34.754017, 37.461849>,  <30.960348, 34.736740, 37.399166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.355028, 34.754017, 37.461849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145403, -0.196436, 0.969676,
		0.072669, -0.979565, -0.187543,
		0.986700, 0.043196, 0.156706,
		31.651039, 34.766975, 37.508862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.126987, 34.233688, 37.934952>,  <30.960348, 34.736740, 37.399166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.126987, 34.233688, 37.934952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.446980, 34.473660, 37.939178>,  <31.638975, 34.617641, 37.941715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.446980, 34.473660, 37.939178>,  <31.126987, 34.233688, 37.934952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.446980, 34.473660, 37.939178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068899, -0.109338, 0.991614,
		0.596056, -0.792545, -0.128803,
		0.799981, 0.599931, 0.010566,
		31.686974, 34.653641, 37.942348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.562061, 33.905479, 38.414082>,  <31.126987, 34.233688, 37.934952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.562061, 33.905479, 38.414082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.720610, 34.272713, 38.412258>,  <31.815739, 34.493053, 38.411163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.720610, 34.272713, 38.412258>,  <31.562061, 33.905479, 38.414082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.720610, 34.272713, 38.412258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004564, 0.002998, 0.999985,
		0.918080, -0.396384, -0.003002,
		0.396369, 0.918080, -0.004561,
		31.839520, 34.548138, 38.410889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.072517, 33.920258, 38.945751>,  <31.562061, 33.905479, 38.414082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.072517, 33.920258, 38.945751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.041714, 34.312660, 38.874542>,  <32.023232, 34.548103, 38.831818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.041714, 34.312660, 38.874542>,  <32.072517, 33.920258, 38.945751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.041714, 34.312660, 38.874542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135077, 0.187169, 0.972996,
		0.987837, 0.050887, -0.146926,
		-0.077013, 0.981009, -0.178018,
		32.018608, 34.606964, 38.821136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.656563, 34.208065, 39.247803>,  <32.072517, 33.920258, 38.945751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.656563, 34.208065, 39.247803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.381084, 34.497955, 39.239151>,  <32.215797, 34.671890, 39.233959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.381084, 34.497955, 39.239151>,  <32.656563, 34.208065, 39.247803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.381084, 34.497955, 39.239151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225555, 0.242505, 0.943566,
		0.689076, 0.644949, -0.330478,
		-0.688694, 0.724729, -0.021632,
		32.174477, 34.715374, 39.232662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.854832, 34.835644, 39.620262>,  <32.656563, 34.208065, 39.247803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.854832, 34.835644, 39.620262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.456474, 34.868763, 39.605648>,  <32.217461, 34.888634, 39.596878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.456474, 34.868763, 39.605648>,  <32.854832, 34.835644, 39.620262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.456474, 34.868763, 39.605648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018454, 0.209441, 0.977647,
		0.088597, 0.974310, -0.207054,
		-0.995897, 0.082795, -0.036536,
		32.157707, 34.893600, 39.594688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731571, 35.391129, 39.973209>,  <32.854832, 34.835644, 39.620262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731571, 35.391129, 39.973209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.383812, 35.194633, 39.994514>,  <32.175156, 35.076736, 40.007298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.383812, 35.194633, 39.994514>,  <32.731571, 35.391129, 39.973209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.383812, 35.194633, 39.994514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021668, 0.145583, 0.989109,
		-0.493640, 0.858774, -0.137213,
		-0.869396, -0.491236, 0.053258,
		32.122993, 35.047264, 40.010490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.256573, 35.857544, 40.308487>,  <32.731571, 35.391129, 39.973209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.256573, 35.857544, 40.308487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.086487, 35.499702, 40.363438>,  <31.984436, 35.284996, 40.396408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.086487, 35.499702, 40.363438>,  <32.256573, 35.857544, 40.308487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.086487, 35.499702, 40.363438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054891, 0.176992, 0.982680,
		-0.903428, 0.410306, -0.124365,
		-0.425211, -0.894608, 0.137378,
		31.958923, 35.231319, 40.404652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.798531, 35.925835, 40.943428>,  <32.256573, 35.857544, 40.308487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.798531, 35.925835, 40.943428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.818344, 35.530437, 40.886269>,  <31.830233, 35.293198, 40.851971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.818344, 35.530437, 40.886269>,  <31.798531, 35.925835, 40.943428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.818344, 35.530437, 40.886269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086342, -0.146779, 0.985394,
		-0.995034, -0.036470, -0.092619,
		0.049532, -0.988497, -0.142901,
		31.833204, 35.233887, 40.843399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.379341, 35.761597, 41.487473>,  <31.798531, 35.925835, 40.943428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.379341, 35.761597, 41.487473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.615915, 35.450150, 41.403603>,  <31.757860, 35.263283, 41.353279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.615915, 35.450150, 41.403603>,  <31.379341, 35.761597, 41.487473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.615915, 35.450150, 41.403603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065005, -0.213146, 0.974855,
		-0.803730, -0.590192, -0.075447,
		0.591433, -0.778616, -0.209677,
		31.793344, 35.216564, 41.340698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.243931, 35.256054, 41.964718>,  <31.379341, 35.761597, 41.487473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.243931, 35.256054, 41.964718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.607672, 35.136299, 41.849167>,  <31.825916, 35.064445, 41.779835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.607672, 35.136299, 41.849167>,  <31.243931, 35.256054, 41.964718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.607672, 35.136299, 41.849167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184866, -0.331274, 0.925247,
		-0.372704, -0.894777, -0.245898,
		0.909350, -0.299385, -0.288881,
		31.880478, 35.046486, 41.762505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.275303, 34.541424, 42.159863>,  <31.243931, 35.256054, 41.964718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.275303, 34.541424, 42.159863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.653593, 34.655136, 42.096886>,  <31.880568, 34.723366, 42.059101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.653593, 34.655136, 42.096886>,  <31.275303, 34.541424, 42.159863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.653593, 34.655136, 42.096886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283391, -0.484370, 0.827693,
		0.159043, -0.827386, -0.538644,
		0.945725, 0.284286, -0.157438,
		31.937311, 34.740421, 42.049656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.595730, 33.878380, 42.192589>,  <31.275303, 34.541424, 42.159863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.595730, 33.878380, 42.192589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.867386, 34.164898, 42.256706>,  <32.030380, 34.336807, 42.295177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.867386, 34.164898, 42.256706>,  <31.595730, 33.878380, 42.192589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.867386, 34.164898, 42.256706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405509, -0.548166, 0.731490,
		0.611827, -0.431784, -0.662744,
		0.679139, 0.716294, 0.160291,
		32.071129, 34.379787, 42.304794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.278774, 33.607056, 42.160591>,  <31.595730, 33.878380, 42.192589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.278774, 33.607056, 42.160591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281269, 33.933445, 42.391811>,  <32.282768, 34.129280, 42.530544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281269, 33.933445, 42.391811>,  <32.278774, 33.607056, 42.160591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.281269, 33.933445, 42.391811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212136, -0.565984, 0.796655,
		0.977220, 0.117654, -0.176630,
		0.006240, 0.815977, 0.578050,
		32.283142, 34.178238, 42.565228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.831520, 33.490246, 42.632004>,  <32.278774, 33.607056, 42.160591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.831520, 33.490246, 42.632004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.625351, 33.793728, 42.791355>,  <32.501648, 33.975819, 42.886967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.625351, 33.793728, 42.791355>,  <32.831520, 33.490246, 42.632004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.625351, 33.793728, 42.791355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060099, -0.431740, 0.899994,
		0.854826, 0.487820, 0.176932,
		-0.515423, 0.758705, 0.398380,
		32.470722, 34.021339, 42.910870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.115654, 33.582111, 43.302074>,  <32.831520, 33.490246, 42.632004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.115654, 33.582111, 43.302074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756683, 33.758339, 43.311310>,  <32.541302, 33.864075, 43.316853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756683, 33.758339, 43.311310>,  <33.115654, 33.582111, 43.302074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.756683, 33.758339, 43.311310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076839, -0.207627, 0.975185,
		0.434430, 0.873379, 0.220182,
		-0.897422, 0.440569, 0.023090,
		32.487457, 33.890511, 43.318237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.130142, 34.035568, 43.877728>,  <33.115654, 33.582111, 43.302074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.130142, 34.035568, 43.877728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.750996, 33.927811, 43.809628>,  <32.523510, 33.863155, 43.768768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.750996, 33.927811, 43.809628>,  <33.130142, 34.035568, 43.877728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.750996, 33.927811, 43.809628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073983, -0.333616, 0.939801,
		-0.309970, 0.903399, 0.296292,
		-0.947863, -0.269390, -0.170247,
		32.466637, 33.846992, 43.758553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.675739, 34.351578, 44.414619>,  <33.130142, 34.035568, 43.877728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.675739, 34.351578, 44.414619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.497673, 34.022755, 44.272606>,  <32.390831, 33.825462, 44.187397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.497673, 34.022755, 44.272606>,  <32.675739, 34.351578, 44.414619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.497673, 34.022755, 44.272606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216890, -0.285691, 0.933455,
		-0.868783, 0.492548, -0.051115,
		-0.445169, -0.822056, -0.355032,
		32.364124, 33.776138, 44.166096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.284454, 34.322662, 44.886581>,  <32.675739, 34.351578, 44.414619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.284454, 34.322662, 44.886581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.217888, 33.980507, 44.690369>,  <32.177948, 33.775215, 44.572639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.217888, 33.980507, 44.690369>,  <32.284454, 34.322662, 44.886581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.217888, 33.980507, 44.690369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330695, -0.420244, 0.845006,
		-0.928949, 0.302841, -0.212935,
		-0.166418, -0.855384, -0.490534,
		32.167961, 33.723892, 44.543209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.530735, 34.047707, 44.953308>,  <32.284454, 34.322662, 44.886581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.530735, 34.047707, 44.953308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.778316, 33.741505, 44.883003>,  <31.926867, 33.557781, 44.840820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.778316, 33.741505, 44.883003>,  <31.530735, 34.047707, 44.953308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.778316, 33.741505, 44.883003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079573, -0.283745, 0.955593,
		-0.781385, -0.577483, -0.236539,
		0.618955, -0.765508, -0.175762,
		31.964003, 33.511852, 44.830276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.138510, 33.455379, 45.068272>,  <31.530735, 34.047707, 44.953308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.138510, 33.455379, 45.068272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.521904, 33.351170, 45.114628>,  <31.751942, 33.288643, 45.142441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.521904, 33.351170, 45.114628>,  <31.138510, 33.455379, 45.068272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.521904, 33.351170, 45.114628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195831, -0.306035, 0.931661,
		-0.207248, -0.915682, -0.344348,
		0.958488, -0.260519, 0.115893,
		31.809450, 33.273014, 45.149395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.027815, 32.827950, 45.456024>,  <31.138510, 33.455379, 45.068272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.027815, 32.827950, 45.456024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.416103, 32.922680, 45.472076>,  <31.649076, 32.979519, 45.481709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.416103, 32.922680, 45.472076>,  <31.027815, 32.827950, 45.456024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.416103, 32.922680, 45.472076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034256, -0.301861, 0.952736,
		0.237748, -0.923468, -0.301136,
		0.970722, 0.236827, 0.040132,
		31.707319, 32.993729, 45.484116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.358051, 32.203735, 45.684792>,  <31.027815, 32.827950, 45.456024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.358051, 32.203735, 45.684792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.611511, 32.503330, 45.762260>,  <31.763588, 32.683086, 45.808743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.611511, 32.503330, 45.762260>,  <31.358051, 32.203735, 45.684792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.611511, 32.503330, 45.762260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212038, -0.408898, 0.887605,
		0.743994, -0.521366, -0.417911,
		0.633650, 0.748986, 0.193668,
		31.801607, 32.728027, 45.820362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.839375, 31.938219, 45.888256>,  <31.358051, 32.203735, 45.684792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.839375, 31.938219, 45.888256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.929390, 32.298580, 46.036705>,  <31.983398, 32.514797, 46.125774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.929390, 32.298580, 46.036705>,  <31.839375, 31.938219, 45.888256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.929390, 32.298580, 46.036705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305536, -0.426933, 0.851103,
		0.925206, -0.078139, -0.371334,
		0.225039, 0.900901, 0.371127,
		31.996902, 32.568851, 46.148045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.476151, 31.860931, 46.248436>,  <31.839375, 31.938219, 45.888256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.476151, 31.860931, 46.248436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.314987, 32.193123, 46.402302>,  <32.218288, 32.392437, 46.494621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.314987, 32.193123, 46.402302>,  <32.476151, 31.860931, 46.248436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.314987, 32.193123, 46.402302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264828, -0.296526, 0.917572,
		0.876088, 0.471570, -0.100461,
		-0.402910, 0.830478, 0.384668,
		32.194115, 32.442265, 46.517704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.941544, 32.034348, 46.795628>,  <32.476151, 31.860931, 46.248436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.941544, 32.034348, 46.795628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.618908, 32.249561, 46.893555>,  <32.425327, 32.378689, 46.952309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.618908, 32.249561, 46.893555>,  <32.941544, 32.034348, 46.795628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.618908, 32.249561, 46.893555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247132, -0.069288, 0.966501,
		0.536971, 0.840072, -0.077078,
		-0.806590, 0.538032, 0.244814,
		32.376930, 32.410973, 46.966999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.184769, 32.510471, 47.292301>,  <32.941544, 32.034348, 46.795628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.184769, 32.510471, 47.292301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.790592, 32.478558, 47.352352>,  <32.554085, 32.459412, 47.388382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.790592, 32.478558, 47.352352>,  <33.184769, 32.510471, 47.292301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.790592, 32.478558, 47.352352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160716, -0.149260, 0.975649,
		-0.055431, 0.985574, 0.159909,
		-0.985443, -0.079781, 0.150124,
		32.494961, 32.454624, 47.397388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.029819, 32.907303, 47.896526>,  <33.184769, 32.510471, 47.292301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.029819, 32.907303, 47.896526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.731300, 32.643993, 47.857094>,  <32.552189, 32.486008, 47.833435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.731300, 32.643993, 47.857094>,  <33.029819, 32.907303, 47.896526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.731300, 32.643993, 47.857094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107968, -0.265863, 0.957945,
		-0.656795, 0.704271, 0.269486,
		-0.746299, -0.658270, -0.098579,
		32.507412, 32.446514, 47.827518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.598969, 33.042145, 48.531265>,  <33.029819, 32.907303, 47.896526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.598969, 33.042145, 48.531265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.449631, 32.695923, 48.397747>,  <32.360027, 32.488190, 48.317635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.449631, 32.695923, 48.397747>,  <32.598969, 33.042145, 48.531265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.449631, 32.695923, 48.397747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000709, -0.359547, 0.933127,
		-0.927691, 0.348617, 0.133622,
		-0.373347, -0.865559, -0.333796,
		32.337627, 32.436256, 48.297607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.060410, 32.951214, 48.950855>,  <32.598969, 33.042145, 48.531265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.060410, 32.951214, 48.950855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.173210, 32.596676, 48.803955>,  <32.240891, 32.383953, 48.715813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.173210, 32.596676, 48.803955>,  <32.060410, 32.951214, 48.950855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.173210, 32.596676, 48.803955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013865, -0.378986, 0.925299,
		-0.959314, -0.266027, -0.094586,
		0.282001, -0.886340, -0.367255,
		32.257809, 32.330772, 48.693779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.568426, 32.442986, 49.249596>,  <32.060410, 32.951214, 48.950855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.568426, 32.442986, 49.249596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.913057, 32.275227, 49.135201>,  <32.119835, 32.174572, 49.066563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.913057, 32.275227, 49.135201>,  <31.568426, 32.442986, 49.249596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.913057, 32.275227, 49.135201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100627, -0.411104, 0.906018,
		-0.497553, -0.809383, -0.311995,
		0.861577, -0.419396, -0.285992,
		32.171532, 32.149406, 49.049404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.529526, 31.743206, 49.474461>,  <31.568426, 32.442986, 49.249596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.529526, 31.743206, 49.474461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917658, 31.831186, 49.434296>,  <32.150536, 31.883974, 49.410198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917658, 31.831186, 49.434296>,  <31.529526, 31.743206, 49.474461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.917658, 31.831186, 49.434296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168325, -0.316387, 0.933577,
		0.173571, -0.922779, -0.344023,
		0.970330, 0.219950, -0.100411,
		32.208755, 31.897171, 49.404171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.850565, 31.421108, 50.019348>,  <31.529526, 31.743206, 49.474461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.850565, 31.421108, 50.019348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.147984, 31.646185, 49.874840>,  <32.326435, 31.781231, 49.788136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.147984, 31.646185, 49.874840>,  <31.850565, 31.421108, 50.019348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.147984, 31.646185, 49.874840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477963, -0.069399, 0.875634,
		0.467641, -0.823748, -0.320548,
		0.743548, 0.562693, -0.361268,
		32.371048, 31.814993, 49.766460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.476093, 30.992132, 49.986664>,  <31.850565, 31.421108, 50.019348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.476093, 30.992132, 49.986664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634003, 31.359339, 50.001644>,  <32.728748, 31.579662, 50.010632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634003, 31.359339, 50.001644>,  <32.476093, 30.992132, 49.986664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.634003, 31.359339, 50.001644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407246, -0.211370, 0.888523,
		0.823594, -0.335512, -0.457301,
		0.394770, 0.918016, 0.037447,
		32.752434, 31.634743, 50.012878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.191982, 31.026320, 50.057674>,  <32.476093, 30.992132, 49.986664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.191982, 31.026320, 50.057674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.060520, 31.361649, 50.231667>,  <32.981644, 31.562845, 50.336060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.060520, 31.361649, 50.231667>,  <33.191982, 31.026320, 50.057674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060520, 31.361649, 50.231667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562718, -0.196072, 0.803059,
		0.758508, 0.508697, -0.407299,
		-0.328654, 0.838321, 0.434976,
		32.961926, 31.613146, 50.362160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710587, 31.284414, 50.365822>,  <33.191982, 31.026320, 50.057674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710587, 31.284414, 50.365822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.404793, 31.452232, 50.561596>,  <33.221317, 31.552923, 50.679058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.404793, 31.452232, 50.561596>,  <33.710587, 31.284414, 50.365822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.404793, 31.452232, 50.561596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338173, -0.385370, 0.858562,
		0.548819, 0.821871, 0.152730,
		-0.764485, 0.419546, 0.489432,
		33.175446, 31.578096, 50.708427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.975410, 31.596222, 50.931023>,  <33.710587, 31.284414, 50.365822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.975410, 31.596222, 50.931023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.589115, 31.524952, 51.006504>,  <33.357338, 31.482191, 51.051792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.589115, 31.524952, 51.006504>,  <33.975410, 31.596222, 50.931023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589115, 31.524952, 51.006504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255059, -0.517176, 0.816991,
		-0.047971, 0.837128, 0.544899,
		-0.965735, -0.178173, 0.188707,
		33.299397, 31.471500, 51.063118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994255, 31.541403, 51.641941>,  <33.975410, 31.596222, 50.931023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994255, 31.541403, 51.641941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.655357, 31.352839, 51.544006>,  <33.452019, 31.239700, 51.485245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.655357, 31.352839, 51.544006>,  <33.994255, 31.541403, 51.641941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655357, 31.352839, 51.544006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218751, -0.729652, 0.647886,
		-0.484069, 0.495359, 0.721316,
		-0.847246, -0.471410, -0.244842,
		33.401184, 31.211416, 51.470554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681362, 31.280548, 52.346138>,  <33.994255, 31.541403, 51.641941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681362, 31.280548, 52.346138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521416, 31.078327, 52.040321>,  <33.425449, 30.956995, 51.856831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521416, 31.078327, 52.040321>,  <33.681362, 31.280548, 52.346138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.521416, 31.078327, 52.040321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121534, -0.856010, 0.502470,
		-0.908480, 0.108003, 0.403731,
		-0.399867, -0.505551, -0.764542,
		33.401455, 30.926662, 51.810959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294994, 30.699789, 52.663441>,  <33.681362, 31.280548, 52.346138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294994, 30.699789, 52.663441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.355839, 30.608984, 52.278664>,  <33.392345, 30.554501, 52.047798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.355839, 30.608984, 52.278664>,  <33.294994, 30.699789, 52.663441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.355839, 30.608984, 52.278664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132084, -0.959866, 0.247410,
		-0.979499, -0.164690, -0.116017,
		0.152107, -0.227013, -0.961940,
		33.401470, 30.540880, 51.990082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.870934, 30.201202, 52.330021>,  <33.294994, 30.699789, 52.663441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.870934, 30.201202, 52.330021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.212887, 30.163174, 52.126007>,  <33.418060, 30.140356, 52.003597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.212887, 30.163174, 52.126007>,  <32.870934, 30.201202, 52.330021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.212887, 30.163174, 52.126007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007397, -0.980733, 0.195211,
		-0.518771, -0.170655, -0.837707,
		0.854882, -0.095073, -0.510038,
		33.469353, 30.134651, 51.972996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.887096, 29.392881, 52.085636>,  <32.870934, 30.201202, 52.330021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.887096, 29.392881, 52.085636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.107803, 29.061296, 52.049042>,  <33.240227, 28.862345, 52.027084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.107803, 29.061296, 52.049042>,  <32.887096, 29.392881, 52.085636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.107803, 29.061296, 52.049042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342575, -0.325294, 0.881377,
		-0.760390, -0.454975, -0.463470,
		0.551768, -0.828964, -0.091488,
		33.273335, 28.812607, 52.021595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.426971, 28.771278, 52.001411>,  <32.887096, 29.392881, 52.085636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.426971, 28.771278, 52.001411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779297, 28.735868, 52.187458>,  <32.990692, 28.714622, 52.299084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779297, 28.735868, 52.187458>,  <32.426971, 28.771278, 52.001411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.779297, 28.735868, 52.187458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473382, -0.182696, 0.861703,
		0.008693, -0.979176, -0.202827,
		0.880814, -0.088524, 0.465112,
		33.043541, 28.709311, 52.326992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.541351, 28.123262, 52.375160>,  <32.426971, 28.771278, 52.001411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.541351, 28.123262, 52.375160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717907, 28.433895, 52.554981>,  <32.823841, 28.620275, 52.662876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717907, 28.433895, 52.554981>,  <32.541351, 28.123262, 52.375160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717907, 28.433895, 52.554981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655118, -0.063473, 0.752856,
		0.613189, -0.626811, 0.480737,
		0.441384, 0.776582, 0.449556,
		32.850323, 28.666870, 52.689846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.862457, 28.008539, 53.014423>,  <32.541351, 28.123262, 52.375160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.862457, 28.008539, 53.014423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.700497, 28.372435, 52.977688>,  <32.603321, 28.590771, 52.955647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.700497, 28.372435, 52.977688>,  <32.862457, 28.008539, 53.014423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.700497, 28.372435, 52.977688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620936, -0.199848, 0.757957,
		0.671189, 0.363921, 0.645807,
		-0.404900, 0.909738, -0.091836,
		32.579025, 28.645355, 52.950138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.818707, 28.296698, 53.696930>,  <32.862457, 28.008539, 53.014423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.818707, 28.296698, 53.696930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.540440, 28.482294, 53.477566>,  <32.373478, 28.593653, 53.345947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.540440, 28.482294, 53.477566>,  <32.818707, 28.296698, 53.696930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.540440, 28.482294, 53.477566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665909, -0.130166, 0.734590,
		0.269460, 0.876224, 0.399530,
		-0.695670, 0.463993, -0.548410,
		32.331738, 28.621492, 53.313042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.814930, 28.996460, 53.435295>,  <32.818707, 28.296698, 53.696930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.814930, 28.996460, 53.435295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.140358, 28.776545, 53.511013>,  <33.335617, 28.644596, 53.556442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.140358, 28.776545, 53.511013>,  <32.814930, 28.996460, 53.435295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.140358, 28.776545, 53.511013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098414, -0.190654, -0.976712,
		0.573072, 0.813257, -0.101004,
		0.813574, -0.549786, 0.189295,
		33.384430, 28.611609, 53.567802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.328342, 29.172867, 53.004890>,  <32.814930, 28.996460, 53.435295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.328342, 29.172867, 53.004890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.436489, 28.800966, 53.104858>,  <33.501377, 28.577826, 53.164841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.436489, 28.800966, 53.104858>,  <33.328342, 29.172867, 53.004890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.436489, 28.800966, 53.104858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269791, -0.176022, -0.946694,
		0.924183, 0.323380, 0.203249,
		0.270366, -0.929754, 0.249922,
		33.517597, 28.522039, 53.179836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.032700, 28.987005, 52.958973>,  <33.328342, 29.172867, 53.004890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.032700, 28.987005, 52.958973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.847076, 28.636581, 52.906555>,  <33.735703, 28.426327, 52.875103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.847076, 28.636581, 52.906555>,  <34.032700, 28.987005, 52.958973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847076, 28.636581, 52.906555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361613, -0.052307, -0.930860,
		0.808633, -0.479360, 0.341067,
		-0.464057, -0.876058, -0.131046,
		33.707859, 28.373764, 52.867241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.410011, 28.474548, 52.555534>,  <34.032700, 28.987005, 52.958973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.410011, 28.474548, 52.555534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018097, 28.410669, 52.507343>,  <33.782948, 28.372343, 52.478428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018097, 28.410669, 52.507343>,  <34.410011, 28.474548, 52.555534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.018097, 28.410669, 52.507343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111195, 0.065884, -0.991612,
		0.166293, -0.984965, -0.046795,
		-0.979787, -0.159695, -0.120479,
		33.724159, 28.362761, 52.471199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.173523, 27.871904, 52.125511>,  <34.410011, 28.474548, 52.555534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.173523, 27.871904, 52.125511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.879135, 28.139044, 52.081104>,  <33.702503, 28.299328, 52.054462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.879135, 28.139044, 52.081104>,  <34.173523, 27.871904, 52.125511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.879135, 28.139044, 52.081104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151029, 0.002114, -0.988527,
		-0.659953, -0.744293, -0.102421,
		-0.735970, 0.667850, -0.111015,
		33.658344, 28.339399, 52.047798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.651913, 27.546181, 51.809929>,  <34.173523, 27.871904, 52.125511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.651913, 27.546181, 51.809929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.629879, 27.938454, 51.734848>,  <33.616657, 28.173817, 51.689800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.629879, 27.938454, 51.734848>,  <33.651913, 27.546181, 51.809929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.629879, 27.938454, 51.734848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005574, -0.188285, -0.982098,
		-0.998466, -0.053054, 0.015839,
		-0.055087, 0.980680, -0.187701,
		33.613354, 28.232658, 51.678539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.236813, 27.636763, 51.249817>,  <33.651913, 27.546181, 51.809929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.236813, 27.636763, 51.249817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.431911, 27.985933, 51.253979>,  <33.548969, 28.195435, 51.256477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.431911, 27.985933, 51.253979>,  <33.236813, 27.636763, 51.249817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.431911, 27.985933, 51.253979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199038, -0.099588, -0.974919,
		-0.849994, 0.477582, -0.222319,
		0.487743, 0.872925, 0.010407,
		33.578236, 28.247810, 51.257099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.991028, 27.928350, 50.650082>,  <33.236813, 27.636763, 51.249817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.991028, 27.928350, 50.650082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.319790, 28.144512, 50.722122>,  <33.517048, 28.274208, 50.765347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.319790, 28.144512, 50.722122>,  <32.991028, 27.928350, 50.650082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.319790, 28.144512, 50.722122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309385, -0.158039, -0.937712,
		-0.478280, 0.826431, -0.297086,
		0.821906, 0.540403, 0.180099,
		33.566360, 28.306633, 50.776154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.063007, 28.481678, 50.168522>,  <32.991028, 27.928350, 50.650082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.063007, 28.481678, 50.168522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437035, 28.456442, 50.308044>,  <33.661449, 28.441299, 50.391758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437035, 28.456442, 50.308044>,  <33.063007, 28.481678, 50.168522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437035, 28.456442, 50.308044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352848, 0.071706, -0.932929,
		0.033848, 0.995428, 0.089311,
		0.935068, -0.063091, 0.348808,
		33.717556, 28.437515, 50.412685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416790, 29.170149, 50.095673>,  <33.063007, 28.481678, 50.168522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416790, 29.170149, 50.095673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.676098, 28.865612, 50.091576>,  <33.831684, 28.682890, 50.089119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.676098, 28.865612, 50.091576>,  <33.416790, 29.170149, 50.095673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.676098, 28.865612, 50.091576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255657, 0.230321, -0.938931,
		0.717207, 0.606061, 0.343952,
		0.648269, -0.761342, -0.010244,
		33.870579, 28.637209, 50.088501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977207, 29.471651, 49.731705>,  <33.416790, 29.170149, 50.095673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977207, 29.471651, 49.731705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.088413, 29.087727, 49.747040>,  <34.155136, 28.857372, 49.756241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.088413, 29.087727, 49.747040>,  <33.977207, 29.471651, 49.731705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.088413, 29.087727, 49.747040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502598, 0.111337, -0.857321,
		0.818599, 0.257615, 0.513352,
		0.278014, -0.959812, 0.038336,
		34.171818, 28.799784, 49.758541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718952, 29.536516, 49.771137>,  <33.977207, 29.471651, 49.731705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718952, 29.536516, 49.771137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.560730, 29.193983, 49.638332>,  <34.465797, 28.988462, 49.558651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.560730, 29.193983, 49.638332>,  <34.718952, 29.536516, 49.771137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.560730, 29.193983, 49.638332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237306, 0.253926, -0.937661,
		0.887256, -0.449683, 0.102771,
		-0.395553, -0.856333, -0.332010,
		34.442062, 28.937082, 49.538731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.234905, 29.297041, 49.247993>,  <34.718952, 29.536516, 49.771137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.234905, 29.297041, 49.247993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899509, 29.096437, 49.162735>,  <34.698273, 28.976074, 49.111580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899509, 29.096437, 49.162735>,  <35.234905, 29.297041, 49.247993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899509, 29.096437, 49.162735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085110, 0.265814, -0.960260,
		0.538237, -0.823304, -0.180198,
		-0.838485, -0.501511, -0.213142,
		34.647964, 28.945984, 49.098793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419174, 28.942194, 48.669666>,  <35.234905, 29.297041, 49.247993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.419174, 28.942194, 48.669666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.021194, 28.919182, 48.636772>,  <34.782406, 28.905375, 48.617035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.021194, 28.919182, 48.636772>,  <35.419174, 28.942194, 48.669666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021194, 28.919182, 48.636772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068248, 0.212971, -0.974672,
		0.073589, -0.975363, -0.207969,
		-0.994951, -0.057531, -0.082239,
		34.722710, 28.901922, 48.612099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326515, 28.617325, 48.089325>,  <35.419174, 28.942194, 48.669666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.326515, 28.617325, 48.089325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957970, 28.765335, 48.136936>,  <34.736843, 28.854141, 48.165504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957970, 28.765335, 48.136936>,  <35.326515, 28.617325, 48.089325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957970, 28.765335, 48.136936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033090, 0.230445, -0.972523,
		-0.387288, -0.899987, -0.200079,
		-0.921365, 0.370026, 0.119029,
		34.681561, 28.876343, 48.172646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.915092, 28.336874, 47.566628>,  <35.326515, 28.617325, 48.089325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.915092, 28.336874, 47.566628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.726898, 28.677334, 47.659744>,  <34.613983, 28.881609, 47.715614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.726898, 28.677334, 47.659744>,  <34.915092, 28.336874, 47.566628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726898, 28.677334, 47.659744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159737, 0.177306, -0.971106,
		-0.867830, -0.494075, 0.052540,
		-0.470484, 0.851148, 0.232794,
		34.585754, 28.932678, 47.729584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517635, 28.468391, 47.015503>,  <34.915092, 28.336874, 47.566628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517635, 28.468391, 47.015503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.508976, 28.826628, 47.193245>,  <34.503780, 29.041569, 47.299892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.508976, 28.826628, 47.193245>,  <34.517635, 28.468391, 47.015503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.508976, 28.826628, 47.193245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236745, 0.427229, -0.872598,
		-0.971331, -0.124085, 0.202779,
		-0.021644, 0.895589, 0.444357,
		34.502483, 29.095304, 47.326553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931923, 28.676458, 46.669518>,  <34.517635, 28.468391, 47.015503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931923, 28.676458, 46.669518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131535, 28.992661, 46.811543>,  <34.251301, 29.182383, 46.896759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131535, 28.992661, 46.811543>,  <33.931923, 28.676458, 46.669518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131535, 28.992661, 46.811543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302883, 0.542993, -0.783211,
		-0.811931, 0.283302, 0.510400,
		0.499029, 0.790505, 0.355065,
		34.281242, 29.229813, 46.918060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523315, 29.273191, 46.653423>,  <33.931923, 28.676458, 46.669518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523315, 29.273191, 46.653423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896019, 29.418053, 46.643032>,  <34.119640, 29.504971, 46.636799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896019, 29.418053, 46.643032>,  <33.523315, 29.273191, 46.653423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.896019, 29.418053, 46.643032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249274, 0.586031, -0.770993,
		-0.263994, 0.724853, 0.636313,
		0.931756, 0.362155, -0.025978,
		34.175545, 29.526699, 46.635239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.446728, 29.963680, 46.428291>,  <33.523315, 29.273191, 46.653423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.446728, 29.963680, 46.428291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.843182, 29.920244, 46.397686>,  <34.081055, 29.894182, 46.379322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.843182, 29.920244, 46.397686>,  <33.446728, 29.963680, 46.428291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843182, 29.920244, 46.397686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006479, 0.614806, -0.788652,
		0.132678, 0.781167, 0.610061,
		0.991138, -0.108589, -0.076510,
		34.140522, 29.887667, 46.374733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660580, 30.615438, 46.231434>,  <33.446728, 29.963680, 46.428291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660580, 30.615438, 46.231434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934807, 30.354595, 46.101971>,  <34.099342, 30.198090, 46.024292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934807, 30.354595, 46.101971>,  <33.660580, 30.615438, 46.231434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934807, 30.354595, 46.101971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070617, 0.502053, -0.861949,
		0.724579, 0.568066, 0.390240,
		0.685565, -0.652107, -0.323662,
		34.140476, 30.158962, 46.004871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265774, 31.027973, 46.076889>,  <33.660580, 30.615438, 46.231434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265774, 31.027973, 46.076889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.308891, 30.686756, 45.872654>,  <34.334763, 30.482027, 45.750111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.308891, 30.686756, 45.872654>,  <34.265774, 31.027973, 46.076889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308891, 30.686756, 45.872654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044714, 0.508904, -0.859661,
		0.993167, 0.115496, 0.016713,
		0.107792, -0.853040, -0.510591,
		34.341228, 30.430843, 45.719475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.667519, 31.178915, 45.522865>,  <34.265774, 31.027973, 46.076889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.667519, 31.178915, 45.522865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506592, 30.837559, 45.390278>,  <34.410038, 30.632746, 45.310726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506592, 30.837559, 45.390278>,  <34.667519, 31.178915, 45.522865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506592, 30.837559, 45.390278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118986, 0.310251, -0.943179,
		0.907737, -0.418894, -0.023277,
		-0.402313, -0.853389, -0.331469,
		34.385899, 30.581543, 45.290836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.055740, 30.961058, 44.988846>,  <34.667519, 31.178915, 45.522865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.055740, 30.961058, 44.988846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.709530, 30.768164, 44.934719>,  <34.501804, 30.652428, 44.902245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.709530, 30.768164, 44.934719>,  <35.055740, 30.961058, 44.988846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.709530, 30.768164, 44.934719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006878, 0.281581, -0.959513,
		0.500811, -0.829556, -0.247033,
		-0.865530, -0.482233, -0.135313,
		34.449871, 30.623493, 44.894127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100975, 30.772934, 44.324429>,  <35.055740, 30.961058, 44.988846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.100975, 30.772934, 44.324429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.707298, 30.743221, 44.388744>,  <34.471092, 30.725393, 44.427334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.707298, 30.743221, 44.388744>,  <35.100975, 30.772934, 44.324429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.707298, 30.743221, 44.388744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176496, 0.335226, -0.925458,
		0.014845, -0.939205, -0.343037,
		-0.984189, -0.074283, 0.160790,
		34.412041, 30.720936, 44.436981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850479, 30.276583, 43.810341>,  <35.100975, 30.772934, 44.324429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850479, 30.276583, 43.810341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542477, 30.506020, 43.922119>,  <34.357677, 30.643681, 43.989185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542477, 30.506020, 43.922119>,  <34.850479, 30.276583, 43.810341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.542477, 30.506020, 43.922119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108752, 0.313583, -0.943313,
		-0.628705, -0.756743, -0.179081,
		-0.770002, 0.573590, 0.279449,
		34.311478, 30.678097, 44.005955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.304790, 30.201277, 43.231770>,  <34.850479, 30.276583, 43.810341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.304790, 30.201277, 43.231770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.248299, 30.554960, 43.409863>,  <34.214401, 30.767170, 43.516720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.248299, 30.554960, 43.409863>,  <34.304790, 30.201277, 43.231770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248299, 30.554960, 43.409863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056863, 0.456244, -0.888036,
		-0.988342, -0.100102, -0.114715,
		-0.141232, 0.884206, 0.445233,
		34.205929, 30.820223, 43.543434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.673176, 30.496189, 42.919952>,  <34.304790, 30.201277, 43.231770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.673176, 30.496189, 42.919952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.848949, 30.814695, 43.086258>,  <33.954414, 31.005798, 43.186039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.848949, 30.814695, 43.086258>,  <33.673176, 30.496189, 42.919952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848949, 30.814695, 43.086258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157835, 0.524088, -0.836911,
		-0.884298, 0.302148, 0.355981,
		0.439436, 0.796265, 0.415760,
		33.980782, 31.053576, 43.210987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.184311, 31.068359, 42.850704>,  <33.673176, 30.496189, 42.919952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.184311, 31.068359, 42.850704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.531605, 31.255642, 42.916363>,  <33.739983, 31.368011, 42.955757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.531605, 31.255642, 42.916363>,  <33.184311, 31.068359, 42.850704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.531605, 31.255642, 42.916363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123761, 0.524762, -0.842204,
		-0.480463, 0.710920, 0.513564,
		0.868239, 0.468207, 0.164144,
		33.792076, 31.396105, 42.965607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.059769, 31.726162, 42.909813>,  <33.184311, 31.068359, 42.850704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.059769, 31.726162, 42.909813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.445957, 31.693064, 42.811008>,  <33.677670, 31.673204, 42.751724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.445957, 31.693064, 42.811008>,  <33.059769, 31.726162, 42.909813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.445957, 31.693064, 42.811008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170160, 0.517661, -0.838494,
		0.197248, 0.851575, 0.485708,
		0.965473, -0.082743, -0.247012,
		33.735600, 31.668242, 42.736904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.227898, 32.416866, 42.645847>,  <33.059769, 31.726162, 42.909813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.227898, 32.416866, 42.645847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.524185, 32.172623, 42.533775>,  <33.701958, 32.026077, 42.466534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.524185, 32.172623, 42.533775>,  <33.227898, 32.416866, 42.645847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524185, 32.172623, 42.533775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017337, 0.434275, -0.900613,
		0.671594, 0.662241, 0.332261,
		0.740716, -0.610607, -0.280176,
		33.746399, 31.989441, 42.449722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.737103, 32.931347, 42.433765>,  <33.227898, 32.416866, 42.645847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.737103, 32.931347, 42.433765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.848545, 32.580509, 42.277264>,  <33.915409, 32.370007, 42.183361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.848545, 32.580509, 42.277264>,  <33.737103, 32.931347, 42.433765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848545, 32.580509, 42.277264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061148, 0.422760, -0.904176,
		0.958457, 0.227983, 0.171416,
		0.278605, -0.877096, -0.391256,
		33.932125, 32.317379, 42.159885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362366, 33.016071, 42.086056>,  <33.737103, 32.931347, 42.433765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.362366, 33.016071, 42.086056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161453, 32.710766, 41.923508>,  <34.040905, 32.527580, 41.825977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161453, 32.710766, 41.923508>,  <34.362366, 33.016071, 42.086056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.161453, 32.710766, 41.923508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083164, 0.425134, -0.901302,
		0.860695, -0.486504, -0.150062,
		-0.502283, -0.763266, -0.406370,
		34.010769, 32.481785, 41.801598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668877, 33.000679, 41.530830>,  <34.362366, 33.016071, 42.086056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668877, 33.000679, 41.530830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.371487, 32.749317, 41.439308>,  <34.193054, 32.598499, 41.384396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.371487, 32.749317, 41.439308>,  <34.668877, 33.000679, 41.530830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.371487, 32.749317, 41.439308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056703, 0.281660, -0.957837,
		0.666356, -0.725101, -0.173775,
		-0.743474, -0.628408, -0.228802,
		34.148445, 32.560795, 41.370667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.923092, 32.571854, 41.028324>,  <34.668877, 33.000679, 41.530830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.923092, 32.571854, 41.028324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.526066, 32.554653, 40.982780>,  <34.287849, 32.544334, 40.955452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.526066, 32.554653, 40.982780>,  <34.923092, 32.571854, 41.028324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526066, 32.554653, 40.982780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111170, 0.060513, -0.991957,
		0.049522, -0.997242, -0.055285,
		-0.992567, -0.042978, -0.113860,
		34.228294, 32.541756, 40.948624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818008, 32.137863, 40.485477>,  <34.923092, 32.571854, 41.028324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818008, 32.137863, 40.485477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.493706, 32.371658, 40.498432>,  <34.299126, 32.511936, 40.506207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.493706, 32.371658, 40.498432>,  <34.818008, 32.137863, 40.485477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493706, 32.371658, 40.498432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008049, 0.044194, -0.998990,
		-0.585330, -0.810198, -0.031126,
		-0.810755, 0.584488, 0.032390,
		34.250481, 32.547005, 40.508148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.539455, 31.930878, 39.900593>,  <34.818008, 32.137863, 40.485477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.539455, 31.930878, 39.900593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.315445, 32.247009, 39.999989>,  <34.181038, 32.436687, 40.059628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.315445, 32.247009, 39.999989>,  <34.539455, 31.930878, 39.900593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.315445, 32.247009, 39.999989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244107, 0.129211, -0.961102,
		-0.791696, -0.598901, 0.120564,
		-0.560026, 0.790331, 0.248492,
		34.147438, 32.484108, 40.074535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.851383, 31.815802, 39.631294>,  <34.539455, 31.930878, 39.900593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.851383, 31.815802, 39.631294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.928417, 32.205975, 39.674091>,  <33.974636, 32.440079, 39.699768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.928417, 32.205975, 39.674091>,  <33.851383, 31.815802, 39.631294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.928417, 32.205975, 39.674091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163975, 0.139486, -0.976553,
		-0.967483, 0.170527, 0.186809,
		0.192586, 0.975430, 0.106989,
		33.986195, 32.498604, 39.706188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.376240, 32.157932, 39.291538>,  <33.851383, 31.815802, 39.631294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.376240, 32.157932, 39.291538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.668449, 32.429028, 39.325008>,  <33.843777, 32.591686, 39.345093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.668449, 32.429028, 39.325008>,  <33.376240, 32.157932, 39.291538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.668449, 32.429028, 39.325008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003769, 0.126538, -0.991955,
		-0.682875, 0.724333, 0.094994,
		0.730525, 0.677739, 0.083680,
		33.887608, 32.632351, 39.350113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.247955, 32.761589, 38.853725>,  <33.376240, 32.157932, 39.291538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.247955, 32.761589, 38.853725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.644249, 32.769543, 38.907471>,  <33.882027, 32.774315, 38.939716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.644249, 32.769543, 38.907471>,  <33.247955, 32.761589, 38.853725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.644249, 32.769543, 38.907471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127792, 0.198634, -0.971707,
		-0.046012, 0.979872, 0.194252,
		0.990733, 0.019887, 0.134359,
		33.941467, 32.775509, 38.947777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451069, 33.169727, 38.257710>,  <33.247955, 32.761589, 38.853725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451069, 33.169727, 38.257710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.795349, 33.026382, 38.402363>,  <34.001915, 32.940376, 38.489155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.795349, 33.026382, 38.402363>,  <33.451069, 33.169727, 38.257710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795349, 33.026382, 38.402363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386167, -0.003354, -0.922423,
		0.331771, 0.933578, 0.135499,
		0.860699, -0.358359, 0.361630,
		34.053558, 32.918877, 38.510853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961075, 33.681194, 38.041115>,  <33.451069, 33.169727, 38.257710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961075, 33.681194, 38.041115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144932, 33.328712, 38.085297>,  <34.255245, 33.117222, 38.111805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144932, 33.328712, 38.085297>,  <33.961075, 33.681194, 38.041115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144932, 33.328712, 38.085297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374371, 0.079471, -0.923868,
		0.805341, 0.466001, 0.366427,
		0.459644, -0.881208, 0.110456,
		34.282825, 33.064350, 38.118435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589634, 33.728729, 37.643856>,  <33.961075, 33.681194, 38.041115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.589634, 33.728729, 37.643856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517067, 33.339958, 37.703793>,  <34.473526, 33.106697, 37.739754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517067, 33.339958, 37.703793>,  <34.589634, 33.728729, 37.643856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517067, 33.339958, 37.703793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088835, -0.167943, -0.981786,
		0.979386, -0.164798, 0.116808,
		-0.181414, -0.971924, 0.149841,
		34.462643, 33.048382, 37.748745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.039951, 33.362656, 37.187054>,  <34.589634, 33.728729, 37.643856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.039951, 33.362656, 37.187054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.760765, 33.089584, 37.273586>,  <34.593254, 32.925743, 37.325504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.760765, 33.089584, 37.273586>,  <35.039951, 33.362656, 37.187054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760765, 33.089584, 37.273586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002381, -0.299870, -0.953977,
		0.716132, -0.666354, 0.207672,
		-0.697961, -0.682679, 0.216333,
		34.551376, 32.884781, 37.338486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.316422, 32.655945, 36.943634>,  <35.039951, 33.362656, 37.187054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.316422, 32.655945, 36.943634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.924412, 32.594711, 36.994411>,  <34.689205, 32.557972, 37.024876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.924412, 32.594711, 36.994411>,  <35.316422, 32.655945, 36.943634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.924412, 32.594711, 36.994411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060280, -0.379603, -0.923183,
		0.189516, -0.912395, 0.362793,
		-0.980025, -0.153089, 0.126940,
		34.630405, 32.548786, 37.032494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.890102, 32.672562, 37.288208>,  <35.316422, 32.655945, 36.943634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.890102, 32.672562, 37.288208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.282829, 32.697498, 37.216488>,  <36.518467, 32.712460, 37.173454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.282829, 32.697498, 37.216488>,  <35.890102, 32.672562, 37.288208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282829, 32.697498, 37.216488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185323, -0.110233, 0.976475,
		0.041113, -0.991949, -0.119783,
		0.981817, 0.062345, -0.179299,
		36.577374, 32.716202, 37.162697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201641, 32.062428, 37.597809>,  <35.890102, 32.672562, 37.288208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.201641, 32.062428, 37.597809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.498821, 32.328110, 37.564690>,  <36.677128, 32.487518, 37.544819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.498821, 32.328110, 37.564690>,  <36.201641, 32.062428, 37.597809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.498821, 32.328110, 37.564690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175695, -0.074151, 0.981648,
		0.645878, -0.743862, -0.171788,
		0.742949, 0.664207, -0.082800,
		36.721706, 32.527370, 37.539848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744308, 31.813971, 38.046951>,  <36.201641, 32.062428, 37.597809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.744308, 31.813971, 38.046951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.865433, 32.188793, 37.977398>,  <36.938107, 32.413685, 37.935665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.865433, 32.188793, 37.977398>,  <36.744308, 31.813971, 38.046951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.865433, 32.188793, 37.977398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482437, 0.006634, 0.875905,
		0.821925, -0.349120, -0.450061,
		0.302810, 0.937055, -0.173881,
		36.956276, 32.469910, 37.925232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375088, 31.853773, 38.301430>,  <36.744308, 31.813971, 38.046951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.375088, 31.853773, 38.301430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.258934, 32.236538, 38.301174>,  <37.189243, 32.466198, 38.301022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.258934, 32.236538, 38.301174>,  <37.375088, 31.853773, 38.301430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.258934, 32.236538, 38.301174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157172, 0.048354, 0.986387,
		0.943915, 0.286329, -0.164441,
		-0.290383, 0.956910, -0.000639,
		37.171818, 32.523613, 38.300983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952492, 32.287632, 38.593029>,  <37.375088, 31.853773, 38.301430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952492, 32.287632, 38.593029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.604553, 32.479153, 38.640556>,  <37.395790, 32.594067, 38.669071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.604553, 32.479153, 38.640556>,  <37.952492, 32.287632, 38.593029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.604553, 32.479153, 38.640556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193307, 0.109220, 0.975040,
		0.453876, 0.871101, -0.187561,
		-0.869844, 0.478804, 0.118818,
		37.343601, 32.622795, 38.676201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181667, 32.740982, 39.022541>,  <37.952492, 32.287632, 38.593029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.181667, 32.740982, 39.022541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.785278, 32.715427, 39.069698>,  <37.547447, 32.700092, 39.097992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.785278, 32.715427, 39.069698>,  <38.181667, 32.740982, 39.022541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785278, 32.715427, 39.069698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122762, -0.078538, 0.989324,
		-0.053949, 0.994862, 0.085672,
		-0.990969, -0.063891, 0.117894,
		37.487988, 32.696259, 39.105068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089272, 33.118000, 39.648605>,  <38.181667, 32.740982, 39.022541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089272, 33.118000, 39.648605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.739544, 32.931427, 39.594936>,  <37.529705, 32.819485, 39.562733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.739544, 32.931427, 39.594936>,  <38.089272, 33.118000, 39.648605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739544, 32.931427, 39.594936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131099, -0.039215, 0.990593,
		-0.467305, 0.883688, -0.026863,
		-0.874322, -0.466431, -0.134176,
		37.477249, 32.791496, 39.554684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.523197, 33.403763, 40.109390>,  <38.089272, 33.118000, 39.648605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.523197, 33.403763, 40.109390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.399673, 33.031376, 40.031479>,  <37.325558, 32.807945, 39.984734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.399673, 33.031376, 40.031479>,  <37.523197, 33.403763, 40.109390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.399673, 33.031376, 40.031479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069904, -0.182018, 0.980807,
		-0.948551, 0.316501, -0.008869,
		-0.308812, -0.930966, -0.194778,
		37.307030, 32.752087, 39.973045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250904, 33.158745, 40.755798>,  <37.523197, 33.403763, 40.109390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250904, 33.158745, 40.755798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.207085, 32.797844, 40.588970>,  <37.180794, 32.581303, 40.488873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.207085, 32.797844, 40.588970>,  <37.250904, 33.158745, 40.755798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207085, 32.797844, 40.588970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062192, -0.412549, 0.908810,
		-0.992034, 0.125498, -0.010919,
		-0.109549, -0.902249, -0.417067,
		37.174221, 32.527168, 40.463848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632347, 32.757011, 41.087967>,  <37.250904, 33.158745, 40.755798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.632347, 32.757011, 41.087967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.908947, 32.508789, 40.940060>,  <37.074909, 32.359856, 40.851315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.908947, 32.508789, 40.940060>,  <36.632347, 32.757011, 41.087967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.908947, 32.508789, 40.940060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060095, -0.460692, 0.885523,
		-0.719870, -0.634563, -0.281277,
		0.691502, -0.620558, -0.369773,
		37.116398, 32.322620, 40.829128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487492, 32.124397, 41.397442>,  <36.632347, 32.757011, 41.087967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.487492, 32.124397, 41.397442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.869995, 32.090244, 41.285526>,  <37.099499, 32.069752, 41.218376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.869995, 32.090244, 41.285526>,  <36.487492, 32.124397, 41.397442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869995, 32.090244, 41.285526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156234, -0.659554, 0.735241,
		-0.247311, -0.746793, -0.617364,
		0.956257, -0.085380, -0.279789,
		37.156872, 32.064629, 41.201588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532791, 31.361952, 41.167877>,  <36.487492, 32.124397, 41.397442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.532791, 31.361952, 41.167877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.889027, 31.508196, 41.276089>,  <37.102768, 31.595942, 41.341015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.889027, 31.508196, 41.276089>,  <36.532791, 31.361952, 41.167877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.889027, 31.508196, 41.276089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151868, -0.799725, 0.580842,
		0.428711, -0.476204, -0.767748,
		0.890586, 0.365609, 0.270530,
		37.156204, 31.617878, 41.357246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010525, 30.756458, 41.180138>,  <36.532791, 31.361952, 41.167877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010525, 30.756458, 41.180138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.179138, 31.050171, 41.392982>,  <37.280304, 31.226398, 41.520691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.179138, 31.050171, 41.392982>,  <37.010525, 30.756458, 41.180138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.179138, 31.050171, 41.392982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200619, -0.647769, 0.734947,
		0.884344, -0.203050, -0.420365,
		0.421531, 0.734279, 0.532115,
		37.305599, 31.270454, 41.552616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440327, 30.326401, 41.753910>,  <37.010525, 30.756458, 41.180138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.440327, 30.326401, 41.753910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.425842, 30.710512, 41.864582>,  <37.417152, 30.940979, 41.930984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.425842, 30.710512, 41.864582>,  <37.440327, 30.326401, 41.753910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.425842, 30.710512, 41.864582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193414, -0.264897, 0.944680,
		0.980449, 0.087720, -0.176139,
		-0.036209, 0.960278, 0.276685,
		37.414978, 30.998596, 41.947586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984779, 30.440496, 42.137821>,  <37.440327, 30.326401, 41.753910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.984779, 30.440496, 42.137821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.723110, 30.714556, 42.265965>,  <37.566109, 30.878992, 42.342850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.723110, 30.714556, 42.265965>,  <37.984779, 30.440496, 42.137821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.723110, 30.714556, 42.265965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145554, -0.301601, 0.942258,
		0.742208, 0.663029, 0.097573,
		-0.654173, 0.685149, 0.320357,
		37.526859, 30.920101, 42.362072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257286, 30.815924, 42.724476>,  <37.984779, 30.440496, 42.137821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.257286, 30.815924, 42.724476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.861919, 30.865116, 42.760067>,  <37.624699, 30.894632, 42.781422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.861919, 30.865116, 42.760067>,  <38.257286, 30.815924, 42.724476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.861919, 30.865116, 42.760067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047532, -0.305940, 0.950863,
		0.144160, 0.944074, 0.296549,
		-0.988412, 0.122981, 0.088979,
		37.565395, 30.902010, 42.786762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069012, 31.192486, 43.391407>,  <38.257286, 30.815924, 42.724476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.069012, 31.192486, 43.391407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.744694, 30.980350, 43.292332>,  <37.550102, 30.853069, 43.232887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.744694, 30.980350, 43.292332>,  <38.069012, 31.192486, 43.391407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.744694, 30.980350, 43.292332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117419, -0.267189, 0.956464,
		-0.573429, 0.804581, 0.154364,
		-0.810797, -0.530339, -0.247687,
		37.501453, 30.821249, 43.218025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650616, 31.257929, 44.084126>,  <38.069012, 31.192486, 43.391407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650616, 31.257929, 44.084126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.488750, 30.942322, 43.899216>,  <37.391632, 30.752956, 43.788269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.488750, 30.942322, 43.899216>,  <37.650616, 31.257929, 44.084126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488750, 30.942322, 43.899216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003888, -0.506993, 0.861941,
		-0.914459, 0.346995, 0.208227,
		-0.404659, -0.789020, -0.462276,
		37.367352, 30.705616, 43.760532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160969, 31.046581, 44.547894>,  <37.650616, 31.257929, 44.084126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160969, 31.046581, 44.547894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.200165, 30.709993, 44.335358>,  <37.223682, 30.508039, 44.207836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.200165, 30.709993, 44.335358>,  <37.160969, 31.046581, 44.547894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.200165, 30.709993, 44.335358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057111, -0.537786, 0.841145,
		-0.993547, -0.052079, -0.100755,
		0.097991, -0.841472, -0.531341,
		37.229561, 30.457552, 44.175957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.617767, 30.653465, 44.724075>,  <37.160969, 31.046581, 44.547894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.617767, 30.653465, 44.724075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.873814, 30.381920, 44.580189>,  <37.027443, 30.218992, 44.493858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.873814, 30.381920, 44.580189>,  <36.617767, 30.653465, 44.724075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873814, 30.381920, 44.580189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154052, -0.572118, 0.805573,
		-0.752675, -0.460246, -0.470802,
		0.640116, -0.678863, -0.359717,
		37.065849, 30.178261, 44.472275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.289463, 29.994801, 44.743195>,  <36.617767, 30.653465, 44.724075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.289463, 29.994801, 44.743195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.678898, 29.903749, 44.736141>,  <36.912560, 29.849119, 44.731911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.678898, 29.903749, 44.736141>,  <36.289463, 29.994801, 44.743195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.678898, 29.903749, 44.736141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096590, -0.480645, 0.871580,
		-0.206871, -0.846857, -0.489937,
		0.973589, -0.227627, -0.017634,
		36.970974, 29.835461, 44.730850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416149, 29.233973, 44.995441>,  <36.289463, 29.994801, 44.743195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416149, 29.233973, 44.995441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.760227, 29.427999, 45.058411>,  <36.966675, 29.544415, 45.096191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.760227, 29.427999, 45.058411>,  <36.416149, 29.233973, 44.995441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760227, 29.427999, 45.058411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020376, -0.341133, 0.939794,
		0.509565, -0.805195, -0.303323,
		0.860191, 0.485066, 0.157423,
		37.018284, 29.573519, 45.105637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948547, 28.777191, 45.296028>,  <36.416149, 29.233973, 44.995441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.948547, 28.777191, 45.296028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.044140, 29.152020, 45.397839>,  <37.101498, 29.376917, 45.458923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.044140, 29.152020, 45.397839>,  <36.948547, 28.777191, 45.296028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044140, 29.152020, 45.397839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043833, -0.251445, 0.966879,
		0.970034, -0.242224, -0.019017,
		0.238983, 0.937072, 0.254527,
		37.115833, 29.433142, 45.474197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248905, 28.688473, 45.912361>,  <36.948547, 28.777191, 45.296028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.248905, 28.688473, 45.912361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.213116, 29.085983, 45.938896>,  <37.191643, 29.324490, 45.954819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.213116, 29.085983, 45.938896>,  <37.248905, 28.688473, 45.912361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213116, 29.085983, 45.938896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263541, -0.087853, 0.960639,
		0.960490, 0.068472, 0.269762,
		-0.089476, 0.993778, 0.066337,
		37.186272, 29.384117, 45.958797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587029, 28.909763, 46.528671>,  <37.248905, 28.688473, 45.912361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.587029, 28.909763, 46.528671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.376064, 29.240280, 46.449596>,  <37.249485, 29.438591, 46.402153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.376064, 29.240280, 46.449596>,  <37.587029, 28.909763, 46.528671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376064, 29.240280, 46.449596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208121, 0.099940, 0.972984,
		0.823727, 0.554302, 0.119260,
		-0.527408, 0.826294, -0.197686,
		37.217842, 29.488169, 46.390289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845730, 29.470924, 46.998493>,  <37.587029, 28.909763, 46.528671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.845730, 29.470924, 46.998493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.472820, 29.564516, 46.888130>,  <37.249077, 29.620672, 46.821911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.472820, 29.564516, 46.888130>,  <37.845730, 29.470924, 46.998493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.472820, 29.564516, 46.888130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203009, 0.292905, 0.934342,
		0.299433, 0.927070, -0.225566,
		-0.932270, 0.233981, -0.275909,
		37.193138, 29.634710, 46.805359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.703575, 30.226679, 47.124069>,  <37.845730, 29.470924, 46.998493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.703575, 30.226679, 47.124069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.345116, 30.049252, 47.129303>,  <37.130039, 29.942795, 47.132442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.345116, 30.049252, 47.129303>,  <37.703575, 30.226679, 47.124069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345116, 30.049252, 47.129303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168316, 0.367031, 0.914854,
		-0.410600, 0.817641, -0.403572,
		-0.896146, -0.443566, 0.013080,
		37.076271, 29.916182, 47.133228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.168446, 30.754749, 47.366791>,  <37.703575, 30.226679, 47.124069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.168446, 30.754749, 47.366791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.948833, 30.423326, 47.410721>,  <36.817066, 30.224474, 47.437077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.948833, 30.423326, 47.410721>,  <37.168446, 30.754749, 47.366791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948833, 30.423326, 47.410721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202094, 0.259101, 0.944471,
		-0.811001, 0.496350, -0.309701,
		-0.549031, -0.828555, 0.109822,
		36.784122, 30.174761, 47.443668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428051, 30.919729, 47.538063>,  <37.168446, 30.754749, 47.366791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428051, 30.919729, 47.538063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.517197, 30.549574, 47.660690>,  <36.570686, 30.327480, 47.734268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.517197, 30.549574, 47.660690>,  <36.428051, 30.919729, 47.538063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.517197, 30.549574, 47.660690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173738, 0.271742, 0.946558,
		-0.959242, -0.264219, -0.100213,
		0.222867, -0.925389, 0.306571,
		36.584057, 30.271957, 47.752663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.898163, 30.768965, 48.017357>,  <36.428051, 30.919729, 47.538063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.898163, 30.768965, 48.017357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.187786, 30.497711, 48.067753>,  <36.361561, 30.334959, 48.097992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.187786, 30.497711, 48.067753>,  <35.898163, 30.768965, 48.017357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.187786, 30.497711, 48.067753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007684, 0.190587, 0.981640,
		-0.689697, -0.709796, 0.143206,
		0.724057, -0.678135, 0.125993,
		36.405003, 30.294271, 48.105553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648399, 30.298353, 48.589134>,  <35.898163, 30.768965, 48.017357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.648399, 30.298353, 48.589134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.045094, 30.247101, 48.586456>,  <36.283112, 30.216349, 48.584850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.045094, 30.247101, 48.586456>,  <35.648399, 30.298353, 48.589134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045094, 30.247101, 48.586456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010162, 0.026425, 0.999599,
		-0.127901, -0.991406, 0.027509,
		0.991735, -0.128130, -0.006695,
		36.342613, 30.208662, 48.584446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.804482, 29.795174, 49.199528>,  <35.648399, 30.298353, 48.589134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.804482, 29.795174, 49.199528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.128185, 30.003126, 49.090107>,  <36.322407, 30.127897, 49.024456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.128185, 30.003126, 49.090107>,  <35.804482, 29.795174, 49.199528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128185, 30.003126, 49.090107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225836, 0.154557, 0.961826,
		0.542313, -0.840141, 0.007668,
		0.809255, 0.519880, -0.273553,
		36.370960, 30.159090, 49.008041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.222832, 29.730728, 49.735229>,  <35.804482, 29.795174, 49.199528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.222832, 29.730728, 49.735229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445629, 30.004026, 49.546368>,  <36.579308, 30.168005, 49.433052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445629, 30.004026, 49.546368>,  <36.222832, 29.730728, 49.735229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445629, 30.004026, 49.546368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355564, 0.317595, 0.879038,
		0.750555, -0.657500, -0.066040,
		0.556993, 0.683247, -0.472156,
		36.612728, 30.209002, 49.404720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918144, 29.552027, 49.835426>,  <36.222832, 29.730728, 49.735229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.918144, 29.552027, 49.835426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.842148, 29.941509, 49.785145>,  <36.796551, 30.175200, 49.754978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.842148, 29.941509, 49.785145>,  <36.918144, 29.552027, 49.835426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.842148, 29.941509, 49.785145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315366, 0.181773, 0.931399,
		0.929757, 0.137314, -0.341608,
		-0.189989, 0.973706, -0.125701,
		36.785152, 30.233622, 49.747433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528236, 29.816502, 50.052719>,  <36.918144, 29.552027, 49.835426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528236, 29.816502, 50.052719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.274807, 30.125948, 50.056759>,  <37.122749, 30.311615, 50.059181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.274807, 30.125948, 50.056759>,  <37.528236, 29.816502, 50.052719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274807, 30.125948, 50.056759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478869, 0.381864, 0.790484,
		0.607675, 0.505665, -0.612400,
		-0.633574, 0.773616, 0.010097,
		37.084736, 30.358032, 50.059788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927086, 30.326704, 50.379959>,  <37.528236, 29.816502, 50.052719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.927086, 30.326704, 50.379959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.546665, 30.443205, 50.421272>,  <37.318413, 30.513105, 50.446060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.546665, 30.443205, 50.421272>,  <37.927086, 30.326704, 50.379959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.546665, 30.443205, 50.421272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188924, 0.283496, 0.940180,
		0.244547, 0.913675, -0.324644,
		-0.951055, 0.291251, 0.103287,
		37.261349, 30.530581, 50.452259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.002731, 30.885342, 50.733036>,  <37.927086, 30.326704, 50.379959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.002731, 30.885342, 50.733036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.632469, 30.747080, 50.794598>,  <37.410313, 30.664124, 50.831535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.632469, 30.747080, 50.794598>,  <38.002731, 30.885342, 50.733036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.632469, 30.747080, 50.794598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164511, -0.001381, 0.986374,
		-0.340732, 0.938361, 0.058143,
		-0.925655, -0.345654, 0.153900,
		37.354771, 30.643383, 50.840767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599636, 31.332344, 51.186420>,  <38.002731, 30.885342, 50.733036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.599636, 31.332344, 51.186420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.445980, 30.963495, 51.204895>,  <37.353786, 30.742186, 51.215981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.445980, 30.963495, 51.204895>,  <37.599636, 31.332344, 51.186420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.445980, 30.963495, 51.204895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078796, 0.017102, 0.996744,
		-0.919908, 0.386525, 0.066090,
		-0.384136, -0.922120, 0.046189,
		37.330738, 30.686859, 51.218750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881126, 31.986998, 51.548687>,  <37.599636, 31.332344, 51.186420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.881126, 31.986998, 51.548687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.188271, 32.152363, 51.744434>,  <38.372555, 32.251583, 51.861885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.188271, 32.152363, 51.744434>,  <37.881126, 31.986998, 51.548687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.188271, 32.152363, 51.744434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212885, 0.555822, -0.803581,
		-0.604214, 0.721216, 0.338783,
		0.767858, 0.413413, 0.489371,
		38.418629, 32.276386, 51.891247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886902, 32.609810, 51.225636>,  <37.881126, 31.986998, 51.548687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.886902, 32.609810, 51.225636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.234356, 32.591373, 51.422955>,  <38.442829, 32.580311, 51.541348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.234356, 32.591373, 51.422955>,  <37.886902, 32.609810, 51.225636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.234356, 32.591373, 51.422955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464320, 0.423093, -0.778074,
		-0.172846, 0.904913, 0.388917,
		0.868637, -0.046095, 0.493300,
		38.494946, 32.577545, 51.570946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136597, 33.260448, 51.117176>,  <37.886902, 32.609810, 51.225636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.136597, 33.260448, 51.117176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.445446, 33.035393, 51.235336>,  <38.630756, 32.900360, 51.306232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.445446, 33.035393, 51.235336>,  <38.136597, 33.260448, 51.117176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445446, 33.035393, 51.235336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548969, 0.356417, -0.756042,
		0.320091, 0.745926, 0.584069,
		0.772124, -0.562638, 0.295405,
		38.677082, 32.866600, 51.323959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580967, 33.670364, 51.117290>,  <38.136597, 33.260448, 51.117176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.580967, 33.670364, 51.117290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.734982, 33.304977, 51.064640>,  <38.827393, 33.085747, 51.033051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.734982, 33.304977, 51.064640>,  <38.580967, 33.670364, 51.117290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734982, 33.304977, 51.064640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734579, 0.389678, -0.555469,
		0.558694, 0.117187, 0.821053,
		0.385040, -0.913465, -0.131628,
		38.850494, 33.030937, 51.025150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198456, 33.875248, 50.940357>,  <38.580967, 33.670364, 51.117290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198456, 33.875248, 50.940357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.192513, 33.486038, 50.848270>,  <39.188946, 33.252514, 50.793018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.192513, 33.486038, 50.848270>,  <39.198456, 33.875248, 50.940357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.192513, 33.486038, 50.848270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544111, 0.185303, -0.818295,
		0.838882, -0.137422, 0.526680,
		-0.014856, -0.973025, -0.230220,
		39.188057, 33.194130, 50.779205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.898277, 33.711922, 50.668938>,  <39.198456, 33.875248, 50.940357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.898277, 33.711922, 50.668938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.656818, 33.434177, 50.512238>,  <39.511944, 33.267532, 50.418217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.656818, 33.434177, 50.512238>,  <39.898277, 33.711922, 50.668938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.656818, 33.434177, 50.512238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460406, 0.097548, -0.882333,
		0.650870, -0.712987, 0.260802,
		-0.603651, -0.694359, -0.391754,
		39.475723, 33.225868, 50.394711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.364708, 33.284164, 50.243340>,  <39.898277, 33.711922, 50.668938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.364708, 33.284164, 50.243340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.990047, 33.230038, 50.114117>,  <39.765251, 33.197563, 50.036583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.990047, 33.230038, 50.114117>,  <40.364708, 33.284164, 50.243340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.990047, 33.230038, 50.114117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321078, 0.036840, -0.946336,
		0.139958, -0.990117, 0.008942,
		-0.936654, -0.135319, -0.323060,
		39.709053, 33.189442, 50.017197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.487637, 32.825291, 49.685619>,  <40.364708, 33.284164, 50.243340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.487637, 32.825291, 49.685619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.121464, 32.979099, 49.638081>,  <39.901760, 33.071384, 49.609558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.121464, 32.979099, 49.638081>,  <40.487637, 32.825291, 49.685619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.121464, 32.979099, 49.638081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171021, 0.104353, -0.979726,
		-0.364322, -0.917200, -0.161289,
		-0.915435, 0.384519, -0.118843,
		39.846832, 33.094456, 49.602428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.168266, 32.342155, 49.123207>,  <40.487637, 32.825291, 49.685619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.168266, 32.342155, 49.123207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.969841, 32.689468, 49.124111>,  <39.850784, 32.897858, 49.124653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.969841, 32.689468, 49.124111>,  <40.168266, 32.342155, 49.123207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.969841, 32.689468, 49.124111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086985, -0.047101, -0.995096,
		-0.863919, -0.493826, 0.098892,
		-0.496062, 0.868285, 0.002264,
		39.821022, 32.949955, 49.124790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.569542, 32.236904, 48.717346>,  <40.168266, 32.342155, 49.123207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.569542, 32.236904, 48.717346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.639267, 32.630661, 48.707729>,  <39.681103, 32.866917, 48.701962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.639267, 32.630661, 48.707729>,  <39.569542, 32.236904, 48.717346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.639267, 32.630661, 48.707729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042164, -0.016929, -0.998967,
		-0.983787, 0.175151, 0.038555,
		0.174317, 0.984396, -0.024039,
		39.691563, 32.925980, 48.700516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990158, 32.483089, 48.377529>,  <39.569542, 32.236904, 48.717346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.990158, 32.483089, 48.377529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.254498, 32.780663, 48.337860>,  <39.413101, 32.959206, 48.314056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.254498, 32.780663, 48.337860>,  <38.990158, 32.483089, 48.377529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.254498, 32.780663, 48.337860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210163, 0.056578, -0.976028,
		-0.720490, 0.665852, 0.193738,
		0.660852, 0.743935, -0.099174,
		39.452751, 33.003841, 48.308109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678318, 33.044952, 48.035225>,  <38.990158, 32.483089, 48.377529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.678318, 33.044952, 48.035225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.072140, 33.079098, 47.974072>,  <39.308434, 33.099583, 47.937382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.072140, 33.079098, 47.974072>,  <38.678318, 33.044952, 48.035225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.072140, 33.079098, 47.974072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166354, 0.183547, -0.968833,
		-0.054638, 0.979298, 0.194911,
		0.984551, 0.085359, -0.152882,
		39.367504, 33.104706, 47.928207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.658535, 33.486233, 47.523758>,  <38.678318, 33.044952, 48.035225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.658535, 33.486233, 47.523758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.025040, 33.326797, 47.539688>,  <39.244942, 33.231136, 47.549248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.025040, 33.326797, 47.539688>,  <38.658535, 33.486233, 47.523758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.025040, 33.326797, 47.539688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024457, -0.043576, -0.998751,
		0.399827, 0.916094, -0.030179,
		0.916264, -0.398589, 0.039828,
		39.299919, 33.207222, 47.551636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070343, 33.766251, 46.948780>,  <38.658535, 33.486233, 47.523758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.070343, 33.766251, 46.948780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.267807, 33.424679, 47.014633>,  <39.386284, 33.219734, 47.054146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.267807, 33.424679, 47.014633>,  <39.070343, 33.766251, 46.948780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.267807, 33.424679, 47.014633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288990, -0.017468, -0.957173,
		0.820235, 0.520094, 0.238154,
		0.493660, -0.853931, 0.164630,
		39.415905, 33.168499, 47.064022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.609016, 33.723469, 46.432251>,  <39.070343, 33.766251, 46.948780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.609016, 33.723469, 46.432251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.642616, 33.346245, 46.560982>,  <39.662777, 33.119911, 46.638222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.642616, 33.346245, 46.560982>,  <39.609016, 33.723469, 46.432251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.642616, 33.346245, 46.560982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352430, -0.273983, -0.894833,
		0.932061, 0.188585, 0.309351,
		0.083995, -0.943064, 0.321831,
		39.667816, 33.063324, 46.657532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.156399, 33.445076, 46.109474>,  <39.609016, 33.723469, 46.432251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.156399, 33.445076, 46.109474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.915855, 33.141411, 46.209103>,  <39.771530, 32.959213, 46.268879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.915855, 33.141411, 46.209103>,  <40.156399, 33.445076, 46.109474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.915855, 33.141411, 46.209103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115510, -0.391067, -0.913085,
		0.790584, -0.520323, 0.322863,
		-0.601360, -0.759164, 0.249069,
		39.735447, 32.913662, 46.283825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.437214, 32.767467, 45.752728>,  <40.156399, 33.445076, 46.109474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.437214, 32.767467, 45.752728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.048977, 32.699696, 45.821125>,  <39.816032, 32.659035, 45.862164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.048977, 32.699696, 45.821125>,  <40.437214, 32.767467, 45.752728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.048977, 32.699696, 45.821125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076919, -0.454803, -0.887264,
		0.228095, -0.874327, 0.428398,
		-0.970596, -0.169428, 0.170991,
		39.757797, 32.648869, 45.872421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329929, 32.174679, 45.532501>,  <40.437214, 32.767467, 45.752728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.329929, 32.174679, 45.532501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.954121, 32.311539, 45.538555>,  <39.728634, 32.393654, 45.542187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.954121, 32.311539, 45.538555>,  <40.329929, 32.174679, 45.532501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.954121, 32.311539, 45.538555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142542, -0.350450, -0.925671,
		-0.311413, -0.871847, 0.378027,
		-0.939523, 0.342151, 0.015140,
		39.672264, 32.414185, 45.543098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.044567, 31.706266, 45.173290>,  <40.329929, 32.174679, 45.532501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.044567, 31.706266, 45.173290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.789082, 32.014027, 45.169895>,  <39.635792, 32.198685, 45.167858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.789082, 32.014027, 45.169895>,  <40.044567, 31.706266, 45.173290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.789082, 32.014027, 45.169895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221258, -0.194215, -0.955681,
		-0.736950, -0.608525, 0.294283,
		-0.638710, 0.769401, -0.008486,
		39.597469, 32.244846, 45.167351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521870, 31.414719, 44.865757>,  <40.044567, 31.706266, 45.173290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.521870, 31.414719, 44.865757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.487877, 31.812719, 44.844788>,  <39.467484, 32.051521, 44.832207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.487877, 31.812719, 44.844788>,  <39.521870, 31.414719, 44.865757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487877, 31.812719, 44.844788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348818, -0.078989, -0.933856,
		-0.933330, -0.061074, 0.353788,
		-0.084980, 0.995003, -0.052419,
		39.462383, 32.111221, 44.829063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.871265, 31.607224, 44.517220>,  <39.521870, 31.414719, 44.865757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.871265, 31.607224, 44.517220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.094006, 31.935371, 44.465210>,  <39.227650, 32.132259, 44.434006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.094006, 31.935371, 44.465210>,  <38.871265, 31.607224, 44.517220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.094006, 31.935371, 44.465210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318787, 0.066532, -0.945488,
		-0.767000, 0.567949, 0.298572,
		0.556854, 0.820371, -0.130025,
		39.261063, 32.181484, 44.426201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.437336, 32.069038, 44.161751>,  <38.871265, 31.607224, 44.517220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.437336, 32.069038, 44.161751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.817799, 32.175663, 44.099472>,  <39.046078, 32.239639, 44.062103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.817799, 32.175663, 44.099472>,  <38.437336, 32.069038, 44.161751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.817799, 32.175663, 44.099472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201076, 0.152268, -0.967669,
		-0.234236, 0.951714, 0.198430,
		0.951158, 0.266562, -0.155701,
		39.103146, 32.255630, 44.052761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.467209, 32.810772, 43.911404>,  <38.437336, 32.069038, 44.161751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.467209, 32.810772, 43.911404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.802414, 32.615986, 43.812927>,  <39.003536, 32.499115, 43.753841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.802414, 32.615986, 43.812927>,  <38.467209, 32.810772, 43.911404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.802414, 32.615986, 43.812927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159965, 0.212109, -0.964065,
		0.521682, 0.847276, 0.099852,
		0.838009, -0.486963, -0.246187,
		39.053818, 32.469898, 43.739071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.909229, 33.289459, 43.592400>,  <38.467209, 32.810772, 43.911404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.909229, 33.289459, 43.592400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.063267, 32.940865, 43.470936>,  <39.155689, 32.731709, 43.398056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.063267, 32.940865, 43.470936>,  <38.909229, 33.289459, 43.592400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.063267, 32.940865, 43.470936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009620, 0.325229, -0.945586,
		0.922829, 0.367056, 0.116859,
		0.385089, -0.871490, -0.303662,
		39.178795, 32.679417, 43.379837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436375, 33.442417, 43.157295>,  <38.909229, 33.289459, 43.592400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.436375, 33.442417, 43.157295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.389664, 33.056458, 43.063202>,  <39.361637, 32.824883, 43.006748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.389664, 33.056458, 43.063202>,  <39.436375, 33.442417, 43.157295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.389664, 33.056458, 43.063202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084347, 0.226360, -0.970385,
		0.989570, -0.133160, 0.054953,
		-0.116777, -0.964899, -0.235231,
		39.354630, 32.766987, 42.992634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064938, 33.303543, 42.655609>,  <39.436375, 33.442417, 43.157295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.064938, 33.303543, 42.655609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.793732, 33.013218, 42.609161>,  <39.631008, 32.839024, 42.581291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.793732, 33.013218, 42.609161>,  <40.064938, 33.303543, 42.655609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.793732, 33.013218, 42.609161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039615, 0.193831, -0.980235,
		0.733979, -0.660015, -0.160174,
		-0.678016, -0.725816, -0.116122,
		39.590328, 32.795471, 42.574326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.437065, 32.779839, 42.214771>,  <40.064938, 33.303543, 42.655609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.437065, 32.779839, 42.214771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.040154, 32.741215, 42.183632>,  <39.802006, 32.718040, 42.164948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.040154, 32.741215, 42.183632>,  <40.437065, 32.779839, 42.214771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.040154, 32.741215, 42.183632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067740, 0.103906, -0.992278,
		0.103906, -0.989889, -0.096562,
		0.992278, 0.096562, 0.077851,
		39.742470, 32.712246, 42.160278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.225788, 32.426437, 41.576534>,  <40.437065, 32.779839, 42.214771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.225788, 32.426437, 41.576534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.903301, 32.642063, 41.674042>,  <39.709808, 32.771439, 41.732548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.903301, 32.642063, 41.674042>,  <40.225788, 32.426437, 41.576534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.903301, 32.642063, 41.674042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151991, 0.209487, -0.965927,
		-0.571765, -0.815796, -0.086959,
		-0.806216, 0.539066, 0.243771,
		39.661438, 32.803783, 41.747173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821365, 32.255989, 41.061546>,  <40.225788, 32.426437, 41.576534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.821365, 32.255989, 41.061546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.667591, 32.600227, 41.195160>,  <39.575329, 32.806770, 41.275330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.667591, 32.600227, 41.195160>,  <39.821365, 32.255989, 41.061546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.667591, 32.600227, 41.195160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201863, 0.274718, -0.940096,
		-0.900813, -0.428832, 0.068114,
		-0.384431, 0.860600, 0.334035,
		39.552261, 32.858406, 41.295372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250309, 32.409306, 40.669228>,  <39.821365, 32.255989, 41.061546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.250309, 32.409306, 40.669228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.311172, 32.771923, 40.826721>,  <39.347691, 32.989494, 40.921219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.311172, 32.771923, 40.826721>,  <39.250309, 32.409306, 40.669228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.311172, 32.771923, 40.826721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144030, 0.414458, -0.898599,
		-0.977806, 0.080019, 0.193632,
		0.152157, 0.906544, 0.393734,
		39.356819, 33.043888, 40.944839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672848, 32.887848, 40.547302>,  <39.250309, 32.409306, 40.669228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.672848, 32.887848, 40.547302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.990826, 33.119663, 40.619080>,  <39.181614, 33.258751, 40.662148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.990826, 33.119663, 40.619080>,  <38.672848, 32.887848, 40.547302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.990826, 33.119663, 40.619080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197593, 0.526975, -0.826592,
		-0.573602, 0.621638, 0.533429,
		0.794945, 0.579537, 0.179443,
		39.229309, 33.293526, 40.672913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423740, 33.500114, 40.317051>,  <38.672848, 32.887848, 40.547302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423740, 33.500114, 40.317051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.807747, 33.612091, 40.315952>,  <39.038151, 33.679276, 40.315292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.807747, 33.612091, 40.315952>,  <38.423740, 33.500114, 40.317051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807747, 33.612091, 40.315952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164331, 0.555537, -0.815091,
		-0.226650, 0.782950, 0.579326,
		0.960013, 0.279942, -0.002750,
		39.095753, 33.696075, 40.315128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454468, 34.163982, 40.133442>,  <38.423740, 33.500114, 40.317051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.454468, 34.163982, 40.133442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.825470, 34.038227, 40.052544>,  <39.048069, 33.962776, 40.004005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.825470, 34.038227, 40.052544>,  <38.454468, 34.163982, 40.133442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825470, 34.038227, 40.052544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035993, 0.463406, -0.885415,
		0.372081, 0.828503, 0.418495,
		0.927502, -0.314384, -0.202245,
		39.103722, 33.943913, 39.991871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777939, 34.719215, 39.845547>,  <38.454468, 34.163982, 40.133442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.777939, 34.719215, 39.845547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.026379, 34.423042, 39.742786>,  <39.175442, 34.245338, 39.681129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.026379, 34.423042, 39.742786>,  <38.777939, 34.719215, 39.845547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026379, 34.423042, 39.742786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256587, 0.501828, -0.826034,
		0.740543, 0.447130, 0.501669,
		0.621096, -0.740435, -0.256898,
		39.212708, 34.200912, 39.665718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438511, 35.096260, 39.740482>,  <38.777939, 34.719215, 39.845547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.438511, 35.096260, 39.740482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.467281, 34.759872, 39.525970>,  <39.484543, 34.558041, 39.397263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.467281, 34.759872, 39.525970>,  <39.438511, 35.096260, 39.740482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.467281, 34.759872, 39.525970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421988, 0.512839, -0.747611,
		0.903744, -0.172528, 0.391767,
		0.071930, -0.840970, -0.536280,
		39.488861, 34.507580, 39.365086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025745, 35.069901, 39.402637>,  <39.438511, 35.096260, 39.740482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.025745, 35.069901, 39.402637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.819550, 34.808830, 39.180542>,  <39.695831, 34.652187, 39.047283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.819550, 34.808830, 39.180542>,  <40.025745, 35.069901, 39.402637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.819550, 34.808830, 39.180542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351239, 0.430093, -0.831656,
		0.781603, -0.623730, 0.007536,
		-0.515488, -0.652672, -0.555240,
		39.664902, 34.613029, 39.013969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.531857, 34.946239, 38.788971>,  <40.025745, 35.069901, 39.402637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.531857, 34.946239, 38.788971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.162952, 34.810951, 38.714100>,  <39.941608, 34.729778, 38.669178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.162952, 34.810951, 38.714100>,  <40.531857, 34.946239, 38.788971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.162952, 34.810951, 38.714100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005507, 0.472669, -0.881223,
		0.386520, -0.813751, -0.434063,
		-0.922265, -0.338220, -0.187178,
		39.886272, 34.709484, 38.657948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.497635, 34.759655, 38.151371>,  <40.531857, 34.946239, 38.788971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.497635, 34.759655, 38.151371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.108505, 34.837700, 38.201229>,  <39.875027, 34.884529, 38.231144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.108505, 34.837700, 38.201229>,  <40.497635, 34.759655, 38.151371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.108505, 34.837700, 38.201229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046796, 0.361546, -0.931179,
		-0.226752, -0.911710, -0.342591,
		-0.972828, 0.195115, 0.124646,
		39.816658, 34.896233, 38.238625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.048477, 34.449772, 37.567413>,  <40.497635, 34.759655, 38.151371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.048477, 34.449772, 37.567413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.864273, 34.760715, 37.738823>,  <39.753750, 34.947281, 37.841671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.864273, 34.760715, 37.738823>,  <40.048477, 34.449772, 37.567413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.864273, 34.760715, 37.738823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201930, 0.378363, -0.903363,
		-0.864379, -0.502545, -0.017269,
		-0.460515, 0.777361, 0.428528,
		39.726120, 34.993923, 37.867382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.583344, 34.581905, 37.155434>,  <40.048477, 34.449772, 37.567413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.583344, 34.581905, 37.155434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.627655, 34.920483, 37.363766>,  <39.654240, 35.123631, 37.488766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.627655, 34.920483, 37.363766>,  <39.583344, 34.581905, 37.155434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.627655, 34.920483, 37.363766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105190, 0.531098, -0.840755,
		-0.988263, 0.038348, 0.147870,
		0.110774, 0.846442, 0.520831,
		39.660889, 35.174416, 37.520016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214691, 34.956932, 36.658138>,  <39.583344, 34.581905, 37.155434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214691, 34.956932, 36.658138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321869, 35.220303, 36.939472>,  <39.386177, 35.378326, 37.108273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321869, 35.220303, 36.939472>,  <39.214691, 34.956932, 36.658138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321869, 35.220303, 36.939472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226042, 0.752614, -0.618448,
		-0.936542, 0.006726, 0.350490,
		0.267944, 0.658428, 0.703334,
		39.402252, 35.417831, 37.150471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.890144, 35.218643, 36.998909>,  <39.214691, 34.956932, 36.658138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.890144, 35.218643, 36.998909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.164845, 35.441601, 37.185535>,  <40.329666, 35.575375, 37.297512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.164845, 35.441601, 37.185535>,  <39.890144, 35.218643, 36.998909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.164845, 35.441601, 37.185535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675243, -0.251566, -0.693369,
		-0.269107, 0.791219, -0.549140,
		0.686752, 0.557393, 0.466567,
		40.370869, 35.608818, 37.325504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348068, 35.592083, 36.474415>,  <39.890144, 35.218643, 36.998909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.348068, 35.592083, 36.474415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.559349, 35.574066, 36.813583>,  <40.686119, 35.563255, 37.017086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.559349, 35.574066, 36.813583>,  <40.348068, 35.592083, 36.474415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.559349, 35.574066, 36.813583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769128, -0.397739, -0.500246,
		0.359783, 0.916392, -0.175445,
		0.528203, -0.045041, 0.847923,
		40.717812, 35.560555, 37.067959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.032959, 35.728821, 36.335514>,  <40.348068, 35.592083, 36.474415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.032959, 35.728821, 36.335514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.038914, 35.502457, 36.665245>,  <41.042488, 35.366638, 36.863083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.038914, 35.502457, 36.665245>,  <41.032959, 35.728821, 36.335514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.038914, 35.502457, 36.665245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781216, -0.507980, -0.362847,
		0.624083, 0.649382, 0.434537,
		0.014891, -0.565914, 0.824329,
		41.043381, 35.332684, 36.912544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.971588, 35.216553, 35.827904>,  <41.032959, 35.728821, 36.335514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.971588, 35.216553, 35.827904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.298912, 35.038059, 35.682987>,  <41.495304, 34.930962, 35.596039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.298912, 35.038059, 35.682987>,  <40.971588, 35.216553, 35.827904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.298912, 35.038059, 35.682987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574746, -0.642450, -0.506877,
		-0.006566, 0.623004, -0.782191,
		0.818305, -0.446234, -0.362287,
		41.544403, 34.904190, 35.574303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.180450, 35.216015, 35.127842>,  <40.971588, 35.216553, 35.827904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.180450, 35.216015, 35.127842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.360981, 34.860588, 35.160686>,  <41.469299, 34.647331, 35.180393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.360981, 34.860588, 35.160686>,  <41.180450, 35.216015, 35.127842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.360981, 34.860588, 35.160686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508717, -0.331805, -0.794426,
		0.733149, 0.316777, -0.601785,
		0.451331, -0.888571, 0.082113,
		41.496380, 34.594017, 35.185322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.579155, 35.167309, 34.508652>,  <41.180450, 35.216015, 35.127842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.579155, 35.167309, 34.508652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.434582, 34.853069, 34.709530>,  <41.347839, 34.664528, 34.830059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.434582, 34.853069, 34.709530>,  <41.579155, 35.167309, 34.508652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.434582, 34.853069, 34.709530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568345, -0.241356, -0.786595,
		0.739154, -0.569725, -0.359255,
		-0.361434, -0.785596, 0.502199,
		41.326153, 34.617390, 34.860191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.068371, 34.653065, 34.675819>,  <41.579155, 35.167309, 34.508652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.068371, 34.653065, 34.675819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.414192, 34.547672, 34.846992>,  <42.621685, 34.484436, 34.949696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.414192, 34.547672, 34.846992>,  <42.068371, 34.653065, 34.675819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.414192, 34.547672, 34.846992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121740, -0.935976, -0.330347,
		0.487574, 0.233506, -0.841277,
		0.864552, -0.263485, 0.427930,
		42.673557, 34.468628, 34.975372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.407219, 34.320908, 34.159016>,  <42.068371, 34.653065, 34.675819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.407219, 34.320908, 34.159016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.551079, 34.209030, 34.515091>,  <42.637394, 34.141903, 34.728737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.551079, 34.209030, 34.515091>,  <42.407219, 34.320908, 34.159016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.551079, 34.209030, 34.515091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150429, -0.958919, -0.240510,
		0.920883, -0.047411, -0.386945,
		0.359646, -0.279689, 0.890185,
		42.658974, 34.125122, 34.782146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.829449, 33.638073, 34.005508>,  <42.407219, 34.320908, 34.159016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.829449, 33.638073, 34.005508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.755577, 33.653637, 34.398319>,  <42.711254, 33.662975, 34.634007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.755577, 33.653637, 34.398319>,  <42.829449, 33.638073, 34.005508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.755577, 33.653637, 34.398319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137344, -0.990432, 0.013418,
		0.973154, -0.132398, 0.188259,
		-0.184681, 0.038914, 0.982027,
		42.700172, 33.665310, 34.692928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.132523, 33.027382, 34.230972>,  <42.829449, 33.638073, 34.005508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.132523, 33.027382, 34.230972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.881897, 33.150055, 34.517570>,  <42.731522, 33.223660, 34.689529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.881897, 33.150055, 34.517570>,  <43.132523, 33.027382, 34.230972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.881897, 33.150055, 34.517570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417953, -0.908172, 0.023232,
		0.657826, -0.284905, 0.697204,
		-0.626562, 0.306681, 0.716496,
		42.693928, 33.242058, 34.732521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.246502, 32.597984, 34.855927>,  <43.132523, 33.027382, 34.230972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.246502, 32.597984, 34.855927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.872631, 32.738976, 34.837471>,  <42.648308, 32.823570, 34.826397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.872631, 32.738976, 34.837471>,  <43.246502, 32.597984, 34.855927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.872631, 32.738976, 34.837471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354657, -0.933476, 0.053304,
		-0.024285, 0.066187, 0.997512,
		-0.934681, 0.352480, -0.046143,
		42.592228, 32.844719, 34.823627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.896587, 32.281670, 35.404537>,  <43.246502, 32.597984, 34.855927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.896587, 32.281670, 35.404537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.604168, 32.422020, 35.170460>,  <42.428715, 32.506229, 35.030014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.604168, 32.422020, 35.170460>,  <42.896587, 32.281670, 35.404537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.604168, 32.422020, 35.170460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429310, -0.903142, -0.005198,
		-0.530341, 0.247431, 0.810874,
		-0.731048, 0.350873, -0.585198,
		42.384853, 32.527283, 34.994900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.391659, 31.833931, 35.614735>,  <42.896587, 32.281670, 35.404537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.391659, 31.833931, 35.614735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.215645, 32.000450, 35.296471>,  <42.110039, 32.100361, 35.105515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.215645, 32.000450, 35.296471>,  <42.391659, 31.833931, 35.614735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.215645, 32.000450, 35.296471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597508, -0.797168, -0.086641,
		-0.670340, 0.437287, 0.599519,
		-0.440031, 0.416297, -0.795657,
		42.083637, 32.125340, 35.057774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.615864, 31.760796, 35.658726>,  <42.391659, 31.833931, 35.614735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.615864, 31.760796, 35.658726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.704010, 31.813522, 35.272137>,  <41.756897, 31.845160, 35.040184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.704010, 31.813522, 35.272137>,  <41.615864, 31.760796, 35.658726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.704010, 31.813522, 35.272137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635331, -0.732426, -0.244759,
		-0.740131, 0.667965, -0.077653,
		0.220366, 0.131818, -0.966469,
		41.770119, 31.853067, 34.982197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.019924, 31.514286, 35.344372>,  <41.615864, 31.760796, 35.658726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.019924, 31.514286, 35.344372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.286400, 31.521852, 35.046154>,  <41.446285, 31.526392, 34.867222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.286400, 31.521852, 35.046154>,  <41.019924, 31.514286, 35.344372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.286400, 31.521852, 35.046154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462547, -0.773699, -0.432944,
		-0.585018, 0.633271, -0.506677,
		0.666186, 0.018918, -0.745545,
		41.486256, 31.527527, 34.822491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.630928, 31.390629, 34.823143>,  <41.019924, 31.514286, 35.344372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.630928, 31.390629, 34.823143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.009571, 31.290089, 34.742386>,  <41.236755, 31.229765, 34.693932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.009571, 31.290089, 34.742386>,  <40.630928, 31.390629, 34.823143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.009571, 31.290089, 34.742386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311030, -0.876779, -0.366767,
		-0.084826, 0.409978, -0.908143,
		0.946607, -0.251348, -0.201889,
		41.293552, 31.214684, 34.681820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725574, 31.171429, 34.039860>,  <40.630928, 31.390629, 34.823143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.725574, 31.171429, 34.039860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.044159, 31.015369, 34.224651>,  <41.235310, 30.921734, 34.335526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.044159, 31.015369, 34.224651>,  <40.725574, 31.171429, 34.039860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.044159, 31.015369, 34.224651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301325, -0.918467, -0.256167,
		0.524259, 0.064821, -0.849088,
		0.796464, -0.390150, 0.461983,
		41.283096, 30.898325, 34.363247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.031681, 30.773439, 33.511616>,  <40.725574, 31.171429, 34.039860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.031681, 30.773439, 33.511616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.204426, 30.617018, 33.836716>,  <41.308075, 30.523165, 34.031776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.204426, 30.617018, 33.836716>,  <41.031681, 30.773439, 33.511616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.204426, 30.617018, 33.836716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153740, -0.919849, -0.360892,
		0.888739, 0.030904, -0.457371,
		0.431865, -0.391055, 0.812754,
		41.333984, 30.499701, 34.080544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.589928, 30.307707, 33.237968>,  <41.031681, 30.773439, 33.511616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.589928, 30.307707, 33.237968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.500580, 30.185022, 33.608055>,  <41.446972, 30.111412, 33.830109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.500580, 30.185022, 33.608055>,  <41.589928, 30.307707, 33.237968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.500580, 30.185022, 33.608055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305989, -0.879157, -0.365314,
		0.925461, -0.364707, 0.102524,
		-0.223368, -0.306712, 0.925221,
		41.433571, 30.093008, 33.885620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.951618, 29.775023, 33.401840>,  <41.589928, 30.307707, 33.237968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.951618, 29.775023, 33.401840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.635117, 29.720961, 33.640385>,  <41.445213, 29.688522, 33.783512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.635117, 29.720961, 33.640385>,  <41.951618, 29.775023, 33.401840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.635117, 29.720961, 33.640385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029797, -0.965586, -0.258371,
		0.610759, -0.222207, 0.759998,
		-0.791256, -0.135157, 0.596362,
		41.397739, 29.680414, 33.819294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.922894, 29.044832, 33.540447>,  <41.951618, 29.775023, 33.401840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.922894, 29.044832, 33.540447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.566643, 29.178970, 33.663300>,  <41.352894, 29.259453, 33.737011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.566643, 29.178970, 33.663300>,  <41.922894, 29.044832, 33.540447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.566643, 29.178970, 33.663300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426115, -0.851281, -0.306179,
		0.158780, -0.403565, 0.901069,
		-0.890626, 0.335344, 0.307131,
		41.299454, 29.279573, 33.755440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.669888, 28.411135, 33.840137>,  <41.922894, 29.044832, 33.540447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.669888, 28.411135, 33.840137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.381725, 28.666847, 33.732552>,  <41.208828, 28.820274, 33.667999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.381725, 28.666847, 33.732552>,  <41.669888, 28.411135, 33.840137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.381725, 28.666847, 33.732552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451094, -0.726454, -0.518439,
		-0.526815, -0.252158, 0.811715,
		-0.720403, 0.639281, -0.268960,
		41.165604, 28.858631, 33.651863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.180035, 27.895746, 33.856712>,  <41.669888, 28.411135, 33.840137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.180035, 27.895746, 33.856712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.033230, 28.217411, 33.669685>,  <40.945145, 28.410410, 33.557468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.033230, 28.217411, 33.669685>,  <41.180035, 27.895746, 33.856712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.033230, 28.217411, 33.669685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566538, -0.591906, -0.573308,
		-0.737790, 0.054483, 0.672828,
		-0.367016, 0.804163, -0.467569,
		40.923126, 28.458660, 33.529415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.518505, 27.830090, 33.883812>,  <41.180035, 27.895746, 33.856712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.518505, 27.830090, 33.883812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.583038, 28.061348, 33.563881>,  <40.621758, 28.200104, 33.371922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.583038, 28.061348, 33.563881>,  <40.518505, 27.830090, 33.883812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.583038, 28.061348, 33.563881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458749, -0.673627, -0.579461,
		-0.873797, 0.460404, 0.156546,
		0.161333, 0.578147, -0.799824,
		40.631439, 28.234793, 33.323933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.867157, 27.970732, 33.557854>,  <40.518505, 27.830090, 33.883812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.867157, 27.970732, 33.557854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.132111, 28.051743, 33.269344>,  <40.291084, 28.100349, 33.096241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.132111, 28.051743, 33.269344>,  <39.867157, 27.970732, 33.557854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.132111, 28.051743, 33.269344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464420, -0.644445, -0.607457,
		-0.587844, 0.737343, -0.332813,
		0.662384, 0.202525, -0.721270,
		40.330826, 28.112499, 33.052963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427708, 27.918409, 32.935921>,  <39.867157, 27.970732, 33.557854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.427708, 27.918409, 32.935921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.811836, 27.867620, 32.836590>,  <40.042313, 27.837147, 32.776993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.811836, 27.867620, 32.836590>,  <39.427708, 27.918409, 32.935921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.811836, 27.867620, 32.836590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260150, -0.728770, -0.633416,
		-0.100547, 0.672883, -0.732884,
		0.960319, -0.126971, -0.248326,
		40.099934, 27.829529, 32.762093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.416283, 27.989727, 32.279488>,  <39.427708, 27.918409, 32.935921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.416283, 27.989727, 32.279488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.730011, 27.758795, 32.370289>,  <39.918247, 27.620235, 32.424770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.730011, 27.758795, 32.370289>,  <39.416283, 27.989727, 32.279488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.730011, 27.758795, 32.370289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276802, -0.653168, -0.704807,
		0.555181, 0.489958, -0.672098,
		0.784319, -0.577333, 0.227005,
		39.965305, 27.585594, 32.438389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.905678, 27.796209, 31.722908>,  <39.416283, 27.989727, 32.279488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.905678, 27.796209, 31.722908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.863094, 27.505043, 31.993851>,  <39.837543, 27.330343, 32.156414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.863094, 27.505043, 31.993851>,  <39.905678, 27.796209, 31.722908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.863094, 27.505043, 31.993851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373384, -0.602104, -0.705730,
		0.921548, -0.328044, -0.207693,
		-0.106457, -0.727913, 0.677355,
		39.831158, 27.286669, 32.197056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.114922, 28.452667, 31.645504>,  <39.905678, 27.796209, 31.722908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.114922, 28.452667, 31.645504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.143570, 28.611668, 31.279583>,  <40.160759, 28.707067, 31.060030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.143570, 28.611668, 31.279583>,  <40.114922, 28.452667, 31.645504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.143570, 28.611668, 31.279583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696550, -0.676400, -0.239376,
		-0.713925, -0.620063, -0.325321,
		0.071619, 0.397499, -0.914803,
		40.165054, 28.730917, 31.005142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.857296, 28.050854, 31.033895>,  <40.114922, 28.452667, 31.645504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.857296, 28.050854, 31.033895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.178783, 28.259901, 30.920122>,  <40.371677, 28.385330, 30.851858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.178783, 28.259901, 30.920122>,  <39.857296, 28.050854, 31.033895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.178783, 28.259901, 30.920122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443963, -0.845001, -0.298112,
		-0.396145, 0.113322, -0.911168,
		0.803721, 0.522620, -0.284432,
		40.419899, 28.416687, 30.834793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.973526, 27.994974, 30.334017>,  <39.857296, 28.050854, 31.033895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.973526, 27.994974, 30.334017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.324192, 28.061066, 30.514751>,  <40.534592, 28.100721, 30.623192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.324192, 28.061066, 30.514751>,  <39.973526, 27.994974, 30.334017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.324192, 28.061066, 30.514751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387550, -0.799022, -0.459749,
		0.285062, 0.578155, -0.764510,
		0.876667, 0.165229, 0.451835,
		40.587193, 28.110634, 30.650301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.536053, 28.117584, 29.871237>,  <39.973526, 27.994974, 30.334017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.536053, 28.117584, 29.871237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.678719, 27.951180, 30.205835>,  <40.764320, 27.851337, 30.406593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.678719, 27.951180, 30.205835>,  <40.536053, 28.117584, 29.871237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.678719, 27.951180, 30.205835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359436, -0.765356, -0.533888,
		0.862319, 0.491087, -0.123449,
		0.356668, -0.416010, 0.836495,
		40.785721, 27.826376, 30.456783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.272255, 28.261784, 29.906490>,  <40.536053, 28.117584, 29.871237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.272255, 28.261784, 29.906490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.105309, 27.933239, 30.062014>,  <41.005142, 27.736113, 30.155327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.105309, 27.933239, 30.062014>,  <41.272255, 28.261784, 29.906490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.105309, 27.933239, 30.062014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478774, -0.562405, -0.674148,
		0.772388, -0.095214, 0.627974,
		-0.417364, -0.821362, 0.388809,
		40.980099, 27.686831, 30.178656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.930130, 28.245689, 29.460159>,  <41.272255, 28.261784, 29.906490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.930130, 28.245689, 29.460159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.112705, 27.904202, 29.560421>,  <42.222252, 27.699308, 29.620579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.112705, 27.904202, 29.560421>,  <41.930130, 28.245689, 29.460159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.112705, 27.904202, 29.560421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839161, 0.506693, 0.197663,
		-0.295754, 0.120118, 0.947682,
		0.456441, -0.853718, 0.250655,
		42.249638, 27.648087, 29.635618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.340557, 28.334154, 30.118689>,  <41.930130, 28.245689, 29.460159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.340557, 28.334154, 30.118689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.507217, 28.053686, 29.887255>,  <42.607212, 27.885405, 29.748394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.507217, 28.053686, 29.887255>,  <42.340557, 28.334154, 30.118689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.507217, 28.053686, 29.887255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783059, 0.600111, -0.163359,
		0.461759, -0.385003, 0.799094,
		0.416651, -0.701170, -0.578586,
		42.632214, 27.843336, 29.713678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.986664, 27.828943, 30.248409>,  <42.340557, 28.334154, 30.118689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.986664, 27.828943, 30.248409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.957001, 27.979654, 29.879078>,  <42.939201, 28.070082, 29.657478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.957001, 27.979654, 29.879078>,  <42.986664, 27.828943, 30.248409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.957001, 27.979654, 29.879078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887832, 0.446596, 0.110933,
		0.454153, -0.811535, -0.367636,
		-0.074159, 0.376780, -0.923330,
		42.934753, 28.092688, 29.602079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.561348, 27.595863, 29.753956>,  <42.986664, 27.828943, 30.248409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.561348, 27.595863, 29.753956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.391987, 27.952362, 29.688955>,  <43.290371, 28.166262, 29.649956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.391987, 27.952362, 29.688955>,  <43.561348, 27.595863, 29.753956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.391987, 27.952362, 29.688955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899966, 0.434358, 0.037341,
		0.103863, -0.130434, -0.986002,
		-0.423407, 0.891246, -0.162500,
		43.264965, 28.219736, 29.640205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.919033, 28.029650, 29.304617>,  <43.561348, 27.595863, 29.753956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.919033, 28.029650, 29.304617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.705200, 28.264078, 29.548174>,  <43.576900, 28.404736, 29.694307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.705200, 28.264078, 29.548174>,  <43.919033, 28.029650, 29.304617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.705200, 28.264078, 29.548174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770608, 0.633832, 0.066482,
		-0.346971, 0.504756, -0.790463,
		-0.534579, 0.586070, 0.608891,
		43.544827, 28.439899, 29.730841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.923668, 28.813835, 29.086885>,  <43.919033, 28.029650, 29.304617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.923668, 28.813835, 29.086885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.832561, 28.795189, 29.475925>,  <43.777897, 28.784000, 29.709349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.832561, 28.795189, 29.475925>,  <43.923668, 28.813835, 29.086885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.832561, 28.795189, 29.475925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537438, 0.826906, 0.165489,
		-0.811964, 0.560404, -0.163285,
		-0.227762, -0.046616, 0.972600,
		43.764233, 28.781204, 29.767706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.616871, 29.508120, 29.324730>,  <43.923668, 28.813835, 29.086885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.616871, 29.508120, 29.324730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.725029, 29.348692, 29.675280>,  <43.789925, 29.253035, 29.885609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.725029, 29.348692, 29.675280>,  <43.616871, 29.508120, 29.324730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.725029, 29.348692, 29.675280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486654, 0.842008, 0.232791,
		-0.830697, 0.363546, 0.421636,
		0.270391, -0.398570, 0.876374,
		43.806145, 29.229120, 29.938192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.485905, 30.095705, 29.782768>,  <43.616871, 29.508120, 29.324730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.485905, 30.095705, 29.782768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.747532, 29.844013, 29.950706>,  <43.904507, 29.692999, 30.051470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.747532, 29.844013, 29.950706>,  <43.485905, 30.095705, 29.782768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.747532, 29.844013, 29.950706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352947, 0.744768, 0.566347,
		-0.669048, -0.222246, 0.709212,
		0.654067, -0.629228, 0.419844,
		43.943752, 29.655245, 30.076660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.590900, 30.318707, 30.482042>,  <43.485905, 30.095705, 29.782768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.590900, 30.318707, 30.482042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.907215, 30.077415, 30.440517>,  <44.097004, 29.932640, 30.415602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.907215, 30.077415, 30.440517>,  <43.590900, 30.318707, 30.482042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.907215, 30.077415, 30.440517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498733, 0.536666, 0.680628,
		-0.354860, -0.590005, 0.725237,
		0.790784, -0.603227, -0.103813,
		44.144451, 29.896448, 30.409374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.718109, 30.147383, 31.183567>,  <43.590900, 30.318707, 30.482042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.718109, 30.147383, 31.183567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.047821, 30.066629, 30.971977>,  <44.245647, 30.018177, 30.845024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.047821, 30.066629, 30.971977>,  <43.718109, 30.147383, 31.183567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.047821, 30.066629, 30.971977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540185, 0.560297, 0.627907,
		0.169618, -0.803312, 0.570894,
		0.824275, -0.201884, -0.528974,
		44.295105, 30.006063, 30.813286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.192295, 29.791763, 31.660446>,  <43.718109, 30.147383, 31.183567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.192295, 29.791763, 31.660446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.395348, 29.944557, 31.351540>,  <44.517178, 30.036234, 31.166195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.395348, 29.944557, 31.351540>,  <44.192295, 29.791763, 31.660446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.395348, 29.944557, 31.351540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548656, 0.547782, 0.631594,
		0.664295, -0.744326, 0.068492,
		0.507631, 0.381986, -0.772268,
		44.547638, 30.059153, 31.119860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.935268, 29.800678, 31.921623>,  <44.192295, 29.791763, 31.660446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.935268, 29.800678, 31.921623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.872692, 30.073320, 31.635702>,  <44.835148, 30.236906, 31.464149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.872692, 30.073320, 31.635702>,  <44.935268, 29.800678, 31.921623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.872692, 30.073320, 31.635702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415944, 0.701872, 0.578244,
		0.895833, -0.206855, -0.393311,
		-0.156442, 0.681606, -0.714800,
		44.825760, 30.277802, 31.421263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.479256, 30.255285, 31.989977>,  <44.935268, 29.800678, 31.921623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.479256, 30.255285, 31.989977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.208557, 30.448298, 31.767559>,  <45.046139, 30.564104, 31.634108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.208557, 30.448298, 31.767559>,  <45.479256, 30.255285, 31.989977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.208557, 30.448298, 31.767559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183491, 0.841982, 0.507343,
		0.712988, 0.241311, -0.658344,
		-0.676742, 0.482529, -0.556045,
		45.005535, 30.593056, 31.600746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.712452, 30.940334, 31.937498>,  <45.479256, 30.255285, 31.989977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.712452, 30.940334, 31.937498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.330593, 30.996466, 31.832466>,  <45.101479, 31.030144, 31.769447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.330593, 30.996466, 31.832466>,  <45.712452, 30.940334, 31.937498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.330593, 30.996466, 31.832466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003723, 0.887511, 0.460771,
		0.297703, 0.438898, -0.847786,
		-0.954651, 0.140329, -0.262580,
		45.044197, 31.038565, 31.753693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.667656, 31.607756, 31.710882>,  <45.712452, 30.940334, 31.937498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.667656, 31.607756, 31.710882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.279247, 31.523006, 31.755112>,  <45.046204, 31.472157, 31.781651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.279247, 31.523006, 31.755112>,  <45.667656, 31.607756, 31.710882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.279247, 31.523006, 31.755112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111272, 0.810259, 0.575412,
		-0.211511, 0.546433, -0.810354,
		-0.971021, -0.211875, 0.110576,
		44.987942, 31.459444, 31.788284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.289242, 32.186932, 31.576904>,  <45.667656, 31.607756, 31.710882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.289242, 32.186932, 31.576904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.040092, 31.986090, 31.816875>,  <44.890602, 31.865583, 31.960857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.040092, 31.986090, 31.816875>,  <45.289242, 32.186932, 31.576904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.040092, 31.986090, 31.816875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003110, 0.765261, 0.643713,
		-0.782314, 0.402819, -0.475102,
		-0.622877, -0.502108, 0.599927,
		44.853230, 31.835457, 31.996853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.866386, 32.676685, 31.753859>,  <45.289242, 32.186932, 31.576904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.866386, 32.676685, 31.753859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.798203, 32.398232, 32.032810>,  <44.757294, 32.231159, 32.200180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.798203, 32.398232, 32.032810>,  <44.866386, 32.676685, 31.753859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.798203, 32.398232, 32.032810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184048, 0.717775, 0.671510,
		-0.968024, -0.013887, -0.250474,
		-0.170459, -0.696137, 0.697379,
		44.747066, 32.189392, 32.242023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.543358, 33.103657, 32.269650>,  <44.866386, 32.676685, 31.753859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.543358, 33.103657, 32.269650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.662300, 32.759434, 32.435066>,  <44.733665, 32.552898, 32.534317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.662300, 32.759434, 32.435066>,  <44.543358, 33.103657, 32.269650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.662300, 32.759434, 32.435066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065786, 0.450570, 0.890314,
		-0.952497, -0.237537, 0.190593,
		0.297358, -0.860560, 0.413540,
		44.751507, 32.501266, 32.559128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.200981, 33.116722, 32.910973>,  <44.543358, 33.103657, 32.269650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.200981, 33.116722, 32.910973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.473930, 32.828793, 32.961933>,  <44.637699, 32.656036, 32.992508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.473930, 32.828793, 32.961933>,  <44.200981, 33.116722, 32.910973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.473930, 32.828793, 32.961933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107102, 0.270842, 0.956647,
		-0.723118, -0.639143, 0.261909,
		0.682371, -0.719820, 0.127397,
		44.678642, 32.612846, 33.000153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.019417, 32.607319, 33.570232>,  <44.200981, 33.116722, 32.910973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.019417, 32.607319, 33.570232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.409382, 32.641777, 33.488136>,  <44.643360, 32.662453, 33.438877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.409382, 32.641777, 33.488136>,  <44.019417, 32.607319, 33.570232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.409382, 32.641777, 33.488136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162717, 0.353362, 0.921227,
		0.151884, -0.931512, 0.330480,
		0.974913, 0.086145, -0.205243,
		44.701855, 32.667622, 33.426563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.363453, 32.403877, 34.175465>,  <44.019417, 32.607319, 33.570232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.363453, 32.403877, 34.175465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.649811, 32.624611, 34.004364>,  <44.821625, 32.757050, 33.901703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.649811, 32.624611, 34.004364>,  <44.363453, 32.403877, 34.175465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.649811, 32.624611, 34.004364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190143, 0.435400, 0.879927,
		0.671816, -0.711272, 0.206775,
		0.715897, 0.551832, -0.427752,
		44.864582, 32.790161, 33.876038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.919273, 32.502289, 34.689892>,  <44.363453, 32.403877, 34.175465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.919273, 32.502289, 34.689892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.037777, 32.762711, 34.410362>,  <45.108879, 32.918964, 34.242645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.037777, 32.762711, 34.410362>,  <44.919273, 32.502289, 34.689892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.037777, 32.762711, 34.410362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549045, 0.482601, 0.682382,
		0.781523, -0.585848, -0.214485,
		0.296262, 0.651059, -0.698821,
		45.126656, 32.958027, 34.200714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.644459, 32.424229, 34.592625>,  <44.919273, 32.502289, 34.689892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.644459, 32.424229, 34.592625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.561848, 32.798782, 34.479118>,  <45.512280, 33.023514, 34.411015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.561848, 32.798782, 34.479118>,  <45.644459, 32.424229, 34.592625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.561848, 32.798782, 34.479118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789027, 0.330895, 0.517634,
		0.578602, -0.116991, -0.807175,
		-0.206531, 0.936388, -0.283766,
		45.499889, 33.079700, 34.393990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.251888, 32.786678, 34.295956>,  <45.644459, 32.424229, 34.592625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.251888, 32.786678, 34.295956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.990417, 33.048359, 34.448132>,  <45.833534, 33.205368, 34.539436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.990417, 33.048359, 34.448132>,  <46.251888, 32.786678, 34.295956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.990417, 33.048359, 34.448132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695547, 0.321261, 0.642655,
		0.298206, 0.684699, -0.665027,
		-0.653672, 0.654201, 0.380439,
		45.794315, 33.244617, 34.562263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.634750, 33.381031, 34.461548>,  <46.251888, 32.786678, 34.295956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.634750, 33.381031, 34.461548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.309471, 33.391815, 34.694092>,  <46.114304, 33.398285, 34.833618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.309471, 33.391815, 34.694092>,  <46.634750, 33.381031, 34.461548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.309471, 33.391815, 34.694092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559034, 0.313915, 0.767423,
		-0.161809, 0.949068, -0.270346,
		-0.813203, 0.026957, 0.581356,
		46.065510, 33.399902, 34.868500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.082874, 33.788322, 34.298206>,  <46.634750, 33.381031, 34.461548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.082874, 33.788322, 34.298206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.275459, 34.094234, 34.126949>,  <47.391010, 34.277782, 34.024197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.275459, 34.094234, 34.126949>,  <47.082874, 33.788322, 34.298206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.275459, 34.094234, 34.126949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048868, 0.464300, 0.884329,
		0.875104, -0.446692, 0.186170,
		0.481462, 0.764782, -0.428140,
		47.419899, 34.323669, 33.998508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.516125, 33.875889, 34.824928>,  <47.082874, 33.788322, 34.298206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.516125, 33.875889, 34.824928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.487469, 34.205013, 34.599415>,  <47.470276, 34.402489, 34.464108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.487469, 34.205013, 34.599415>,  <47.516125, 33.875889, 34.824928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.487469, 34.205013, 34.599415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087695, 0.568238, 0.818177,
		0.993568, 0.009171, -0.112864,
		-0.071637, 0.822813, -0.563779,
		47.465977, 34.451859, 34.430283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.995934, 34.345318, 35.082100>,  <47.516125, 33.875889, 34.824928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.995934, 34.345318, 35.082100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.724476, 34.572742, 34.896122>,  <47.561600, 34.709198, 34.784534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.724476, 34.572742, 34.896122>,  <47.995934, 34.345318, 35.082100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.724476, 34.572742, 34.896122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065491, 0.677365, 0.732726,
		0.731540, 0.466812, -0.496926,
		-0.678646, 0.568563, -0.464948,
		47.520882, 34.743313, 34.756638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.229828, 35.001060, 35.173008>,  <47.995934, 34.345318, 35.082100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.229828, 35.001060, 35.173008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.836258, 34.997417, 35.101665>,  <47.600117, 34.995232, 35.058861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.836258, 34.997417, 35.101665>,  <48.229828, 35.001060, 35.173008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.836258, 34.997417, 35.101665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151754, 0.569138, 0.808117,
		0.094147, 0.822192, -0.561371,
		-0.983924, -0.009108, -0.178353,
		47.541080, 34.994686, 35.048161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.426659, 36.618431, 46.541298> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.112122, 36.372345, 46.518768>,  <33.923401, 36.224693, 46.505249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.112122, 36.372345, 46.518768>,  <34.426659, 36.618431, 46.541298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112122, 36.372345, 46.518768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054878, 0.160370, -0.985530,
		0.615349, -0.771873, -0.159868,
		-0.786343, -0.615218, -0.056325,
		33.876217, 36.187778, 46.501869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.542480, 36.157578, 45.962627>,  <34.426659, 36.618431, 46.541298>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.542480, 36.157578, 45.962627> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.151417, 36.123871, 46.039646>,  <33.916779, 36.103649, 46.085857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.151417, 36.123871, 46.039646>,  <34.542480, 36.157578, 45.962627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.151417, 36.123871, 46.039646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198499, 0.069081, -0.977664,
		0.069081, -0.994046, -0.084265,
		0.977664, 0.084265, -0.192544,
		33.858116, 36.098591, 46.097408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193634, 35.621876, 45.517536>,  <34.542480, 36.157578, 45.962627>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193634, 35.621876, 45.517536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.904697, 35.882969, 45.608898>,  <33.731335, 36.039623, 45.663715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.904697, 35.882969, 45.608898>,  <34.193634, 35.621876, 45.517536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.904697, 35.882969, 45.608898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196747, 0.122661, -0.972751,
		-0.662961, -0.747594, 0.039820,
		-0.722339, 0.652731, 0.228406,
		33.687996, 36.078789, 45.677422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.512032, 35.368580, 45.180096>,  <34.193634, 35.621876, 45.517536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.512032, 35.368580, 45.180096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.461090, 35.757446, 45.258751>,  <33.430527, 35.990768, 45.305943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.461090, 35.757446, 45.258751>,  <33.512032, 35.368580, 45.180096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.461090, 35.757446, 45.258751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346976, 0.142059, -0.927053,
		-0.929187, -0.186291, 0.319228,
		-0.127352, 0.972170, 0.196638,
		33.422886, 36.049099, 45.317741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.790142, 35.522545, 44.977783>,  <33.512032, 35.368580, 45.180096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.790142, 35.522545, 44.977783> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.001141, 35.862228, 44.987427>,  <33.127739, 36.066040, 44.993214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.001141, 35.862228, 44.987427>,  <32.790142, 35.522545, 44.977783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.001141, 35.862228, 44.987427> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273543, 0.196645, -0.941544,
		-0.804312, 0.490069, 0.336027,
		0.527500, 0.849213, 0.024109,
		33.159389, 36.116993, 44.994659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.501362, 36.005299, 44.582573>,  <32.790142, 35.522545, 44.977783>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.501362, 36.005299, 44.582573> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.855450, 36.191360, 44.581444>,  <33.067902, 36.302998, 44.580765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.855450, 36.191360, 44.581444>,  <32.501362, 36.005299, 44.582573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855450, 36.191360, 44.581444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148657, 0.277138, -0.949261,
		-0.440773, 0.840727, 0.314478,
		0.885223, 0.465158, -0.002825,
		33.121017, 36.330910, 44.580597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.378937, 36.617031, 44.208366>,  <32.501362, 36.005299, 44.582573>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.378937, 36.617031, 44.208366> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.778736, 36.608265, 44.199223>,  <33.018616, 36.603004, 44.193737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.778736, 36.608265, 44.199223>,  <32.378937, 36.617031, 44.208366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.778736, 36.608265, 44.199223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011954, 0.407321, -0.913207,
		0.029322, 0.913022, 0.406855,
		0.999499, -0.021913, -0.022857,
		33.078587, 36.601692, 44.192364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.542320, 37.287769, 43.902210>,  <32.378937, 36.617031, 44.208366>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.542320, 37.287769, 43.902210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.861324, 37.046951, 43.886581>,  <33.052727, 36.902462, 43.877205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.861324, 37.046951, 43.886581>,  <32.542320, 37.287769, 43.902210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.861324, 37.046951, 43.886581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191058, 0.313461, -0.930182,
		0.572258, 0.734361, 0.365012,
		0.797507, -0.602042, -0.039075,
		33.100578, 36.866337, 43.874859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.096943, 37.659229, 43.453671>,  <32.542320, 37.287769, 43.902210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.096943, 37.659229, 43.453671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.214302, 37.277359, 43.473721>,  <33.284718, 37.048237, 43.485752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.214302, 37.277359, 43.473721>,  <33.096943, 37.659229, 43.453671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.214302, 37.277359, 43.473721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283758, 0.036897, -0.958186,
		0.912906, 0.295357, 0.281723,
		0.293401, -0.954674, 0.050126,
		33.302322, 36.990955, 43.488758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782631, 37.519905, 43.072487>,  <33.096943, 37.659229, 43.453671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782631, 37.519905, 43.072487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.579399, 37.175411, 43.067982>,  <33.457458, 36.968716, 43.065277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.579399, 37.175411, 43.067982>,  <33.782631, 37.519905, 43.072487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579399, 37.175411, 43.067982> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193425, -0.101347, -0.975866,
		0.839310, -0.497998, 0.218077,
		-0.508081, -0.861236, -0.011264,
		33.426975, 36.917042, 43.064602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.210606, 37.053741, 42.556679>,  <33.782631, 37.519905, 43.072487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.210606, 37.053741, 42.556679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.850861, 36.882854, 42.593819>,  <33.635014, 36.780323, 42.616100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.850861, 36.882854, 42.593819>,  <34.210606, 37.053741, 42.556679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850861, 36.882854, 42.593819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047646, -0.306887, -0.950552,
		0.434590, -0.850472, 0.296360,
		-0.899367, -0.427221, 0.092848,
		33.581051, 36.754688, 42.621674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.350094, 36.332218, 42.325977>,  <34.210606, 37.053741, 42.556679>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.350094, 36.332218, 42.325977> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.970692, 36.449799, 42.278763>,  <33.743050, 36.520348, 42.250435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.970692, 36.449799, 42.278763>,  <34.350094, 36.332218, 42.325977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.970692, 36.449799, 42.278763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060236, -0.198450, -0.978258,
		-0.310987, -0.934991, 0.170524,
		-0.948503, 0.293954, -0.118035,
		33.686142, 36.537983, 42.243351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.108315, 35.893608, 41.823334>,  <34.350094, 36.332218, 42.325977>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.108315, 35.893608, 41.823334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.817173, 36.167152, 41.843552>,  <33.642487, 36.331280, 41.855682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.817173, 36.167152, 41.843552>,  <34.108315, 35.893608, 41.823334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.817173, 36.167152, 41.843552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246258, -0.191883, -0.950020,
		-0.639986, -0.703926, 0.308070,
		-0.727857, 0.683864, 0.050545,
		33.598816, 36.372311, 41.858715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483173, 35.584167, 41.474148>,  <34.108315, 35.893608, 41.823334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.483173, 35.584167, 41.474148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.477497, 35.984119, 41.471439>,  <33.474091, 36.224091, 41.469814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.477497, 35.984119, 41.471439>,  <33.483173, 35.584167, 41.474148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477497, 35.984119, 41.471439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057647, -0.005941, -0.998320,
		-0.998236, -0.014560, -0.057555,
		-0.014194, 0.999876, -0.006770,
		33.473240, 36.284081, 41.469410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101665, 35.716866, 40.931828>,  <33.483173, 35.584167, 41.474148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101665, 35.716866, 40.931828> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.276302, 36.070786, 40.996956>,  <33.381084, 36.283138, 41.036034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.276302, 36.070786, 40.996956>,  <33.101665, 35.716866, 40.931828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.276302, 36.070786, 40.996956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120681, 0.121748, -0.985197,
		-0.891529, 0.449779, -0.053625,
		0.436592, 0.884803, 0.162822,
		33.407280, 36.336227, 41.045803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.935963, 36.036858, 40.424557>,  <33.101665, 35.716866, 40.931828>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.935963, 36.036858, 40.424557> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.245552, 36.256065, 40.551453>,  <33.431305, 36.387592, 40.627590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.245552, 36.256065, 40.551453>,  <32.935963, 36.036858, 40.424557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.245552, 36.256065, 40.551453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228717, 0.225224, -0.947081,
		-0.590471, 0.805572, 0.048975,
		0.773972, 0.548023, 0.317236,
		33.477745, 36.420471, 40.646622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.850632, 36.746243, 40.195892>,  <32.935963, 36.036858, 40.424557>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.850632, 36.746243, 40.195892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.220715, 36.604183, 40.249336>,  <33.442764, 36.518948, 40.281403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.220715, 36.604183, 40.249336>,  <32.850632, 36.746243, 40.195892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.220715, 36.604183, 40.249336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238570, 0.270621, -0.932657,
		0.295075, 0.894781, 0.335109,
		0.925211, -0.355150, 0.133614,
		33.498280, 36.497639, 40.289421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192024, 36.969227, 39.640358>,  <32.850632, 36.746243, 40.195892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192024, 36.969227, 39.640358> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.499062, 36.744556, 39.763855>,  <33.683285, 36.609756, 39.837952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.499062, 36.744556, 39.763855>,  <33.192024, 36.969227, 39.640358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.499062, 36.744556, 39.763855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493372, 0.210313, -0.844010,
		0.409124, 0.800183, 0.438548,
		0.767595, -0.561672, 0.308744,
		33.729340, 36.576054, 39.856480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.790863, 37.353783, 39.651302>,  <33.192024, 36.969227, 39.640358>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.790863, 37.353783, 39.651302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.916718, 36.976154, 39.611851>,  <33.992229, 36.749577, 39.588181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.916718, 36.976154, 39.611851>,  <33.790863, 37.353783, 39.651302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916718, 36.976154, 39.611851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543113, 0.264266, -0.796989,
		0.778482, 0.197193, 0.595887,
		0.314633, -0.944075, -0.098628,
		34.011108, 36.692932, 39.582264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306828, 37.453793, 39.261852>,  <33.790863, 37.353783, 39.651302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306828, 37.453793, 39.261852> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.289047, 37.054546, 39.244938>,  <34.278378, 36.814999, 39.234791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.289047, 37.054546, 39.244938>,  <34.306828, 37.453793, 39.261852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.289047, 37.054546, 39.244938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615452, 0.005977, -0.788152,
		0.786920, -0.061057, 0.614027,
		-0.044452, -0.998116, -0.042282,
		34.275711, 36.755112, 39.232254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.999023, 37.241920, 39.185581>,  <34.306828, 37.453793, 39.261852>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.999023, 37.241920, 39.185581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.749317, 36.969215, 39.033009>,  <34.599491, 36.805592, 38.941463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.749317, 36.969215, 39.033009>,  <34.999023, 37.241920, 39.185581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.749317, 36.969215, 39.033009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541486, -0.025684, -0.840317,
		0.563099, -0.731124, 0.385198,
		-0.624270, -0.681761, -0.381431,
		34.562035, 36.764687, 38.918579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.553833, 36.695278, 38.961590>,  <34.999023, 37.241920, 39.185581>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.553833, 36.695278, 38.961590> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.201195, 36.684101, 38.773121>,  <34.989613, 36.677395, 38.660038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.201195, 36.684101, 38.773121>,  <35.553833, 36.695278, 38.961590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201195, 36.684101, 38.773121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470564, -0.129903, -0.872751,
		-0.036819, -0.991133, 0.127671,
		-0.881597, -0.027944, -0.471174,
		34.936714, 36.675720, 38.631767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171238, 36.192200, 38.607258>,  <35.553833, 36.695278, 38.961590>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171238, 36.192200, 38.607258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.565968, 36.185150, 38.542923>,  <35.802807, 36.180920, 38.504322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.565968, 36.185150, 38.542923>,  <35.171238, 36.192200, 38.607258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565968, 36.185150, 38.542923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161598, 0.057706, 0.985168,
		-0.008089, -0.998178, 0.059795,
		0.986823, -0.017631, -0.160837,
		35.862015, 36.179863, 38.494671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399876, 35.787762, 39.210724>,  <35.171238, 36.192200, 38.607258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399876, 35.787762, 39.210724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.731895, 35.936577, 39.044544>,  <35.931107, 36.025867, 38.944836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.731895, 35.936577, 39.044544>,  <35.399876, 35.787762, 39.210724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731895, 35.936577, 39.044544> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489429, -0.128844, 0.862472,
		0.267348, -0.919230, -0.289035,
		0.830051, 0.372043, -0.415451,
		35.980911, 36.048191, 38.919910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874344, 35.228214, 39.262508>,  <35.399876, 35.787762, 39.210724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874344, 35.228214, 39.262508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.047550, 35.588066, 39.240025>,  <36.151474, 35.803978, 39.226536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.047550, 35.588066, 39.240025>,  <35.874344, 35.228214, 39.262508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.047550, 35.588066, 39.240025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505218, -0.190591, 0.841682,
		0.746491, -0.392860, -0.537039,
		0.433019, 0.899631, -0.056205,
		36.177456, 35.857956, 39.223164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.547291, 35.180809, 39.319363>,  <35.874344, 35.228214, 39.262508>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.547291, 35.180809, 39.319363> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.483944, 35.559361, 39.432003>,  <36.445938, 35.786491, 39.499588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.483944, 35.559361, 39.432003>,  <36.547291, 35.180809, 39.319363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.483944, 35.559361, 39.432003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430474, -0.190489, 0.882273,
		0.888602, 0.260939, -0.377223,
		-0.158363, 0.946374, 0.281596,
		36.436436, 35.843273, 39.516483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222488, 35.421780, 39.581955>,  <36.547291, 35.180809, 39.319363>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.222488, 35.421780, 39.581955> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.941162, 35.653595, 39.746624>,  <36.772366, 35.792686, 39.845425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.941162, 35.653595, 39.746624>,  <37.222488, 35.421780, 39.581955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941162, 35.653595, 39.746624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466499, -0.060702, 0.882436,
		0.536398, 0.812679, -0.227662,
		-0.703318, 0.579541, 0.411675,
		36.730167, 35.827457, 39.870125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.514996, 35.896507, 40.088772>,  <37.222488, 35.421780, 39.581955>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.514996, 35.896507, 40.088772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.126217, 35.913311, 40.181335>,  <36.892948, 35.923393, 40.236874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.126217, 35.913311, 40.181335>,  <37.514996, 35.896507, 40.088772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126217, 35.913311, 40.181335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232173, 0.014133, 0.972572,
		0.037585, 0.999017, -0.023489,
		-0.971948, 0.042008, 0.231413,
		36.834633, 35.925915, 40.250759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483990, 36.317608, 40.738838>,  <37.514996, 35.896507, 40.088772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483990, 36.317608, 40.738838> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.148724, 36.099693, 40.749325>,  <36.947563, 35.968945, 40.755615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.148724, 36.099693, 40.749325>,  <37.483990, 36.317608, 40.738838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.148724, 36.099693, 40.749325> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048568, -0.026677, 0.998463,
		-0.543251, 0.838150, 0.048819,
		-0.838164, -0.544787, 0.026215,
		36.897274, 35.936256, 40.757191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083206, 36.588703, 41.221180>,  <37.483990, 36.317608, 40.738838>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083206, 36.588703, 41.221180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.920361, 36.225929, 41.177856>,  <36.822655, 36.008266, 41.151863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.920361, 36.225929, 41.177856>,  <37.083206, 36.588703, 41.221180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920361, 36.225929, 41.177856> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108669, -0.069642, 0.991636,
		-0.906891, 0.415476, -0.070203,
		-0.407112, -0.906934, -0.108307,
		36.798225, 35.953850, 41.145363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420540, 36.521671, 41.656918>,  <37.083206, 36.588703, 41.221180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.420540, 36.521671, 41.656918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.544544, 36.147110, 41.591133>,  <36.618946, 35.922375, 41.551662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.544544, 36.147110, 41.591133>,  <36.420540, 36.521671, 41.656918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.544544, 36.147110, 41.591133> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184667, -0.228994, 0.955751,
		-0.932625, -0.265926, -0.243914,
		0.310013, -0.936400, -0.164457,
		36.637547, 35.866188, 41.541798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889469, 36.063614, 41.881618>,  <36.420540, 36.521671, 41.656918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.889469, 36.063614, 41.881618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.239098, 35.869797, 41.895573>,  <36.448875, 35.753506, 41.903946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.239098, 35.869797, 41.895573>,  <35.889469, 36.063614, 41.881618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.239098, 35.869797, 41.895573> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185447, -0.266425, 0.945847,
		-0.449009, -0.833208, -0.322732,
		0.874071, -0.484544, 0.034889,
		36.501320, 35.724434, 41.906040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.840328, 35.621231, 42.394020>,  <35.889469, 36.063614, 41.881618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.840328, 35.621231, 42.394020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.234810, 35.578823, 42.343178>,  <36.471500, 35.553379, 42.312672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.234810, 35.578823, 42.343178>,  <35.840328, 35.621231, 42.394020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234810, 35.578823, 42.343178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104417, -0.197311, 0.974764,
		-0.128417, -0.974592, -0.183520,
		0.986208, -0.106013, -0.127102,
		36.530674, 35.547020, 42.305046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045952, 35.050602, 42.753685>,  <35.840328, 35.621231, 42.394020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045952, 35.050602, 42.753685> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.341618, 35.316952, 42.713196>,  <36.519016, 35.476761, 42.688904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.341618, 35.316952, 42.713196>,  <36.045952, 35.050602, 42.753685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.341618, 35.316952, 42.713196> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087207, 0.054399, 0.994704,
		0.667856, -0.744077, -0.017859,
		0.739164, 0.665876, -0.101219,
		36.563366, 35.516716, 42.682831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466011, 34.901131, 43.290512>,  <36.045952, 35.050602, 42.753685>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466011, 34.901131, 43.290512> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.563965, 35.276936, 43.194721>,  <36.622738, 35.502419, 43.137245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.563965, 35.276936, 43.194721>,  <36.466011, 34.901131, 43.290512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563965, 35.276936, 43.194721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064729, 0.230605, 0.970892,
		0.967389, -0.253256, -0.004342,
		0.244883, 0.939512, -0.239478,
		36.637428, 35.558788, 43.122879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087826, 35.037125, 43.647259>,  <36.466011, 34.901131, 43.290512>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087826, 35.037125, 43.647259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.897388, 35.383854, 43.587994>,  <36.783127, 35.591892, 43.552433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.897388, 35.383854, 43.587994>,  <37.087826, 35.037125, 43.647259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.897388, 35.383854, 43.587994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056348, 0.138070, 0.988818,
		0.877588, 0.479118, -0.016890,
		-0.476093, 0.866823, -0.148166,
		36.754562, 35.643902, 43.543545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448486, 35.539215, 44.098526>,  <37.087826, 35.037125, 43.647259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448486, 35.539215, 44.098526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.102364, 35.719025, 44.009823>,  <36.894691, 35.826912, 43.956600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.102364, 35.719025, 44.009823>,  <37.448486, 35.539215, 44.098526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.102364, 35.719025, 44.009823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048750, 0.364836, 0.929795,
		0.498873, 0.815365, -0.293779,
		-0.865303, 0.449528, -0.221756,
		36.842773, 35.853882, 43.943295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556168, 36.094173, 44.458111>,  <37.448486, 35.539215, 44.098526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.556168, 36.094173, 44.458111> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.165318, 36.036510, 44.395576>,  <36.930805, 36.001911, 44.358055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.165318, 36.036510, 44.395576>,  <37.556168, 36.094173, 44.458111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.165318, 36.036510, 44.395576> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184634, 0.210338, 0.960036,
		-0.105514, 0.966942, -0.232143,
		-0.977127, -0.144158, -0.156337,
		36.872181, 35.993263, 44.348675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134468, 36.608604, 44.938709>,  <37.556168, 36.094173, 44.458111>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.134468, 36.608604, 44.938709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.856289, 36.338814, 44.839569>,  <36.689381, 36.176941, 44.780087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.856289, 36.338814, 44.839569>,  <37.134468, 36.608604, 44.938709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856289, 36.338814, 44.839569> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403738, 0.081435, 0.911243,
		-0.594429, 0.733791, -0.328946,
		-0.695449, -0.674477, -0.247852,
		36.647655, 36.136471, 44.765213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.497654, 36.887451, 45.238659>,  <37.134468, 36.608604, 44.938709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.497654, 36.887451, 45.238659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.440086, 36.497810, 45.168900>,  <36.405548, 36.264027, 45.127045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.440086, 36.497810, 45.168900>,  <36.497654, 36.887451, 45.238659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.440086, 36.497810, 45.168900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326265, -0.119674, 0.937672,
		-0.934259, 0.191847, -0.300592,
		-0.143916, -0.974101, -0.174400,
		36.396912, 36.205582, 45.116581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.819790, 36.797871, 45.476990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.992825, 36.437252, 45.473488>,  <36.096645, 36.220879, 45.471386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.992825, 36.437252, 45.473488>,  <35.819790, 36.797871, 45.476990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992825, 36.437252, 45.473488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351630, -0.177645, 0.919129,
		-0.830195, -0.394526, -0.393859,
		0.432588, -0.901549, -0.008753,
		36.122601, 36.166786, 45.470863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331074, 36.393032, 45.773979>,  <35.819790, 36.797871, 45.476990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.331074, 36.393032, 45.773979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.668209, 36.180424, 45.807716>,  <35.870491, 36.052860, 45.827957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.668209, 36.180424, 45.807716>,  <35.331074, 36.393032, 45.773979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.668209, 36.180424, 45.807716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207732, -0.176739, 0.962087,
		-0.496463, -0.828401, -0.259376,
		0.842836, -0.531521, 0.084341,
		35.921059, 36.020969, 45.833019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148663, 35.735920, 46.082104>,  <35.331074, 36.393032, 45.773979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148663, 35.735920, 46.082104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.543163, 35.773087, 46.136761>,  <35.779865, 35.795387, 46.169556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.543163, 35.773087, 46.136761>,  <35.148663, 35.735920, 46.082104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.543163, 35.773087, 46.136761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108834, -0.256954, 0.960276,
		0.124334, -0.961947, -0.243310,
		0.986253, 0.092914, 0.136641,
		35.839039, 35.800961, 46.177753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.260555, 35.220955, 46.598095>,  <35.148663, 35.735920, 46.082104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.260555, 35.220955, 46.598095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.609055, 35.417294, 46.598808>,  <35.818153, 35.535095, 46.599236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.609055, 35.417294, 46.598808>,  <35.260555, 35.220955, 46.598095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609055, 35.417294, 46.598808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079722, -0.145087, 0.986202,
		0.484333, -0.859080, -0.165538,
		0.871244, 0.490847, 0.001783,
		35.870426, 35.564548, 46.599342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.742188, 34.851337, 46.918591>,  <35.260555, 35.220955, 46.598095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.742188, 34.851337, 46.918591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.883587, 35.224392, 46.947517>,  <35.968426, 35.448223, 46.964874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.883587, 35.224392, 46.947517>,  <35.742188, 34.851337, 46.918591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.883587, 35.224392, 46.947517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255520, -0.170639, 0.951626,
		0.899860, -0.317920, -0.298628,
		0.353499, 0.932636, 0.072316,
		35.989635, 35.504181, 46.969212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433193, 34.822433, 47.208561>,  <35.742188, 34.851337, 46.918591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433193, 34.822433, 47.208561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.293392, 35.189342, 47.284935>,  <36.209511, 35.409489, 47.330757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.293392, 35.189342, 47.284935>,  <36.433193, 34.822433, 47.208561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293392, 35.189342, 47.284935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049655, -0.185362, 0.981415,
		0.935618, 0.352491, 0.019238,
		-0.349505, 0.917274, 0.190931,
		36.188541, 35.464523, 47.342213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991512, 35.245872, 47.671207>,  <36.433193, 34.822433, 47.208561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.991512, 35.245872, 47.671207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.625408, 35.400013, 47.718220>,  <36.405746, 35.492496, 47.746426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.625408, 35.400013, 47.718220>,  <36.991512, 35.245872, 47.671207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.625408, 35.400013, 47.718220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094516, -0.078203, 0.992447,
		0.391629, 0.919451, 0.035154,
		-0.915256, 0.385349, 0.117529,
		36.350830, 35.515617, 47.753479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162449, 35.777832, 48.205620>,  <36.991512, 35.245872, 47.671207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.162449, 35.777832, 48.205620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.762577, 35.768486, 48.201748>,  <36.522655, 35.762878, 48.199425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.762577, 35.768486, 48.201748>,  <37.162449, 35.777832, 48.205620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.762577, 35.768486, 48.201748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017445, 0.359730, 0.932893,
		-0.018317, 0.932764, -0.360023,
		-0.999680, -0.023368, -0.009683,
		36.462673, 35.761475, 48.198845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921215, 36.384930, 48.464233>,  <37.162449, 35.777832, 48.205620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921215, 36.384930, 48.464233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.618942, 36.129559, 48.522678>,  <36.437576, 35.976334, 48.557747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.618942, 36.129559, 48.522678>,  <36.921215, 36.384930, 48.464233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618942, 36.129559, 48.522678> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056320, 0.158923, 0.985683,
		-0.652511, 0.753094, -0.084139,
		-0.755684, -0.638430, 0.146114,
		36.392239, 35.938030, 48.566513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516678, 36.671074, 48.846256>,  <36.921215, 36.384930, 48.464233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516678, 36.671074, 48.846256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.430641, 36.284576, 48.902988>,  <36.379017, 36.052677, 48.937027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.430641, 36.284576, 48.902988>,  <36.516678, 36.671074, 48.846256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430641, 36.284576, 48.902988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008591, 0.147100, 0.989084,
		-0.976556, 0.211527, -0.039941,
		-0.215093, -0.966239, 0.141834,
		36.366112, 35.994705, 48.945538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166588, 36.767357, 49.468426>,  <36.516678, 36.671074, 48.846256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.166588, 36.767357, 49.468426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.246735, 36.376774, 49.436451>,  <36.294823, 36.142426, 49.417267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.246735, 36.376774, 49.436451>,  <36.166588, 36.767357, 49.468426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.246735, 36.376774, 49.436451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250230, -0.027882, 0.967785,
		-0.947226, -0.213919, 0.238751,
		0.200371, -0.976453, -0.079939,
		36.306847, 36.083839, 49.412468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.880966, 36.411724, 50.101116>,  <36.166588, 36.767357, 49.468426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.880966, 36.411724, 50.101116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.176071, 36.194748, 49.940388>,  <36.353134, 36.064564, 49.843952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.176071, 36.194748, 49.940388>,  <35.880966, 36.411724, 50.101116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176071, 36.194748, 49.940388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334533, -0.223226, 0.915564,
		-0.586336, -0.809894, 0.016775,
		0.737765, -0.542440, -0.401822,
		36.397400, 36.032017, 49.819839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967606, 35.895065, 50.541397>,  <35.880966, 36.411724, 50.101116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.967606, 35.895065, 50.541397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.313286, 35.859787, 50.343254>,  <36.520695, 35.838619, 50.224369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.313286, 35.859787, 50.343254>,  <35.967606, 35.895065, 50.541397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313286, 35.859787, 50.343254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442612, -0.334952, 0.831807,
		-0.239280, -0.938099, -0.250431,
		0.864199, -0.088191, -0.495361,
		36.572544, 35.833328, 50.194645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286423, 35.222862, 50.678158>,  <35.967606, 35.895065, 50.541397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286423, 35.222862, 50.678158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.612457, 35.420818, 50.557678>,  <36.808079, 35.539593, 50.485390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.612457, 35.420818, 50.557678>,  <36.286423, 35.222862, 50.678158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.612457, 35.420818, 50.557678> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533770, -0.439373, 0.722524,
		0.225231, -0.749689, -0.622284,
		0.815083, 0.494891, -0.301201,
		36.856983, 35.569286, 50.467319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.673599, 34.622105, 50.585800>,  <36.286423, 35.222862, 50.678158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.673599, 34.622105, 50.585800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.891285, 34.950607, 50.654350>,  <37.021896, 35.147709, 50.695480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.891285, 34.950607, 50.654350>,  <36.673599, 34.622105, 50.585800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891285, 34.950607, 50.654350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479027, -0.471892, 0.740169,
		0.688739, -0.320717, -0.650214,
		0.544216, 0.821254, 0.171379,
		37.054550, 35.196983, 50.705765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313408, 34.383087, 50.580166>,  <36.673599, 34.622105, 50.585800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313408, 34.383087, 50.580166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.344818, 34.725048, 50.785290>,  <37.363663, 34.930225, 50.908363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.344818, 34.725048, 50.785290>,  <37.313408, 34.383087, 50.580166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344818, 34.725048, 50.785290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381655, -0.500990, 0.776755,
		0.920964, 0.134724, -0.365616,
		0.078522, 0.854903, 0.512812,
		37.368374, 34.981518, 50.939133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861977, 34.279053, 50.962479>,  <37.313408, 34.383087, 50.580166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861977, 34.279053, 50.962479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.673435, 34.575310, 51.154011>,  <37.560310, 34.753063, 51.268929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.673435, 34.575310, 51.154011>,  <37.861977, 34.279053, 50.962479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.673435, 34.575310, 51.154011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146505, -0.469625, 0.870626,
		0.869691, 0.480523, 0.112851,
		-0.471354, 0.740642, 0.478827,
		37.532028, 34.797501, 51.297661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267277, 34.512302, 51.455196>,  <37.861977, 34.279053, 50.962479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267277, 34.512302, 51.455196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.903728, 34.623459, 51.579605>,  <37.685600, 34.690151, 51.654251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.903728, 34.623459, 51.579605>,  <38.267277, 34.512302, 51.455196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903728, 34.623459, 51.579605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152884, -0.471845, 0.868326,
		0.388054, 0.836744, 0.386360,
		-0.908868, 0.277889, 0.311025,
		37.631069, 34.706825, 51.672913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416405, 34.799484, 52.090145>,  <38.267277, 34.512302, 51.455196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.416405, 34.799484, 52.090145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.027451, 34.712147, 52.057201>,  <37.794079, 34.659744, 52.037434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.027451, 34.712147, 52.057201>,  <38.416405, 34.799484, 52.090145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027451, 34.712147, 52.057201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000276, -0.354012, 0.935241,
		-0.233362, 0.909396, 0.344298,
		-0.972390, -0.218345, -0.082362,
		37.735733, 34.646645, 52.032494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160553, 34.840267, 52.769623>,  <38.416405, 34.799484, 52.090145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.160553, 34.840267, 52.769623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.871979, 34.626762, 52.593155>,  <37.698833, 34.498657, 52.487274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.871979, 34.626762, 52.593155>,  <38.160553, 34.840267, 52.769623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871979, 34.626762, 52.593155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181897, -0.468638, 0.864460,
		-0.668166, 0.703898, 0.241001,
		-0.721434, -0.533765, -0.441166,
		37.655548, 34.466633, 52.460804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658962, 34.846378, 53.245678>,  <38.160553, 34.840267, 52.769623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658962, 34.846378, 53.245678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.574738, 34.535133, 53.008965>,  <37.524204, 34.348385, 52.866936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.574738, 34.535133, 53.008965>,  <37.658962, 34.846378, 53.245678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574738, 34.535133, 53.008965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196789, -0.559225, 0.805321,
		-0.957570, 0.286023, -0.035375,
		-0.210558, -0.778112, -0.591783,
		37.511570, 34.301701, 52.831429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090435, 34.531399, 53.520020>,  <37.658962, 34.846378, 53.245678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090435, 34.531399, 53.520020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.257576, 34.229916, 53.317108>,  <37.357861, 34.049026, 53.195362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.257576, 34.229916, 53.317108>,  <37.090435, 34.531399, 53.520020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257576, 34.229916, 53.317108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127668, -0.601528, 0.788584,
		-0.899502, -0.264745, -0.347571,
		0.417848, -0.753707, -0.507276,
		37.382931, 34.003803, 53.164925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482872, 34.228634, 53.700539>,  <37.090435, 34.531399, 53.520020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482872, 34.228634, 53.700539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.568039, 33.838428, 53.722561>,  <36.619141, 33.604305, 53.735775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.568039, 33.838428, 53.722561>,  <36.482872, 34.228634, 53.700539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568039, 33.838428, 53.722561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610624, -0.088864, 0.786919,
		-0.762760, -0.201172, -0.614595,
		0.212921, -0.975517, 0.055059,
		36.631916, 33.545773, 53.739079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.885677, 33.802658, 53.645058>,  <36.482872, 34.228634, 53.700539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.885677, 33.802658, 53.645058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.574982, 33.609138, 53.806358>,  <35.388565, 33.493027, 53.903137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.574982, 33.609138, 53.806358>,  <35.885677, 33.802658, 53.645058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574982, 33.609138, 53.806358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468540, 0.016006, -0.883297,
		0.420887, -0.875031, -0.239113,
		-0.776740, -0.483802, 0.403250,
		35.341961, 33.463997, 53.927334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.658474, 33.737961, 53.076965>,  <35.885677, 33.802658, 53.645058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.658474, 33.737961, 53.076965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.364025, 33.641621, 53.329987>,  <35.187355, 33.583817, 53.481800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.364025, 33.641621, 53.329987>,  <35.658474, 33.737961, 53.076965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.364025, 33.641621, 53.329987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660661, 0.052475, -0.748849,
		0.147169, -0.969142, -0.197750,
		-0.736117, -0.240853, 0.632551,
		35.143188, 33.569366, 53.519753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277271, 33.294952, 52.701038>,  <35.658474, 33.737961, 53.076965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277271, 33.294952, 52.701038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.029484, 33.425076, 52.986816>,  <34.880810, 33.503151, 53.158283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.029484, 33.425076, 52.986816>,  <35.277271, 33.294952, 52.701038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.029484, 33.425076, 52.986816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663837, 0.268695, -0.697942,
		-0.419014, -0.906629, 0.049503,
		-0.619473, 0.325310, 0.714441,
		34.843643, 33.522667, 53.201149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.732094, 32.980690, 52.545265>,  <35.277271, 33.294952, 52.701038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.732094, 32.980690, 52.545265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.606258, 33.286156, 52.770775>,  <34.530758, 33.469437, 52.906082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.606258, 33.286156, 52.770775>,  <34.732094, 32.980690, 52.545265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606258, 33.286156, 52.770775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597505, 0.302193, -0.742743,
		-0.737579, -0.570517, 0.361230,
		-0.314586, 0.763669, 0.563778,
		34.511883, 33.515255, 52.939907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053291, 32.979733, 52.525826>,  <34.732094, 32.980690, 52.545265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053291, 32.979733, 52.525826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.130341, 33.358337, 52.629364>,  <34.176571, 33.585503, 52.691486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.130341, 33.358337, 52.629364>,  <34.053291, 32.979733, 52.525826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130341, 33.358337, 52.629364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538672, 0.322486, -0.778354,
		-0.820200, 0.010497, 0.571981,
		0.192627, 0.946516, 0.258849,
		34.188129, 33.642292, 52.707020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419216, 33.337627, 52.559872>,  <34.053291, 32.979733, 52.525826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419216, 33.337627, 52.559872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.707150, 33.606178, 52.489346>,  <33.879910, 33.767307, 52.447029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.707150, 33.606178, 52.489346>,  <33.419216, 33.337627, 52.559872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.707150, 33.606178, 52.489346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454043, 0.263279, -0.851192,
		-0.525053, 0.692773, 0.494353,
		0.719836, 0.671379, -0.176314,
		33.923100, 33.807590, 52.436451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.116802, 33.893524, 52.242958>,  <33.419216, 33.337627, 52.559872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.116802, 33.893524, 52.242958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.506306, 33.944286, 52.167400>,  <33.740009, 33.974743, 52.122066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.506306, 33.944286, 52.167400>,  <33.116802, 33.893524, 52.242958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.506306, 33.944286, 52.167400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216248, 0.257450, -0.941784,
		-0.070885, 0.957922, 0.278138,
		0.973762, 0.126905, -0.188899,
		33.798435, 33.982357, 52.110729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.094971, 34.436039, 51.866047>,  <33.116802, 33.893524, 52.242958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.094971, 34.436039, 51.866047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.441280, 34.255936, 51.778679>,  <33.649067, 34.147873, 51.726257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.441280, 34.255936, 51.778679>,  <33.094971, 34.436039, 51.866047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.441280, 34.255936, 51.778679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118764, 0.239122, -0.963699,
		0.486140, 0.860285, 0.153551,
		0.865773, -0.450256, -0.218418,
		33.701012, 34.120857, 51.713154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300442, 34.886932, 51.455666>,  <33.094971, 34.436039, 51.866047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300442, 34.886932, 51.455666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.535366, 34.571072, 51.384651>,  <33.676319, 34.381557, 51.342041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.535366, 34.571072, 51.384651>,  <33.300442, 34.886932, 51.455666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.535366, 34.571072, 51.384651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009735, 0.212447, -0.977124,
		0.809302, 0.575605, 0.117085,
		0.587312, -0.789649, -0.177537,
		33.711559, 34.334175, 51.331390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.884022, 35.173939, 51.008316>,  <33.300442, 34.886932, 51.455666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.884022, 35.173939, 51.008316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.856010, 34.778805, 50.952785>,  <33.839203, 34.541725, 50.919468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.856010, 34.778805, 50.952785>,  <33.884022, 35.173939, 51.008316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.856010, 34.778805, 50.952785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059070, 0.134819, -0.989108,
		0.995794, -0.077468, 0.048910,
		-0.070030, -0.987837, -0.138828,
		33.835003, 34.482452, 50.911137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450085, 35.080090, 50.661194>,  <33.884022, 35.173939, 51.008316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450085, 35.080090, 50.661194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.215523, 34.759953, 50.611252>,  <34.074787, 34.567871, 50.581287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.215523, 34.759953, 50.611252>,  <34.450085, 35.080090, 50.661194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.215523, 34.759953, 50.611252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011147, 0.162097, -0.986712,
		0.809942, -0.577220, -0.103976,
		-0.586404, -0.800338, -0.124854,
		34.039600, 34.519852, 50.573795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742340, 34.672070, 50.212948>,  <34.450085, 35.080090, 50.661194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.742340, 34.672070, 50.212948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.358456, 34.562077, 50.189808>,  <34.128124, 34.496082, 50.175922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.358456, 34.562077, 50.189808>,  <34.742340, 34.672070, 50.212948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358456, 34.562077, 50.189808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044200, 0.055601, -0.997474,
		0.277501, -0.959841, -0.041206,
		-0.959708, -0.274979, -0.057854,
		34.070541, 34.479584, 50.172451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.765167, 34.256641, 49.571671>,  <34.742340, 34.672070, 50.212948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.765167, 34.256641, 49.571671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.381504, 34.339149, 49.649094>,  <34.151306, 34.388657, 49.695545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.381504, 34.339149, 49.649094>,  <34.765167, 34.256641, 49.571671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.381504, 34.339149, 49.649094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119730, 0.323890, -0.938488,
		-0.256275, -0.923335, -0.285965,
		-0.959160, 0.206272, 0.193556,
		34.093758, 34.401031, 49.707161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.317513, 33.916569, 49.050900>,  <34.765167, 34.256641, 49.571671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.317513, 33.916569, 49.050900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.084072, 34.207043, 49.196262>,  <33.944008, 34.381329, 49.283482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.084072, 34.207043, 49.196262>,  <34.317513, 33.916569, 49.050900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084072, 34.207043, 49.196262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194611, 0.309407, -0.930803,
		-0.788378, -0.613938, -0.039245,
		-0.583598, 0.726187, 0.363409,
		33.908993, 34.424900, 49.305286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.718628, 33.928265, 48.592815>,  <34.317513, 33.916569, 49.050900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.718628, 33.928265, 48.592815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.711010, 34.276398, 48.789650>,  <33.706440, 34.485279, 48.907753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.711010, 34.276398, 48.789650>,  <33.718628, 33.928265, 48.592815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711010, 34.276398, 48.789650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259039, 0.471077, -0.843199,
		-0.965679, -0.143529, 0.216480,
		-0.019045, 0.870337, 0.492088,
		33.705296, 34.537498, 48.937275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.060432, 34.348087, 48.318035>,  <33.718628, 33.928265, 48.592815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.060432, 34.348087, 48.318035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.342995, 34.583153, 48.475842>,  <33.512531, 34.724190, 48.570526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.342995, 34.583153, 48.475842>,  <33.060432, 34.348087, 48.318035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.342995, 34.583153, 48.475842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008489, 0.564372, -0.825477,
		-0.707754, 0.579774, 0.403666,
		0.706408, 0.587661, 0.394515,
		33.554916, 34.759453, 48.594196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750851, 34.975273, 48.114342>,  <33.060432, 34.348087, 48.318035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750851, 34.975273, 48.114342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.131248, 35.037891, 48.221001>,  <33.359486, 35.075462, 48.284996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.131248, 35.037891, 48.221001>,  <32.750851, 34.975273, 48.114342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.131248, 35.037891, 48.221001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093708, 0.675893, -0.731018,
		-0.294669, 0.720181, 0.628100,
		0.950994, 0.156550, 0.266651,
		33.416546, 35.084858, 48.300995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.884148, 35.725834, 48.094330>,  <32.750851, 34.975273, 48.114342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.884148, 35.725834, 48.094330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.244408, 35.561878, 48.036617>,  <33.460564, 35.463505, 48.001991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.244408, 35.561878, 48.036617>,  <32.884148, 35.725834, 48.094330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.244408, 35.561878, 48.036617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189073, 0.668600, -0.719184,
		0.391248, 0.620457, 0.679675,
		0.900653, -0.409888, -0.144277,
		33.514603, 35.438911, 47.993336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237320, 36.254292, 47.950497>,  <32.884148, 35.725834, 48.094330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237320, 36.254292, 47.950497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.436947, 35.944794, 47.794415>,  <33.556721, 35.759094, 47.700764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.436947, 35.944794, 47.794415>,  <33.237320, 36.254292, 47.950497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.436947, 35.944794, 47.794415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171558, 0.529598, -0.830719,
		0.849414, 0.347638, 0.397044,
		0.499063, -0.773740, -0.390208,
		33.586666, 35.712673, 47.677353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.693020, 36.623581, 47.730194>,  <33.237320, 36.254292, 47.950497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.693020, 36.623581, 47.730194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.729145, 36.271244, 47.544308>,  <33.750820, 36.059841, 47.432774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.729145, 36.271244, 47.544308>,  <33.693020, 36.623581, 47.730194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.729145, 36.271244, 47.544308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156389, 0.473378, -0.866865,
		0.983558, 0.005609, 0.180504,
		0.090309, -0.880841, -0.464718,
		33.756237, 36.006992, 47.404892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084583, 36.843464, 47.175663>,  <33.693020, 36.623581, 47.730194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084583, 36.843464, 47.175663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.924896, 36.496090, 47.058060>,  <33.829082, 36.287666, 46.987499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.924896, 36.496090, 47.058060>,  <34.084583, 36.843464, 47.175663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.924896, 36.496090, 47.058060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106663, 0.362481, -0.925867,
		0.910630, -0.338264, -0.237339,
		-0.399218, -0.868438, -0.294006,
		33.805130, 36.235558, 46.969856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.092327, 26.987133, 32.711929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.751400, 27.174025, 32.617908>,  <40.546844, 27.286160, 32.561497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.751400, 27.174025, 32.617908>,  <41.092327, 26.987133, 32.711929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.751400, 27.174025, 32.617908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335656, 0.833293, 0.439269,
		0.401106, 0.295501, -0.867060,
		-0.852320, 0.467227, -0.235052,
		40.495705, 27.314194, 32.547394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.267056, 27.583599, 32.291119>,  <41.092327, 26.987133, 32.711929>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.267056, 27.583599, 32.291119> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.913139, 27.664946, 32.458824>,  <40.700790, 27.713753, 32.559448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.913139, 27.664946, 32.458824>,  <41.267056, 27.583599, 32.291119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.913139, 27.664946, 32.458824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354230, 0.878114, 0.321615,
		-0.302757, 0.433079, -0.848988,
		-0.884793, 0.203366, 0.419265,
		40.647701, 27.725956, 32.584602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.335655, 28.302992, 32.271725>,  <41.267056, 27.583599, 32.291119>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.335655, 28.302992, 32.271725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.017292, 28.250605, 32.508160>,  <40.826275, 28.219172, 32.650021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.017292, 28.250605, 32.508160>,  <41.335655, 28.302992, 32.271725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.017292, 28.250605, 32.508160> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195443, 0.868467, 0.455595,
		-0.573010, 0.478134, -0.665619,
		-0.795903, -0.130970, 0.591088,
		40.778522, 28.211313, 32.685486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.852009, 28.931623, 32.265362>,  <41.335655, 28.302992, 32.271725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.852009, 28.931623, 32.265362> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.820683, 28.721380, 32.604206>,  <40.801888, 28.595234, 32.807514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.820683, 28.721380, 32.604206>,  <40.852009, 28.931623, 32.265362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.820683, 28.721380, 32.604206> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094890, 0.841937, 0.531167,
		-0.992403, 0.121980, -0.016059,
		-0.078313, -0.525608, 0.847115,
		40.797188, 28.563698, 32.858341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370430, 29.333168, 32.817532>,  <40.852009, 28.931623, 32.265362>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.370430, 29.333168, 32.817532> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.562450, 29.071974, 33.051853>,  <40.677662, 28.915257, 33.192444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.562450, 29.071974, 33.051853>,  <40.370430, 29.333168, 32.817532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.562450, 29.071974, 33.051853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175106, 0.725663, 0.665395,
		-0.859587, -0.216846, 0.462696,
		0.480049, -0.652986, 0.585800,
		40.706467, 28.876078, 33.227592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.044319, 29.435053, 33.442539>,  <40.370430, 29.333168, 32.817532>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.044319, 29.435053, 33.442539> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.399220, 29.269148, 33.523293>,  <40.612160, 29.169605, 33.571743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.399220, 29.269148, 33.523293>,  <40.044319, 29.435053, 33.442539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.399220, 29.269148, 33.523293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148563, 0.671263, 0.726178,
		-0.436709, -0.614310, 0.657197,
		0.887251, -0.414763, 0.201883,
		40.665394, 29.144718, 33.583858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.029396, 29.409536, 34.171154>,  <40.044319, 29.435053, 33.442539>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.029396, 29.409536, 34.171154> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.409618, 29.412304, 34.046963>,  <40.637753, 29.413963, 33.972446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.409618, 29.412304, 34.046963>,  <40.029396, 29.409536, 34.171154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.409618, 29.412304, 34.046963> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180145, 0.802081, 0.569398,
		0.252968, -0.597175, 0.761176,
		0.950555, 0.006918, -0.310479,
		40.694786, 29.414379, 33.953819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.493370, 29.501587, 34.739613>,  <40.029396, 29.409536, 34.171154>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.493370, 29.501587, 34.739613> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.723694, 29.588940, 34.424461>,  <40.861889, 29.641352, 34.235371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.723694, 29.588940, 34.424461>,  <40.493370, 29.501587, 34.739613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.723694, 29.588940, 34.424461> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383519, 0.778915, 0.496189,
		0.722046, -0.587879, 0.364758,
		0.575815, 0.218380, -0.787876,
		40.896439, 29.654453, 34.188099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.138996, 29.603947, 35.051052>,  <40.493370, 29.501587, 34.739613>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.138996, 29.603947, 35.051052> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.212593, 29.773603, 34.696369>,  <41.256752, 29.875399, 34.483559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.212593, 29.773603, 34.696369>,  <41.138996, 29.603947, 35.051052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.212593, 29.773603, 34.696369> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377352, 0.802502, 0.462165,
		0.907609, -0.419634, -0.012399,
		0.183990, 0.424144, -0.886707,
		41.267792, 29.900846, 34.430359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.824383, 29.880505, 35.135738>,  <41.138996, 29.603947, 35.051052>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.824383, 29.880505, 35.135738> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.674942, 30.076742, 34.820843>,  <41.585278, 30.194485, 34.631905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.674942, 30.076742, 34.820843>,  <41.824383, 29.880505, 35.135738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.674942, 30.076742, 34.820843> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467365, 0.832650, 0.297094,
		0.801244, -0.256932, -0.540364,
		-0.373601, 0.490592, -0.787237,
		41.562862, 30.223919, 34.584671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.302322, 30.402784, 35.002956>,  <41.824383, 29.880505, 35.135738>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.302322, 30.402784, 35.002956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.993111, 30.558716, 34.802776>,  <41.807583, 30.652275, 34.682667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.993111, 30.558716, 34.802776>,  <42.302322, 30.402784, 35.002956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.993111, 30.558716, 34.802776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347757, 0.920215, 0.179637,
		0.530553, -0.035172, -0.846921,
		-0.773032, 0.389830, -0.500454,
		41.761200, 30.675665, 34.652641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.551250, 30.865068, 34.360111>,  <42.302322, 30.402784, 35.002956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.551250, 30.865068, 34.360111> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.182129, 30.978561, 34.464363>,  <41.960655, 31.046658, 34.526917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.182129, 30.978561, 34.464363>,  <42.551250, 30.865068, 34.360111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.182129, 30.978561, 34.464363> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324756, 0.936823, 0.129988,
		-0.207284, 0.204595, -0.956648,
		-0.922804, 0.283733, 0.260631,
		41.905289, 31.063681, 34.542553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.453144, 31.414753, 33.981297>,  <42.551250, 30.865068, 34.360111>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.453144, 31.414753, 33.981297> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.146572, 31.457083, 34.234718>,  <41.962631, 31.482481, 34.386772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.146572, 31.457083, 34.234718>,  <42.453144, 31.414753, 33.981297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.146572, 31.457083, 34.234718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287822, 0.938353, 0.191449,
		-0.574238, 0.329083, -0.749636,
		-0.766426, 0.105825, 0.633556,
		41.916645, 31.488831, 34.424786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.040871, 31.991102, 33.676640>,  <42.453144, 31.414753, 33.981297>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.040871, 31.991102, 33.676640> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.969345, 31.954573, 34.068493>,  <41.926430, 31.932655, 34.303604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.969345, 31.954573, 34.068493>,  <42.040871, 31.991102, 33.676640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.969345, 31.954573, 34.068493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205794, 0.970187, 0.128007,
		-0.962119, 0.224493, -0.154693,
		-0.178818, -0.091323, 0.979635,
		41.915699, 31.927176, 34.362385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.551373, 32.499355, 33.898239>,  <42.040871, 31.991102, 33.676640>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.551373, 32.499355, 33.898239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.709427, 32.383305, 34.246883>,  <41.804260, 32.313675, 34.456070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.709427, 32.383305, 34.246883>,  <41.551373, 32.499355, 33.898239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.709427, 32.383305, 34.246883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250024, 0.946964, 0.201860,
		-0.883944, 0.138161, 0.446714,
		0.395133, -0.290122, 0.871607,
		41.827969, 32.296268, 34.508366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.363750, 32.986210, 34.377777>,  <41.551373, 32.499355, 33.898239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.363750, 32.986210, 34.377777> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.695919, 32.836586, 34.542931>,  <41.895222, 32.746811, 34.642021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.695919, 32.836586, 34.542931>,  <41.363750, 32.986210, 34.377777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.695919, 32.836586, 34.542931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335714, 0.927402, 0.164989,
		-0.444625, 0.001600, 0.895715,
		0.830424, -0.374062, 0.412884,
		41.945045, 32.724369, 34.666794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.414639, 33.422752, 34.887783>,  <41.363750, 32.986210, 34.377777>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.414639, 33.422752, 34.887783> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.766701, 33.236958, 34.848648>,  <41.977940, 33.125481, 34.825165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.766701, 33.236958, 34.848648>,  <41.414639, 33.422752, 34.887783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.766701, 33.236958, 34.848648> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474505, 0.855391, 0.207729,
		-0.012796, -0.229260, 0.973281,
		0.880160, -0.464485, -0.097840,
		42.030750, 33.097610, 34.819298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.829838, 33.600273, 35.619789>,  <41.414639, 33.422752, 34.887783>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.829838, 33.600273, 35.619789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.110271, 33.496483, 35.354111>,  <42.278530, 33.434208, 35.194702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.110271, 33.496483, 35.354111>,  <41.829838, 33.600273, 35.619789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.110271, 33.496483, 35.354111> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532218, 0.810317, 0.245217,
		0.474582, -0.525414, 0.706195,
		0.701082, -0.259474, -0.664196,
		42.320595, 33.418640, 35.154850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.539314, 33.585060, 35.968067>,  <41.829838, 33.600273, 35.619789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.539314, 33.585060, 35.968067> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.582829, 33.632847, 35.573322>,  <42.608936, 33.661518, 35.336475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.582829, 33.632847, 35.573322>,  <42.539314, 33.585060, 35.968067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.582829, 33.632847, 35.573322> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536245, 0.828864, 0.159455,
		0.837023, -0.546545, 0.026102,
		0.108784, 0.119470, -0.986860,
		42.615463, 33.668690, 35.277264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.332909, 33.710747, 35.852303>,  <42.539314, 33.585060, 35.968067>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.332909, 33.710747, 35.852303> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.119518, 33.828266, 35.535042>,  <42.991482, 33.898777, 35.344685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.119518, 33.828266, 35.535042>,  <43.332909, 33.710747, 35.852303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.119518, 33.828266, 35.535042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536195, 0.842700, -0.048499,
		0.654137, -0.451155, -0.607094,
		-0.533478, 0.293796, -0.793149,
		42.959476, 33.916405, 35.297096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.855675, 34.111629, 35.382076>,  <43.332909, 33.710747, 35.852303>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.855675, 34.111629, 35.382076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.482788, 34.232193, 35.301952>,  <43.259056, 34.304531, 35.253880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.482788, 34.232193, 35.301952>,  <43.855675, 34.111629, 35.382076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.482788, 34.232193, 35.301952> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330182, 0.934948, -0.129813,
		0.148151, -0.187152, -0.971095,
		-0.932218, 0.301406, -0.200308,
		43.203121, 34.322617, 35.241859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.163887, 34.602497, 34.851963>,  <43.855675, 34.111629, 35.382076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.163887, 34.602497, 34.851963> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.771103, 34.650902, 34.793858>,  <43.535431, 34.679943, 34.758995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.771103, 34.650902, 34.793858>,  <44.163887, 34.602497, 34.851963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.771103, 34.650902, 34.793858> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186836, -0.503503, 0.843550,
		0.028939, 0.855477, 0.517032,
		-0.981965, 0.121011, -0.145263,
		43.476513, 34.687206, 34.750278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.934940, 34.213219, 34.734039>,  <44.163887, 34.602497, 34.851963>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.934940, 34.213219, 34.734039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.184261, 33.902149, 34.701279>,  <45.333855, 33.715508, 34.681622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.184261, 33.902149, 34.701279>,  <44.934940, 34.213219, 34.734039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.184261, 33.902149, 34.701279> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392270, -0.220347, -0.893069,
		0.676471, 0.588785, -0.442402,
		0.623307, -0.777676, -0.081904,
		45.371254, 33.668846, 34.676708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.319561, 34.314209, 34.021591>,  <44.934940, 34.213219, 34.734039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.319561, 34.314209, 34.021591> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.343975, 33.929302, 34.127659>,  <45.358624, 33.698357, 34.191299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.343975, 33.929302, 34.127659>,  <45.319561, 34.314209, 34.021591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.343975, 33.929302, 34.127659> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348319, -0.269496, -0.897801,
		0.935387, -0.037567, -0.351624,
		0.061034, -0.962269, 0.265169,
		45.362286, 33.640621, 34.207211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.474667, 33.953083, 33.459881>,  <45.319561, 34.314209, 34.021591>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.474667, 33.953083, 33.459881> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.375095, 33.635803, 33.682186>,  <45.315353, 33.445435, 33.815567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.375095, 33.635803, 33.682186>,  <45.474667, 33.953083, 33.459881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.375095, 33.635803, 33.682186> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261985, -0.497284, -0.827087,
		0.932416, -0.351484, -0.084019,
		-0.248927, -0.793201, 0.555759,
		45.300419, 33.397842, 33.848915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.916691, 33.352757, 33.287128>,  <45.474667, 33.953083, 33.459881>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.916691, 33.352757, 33.287128> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.589748, 33.205532, 33.464424>,  <45.393585, 33.117195, 33.570801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.589748, 33.205532, 33.464424>,  <45.916691, 33.352757, 33.287128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.589748, 33.205532, 33.464424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135998, -0.624333, -0.769229,
		0.559855, -0.689012, 0.460244,
		-0.817353, -0.368065, 0.443240,
		45.344543, 33.095112, 33.597397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.952621, 32.631454, 33.154976>,  <45.916691, 33.352757, 33.287128>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.952621, 32.631454, 33.154976> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.566956, 32.638527, 33.260857>,  <45.335556, 32.642769, 33.324387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.566956, 32.638527, 33.260857>,  <45.952621, 32.631454, 33.154976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.566956, 32.638527, 33.260857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218816, -0.617163, -0.755797,
		0.150001, -0.786637, 0.598918,
		-0.964168, 0.017682, 0.264704,
		45.277706, 32.643833, 33.340267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.766521, 31.974560, 33.156231>,  <45.952621, 32.631454, 33.154976>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.766521, 31.974560, 33.156231> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.424934, 32.176670, 33.106537>,  <45.219982, 32.297935, 33.076721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.424934, 32.176670, 33.106537>,  <45.766521, 31.974560, 33.156231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.424934, 32.176670, 33.106537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310894, -0.686952, -0.656843,
		-0.417232, -0.522298, 0.743722,
		-0.853969, 0.505274, -0.124239,
		45.168743, 32.328251, 33.069263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.239323, 31.533546, 33.255730>,  <45.766521, 31.974560, 33.156231>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.239323, 31.533546, 33.255730> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.092487, 31.833273, 33.035271>,  <45.004387, 32.013111, 32.902996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.092487, 31.833273, 33.035271>,  <45.239323, 31.533546, 33.255730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.092487, 31.833273, 33.035271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496545, -0.658889, -0.565074,
		-0.786568, 0.066239, 0.613941,
		-0.367089, 0.749318, -0.551151,
		44.982361, 32.058067, 32.869926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.602856, 31.303322, 33.173370>,  <45.239323, 31.533546, 33.255730>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.602856, 31.303322, 33.173370> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.607746, 31.584085, 32.888508>,  <44.610680, 31.752544, 32.717590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.607746, 31.584085, 32.888508>,  <44.602856, 31.303322, 33.173370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.607746, 31.584085, 32.888508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251479, -0.687163, -0.681591,
		-0.967786, 0.187428, 0.168112,
		0.012229, 0.701910, -0.712160,
		44.611416, 31.794659, 32.674858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.073456, 31.096050, 32.678432>,  <44.602856, 31.303322, 33.173370>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.073456, 31.096050, 32.678432> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.328621, 31.328182, 32.475937>,  <44.481720, 31.467463, 32.354439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.328621, 31.328182, 32.475937>,  <44.073456, 31.096050, 32.678432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.328621, 31.328182, 32.475937> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078678, -0.604809, -0.792475,
		-0.766075, 0.545364, -0.340158,
		0.637918, 0.580332, -0.506237,
		44.519997, 31.502281, 32.324066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.746418, 31.214540, 32.083965>,  <44.073456, 31.096050, 32.678432>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.746418, 31.214540, 32.083965> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.135487, 31.272793, 32.011635>,  <44.368927, 31.307745, 31.968237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.135487, 31.272793, 32.011635>,  <43.746418, 31.214540, 32.083965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.135487, 31.272793, 32.011635> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064631, -0.578204, -0.813328,
		-0.223001, 0.802790, -0.552992,
		0.972673, 0.145633, -0.180825,
		44.427288, 31.316483, 31.957388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.804268, 31.314379, 31.351067>,  <43.746418, 31.214540, 32.083965>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.804268, 31.314379, 31.351067> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.164360, 31.201729, 31.483896>,  <44.380417, 31.134140, 31.563595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.164360, 31.201729, 31.483896>,  <43.804268, 31.314379, 31.351067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.164360, 31.201729, 31.483896> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133742, -0.546949, -0.826414,
		0.414366, 0.788375, -0.454715,
		0.900230, -0.281623, 0.332076,
		44.434429, 31.117243, 31.583519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.319530, 31.298435, 30.738728>,  <43.804268, 31.314379, 31.351067>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.319530, 31.298435, 30.738728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.527943, 31.078514, 30.999874>,  <44.652992, 30.946562, 31.156563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.527943, 31.078514, 30.999874>,  <44.319530, 31.298435, 30.738728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.527943, 31.078514, 30.999874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078622, -0.730732, -0.678122,
		0.849907, 0.404655, -0.337510,
		0.521035, -0.549805, 0.652868,
		44.684254, 30.913572, 31.195734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.727116, 31.036755, 30.323761>,  <44.319530, 31.298435, 30.738728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.727116, 31.036755, 30.323761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.761845, 30.818909, 30.657434>,  <44.782681, 30.688202, 30.857637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.761845, 30.818909, 30.657434>,  <44.727116, 31.036755, 30.323761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.761845, 30.818909, 30.657434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185268, -0.813910, -0.550661,
		0.978845, 0.202356, 0.030235,
		0.086821, -0.544613, 0.834182,
		44.787891, 30.655525, 30.907688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.217537, 30.602394, 30.177252>,  <44.727116, 31.036755, 30.323761>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.217537, 30.602394, 30.177252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.011887, 30.423275, 30.469868>,  <44.888496, 30.315804, 30.645437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.011887, 30.423275, 30.469868>,  <45.217537, 30.602394, 30.177252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.011887, 30.423275, 30.469868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010560, -0.856135, -0.516644,
		0.857648, -0.257896, 0.444892,
		-0.514128, -0.447797, 0.731539,
		44.857647, 30.288937, 30.689329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.481449, 29.849442, 30.150488>,  <45.217537, 30.602394, 30.177252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.481449, 29.849442, 30.150488> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.134983, 29.856647, 30.350264>,  <44.927105, 29.860971, 30.470129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.134983, 29.856647, 30.350264>,  <45.481449, 29.849442, 30.150488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.134983, 29.856647, 30.350264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267440, -0.860924, -0.432765,
		0.422183, -0.508414, 0.750518,
		-0.866163, 0.018012, 0.499438,
		44.875134, 29.862051, 30.500095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.248024, 29.164343, 30.284170>,  <45.481449, 29.849442, 30.150488>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.248024, 29.164343, 30.284170> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.908855, 29.365040, 30.352621>,  <44.705353, 29.485458, 30.393692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.908855, 29.365040, 30.352621>,  <45.248024, 29.164343, 30.284170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.908855, 29.365040, 30.352621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519474, -0.722028, -0.456970,
		-0.105722, -0.476371, 0.872865,
		-0.847920, 0.501743, 0.171128,
		44.654480, 29.515562, 30.403959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.685112, 28.731905, 30.639662>,  <45.248024, 29.164343, 30.284170>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.685112, 28.731905, 30.639662> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.458385, 29.014421, 30.470015>,  <44.322350, 29.183931, 30.368227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.458385, 29.014421, 30.470015>,  <44.685112, 28.731905, 30.639662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.458385, 29.014421, 30.470015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712760, -0.678583, -0.177477,
		-0.413148, 0.201696, 0.888047,
		-0.566817, 0.706289, -0.424115,
		44.288342, 29.226309, 30.342779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.134312, 28.614630, 31.039001>,  <44.685112, 28.731905, 30.639662>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.134312, 28.614630, 31.039001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.030270, 28.802418, 30.701494>,  <43.967846, 28.915091, 30.498989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.030270, 28.802418, 30.701494>,  <44.134312, 28.614630, 31.039001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.030270, 28.802418, 30.701494> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772030, -0.625946, -0.110284,
		-0.579928, 0.622728, 0.525256,
		-0.260105, 0.469470, -0.843767,
		43.952240, 28.943258, 30.448364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.413849, 28.816261, 31.022331>,  <44.134312, 28.614630, 31.039001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.413849, 28.816261, 31.022331> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.507370, 28.815935, 30.633417>,  <43.563480, 28.815741, 30.400068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.507370, 28.815935, 30.633417>,  <43.413849, 28.816261, 31.022331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.507370, 28.815935, 30.633417> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767042, -0.614667, -0.183933,
		-0.597482, 0.788786, -0.144333,
		0.233801, -0.000813, -0.972284,
		43.577511, 28.815691, 30.341732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.831131, 28.776823, 30.696812>,  <43.413849, 28.816261, 31.022331>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.831131, 28.776823, 30.696812> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.080513, 28.658024, 30.407511>,  <43.230141, 28.586744, 30.233931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.080513, 28.658024, 30.407511>,  <42.831131, 28.776823, 30.696812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.080513, 28.658024, 30.407511> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698419, -0.627360, -0.344428,
		-0.351446, 0.719869, -0.598560,
		0.623456, -0.296997, -0.723253,
		43.267551, 28.568924, 30.190535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.747070, 36.053406, 42.492867> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390602, 35.877888, 42.538956>,  <37.176720, 35.772579, 42.566608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390602, 35.877888, 42.538956>,  <37.747070, 36.053406, 42.492867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.390602, 35.877888, 42.538956> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057052, -0.143568, -0.987995,
		0.450067, -0.887045, 0.102909,
		-0.891171, -0.438792, 0.115223,
		37.123249, 35.746250, 42.573521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805935, 35.382980, 42.120346>,  <37.747070, 36.053406, 42.492867>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.805935, 35.382980, 42.120346> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.417194, 35.455704, 42.180283>,  <37.183949, 35.499336, 42.216244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.417194, 35.455704, 42.180283>,  <37.805935, 35.382980, 42.120346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.417194, 35.455704, 42.180283> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189754, -0.227045, -0.955219,
		-0.139643, -0.956764, 0.255152,
		-0.971850, 0.181806, 0.149845,
		37.125641, 35.510246, 42.225235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.447361, 34.788975, 41.900852>,  <37.805935, 35.382980, 42.120346>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.447361, 34.788975, 41.900852> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195667, 35.098110, 41.867901>,  <37.044651, 35.283592, 41.848129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195667, 35.098110, 41.867901>,  <37.447361, 34.788975, 41.900852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.195667, 35.098110, 41.867901> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174274, -0.243593, -0.954092,
		-0.757424, -0.585991, 0.287963,
		-0.629235, 0.772837, -0.082380,
		37.006897, 35.329960, 41.843185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.099087, 34.655312, 41.230759>,  <37.447361, 34.788975, 41.900852>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.099087, 34.655312, 41.230759> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975555, 35.023346, 41.327152>,  <36.901436, 35.244167, 41.384987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975555, 35.023346, 41.327152>,  <37.099087, 34.655312, 41.230759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975555, 35.023346, 41.327152> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249560, 0.166100, -0.954008,
		-0.917793, -0.354764, 0.178319,
		-0.308829, 0.920083, 0.240980,
		36.882908, 35.299370, 41.399445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297104, 34.720203, 41.059608>,  <37.099087, 34.655312, 41.230759>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297104, 34.720203, 41.059608> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452961, 35.088379, 41.072136>,  <36.546474, 35.309284, 41.079651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452961, 35.088379, 41.072136>,  <36.297104, 34.720203, 41.059608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.452961, 35.088379, 41.072136> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451251, 0.220445, -0.864741,
		-0.802840, 0.322808, 0.501241,
		0.389642, 0.920434, 0.031314,
		36.569855, 35.364510, 41.081532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879704, 35.166401, 40.606323>,  <36.297104, 34.720203, 41.059608>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879704, 35.166401, 40.606323> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182053, 35.422821, 40.659554>,  <36.363461, 35.576675, 40.691490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182053, 35.422821, 40.659554>,  <35.879704, 35.166401, 40.606323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.182053, 35.422821, 40.659554> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222445, 0.442617, -0.868682,
		-0.615772, 0.627011, 0.477160,
		0.755872, 0.641052, 0.133076,
		36.408813, 35.615135, 40.699478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570553, 35.903023, 40.511971>,  <35.879704, 35.166401, 40.606323>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570553, 35.903023, 40.511971> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961147, 35.889809, 40.426754>,  <36.195503, 35.881882, 40.375622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961147, 35.889809, 40.426754>,  <35.570553, 35.903023, 40.511971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961147, 35.889809, 40.426754> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179818, 0.420336, -0.889372,
		0.118928, 0.906767, 0.404512,
		0.976484, -0.033033, -0.213043,
		36.254093, 35.879898, 40.362843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739910, 36.565643, 40.228741>,  <35.570553, 35.903023, 40.511971>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739910, 36.565643, 40.228741> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052517, 36.341537, 40.118958>,  <36.240082, 36.207073, 40.053089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052517, 36.341537, 40.118958>,  <35.739910, 36.565643, 40.228741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.052517, 36.341537, 40.118958> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046726, 0.491248, -0.869766,
		0.622127, 0.666915, 0.410100,
		0.781520, -0.560267, -0.274457,
		36.286972, 36.173458, 40.036621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.289997, 37.056221, 39.892616>,  <35.739910, 36.565643, 40.228741>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.289997, 37.056221, 39.892616> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322285, 36.677975, 39.766575>,  <36.341656, 36.451027, 39.690952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322285, 36.677975, 39.766575>,  <36.289997, 37.056221, 39.892616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.322285, 36.677975, 39.766575> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002773, 0.315919, -0.948782,
		0.996733, 0.077460, 0.022879,
		0.080720, -0.945619, -0.315102,
		36.346500, 36.394287, 39.672043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621254, 37.092838, 39.271420>,  <36.289997, 37.056221, 39.892616>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621254, 37.092838, 39.271420> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500381, 36.712376, 39.246174>,  <36.427856, 36.484097, 39.231026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500381, 36.712376, 39.246174>,  <36.621254, 37.092838, 39.271420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.500381, 36.712376, 39.246174> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025821, 0.058015, -0.997982,
		0.952899, -0.303205, 0.007028,
		-0.302185, -0.951158, -0.063111,
		36.409725, 36.427029, 39.227242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025360, 36.740955, 38.796017>,  <36.621254, 37.092838, 39.271420>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025360, 36.740955, 38.796017> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692085, 36.523067, 38.834156>,  <36.492123, 36.392334, 38.857040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692085, 36.523067, 38.834156>,  <37.025360, 36.740955, 38.796017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692085, 36.523067, 38.834156> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032484, -0.220328, -0.974885,
		0.552042, -0.809160, 0.201268,
		-0.833183, -0.544715, 0.095346,
		36.442131, 36.359653, 38.862759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102737, 36.205830, 38.288906>,  <37.025360, 36.740955, 38.796017>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.102737, 36.205830, 38.288906> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712704, 36.214939, 38.377178>,  <36.478683, 36.220406, 38.430141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712704, 36.214939, 38.377178>,  <37.102737, 36.205830, 38.288906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.712704, 36.214939, 38.377178> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209910, -0.416718, -0.884468,
		0.071816, -0.908750, 0.411115,
		-0.975080, 0.022778, 0.220683,
		36.420181, 36.221771, 38.443382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648361, 35.691051, 38.513580>,  <37.102737, 36.205830, 38.288906>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.648361, 35.691051, 38.513580> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376598, 35.509872, 38.282669>,  <37.213543, 35.401165, 38.144123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376598, 35.509872, 38.282669>,  <37.648361, 35.691051, 38.513580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376598, 35.509872, 38.282669> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227888, -0.617578, 0.752772,
		-0.697480, 0.642990, 0.316363,
		-0.679403, -0.452948, -0.577278,
		37.172779, 35.373989, 38.109486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119411, 36.286297, 38.515564>,  <37.648361, 35.691051, 38.513580>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119411, 36.286297, 38.515564> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162388, 36.398342, 38.133987>,  <38.188171, 36.465569, 37.905041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162388, 36.398342, 38.133987>,  <38.119411, 36.286297, 38.515564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.162388, 36.398342, 38.133987> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276659, 0.913170, 0.299298,
		0.954943, -0.296072, 0.020615,
		0.107439, 0.280110, -0.953937,
		38.194618, 36.482376, 37.847805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753872, 36.602596, 38.293537>,  <38.119411, 36.286297, 38.515564>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753872, 36.602596, 38.293537> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445717, 36.740379, 38.078930>,  <38.260822, 36.823048, 37.950165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445717, 36.740379, 38.078930>,  <38.753872, 36.602596, 38.293537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445717, 36.740379, 38.078930> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160308, 0.919113, 0.359906,
		0.617090, 0.191261, -0.763295,
		-0.770390, 0.344457, -0.536515,
		38.214600, 36.843716, 37.917976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819511, 35.763676, 38.471497>,  <38.753872, 36.602596, 38.293537>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.819511, 35.763676, 38.471497> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102558, 35.547249, 38.289715>,  <39.272385, 35.417393, 38.180645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102558, 35.547249, 38.289715>,  <38.819511, 35.763676, 38.471497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.102558, 35.547249, 38.289715> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049718, -0.679690, 0.731812,
		-0.704856, -0.495240, -0.507854,
		0.707605, -0.541072, -0.454462,
		39.314842, 35.384930, 38.153378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606110, 35.027496, 38.451275>,  <38.819511, 35.763676, 38.471497>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606110, 35.027496, 38.451275> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.004292, 35.016850, 38.414719>,  <39.243202, 35.010460, 38.392784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.004292, 35.016850, 38.414719>,  <38.606110, 35.027496, 38.451275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.004292, 35.016850, 38.414719> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036939, -0.776860, 0.628588,
		-0.087733, -0.629110, -0.772349,
		0.995459, -0.026618, -0.091394,
		39.302929, 35.008865, 38.387299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653454, 34.387188, 38.437515>,  <38.606110, 35.027496, 38.451275>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653454, 34.387188, 38.437515> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040707, 34.477978, 38.479862>,  <39.273056, 34.532452, 38.505272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040707, 34.477978, 38.479862>,  <38.653454, 34.387188, 38.437515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.040707, 34.477978, 38.479862> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090996, -0.712591, 0.695653,
		0.233338, -0.663848, -0.710534,
		0.968128, 0.226978, 0.105867,
		39.331146, 34.546070, 38.511623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.965355, 33.766430, 38.379997>,  <38.653454, 34.387188, 38.437515>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.965355, 33.766430, 38.379997> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220402, 34.004684, 38.575413>,  <39.373428, 34.147636, 38.692661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220402, 34.004684, 38.575413>,  <38.965355, 33.766430, 38.379997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.220402, 34.004684, 38.575413> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076496, -0.679989, 0.729221,
		0.766549, -0.427590, -0.479134,
		0.637614, 0.595636, 0.488536,
		39.411686, 34.183376, 38.721973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429905, 33.319878, 38.750183>,  <38.965355, 33.766430, 38.379997>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.429905, 33.319878, 38.750183> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496017, 33.666431, 38.938675>,  <39.535686, 33.874363, 39.051769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496017, 33.666431, 38.938675>,  <39.429905, 33.319878, 38.750183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.496017, 33.666431, 38.938675> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051267, -0.484700, 0.873177,
		0.984913, -0.120160, -0.124528,
		0.165280, 0.866388, 0.471227,
		39.545601, 33.926350, 39.080044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033985, 33.287457, 39.262772>,  <39.429905, 33.319878, 38.750183>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.033985, 33.287457, 39.262772> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.794533, 33.577625, 39.398659>,  <39.650860, 33.751724, 39.480190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.794533, 33.577625, 39.398659>,  <40.033985, 33.287457, 39.262772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.794533, 33.577625, 39.398659> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048756, -0.390319, 0.919388,
		0.799541, 0.566936, 0.198288,
		-0.598630, 0.725420, 0.339717,
		39.614944, 33.795250, 39.500572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315666, 33.501434, 39.858131>,  <40.033985, 33.287457, 39.262772>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.315666, 33.501434, 39.858131> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942635, 33.638931, 39.902206>,  <39.718815, 33.721428, 39.928650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942635, 33.638931, 39.902206>,  <40.315666, 33.501434, 39.858131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.942635, 33.638931, 39.902206> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012632, -0.336149, 0.941724,
		0.360747, 0.876840, 0.317827,
		-0.932578, 0.343738, 0.110189,
		39.662861, 33.742054, 39.935265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.328632, 33.935596, 40.461594>,  <40.315666, 33.501434, 39.858131>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.328632, 33.935596, 40.461594> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.934120, 33.881577, 40.423630>,  <39.697411, 33.849163, 40.400852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.934120, 33.881577, 40.423630>,  <40.328632, 33.935596, 40.461594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.934120, 33.881577, 40.423630> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061676, -0.231841, 0.970796,
		-0.153114, 0.963333, 0.220331,
		-0.986282, -0.135054, -0.094913,
		39.638237, 33.841061, 40.395157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.996136, 34.274754, 40.946922>,  <40.328632, 33.935596, 40.461594>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.996136, 34.274754, 40.946922> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729382, 33.989101, 40.861813>,  <39.569328, 33.817711, 40.810745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729382, 33.989101, 40.861813>,  <39.996136, 34.274754, 40.946922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.729382, 33.989101, 40.861813> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016230, -0.271557, 0.962285,
		-0.744982, 0.645189, 0.169508,
		-0.666887, -0.714135, -0.212777,
		39.529316, 33.774860, 40.797981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624523, 34.128529, 41.555031>,  <39.996136, 34.274754, 40.946922>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.624523, 34.128529, 41.555031> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504177, 33.794750, 41.370346>,  <39.431969, 33.594482, 41.259533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504177, 33.794750, 41.370346>,  <39.624523, 34.128529, 41.555031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.504177, 33.794750, 41.370346> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074013, -0.462257, 0.883652,
		-0.950790, 0.300033, 0.077318,
		-0.300865, -0.834445, -0.461716,
		39.413918, 33.544418, 41.231831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947605, 33.888508, 41.908703>,  <39.624523, 34.128529, 41.555031>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947605, 33.888508, 41.908703> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147892, 33.587887, 41.736912>,  <39.268063, 33.407513, 41.633839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147892, 33.587887, 41.736912>,  <38.947605, 33.888508, 41.908703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147892, 33.587887, 41.736912> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016499, -0.504350, 0.863342,
		-0.865455, -0.425202, -0.264935,
		0.500715, -0.751555, -0.429477,
		39.298107, 33.362419, 41.608070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.488190, 33.310745, 41.844627>,  <38.947605, 33.888508, 41.908703>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.488190, 33.310745, 41.844627> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866932, 33.182087, 41.845829>,  <39.094177, 33.104893, 41.846550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866932, 33.182087, 41.845829>,  <38.488190, 33.310745, 41.844627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.866932, 33.182087, 41.845829> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187562, -0.544492, 0.817526,
		-0.261319, -0.774642, -0.575884,
		0.946854, -0.321649, 0.003008,
		39.150990, 33.085590, 41.846733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432201, 32.702545, 42.223640>,  <38.488190, 33.310745, 41.844627>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.432201, 32.702545, 42.223640> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831024, 32.707615, 42.193409>,  <39.070320, 32.710659, 42.175270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831024, 32.707615, 42.193409>,  <38.432201, 32.702545, 42.223640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831024, 32.707615, 42.193409> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073031, -0.455940, 0.887009,
		-0.023211, -0.889920, -0.455525,
		0.997060, 0.012679, -0.075574,
		39.130142, 32.711418, 42.170738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319046, 32.116127, 41.655983>,  <38.432201, 32.702545, 42.223640>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.319046, 32.116127, 41.655983> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971050, 31.952972, 41.545170>,  <37.762253, 31.855082, 41.478680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971050, 31.952972, 41.545170>,  <38.319046, 32.116127, 41.655983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.971050, 31.952972, 41.545170> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001198, 0.560111, -0.828417,
		0.493066, -0.721047, -0.486803,
		-0.869991, -0.407881, -0.277036,
		37.710052, 31.830608, 41.462059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.392048, 31.805639, 40.930954>,  <38.319046, 32.116127, 41.655983>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.392048, 31.805639, 40.930954> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017704, 31.906061, 41.029854>,  <37.793098, 31.966314, 41.089195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017704, 31.906061, 41.029854>,  <38.392048, 31.805639, 40.930954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017704, 31.906061, 41.029854> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126735, 0.414906, -0.900994,
		-0.328784, -0.874542, -0.356478,
		-0.935863, 0.251054, 0.247250,
		37.736946, 31.981377, 41.104031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986649, 31.545198, 40.336460>,  <38.392048, 31.805639, 40.930954>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.986649, 31.545198, 40.336460> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708759, 31.788427, 40.490143>,  <37.542027, 31.934364, 40.582352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708759, 31.788427, 40.490143>,  <37.986649, 31.545198, 40.336460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708759, 31.788427, 40.490143> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309160, 0.229863, -0.922812,
		-0.649451, -0.759877, 0.028301,
		-0.694719, 0.608071, 0.384208,
		37.500343, 31.970848, 40.605404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426746, 31.369371, 39.859867>,  <37.986649, 31.545198, 40.336460>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426746, 31.369371, 39.859867> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362499, 31.724710, 40.031933>,  <37.323952, 31.937914, 40.135174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362499, 31.724710, 40.031933>,  <37.426746, 31.369371, 39.859867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362499, 31.724710, 40.031933> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353260, 0.355214, -0.865466,
		-0.921634, -0.290971, 0.256763,
		-0.160619, 0.888346, 0.430165,
		37.314312, 31.991215, 40.160984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761459, 31.604055, 39.715431>,  <37.426746, 31.369371, 39.859867>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761459, 31.604055, 39.715431> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.933540, 31.959332, 39.779984>,  <37.036789, 32.172497, 39.818714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.933540, 31.959332, 39.779984>,  <36.761459, 31.604055, 39.715431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.933540, 31.959332, 39.779984> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372676, 0.337561, -0.864387,
		-0.822217, 0.311717, 0.476226,
		0.430200, 0.888192, 0.161379,
		37.062599, 32.225788, 39.828396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304939, 32.156826, 39.442162>,  <36.761459, 31.604055, 39.715431>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304939, 32.156826, 39.442162> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650242, 32.357838, 39.461132>,  <36.857422, 32.478443, 39.472515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650242, 32.357838, 39.461132>,  <36.304939, 32.156826, 39.442162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650242, 32.357838, 39.461132> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072327, 0.216135, -0.973681,
		-0.499554, 0.837108, 0.222927,
		0.863258, 0.502530, 0.047426,
		36.909218, 32.508598, 39.475361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151958, 32.754128, 39.167297>,  <36.304939, 32.156826, 39.442162>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.151958, 32.754128, 39.167297> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.550964, 32.744045, 39.140968>,  <36.790367, 32.737995, 39.125172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.550964, 32.744045, 39.140968>,  <36.151958, 32.754128, 39.167297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.550964, 32.744045, 39.140968> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056510, 0.272031, -0.960628,
		0.042122, 0.961958, 0.269930,
		0.997513, -0.025210, -0.065819,
		36.850220, 32.736481, 39.121223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228901, 33.318352, 38.721020>,  <36.151958, 32.754128, 39.167297>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.228901, 33.318352, 38.721020> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575531, 33.118740, 38.722244>,  <36.783508, 32.998974, 38.722980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575531, 33.118740, 38.722244>,  <36.228901, 33.318352, 38.721020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.575531, 33.118740, 38.722244> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125363, 0.211740, -0.969253,
		0.483039, 0.840317, 0.246049,
		0.866578, -0.499032, 0.003066,
		36.835503, 32.969032, 38.723164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686874, 33.695480, 38.279972>,  <36.228901, 33.318352, 38.721020>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686874, 33.695480, 38.279972> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857136, 33.333580, 38.286232>,  <36.959293, 33.116440, 38.289989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857136, 33.333580, 38.286232>,  <36.686874, 33.695480, 38.279972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857136, 33.333580, 38.286232> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136853, 0.047271, -0.989463,
		0.894478, 0.423308, 0.143939,
		0.425652, -0.904752, 0.015649,
		36.984833, 33.062153, 38.290928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314400, 33.686413, 37.797932>,  <36.686874, 33.695480, 38.279972>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314400, 33.686413, 37.797932> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193897, 33.307224, 37.839096>,  <37.121597, 33.079712, 37.863796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193897, 33.307224, 37.839096>,  <37.314400, 33.686413, 37.797932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.193897, 33.307224, 37.839096> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001815, -0.108498, -0.994095,
		0.953541, -0.299292, 0.034406,
		-0.301257, -0.947973, 0.102914,
		37.103519, 33.022831, 37.869972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742596, 33.307850, 37.380455>,  <37.314400, 33.686413, 37.797932>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742596, 33.307850, 37.380455> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416595, 33.080158, 37.423836>,  <37.220997, 32.943542, 37.449863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416595, 33.080158, 37.423836>,  <37.742596, 33.307850, 37.380455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416595, 33.080158, 37.423836> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034406, -0.139292, -0.989654,
		0.578443, -0.810296, 0.093937,
		-0.814997, -0.569226, 0.108452,
		37.172096, 32.909389, 37.456371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855137, 32.687515, 36.987064>,  <37.742596, 33.307850, 37.380455>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.855137, 32.687515, 36.987064> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460682, 32.744205, 37.021572>,  <37.224007, 32.778217, 37.042278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460682, 32.744205, 37.021572>,  <37.855137, 32.687515, 36.987064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460682, 32.744205, 37.021572> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106984, -0.145742, -0.983521,
		-0.126802, -0.979121, 0.158883,
		-0.986142, 0.141711, 0.086270,
		37.164841, 32.786724, 37.047451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.257435, 29.502319, 44.637440> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.873753, 29.611212, 44.667946>,  <37.643543, 29.676548, 44.686249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.873753, 29.611212, 44.667946>,  <38.257435, 29.502319, 44.637440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.873753, 29.611212, 44.667946> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044371, 0.411371, -0.910387,
		-0.279208, -0.869864, -0.406669,
		-0.959205, 0.272232, 0.076262,
		37.585991, 29.692881, 44.690823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927929, 29.266884, 44.059956>,  <38.257435, 29.502319, 44.637440>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.927929, 29.266884, 44.059956> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.684013, 29.556686, 44.188488>,  <37.537666, 29.730568, 44.265606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.684013, 29.556686, 44.188488>,  <37.927929, 29.266884, 44.059956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684013, 29.556686, 44.188488> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168758, 0.277445, -0.945804,
		-0.774391, -0.630965, -0.046917,
		-0.609786, 0.724505, 0.321331,
		37.501076, 29.774038, 44.284889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411137, 29.350985, 43.548279>,  <37.927929, 29.266884, 44.059956>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.411137, 29.350985, 43.548279> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.366848, 29.703831, 43.731411>,  <37.340275, 29.915539, 43.841290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.366848, 29.703831, 43.731411>,  <37.411137, 29.350985, 43.548279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.366848, 29.703831, 43.731411> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284554, 0.413244, -0.865019,
		-0.952244, -0.226056, 0.205254,
		-0.110723, 0.882115, 0.457834,
		37.333630, 29.968466, 43.868763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728428, 29.643110, 43.348293>,  <37.411137, 29.350985, 43.548279>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.728428, 29.643110, 43.348293> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.951359, 29.961447, 43.442974>,  <37.085117, 30.152449, 43.499783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.951359, 29.961447, 43.442974>,  <36.728428, 29.643110, 43.348293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951359, 29.961447, 43.442974> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280594, 0.448835, -0.848419,
		-0.781446, 0.406427, 0.473455,
		0.557323, 0.795842, 0.236700,
		37.118557, 30.200199, 43.513985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399380, 30.216875, 42.944298>,  <36.728428, 29.643110, 43.348293>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399380, 30.216875, 42.944298> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.748768, 30.397547, 43.016991>,  <36.958401, 30.505949, 43.060608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.748768, 30.397547, 43.016991>,  <36.399380, 30.216875, 42.944298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.748768, 30.397547, 43.016991> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137253, 0.586578, -0.798178,
		-0.467122, 0.672244, 0.574356,
		0.873475, 0.451679, 0.181737,
		37.010811, 30.533051, 43.071510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269650, 30.948320, 42.685425>,  <36.399380, 30.216875, 42.944298>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269650, 30.948320, 42.685425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.667362, 30.922241, 42.719250>,  <36.905991, 30.906593, 42.739544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.667362, 30.922241, 42.719250>,  <36.269650, 30.948320, 42.685425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.667362, 30.922241, 42.719250> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106308, 0.678378, -0.726981,
		-0.009965, 0.731814, 0.681431,
		0.994283, -0.065197, 0.084558,
		36.965649, 30.902681, 42.744617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558678, 31.675703, 42.579716>,  <36.269650, 30.948320, 42.685425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.558678, 31.675703, 42.579716> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.888897, 31.457485, 42.521961>,  <37.087029, 31.326555, 42.487309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.888897, 31.457485, 42.521961>,  <36.558678, 31.675703, 42.579716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.888897, 31.457485, 42.521961> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196535, 0.517782, -0.832632,
		0.528999, 0.659002, 0.534674,
		0.825550, -0.545544, -0.144389,
		37.136562, 31.293821, 42.478645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179970, 32.093372, 42.541519>,  <36.558678, 31.675703, 42.579716>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179970, 32.093372, 42.541519> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.278648, 31.764854, 42.335758>,  <37.337856, 31.567743, 42.212303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.278648, 31.764854, 42.335758>,  <37.179970, 32.093372, 42.541519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278648, 31.764854, 42.335758> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244050, 0.566355, -0.787199,
		0.937858, 0.068662, 0.340157,
		0.246701, -0.821296, -0.514404,
		37.352657, 31.518465, 42.181438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852394, 32.265934, 42.193516>,  <37.179970, 32.093372, 42.541519>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.852394, 32.265934, 42.193516> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.682125, 31.965464, 41.991707>,  <37.579964, 31.785181, 41.870621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.682125, 31.965464, 41.991707>,  <37.852394, 32.265934, 42.193516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.682125, 31.965464, 41.991707> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130953, 0.500547, -0.855748,
		0.895351, -0.430337, -0.114700,
		-0.425673, -0.751174, -0.504519,
		37.554424, 31.740110, 41.840351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573257, 31.988270, 42.413464>,  <37.852394, 32.265934, 42.193516>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573257, 31.988270, 42.413464> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.898235, 32.217236, 42.457783>,  <39.093224, 32.354614, 42.484375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.898235, 32.217236, 42.457783>,  <38.573257, 31.988270, 42.413464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.898235, 32.217236, 42.457783> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127053, -0.359290, 0.924537,
		0.569029, -0.737056, -0.364630,
		0.812443, 0.572415, 0.110801,
		39.141968, 32.388962, 42.491024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065536, 31.561874, 42.682274>,  <38.573257, 31.988270, 42.413464>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.065536, 31.561874, 42.682274> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.177898, 31.935591, 42.770084>,  <39.245316, 32.159821, 42.822769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.177898, 31.935591, 42.770084>,  <39.065536, 31.561874, 42.682274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.177898, 31.935591, 42.770084> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303438, -0.303459, 0.903238,
		0.910503, -0.187115, -0.368743,
		0.280908, 0.934292, 0.219522,
		39.262169, 32.215878, 42.835941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.733086, 31.544182, 43.040386>,  <39.065536, 31.561874, 42.682274>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.733086, 31.544182, 43.040386> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.579262, 31.899891, 43.139427>,  <39.486969, 32.113316, 43.198853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.579262, 31.899891, 43.139427>,  <39.733086, 31.544182, 43.040386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.579262, 31.899891, 43.139427> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352127, -0.106630, 0.929859,
		0.853299, 0.444775, -0.272131,
		-0.384561, 0.889272, 0.247604,
		39.463894, 32.166672, 43.213707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.247650, 31.974699, 43.509430>,  <39.733086, 31.544182, 43.040386>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.247650, 31.974699, 43.509430> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.879700, 32.126827, 43.547749>,  <39.658928, 32.218105, 43.570740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.879700, 32.126827, 43.547749>,  <40.247650, 31.974699, 43.509430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.879700, 32.126827, 43.547749> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139925, 0.090076, 0.986056,
		0.366389, 0.920458, -0.136076,
		-0.919880, 0.380321, 0.095792,
		39.603737, 32.240925, 43.576485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.383373, 32.623772, 43.871540>,  <40.247650, 31.974699, 43.509430>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.383373, 32.623772, 43.871540> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.003429, 32.514252, 43.931942>,  <39.775463, 32.448540, 43.968182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.003429, 32.514252, 43.931942>,  <40.383373, 32.623772, 43.871540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.003429, 32.514252, 43.931942> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070941, 0.281625, 0.956899,
		-0.304520, 0.919632, -0.248081,
		-0.949861, -0.273796, 0.151000,
		39.718472, 32.432114, 43.977242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.956963, 33.213371, 44.237537>,  <40.383373, 32.623772, 43.871540>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.956963, 33.213371, 44.237537> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.747635, 32.877922, 44.298004>,  <39.622040, 32.676655, 44.334282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.747635, 32.877922, 44.298004>,  <39.956963, 33.213371, 44.237537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.747635, 32.877922, 44.298004> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054022, 0.144388, 0.988046,
		-0.850422, 0.525230, -0.030257,
		-0.523320, -0.838621, 0.151165,
		39.590637, 32.626335, 44.343353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485313, 33.436188, 44.829605>,  <39.956963, 33.213371, 44.237537>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.485313, 33.436188, 44.829605> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.475403, 33.036327, 44.825806>,  <39.469456, 32.796413, 44.823524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.475403, 33.036327, 44.825806>,  <39.485313, 33.436188, 44.829605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.475403, 33.036327, 44.825806> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179686, -0.004895, 0.983712,
		-0.983412, 0.026079, -0.179502,
		-0.024776, -0.999648, -0.009500,
		39.467972, 32.736431, 44.822956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843937, 33.292969, 45.071659>,  <39.485313, 33.436188, 44.829605>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.843937, 33.292969, 45.071659> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.075012, 32.969193, 45.113762>,  <39.213657, 32.774925, 45.139023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.075012, 32.969193, 45.113762>,  <38.843937, 33.292969, 45.071659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.075012, 32.969193, 45.113762> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230716, -0.038224, 0.972270,
		-0.782972, -0.585955, -0.208832,
		0.577689, -0.809441, 0.105261,
		39.248318, 32.726360, 45.145340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468430, 32.870853, 45.516495>,  <38.843937, 33.292969, 45.071659>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468430, 32.870853, 45.516495> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.841702, 32.727726, 45.530041>,  <39.065662, 32.641850, 45.538170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.841702, 32.727726, 45.530041>,  <38.468430, 32.870853, 45.516495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.841702, 32.727726, 45.530041> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028969, 0.019040, 0.999399,
		-0.358248, -0.933597, 0.007403,
		0.933177, -0.357818, 0.033866,
		39.121655, 32.620380, 45.540199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.480015, 32.464073, 46.146606>,  <38.468430, 32.870853, 45.516495>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.480015, 32.464073, 46.146606> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.872177, 32.496792, 46.074932>,  <39.107475, 32.516422, 46.031929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.872177, 32.496792, 46.074932>,  <38.480015, 32.464073, 46.146606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.872177, 32.496792, 46.074932> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154848, 0.242164, 0.957799,
		0.121733, -0.966782, 0.224754,
		0.980409, 0.081793, -0.179184,
		39.166302, 32.521328, 46.021175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853985, 32.024174, 46.622482>,  <38.480015, 32.464073, 46.146606>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853985, 32.024174, 46.622482> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.118420, 32.299206, 46.502354>,  <39.277081, 32.464226, 46.430275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.118420, 32.299206, 46.502354>,  <38.853985, 32.024174, 46.622482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118420, 32.299206, 46.502354> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189049, 0.234713, 0.953504,
		0.726099, -0.687129, 0.025180,
		0.661090, 0.687578, -0.300326,
		39.316746, 32.505478, 46.412254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546814, 31.848932, 47.075108>,  <38.853985, 32.024174, 46.622482>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.546814, 31.848932, 47.075108> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.532452, 32.232643, 46.963039>,  <39.523834, 32.462872, 46.895798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.532452, 32.232643, 46.963039>,  <39.546814, 31.848932, 47.075108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.532452, 32.232643, 46.963039> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291836, 0.278197, 0.915117,
		0.955794, -0.048908, -0.289940,
		-0.035904, 0.959278, -0.280172,
		39.521679, 32.520428, 46.878986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.122192, 32.186958, 47.397884>,  <39.546814, 31.848932, 47.075108>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.122192, 32.186958, 47.397884> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.910805, 32.508808, 47.289593>,  <39.783974, 32.701920, 47.224617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.910805, 32.508808, 47.289593>,  <40.122192, 32.186958, 47.397884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.910805, 32.508808, 47.289593> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256250, 0.455208, 0.852714,
		0.809356, 0.381259, -0.446750,
		-0.528469, 0.804629, -0.270728,
		39.752266, 32.750198, 47.208374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.557709, 32.748070, 47.492931>,  <40.122192, 32.186958, 47.397884>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.557709, 32.748070, 47.492931> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.184399, 32.891602, 47.499237>,  <39.960415, 32.977718, 47.503021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.184399, 32.891602, 47.499237>,  <40.557709, 32.748070, 47.492931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.184399, 32.891602, 47.499237> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140101, 0.323264, 0.935880,
		0.330720, 0.875640, -0.351965,
		-0.933272, 0.358825, 0.015768,
		39.904419, 32.999249, 47.503967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.204157, 32.381542, 47.448303> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.602928, 32.409191, 47.433586>,  <31.842192, 32.425781, 47.424755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.602928, 32.409191, 47.433586>,  <31.204157, 32.381542, 47.448303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.602928, 32.409191, 47.433586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049357, 0.189974, -0.980548,
		-0.060785, 0.979353, 0.192802,
		0.996930, 0.069119, -0.036790,
		31.902008, 32.429928, 47.422550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.341068, 33.144386, 47.322968>,  <31.204157, 32.381542, 47.448303>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.341068, 33.144386, 47.322968> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.647398, 32.917664, 47.201485>,  <31.831196, 32.781628, 47.128593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.647398, 32.917664, 47.201485>,  <31.341068, 33.144386, 47.322968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.647398, 32.917664, 47.201485> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133344, 0.322053, -0.937284,
		0.629073, 0.758292, 0.171055,
		0.765824, -0.566811, -0.303708,
		31.877146, 32.747620, 47.110371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.624142, 33.576546, 46.951962>,  <31.341068, 33.144386, 47.322968>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.624142, 33.576546, 46.951962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.781544, 33.230309, 46.828094>,  <31.875986, 33.022564, 46.753773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.781544, 33.230309, 46.828094>,  <31.624142, 33.576546, 46.951962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.781544, 33.230309, 46.828094> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083187, 0.368992, -0.925703,
		0.915550, 0.338510, 0.217207,
		0.393507, -0.865596, -0.309671,
		31.899595, 32.970631, 46.735191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.163532, 33.823761, 46.661900>,  <31.624142, 33.576546, 46.951962>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.163532, 33.823761, 46.661900> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.106365, 33.456295, 46.514587>,  <32.072067, 33.235817, 46.426201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.106365, 33.456295, 46.514587>,  <32.163532, 33.823761, 46.661900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.106365, 33.456295, 46.514587> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040552, 0.377221, -0.925235,
		0.988904, -0.117296, -0.091164,
		-0.142915, -0.918666, -0.368278,
		32.063492, 33.180695, 46.404102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.608765, 33.709217, 46.160271>,  <32.163532, 33.823761, 46.661900>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.608765, 33.709217, 46.160271> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.371162, 33.405979, 46.052601>,  <32.228603, 33.224037, 45.987999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.371162, 33.405979, 46.052601>,  <32.608765, 33.709217, 46.160271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.371162, 33.405979, 46.052601> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248201, 0.145577, -0.957707,
		0.765216, -0.635692, 0.101686,
		-0.594003, -0.758092, -0.269177,
		32.192963, 33.178551, 45.971848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949112, 33.328243, 45.611347>,  <32.608765, 33.709217, 46.160271>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.949112, 33.328243, 45.611347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.561325, 33.240093, 45.568314>,  <32.328655, 33.187202, 45.542496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.561325, 33.240093, 45.568314>,  <32.949112, 33.328243, 45.611347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.561325, 33.240093, 45.568314> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112166, -0.008364, -0.993654,
		0.218082, -0.975378, 0.032828,
		-0.969463, -0.220381, -0.107581,
		32.270485, 33.173981, 45.536041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049210, 32.913540, 45.041142>,  <32.949112, 33.328243, 45.611347>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049210, 32.913540, 45.041142> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.664112, 33.009289, 45.091454>,  <32.433052, 33.066738, 45.121643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.664112, 33.009289, 45.091454>,  <33.049210, 32.913540, 45.041142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664112, 33.009289, 45.091454> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097270, 0.127463, -0.987062,
		-0.252309, -0.962525, -0.099431,
		-0.962746, 0.239373, 0.125785,
		32.375290, 33.081100, 45.129189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706627, 32.504429, 44.528610>,  <33.049210, 32.913540, 45.041142>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.706627, 32.504429, 44.528610> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.491116, 32.830647, 44.613094>,  <32.361809, 33.026375, 44.663784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.491116, 32.830647, 44.613094>,  <32.706627, 32.504429, 44.528610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.491116, 32.830647, 44.613094> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111995, 0.179153, -0.977426,
		-0.834969, -0.550272, -0.005188,
		-0.538780, 0.815539, 0.211215,
		32.329483, 33.075310, 44.676460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.252178, 32.596500, 43.950947>,  <32.706627, 32.504429, 44.528610>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.252178, 32.596500, 43.950947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.222321, 32.947712, 44.140049>,  <32.204407, 33.158440, 44.253510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.222321, 32.947712, 44.140049>,  <32.252178, 32.596500, 43.950947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.222321, 32.947712, 44.140049> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258114, 0.440908, -0.859638,
		-0.963227, -0.186190, 0.193721,
		-0.074643, 0.878028, 0.472752,
		32.199928, 33.211121, 44.281876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.644100, 32.848690, 43.667114>,  <32.252178, 32.596500, 43.950947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.644100, 32.848690, 43.667114> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.842627, 33.159924, 43.821129>,  <31.961742, 33.346664, 43.913536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.842627, 33.159924, 43.821129>,  <31.644100, 32.848690, 43.667114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.842627, 33.159924, 43.821129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196278, 0.532602, -0.823292,
		-0.845663, 0.333038, 0.417060,
		0.496315, 0.778087, 0.385034,
		31.991522, 33.393349, 43.936638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.254082, 33.475399, 43.445362>,  <31.644100, 32.848690, 43.667114>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.254082, 33.475399, 43.445362> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.623526, 33.595997, 43.540054>,  <31.845192, 33.668358, 43.596870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.623526, 33.595997, 43.540054>,  <31.254082, 33.475399, 43.445362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.623526, 33.595997, 43.540054> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024953, 0.568960, -0.821986,
		-0.382517, 0.765103, 0.517975,
		0.923612, 0.301499, 0.236729,
		31.900610, 33.686447, 43.611073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.248297, 34.279888, 43.386288>,  <31.254082, 33.475399, 43.445362>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.248297, 34.279888, 43.386288> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.626936, 34.152740, 43.364708>,  <31.854120, 34.076454, 43.351761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.626936, 34.152740, 43.364708>,  <31.248297, 34.279888, 43.386288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.626936, 34.152740, 43.364708> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199662, 0.709327, -0.676010,
		0.253148, 0.629140, 0.734914,
		0.946600, -0.317865, -0.053950,
		31.910915, 34.057381, 43.348522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.617897, 34.916687, 43.337208>,  <31.248297, 34.279888, 43.386288>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.617897, 34.916687, 43.337208> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.884521, 34.647804, 43.208317>,  <32.044495, 34.486473, 43.130981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.884521, 34.647804, 43.208317>,  <31.617897, 34.916687, 43.337208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.884521, 34.647804, 43.208317> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293887, 0.634215, -0.715124,
		0.685076, 0.381974, 0.620296,
		0.666560, -0.672211, -0.322228,
		32.084488, 34.446140, 43.111649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.254837, 35.228447, 43.278255>,  <31.617897, 34.916687, 43.337208>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.254837, 35.228447, 43.278255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.276562, 34.902252, 43.047768>,  <32.289597, 34.706535, 42.909473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.276562, 34.902252, 43.047768>,  <32.254837, 35.228447, 43.278255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.276562, 34.902252, 43.047768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249732, 0.569826, -0.782899,
		0.966790, -0.101377, 0.234605,
		0.054316, -0.815488, -0.576220,
		32.292858, 34.657604, 42.874901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.866898, 35.708378, 43.165733>,  <32.254837, 35.228447, 43.278255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.866898, 35.708378, 43.165733> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.035877, 36.066662, 43.110245>,  <33.137264, 36.281631, 43.076950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.035877, 36.066662, 43.110245>,  <32.866898, 35.708378, 43.165733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.035877, 36.066662, 43.110245> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233855, 0.040155, 0.971442,
		0.875700, -0.442824, -0.192503,
		0.422448, 0.895709, -0.138720,
		33.162613, 36.335373, 43.068630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.533047, 35.711327, 43.431087>,  <32.866898, 35.708378, 43.165733>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.533047, 35.711327, 43.431087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.422489, 36.095345, 43.448589>,  <33.356155, 36.325756, 43.459091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.422489, 36.095345, 43.448589>,  <33.533047, 35.711327, 43.431087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.422489, 36.095345, 43.448589> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324794, 0.050466, 0.944438,
		0.904497, 0.275250, -0.325766,
		-0.276396, 0.960047, 0.043753,
		33.339569, 36.383358, 43.461716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034100, 35.915146, 43.818615>,  <33.533047, 35.711327, 43.431087>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.034100, 35.915146, 43.818615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.762318, 36.207584, 43.843403>,  <33.599251, 36.383049, 43.858276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.762318, 36.207584, 43.843403>,  <34.034100, 35.915146, 43.818615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762318, 36.207584, 43.843403> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181574, 0.085715, 0.979635,
		0.710899, 0.676866, -0.190988,
		-0.679451, 0.731099, 0.061967,
		33.558483, 36.426914, 43.861992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470005, 36.566582, 44.144436>,  <34.034100, 35.915146, 43.818615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470005, 36.566582, 44.144436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.070915, 36.549019, 44.164875>,  <33.831459, 36.538479, 44.177139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.070915, 36.549019, 44.164875>,  <34.470005, 36.566582, 44.144436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.070915, 36.549019, 44.164875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055226, -0.098502, 0.993603,
		-0.038594, 0.994168, 0.100703,
		-0.997728, -0.043909, 0.051102,
		33.771599, 36.535847, 44.180206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.211033, 36.970322, 44.689404>,  <34.470005, 36.566582, 44.144436>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.211033, 36.970322, 44.689404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.867744, 36.769573, 44.646355>,  <33.661770, 36.649124, 44.620525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.867744, 36.769573, 44.646355>,  <34.211033, 36.970322, 44.689404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867744, 36.769573, 44.646355> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138247, 0.024097, 0.990105,
		-0.494311, 0.864607, -0.090062,
		-0.858222, -0.501871, -0.107618,
		33.610279, 36.619011, 44.614071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687305, 37.344418, 44.999916>,  <34.211033, 36.970322, 44.689404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.687305, 37.344418, 44.999916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.539875, 36.973202, 44.978390>,  <33.451416, 36.750473, 44.965473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.539875, 36.973202, 44.978390>,  <33.687305, 37.344418, 44.999916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539875, 36.973202, 44.978390> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007568, -0.054899, 0.998463,
		-0.929568, 0.368414, 0.013211,
		-0.368574, -0.928039, -0.053820,
		33.429302, 36.694790, 44.962242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.352558, 37.321835, 45.676086>,  <33.687305, 37.344418, 44.999916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.352558, 37.321835, 45.676086> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.355564, 36.939781, 45.557652>,  <33.357368, 36.710548, 45.486591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.355564, 36.939781, 45.557652>,  <33.352558, 37.321835, 45.676086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.355564, 36.939781, 45.557652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009103, -0.296145, 0.955100,
		-0.999930, -0.004481, -0.010919,
		0.007513, -0.955133, -0.296083,
		33.357819, 36.653240, 45.468826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.789062, 36.922562, 45.957672>,  <33.352558, 37.321835, 45.676086>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.789062, 36.922562, 45.957672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.060265, 36.643017, 45.866543>,  <33.222988, 36.475292, 45.811867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.060265, 36.643017, 45.866543>,  <32.789062, 36.922562, 45.957672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060265, 36.643017, 45.866543> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034621, -0.339956, 0.939804,
		-0.734238, -0.629308, -0.254688,
		0.678009, -0.698858, -0.227821,
		33.263668, 36.433361, 45.798195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.585575, 36.309841, 46.373138>,  <32.789062, 36.922562, 45.957672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.585575, 36.309841, 46.373138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.968010, 36.228626, 46.288597>,  <33.197472, 36.179897, 46.237873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.968010, 36.228626, 46.288597>,  <32.585575, 36.309841, 46.373138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.968010, 36.228626, 46.288597> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110656, -0.417696, 0.901823,
		-0.271388, -0.885610, -0.376887,
		0.956088, -0.203040, -0.211356,
		33.254837, 36.167713, 46.225189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.724514, 35.574963, 46.518200>,  <32.585575, 36.309841, 46.373138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.724514, 35.574963, 46.518200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.080723, 35.756878, 46.513397>,  <33.294449, 35.866028, 46.510513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.080723, 35.756878, 46.513397>,  <32.724514, 35.574963, 46.518200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.080723, 35.756878, 46.513397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235949, -0.439119, 0.866892,
		0.388980, -0.774817, -0.498351,
		0.890518, 0.454790, -0.012009,
		33.347878, 35.893314, 46.509796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.342663, 35.119896, 46.538147>,  <32.724514, 35.574963, 46.518200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.342663, 35.119896, 46.538147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.481941, 35.465118, 46.684517>,  <33.565506, 35.672253, 46.772339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.481941, 35.465118, 46.684517>,  <33.342663, 35.119896, 46.538147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481941, 35.465118, 46.684517> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303233, -0.473058, 0.827204,
		0.887024, -0.177066, -0.426421,
		0.348191, 0.863055, 0.365922,
		33.586399, 35.724033, 46.794292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936260, 34.914436, 46.742252>,  <33.342663, 35.119896, 46.538147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936260, 34.914436, 46.742252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.850529, 35.256763, 46.930565>,  <33.799088, 35.462162, 47.043552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.850529, 35.256763, 46.930565>,  <33.936260, 34.914436, 46.742252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850529, 35.256763, 46.930565> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295567, -0.402558, 0.866364,
		0.930968, 0.324836, -0.166672,
		-0.214332, 0.855820, 0.470780,
		33.786228, 35.513508, 47.071800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419010, 34.839607, 47.252625>,  <33.936260, 34.914436, 46.742252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419010, 34.839607, 47.252625> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.160934, 35.112743, 47.389717>,  <34.006088, 35.276623, 47.471973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.160934, 35.112743, 47.389717>,  <34.419010, 34.839607, 47.252625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.160934, 35.112743, 47.389717> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018847, -0.434228, 0.900606,
		0.763790, 0.587521, 0.267289,
		-0.645189, 0.682836, 0.342732,
		33.967377, 35.317593, 47.492538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.735638, 35.079731, 47.907986>,  <34.419010, 34.839607, 47.252625>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.735638, 35.079731, 47.907986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.350323, 35.183647, 47.935093>,  <34.119133, 35.245998, 47.951359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.350323, 35.183647, 47.935093>,  <34.735638, 35.079731, 47.907986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350323, 35.183647, 47.935093> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054280, -0.435638, 0.898484,
		0.262944, 0.861815, 0.433745,
		-0.963283, 0.259795, 0.067769,
		34.061337, 35.261585, 47.955425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170975, 35.657043, 48.330925>,  <34.735638, 35.079731, 47.907986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170975, 35.657043, 48.330925> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.565666, 35.652645, 48.266132>,  <35.802483, 35.650005, 48.227257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.565666, 35.652645, 48.266132>,  <35.170975, 35.657043, 48.330925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565666, 35.652645, 48.266132> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152523, 0.279137, -0.948061,
		0.055638, 0.960189, 0.273757,
		0.986733, -0.010994, -0.161982,
		35.861687, 35.649345, 48.217537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.252460, 36.200356, 47.809704>,  <35.170975, 35.657043, 48.330925>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.252460, 36.200356, 47.809704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.595348, 35.994469, 47.803520>,  <35.801083, 35.870937, 47.799809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.595348, 35.994469, 47.803520>,  <35.252460, 36.200356, 47.809704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.595348, 35.994469, 47.803520> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151226, 0.280330, -0.947917,
		0.492241, 0.810237, 0.318143,
		0.857222, -0.514715, -0.015461,
		35.852516, 35.840054, 47.798882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823483, 36.640102, 47.596382>,  <35.252460, 36.200356, 47.809704>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.823483, 36.640102, 47.596382> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.921719, 36.260258, 47.518478>,  <35.980659, 36.032352, 47.471737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.921719, 36.260258, 47.518478>,  <35.823483, 36.640102, 47.596382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921719, 36.260258, 47.518478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097719, 0.224139, -0.969646,
		0.964435, 0.219107, 0.147842,
		0.245594, -0.949607, -0.194756,
		35.995396, 35.975376, 47.460052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316311, 36.771439, 47.100178>,  <35.823483, 36.640102, 47.596382>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.316311, 36.771439, 47.100178> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.204987, 36.388454, 47.069668>,  <36.138191, 36.158665, 47.051361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.204987, 36.388454, 47.069668>,  <36.316311, 36.771439, 47.100178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.204987, 36.388454, 47.069668> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405979, -0.045289, -0.912760,
		0.870475, -0.284996, 0.401312,
		-0.278308, -0.957458, -0.076279,
		36.121494, 36.101215, 47.046783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.864071, 36.336315, 46.775990>,  <36.316311, 36.771439, 47.100178>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.864071, 36.336315, 46.775990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.559250, 36.085915, 46.709774>,  <36.376358, 35.935677, 46.670044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.559250, 36.085915, 46.709774>,  <36.864071, 36.336315, 46.775990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559250, 36.085915, 46.709774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262532, -0.065007, -0.962731,
		0.591907, -0.777110, 0.213883,
		-0.762052, -0.625999, -0.165538,
		36.330635, 35.898113, 46.660114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096149, 35.872868, 46.386185>,  <36.864071, 36.336315, 46.775990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.096149, 35.872868, 46.386185> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.702114, 35.858234, 46.318939>,  <36.465694, 35.849453, 46.278591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.702114, 35.858234, 46.318939>,  <37.096149, 35.872868, 46.386185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702114, 35.858234, 46.318939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171931, -0.173265, -0.969752,
		0.006351, -0.984196, 0.176971,
		-0.985089, -0.036585, -0.168114,
		36.406586, 35.847260, 46.268505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072884, 35.424282, 45.916054>,  <37.096149, 35.872868, 46.386185>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072884, 35.424282, 45.916054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.712368, 35.595181, 45.887386>,  <36.496059, 35.697720, 45.870186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.712368, 35.595181, 45.887386>,  <37.072884, 35.424282, 45.916054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.712368, 35.595181, 45.887386> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016061, -0.198269, -0.980016,
		-0.432914, -0.882129, 0.185561,
		-0.901292, 0.427244, -0.071666,
		36.441978, 35.723354, 45.865887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587738, 34.988266, 45.478165>,  <37.072884, 35.424282, 45.916054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587738, 34.988266, 45.478165> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.446651, 35.362343, 45.465416>,  <36.362000, 35.586788, 45.457767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.446651, 35.362343, 45.465416>,  <36.587738, 34.988266, 45.478165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446651, 35.362343, 45.465416> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096205, -0.070118, -0.992889,
		-0.930772, -0.347140, 0.114702,
		-0.352714, 0.935188, -0.031867,
		36.340836, 35.642899, 45.455856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.133305, 34.924706, 44.987034>,  <36.587738, 34.988266, 45.478165>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.133305, 34.924706, 44.987034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.220722, 35.313587, 45.020638>,  <36.273170, 35.546917, 45.040798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.220722, 35.313587, 45.020638>,  <36.133305, 34.924706, 44.987034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220722, 35.313587, 45.020638> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057591, 0.098786, -0.993441,
		-0.974127, 0.212269, 0.077579,
		0.218541, 0.972205, 0.084006,
		36.286285, 35.605247, 45.045837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.838051, 35.224659, 44.415771>,  <36.133305, 34.924706, 44.987034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.838051, 35.224659, 44.415771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.101402, 35.500572, 44.536263>,  <36.259415, 35.666119, 44.608559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.101402, 35.500572, 44.536263>,  <35.838051, 35.224659, 44.415771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.101402, 35.500572, 44.536263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199178, 0.226278, -0.953481,
		-0.725856, 0.687749, 0.011587,
		0.658378, 0.689782, 0.301230,
		36.298916, 35.707508, 44.626633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638378, 35.886929, 44.059124>,  <35.838051, 35.224659, 44.415771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638378, 35.886929, 44.059124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.024433, 35.939846, 44.149467>,  <36.256065, 35.971596, 44.203674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.024433, 35.939846, 44.149467>,  <35.638378, 35.886929, 44.059124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024433, 35.939846, 44.149467> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198670, 0.191573, -0.961161,
		-0.170421, 0.972522, 0.158611,
		0.965136, 0.132291, 0.225859,
		36.313972, 35.979534, 44.217224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754021, 36.453613, 43.712212>,  <35.638378, 35.886929, 44.059124>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754021, 36.453613, 43.712212> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.106232, 36.284119, 43.797180>,  <36.317558, 36.182423, 43.848164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.106232, 36.284119, 43.797180>,  <35.754021, 36.453613, 43.712212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.106232, 36.284119, 43.797180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222252, -0.026751, -0.974622,
		0.418662, 0.905392, 0.070621,
		0.880526, -0.423733, 0.212425,
		36.370388, 36.156998, 43.860909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203777, 36.782825, 43.188446>,  <35.754021, 36.453613, 43.712212>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.203777, 36.782825, 43.188446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.383453, 36.452267, 43.324268>,  <36.491261, 36.253933, 43.405762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.383453, 36.452267, 43.324268>,  <36.203777, 36.782825, 43.188446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383453, 36.452267, 43.324268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124192, -0.318616, -0.939713,
		0.884761, 0.464283, -0.040489,
		0.449193, -0.826393, 0.339559,
		36.518211, 36.204350, 43.426136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767242, 36.797691, 42.812504>,  <36.203777, 36.782825, 43.188446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.767242, 36.797691, 42.812504> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.681347, 36.425041, 42.929779>,  <36.629810, 36.201450, 43.000145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.681347, 36.425041, 42.929779>,  <36.767242, 36.797691, 42.812504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681347, 36.425041, 42.929779> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161466, -0.329924, -0.930096,
		0.963233, -0.152385, 0.221272,
		-0.214736, -0.931627, 0.293188,
		36.616924, 36.145554, 43.017735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.517012, 42.033108, 40.848076> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.676794, 42.191788, 40.517487>,  <28.772663, 42.286995, 40.319134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.676794, 42.191788, 40.517487>,  <28.517012, 42.033108, 40.848076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.676794, 42.191788, 40.517487> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715736, -0.428383, -0.551552,
		-0.572849, 0.811860, 0.112811,
		0.399457, 0.396699, -0.826477,
		28.796631, 42.310799, 40.269543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.931208, 42.332455, 40.461838>,  <28.517012, 42.033108, 40.848076>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.931208, 42.332455, 40.461838> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.224358, 42.261425, 40.199127>,  <28.400248, 42.218807, 40.041500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.224358, 42.261425, 40.199127>,  <27.931208, 42.332455, 40.461838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.224358, 42.261425, 40.199127> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641190, -0.503100, -0.579453,
		-0.227527, 0.845788, -0.482571,
		0.732875, -0.177578, -0.656780,
		28.444220, 42.208153, 40.002094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.571466, 42.348324, 39.878857>,  <27.931208, 42.332455, 40.461838>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.571466, 42.348324, 39.878857> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.915863, 42.189285, 39.751980>,  <28.122501, 42.093861, 39.675854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.915863, 42.189285, 39.751980>,  <27.571466, 42.348324, 39.878857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.915863, 42.189285, 39.751980> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508603, -0.668013, -0.543215,
		0.004092, 0.629028, -0.777372,
		0.860992, -0.397597, -0.317192,
		28.174160, 42.070007, 39.656822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.592407, 42.343430, 39.148972>,  <27.571466, 42.348324, 39.878857>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.592407, 42.343430, 39.148972> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.843071, 42.052959, 39.262085>,  <27.993469, 41.878677, 39.329952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.843071, 42.052959, 39.262085>,  <27.592407, 42.343430, 39.148972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.843071, 42.052959, 39.262085> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420872, -0.620771, -0.661446,
		0.655868, 0.295487, -0.694640,
		0.626661, -0.726175, 0.282781,
		28.031069, 41.835106, 39.346920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.703175, 41.867947, 38.557365>,  <27.592407, 42.343430, 39.148972>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.703175, 41.867947, 38.557365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.775518, 41.635193, 38.874531>,  <27.818926, 41.495541, 39.064831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.775518, 41.635193, 38.874531>,  <27.703175, 41.867947, 38.557365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.775518, 41.635193, 38.874531> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406184, -0.778429, -0.478605,
		0.895714, -0.235506, -0.377138,
		0.180861, -0.581880, 0.792909,
		27.829777, 41.460629, 39.112404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.697456, 41.246979, 38.277084>,  <27.703175, 41.867947, 38.557365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.697456, 41.246979, 38.277084> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.716650, 41.131104, 38.659451>,  <27.728167, 41.061581, 38.888870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.716650, 41.131104, 38.659451>,  <27.697456, 41.246979, 38.277084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.716650, 41.131104, 38.659451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225200, -0.935518, -0.272197,
		0.973130, -0.202212, -0.110127,
		0.047984, -0.289684, 0.955919,
		27.731045, 41.044197, 38.946228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.042517, 40.618641, 38.213234>,  <27.697456, 41.246979, 38.277084>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.042517, 40.618641, 38.213234> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.834475, 40.640530, 38.554173>,  <27.709648, 40.653664, 38.758736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.834475, 40.640530, 38.554173>,  <28.042517, 40.618641, 38.213234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.834475, 40.640530, 38.554173> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380845, -0.908103, -0.174090,
		0.764491, -0.415157, 0.493151,
		-0.520106, 0.054723, 0.852347,
		27.678442, 40.656948, 38.809875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.127321, 39.877583, 38.543808>,  <28.042517, 40.618641, 38.213234>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.127321, 39.877583, 38.543808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.808470, 40.055828, 38.706787>,  <27.617159, 40.162777, 38.804573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.808470, 40.055828, 38.706787>,  <28.127321, 39.877583, 38.543808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.808470, 40.055828, 38.706787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491252, -0.870976, -0.008526,
		0.351077, -0.206956, 0.913189,
		-0.797130, 0.445613, 0.407447,
		27.569330, 40.189510, 38.829021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.897148, 39.438042, 39.132397>,  <28.127321, 39.877583, 38.543808>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.897148, 39.438042, 39.132397> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.577459, 39.649349, 39.017727>,  <27.385647, 39.776134, 38.948925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.577459, 39.649349, 39.017727>,  <27.897148, 39.438042, 39.132397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.577459, 39.649349, 39.017727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529518, -0.844520, -0.079983,
		-0.284354, 0.087875, 0.954684,
		-0.799221, 0.528265, -0.286674,
		27.337692, 39.807827, 38.931725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.415253, 39.090687, 39.498367>,  <27.897148, 39.438042, 39.132397>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.415253, 39.090687, 39.498367> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.263443, 39.289955, 39.186523>,  <27.172358, 39.409515, 38.999416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.263443, 39.289955, 39.186523>,  <27.415253, 39.090687, 39.498367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.263443, 39.289955, 39.186523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658898, -0.737077, -0.150233,
		-0.649471, 0.456664, 0.607985,
		-0.379526, 0.498172, -0.779606,
		27.149586, 39.439407, 38.952641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.685781, 38.920017, 39.561672>,  <27.415253, 39.090687, 39.498367>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.685781, 38.920017, 39.561672> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.755039, 39.033348, 39.184368>,  <26.796595, 39.101345, 38.957985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.755039, 39.033348, 39.184368>,  <26.685781, 38.920017, 39.561672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.755039, 39.033348, 39.184368> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668004, -0.669989, -0.323861,
		-0.723735, 0.686179, 0.073258,
		0.173144, 0.283327, -0.943264,
		26.806982, 39.118347, 38.901390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.011103, 38.849716, 39.186390>,  <26.685781, 38.920017, 39.561672>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.011103, 38.849716, 39.186390> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.265461, 38.860504, 38.877869>,  <26.418076, 38.866978, 38.692757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.265461, 38.860504, 38.877869>,  <26.011103, 38.849716, 39.186390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.265461, 38.860504, 38.877869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479926, -0.768841, -0.422557,
		-0.604407, 0.638871, -0.475958,
		0.635896, 0.026972, -0.771303,
		26.456230, 38.868595, 38.646477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.571463, 38.689365, 38.619511>,  <26.011103, 38.849716, 39.186390>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.571463, 38.689365, 38.619511> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.939514, 38.622517, 38.477844>,  <26.160345, 38.582405, 38.392845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.939514, 38.622517, 38.477844>,  <25.571463, 38.689365, 38.619511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.939514, 38.622517, 38.477844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325024, -0.830382, -0.452575,
		-0.218456, 0.531540, -0.818378,
		0.920128, -0.167125, -0.354165,
		26.215553, 38.572380, 38.371593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.416241, 38.299900, 37.977474>,  <25.571463, 38.689365, 38.619511>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.416241, 38.299900, 37.977474> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.811991, 38.248158, 38.004028>,  <26.049440, 38.217113, 38.019962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.811991, 38.248158, 38.004028>,  <25.416241, 38.299900, 37.977474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.811991, 38.248158, 38.004028> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055442, -0.757742, -0.650195,
		0.134413, 0.639605, -0.756861,
		0.989373, -0.129356, 0.066389,
		26.108803, 38.209351, 38.023945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.708868, 38.297855, 37.262451>,  <25.416241, 38.299900, 37.977474>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.708868, 38.297855, 37.262451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.972027, 38.101398, 37.490818>,  <26.129923, 37.983524, 37.627838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.972027, 38.101398, 37.490818>,  <25.708868, 38.297855, 37.262451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.972027, 38.101398, 37.490818> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041814, -0.780739, -0.623456,
		0.751945, 0.386299, -0.534184,
		0.657899, -0.491141, 0.570920,
		26.169395, 37.954056, 37.662094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.179142, 37.990616, 36.796257>,  <25.708868, 38.297855, 37.262451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.179142, 37.990616, 36.796257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.189960, 37.783089, 37.138042>,  <26.196451, 37.658573, 37.343113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.189960, 37.783089, 37.138042>,  <26.179142, 37.990616, 36.796257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.189960, 37.783089, 37.138042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016188, -0.854887, -0.518562,
		0.999503, 0.000195, -0.031522,
		0.027049, -0.518814, 0.854459,
		26.198074, 37.627445, 37.394379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.642885, 37.426235, 36.619904>,  <26.179142, 37.990616, 36.796257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.642885, 37.426235, 36.619904> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.444317, 37.293495, 36.940762>,  <26.325176, 37.213852, 37.133278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.444317, 37.293495, 36.940762>,  <26.642885, 37.426235, 36.619904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.444317, 37.293495, 36.940762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023501, -0.928845, -0.369723,
		0.867763, -0.164688, 0.468898,
		-0.496422, -0.331852, 0.802147,
		26.295391, 37.193939, 37.181404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.053822, 36.793373, 36.900963>,  <26.642885, 37.426235, 36.619904>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.053822, 36.793373, 36.900963> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.676374, 36.757015, 37.028290>,  <26.449907, 36.735199, 37.104687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.676374, 36.757015, 37.028290>,  <27.053822, 36.793373, 36.900963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.676374, 36.757015, 37.028290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042901, -0.919879, -0.389848,
		0.328252, -0.381523, 0.864113,
		-0.943616, -0.090897, 0.318320,
		26.393290, 36.729748, 37.123787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.105976, 36.186108, 37.320774>,  <27.053822, 36.793373, 36.900963>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.105976, 36.186108, 37.320774> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.725838, 36.241405, 37.209251>,  <26.497755, 36.274586, 37.142338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.725838, 36.241405, 37.209251>,  <27.105976, 36.186108, 37.320774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.725838, 36.241405, 37.209251> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078846, -0.973642, -0.214019,
		-0.301042, -0.181409, 0.936197,
		-0.950346, 0.138244, -0.278804,
		26.440735, 36.282879, 37.125610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.751459, 36.267040, 37.761887>,  <27.105976, 36.186108, 37.320774>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.751459, 36.267040, 37.761887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.774250, 36.242455, 37.363293>,  <27.787924, 36.227703, 37.124138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.774250, 36.242455, 37.363293>,  <27.751459, 36.267040, 37.761887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.774250, 36.242455, 37.363293> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561225, 0.827446, -0.018951,
		0.825699, -0.558171, 0.081644,
		0.056978, -0.061468, -0.996481,
		27.791344, 36.224014, 37.064350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.470076, 36.262688, 37.639374>,  <27.751459, 36.267040, 37.761887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.470076, 36.262688, 37.639374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.270859, 36.383701, 37.314308>,  <28.151329, 36.456310, 37.119267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.270859, 36.383701, 37.314308>,  <28.470076, 36.262688, 37.639374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.270859, 36.383701, 37.314308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766453, 0.591916, -0.249370,
		0.405588, -0.747068, -0.526675,
		-0.498044, 0.302531, -0.812667,
		28.121445, 36.474461, 37.070507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.996580, 36.319817, 37.134838>,  <28.470076, 36.262688, 37.639374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.996580, 36.319817, 37.134838> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.704405, 36.551079, 36.989407>,  <28.529099, 36.689838, 36.902145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.704405, 36.551079, 36.989407>,  <28.996580, 36.319817, 37.134838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.704405, 36.551079, 36.989407> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676633, 0.684983, -0.270121,
		0.092874, -0.443317, -0.891540,
		-0.730440, 0.578158, -0.363580,
		28.485273, 36.724525, 36.880333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.361328, 36.674553, 36.610897>,  <28.996580, 36.319817, 37.134838>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.361328, 36.674553, 36.610897> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.031296, 36.895195, 36.659851>,  <28.833277, 37.027580, 36.689224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.031296, 36.895195, 36.659851>,  <29.361328, 36.674553, 36.610897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.031296, 36.895195, 36.659851> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536652, 0.832822, -0.135693,
		-0.176773, -0.046279, -0.983163,
		-0.825079, 0.551604, 0.122384,
		28.783772, 37.060677, 36.696568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.364305, 37.116287, 36.027477>,  <29.361328, 36.674553, 36.610897>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.364305, 37.116287, 36.027477> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.134989, 37.304092, 36.296070>,  <28.997398, 37.416775, 36.457226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.134989, 37.304092, 36.296070>,  <29.364305, 37.116287, 36.027477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.134989, 37.304092, 36.296070> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460843, 0.862388, -0.209548,
		-0.677466, 0.189316, -0.710774,
		-0.573292, 0.469517, 0.671483,
		28.963001, 37.444946, 36.497517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.114775, 37.749344, 35.628784>,  <29.364305, 37.116287, 36.027477>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.114775, 37.749344, 35.628784> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.063848, 37.844658, 36.013908>,  <29.033293, 37.901848, 36.244984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.063848, 37.844658, 36.013908>,  <29.114775, 37.749344, 35.628784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.063848, 37.844658, 36.013908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416497, 0.893828, -0.166138,
		-0.900179, 0.379857, -0.213043,
		-0.127315, 0.238286, 0.962814,
		29.025654, 37.916145, 36.302753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.669830, 38.376770, 35.618332>,  <29.114775, 37.749344, 35.628784>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.669830, 38.376770, 35.618332> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.810215, 38.377556, 35.992886>,  <28.894445, 38.378025, 36.217617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.810215, 38.377556, 35.992886>,  <28.669830, 38.376770, 35.618332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.810215, 38.377556, 35.992886> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097648, 0.994469, -0.038683,
		-0.931284, 0.105013, 0.348829,
		0.350962, 0.001962, 0.936388,
		28.915504, 38.378143, 36.273804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.302437, 38.872417, 36.070587>,  <28.669830, 38.376770, 35.618332>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.302437, 38.872417, 36.070587> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.653553, 38.817894, 36.254284>,  <28.864223, 38.785179, 36.364502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.653553, 38.817894, 36.254284>,  <28.302437, 38.872417, 36.070587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.653553, 38.817894, 36.254284> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125963, 0.990604, 0.053257,
		-0.462183, 0.011098, 0.886715,
		0.877793, -0.136308, 0.459238,
		28.916891, 38.777000, 36.392056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.220701, 39.225052, 36.719292>,  <28.302437, 38.872417, 36.070587>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.220701, 39.225052, 36.719292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.608038, 39.208061, 36.620895>,  <28.840439, 39.197865, 36.561855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.608038, 39.208061, 36.620895>,  <28.220701, 39.225052, 36.719292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.608038, 39.208061, 36.620895> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048672, 0.998631, 0.019139,
		0.244845, -0.030507, 0.969082,
		0.968340, -0.042481, -0.245995,
		28.898540, 39.195316, 36.547096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.580456, 39.761726, 37.100971>,  <28.220701, 39.225052, 36.719292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.580456, 39.761726, 37.100971> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.851391, 39.697334, 36.813831>,  <29.013952, 39.658699, 36.641548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.851391, 39.697334, 36.813831>,  <28.580456, 39.761726, 37.100971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.851391, 39.697334, 36.813831> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284079, 0.957314, 0.053371,
		0.678612, -0.240075, 0.694154,
		0.677337, -0.160976, -0.717845,
		29.054592, 39.649040, 36.598476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.275667, 40.132877, 37.323494>,  <28.580456, 39.761726, 37.100971>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.275667, 40.132877, 37.323494> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.311489, 40.068966, 36.930260>,  <29.332983, 40.030621, 36.694321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.311489, 40.068966, 36.930260>,  <29.275667, 40.132877, 37.323494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.311489, 40.068966, 36.930260> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146547, 0.978420, -0.145667,
		0.985142, -0.131023, 0.111036,
		0.089554, -0.159774, -0.983083,
		29.338356, 40.021034, 36.635334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.910770, 40.494068, 37.043053>,  <29.275667, 40.132877, 37.323494>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.910770, 40.494068, 37.043053> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.667353, 40.436954, 36.730827>,  <29.521301, 40.402687, 36.543491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.667353, 40.436954, 36.730827>,  <29.910770, 40.494068, 37.043053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.667353, 40.436954, 36.730827> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048830, 0.975076, -0.216432,
		0.792015, -0.169824, -0.586406,
		-0.608545, -0.142783, -0.780568,
		29.484789, 40.394119, 36.496658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.263416, 40.934677, 36.521549>,  <29.910770, 40.494068, 37.043053>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.263416, 40.934677, 36.521549> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.909178, 40.849983, 36.356197>,  <29.696634, 40.799168, 36.256985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.909178, 40.849983, 36.356197>,  <30.263416, 40.934677, 36.521549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.909178, 40.849983, 36.356197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076958, 0.944632, -0.318980,
		0.458036, -0.250674, -0.852857,
		-0.885596, -0.211738, -0.413384,
		29.643499, 40.786461, 36.232182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.285379, 41.214546, 35.851574>,  <30.263416, 40.934677, 36.521549>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.285379, 41.214546, 35.851574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.903383, 41.173618, 35.962948>,  <29.674187, 41.149063, 36.029774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.903383, 41.173618, 35.962948>,  <30.285379, 41.214546, 35.851574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.903383, 41.173618, 35.962948> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149054, 0.977049, -0.152179,
		-0.256476, -0.186831, -0.948322,
		-0.954988, -0.102321, 0.278438,
		29.616886, 41.142921, 36.046478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.840290, 41.681358, 35.392311>,  <30.285379, 41.214546, 35.851574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.840290, 41.681358, 35.392311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.599842, 41.592693, 35.699432>,  <29.455574, 41.539494, 35.883705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.599842, 41.592693, 35.699432>,  <29.840290, 41.681358, 35.392311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.599842, 41.592693, 35.699432> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327733, 0.944633, 0.016130,
		-0.728867, -0.241938, -0.640484,
		-0.601119, -0.221664, 0.767802,
		29.419506, 41.526196, 35.929771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.243883, 42.022694, 35.205116>,  <29.840290, 41.681358, 35.392311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.243883, 42.022694, 35.205116> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.201935, 41.948158, 35.595863>,  <29.176765, 41.903435, 35.830311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.201935, 41.948158, 35.595863>,  <29.243883, 42.022694, 35.205116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.201935, 41.948158, 35.595863> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454719, 0.882576, 0.119539,
		-0.884439, -0.431666, -0.177290,
		-0.104871, -0.186343, 0.976872,
		29.170473, 41.892254, 35.888924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.589523, 42.068359, 35.435341>,  <29.243883, 42.022694, 35.205116>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.589523, 42.068359, 35.435341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.764118, 42.110355, 35.792767>,  <28.868876, 42.135551, 36.007221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.764118, 42.110355, 35.792767>,  <28.589523, 42.068359, 35.435341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.764118, 42.110355, 35.792767> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493698, 0.858237, 0.140323,
		-0.752157, -0.502400, 0.426443,
		0.436487, 0.104989, 0.893564,
		28.895065, 42.141853, 36.060837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.034487, 42.052776, 35.920071>,  <28.589523, 42.068359, 35.435341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.034487, 42.052776, 35.920071> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.345663, 42.225193, 36.102943>,  <28.532370, 42.328644, 36.212666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.345663, 42.225193, 36.102943>,  <28.034487, 42.052776, 35.920071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.345663, 42.225193, 36.102943> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577582, 0.777041, 0.250212,
		-0.247395, -0.458708, 0.853453,
		0.777943, 0.431039, 0.457178,
		28.579046, 42.354504, 36.240097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.720514, 42.430111, 36.456955>,  <28.034487, 42.052776, 35.920071>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.720514, 42.430111, 36.456955> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.073668, 42.611816, 36.409355>,  <28.285559, 42.720840, 36.380795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.073668, 42.611816, 36.409355>,  <27.720514, 42.430111, 36.456955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.073668, 42.611816, 36.409355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377228, 0.837003, 0.396391,
		0.279670, -0.305076, 0.910337,
		0.882883, 0.454264, -0.119001,
		28.338533, 42.748096, 36.373653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.765762, 42.937767, 37.092339>,  <27.720514, 42.430111, 36.456955>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.765762, 42.937767, 37.092339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.037888, 43.041378, 36.818089>,  <28.201162, 43.103546, 36.653538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.037888, 43.041378, 36.818089>,  <27.765762, 42.937767, 37.092339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.037888, 43.041378, 36.818089> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252457, 0.961037, 0.112580,
		0.688069, 0.096500, 0.719200,
		0.680314, 0.259030, -0.685622,
		28.241982, 43.119087, 36.612404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.342470, 43.356728, 37.477566>,  <27.765762, 42.937767, 37.092339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.342470, 43.356728, 37.477566> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.302105, 43.442570, 37.088978>,  <28.277885, 43.494076, 36.855824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.302105, 43.442570, 37.088978>,  <28.342470, 43.356728, 37.477566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.302105, 43.442570, 37.088978> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128008, 0.965541, 0.226593,
		0.986626, 0.147223, -0.069966,
		-0.100915, 0.214606, -0.971473,
		28.271830, 43.506950, 36.797535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.705858, 43.989971, 37.547100>,  <28.342470, 43.356728, 37.477566>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.705858, 43.989971, 37.547100> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.502150, 44.003681, 37.203133>,  <28.379925, 44.011906, 36.996750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.502150, 44.003681, 37.203133>,  <28.705858, 43.989971, 37.547100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.502150, 44.003681, 37.203133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587741, 0.716047, 0.376614,
		0.628652, 0.697211, -0.344521,
		-0.509272, 0.034270, -0.859923,
		28.349367, 44.013962, 36.945156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.784857, 44.636452, 37.227573>,  <28.705858, 43.989971, 37.547100>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.784857, 44.636452, 37.227573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.442678, 44.436661, 37.172829>,  <28.237371, 44.316784, 37.139980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.442678, 44.436661, 37.172829>,  <28.784857, 44.636452, 37.227573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.442678, 44.436661, 37.172829> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499949, 0.727480, 0.469920,
		-0.135150, 0.470416, -0.872034,
		-0.855445, -0.499482, -0.136865,
		28.186045, 44.286816, 37.131771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.626377, 33.418854, 47.891796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.232456, 33.350613, 47.904808>,  <39.996105, 33.309669, 47.912617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.232456, 33.350613, 47.904808>,  <40.626377, 33.418854, 47.891796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.232456, 33.350613, 47.904808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028789, 0.345060, 0.938139,
		-0.171274, 0.922946, -0.344727,
		-0.984803, -0.170603, 0.032529,
		39.937016, 33.299431, 47.914566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.301167, 34.022110, 48.229259>,  <40.626377, 33.418854, 47.891796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.301167, 34.022110, 48.229259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.068573, 33.698120, 48.259781>,  <39.929016, 33.503727, 48.278091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.068573, 33.698120, 48.259781>,  <40.301167, 34.022110, 48.229259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.068573, 33.698120, 48.259781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126570, 0.182709, 0.974986,
		-0.803655, 0.557277, -0.208760,
		-0.581479, -0.809975, 0.076301,
		39.894131, 33.455128, 48.282673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.796062, 34.236744, 48.676094>,  <40.301167, 34.022110, 48.229259>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.796062, 34.236744, 48.676094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.775887, 33.837353, 48.684948>,  <39.763779, 33.597717, 48.690258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.775887, 33.837353, 48.684948>,  <39.796062, 34.236744, 48.676094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775887, 33.837353, 48.684948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093769, 0.026798, 0.995233,
		-0.994315, 0.048127, -0.094978,
		-0.050443, -0.998482, 0.022133,
		39.760754, 33.537807, 48.691589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.115456, 34.049309, 49.045902>,  <39.796062, 34.236744, 48.676094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.115456, 34.049309, 49.045902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.340939, 33.720055, 49.073261>,  <39.476227, 33.522503, 49.089676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.340939, 33.720055, 49.073261>,  <39.115456, 34.049309, 49.045902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340939, 33.720055, 49.073261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166025, -0.031798, 0.985609,
		-0.809119, -0.566948, -0.154586,
		0.563704, -0.823140, 0.068400,
		39.510048, 33.473114, 49.093781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664547, 33.534790, 49.225986>,  <39.115456, 34.049309, 49.045902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664547, 33.534790, 49.225986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.013252, 33.394993, 49.363319>,  <39.222477, 33.311115, 49.445717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.013252, 33.394993, 49.363319>,  <38.664547, 33.534790, 49.225986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013252, 33.394993, 49.363319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426688, -0.197263, 0.882624,
		-0.240756, -0.915933, -0.321097,
		0.871765, -0.349505, 0.343325,
		39.274784, 33.290146, 49.466316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454353, 33.181728, 49.704060>,  <38.664547, 33.534790, 49.225986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.454353, 33.181728, 49.704060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.845112, 33.159328, 49.786560>,  <39.079567, 33.145889, 49.836060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.845112, 33.159328, 49.786560>,  <38.454353, 33.181728, 49.704060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.845112, 33.159328, 49.786560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212094, -0.372803, 0.903346,
		0.026300, -0.926219, -0.376067,
		0.976896, -0.056003, 0.206251,
		39.138180, 33.142529, 49.848434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583038, 32.500381, 49.839920>,  <38.454353, 33.181728, 49.704060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.583038, 32.500381, 49.839920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.859898, 32.714642, 50.033421>,  <39.026012, 32.843197, 50.149521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.859898, 32.714642, 50.033421>,  <38.583038, 32.500381, 49.839920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.859898, 32.714642, 50.033421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100722, -0.591992, 0.799626,
		0.714697, -0.602180, -0.355791,
		0.692144, 0.535654, 0.483747,
		39.067539, 32.875340, 50.178543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147179, 32.022240, 50.271313>,  <38.583038, 32.500381, 49.839920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.147179, 32.022240, 50.271313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.141735, 32.382126, 50.445824>,  <39.138470, 32.598057, 50.550529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.141735, 32.382126, 50.445824>,  <39.147179, 32.022240, 50.271313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.141735, 32.382126, 50.445824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062822, -0.436221, 0.897644,
		0.997932, -0.015189, 0.062459,
		-0.013611, 0.899711, 0.436273,
		39.137653, 32.652039, 50.576706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542965, 32.003414, 50.845795>,  <39.147179, 32.022240, 50.271313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.542965, 32.003414, 50.845795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.316113, 32.321033, 50.933285>,  <39.180000, 32.511604, 50.985779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.316113, 32.321033, 50.933285>,  <39.542965, 32.003414, 50.845795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.316113, 32.321033, 50.933285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164922, -0.369670, 0.914410,
		0.806944, 0.482521, 0.340609,
		-0.567135, 0.794052, 0.218725,
		39.145973, 32.559250, 50.998901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.465145, 31.873297, 51.538689>,  <39.542965, 32.003414, 50.845795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.465145, 31.873297, 51.538689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.301319, 32.232933, 51.476860>,  <39.203022, 32.448715, 51.439762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.301319, 32.232933, 51.476860>,  <39.465145, 31.873297, 51.538689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.301319, 32.232933, 51.476860> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472113, -0.063908, 0.879218,
		0.780620, 0.433071, 0.450647,
		-0.409564, 0.899091, -0.154570,
		39.178452, 32.502659, 51.430489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692108, 32.507221, 51.981026>,  <39.465145, 31.873297, 51.538689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.692108, 32.507221, 51.981026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.313030, 32.529240, 51.855263>,  <39.085583, 32.542450, 51.779804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.313030, 32.529240, 51.855263>,  <39.692108, 32.507221, 51.981026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.313030, 32.529240, 51.855263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311299, 0.058238, 0.948526,
		0.070526, 0.996784, -0.038055,
		-0.947691, 0.055050, -0.314405,
		39.028725, 32.545753, 51.760941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.280750, 32.933167, 52.582424>,  <39.692108, 32.507221, 51.981026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.280750, 32.933167, 52.582424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.027706, 32.719719, 52.357906>,  <38.875881, 32.591648, 52.223194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.027706, 32.719719, 52.357906>,  <39.280750, 32.933167, 52.582424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.027706, 32.719719, 52.357906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517999, -0.247246, 0.818869,
		-0.575745, 0.808775, -0.120006,
		-0.632610, -0.533622, -0.561295,
		38.837925, 32.559631, 52.189518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.733471, 33.017784, 52.905281>,  <39.280750, 32.933167, 52.582424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.733471, 33.017784, 52.905281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.658005, 32.671009, 52.720749>,  <38.612724, 32.462944, 52.610031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.658005, 32.671009, 52.720749>,  <38.733471, 33.017784, 52.905281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.658005, 32.671009, 52.720749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556358, -0.292749, 0.777666,
		-0.809241, 0.403385, -0.427095,
		-0.188667, -0.866936, -0.461330,
		38.601406, 32.410927, 52.582352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088036, 32.766178, 53.177948>,  <38.733471, 33.017784, 52.905281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.088036, 32.766178, 53.177948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.240669, 32.423573, 53.038937>,  <38.332249, 32.218010, 52.955532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.240669, 32.423573, 53.038937>,  <38.088036, 32.766178, 53.177948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240669, 32.423573, 53.038937> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563263, -0.513570, 0.647286,
		-0.732889, -0.051247, -0.678415,
		0.381585, -0.856516, -0.347525,
		38.355145, 32.166618, 52.934681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769375, 32.997086, 52.425213>,  <38.088036, 32.766178, 53.177948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769375, 32.997086, 52.425213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.636639, 33.311504, 52.633827>,  <37.556995, 33.500156, 52.758995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.636639, 33.311504, 52.633827>,  <37.769375, 32.997086, 52.425213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.636639, 33.311504, 52.633827> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095674, 0.578060, -0.810366,
		-0.938470, -0.219018, -0.267031,
		-0.331845, 0.786052, 0.521538,
		37.537086, 33.547321, 52.790287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232048, 33.260654, 52.048016>,  <37.769375, 32.997086, 52.425213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232048, 33.260654, 52.048016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.321568, 33.574738, 52.278965>,  <37.375278, 33.763187, 52.417534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.321568, 33.574738, 52.278965>,  <37.232048, 33.260654, 52.048016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.321568, 33.574738, 52.278965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192625, 0.616350, -0.763550,
		-0.955411, 0.059666, 0.289190,
		0.223800, 0.785208, 0.577374,
		37.388706, 33.810299, 52.452179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682785, 33.742634, 51.966137>,  <37.232048, 33.260654, 52.048016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682785, 33.742634, 51.966137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.003803, 33.942318, 52.096802>,  <37.196415, 34.062130, 52.175201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.003803, 33.942318, 52.096802>,  <36.682785, 33.742634, 51.966137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003803, 33.942318, 52.096802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195632, 0.737488, -0.646405,
		-0.563602, 0.454864, 0.689530,
		0.802547, 0.499209, 0.326664,
		37.244568, 34.092079, 52.194801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.448299, 34.451550, 51.929825>,  <36.682785, 33.742634, 51.966137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.448299, 34.451550, 51.929825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.845947, 34.490105, 51.949547>,  <37.084538, 34.513237, 51.961380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.845947, 34.490105, 51.949547>,  <36.448299, 34.451550, 51.929825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.845947, 34.490105, 51.949547> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045225, 0.783499, -0.619745,
		-0.098369, 0.613872, 0.783253,
		0.994122, 0.096386, 0.049309,
		37.144184, 34.519020, 51.964340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521774, 35.246883, 51.976788>,  <36.448299, 34.451550, 51.929825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521774, 35.246883, 51.976788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.875076, 35.090935, 51.872593>,  <37.087059, 34.997364, 51.810078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.875076, 35.090935, 51.872593>,  <36.521774, 35.246883, 51.976788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.875076, 35.090935, 51.872593> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105995, 0.707177, -0.699047,
		0.456749, 0.589829, 0.665945,
		0.883258, -0.389876, -0.260483,
		37.140053, 34.973972, 51.794449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998493, 35.813522, 51.893173>,  <36.521774, 35.246883, 51.976788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998493, 35.813522, 51.893173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.174213, 35.510471, 51.700089>,  <37.279644, 35.328640, 51.584236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.174213, 35.510471, 51.700089>,  <36.998493, 35.813522, 51.893173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174213, 35.510471, 51.700089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044336, 0.554969, -0.830688,
		0.897245, 0.343521, 0.277389,
		0.439301, -0.757630, -0.482713,
		37.306004, 35.283184, 51.555275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446045, 36.177544, 51.515274>,  <36.998493, 35.813522, 51.893173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446045, 36.177544, 51.515274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.399460, 35.814976, 51.352871>,  <37.371510, 35.597435, 51.255428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.399460, 35.814976, 51.352871>,  <37.446045, 36.177544, 51.515274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.399460, 35.814976, 51.352871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015170, 0.410365, -0.911795,
		0.993079, -0.100033, -0.061544,
		-0.116465, -0.906418, -0.406007,
		37.364521, 35.543049, 51.231068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852360, 36.122227, 50.975399>,  <37.446045, 36.177544, 51.515274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.852360, 36.122227, 50.975399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.558769, 35.860977, 50.900883>,  <37.382614, 35.704227, 50.856174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.558769, 35.860977, 50.900883>,  <37.852360, 36.122227, 50.975399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.558769, 35.860977, 50.900883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089236, 0.364650, -0.926859,
		0.673285, -0.663671, -0.325927,
		-0.733979, -0.653125, -0.186291,
		37.338577, 35.665039, 50.844997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986320, 36.047237, 50.174500>,  <37.852360, 36.122227, 50.975399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.986320, 36.047237, 50.174500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.640556, 35.860905, 50.250175>,  <37.433098, 35.749104, 50.295582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.640556, 35.860905, 50.250175>,  <37.986320, 36.047237, 50.174500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640556, 35.860905, 50.250175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298796, 0.173330, -0.938444,
		0.404368, -0.867730, -0.289018,
		-0.864412, -0.465834, 0.189185,
		37.381233, 35.721153, 50.306931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738762, 35.801846, 49.548946>,  <37.986320, 36.047237, 50.174500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.738762, 35.801846, 49.548946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.389957, 35.777557, 49.743229>,  <37.180676, 35.762985, 49.859798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.389957, 35.777557, 49.743229>,  <37.738762, 35.801846, 49.548946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.389957, 35.777557, 49.743229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484093, -0.039910, -0.874106,
		0.072461, -0.997357, 0.005407,
		-0.872011, -0.060721, 0.485705,
		37.128353, 35.759342, 49.888939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467102, 35.163860, 49.467552>,  <37.738762, 35.801846, 49.548946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467102, 35.163860, 49.467552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.172066, 35.426823, 49.529224>,  <36.995045, 35.584602, 49.566227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.172066, 35.426823, 49.529224>,  <37.467102, 35.163860, 49.467552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.172066, 35.426823, 49.529224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392727, -0.231917, -0.889933,
		-0.549292, -0.716958, 0.429243,
		-0.737593, 0.657409, 0.154178,
		36.950787, 35.624046, 49.575478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772339, 34.910007, 49.298252>,  <37.467102, 35.163860, 49.467552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.772339, 34.910007, 49.298252> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.584099, 35.259289, 49.348930>,  <36.471153, 35.468857, 49.379337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.584099, 35.259289, 49.348930>,  <36.772339, 34.910007, 49.298252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584099, 35.259289, 49.348930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500552, -0.145959, -0.853313,
		-0.726625, -0.464985, 0.505772,
		-0.470600, 0.873204, 0.126692,
		36.442921, 35.521252, 49.386936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.023285, 34.762852, 49.164162>,  <36.772339, 34.910007, 49.298252>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.023285, 34.762852, 49.164162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.113976, 35.146378, 49.095734>,  <36.168388, 35.376495, 49.054676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.113976, 35.146378, 49.095734>,  <36.023285, 34.762852, 49.164162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.113976, 35.146378, 49.095734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394652, -0.070137, -0.916150,
		-0.890419, 0.275225, 0.362497,
		0.226723, 0.958818, -0.171070,
		36.181992, 35.434025, 49.044415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435528, 35.066673, 48.750149>,  <36.023285, 34.762852, 49.164162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435528, 35.066673, 48.750149> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.725708, 35.335590, 48.691166>,  <35.899815, 35.496941, 48.655777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.725708, 35.335590, 48.691166>,  <35.435528, 35.066673, 48.750149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.725708, 35.335590, 48.691166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282439, 0.095412, -0.954528,
		-0.627656, 0.734109, 0.259099,
		0.725449, 0.672295, -0.147455,
		35.943344, 35.537277, 48.646931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648125, 35.247631, 48.690964>,  <35.435528, 35.066673, 48.750149>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648125, 35.247631, 48.690964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.267838, 35.228764, 48.568378>,  <34.039665, 35.217445, 48.494827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.267838, 35.228764, 48.568378>,  <34.648125, 35.247631, 48.690964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.267838, 35.228764, 48.568378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261784, -0.407574, 0.874844,
		-0.166166, 0.911953, 0.375140,
		-0.950715, -0.047164, -0.306459,
		33.982624, 35.214615, 48.476440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.262386, 35.565113, 49.254478>,  <34.648125, 35.247631, 48.690964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.262386, 35.565113, 49.254478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.016029, 35.339245, 49.034721>,  <33.868217, 35.203724, 48.902866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.016029, 35.339245, 49.034721>,  <34.262386, 35.565113, 49.254478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016029, 35.339245, 49.034721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390364, -0.386997, 0.835374,
		-0.684321, 0.728961, 0.017922,
		-0.615890, -0.564668, -0.549390,
		33.831261, 35.169846, 48.869904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.628826, 35.672409, 49.520481>,  <34.262386, 35.565113, 49.254478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.628826, 35.672409, 49.520481> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.640705, 35.318924, 49.333645>,  <33.647831, 35.106834, 49.221542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.640705, 35.318924, 49.333645>,  <33.628826, 35.672409, 49.520481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.640705, 35.318924, 49.333645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223335, -0.461352, 0.858648,
		-0.974290, 0.078822, -0.211062,
		0.029693, -0.883709, -0.467094,
		33.649612, 35.053810, 49.193516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087460, 35.278149, 49.830505>,  <33.628826, 35.672409, 49.520481>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.087460, 35.278149, 49.830505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.340508, 35.015038, 49.666985>,  <33.492336, 34.857170, 49.568871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.340508, 35.015038, 49.666985>,  <33.087460, 35.278149, 49.830505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340508, 35.015038, 49.666985> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014601, -0.517628, 0.855481,
		-0.774326, -0.547163, -0.317857,
		0.632619, -0.657780, -0.408802,
		33.530293, 34.817703, 49.544346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.802395, 34.613041, 49.905872>,  <33.087460, 35.278149, 49.830505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.802395, 34.613041, 49.905872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.193676, 34.546394, 49.856297>,  <33.428444, 34.506405, 49.826550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.193676, 34.546394, 49.856297>,  <32.802395, 34.613041, 49.905872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.193676, 34.546394, 49.856297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018623, -0.664827, 0.746765,
		-0.206826, -0.728177, -0.653437,
		0.978200, -0.166619, -0.123943,
		33.487137, 34.496410, 49.819115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.902504, 33.907722, 50.057495>,  <32.802395, 34.613041, 49.905872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.902504, 33.907722, 50.057495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.263287, 34.070721, 50.114655>,  <33.479755, 34.168518, 50.148952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.263287, 34.070721, 50.114655>,  <32.902504, 33.907722, 50.057495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.263287, 34.070721, 50.114655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019988, -0.369972, 0.928828,
		0.431359, -0.834908, -0.341844,
		0.901959, 0.407491, 0.142902,
		33.533875, 34.192966, 50.157524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.250519, 33.414948, 50.396908>,  <32.902504, 33.907722, 50.057495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.250519, 33.414948, 50.396908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.456741, 33.750446, 50.467003>,  <33.580475, 33.951744, 50.509060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.456741, 33.750446, 50.467003>,  <33.250519, 33.414948, 50.396908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.456741, 33.750446, 50.467003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146227, -0.287631, 0.946513,
		0.844287, -0.462356, -0.270937,
		0.515556, 0.838746, 0.175234,
		33.611408, 34.002071, 50.519573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926727, 32.942463, 49.937572>,  <33.250519, 33.414948, 50.396908>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.926727, 32.942463, 49.937572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.888615, 32.547798, 49.990360>,  <32.865746, 32.310997, 50.022034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.888615, 32.547798, 49.990360>,  <32.926727, 32.942463, 49.937572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.888615, 32.547798, 49.990360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232220, -0.106886, -0.966773,
		0.967985, -0.122761, -0.218938,
		-0.095280, -0.986664, 0.131972,
		32.860031, 32.251801, 50.029953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349995, 32.622440, 49.414562>,  <32.926727, 32.942463, 49.937572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.349995, 32.622440, 49.414562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.084587, 32.342541, 49.520462>,  <32.925343, 32.174599, 49.584003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.084587, 32.342541, 49.520462>,  <33.349995, 32.622440, 49.414562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084587, 32.342541, 49.520462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152499, -0.219942, -0.963519,
		0.732453, -0.679687, 0.039224,
		-0.663519, -0.699751, 0.264748,
		32.885532, 32.132614, 49.599888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.514362, 31.980642, 49.066570>,  <33.349995, 32.622440, 49.414562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.514362, 31.980642, 49.066570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.128742, 31.936121, 49.163090>,  <32.897369, 31.909409, 49.221001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.128742, 31.936121, 49.163090>,  <33.514362, 31.980642, 49.066570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.128742, 31.936121, 49.163090> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231166, -0.096599, -0.968107,
		0.131065, -0.989080, 0.067396,
		-0.964046, -0.111305, 0.241302,
		32.839527, 31.902729, 49.235481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203728, 31.476957, 48.638947>,  <33.514362, 31.980642, 49.066570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.203728, 31.476957, 48.638947> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.886078, 31.682684, 48.768467>,  <32.695488, 31.806120, 48.846180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.886078, 31.682684, 48.768467>,  <33.203728, 31.476957, 48.638947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.886078, 31.682684, 48.768467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317214, 0.103684, -0.942669,
		-0.518404, -0.851309, 0.080811,
		-0.794124, 0.514318, 0.323797,
		32.647842, 31.836979, 48.865604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.614189, 31.150116, 48.293064>,  <33.203728, 31.476957, 48.638947>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.614189, 31.150116, 48.293064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.480545, 31.510139, 48.404964>,  <32.400356, 31.726154, 48.472103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.480545, 31.510139, 48.404964>,  <32.614189, 31.150116, 48.293064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480545, 31.510139, 48.404964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332454, 0.165191, -0.928540,
		-0.881954, -0.403241, 0.244036,
		-0.334112, 0.900060, 0.279750,
		32.380310, 31.780157, 48.488888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.042816, 31.248768, 47.912582>,  <32.614189, 31.150116, 48.293064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.042816, 31.248768, 47.912582> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.133083, 31.618011, 48.037128>,  <32.187244, 31.839558, 48.111855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.133083, 31.618011, 48.037128>,  <32.042816, 31.248768, 47.912582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.133083, 31.618011, 48.037128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233003, 0.361473, -0.902799,
		-0.945929, 0.131187, 0.296660,
		0.225671, 0.923107, 0.311361,
		32.200783, 31.894943, 48.130535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.500340, 31.600615, 47.736752>,  <32.042816, 31.248768, 47.912582>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.500340, 31.600615, 47.736752> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.821180, 31.839489, 47.736988>,  <32.013683, 31.982815, 47.737129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.821180, 31.839489, 47.736988>,  <31.500340, 31.600615, 47.736752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.821180, 31.839489, 47.736988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242767, 0.326978, -0.913318,
		-0.545616, 0.732430, 0.407247,
		0.802102, 0.597187, 0.000594,
		32.061810, 32.018646, 47.737167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.419128, 30.004704, 51.539783> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.636856, 30.322853, 51.433125>,  <36.767494, 30.513742, 51.369129>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.636856, 30.322853, 51.433125>,  <36.419128, 30.004704, 51.539783>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636856, 30.322853, 51.433125> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313892, -0.101657, -0.944001,
		-0.777938, 0.597537, 0.194327,
		0.544321, 0.795371, -0.266644,
		36.800152, 30.561464, 51.353130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056931, 30.221773, 50.988224>,  <36.419128, 30.004704, 51.539783>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.056931, 30.221773, 50.988224> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.426956, 30.365768, 50.939781>,  <36.648972, 30.452166, 50.910717>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.426956, 30.365768, 50.939781>,  <36.056931, 30.221773, 50.988224>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426956, 30.365768, 50.939781> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179567, 0.133550, -0.974638,
		-0.334687, 0.923348, 0.188184,
		0.925062, 0.359990, -0.121106,
		36.704475, 30.473766, 50.903450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.021442, 30.883728, 50.543129>,  <36.056931, 30.221773, 50.988224>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.021442, 30.883728, 50.543129> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.391445, 30.734146, 50.516235>,  <36.613445, 30.644396, 50.500099>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.391445, 30.734146, 50.516235>,  <36.021442, 30.883728, 50.543129>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.391445, 30.734146, 50.516235> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015001, 0.212763, -0.976989,
		0.379657, 0.902711, 0.202417,
		0.925006, -0.373957, -0.067236,
		36.668945, 30.621960, 50.496063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310818, 31.377190, 50.141552>,  <36.021442, 30.883728, 50.543129>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.310818, 31.377190, 50.141552> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.545189, 31.054466, 50.111237>,  <36.685814, 30.860832, 50.093048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.545189, 31.054466, 50.111237>,  <36.310818, 31.377190, 50.141552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545189, 31.054466, 50.111237> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036523, 0.119726, -0.992135,
		0.809537, 0.578555, 0.099618,
		0.585932, -0.806808, -0.075792,
		36.720970, 30.812424, 50.088497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.742134, 31.498962, 49.481522>,  <36.310818, 31.377190, 50.141552>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.742134, 31.498962, 49.481522> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.775021, 31.108240, 49.560612>,  <36.794754, 30.873808, 49.608067>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.775021, 31.108240, 49.560612>,  <36.742134, 31.498962, 49.481522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775021, 31.108240, 49.560612> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169620, -0.209216, -0.963046,
		0.982074, 0.045640, -0.182887,
		0.082216, -0.976804, 0.197724,
		36.799686, 30.815199, 49.619930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.146969, 31.271191, 48.998150>,  <36.742134, 31.498962, 49.481522>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.146969, 31.271191, 48.998150> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.989689, 30.925953, 49.124935>,  <36.895321, 30.718811, 49.201004>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.989689, 30.925953, 49.124935>,  <37.146969, 31.271191, 48.998150>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989689, 30.925953, 49.124935> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056454, -0.321415, -0.945254,
		0.917719, -0.389566, 0.077654,
		-0.393199, -0.863094, 0.316961,
		36.871731, 30.667025, 49.220024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446789, 30.766777, 48.560741>,  <37.146969, 31.271191, 48.998150>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446789, 30.766777, 48.560741> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.118603, 30.596439, 48.713318>,  <36.921692, 30.494238, 48.804863>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.118603, 30.596439, 48.713318>,  <37.446789, 30.766777, 48.560741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118603, 30.596439, 48.713318> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072430, -0.584409, -0.808221,
		0.567095, -0.690742, 0.448641,
		-0.820462, -0.425843, 0.381446,
		36.872463, 30.468687, 48.827751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631313, 30.112150, 48.497890>,  <37.446789, 30.766777, 48.560741>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.631313, 30.112150, 48.497890> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.233158, 30.143097, 48.520607>,  <36.994267, 30.161665, 48.534237>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.233158, 30.143097, 48.520607>,  <37.631313, 30.112150, 48.497890>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.233158, 30.143097, 48.520607> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091418, -0.584175, -0.806463,
		-0.029220, -0.807931, 0.588552,
		-0.995384, 0.077369, 0.056790,
		36.934544, 30.166307, 48.537643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.345665, 29.423136, 48.371834>,  <37.631313, 30.112150, 48.497890>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.345665, 29.423136, 48.371834> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.051876, 29.686398, 48.305645>,  <36.875603, 29.844355, 48.265930>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.051876, 29.686398, 48.305645>,  <37.345665, 29.423136, 48.371834>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051876, 29.686398, 48.305645> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238589, -0.478688, -0.844946,
		-0.635315, -0.581110, 0.508612,
		-0.734473, 0.658156, -0.165471,
		36.831535, 29.883844, 48.256004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857235, 29.050392, 48.121170>,  <37.345665, 29.423136, 48.371834>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.857235, 29.050392, 48.121170> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.736790, 29.417459, 48.017464>,  <36.664524, 29.637701, 47.955242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.736790, 29.417459, 48.017464>,  <36.857235, 29.050392, 48.121170>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736790, 29.417459, 48.017464> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226817, -0.332999, -0.915241,
		-0.926222, -0.216783, 0.308412,
		-0.301109, 0.917669, -0.259261,
		36.646458, 29.692760, 47.939686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281303, 28.981985, 47.688839>,  <36.857235, 29.050392, 48.121170>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281303, 28.981985, 47.688839> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.433624, 29.343899, 47.612572>,  <36.525017, 29.561047, 47.566811>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.433624, 29.343899, 47.612572>,  <36.281303, 28.981985, 47.688839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433624, 29.343899, 47.612572> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214529, -0.114125, -0.970027,
		-0.899426, 0.410292, 0.150643,
		0.380802, 0.904785, -0.190667,
		36.547863, 29.615334, 47.555370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.820694, 29.419487, 47.141647>,  <36.281303, 28.981985, 47.688839>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.820694, 29.419487, 47.141647> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.204250, 29.532097, 47.127342>,  <36.434383, 29.599663, 47.118759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.204250, 29.532097, 47.127342>,  <35.820694, 29.419487, 47.141647>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.204250, 29.532097, 47.127342> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020239, -0.057862, -0.998119,
		-0.283066, 0.957807, -0.049785,
		0.958887, 0.281526, -0.035764,
		36.491917, 29.616554, 47.116611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.374062, 29.882259, 46.837936>,  <35.820694, 29.419487, 47.141647>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.374062, 29.882259, 46.837936> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.998825, 29.768425, 46.758938>,  <34.773685, 29.700125, 46.711540>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.998825, 29.768425, 46.758938>,  <35.374062, 29.882259, 46.837936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.998825, 29.768425, 46.758938> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142847, -0.201597, 0.968996,
		-0.315576, 0.937214, 0.148464,
		-0.938087, -0.284584, -0.197498,
		34.717400, 29.683050, 46.699688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076229, 30.156860, 47.271049>,  <35.374062, 29.882259, 46.837936>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.076229, 30.156860, 47.271049> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.798122, 29.890976, 47.161682>,  <34.631256, 29.731445, 47.096062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.798122, 29.890976, 47.161682>,  <35.076229, 30.156860, 47.271049>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798122, 29.890976, 47.161682> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200535, -0.185899, 0.961887,
		-0.690206, 0.723602, -0.004048,
		-0.695271, -0.664712, -0.273416,
		34.589542, 29.691563, 47.079659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.481552, 30.312525, 47.724140>,  <35.076229, 30.156860, 47.271049>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.481552, 30.312525, 47.724140> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.481056, 29.932430, 47.599533>,  <34.480759, 29.704372, 47.524769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.481056, 29.932430, 47.599533>,  <34.481552, 30.312525, 47.724140>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.481056, 29.932430, 47.599533> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015560, -0.311465, 0.950130,
		-0.999878, 0.006023, -0.014400,
		-0.001237, -0.950239, -0.311520,
		34.480686, 29.647358, 47.506077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.954826, 29.975599, 48.129879>,  <34.481552, 30.312525, 47.724140>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.954826, 29.975599, 48.129879> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.136898, 29.643682, 48.000721>,  <34.246140, 29.444532, 47.923225>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.136898, 29.643682, 48.000721>,  <33.954826, 29.975599, 48.129879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136898, 29.643682, 48.000721> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221452, -0.456747, 0.861592,
		-0.862422, -0.320673, -0.391660,
		0.455179, -0.829790, -0.322895,
		34.273453, 29.394745, 47.903854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523937, 29.463751, 48.364311>,  <33.954826, 29.975599, 48.129879>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523937, 29.463751, 48.364311> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.881237, 29.291983, 48.311085>,  <34.095615, 29.188921, 48.279148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.881237, 29.291983, 48.311085>,  <33.523937, 29.463751, 48.364311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.881237, 29.291983, 48.311085> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079640, -0.442455, 0.893248,
		-0.442455, -0.787294, -0.429420,
		-0.893248, 0.429420, 0.133066,
		34.149212, 29.163157, 48.271164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.420151, 28.879778, 48.644978>,  <33.523937, 29.463751, 48.364311>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.420151, 28.879778, 48.644978> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.819500, 28.888996, 48.624119>,  <34.059109, 28.894527, 48.611603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.819500, 28.888996, 48.624119>,  <33.420151, 28.879778, 48.644978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.819500, 28.888996, 48.624119> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056837, -0.329812, 0.942334,
		0.004518, -0.943765, -0.330585,
		0.998373, 0.023047, -0.052151,
		34.119011, 28.895910, 48.608475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.651463, 28.154369, 48.911705>,  <33.420151, 28.879778, 48.644978>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.651463, 28.154369, 48.911705> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.972103, 28.387506, 48.964962>,  <34.164490, 28.527388, 48.996918>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.972103, 28.387506, 48.964962>,  <33.651463, 28.154369, 48.911705>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.972103, 28.387506, 48.964962> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121544, -0.376925, 0.918234,
		0.585370, -0.719878, -0.372986,
		0.801604, 0.582841, 0.133144,
		34.212585, 28.562359, 49.004906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292233, 27.743967, 49.084095>,  <33.651463, 28.154369, 48.911705>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292233, 27.743967, 49.084095> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.310696, 28.110415, 49.243393>,  <34.321774, 28.330282, 49.338970>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.310696, 28.110415, 49.243393>,  <34.292233, 27.743967, 49.084095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.310696, 28.110415, 49.243393> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072989, -0.400694, 0.913300,
		0.996264, -0.013090, -0.085362,
		0.046159, 0.916118, 0.398242,
		34.324543, 28.385250, 49.362865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479019, 27.560106, 49.762291>,  <34.292233, 27.743967, 49.084095>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479019, 27.560106, 49.762291> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.424122, 27.956295, 49.757828>,  <34.391182, 28.194008, 49.755150>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.424122, 27.956295, 49.757828>,  <34.479019, 27.560106, 49.762291>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.424122, 27.956295, 49.757828> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059876, 0.002949, 0.998202,
		0.988725, 0.137669, 0.058901,
		-0.137248, 0.990474, -0.011159,
		34.382946, 28.253437, 49.754478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.813965, 27.807505, 50.339115>,  <34.479019, 27.560106, 49.762291>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.813965, 27.807505, 50.339115> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.533436, 28.074463, 50.238934>,  <34.365120, 28.234638, 50.178825>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.533436, 28.074463, 50.238934>,  <34.813965, 27.807505, 50.339115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533436, 28.074463, 50.238934> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263166, 0.084114, 0.961077,
		0.662486, 0.739936, 0.116645,
		-0.701324, 0.667397, -0.250451,
		34.323040, 28.274683, 50.163799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948856, 28.405243, 50.837055>,  <34.813965, 27.807505, 50.339115>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948856, 28.405243, 50.837055> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.573181, 28.417477, 50.700237>,  <34.347778, 28.424818, 50.618145>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.573181, 28.417477, 50.700237>,  <34.948856, 28.405243, 50.837055>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.573181, 28.417477, 50.700237> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326127, 0.232552, 0.916275,
		0.107568, 0.972103, -0.208435,
		-0.939186, 0.030586, -0.342044,
		34.291424, 28.426653, 50.597626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625378, 28.934336, 51.234390>,  <34.948856, 28.405243, 50.837055>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625378, 28.934336, 51.234390> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.313721, 28.732080, 51.086189>,  <34.126728, 28.610727, 50.997269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.313721, 28.732080, 51.086189>,  <34.625378, 28.934336, 51.234390>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.313721, 28.732080, 51.086189> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512200, 0.172802, 0.841303,
		-0.361370, 0.845264, -0.393624,
		-0.779142, -0.505636, -0.370499,
		34.079979, 28.580389, 50.975040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185455, 29.399912, 51.271721>,  <34.625378, 28.934336, 51.234390>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185455, 29.399912, 51.271721> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.011478, 29.039965, 51.258694>,  <33.907093, 28.823996, 51.250877>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.011478, 29.039965, 51.258694>,  <34.185455, 29.399912, 51.271721>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.011478, 29.039965, 51.258694> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456409, 0.189134, 0.869436,
		-0.776217, 0.393023, -0.492970,
		-0.434945, -0.899867, -0.032570,
		33.880997, 28.770004, 51.248924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451305, 29.526741, 51.459084>,  <34.185455, 29.399912, 51.271721>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451305, 29.526741, 51.459084> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.516243, 29.137609, 51.525105>,  <33.555206, 28.904129, 51.564716>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.516243, 29.137609, 51.525105>,  <33.451305, 29.526741, 51.459084>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.516243, 29.137609, 51.525105> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355870, 0.098287, 0.929353,
		-0.920326, -0.209616, -0.330244,
		0.162349, -0.972831, 0.165052,
		33.564949, 28.845760, 51.574619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.593975, 30.050451, 50.859436>,  <33.451305, 29.526741, 51.459084>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.593975, 30.050451, 50.859436> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.542221, 30.198404, 51.227448>,  <33.511169, 30.287176, 51.448254>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.542221, 30.198404, 51.227448>,  <33.593975, 30.050451, 50.859436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.542221, 30.198404, 51.227448> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653539, 0.665983, -0.359656,
		-0.745752, -0.647807, 0.155563,
		-0.129386, 0.369880, 0.920026,
		33.503407, 30.309368, 51.503456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.956779, 30.227779, 50.793781>,  <33.593975, 30.050451, 50.859436>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.956779, 30.227779, 50.793781> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.088509, 30.429739, 51.112938>,  <33.167545, 30.550915, 51.304432>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.088509, 30.429739, 51.112938>,  <32.956779, 30.227779, 50.793781>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088509, 30.429739, 51.112938> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533705, 0.796622, -0.283816,
		-0.778914, -0.332370, 0.531811,
		0.329321, 0.504899, 0.797888,
		33.187305, 30.581209, 51.352303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.277813, 30.510441, 51.065147>,  <32.956779, 30.227779, 50.793781>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.277813, 30.510441, 51.065147> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.606010, 30.717106, 51.163002>,  <32.802929, 30.841105, 51.221714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.606010, 30.717106, 51.163002>,  <32.277813, 30.510441, 51.065147>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.606010, 30.717106, 51.163002> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493529, 0.856176, -0.152943,
		-0.288470, 0.004755, 0.957477,
		0.820496, 0.516662, 0.244634,
		32.852158, 30.872105, 51.236393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121086, 31.134989, 51.428467>,  <32.277813, 30.510441, 51.065147>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.121086, 31.134989, 51.428467> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.486713, 31.218622, 51.289463>,  <32.706089, 31.268803, 51.206059>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.486713, 31.218622, 51.289463>,  <32.121086, 31.134989, 51.428467>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.486713, 31.218622, 51.289463> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297300, 0.928257, -0.223500,
		0.275850, 0.307609, 0.910650,
		0.914068, 0.209084, -0.347512,
		32.760933, 31.281347, 51.185211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.248425, 31.969275, 51.531387>,  <32.121086, 31.134989, 51.428467>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.248425, 31.969275, 51.531387> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.509739, 31.823015, 51.266201>,  <32.666527, 31.735260, 51.107090>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.509739, 31.823015, 51.266201>,  <32.248425, 31.969275, 51.531387>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.509739, 31.823015, 51.266201> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137071, 0.804057, -0.578536,
		0.744599, 0.468823, 0.475161,
		0.653287, -0.365647, -0.662962,
		32.705727, 31.713322, 51.067314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.705883, 32.539566, 51.333797>,  <32.248425, 31.969275, 51.531387>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.705883, 32.539566, 51.333797> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.664066, 32.268208, 51.042912>,  <32.638977, 32.105392, 50.868378>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.664066, 32.268208, 51.042912>,  <32.705883, 32.539566, 51.333797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664066, 32.268208, 51.042912> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292092, 0.719920, -0.629601,
		0.950660, 0.146597, -0.273414,
		-0.104539, -0.678398, -0.727218,
		32.632706, 32.064690, 50.824745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.250473, 32.583553, 50.727249>,  <32.705883, 32.539566, 51.333797>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.250473, 32.583553, 50.727249> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.876648, 32.468578, 50.643372>,  <32.652351, 32.399593, 50.593044>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.876648, 32.468578, 50.643372>,  <33.250473, 32.583553, 50.727249>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.876648, 32.468578, 50.643372> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137923, 0.835959, -0.531178,
		0.327974, -0.467498, -0.820901,
		-0.934564, -0.287434, -0.209694,
		32.596279, 32.382347, 50.580463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855236, 33.189713, 50.748928>,  <33.250473, 32.583553, 50.727249>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855236, 33.189713, 50.748928> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.850758, 33.585026, 50.809814>,  <33.848068, 33.822212, 50.846348>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.850758, 33.585026, 50.809814>,  <33.855236, 33.189713, 50.748928>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850758, 33.585026, 50.809814> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397243, -0.135302, 0.907685,
		0.917645, 0.070632, -0.391074,
		-0.011199, 0.988284, 0.152217,
		33.847397, 33.881512, 50.855480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403324, 33.333763, 50.937428>,  <33.855236, 33.189713, 50.748928>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403324, 33.333763, 50.937428> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.201813, 33.650452, 51.075630>,  <34.080906, 33.840466, 51.158550>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.201813, 33.650452, 51.075630>,  <34.403324, 33.333763, 50.937428>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201813, 33.650452, 51.075630> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430031, -0.117026, 0.895197,
		0.749184, 0.599563, -0.281511,
		-0.503783, 0.791726, 0.345504,
		34.050678, 33.887970, 51.179283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.905758, 33.741463, 51.341339>,  <34.403324, 33.333763, 50.937428>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.905758, 33.741463, 51.341339> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.540337, 33.821346, 51.483063>,  <34.321083, 33.869278, 51.568096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.540337, 33.821346, 51.483063>,  <34.905758, 33.741463, 51.341339>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.540337, 33.821346, 51.483063> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354765, -0.034743, 0.934310,
		0.198899, 0.979239, -0.039109,
		-0.913554, 0.199708, 0.354310,
		34.266270, 33.881260, 51.589355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075905, 34.159946, 51.866886>,  <34.905758, 33.741463, 51.341339>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075905, 34.159946, 51.866886> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.684624, 34.098610, 51.922905>,  <34.449856, 34.061810, 51.956516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.684624, 34.098610, 51.922905>,  <35.075905, 34.159946, 51.866886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.684624, 34.098610, 51.922905> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137250, 0.028752, 0.990119,
		-0.155851, 0.987755, -0.007079,
		-0.978199, -0.153339, 0.140050,
		34.391163, 34.052608, 51.964920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.851669, 34.704742, 52.357601>,  <35.075905, 34.159946, 51.866886>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.851669, 34.704742, 52.357601> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.554039, 34.439850, 52.392933>,  <34.375462, 34.280914, 52.414131>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.554039, 34.439850, 52.392933>,  <34.851669, 34.704742, 52.357601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554039, 34.439850, 52.392933> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209303, -0.105501, 0.972143,
		-0.634461, 0.741838, 0.217108,
		-0.744078, -0.662228, 0.088333,
		34.330814, 34.241180, 52.419434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.467518, 34.903988, 53.015636>,  <34.851669, 34.704742, 52.357601>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.467518, 34.903988, 53.015636> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.387699, 34.520248, 52.935795>,  <34.339809, 34.290005, 52.887890>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.387699, 34.520248, 52.935795>,  <34.467518, 34.903988, 53.015636>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.387699, 34.520248, 52.935795> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270547, -0.249717, 0.929756,
		-0.941799, 0.131527, 0.309378,
		-0.199545, -0.959345, -0.199600,
		34.327835, 34.232445, 52.875916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.128643, 34.574364, 53.663715>,  <34.467518, 34.903988, 53.015636>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.128643, 34.574364, 53.663715> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.245449, 34.258179, 53.448349>,  <34.315533, 34.068466, 53.319130>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.245449, 34.258179, 53.448349>,  <34.128643, 34.574364, 53.663715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245449, 34.258179, 53.448349> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244196, -0.482677, 0.841065,
		-0.924715, -0.377080, 0.052081,
		0.292010, -0.790464, -0.538421,
		34.333054, 34.021038, 53.286823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.996948, 34.040363, 54.091869>,  <34.128643, 34.574364, 53.663715>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.996948, 34.040363, 54.091869> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.245941, 33.875957, 53.825462>,  <34.395336, 33.777313, 53.665619>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.245941, 33.875957, 53.825462>,  <33.996948, 34.040363, 54.091869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245941, 33.875957, 53.825462> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542760, -0.386383, 0.745734,
		-0.563848, -0.825695, -0.017432,
		0.622484, -0.411019, -0.666015,
		34.432686, 33.752651, 53.625656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.012711, 33.305828, 54.128811>,  <33.996948, 34.040363, 54.091869>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.012711, 33.305828, 54.128811> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.377193, 33.393654, 53.989388>,  <34.595882, 33.446350, 53.905735>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.377193, 33.393654, 53.989388>,  <34.012711, 33.305828, 54.128811>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377193, 33.393654, 53.989388> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410783, -0.420719, 0.808859,
		0.030957, -0.880219, -0.473558,
		0.911208, 0.219569, -0.348554,
		34.650555, 33.459526, 53.884823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<33.614532, 36.548237, 38.142132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.001667, 36.468636, 38.203709>,  <34.233948, 36.420876, 38.240654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.001667, 36.468636, 38.203709>,  <33.614532, 36.548237, 38.142132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.001667, 36.468636, 38.203709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178340, -0.111024, 0.977685,
		-0.177472, -0.973689, -0.142943,
		0.967832, -0.199005, 0.153944,
		34.292015, 36.408936, 38.249893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721123, 35.838924, 38.470825>,  <33.614532, 36.548237, 38.142132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721123, 35.838924, 38.470825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.979851, 36.117004, 38.596249>,  <34.135086, 36.283852, 38.671501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.979851, 36.117004, 38.596249>,  <33.721123, 35.838924, 38.470825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.979851, 36.117004, 38.596249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232232, -0.212077, 0.949258,
		0.726423, -0.686819, 0.024272,
		0.646821, 0.695201, 0.313559,
		34.173897, 36.325565, 38.690315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068207, 35.518131, 39.026714>,  <33.721123, 35.838924, 38.470825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068207, 35.518131, 39.026714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.119732, 35.907883, 39.100460>,  <34.150646, 36.141735, 39.144707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.119732, 35.907883, 39.100460>,  <34.068207, 35.518131, 39.026714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119732, 35.907883, 39.100460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001639, -0.186126, 0.982524,
		0.991668, -0.126256, -0.025572,
		0.128809, 0.974380, 0.184369,
		34.158375, 36.200195, 39.155769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.439709, 35.504658, 39.572392>,  <34.068207, 35.518131, 39.026714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.439709, 35.504658, 39.572392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.308315, 35.882427, 39.577541>,  <34.229481, 36.109089, 39.580631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.308315, 35.882427, 39.577541>,  <34.439709, 35.504658, 39.572392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308315, 35.882427, 39.577541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286403, -0.112590, 0.951471,
		0.900040, 0.308855, 0.307469,
		-0.328485, 0.944422, 0.012878,
		34.209770, 36.165752, 39.581406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714954, 35.806396, 40.164234>,  <34.439709, 35.504658, 39.572392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714954, 35.806396, 40.164234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.407406, 36.043476, 40.068279>,  <34.222878, 36.185722, 40.010708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.407406, 36.043476, 40.068279>,  <34.714954, 35.806396, 40.164234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.407406, 36.043476, 40.068279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321497, -0.034063, 0.946298,
		0.552695, 0.804706, 0.216740,
		-0.768874, 0.592695, -0.239884,
		34.176743, 36.221283, 39.996315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736313, 36.438854, 40.632195>,  <34.714954, 35.806396, 40.164234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736313, 36.438854, 40.632195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.352478, 36.419712, 40.521263>,  <34.122177, 36.408226, 40.454704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.352478, 36.419712, 40.521263>,  <34.736313, 36.438854, 40.632195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.352478, 36.419712, 40.521263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279506, 0.047194, 0.958983,
		-0.032802, 0.997739, -0.058662,
		-0.959583, -0.047853, -0.277326,
		34.064602, 36.405357, 40.438065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450161, 37.048470, 41.210186>,  <34.736313, 36.438854, 40.632195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450161, 37.048470, 41.210186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.126492, 36.915974, 41.016068>,  <33.932289, 36.836475, 40.899597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.126492, 36.915974, 41.016068>,  <34.450161, 37.048470, 41.210186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.126492, 36.915974, 41.016068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491426, -0.071226, 0.868002,
		-0.322085, 0.940853, -0.105148,
		-0.809173, -0.331243, -0.485301,
		33.883739, 36.816601, 40.870476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923790, 37.461639, 41.294758>,  <34.450161, 37.048470, 41.210186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923790, 37.461639, 41.294758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739010, 37.115681, 41.216221>,  <33.628143, 36.908104, 41.169098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739010, 37.115681, 41.216221>,  <33.923790, 37.461639, 41.294758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739010, 37.115681, 41.216221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477992, 0.056307, 0.876557,
		-0.747078, 0.498777, -0.439426,
		-0.461950, -0.864899, -0.196346,
		33.600426, 36.856213, 41.157318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.333435, 37.631855, 41.519119>,  <33.923790, 37.461639, 41.294758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.333435, 37.631855, 41.519119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.372925, 37.233982, 41.507420>,  <33.396618, 36.995258, 41.500401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.372925, 37.233982, 41.507420>,  <33.333435, 37.631855, 41.519119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.372925, 37.233982, 41.507420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339118, -0.061259, 0.938747,
		-0.935549, -0.082761, -0.343363,
		0.098725, -0.994685, -0.029245,
		33.402542, 36.935577, 41.498646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.764683, 37.370968, 41.876114>,  <33.333435, 37.631855, 41.519119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.764683, 37.370968, 41.876114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.013248, 37.057980, 41.860184>,  <33.162388, 36.870186, 41.850624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.013248, 37.057980, 41.860184>,  <32.764683, 37.370968, 41.876114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.013248, 37.057980, 41.860184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168494, -0.183108, 0.968546,
		-0.765151, -0.595157, -0.245628,
		0.621413, -0.782470, -0.039825,
		33.199673, 36.823238, 41.848236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423695, 36.780712, 42.154881>,  <32.764683, 37.370968, 41.876114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423695, 36.780712, 42.154881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.810589, 36.683002, 42.182571>,  <33.042725, 36.624378, 42.199184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.810589, 36.683002, 42.182571>,  <32.423695, 36.780712, 42.154881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.810589, 36.683002, 42.182571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121178, -0.204569, 0.971322,
		-0.223118, -0.947880, -0.227467,
		0.967230, -0.244283, 0.069219,
		33.100758, 36.609722, 42.203339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.542118, 36.007668, 42.470032>,  <32.423695, 36.780712, 42.154881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.542118, 36.007668, 42.470032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.843624, 36.257923, 42.550438>,  <33.024529, 36.408077, 42.598682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.843624, 36.257923, 42.550438>,  <32.542118, 36.007668, 42.470032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.843624, 36.257923, 42.550438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100347, -0.192726, 0.976108,
		0.649434, -0.755931, -0.082490,
		0.753768, 0.625640, 0.201019,
		33.069756, 36.445614, 42.610744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933239, 35.380924, 42.524319>,  <32.542118, 36.007668, 42.470032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.933239, 35.380924, 42.524319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.671143, 35.085495, 42.460857>,  <32.513885, 34.908237, 42.422779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.671143, 35.085495, 42.460857>,  <32.933239, 35.380924, 42.524319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.671143, 35.085495, 42.460857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121443, 0.310277, -0.942857,
		0.745591, -0.598535, -0.293001,
		-0.655244, -0.738569, -0.158652,
		32.474567, 34.863926, 42.413261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.215763, 35.115292, 41.929432>,  <32.933239, 35.380924, 42.524319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.215763, 35.115292, 41.929432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.834221, 34.996780, 41.948910>,  <32.605293, 34.925674, 41.960598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.834221, 34.996780, 41.948910>,  <33.215763, 35.115292, 41.929432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.834221, 34.996780, 41.948910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151737, 0.335720, -0.929660,
		0.259087, -0.894155, -0.365186,
		-0.953861, -0.296275, 0.048696,
		32.548061, 34.907898, 41.963520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.082619, 34.828125, 41.297810>,  <33.215763, 35.115292, 41.929432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.082619, 34.828125, 41.297810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.716846, 34.891052, 41.446980>,  <32.497383, 34.928810, 41.536480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.716846, 34.891052, 41.446980>,  <33.082619, 34.828125, 41.297810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716846, 34.891052, 41.446980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338439, 0.208135, -0.917681,
		-0.221988, -0.965365, -0.137082,
		-0.914429, 0.157320, 0.372921,
		32.442516, 34.938248, 41.558857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.597118, 34.224262, 41.151550>,  <33.082619, 34.828125, 41.297810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.597118, 34.224262, 41.151550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.356937, 34.541389, 41.193317>,  <32.212830, 34.731667, 41.218376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.356937, 34.541389, 41.193317>,  <32.597118, 34.224262, 41.151550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.356937, 34.541389, 41.193317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106376, 0.050222, -0.993057,
		-0.792553, -0.607391, 0.054181,
		-0.600452, 0.792814, 0.104415,
		32.176800, 34.779232, 41.224644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.965313, 33.995731, 40.779083>,  <32.597118, 34.224262, 41.151550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.965313, 33.995731, 40.779083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.947872, 34.395088, 40.793560>,  <31.937407, 34.634701, 40.802246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.947872, 34.395088, 40.793560>,  <31.965313, 33.995731, 40.779083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.947872, 34.395088, 40.793560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308381, 0.021011, -0.951031,
		-0.950263, -0.052631, 0.306970,
		-0.043604, 0.998393, 0.036196,
		31.934792, 34.694607, 40.804420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.338137, 34.099312, 40.453983>,  <31.965313, 33.995731, 40.779083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.338137, 34.099312, 40.453983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.537338, 34.445911, 40.440235>,  <31.656858, 34.653870, 40.431988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.537338, 34.445911, 40.440235>,  <31.338137, 34.099312, 40.453983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.537338, 34.445911, 40.440235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229488, 0.093465, -0.968813,
		-0.836259, 0.490359, 0.245396,
		0.498002, 0.866494, -0.034371,
		31.686739, 34.705860, 40.429924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.975517, 34.462845, 39.975891>,  <31.338137, 34.099312, 40.453983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.975517, 34.462845, 39.975891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.322315, 34.661709, 39.989494>,  <31.530394, 34.781025, 39.997658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.322315, 34.661709, 39.989494>,  <30.975517, 34.462845, 39.975891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.322315, 34.661709, 39.989494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115785, 0.267362, -0.956615,
		-0.484682, 0.825440, 0.289364,
		0.866993, 0.497158, 0.034012,
		31.582413, 34.810856, 39.999699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.846464, 35.138645, 39.627457>,  <30.975517, 34.462845, 39.975891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.846464, 35.138645, 39.627457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.230776, 35.029217, 39.609291>,  <31.461363, 34.963562, 39.598392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.230776, 35.029217, 39.609291>,  <30.846464, 35.138645, 39.627457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.230776, 35.029217, 39.609291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017187, 0.104693, -0.994356,
		0.276776, 0.956138, 0.095885,
		0.960781, -0.273566, -0.045410,
		31.519011, 34.947147, 39.595669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.212126, 35.650837, 39.105682>,  <30.846464, 35.138645, 39.627457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.212126, 35.650837, 39.105682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.459810, 35.337532, 39.127884>,  <31.608421, 35.149548, 39.141205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.459810, 35.337532, 39.127884>,  <31.212126, 35.650837, 39.105682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.459810, 35.337532, 39.127884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186347, 0.077921, -0.979389,
		0.762793, 0.616790, 0.194208,
		0.619210, -0.783262, 0.055499,
		31.645573, 35.102554, 39.144535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.703442, 35.877663, 38.693180>,  <31.212126, 35.650837, 39.105682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.703442, 35.877663, 38.693180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.806463, 35.493214, 38.732983>,  <31.868277, 35.262543, 38.756863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.806463, 35.493214, 38.732983>,  <31.703442, 35.877663, 38.693180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.806463, 35.493214, 38.732983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236071, -0.037271, -0.971021,
		0.936983, 0.273582, 0.217295,
		0.257555, -0.961127, 0.099507,
		31.883730, 35.204876, 38.762836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359840, 35.753082, 38.405537>,  <31.703442, 35.877663, 38.693180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.359840, 35.753082, 38.405537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182350, 35.394627, 38.403217>,  <32.075855, 35.179554, 38.401825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182350, 35.394627, 38.403217>,  <32.359840, 35.753082, 38.405537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.182350, 35.394627, 38.403217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186075, -0.085800, -0.978782,
		0.876632, -0.435391, 0.204822,
		-0.443726, -0.896143, -0.005800,
		32.049232, 35.125782, 38.401478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.807762, 35.346603, 38.002899>,  <32.359840, 35.753082, 38.405537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.807762, 35.346603, 38.002899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478855, 35.118977, 38.000771>,  <32.281509, 34.982399, 37.999493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478855, 35.118977, 38.000771>,  <32.807762, 35.346603, 38.002899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.478855, 35.118977, 38.000771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143709, -0.198591, -0.969489,
		0.550652, -0.797947, 0.245076,
		-0.822271, -0.569071, -0.005318,
		32.232174, 34.948254, 37.999176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.968075, 34.780575, 37.631367>,  <32.807762, 35.346603, 38.002899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.968075, 34.780575, 37.631367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568089, 34.782852, 37.629036>,  <32.328098, 34.784218, 37.627640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568089, 34.782852, 37.629036>,  <32.968075, 34.780575, 37.631367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.568089, 34.782852, 37.629036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005011, -0.133337, -0.991058,
		-0.006418, -0.991054, 0.133304,
		-0.999967, 0.005693, -0.005822,
		32.268097, 34.784561, 37.627289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882713, 34.250599, 37.294270>,  <32.968075, 34.780575, 37.631367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.882713, 34.250599, 37.294270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.559395, 34.479198, 37.237629>,  <32.365406, 34.616360, 37.203644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.559395, 34.479198, 37.237629>,  <32.882713, 34.250599, 37.294270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.559395, 34.479198, 37.237629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020811, -0.212623, -0.976913,
		-0.588415, -0.792577, 0.159968,
		-0.808291, 0.571501, -0.141605,
		32.316906, 34.650650, 37.195148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.134911, 33.595058, 36.802425>,  <32.882713, 34.250599, 37.294270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.134911, 33.595058, 36.802425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.012074, 33.340294, 36.519573>,  <32.938370, 33.187435, 36.349861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.012074, 33.340294, 36.519573>,  <33.134911, 33.595058, 36.802425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.012074, 33.340294, 36.519573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948916, -0.148348, -0.278479,
		0.072465, -0.756529, 0.649933,
		-0.307094, -0.636912, -0.707133,
		32.919945, 33.149220, 36.307434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.611736, 32.944656, 36.707222>,  <33.134911, 33.595058, 36.802425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.611736, 32.944656, 36.707222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.448914, 33.043747, 36.355553>,  <33.351219, 33.103203, 36.144550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.448914, 33.043747, 36.355553>,  <33.611736, 32.944656, 36.707222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.448914, 33.043747, 36.355553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887316, -0.121154, -0.444964,
		-0.216744, -0.961225, -0.170497,
		-0.407054, 0.247728, -0.879169,
		33.326797, 33.118065, 36.091801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.371220, 32.479916, 37.210300>,  <33.611736, 32.944656, 36.707222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.371220, 32.479916, 37.210300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.763847, 32.499592, 37.136444>,  <33.999424, 32.511398, 37.092129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.763847, 32.499592, 37.136444>,  <33.371220, 32.479916, 37.210300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.763847, 32.499592, 37.136444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174425, 0.163942, 0.970927,
		0.078030, -0.985243, 0.152341,
		0.981574, 0.049189, -0.184643,
		34.058319, 32.514347, 37.081051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669456, 31.990297, 37.571465>,  <33.371220, 32.479916, 37.210300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669456, 31.990297, 37.571465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960842, 32.258492, 37.515190>,  <34.135674, 32.419407, 37.481426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960842, 32.258492, 37.515190>,  <33.669456, 31.990297, 37.571465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960842, 32.258492, 37.515190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172927, 0.018747, 0.984756,
		0.662903, -0.741685, -0.102289,
		0.728461, 0.670486, -0.140685,
		34.179382, 32.459637, 37.472984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.229721, 31.753147, 38.056049>,  <33.669456, 31.990297, 37.571465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.229721, 31.753147, 38.056049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.308376, 32.134323, 37.963749>,  <34.355568, 32.363029, 37.908371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.308376, 32.134323, 37.963749>,  <34.229721, 31.753147, 38.056049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308376, 32.134323, 37.963749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252411, 0.178211, 0.951068,
		0.947430, -0.245255, -0.205490,
		0.196634, 0.952938, -0.230748,
		34.367367, 32.420204, 37.894524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.797821, 31.826618, 38.412617>,  <34.229721, 31.753147, 38.056049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.797821, 31.826618, 38.412617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.623070, 32.179115, 38.340446>,  <34.518219, 32.390614, 38.297146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.623070, 32.179115, 38.340446>,  <34.797821, 31.826618, 38.412617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623070, 32.179115, 38.340446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036971, 0.218000, 0.975248,
		0.898763, 0.419390, -0.127819,
		-0.436874, 0.881243, -0.180424,
		34.492008, 32.443489, 38.286320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127747, 32.308681, 38.786800>,  <34.797821, 31.826618, 38.412617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.127747, 32.308681, 38.786800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.780087, 32.493340, 38.715855>,  <34.571491, 32.604134, 38.673286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.780087, 32.493340, 38.715855>,  <35.127747, 32.308681, 38.786800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.780087, 32.493340, 38.715855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046240, 0.281209, 0.958532,
		0.492375, 0.841313, -0.223068,
		-0.869154, 0.461642, -0.177363,
		34.519341, 32.631832, 38.662647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176643, 32.914600, 39.234451>,  <35.127747, 32.308681, 38.786800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.176643, 32.914600, 39.234451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792740, 32.872593, 39.130276>,  <34.562397, 32.847389, 39.067772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792740, 32.872593, 39.130276>,  <35.176643, 32.914600, 39.234451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792740, 32.872593, 39.130276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278900, 0.248438, 0.927628,
		-0.032715, 0.962938, -0.267731,
		-0.959763, -0.105018, -0.260436,
		34.504810, 32.841087, 39.052147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.823162, 33.574100, 39.419930>,  <35.176643, 32.914600, 39.234451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.823162, 33.574100, 39.419930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.559605, 33.273956, 39.398659>,  <34.401470, 33.093872, 39.385895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.559605, 33.273956, 39.398659>,  <34.823162, 33.574100, 39.419930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.559605, 33.273956, 39.398659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261793, 0.162458, 0.951353,
		-0.705216, 0.640757, -0.303481,
		-0.658889, -0.750358, -0.053178,
		34.361938, 33.048847, 39.382706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233696, 33.781818, 39.837841>,  <34.823162, 33.574100, 39.419930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233696, 33.781818, 39.837841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.170143, 33.388908, 39.798061>,  <34.132011, 33.153164, 39.774193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.170143, 33.388908, 39.798061>,  <34.233696, 33.781818, 39.837841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.170143, 33.388908, 39.798061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352842, -0.037582, 0.934928,
		-0.922095, 0.183633, -0.340617,
		-0.158882, -0.982276, -0.099448,
		34.122478, 33.094227, 39.768227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.597309, 33.618473, 40.347797>,  <34.233696, 33.781818, 39.837841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.597309, 33.618473, 40.347797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.767590, 33.263554, 40.276821>,  <33.869759, 33.050602, 40.234238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.767590, 33.263554, 40.276821>,  <33.597309, 33.618473, 40.347797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.767590, 33.263554, 40.276821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248256, -0.303094, 0.920056,
		-0.870143, -0.347618, -0.349303,
		0.425700, -0.887297, -0.177437,
		33.895298, 32.997364, 40.223591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.168503, 33.238415, 40.559872>,  <33.597309, 33.618473, 40.347797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.168503, 33.238415, 40.559872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.508190, 33.027550, 40.547714>,  <33.712002, 32.901031, 40.540421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.508190, 33.027550, 40.547714>,  <33.168503, 33.238415, 40.559872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.508190, 33.027550, 40.547714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214989, -0.397751, 0.891950,
		-0.482297, -0.750924, -0.451112,
		0.849217, -0.527169, -0.030394,
		33.762955, 32.869400, 40.538597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926884, 32.486885, 40.740658>,  <33.168503, 33.238415, 40.559872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.926884, 32.486885, 40.740658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.322620, 32.500832, 40.797215>,  <33.560062, 32.509197, 40.831150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.322620, 32.500832, 40.797215>,  <32.926884, 32.486885, 40.740658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.322620, 32.500832, 40.797215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112340, -0.435132, 0.893331,
		0.092669, -0.899691, -0.426577,
		0.989339, 0.034863, 0.141395,
		33.619423, 32.511292, 40.839634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.045025, 31.954182, 41.089760>,  <32.926884, 32.486885, 40.740658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.045025, 31.954182, 41.089760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.384285, 32.142044, 41.187798>,  <33.587841, 32.254761, 41.246620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.384285, 32.142044, 41.187798>,  <33.045025, 31.954182, 41.089760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.384285, 32.142044, 41.187798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092554, -0.586896, 0.804355,
		0.521615, -0.659526, -0.541242,
		0.848146, 0.469658, 0.245092,
		33.638729, 32.282940, 41.261326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.575462, 31.442368, 41.254986>,  <33.045025, 31.954182, 41.089760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.575462, 31.442368, 41.254986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.691177, 31.771036, 41.451420>,  <33.760609, 31.968237, 41.569283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.691177, 31.771036, 41.451420>,  <33.575462, 31.442368, 41.254986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.691177, 31.771036, 41.451420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250573, -0.560136, 0.789595,
		0.923864, -0.105369, -0.367931,
		0.289290, 0.821672, 0.491087,
		33.777966, 32.017536, 41.598747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178635, 31.219425, 41.538425>,  <33.575462, 31.442368, 41.254986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.178635, 31.219425, 41.538425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.089100, 31.548187, 41.747948>,  <34.035378, 31.745443, 41.873661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.089100, 31.548187, 41.747948>,  <34.178635, 31.219425, 41.538425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.089100, 31.548187, 41.747948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408820, -0.408696, 0.815986,
		0.884739, 0.396791, -0.244529,
		-0.223838, 0.821903, 0.523805,
		34.021950, 31.794758, 41.905090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785465, 31.319279, 42.020233>,  <34.178635, 31.219425, 41.538425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.785465, 31.319279, 42.020233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458809, 31.515106, 42.142494>,  <34.262817, 31.632603, 42.215851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458809, 31.515106, 42.142494>,  <34.785465, 31.319279, 42.020233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.458809, 31.515106, 42.142494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226272, -0.215610, 0.949902,
		0.530945, 0.844887, 0.065299,
		-0.816638, 0.489570, 0.305651,
		34.213818, 31.661978, 42.234188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044163, 31.678293, 42.621326>,  <34.785465, 31.319279, 42.020233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.044163, 31.678293, 42.621326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.645451, 31.681646, 42.653206>,  <34.406223, 31.683659, 42.672333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.645451, 31.681646, 42.653206>,  <35.044163, 31.678293, 42.621326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.645451, 31.681646, 42.653206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071360, -0.359683, 0.930342,
		0.036462, 0.933037, 0.357929,
		-0.996784, 0.008380, 0.079696,
		34.346416, 31.684160, 42.677116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.925900, 32.105095, 43.208191>,  <35.044163, 31.678293, 42.621326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.925900, 32.105095, 43.208191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.605755, 31.871449, 43.154186>,  <34.413670, 31.731260, 43.121784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.605755, 31.871449, 43.154186>,  <34.925900, 32.105095, 43.208191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605755, 31.871449, 43.154186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043574, -0.281288, 0.958634,
		-0.597932, 0.761370, 0.250584,
		-0.800361, -0.584117, -0.135015,
		34.365646, 31.696213, 43.113682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.579880, 32.007999, 43.863941>,  <34.925900, 32.105095, 43.208191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.579880, 32.007999, 43.863941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.370537, 31.730453, 43.666092>,  <34.244930, 31.563927, 43.547382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.370537, 31.730453, 43.666092>,  <34.579880, 32.007999, 43.863941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.370537, 31.730453, 43.666092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172101, -0.482432, 0.858860,
		-0.834551, 0.534618, 0.133071,
		-0.523360, -0.693861, -0.494623,
		34.213528, 31.522295, 43.517704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916142, 31.816591, 44.276398>,  <34.579880, 32.007999, 43.863941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.916142, 31.816591, 44.276398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.991753, 31.511198, 44.029381>,  <34.037121, 31.327961, 43.881172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.991753, 31.511198, 44.029381>,  <33.916142, 31.816591, 44.276398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.991753, 31.511198, 44.029381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217619, -0.645813, 0.731825,
		-0.957554, -0.003946, -0.288225,
		0.189028, -0.763485, -0.617542,
		34.048462, 31.282152, 43.844116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.323162, 31.476929, 44.378098>,  <33.916142, 31.816591, 44.276398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.323162, 31.476929, 44.378098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.621288, 31.230108, 44.277103>,  <33.800163, 31.082016, 44.216507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.621288, 31.230108, 44.277103>,  <33.323162, 31.476929, 44.378098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.621288, 31.230108, 44.277103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202522, -0.570349, 0.796045,
		-0.635205, -0.542172, -0.550058,
		0.745318, -0.617051, -0.252487,
		33.844883, 31.044992, 44.201359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.135990, 30.733402, 44.586151>,  <33.323162, 31.476929, 44.378098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.135990, 30.733402, 44.586151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532005, 30.711092, 44.534439>,  <33.769615, 30.697706, 44.503410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532005, 30.711092, 44.534439>,  <33.135990, 30.733402, 44.586151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532005, 30.711092, 44.534439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051858, -0.709205, 0.703093,
		-0.130901, -0.702793, -0.699248,
		0.990038, -0.055774, -0.129281,
		33.829018, 30.694361, 44.495655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.375378, 29.999458, 44.622494>,  <33.135990, 30.733402, 44.586151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.375378, 29.999458, 44.622494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702606, 30.212320, 44.709736>,  <33.898945, 30.340036, 44.762081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702606, 30.212320, 44.709736>,  <33.375378, 29.999458, 44.622494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.702606, 30.212320, 44.709736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173825, -0.590290, 0.788253,
		0.548218, -0.606935, -0.575402,
		0.818072, 0.532153, 0.218107,
		33.948029, 30.371967, 44.775169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747768, 29.522717, 44.974113>,  <33.375378, 29.999458, 44.622494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.747768, 29.522717, 44.974113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.948589, 29.854742, 45.071220>,  <34.069080, 30.053957, 45.129486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.948589, 29.854742, 45.071220>,  <33.747768, 29.522717, 44.974113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948589, 29.854742, 45.071220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253200, -0.409488, 0.876476,
		0.826942, -0.378568, -0.415756,
		0.502053, 0.830064, 0.242770,
		34.099205, 30.103762, 45.144051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409607, 29.289406, 45.108662>,  <33.747768, 29.522717, 44.974113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409607, 29.289406, 45.108662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377666, 29.625494, 45.323196>,  <34.358501, 29.827147, 45.451916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377666, 29.625494, 45.323196>,  <34.409607, 29.289406, 45.108662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377666, 29.625494, 45.323196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368960, -0.474922, 0.798948,
		0.926009, 0.261685, -0.272082,
		-0.079855, 0.840220, 0.536334,
		34.353710, 29.877560, 45.484097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995338, 29.263414, 45.556923>,  <34.409607, 29.289406, 45.108662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995338, 29.263414, 45.556923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.759361, 29.539209, 45.725006>,  <34.617775, 29.704685, 45.825855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.759361, 29.539209, 45.725006>,  <34.995338, 29.263414, 45.556923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759361, 29.539209, 45.725006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239660, -0.347439, 0.906559,
		0.771055, 0.635528, 0.039728,
		-0.589946, 0.689486, 0.420205,
		34.582378, 29.746056, 45.851067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378166, 29.472633, 46.112637>,  <34.995338, 29.263414, 45.556923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.378166, 29.472633, 46.112637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.005421, 29.590168, 46.197758>,  <34.781773, 29.660688, 46.248829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.005421, 29.590168, 46.197758>,  <35.378166, 29.472633, 46.112637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.005421, 29.590168, 46.197758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085588, -0.391950, 0.915997,
		0.352561, 0.871800, 0.340096,
		-0.931867, 0.293837, 0.212801,
		34.725861, 29.678320, 46.261597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014954, 29.681969, 46.355091>,  <35.378166, 29.472633, 46.112637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014954, 29.681969, 46.355091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.381054, 29.717794, 46.512215>,  <36.600712, 29.739290, 46.606487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.381054, 29.717794, 46.512215>,  <36.014954, 29.681969, 46.355091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381054, 29.717794, 46.512215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385723, 0.086767, -0.918525,
		-0.116348, 0.992195, 0.044868,
		0.915249, 0.089562, 0.392808,
		36.655628, 29.744663, 46.630058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.280197, 30.270447, 46.102802>,  <36.014954, 29.681969, 46.355091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.280197, 30.270447, 46.102802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.603500, 30.056496, 46.201286>,  <36.797482, 29.928125, 46.260376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.603500, 30.056496, 46.201286>,  <36.280197, 30.270447, 46.102802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603500, 30.056496, 46.201286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357478, 0.113475, -0.927002,
		0.467894, 0.837275, 0.282925,
		0.808260, -0.534878, 0.246213,
		36.845978, 29.896032, 46.275150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.827763, 30.627413, 45.927433>,  <36.280197, 30.270447, 46.102802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.827763, 30.627413, 45.927433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.940620, 30.243679, 45.924160>,  <37.008335, 30.013439, 45.922195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.940620, 30.243679, 45.924160>,  <36.827763, 30.627413, 45.927433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.940620, 30.243679, 45.924160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327588, 0.104354, -0.939040,
		0.901709, 0.262266, 0.343710,
		0.282146, -0.959337, -0.008182,
		37.025265, 29.955877, 45.921707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.514297, 30.637560, 45.819618>,  <36.827763, 30.627413, 45.927433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.514297, 30.637560, 45.819618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.369236, 30.283009, 45.704506>,  <37.282200, 30.070278, 45.635437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.369236, 30.283009, 45.704506>,  <37.514297, 30.637560, 45.819618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369236, 30.283009, 45.704506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368838, 0.147070, -0.917785,
		0.855828, -0.438982, 0.273594,
		-0.362653, -0.886377, -0.287780,
		37.260441, 30.017096, 45.618172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959251, 30.432577, 45.268177>,  <37.514297, 30.637560, 45.819618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.959251, 30.432577, 45.268177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.642513, 30.191624, 45.227955>,  <37.452469, 30.047050, 45.203823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.642513, 30.191624, 45.227955>,  <37.959251, 30.432577, 45.268177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642513, 30.191624, 45.227955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100506, 0.033872, -0.994360,
		0.602393, -0.797487, 0.033721,
		-0.791847, -0.602384, -0.100556,
		37.404961, 30.010908, 45.197788>
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
