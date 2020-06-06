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
	<24.240913, 34.710461, 35.454731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.379211, 34.812870, 35.093639>,  <24.462191, 34.874317, 34.876984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.379211, 34.812870, 35.093639>,  <24.240913, 34.710461, 35.454731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.379211, 34.812870, 35.093639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006031, 0.962643, 0.270707,
		0.938309, -0.088151, 0.334373,
		0.345744, 0.256023, -0.902725,
		24.482935, 34.889675, 34.822823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.882772, 35.112221, 35.460510>,  <24.240913, 34.710461, 35.454731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.882772, 35.112221, 35.460510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.660484, 35.210167, 35.142715>,  <24.527111, 35.268936, 34.952038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.660484, 35.210167, 35.142715>,  <24.882772, 35.112221, 35.460510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.660484, 35.210167, 35.142715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018738, 0.959088, 0.282487,
		0.831159, 0.142097, -0.537573,
		-0.555720, 0.244864, -0.794492,
		24.493769, 35.283627, 34.904369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.126230, 35.677841, 35.980644>,  <24.882772, 35.112221, 35.460510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.126230, 35.677841, 35.980644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.489796, 35.652092, 36.145435>,  <25.707935, 35.636642, 36.244312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.489796, 35.652092, 36.145435>,  <25.126230, 35.677841, 35.980644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.489796, 35.652092, 36.145435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387439, 0.234884, 0.891471,
		-0.154160, -0.969889, 0.188547,
		0.908915, -0.064379, 0.411983,
		25.762470, 35.632778, 36.269032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.143475, 35.509026, 36.720959>,  <25.126230, 35.677841, 35.980644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.143475, 35.509026, 36.720959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.514103, 35.659241, 36.712608>,  <25.736481, 35.749371, 36.707600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.514103, 35.659241, 36.712608>,  <25.143475, 35.509026, 36.720959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.514103, 35.659241, 36.712608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144065, 0.405636, 0.902610,
		0.347426, -0.833328, 0.429953,
		0.926574, 0.375532, -0.020875,
		25.792074, 35.771900, 36.706345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.463165, 35.304344, 37.363220>,  <25.143475, 35.509026, 36.720959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.463165, 35.304344, 37.363220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.663654, 35.623596, 37.229492>,  <25.783947, 35.815147, 37.149254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.663654, 35.623596, 37.229492>,  <25.463165, 35.304344, 37.363220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.663654, 35.623596, 37.229492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064338, 0.419660, 0.905399,
		0.862924, -0.432296, 0.261692,
		0.501221, 0.798127, -0.334321,
		25.814020, 35.863033, 37.129196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.028156, 35.405018, 37.855556>,  <25.463165, 35.304344, 37.363220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.028156, 35.405018, 37.855556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.913782, 35.734306, 37.659378>,  <25.845158, 35.931881, 37.541672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.913782, 35.734306, 37.659378>,  <26.028156, 35.405018, 37.855556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.913782, 35.734306, 37.659378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133858, 0.472487, 0.871113,
		0.948854, 0.314732, -0.024905,
		-0.285934, 0.823225, -0.490451,
		25.828001, 35.981274, 37.512241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.513752, 35.920364, 38.043530>,  <26.028156, 35.405018, 37.855556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.513752, 35.920364, 38.043530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.179403, 36.116703, 37.945229>,  <25.978794, 36.234505, 37.886250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.179403, 36.116703, 37.945229>,  <26.513752, 35.920364, 38.043530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.179403, 36.116703, 37.945229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021595, 0.417937, 0.908220,
		0.548503, 0.764460, -0.338741,
		-0.835870, 0.490846, -0.245748,
		25.928642, 36.263958, 37.871506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.566406, 36.695160, 37.997337>,  <26.513752, 35.920364, 38.043530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.566406, 36.695160, 37.997337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.195076, 36.589363, 38.101837>,  <25.972277, 36.525887, 38.164536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.195076, 36.589363, 38.101837>,  <26.566406, 36.695160, 37.997337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.195076, 36.589363, 38.101837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027963, 0.651064, 0.758508,
		-0.370709, 0.711449, -0.597005,
		-0.928328, -0.264492, 0.261250,
		25.916578, 36.510017, 38.180214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.262039, 37.309765, 38.302116>,  <26.566406, 36.695160, 37.997337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.262039, 37.309765, 38.302116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.004549, 37.028156, 38.422100>,  <25.850056, 36.859192, 38.494091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.004549, 37.028156, 38.422100>,  <26.262039, 37.309765, 38.302116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.004549, 37.028156, 38.422100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091028, 0.459627, 0.883435,
		-0.759824, 0.541384, -0.359959,
		-0.643724, -0.704021, 0.299955,
		25.811432, 36.816948, 38.512085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.708242, 37.657314, 38.623150>,  <26.262039, 37.309765, 38.302116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.708242, 37.657314, 38.623150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.689163, 37.298828, 38.799568>,  <25.677715, 37.083736, 38.905418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.689163, 37.298828, 38.799568>,  <25.708242, 37.657314, 38.623150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.689163, 37.298828, 38.799568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051723, 0.438744, 0.897122,
		-0.997522, 0.065604, 0.025428,
		-0.047698, -0.896214, 0.441050,
		25.674854, 37.029964, 38.931885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.168474, 37.716602, 39.210995>,  <25.708242, 37.657314, 38.623150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.168474, 37.716602, 39.210995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.419157, 37.418133, 39.300850>,  <25.569567, 37.239052, 39.354763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.419157, 37.418133, 39.300850>,  <25.168474, 37.716602, 39.210995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.419157, 37.418133, 39.300850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131613, 0.385491, 0.913277,
		-0.768059, -0.542792, 0.339797,
		0.626708, -0.746172, 0.224642,
		25.607170, 37.194283, 39.368244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.020454, 37.138508, 39.778919>,  <25.168474, 37.716602, 39.210995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.020454, 37.138508, 39.778919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.359993, 37.346462, 39.740585>,  <25.563715, 37.471233, 39.717587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.359993, 37.346462, 39.740585>,  <25.020454, 37.138508, 39.778919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.359993, 37.346462, 39.740585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169499, 0.439372, 0.882169,
		0.500733, -0.732580, 0.461079,
		0.848844, 0.519883, -0.095837,
		25.614647, 37.502426, 39.711834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.389109, 37.183708, 40.367195>,  <25.020454, 37.138508, 39.778919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.389109, 37.183708, 40.367195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.577295, 37.502281, 40.215218>,  <25.690207, 37.693424, 40.124031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.577295, 37.502281, 40.215218>,  <25.389109, 37.183708, 40.367195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.577295, 37.502281, 40.215218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033988, 0.413897, 0.909689,
		0.881764, -0.440890, 0.167655,
		0.470465, 0.796433, -0.379944,
		25.718435, 37.741211, 40.101234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.056271, 37.310406, 40.699673>,  <25.389109, 37.183708, 40.367195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.056271, 37.310406, 40.699673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.862560, 37.640167, 40.582485>,  <25.746334, 37.838024, 40.512173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.862560, 37.640167, 40.582485>,  <26.056271, 37.310406, 40.699673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.862560, 37.640167, 40.582485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118738, 0.269829, 0.955559,
		0.866821, 0.497540, -0.032783,
		-0.484275, 0.824407, -0.292970,
		25.717278, 37.887489, 40.494595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.589657, 37.497036, 40.194988>,  <26.056271, 37.310406, 40.699673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.589657, 37.497036, 40.194988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.309397, 37.211960, 40.208656>,  <26.141241, 37.040916, 40.216858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.309397, 37.211960, 40.208656>,  <26.589657, 37.497036, 40.194988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.309397, 37.211960, 40.208656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142526, -0.186722, -0.972019,
		0.699125, -0.676176, 0.232402,
		-0.700651, -0.712686, 0.034169,
		26.099201, 36.998154, 40.218906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.814058, 36.907608, 39.806717>,  <26.589657, 37.497036, 40.194988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.814058, 36.907608, 39.806717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.414436, 36.924831, 39.809017>,  <26.174664, 36.935165, 39.810398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.414436, 36.924831, 39.809017>,  <26.814058, 36.907608, 39.806717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.414436, 36.924831, 39.809017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025493, -0.474016, -0.880147,
		-0.035175, -0.879463, 0.474667,
		-0.999056, 0.043059, 0.005747,
		26.114719, 36.937748, 39.810741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.479158, 36.210918, 39.625927>,  <26.814058, 36.907608, 39.806717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.479158, 36.210918, 39.625927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.185930, 36.477242, 39.570347>,  <26.009993, 36.637035, 39.536999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.185930, 36.477242, 39.570347>,  <26.479158, 36.210918, 39.625927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.185930, 36.477242, 39.570347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266958, -0.469562, -0.841573,
		-0.625572, -0.579839, 0.521964,
		-0.733071, 0.665807, -0.138952,
		25.966009, 36.676983, 39.528660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.938292, 35.801430, 39.391342>,  <26.479158, 36.210918, 39.625927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.938292, 35.801430, 39.391342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.861231, 36.173138, 39.265266>,  <25.814995, 36.396164, 39.189621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.861231, 36.173138, 39.265266>,  <25.938292, 35.801430, 39.391342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.861231, 36.173138, 39.265266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438641, -0.368883, -0.819463,
		-0.877770, -0.019614, 0.478681,
		-0.192651, 0.929269, -0.315191,
		25.803436, 36.451920, 39.170708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.226410, 35.894020, 39.177979>,  <25.938292, 35.801430, 39.391342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.226410, 35.894020, 39.177979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.412672, 36.167156, 38.952805>,  <25.524429, 36.331039, 38.817699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.412672, 36.167156, 38.952805>,  <25.226410, 35.894020, 39.177979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.412672, 36.167156, 38.952805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300074, -0.476591, -0.826327,
		-0.832538, 0.553706, -0.017025,
		0.465656, 0.682840, -0.562933,
		25.552368, 36.372009, 38.783924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.767673, 36.147449, 38.728184>,  <25.226410, 35.894020, 39.177979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.767673, 36.147449, 38.728184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.102388, 36.253410, 38.536510>,  <25.303217, 36.316986, 38.421509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.102388, 36.253410, 38.536510>,  <24.767673, 36.147449, 38.728184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.102388, 36.253410, 38.536510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329350, -0.455608, -0.827012,
		-0.437394, 0.849852, -0.294003,
		0.836788, 0.264900, -0.479179,
		25.353424, 36.332882, 38.392757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.739500, 36.383797, 38.023098>,  <24.767673, 36.147449, 38.728184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.739500, 36.383797, 38.023098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.095472, 36.565887, 38.034367>,  <25.309055, 36.675140, 38.041126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.095472, 36.565887, 38.034367>,  <24.739500, 36.383797, 38.023098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.095472, 36.565887, 38.034367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348630, -0.639111, -0.685562,
		-0.294081, 0.619923, -0.727469,
		0.889929, 0.455228, 0.028173,
		25.362452, 36.702457, 38.042820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.832726, 36.726685, 37.379074>,  <24.739500, 36.383797, 38.023098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.832726, 36.726685, 37.379074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.177727, 36.611572, 37.545574>,  <25.384727, 36.542503, 37.645473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.177727, 36.611572, 37.545574>,  <24.832726, 36.726685, 37.379074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.177727, 36.611572, 37.545574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323349, -0.319326, -0.890773,
		0.389270, 0.902891, -0.182365,
		0.862505, -0.287784, 0.416252,
		25.436478, 36.525238, 37.670448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.399094, 37.086975, 36.990204>,  <24.832726, 36.726685, 37.379074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.399094, 37.086975, 36.990204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.533363, 36.744453, 37.147209>,  <25.613924, 36.538940, 37.241413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.533363, 36.744453, 37.147209>,  <25.399094, 37.086975, 36.990204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.533363, 36.744453, 37.147209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297475, -0.299004, -0.906700,
		0.893774, 0.421117, 0.154362,
		0.335672, -0.856304, 0.392514,
		25.634066, 36.487564, 37.264965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.104218, 37.187946, 37.209984>,  <25.399094, 37.086975, 36.990204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.104218, 37.187946, 37.209984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.074150, 36.796974, 37.288956>,  <26.056110, 36.562389, 37.336338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.074150, 36.796974, 37.288956>,  <26.104218, 37.187946, 37.209984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.074150, 36.796974, 37.288956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097501, -0.204247, -0.974052,
		0.992393, -0.053968, 0.110654,
		-0.075168, -0.977431, 0.197431,
		26.051600, 36.503746, 37.348186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.522757, 36.842079, 36.742737>,  <26.104218, 37.187946, 37.209984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.522757, 36.842079, 36.742737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.303539, 36.533409, 36.871838>,  <26.172009, 36.348206, 36.949299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.303539, 36.533409, 36.871838>,  <26.522757, 36.842079, 36.742737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.303539, 36.533409, 36.871838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353978, -0.563568, -0.746385,
		0.757858, -0.294805, 0.582015,
		-0.548043, -0.771674, 0.322750,
		26.139126, 36.301907, 36.968662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.930189, 36.290176, 36.753773>,  <26.522757, 36.842079, 36.742737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.930189, 36.290176, 36.753773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.572014, 36.117634, 36.709732>,  <26.357109, 36.014107, 36.683308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.572014, 36.117634, 36.709732>,  <26.930189, 36.290176, 36.753773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.572014, 36.117634, 36.709732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382730, -0.619567, -0.685314,
		0.227399, -0.655795, 0.719877,
		-0.895437, -0.431358, -0.110103,
		26.303383, 35.988228, 36.676701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.945055, 35.507164, 36.779171>,  <26.930189, 36.290176, 36.753773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.945055, 35.507164, 36.779171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.584362, 35.555553, 36.613163>,  <26.367947, 35.584587, 36.513557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.584362, 35.555553, 36.613163>,  <26.945055, 35.507164, 36.779171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.584362, 35.555553, 36.613163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225065, -0.688294, -0.689636,
		-0.369083, -0.715274, 0.593431,
		-0.901733, 0.120973, -0.415021,
		26.313843, 35.591846, 36.488655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.538523, 34.852600, 36.617954>,  <26.945055, 35.507164, 36.779171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.538523, 34.852600, 36.617954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.408754, 35.128944, 36.359512>,  <26.330893, 35.294750, 36.204445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.408754, 35.128944, 36.359512>,  <26.538523, 34.852600, 36.617954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.408754, 35.128944, 36.359512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034481, -0.673962, -0.737961,
		-0.945284, -0.261690, 0.194827,
		-0.324422, 0.690865, -0.646108,
		26.311428, 35.336205, 36.165680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.773354, 34.747490, 35.928574>,  <26.538523, 34.852600, 36.617954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.773354, 34.747490, 35.928574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.120310, 34.587921, 35.809578>,  <27.328484, 34.492180, 35.738178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.120310, 34.587921, 35.809578>,  <26.773354, 34.747490, 35.928574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.120310, 34.587921, 35.809578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045251, 0.658568, -0.751159,
		0.495569, 0.638085, 0.589286,
		0.867389, -0.398917, -0.297492,
		27.380526, 34.468246, 35.720329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.180498, 35.381569, 35.683628>,  <26.773354, 34.747490, 35.928574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.180498, 35.381569, 35.683628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.329762, 35.041733, 35.534527>,  <27.419319, 34.837830, 35.445065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.329762, 35.041733, 35.534527>,  <27.180498, 35.381569, 35.683628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.329762, 35.041733, 35.534527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265701, 0.482807, -0.834446,
		0.888908, 0.212338, 0.405900,
		0.373157, -0.849594, -0.372753,
		27.441708, 34.786854, 35.422703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.720669, 35.907772, 35.694794>,  <27.180498, 35.381569, 35.683628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.720669, 35.907772, 35.694794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.964102, 35.618839, 35.563423>,  <28.110161, 35.445480, 35.484600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.964102, 35.618839, 35.563423>,  <27.720669, 35.907772, 35.694794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.964102, 35.618839, 35.563423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312555, 0.162216, -0.935946,
		0.729339, 0.672252, -0.127046,
		0.608583, -0.722331, -0.328426,
		28.146677, 35.402142, 35.464897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.097513, 36.145382, 35.113811>,  <27.720669, 35.907772, 35.694794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.097513, 36.145382, 35.113811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.037718, 35.751209, 35.081387>,  <28.001841, 35.514706, 35.061932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.037718, 35.751209, 35.081387>,  <28.097513, 36.145382, 35.113811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.037718, 35.751209, 35.081387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424485, 0.138003, -0.894857,
		0.893009, -0.099362, -0.438932,
		-0.149489, -0.985435, -0.081061,
		27.992870, 35.455578, 35.057068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.430857, 35.882862, 34.473991>,  <28.097513, 36.145382, 35.113811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.430857, 35.882862, 34.473991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.129723, 35.636314, 34.566360>,  <27.949043, 35.488384, 34.621784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.129723, 35.636314, 34.566360>,  <28.430857, 35.882862, 34.473991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.129723, 35.636314, 34.566360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472557, 0.261916, -0.841480,
		0.458183, -0.742619, -0.488451,
		-0.752833, -0.616373, 0.230924,
		27.903873, 35.451401, 34.635639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.167345, 35.804943, 33.844276>,  <28.430857, 35.882862, 34.473991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.167345, 35.804943, 33.844276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.878752, 35.624447, 34.054359>,  <27.705595, 35.516148, 34.180408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.878752, 35.624447, 34.054359>,  <28.167345, 35.804943, 33.844276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.878752, 35.624447, 34.054359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653126, 0.191570, -0.732617,
		0.229982, -0.871592, -0.432939,
		-0.721481, -0.451252, 0.525201,
		27.662306, 35.489075, 34.211922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.852331, 35.538227, 33.257111>,  <28.167345, 35.804943, 33.844276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.852331, 35.538227, 33.257111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.565529, 35.597034, 33.529663>,  <27.393448, 35.632320, 33.693195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.565529, 35.597034, 33.529663>,  <27.852331, 35.538227, 33.257111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.565529, 35.597034, 33.529663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557409, 0.466027, -0.687105,
		-0.418563, -0.872469, -0.252194,
		-0.717008, 0.147022, 0.681384,
		27.350426, 35.641140, 33.734077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.926807, 34.907185, 33.638493>,  <27.852331, 35.538227, 33.257111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.926807, 34.907185, 33.638493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.624424, 34.905426, 33.900333>,  <27.442993, 34.904373, 34.057438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.624424, 34.905426, 33.900333>,  <27.926807, 34.907185, 33.638493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.624424, 34.905426, 33.900333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586066, 0.450033, -0.673793,
		-0.291633, -0.893001, -0.342782,
		-0.755961, -0.004393, 0.654602,
		27.397636, 34.904110, 34.096714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.251038, 34.649220, 33.285179>,  <27.926807, 34.907185, 33.638493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.251038, 34.649220, 33.285179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.149204, 34.865707, 33.605747>,  <27.088104, 34.995602, 33.798088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.149204, 34.865707, 33.605747>,  <27.251038, 34.649220, 33.285179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.149204, 34.865707, 33.605747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834511, 0.295799, -0.464859,
		-0.488650, -0.787136, 0.376349,
		-0.254584, 0.541221, 0.801416,
		27.072828, 35.028072, 33.846172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.538307, 34.569408, 33.378563>,  <27.251038, 34.649220, 33.285179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.538307, 34.569408, 33.378563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.628727, 34.897198, 33.589226>,  <26.682978, 35.093872, 33.715622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.628727, 34.897198, 33.589226>,  <26.538307, 34.569408, 33.378563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.628727, 34.897198, 33.589226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893084, 0.390233, -0.223875,
		-0.388978, -0.419742, 0.820068,
		0.226048, 0.819472, 0.526657,
		26.696541, 35.143040, 33.747223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.938463, 34.690727, 33.631969>,  <26.538307, 34.569408, 33.378563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.938463, 34.690727, 33.631969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.122648, 35.045288, 33.612968>,  <26.233160, 35.258026, 33.601566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.122648, 35.045288, 33.612968>,  <25.938463, 34.690727, 33.631969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.122648, 35.045288, 33.612968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795573, 0.388360, -0.465017,
		-0.393746, 0.251915, 0.884026,
		0.460465, 0.886406, -0.047501,
		26.260788, 35.311211, 33.598717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.418049, 35.187645, 33.817837>,  <25.938463, 34.690727, 33.631969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.418049, 35.187645, 33.817837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.715054, 35.368713, 33.620346>,  <25.893255, 35.477356, 33.501850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.715054, 35.368713, 33.620346>,  <25.418049, 35.187645, 33.817837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.715054, 35.368713, 33.620346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666523, 0.426104, -0.611704,
		-0.066522, 0.783277, 0.618103,
		0.742510, 0.452672, -0.493727,
		25.937807, 35.504517, 33.472229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.251720, 35.604042, 33.226269>,  <25.418049, 35.187645, 33.817837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.251720, 35.604042, 33.226269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.340097, 35.983864, 33.315289>,  <25.393124, 36.211758, 33.368702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.340097, 35.983864, 33.315289>,  <25.251720, 35.604042, 33.226269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.340097, 35.983864, 33.315289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950264, -0.260951, 0.170008,
		0.219507, 0.173918, -0.959984,
		0.220941, 0.949556, 0.222549,
		25.406380, 36.268730, 33.382053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.823444, 35.889889, 32.698673>,  <25.251720, 35.604042, 33.226269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.823444, 35.889889, 32.698673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.781704, 36.032963, 33.069870>,  <25.756659, 36.118805, 33.292587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.781704, 36.032963, 33.069870>,  <25.823444, 35.889889, 32.698673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.781704, 36.032963, 33.069870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896889, -0.369367, 0.243222,
		0.429767, 0.857690, -0.282256,
		-0.104353, 0.357682, 0.927995,
		25.750399, 36.140266, 33.348267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.493032, 36.271519, 32.830482>,  <25.823444, 35.889889, 32.698673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.493032, 36.271519, 32.830482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.319151, 36.128433, 33.161076>,  <26.214823, 36.042580, 33.359432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.319151, 36.128433, 33.161076>,  <26.493032, 36.271519, 32.830482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.319151, 36.128433, 33.161076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860542, -0.435570, 0.264095,
		0.265519, 0.826025, 0.497174,
		-0.434703, -0.357717, 0.826482,
		26.188740, 36.021118, 33.409019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.846025, 36.422264, 33.495590>,  <26.493032, 36.271519, 32.830482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.846025, 36.422264, 33.495590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.666643, 36.067776, 33.542061>,  <26.559013, 35.855083, 33.569942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.666643, 36.067776, 33.542061>,  <26.846025, 36.422264, 33.495590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.666643, 36.067776, 33.542061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819820, -0.356065, 0.448456,
		-0.356065, 0.296358, 0.886222,
		-0.448456, -0.886222, 0.116177,
		26.532106, 35.801910, 33.576916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.798269, 36.309238, 34.291515>,  <26.846025, 36.422264, 33.495590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.798269, 36.309238, 34.291515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.763912, 35.956875, 34.105343>,  <26.743298, 35.745457, 33.993637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.763912, 35.956875, 34.105343>,  <26.798269, 36.309238, 34.291515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.763912, 35.956875, 34.105343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733875, -0.371895, 0.568438,
		-0.673833, -0.292747, 0.678416,
		-0.085891, -0.880905, -0.465435,
		26.738144, 35.692604, 33.965714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.825085, 35.895313, 34.799095>,  <26.798269, 36.309238, 34.291515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.825085, 35.895313, 34.799095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.917118, 35.647305, 34.499058>,  <26.972338, 35.498497, 34.319035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.917118, 35.647305, 34.499058>,  <26.825085, 35.895313, 34.799095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.917118, 35.647305, 34.499058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779530, -0.343990, 0.523454,
		-0.582576, -0.705154, 0.404182,
		0.230081, -0.620024, -0.750089,
		26.986143, 35.461296, 34.274033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.729134, 35.113155, 34.984837>,  <26.825085, 35.895313, 34.799095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.729134, 35.113155, 34.984837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.017710, 35.192146, 34.719349>,  <27.190855, 35.239540, 34.560055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.017710, 35.192146, 34.719349>,  <26.729134, 35.113155, 34.984837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.017710, 35.192146, 34.719349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684262, -0.350481, 0.639491,
		-0.106335, -0.915514, -0.387979,
		0.721442, 0.197479, -0.663720,
		27.234142, 35.251389, 34.520233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.027866, 34.518597, 34.776680>,  <26.729134, 35.113155, 34.984837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.027866, 34.518597, 34.776680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.296061, 34.813320, 34.741890>,  <27.456978, 34.990154, 34.721016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.296061, 34.813320, 34.741890>,  <27.027866, 34.518597, 34.776680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.296061, 34.813320, 34.741890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527543, -0.391029, 0.754185,
		0.521675, -0.551557, -0.650876,
		0.670488, 0.736804, -0.086980,
		27.497208, 35.034363, 34.715797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.770100, 34.233536, 34.996506>,  <27.027866, 34.518597, 34.776680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.770100, 34.233536, 34.996506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.761204, 34.628380, 35.059910>,  <27.755865, 34.865284, 35.097950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.761204, 34.628380, 35.059910>,  <27.770100, 34.233536, 34.996506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.761204, 34.628380, 35.059910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615869, -0.111363, 0.779938,
		0.787535, 0.114966, -0.605452,
		-0.022242, 0.987108, 0.158506,
		27.754532, 34.924511, 35.107460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.245888, 33.813488, 34.508087>,  <27.770100, 34.233536, 34.996506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.245888, 33.813488, 34.508087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.484509, 33.674297, 34.218800>,  <27.627680, 33.590782, 34.045227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.484509, 33.674297, 34.218800>,  <27.245888, 33.813488, 34.508087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.484509, 33.674297, 34.218800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558047, -0.467793, 0.685385,
		-0.576812, -0.812455, -0.084876,
		0.596549, -0.347973, -0.723217,
		27.663473, 33.569904, 34.001835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.367502, 33.078857, 34.401062>,  <27.245888, 33.813488, 34.508087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.367502, 33.078857, 34.401062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.659367, 33.343418, 34.331615>,  <27.834486, 33.502155, 34.289948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.659367, 33.343418, 34.331615>,  <27.367502, 33.078857, 34.401062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.659367, 33.343418, 34.331615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398182, -0.204548, 0.894210,
		0.555918, -0.721602, -0.412609,
		0.729662, 0.661401, -0.173616,
		27.878265, 33.541840, 34.279530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.148174, 32.825459, 34.380531>,  <27.367502, 33.078857, 34.401062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.148174, 32.825459, 34.380531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.140793, 33.213505, 34.477310>,  <28.136364, 33.446331, 34.535378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.140793, 33.213505, 34.477310>,  <28.148174, 32.825459, 34.380531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.140793, 33.213505, 34.477310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629250, -0.176787, 0.756830,
		0.776984, 0.166212, -0.607181,
		-0.018452, 0.970113, 0.241950,
		28.135258, 33.504539, 34.549896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.765575, 33.181667, 34.244781>,  <28.148174, 32.825459, 34.380531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.765575, 33.181667, 34.244781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.600319, 33.338917, 34.573357>,  <28.501165, 33.433266, 34.770504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.600319, 33.338917, 34.573357>,  <28.765575, 33.181667, 34.244781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.600319, 33.338917, 34.573357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821404, -0.228601, 0.522529,
		0.393202, 0.890614, -0.228471,
		-0.413143, 0.393127, 0.821440,
		28.476376, 33.456856, 34.819790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.344179, 33.538280, 34.584194>,  <28.765575, 33.181667, 34.244781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.344179, 33.538280, 34.584194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.050438, 33.409180, 34.823044>,  <28.874193, 33.331718, 34.966354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.050438, 33.409180, 34.823044>,  <29.344179, 33.538280, 34.584194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.050438, 33.409180, 34.823044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670313, -0.483244, 0.563165,
		0.106791, 0.813821, 0.571219,
		-0.734354, -0.322755, 0.597121,
		28.830132, 33.312355, 35.002182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.583498, 33.558537, 35.359116>,  <29.344179, 33.538280, 34.584194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.583498, 33.558537, 35.359116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.294712, 33.286594, 35.307625>,  <29.121441, 33.123428, 35.276730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.294712, 33.286594, 35.307625>,  <29.583498, 33.558537, 35.359116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.294712, 33.286594, 35.307625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524823, -0.659283, 0.538431,
		-0.450920, 0.321170, 0.832779,
		-0.721965, -0.679851, -0.128727,
		29.078123, 33.082638, 35.269009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.449503, 33.294086, 35.991955>,  <29.583498, 33.558537, 35.359116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.449503, 33.294086, 35.991955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.369762, 33.028008, 35.704128>,  <29.321918, 32.868359, 35.531433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.369762, 33.028008, 35.704128>,  <29.449503, 33.294086, 35.991955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.369762, 33.028008, 35.704128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647422, -0.640622, 0.412854,
		-0.735598, -0.383557, 0.558373,
		-0.199352, -0.665197, -0.719563,
		29.309958, 32.828449, 35.488258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.671989, 34.039135, 36.004345>,  <29.449503, 33.294086, 35.991955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.671989, 34.039135, 36.004345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.841217, 33.773907, 36.251358>,  <29.942753, 33.614769, 36.399567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.841217, 33.773907, 36.251358>,  <29.671989, 34.039135, 36.004345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.841217, 33.773907, 36.251358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837470, 0.025963, -0.545866,
		0.345916, 0.748105, 0.566288,
		0.423067, -0.663073, 0.617534,
		29.968138, 33.574986, 36.436619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.276655, 34.385284, 36.412933>,  <29.671989, 34.039135, 36.004345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.276655, 34.385284, 36.412933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.283485, 34.003193, 36.294785>,  <30.287584, 33.773937, 36.223896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.283485, 34.003193, 36.294785>,  <30.276655, 34.385284, 36.412933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.283485, 34.003193, 36.294785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723895, 0.215590, -0.655360,
		0.689699, -0.202627, 0.695168,
		0.017077, -0.955229, -0.295373,
		30.288609, 33.716625, 36.206173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.791876, 33.994904, 36.583355>,  <30.276655, 34.385284, 36.412933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.791876, 33.994904, 36.583355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.683558, 33.779823, 36.263969>,  <30.618567, 33.650776, 36.072338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.683558, 33.779823, 36.263969>,  <30.791876, 33.994904, 36.583355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.683558, 33.779823, 36.263969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930995, 0.064626, -0.359265,
		0.244778, -0.840655, 0.483097,
		-0.270797, -0.537701, -0.798465,
		30.602318, 33.618515, 36.024429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.242344, 33.431026, 36.507336>,  <30.791876, 33.994904, 36.583355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.242344, 33.431026, 36.507336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.102528, 33.557472, 36.154541>,  <31.018639, 33.633339, 35.942863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.102528, 33.557472, 36.154541>,  <31.242344, 33.431026, 36.507336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.102528, 33.557472, 36.154541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930992, 0.011454, -0.364859,
		-0.105236, -0.948651, -0.298305,
		-0.349541, 0.316116, -0.881982,
		30.997665, 33.652306, 35.889946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.395037, 33.020443, 35.818382>,  <31.242344, 33.431026, 36.507336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.395037, 33.020443, 35.818382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.369225, 33.417995, 35.782513>,  <31.353737, 33.656525, 35.760990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.369225, 33.417995, 35.782513>,  <31.395037, 33.020443, 35.818382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.369225, 33.417995, 35.782513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895737, 0.018079, -0.444217,
		-0.439876, -0.108988, -0.891421,
		-0.064530, 0.993879, -0.089672,
		31.349865, 33.716160, 35.755611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.218353, 33.322712, 35.187283>,  <31.395037, 33.020443, 35.818382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.218353, 33.322712, 35.187283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.480547, 33.567593, 35.364166>,  <31.637863, 33.714523, 35.470295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.480547, 33.567593, 35.364166>,  <31.218353, 33.322712, 35.187283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.480547, 33.567593, 35.364166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710166, -0.300470, -0.636696,
		-0.256917, 0.731386, -0.631719,
		0.655483, 0.612203, 0.442209,
		31.677193, 33.751255, 35.496830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.529957, 33.910412, 34.707664>,  <31.218353, 33.322712, 35.187283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.529957, 33.910412, 34.707664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.762701, 33.750565, 34.991001>,  <31.902348, 33.654655, 35.161003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.762701, 33.750565, 34.991001>,  <31.529957, 33.910412, 34.707664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.762701, 33.750565, 34.991001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528445, -0.476278, -0.702784,
		0.618212, 0.783240, -0.065950,
		0.581859, -0.399618, 0.708340,
		31.937260, 33.630680, 35.203503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.268700, 34.165028, 34.486931>,  <31.529957, 33.910412, 34.707664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.268700, 34.165028, 34.486931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.234283, 33.828167, 34.699863>,  <32.213634, 33.626049, 34.827621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.234283, 33.828167, 34.699863>,  <32.268700, 34.165028, 34.486931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.234283, 33.828167, 34.699863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400882, -0.518413, -0.755341,
		0.912080, 0.148410, 0.382210,
		-0.086042, -0.842153, 0.532330,
		32.208469, 33.575520, 34.859562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.988827, 33.676151, 34.520905>,  <32.268700, 34.165028, 34.486931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.988827, 33.676151, 34.520905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.653992, 33.469067, 34.591625>,  <32.453091, 33.344814, 34.634060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.653992, 33.469067, 34.591625>,  <32.988827, 33.676151, 34.520905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.653992, 33.469067, 34.591625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410290, -0.807882, -0.423071,
		0.361865, -0.281606, 0.888680,
		-0.837088, -0.517711, 0.176803,
		32.402866, 33.313755, 34.644665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.174511, 33.032990, 34.830120>,  <32.988827, 33.676151, 34.520905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.174511, 33.032990, 34.830120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837738, 33.003124, 34.616360>,  <32.635674, 32.985207, 34.488106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837738, 33.003124, 34.616360>,  <33.174511, 33.032990, 34.830120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.837738, 33.003124, 34.616360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432609, -0.685323, -0.585817,
		-0.322497, -0.724401, 0.609294,
		-0.841930, -0.074662, -0.534397,
		32.585159, 32.980724, 34.456039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.888538, 32.424976, 34.823746>,  <33.174511, 33.032990, 34.830120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.888538, 32.424976, 34.823746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.782242, 32.597931, 34.479088>,  <32.718464, 32.701702, 34.272293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.782242, 32.597931, 34.479088>,  <32.888538, 32.424976, 34.823746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.782242, 32.597931, 34.479088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569395, -0.650828, -0.502207,
		-0.777926, -0.624073, -0.073243,
		-0.265745, 0.432384, -0.861640,
		32.702518, 32.727646, 34.220596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.568260, 31.990456, 34.274139>,  <32.888538, 32.424976, 34.823746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.568260, 31.990456, 34.274139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756649, 32.303467, 34.111248>,  <32.869682, 32.491272, 34.013512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756649, 32.303467, 34.111248>,  <32.568260, 31.990456, 34.274139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.756649, 32.303467, 34.111248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492549, -0.616244, -0.614523,
		-0.731833, 0.088845, -0.675668,
		0.470973, 0.782528, -0.407227,
		32.897942, 32.538227, 33.989079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.489819, 31.895786, 33.546017>,  <32.568260, 31.990456, 34.274139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.489819, 31.895786, 33.546017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781704, 32.167053, 33.511124>,  <32.956837, 32.329815, 33.490189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781704, 32.167053, 33.511124>,  <32.489819, 31.895786, 33.546017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781704, 32.167053, 33.511124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420708, -0.545887, -0.724577,
		-0.539004, 0.492033, -0.683651,
		0.729712, 0.678167, -0.087233,
		33.000618, 32.370502, 33.484955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.601402, 31.980192, 32.858566>,  <32.489819, 31.895786, 33.546017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.601402, 31.980192, 32.858566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938152, 32.095291, 33.041187>,  <33.140202, 32.164352, 33.150761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938152, 32.095291, 33.041187>,  <32.601402, 31.980192, 32.858566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.938152, 32.095291, 33.041187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539383, -0.421105, -0.729203,
		-0.017569, 0.860157, -0.509726,
		0.841878, 0.287749, 0.456555,
		33.190716, 32.181614, 33.178154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.977551, 32.096138, 32.257809>,  <32.601402, 31.980192, 32.858566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.977551, 32.096138, 32.257809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.256603, 32.103630, 32.544292>,  <33.424034, 32.108124, 32.716183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.256603, 32.103630, 32.544292>,  <32.977551, 32.096138, 32.257809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.256603, 32.103630, 32.544292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703787, -0.205047, -0.680177,
		0.134119, 0.978573, -0.156228,
		0.697636, 0.018727, 0.716207,
		33.465893, 32.109249, 32.759155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.599136, 32.513062, 32.103622>,  <32.977551, 32.096138, 32.257809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.599136, 32.513062, 32.103622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.717503, 32.226730, 32.356613>,  <33.788521, 32.054932, 32.508408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.717503, 32.226730, 32.356613>,  <33.599136, 32.513062, 32.103622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.717503, 32.226730, 32.356613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789285, -0.189708, -0.583987,
		0.538019, 0.672015, 0.508853,
		0.295914, -0.715826, 0.632478,
		33.806278, 32.011982, 32.546356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276974, 32.612488, 32.340076>,  <33.599136, 32.513062, 32.103622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276974, 32.612488, 32.340076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.209991, 32.221249, 32.389519>,  <34.169804, 31.986504, 32.419186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.209991, 32.221249, 32.389519>,  <34.276974, 32.612488, 32.340076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.209991, 32.221249, 32.389519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752775, -0.207810, -0.624615,
		0.636624, -0.011546, 0.771088,
		-0.167452, -0.978101, 0.123606,
		34.159756, 31.927818, 32.426601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.941143, 32.267952, 32.332180>,  <34.276974, 32.612488, 32.340076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.941143, 32.267952, 32.332180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.683140, 31.970345, 32.262440>,  <34.528336, 31.791780, 32.220596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.683140, 31.970345, 32.262440>,  <34.941143, 32.267952, 32.332180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.683140, 31.970345, 32.262440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669561, -0.440284, -0.598196,
		0.368304, -0.502582, 0.782153,
		-0.645012, -0.744017, -0.174351,
		34.489635, 31.747139, 32.210136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.364395, 31.758587, 32.283459>,  <34.941143, 32.267952, 32.332180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.364395, 31.758587, 32.283459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.027050, 31.602638, 32.135544>,  <34.824642, 31.509069, 32.046795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.027050, 31.602638, 32.135544>,  <35.364395, 31.758587, 32.283459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.027050, 31.602638, 32.135544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535403, -0.551240, -0.639905,
		0.045640, -0.737655, 0.673634,
		-0.843363, -0.389871, -0.369784,
		34.774040, 31.485678, 32.024609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.393208, 31.007519, 32.332695>,  <35.364395, 31.758587, 32.283459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.393208, 31.007519, 32.332695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144577, 31.093328, 32.031330>,  <34.995399, 31.144814, 31.850512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144577, 31.093328, 32.031330>,  <35.393208, 31.007519, 32.332695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144577, 31.093328, 32.031330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626405, -0.441407, -0.642477,
		-0.470391, -0.871285, 0.139983,
		-0.621570, 0.214530, -0.753411,
		34.958107, 31.157686, 31.805307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619736, 30.517561, 31.747845>,  <35.393208, 31.007519, 32.332695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.619736, 30.517561, 31.747845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.377033, 30.766808, 31.550430>,  <35.231411, 30.916355, 31.431982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.377033, 30.766808, 31.550430>,  <35.619736, 30.517561, 31.747845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.377033, 30.766808, 31.550430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425616, -0.269709, -0.863776,
		-0.671343, -0.734155, -0.101561,
		-0.606754, 0.623115, -0.493535,
		35.195007, 30.953743, 31.402370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.461670, 30.168610, 31.094723>,  <35.619736, 30.517561, 31.747845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.461670, 30.168610, 31.094723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382999, 30.552439, 31.014183>,  <35.335796, 30.782736, 30.965858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382999, 30.552439, 31.014183>,  <35.461670, 30.168610, 31.094723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382999, 30.552439, 31.014183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079298, -0.189119, -0.978747,
		-0.977256, -0.208466, -0.038896,
		-0.196680, 0.959571, -0.201349,
		35.323994, 30.840309, 30.953779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856190, 30.164684, 30.781395>,  <35.461670, 30.168610, 31.094723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856190, 30.164684, 30.781395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038387, 30.505232, 30.677322>,  <35.147705, 30.709560, 30.614878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038387, 30.505232, 30.677322>,  <34.856190, 30.164684, 30.781395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038387, 30.505232, 30.677322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094352, -0.336784, -0.936843,
		-0.885225, 0.402177, -0.233731,
		0.455493, 0.851370, -0.260183,
		35.175034, 30.760643, 30.599268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531956, 30.427553, 30.136244>,  <34.856190, 30.164684, 30.781395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531956, 30.427553, 30.136244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.887737, 30.609774, 30.150873>,  <35.101208, 30.719107, 30.159651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.887737, 30.609774, 30.150873>,  <34.531956, 30.427553, 30.136244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887737, 30.609774, 30.150873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094939, -0.105905, -0.989834,
		-0.447048, 0.883887, -0.137448,
		0.889458, 0.455552, 0.036571,
		35.154575, 30.746439, 30.161844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.559605, 30.758646, 29.504648>,  <34.531956, 30.427553, 30.136244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.559605, 30.758646, 29.504648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.938663, 30.816574, 29.618484>,  <35.166100, 30.851332, 29.686787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.938663, 30.816574, 29.618484>,  <34.559605, 30.758646, 29.504648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.938663, 30.816574, 29.618484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283013, 0.031814, -0.958588,
		-0.147878, 0.988946, -0.010837,
		0.947648, 0.144821, 0.284589,
		35.222958, 30.860020, 29.703861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822075, 31.379017, 29.110151>,  <34.559605, 30.758646, 29.504648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.822075, 31.379017, 29.110151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.127518, 31.159487, 29.246212>,  <35.310783, 31.027769, 29.327848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.127518, 31.159487, 29.246212>,  <34.822075, 31.379017, 29.110151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127518, 31.159487, 29.246212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480295, 0.130712, -0.867312,
		0.431540, 0.825655, 0.363410,
		0.763603, -0.548824, 0.340151,
		35.356598, 30.994839, 29.348257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449009, 31.841095, 29.042503>,  <34.822075, 31.379017, 29.110151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449009, 31.841095, 29.042503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.519703, 31.448009, 29.020447>,  <35.562119, 31.212158, 29.007214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.519703, 31.448009, 29.020447>,  <35.449009, 31.841095, 29.042503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519703, 31.448009, 29.020447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373959, 0.118864, -0.919797,
		0.910450, 0.141938, 0.388502,
		0.176733, -0.982713, -0.055140,
		35.572723, 31.153196, 29.003904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154232, 31.768951, 28.811443>,  <35.449009, 31.841095, 29.042503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154232, 31.768951, 28.811443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.959316, 31.428854, 28.731810>,  <35.842369, 31.224794, 28.684029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.959316, 31.428854, 28.731810>,  <36.154232, 31.768951, 28.811443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.959316, 31.428854, 28.731810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495401, -0.081420, -0.864840,
		0.719117, -0.520052, 0.460887,
		-0.487287, -0.850245, -0.199084,
		35.813129, 31.173780, 28.672085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764774, 31.473240, 28.611179>,  <36.154232, 31.768951, 28.811443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764774, 31.473240, 28.611179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444149, 31.271549, 28.482653>,  <36.251774, 31.150536, 28.405537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444149, 31.271549, 28.482653>,  <36.764774, 31.473240, 28.611179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.444149, 31.271549, 28.482653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396425, -0.045889, -0.916920,
		0.447589, -0.862352, 0.236671,
		-0.801568, -0.504226, -0.321318,
		36.203678, 31.120281, 28.386257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035534, 30.891396, 28.236177>,  <36.764774, 31.473240, 28.611179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.035534, 30.891396, 28.236177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659351, 30.974060, 28.128229>,  <36.433643, 31.023659, 28.063459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659351, 30.974060, 28.128229>,  <37.035534, 30.891396, 28.236177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659351, 30.974060, 28.128229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302407, 0.146162, -0.941906,
		-0.155211, -0.967433, -0.199955,
		-0.940457, 0.206662, -0.269872,
		36.377213, 31.036058, 28.047268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902542, 30.392603, 27.781115>,  <37.035534, 30.891396, 28.236177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902542, 30.392603, 27.781115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.631618, 30.672806, 27.691193>,  <36.469063, 30.840927, 27.637239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.631618, 30.672806, 27.691193>,  <36.902542, 30.392603, 27.781115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.631618, 30.672806, 27.691193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229846, -0.088786, -0.969169,
		-0.698870, -0.708100, -0.100873,
		-0.677312, 0.700508, -0.224803,
		36.428425, 30.882957, 27.623751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776844, 30.124660, 27.132282>,  <36.902542, 30.392603, 27.781115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.776844, 30.124660, 27.132282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.622395, 30.492275, 27.163986>,  <36.529724, 30.712843, 27.183010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.622395, 30.492275, 27.163986>,  <36.776844, 30.124660, 27.132282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.622395, 30.492275, 27.163986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275822, 0.197023, -0.940800,
		-0.880245, -0.341402, -0.329566,
		-0.386123, 0.919035, 0.079262,
		36.506557, 30.767986, 27.187765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313087, 30.219166, 26.669220>,  <36.776844, 30.124660, 27.132282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.313087, 30.219166, 26.669220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.441860, 30.584686, 26.768274>,  <36.519123, 30.803999, 26.827707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.441860, 30.584686, 26.768274>,  <36.313087, 30.219166, 26.669220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.441860, 30.584686, 26.768274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167865, 0.202325, -0.964824,
		-0.931762, 0.352178, -0.088261,
		0.321933, 0.913803, 0.247638,
		36.538441, 30.858828, 26.842566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910286, 30.612059, 26.221777>,  <36.313087, 30.219166, 26.669220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910286, 30.612059, 26.221777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.192677, 30.864828, 26.349693>,  <36.362110, 31.016489, 26.426443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.192677, 30.864828, 26.349693>,  <35.910286, 30.612059, 26.221777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.192677, 30.864828, 26.349693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087690, 0.370066, -0.924857,
		-0.702783, 0.680972, 0.205846,
		0.705979, 0.631924, 0.319790,
		36.404469, 31.054405, 26.445631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.656918, 31.306282, 26.198277>,  <35.910286, 30.612059, 26.221777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.656918, 31.306282, 26.198277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.053135, 31.280491, 26.149820>,  <36.290863, 31.265017, 26.120747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.053135, 31.280491, 26.149820>,  <35.656918, 31.306282, 26.198277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053135, 31.280491, 26.149820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104076, 0.222426, -0.969379,
		0.089448, 0.972815, 0.213612,
		0.990539, -0.064477, -0.121142,
		36.350296, 31.261148, 26.113478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807590, 31.766804, 25.704542>,  <35.656918, 31.306282, 26.198277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807590, 31.766804, 25.704542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.154858, 31.568863, 25.719503>,  <36.363220, 31.450098, 25.728481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.154858, 31.568863, 25.719503>,  <35.807590, 31.766804, 25.704542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.154858, 31.568863, 25.719503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185291, 0.253308, -0.949475,
		0.460374, 0.831239, 0.311606,
		0.868173, -0.494851, 0.037405,
		36.415310, 31.420408, 25.730724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229763, 32.285759, 25.396816>,  <35.807590, 31.766804, 25.704542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229763, 32.285759, 25.396816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.438160, 31.944336, 25.395573>,  <36.563198, 31.739483, 25.394827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.438160, 31.944336, 25.395573>,  <36.229763, 32.285759, 25.396816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.438160, 31.944336, 25.395573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274663, 0.171094, -0.946196,
		0.808161, 0.492109, 0.323579,
		0.520994, -0.853554, -0.003107,
		36.594460, 31.688269, 25.394640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928200, 32.375351, 25.162998>,  <36.229763, 32.285759, 25.396816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928200, 32.375351, 25.162998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.859505, 31.992922, 25.067978>,  <36.818287, 31.763464, 25.010965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.859505, 31.992922, 25.067978>,  <36.928200, 32.375351, 25.162998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859505, 31.992922, 25.067978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453949, 0.137209, -0.880400,
		0.874321, -0.259034, 0.410444,
		-0.171737, -0.956073, -0.237553,
		36.807983, 31.706100, 24.996712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622421, 31.961426, 24.988953>,  <36.928200, 32.375351, 25.162998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.622421, 31.961426, 24.988953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.308956, 31.763819, 24.838318>,  <37.120876, 31.645254, 24.747936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.308956, 31.763819, 24.838318>,  <37.622421, 31.961426, 24.988953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308956, 31.763819, 24.838318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404118, 0.054963, -0.913054,
		0.471763, -0.867713, 0.156569,
		-0.783663, -0.494018, -0.376588,
		37.073856, 31.615614, 24.725342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921223, 31.625856, 24.513039>,  <37.622421, 31.961426, 24.988953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.921223, 31.625856, 24.513039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.535324, 31.634041, 24.408091>,  <37.303783, 31.638952, 24.345121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.535324, 31.634041, 24.408091>,  <37.921223, 31.625856, 24.513039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535324, 31.634041, 24.408091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262484, 0.146661, -0.953726,
		0.018963, -0.988975, -0.146862,
		-0.964750, 0.020464, -0.262371,
		37.245899, 31.640179, 24.329380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754940, 30.989063, 24.058313>,  <37.921223, 31.625856, 24.513039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.754940, 30.989063, 24.058313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.458481, 31.246340, 23.981365>,  <37.280605, 31.400705, 23.935196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.458481, 31.246340, 23.981365>,  <37.754940, 30.989063, 24.058313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458481, 31.246340, 23.981365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271890, 0.025575, -0.961989,
		-0.613824, -0.765278, -0.193832,
		-0.741145, 0.643192, -0.192373,
		37.236137, 31.439297, 23.923653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482662, 30.744879, 23.442444>,  <37.754940, 30.989063, 24.058313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.482662, 30.744879, 23.442444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.364716, 31.124727, 23.484926>,  <37.293949, 31.352636, 23.510416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.364716, 31.124727, 23.484926>,  <37.482662, 30.744879, 23.442444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364716, 31.124727, 23.484926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250381, 0.184051, -0.950492,
		-0.922153, -0.253672, -0.292036,
		-0.294862, 0.949619, 0.106208,
		37.276257, 31.409613, 23.516788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311287, 30.904299, 22.789913>,  <37.482662, 30.744879, 23.442444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311287, 30.904299, 22.789913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.334923, 31.262409, 22.966541>,  <37.349106, 31.477276, 23.072519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.334923, 31.262409, 22.966541>,  <37.311287, 30.904299, 22.789913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334923, 31.262409, 22.966541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199910, 0.422771, -0.883912,
		-0.978031, 0.140503, -0.153994,
		0.059088, 0.895278, 0.441572,
		37.352650, 31.530993, 23.099012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858780, 31.325640, 22.406054>,  <37.311287, 30.904299, 22.789913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858780, 31.325640, 22.406054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.128090, 31.552250, 22.596107>,  <37.289677, 31.688215, 22.710140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.128090, 31.552250, 22.596107>,  <36.858780, 31.325640, 22.406054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.128090, 31.552250, 22.596107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161751, 0.514186, -0.842288,
		-0.721485, 0.643943, 0.254551,
		0.673272, 0.566524, 0.475137,
		37.330070, 31.722208, 22.738649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707428, 31.965273, 22.130463>,  <36.858780, 31.325640, 22.406054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707428, 31.965273, 22.130463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.073685, 32.017841, 22.282427>,  <37.293438, 32.049381, 22.373606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.073685, 32.017841, 22.282427>,  <36.707428, 31.965273, 22.130463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.073685, 32.017841, 22.282427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265280, 0.512533, -0.816661,
		-0.302045, 0.848550, 0.434432,
		0.915639, 0.131422, 0.379912,
		37.348377, 32.057266, 22.396400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943008, 32.681217, 21.966715>,  <36.707428, 31.965273, 22.130463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943008, 32.681217, 21.966715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.285709, 32.494957, 22.055397>,  <37.491329, 32.383202, 22.108606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.285709, 32.494957, 22.055397>,  <36.943008, 32.681217, 21.966715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.285709, 32.494957, 22.055397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424373, 0.392227, -0.816128,
		0.293071, 0.793302, 0.533649,
		0.856748, -0.465650, 0.221705,
		37.542732, 32.355263, 22.121908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465328, 33.166710, 21.791897>,  <36.943008, 32.681217, 21.966715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465328, 33.166710, 21.791897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.670460, 32.824154, 21.815920>,  <37.793541, 32.618622, 21.830334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.670460, 32.824154, 21.815920>,  <37.465328, 33.166710, 21.791897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670460, 32.824154, 21.815920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436178, 0.199662, -0.877430,
		0.739427, 0.476171, 0.475930,
		0.512832, -0.856385, 0.060060,
		37.824310, 32.567238, 21.833939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254086, 33.337429, 21.654385>,  <37.465328, 33.166710, 21.791897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.254086, 33.337429, 21.654385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.191162, 32.949963, 21.577511>,  <38.153408, 32.717484, 21.531387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.191162, 32.949963, 21.577511>,  <38.254086, 33.337429, 21.654385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.191162, 32.949963, 21.577511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421546, 0.110121, -0.900095,
		0.893058, -0.222608, 0.391016,
		-0.157309, -0.968669, -0.192184,
		38.143970, 32.659363, 21.519855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.017365, 33.034981, 21.398472>,  <38.254086, 33.337429, 21.654385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.017365, 33.034981, 21.398472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.725620, 32.792210, 21.272188>,  <38.550575, 32.646545, 21.196419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.725620, 32.792210, 21.272188>,  <39.017365, 33.034981, 21.398472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.725620, 32.792210, 21.272188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305443, 0.124035, -0.944097,
		0.612162, -0.785015, 0.094917,
		-0.729357, -0.606932, -0.315707,
		38.506813, 32.610130, 21.177477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288776, 32.504730, 20.867290>,  <39.017365, 33.034981, 21.398472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.288776, 32.504730, 20.867290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.896252, 32.564087, 20.818300>,  <38.660736, 32.599701, 20.788906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.896252, 32.564087, 20.818300>,  <39.288776, 32.504730, 20.867290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.896252, 32.564087, 20.818300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152120, 0.208600, -0.966098,
		-0.117816, -0.966677, -0.227276,
		-0.981315, 0.148395, -0.122474,
		38.601856, 32.608604, 20.781557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164246, 32.055450, 20.378342>,  <39.288776, 32.504730, 20.867290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.164246, 32.055450, 20.378342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.863785, 32.319283, 20.367519>,  <38.683510, 32.477581, 20.361027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.863785, 32.319283, 20.367519>,  <39.164246, 32.055450, 20.378342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.863785, 32.319283, 20.367519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239636, 0.234258, -0.942177,
		-0.615102, -0.714198, -0.334022,
		-0.751148, 0.659579, -0.027055,
		38.638439, 32.517155, 20.359404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899147, 32.066841, 19.698006>,  <39.164246, 32.055450, 20.378342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899147, 32.066841, 19.698006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.789417, 32.426067, 19.835539>,  <38.723579, 32.641605, 19.918058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.789417, 32.426067, 19.835539>,  <38.899147, 32.066841, 19.698006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789417, 32.426067, 19.835539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140908, 0.391230, -0.909442,
		-0.951258, -0.201033, -0.233869,
		-0.274324, 0.898067, 0.343833,
		38.707119, 32.695488, 19.938688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459183, 32.325878, 19.083059>,  <38.899147, 32.066841, 19.698006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.459183, 32.325878, 19.083059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.494751, 32.647854, 19.317722>,  <38.516090, 32.841038, 19.458521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.494751, 32.647854, 19.317722>,  <38.459183, 32.325878, 19.083059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.494751, 32.647854, 19.317722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085004, 0.592975, -0.800721,
		-0.992405, 0.021332, 0.121150,
		0.088920, 0.804938, 0.586658,
		38.521427, 32.889336, 19.493719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854622, 32.836212, 18.989622>,  <38.459183, 32.325878, 19.083059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.854622, 32.836212, 18.989622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.169575, 33.041229, 19.126637>,  <38.358547, 33.164242, 19.208845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.169575, 33.041229, 19.126637>,  <37.854622, 32.836212, 18.989622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.169575, 33.041229, 19.126637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046590, 0.504575, -0.862110,
		-0.614706, 0.694766, 0.373412,
		0.787379, 0.512547, 0.342534,
		38.405788, 33.194992, 19.229397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.843521, 33.548485, 18.756207>,  <37.854622, 32.836212, 18.989622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.843521, 33.548485, 18.756207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.233673, 33.471798, 18.799789>,  <38.467766, 33.425785, 18.825939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.233673, 33.471798, 18.799789>,  <37.843521, 33.548485, 18.756207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.233673, 33.471798, 18.799789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180545, 0.410576, -0.893773,
		0.126619, 0.891443, 0.435083,
		0.975382, -0.191721, 0.108959,
		38.526287, 33.414280, 18.832478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.280819, 34.145874, 18.465843>,  <37.843521, 33.548485, 18.756207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.280819, 34.145874, 18.465843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.496841, 33.810856, 18.498959>,  <38.626453, 33.609844, 18.518827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.496841, 33.810856, 18.498959>,  <38.280819, 34.145874, 18.465843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.496841, 33.810856, 18.498959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276008, 0.083323, -0.957537,
		0.795084, 0.539975, 0.276168,
		0.540057, -0.837547, 0.082789,
		38.658859, 33.559593, 18.523796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808716, 33.985481, 18.085274>,  <38.280819, 34.145874, 18.465843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.808716, 33.985481, 18.085274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.075359, 34.160198, 17.843666>,  <39.235348, 34.265030, 17.698702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.075359, 34.160198, 17.843666>,  <38.808716, 33.985481, 18.085274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.075359, 34.160198, 17.843666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072197, 0.768676, 0.635550,
		0.741896, -0.467277, 0.480877,
		0.666617, 0.436794, -0.604014,
		39.275345, 34.291237, 17.662460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429314, 34.024002, 18.417200>,  <38.808716, 33.985481, 18.085274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.429314, 34.024002, 18.417200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.377754, 34.318428, 18.151392>,  <39.346817, 34.495083, 17.991907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.377754, 34.318428, 18.151392>,  <39.429314, 34.024002, 18.417200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377754, 34.318428, 18.151392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379733, 0.655671, 0.652609,
		0.916072, -0.168219, -0.364026,
		-0.128900, 0.736069, -0.664520,
		39.339085, 34.539249, 17.952036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.094467, 34.480049, 18.161039>,  <39.429314, 34.024002, 18.417200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.094467, 34.480049, 18.161039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.771610, 34.716049, 18.152792>,  <39.577896, 34.857651, 18.147844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.771610, 34.716049, 18.152792>,  <40.094467, 34.480049, 18.161039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.771610, 34.716049, 18.152792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403728, 0.577120, 0.709884,
		0.430732, 0.564651, -0.704016,
		-0.807139, 0.590001, -0.020619,
		39.529469, 34.893051, 18.146606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.383221, 35.106293, 18.281452>,  <40.094467, 34.480049, 18.161039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.383221, 35.106293, 18.281452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.996155, 35.132931, 18.378771>,  <39.763916, 35.148914, 18.437162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.996155, 35.132931, 18.378771>,  <40.383221, 35.106293, 18.281452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.996155, 35.132931, 18.378771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246459, 0.455062, 0.855673,
		-0.053730, 0.887966, -0.456760,
		-0.967663, 0.066597, 0.243298,
		39.705856, 35.152908, 18.451759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.016048, 35.783947, 18.261608>,  <40.383221, 35.106293, 18.281452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.016048, 35.783947, 18.261608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.852482, 35.560459, 18.550224>,  <39.754341, 35.426369, 18.723394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.852482, 35.560459, 18.550224>,  <40.016048, 35.783947, 18.261608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.852482, 35.560459, 18.550224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077208, 0.809015, 0.582695,
		-0.909299, 0.182566, -0.373959,
		-0.408918, -0.558716, 0.721541,
		39.729805, 35.392845, 18.766687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391815, 35.991936, 18.643984>,  <40.016048, 35.783947, 18.261608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.391815, 35.991936, 18.643984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.644775, 35.823723, 18.904207>,  <39.796551, 35.722797, 19.060341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.644775, 35.823723, 18.904207>,  <39.391815, 35.991936, 18.643984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.644775, 35.823723, 18.904207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148819, 0.758219, 0.634789,
		-0.760211, -0.498257, 0.416916,
		0.632402, -0.420528, 0.650557,
		39.834496, 35.697563, 19.099375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010098, 36.100361, 19.242062>,  <39.391815, 35.991936, 18.643984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.010098, 36.100361, 19.242062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.399986, 36.056190, 19.319757>,  <39.633919, 36.029690, 19.366375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.399986, 36.056190, 19.319757>,  <39.010098, 36.100361, 19.242062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399986, 36.056190, 19.319757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029774, 0.797391, 0.602728,
		-0.221444, -0.593274, 0.773944,
		0.974719, -0.110427, 0.194241,
		39.692402, 36.023064, 19.378029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734665, 35.748165, 18.561213>,  <39.010098, 36.100361, 19.242062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.734665, 35.748165, 18.561213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.539917, 35.399307, 18.580442>,  <38.423069, 35.189991, 18.591980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.539917, 35.399307, 18.580442>,  <38.734665, 35.748165, 18.561213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.539917, 35.399307, 18.580442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367942, 0.254698, 0.894286,
		-0.792195, 0.417714, -0.444906,
		-0.486873, -0.872149, 0.048076,
		38.393856, 35.137661, 18.594866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078045, 35.925800, 18.721004>,  <38.734665, 35.748165, 18.561213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078045, 35.925800, 18.721004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.172295, 35.569897, 18.877371>,  <38.228844, 35.356354, 18.971189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.172295, 35.569897, 18.877371>,  <38.078045, 35.925800, 18.721004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172295, 35.569897, 18.877371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431222, 0.264756, 0.862527,
		-0.870936, -0.371803, -0.321300,
		0.235624, -0.889757, 0.390915,
		38.242981, 35.302971, 18.994646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517857, 35.740051, 19.108465>,  <38.078045, 35.925800, 18.721004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517857, 35.740051, 19.108465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.805138, 35.498268, 19.246344>,  <37.977505, 35.353199, 19.329071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.805138, 35.498268, 19.246344>,  <37.517857, 35.740051, 19.108465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.805138, 35.498268, 19.246344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424721, 0.011581, 0.905250,
		-0.551179, -0.796552, -0.248408,
		0.718202, -0.604459, 0.344695,
		38.020599, 35.316929, 19.349752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212093, 35.226757, 19.414261>,  <37.517857, 35.740051, 19.108465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212093, 35.226757, 19.414261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.572479, 35.304047, 19.569658>,  <37.788712, 35.350422, 19.662897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.572479, 35.304047, 19.569658>,  <37.212093, 35.226757, 19.414261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.572479, 35.304047, 19.569658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406800, 0.064726, 0.911222,
		0.150929, -0.979016, 0.136921,
		0.900963, 0.193229, 0.388495,
		37.842770, 35.362015, 19.686207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143879, 34.816029, 20.015215>,  <37.212093, 35.226757, 19.414261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143879, 34.816029, 20.015215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.431362, 35.090988, 20.057058>,  <37.603851, 35.255962, 20.082165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.431362, 35.090988, 20.057058>,  <37.143879, 34.816029, 20.015215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.431362, 35.090988, 20.057058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106346, -0.040003, 0.993524,
		0.687134, -0.725176, 0.044352,
		0.718705, 0.687401, 0.104607,
		37.646973, 35.297207, 20.088440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.288292, 34.742916, 20.694380>,  <37.143879, 34.816029, 20.015215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.288292, 34.742916, 20.694380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.488594, 35.079178, 20.611881>,  <37.608776, 35.280937, 20.562382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.488594, 35.079178, 20.611881>,  <37.288292, 34.742916, 20.694380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488594, 35.079178, 20.611881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113372, 0.299917, 0.947204,
		0.858131, -0.450937, 0.245493,
		0.500757, 0.840658, -0.206244,
		37.638821, 35.331375, 20.550009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755260, 34.759102, 21.192291>,  <37.288292, 34.742916, 20.694380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.755260, 34.759102, 21.192291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.729824, 35.131519, 21.048565>,  <37.714561, 35.354969, 20.962330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.729824, 35.131519, 21.048565>,  <37.755260, 34.759102, 21.192291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729824, 35.131519, 21.048565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173824, 0.344207, 0.922663,
		0.982722, 0.121128, 0.139951,
		-0.063588, 0.931048, -0.359315,
		37.710747, 35.410835, 20.940771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204399, 35.135853, 21.617401>,  <37.755260, 34.759102, 21.192291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204399, 35.135853, 21.617401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.941189, 35.393017, 21.460598>,  <37.783260, 35.547314, 21.366516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.941189, 35.393017, 21.460598>,  <38.204399, 35.135853, 21.617401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.941189, 35.393017, 21.460598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152073, 0.396406, 0.905393,
		0.737477, 0.655388, -0.163077,
		-0.658028, 0.642907, -0.392007,
		37.743782, 35.585888, 21.342997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.369495, 35.778984, 21.806021>,  <38.204399, 35.135853, 21.617401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.369495, 35.778984, 21.806021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.983868, 35.795399, 21.701042>,  <37.752491, 35.805248, 21.638056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.983868, 35.795399, 21.701042>,  <38.369495, 35.778984, 21.806021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983868, 35.795399, 21.701042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241488, 0.276197, 0.930268,
		0.110659, 0.960224, -0.256366,
		-0.964074, 0.041033, -0.262446,
		37.694645, 35.807709, 21.622309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093567, 36.352226, 22.157448>,  <38.369495, 35.778984, 21.806021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.093567, 36.352226, 22.157448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.772175, 36.122826, 22.093542>,  <37.579342, 35.985188, 22.055199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.772175, 36.122826, 22.093542>,  <38.093567, 36.352226, 22.157448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772175, 36.122826, 22.093542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317462, 0.185712, 0.929908,
		-0.503630, 0.797879, -0.331279,
		-0.803477, -0.573498, -0.159767,
		37.531132, 35.950775, 22.045612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573448, 36.714737, 22.352165>,  <38.093567, 36.352226, 22.157448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.573448, 36.714737, 22.352165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.443062, 36.336590, 22.350376>,  <37.364830, 36.109699, 22.349302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.443062, 36.336590, 22.350376>,  <37.573448, 36.714737, 22.352165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.443062, 36.336590, 22.350376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280945, 0.092348, 0.955270,
		-0.902672, 0.312641, -0.295700,
		-0.325964, -0.945372, -0.004475,
		37.345272, 36.052979, 22.349033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839287, 36.723675, 22.734060>,  <37.573448, 36.714737, 22.352165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839287, 36.723675, 22.734060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969482, 36.345478, 22.730013>,  <37.047600, 36.118561, 22.727585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969482, 36.345478, 22.730013>,  <36.839287, 36.723675, 22.734060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969482, 36.345478, 22.730013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348877, -0.130035, 0.928103,
		-0.878829, -0.298560, -0.372185,
		0.325492, -0.945491, -0.010117,
		37.067131, 36.061832, 22.726978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288609, 36.193195, 22.993645>,  <36.839287, 36.723675, 22.734060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288609, 36.193195, 22.993645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.621246, 35.976921, 23.044428>,  <36.820827, 35.847157, 23.074898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.621246, 35.976921, 23.044428>,  <36.288609, 36.193195, 22.993645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621246, 35.976921, 23.044428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295207, -0.236690, 0.925652,
		-0.470438, -0.807240, -0.356443,
		0.831590, -0.540686, 0.126955,
		36.870724, 35.814716, 23.082514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097633, 35.520351, 23.183590>,  <36.288609, 36.193195, 22.993645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097633, 35.520351, 23.183590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.466377, 35.566299, 23.331631>,  <36.687626, 35.593868, 23.420456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.466377, 35.566299, 23.331631>,  <36.097633, 35.520351, 23.183590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466377, 35.566299, 23.331631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268948, -0.497945, 0.824450,
		0.278994, -0.859568, -0.428142,
		0.921862, 0.114869, 0.370103,
		36.742935, 35.600761, 23.442661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233292, 34.910152, 23.533447>,  <36.097633, 35.520351, 23.183590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233292, 34.910152, 23.533447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.491837, 35.175468, 23.684320>,  <36.646965, 35.334656, 23.774843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.491837, 35.175468, 23.684320>,  <36.233292, 34.910152, 23.533447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491837, 35.175468, 23.684320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246572, -0.286232, 0.925891,
		0.722092, -0.691464, -0.021462,
		0.646363, 0.663287, 0.377181,
		36.685745, 35.374454, 23.797474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616947, 34.580021, 24.147806>,  <36.233292, 34.910152, 23.533447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.616947, 34.580021, 24.147806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.684013, 34.967686, 24.220047>,  <36.724255, 35.200283, 24.263391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.684013, 34.967686, 24.220047>,  <36.616947, 34.580021, 24.147806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684013, 34.967686, 24.220047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161683, -0.153679, 0.974803,
		0.972495, -0.192645, 0.130929,
		0.167670, 0.969160, 0.180600,
		36.734314, 35.258434, 24.274227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947689, 34.582775, 24.751694>,  <36.616947, 34.580021, 24.147806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.947689, 34.582775, 24.751694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.808174, 34.955856, 24.714985>,  <36.724464, 35.179703, 24.692961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.808174, 34.955856, 24.714985>,  <36.947689, 34.582775, 24.751694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.808174, 34.955856, 24.714985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109293, 0.056773, 0.992387,
		0.930809, 0.356158, 0.082136,
		-0.348783, 0.932700, -0.091770,
		36.703541, 35.235664, 24.687454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205982, 35.047009, 25.401917>,  <36.947689, 34.582775, 24.751694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205982, 35.047009, 25.401917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.860271, 35.182213, 25.252905>,  <36.652847, 35.263336, 25.163498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.860271, 35.182213, 25.252905>,  <37.205982, 35.047009, 25.401917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860271, 35.182213, 25.252905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315428, 0.212709, 0.924803,
		0.391834, 0.916790, -0.077221,
		-0.864275, 0.338011, -0.372528,
		36.600990, 35.283615, 25.141146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122829, 35.457813, 25.819130>,  <37.205982, 35.047009, 25.401917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122829, 35.457813, 25.819130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.763134, 35.434944, 25.645647>,  <36.547318, 35.421223, 25.541557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.763134, 35.434944, 25.645647>,  <37.122829, 35.457813, 25.819130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.763134, 35.434944, 25.645647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429885, 0.299216, 0.851862,
		0.081067, 0.952471, -0.293645,
		-0.899237, -0.057176, -0.433709,
		36.493362, 35.417793, 25.515533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671303, 36.064571, 26.011333>,  <37.122829, 35.457813, 25.819130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671303, 36.064571, 26.011333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.405617, 35.783611, 25.908997>,  <36.246204, 35.615036, 25.847593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.405617, 35.783611, 25.908997>,  <36.671303, 36.064571, 26.011333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405617, 35.783611, 25.908997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526592, 0.196721, 0.827044,
		-0.530584, 0.684060, -0.500542,
		-0.664215, -0.702398, -0.255844,
		36.206352, 35.572891, 25.832243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011837, 36.303921, 26.137079>,  <36.671303, 36.064571, 26.011333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011837, 36.303921, 26.137079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.957882, 35.907627, 26.143343>,  <35.925510, 35.669849, 26.147100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.957882, 35.907627, 26.143343>,  <36.011837, 36.303921, 26.137079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957882, 35.907627, 26.143343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537577, 0.086446, 0.838772,
		-0.832356, 0.104723, -0.544258,
		-0.134888, -0.990737, 0.015657,
		35.917416, 35.610405, 26.148041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.332626, 36.241177, 26.252829>,  <36.011837, 36.303921, 26.137079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.332626, 36.241177, 26.252829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.503361, 35.891502, 26.345446>,  <35.605801, 35.681698, 26.401016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.503361, 35.891502, 26.345446>,  <35.332626, 36.241177, 26.252829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.503361, 35.891502, 26.345446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530416, -0.034636, 0.847030,
		-0.732438, -0.484362, -0.478464,
		0.426840, -0.874182, 0.231545,
		35.631413, 35.629250, 26.414909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.758381, 35.904034, 26.433411>,  <35.332626, 36.241177, 26.252829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.758381, 35.904034, 26.433411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.056362, 35.710800, 26.617443>,  <35.235149, 35.594860, 26.727863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.056362, 35.710800, 26.617443>,  <34.758381, 35.904034, 26.433411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.056362, 35.710800, 26.617443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622674, -0.255993, 0.739422,
		-0.239406, -0.837328, -0.491494,
		0.744958, -0.483063, 0.460096,
		35.279846, 35.565876, 26.755468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470394, 35.391827, 26.764265>,  <34.758381, 35.904034, 26.433411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470394, 35.391827, 26.764265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.830860, 35.390694, 26.937649>,  <35.047142, 35.390015, 27.041679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.830860, 35.390694, 26.937649>,  <34.470394, 35.391827, 26.764265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.830860, 35.390694, 26.937649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423660, -0.217302, 0.879370,
		0.091701, -0.976100, -0.197026,
		0.901168, -0.002833, 0.433462,
		35.101212, 35.389843, 27.067688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.414352, 34.893120, 27.187086>,  <34.470394, 35.391827, 26.764265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.414352, 34.893120, 27.187086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.715958, 35.104019, 27.343786>,  <34.896923, 35.230560, 27.437805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.715958, 35.104019, 27.343786>,  <34.414352, 34.893120, 27.187086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.715958, 35.104019, 27.343786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387818, -0.124009, 0.913356,
		0.530147, -0.840613, 0.110972,
		0.754017, 0.527250, 0.391748,
		34.942162, 35.262196, 27.461311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675728, 34.482975, 27.684582>,  <34.414352, 34.893120, 27.187086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.675728, 34.482975, 27.684582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.791710, 34.851154, 27.789421>,  <34.861301, 35.072063, 27.852324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.791710, 34.851154, 27.789421>,  <34.675728, 34.482975, 27.684582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791710, 34.851154, 27.789421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255489, -0.189475, 0.948063,
		0.922306, -0.341862, 0.180226,
		0.289959, 0.920450, 0.262096,
		34.878696, 35.127289, 27.868050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002155, 34.433498, 28.281826>,  <34.675728, 34.482975, 27.684582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.002155, 34.433498, 28.281826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896854, 34.819332, 28.288393>,  <34.833672, 35.050835, 28.292334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896854, 34.819332, 28.288393>,  <35.002155, 34.433498, 28.281826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.896854, 34.819332, 28.288393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123675, -0.050622, 0.991031,
		0.956766, 0.258862, 0.132622,
		-0.263254, 0.964587, 0.016419,
		34.817879, 35.108707, 28.293318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.332569, 34.684566, 28.837629>,  <35.002155, 34.433498, 28.281826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.332569, 34.684566, 28.837629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.029427, 34.940601, 28.787123>,  <34.847542, 35.094223, 28.756819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.029427, 34.940601, 28.787123>,  <35.332569, 34.684566, 28.837629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.029427, 34.940601, 28.787123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169416, -0.006176, 0.985525,
		0.630038, 0.768281, 0.113121,
		-0.757859, 0.640083, -0.126268,
		34.802071, 35.132626, 28.749243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.383060, 35.111629, 29.345190>,  <35.332569, 34.684566, 28.837629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.383060, 35.111629, 29.345190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.997478, 35.179176, 29.262951>,  <34.766129, 35.219704, 29.213608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.997478, 35.179176, 29.262951>,  <35.383060, 35.111629, 29.345190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.997478, 35.179176, 29.262951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214999, -0.039215, 0.975827,
		0.156718, 0.984859, 0.074107,
		-0.963958, 0.168863, -0.205598,
		34.708290, 35.229836, 29.201271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112637, 35.540207, 29.904402>,  <35.383060, 35.111629, 29.345190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112637, 35.540207, 29.904402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.790947, 35.397240, 29.714468>,  <34.597931, 35.311459, 29.600508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.790947, 35.397240, 29.714468>,  <35.112637, 35.540207, 29.904402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.790947, 35.397240, 29.714468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495393, -0.038231, 0.867827,
		-0.328332, 0.933161, -0.146317,
		-0.804229, -0.357420, -0.474834,
		34.549679, 35.290012, 29.572018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.502445, 35.908260, 30.195213>,  <35.112637, 35.540207, 29.904402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.502445, 35.908260, 30.195213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377869, 35.564125, 30.033810>,  <34.303123, 35.357643, 29.936968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377869, 35.564125, 30.033810>,  <34.502445, 35.908260, 30.195213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377869, 35.564125, 30.033810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570440, -0.170343, 0.803481,
		-0.760003, 0.480411, -0.437722,
		-0.311438, -0.860342, -0.403507,
		34.284439, 35.306023, 29.912758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.751286, 35.899300, 30.329449>,  <34.502445, 35.908260, 30.195213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.751286, 35.899300, 30.329449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834499, 35.516815, 30.247095>,  <33.884430, 35.287327, 30.197683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834499, 35.516815, 30.247095>,  <33.751286, 35.899300, 30.329449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.834499, 35.516815, 30.247095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524459, -0.286720, 0.801707,
		-0.825629, -0.058808, -0.561141,
		0.208037, -0.956208, -0.205882,
		33.896912, 35.229954, 30.185331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.116085, 35.558754, 30.456974>,  <33.751286, 35.899300, 30.329449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.116085, 35.558754, 30.456974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.407234, 35.286625, 30.491297>,  <33.581924, 35.123348, 30.511890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.407234, 35.286625, 30.491297>,  <33.116085, 35.558754, 30.456974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.407234, 35.286625, 30.491297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445117, -0.373583, 0.813823,
		-0.521604, -0.630555, -0.574743,
		0.727874, -0.680321, 0.085808,
		33.625595, 35.082527, 30.517040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.798092, 35.075394, 30.721903>,  <33.116085, 35.558754, 30.456974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.798092, 35.075394, 30.721903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.174961, 34.948692, 30.765665>,  <33.401085, 34.872673, 30.791922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.174961, 34.948692, 30.765665>,  <32.798092, 35.075394, 30.721903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.174961, 34.948692, 30.765665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223791, -0.351704, 0.908967,
		-0.249438, -0.880893, -0.402254,
		0.942177, -0.316752, 0.109408,
		33.457615, 34.853664, 30.798487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785721, 34.319836, 30.796082>,  <32.798092, 35.075394, 30.721903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.785721, 34.319836, 30.796082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120026, 34.452171, 30.971378>,  <33.320606, 34.531570, 31.076555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120026, 34.452171, 30.971378>,  <32.785721, 34.319836, 30.796082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.120026, 34.452171, 30.971378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232910, -0.509164, 0.828556,
		0.497252, -0.794544, -0.348484,
		0.835759, 0.330836, 0.438239,
		33.370754, 34.551422, 31.102850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785660, 33.834503, 31.241989>,  <32.785721, 34.319836, 30.796082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.785660, 33.834503, 31.241989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.058628, 34.099846, 31.364803>,  <33.222408, 34.259052, 31.438492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.058628, 34.099846, 31.364803>,  <32.785660, 33.834503, 31.241989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058628, 34.099846, 31.364803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085761, -0.344479, 0.934868,
		0.725914, -0.664302, -0.178189,
		0.682417, 0.663353, 0.307034,
		33.263351, 34.298851, 31.456913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351833, 33.481625, 31.607525>,  <32.785660, 33.834503, 31.241989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.351833, 33.481625, 31.607525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.341946, 33.859947, 31.737043>,  <33.336014, 34.086941, 31.814754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.341946, 33.859947, 31.737043>,  <33.351833, 33.481625, 31.607525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.341946, 33.859947, 31.737043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126785, -0.324248, 0.937437,
		0.991622, -0.017877, 0.127930,
		-0.024723, 0.945803, 0.323798,
		33.334530, 34.143688, 31.834183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815472, 33.458878, 32.316967>,  <33.351833, 33.481625, 31.607525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.815472, 33.458878, 32.316967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.627949, 33.812168, 32.312393>,  <33.515434, 34.024143, 32.309650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.627949, 33.812168, 32.312393>,  <33.815472, 33.458878, 32.316967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.627949, 33.812168, 32.312393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148880, 0.091772, 0.984588,
		0.870664, 0.459878, -0.174518,
		-0.468806, 0.883227, -0.011436,
		33.487309, 34.077137, 32.308964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.213600, 33.991817, 32.775967>,  <33.815472, 33.458878, 32.316967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.213600, 33.991817, 32.775967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822735, 34.070595, 32.744049>,  <33.588215, 34.117863, 32.724899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822735, 34.070595, 32.744049>,  <34.213600, 33.991817, 32.775967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822735, 34.070595, 32.744049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051912, 0.142865, 0.988380,
		0.206053, 0.969950, -0.129379,
		-0.977163, 0.196942, -0.079790,
		33.529587, 34.129677, 32.720112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.086945, 34.573990, 33.227867>,  <34.213600, 33.991817, 32.775967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.086945, 34.573990, 33.227867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.733654, 34.406357, 33.143696>,  <33.521679, 34.305779, 33.093193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.733654, 34.406357, 33.143696>,  <34.086945, 34.573990, 33.227867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733654, 34.406357, 33.143696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276525, 0.103039, 0.955467,
		-0.378735, 0.902084, -0.206893,
		-0.883229, -0.419080, -0.210424,
		33.468685, 34.280632, 33.080570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810795, 34.719254, 33.595188>,  <34.086945, 34.573990, 33.227867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810795, 34.719254, 33.595188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.123924, 34.599815, 33.813553>,  <35.311802, 34.528152, 33.944572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.123924, 34.599815, 33.813553>,  <34.810795, 34.719254, 33.595188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.123924, 34.599815, 33.813553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607328, 0.557571, -0.565921,
		-0.135403, 0.774567, 0.617828,
		0.782827, -0.298597, 0.545914,
		35.358772, 34.510235, 33.977325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129093, 35.253086, 33.748775>,  <34.810795, 34.719254, 33.595188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.129093, 35.253086, 33.748775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.424179, 34.987179, 33.795868>,  <35.601231, 34.827633, 33.824123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.424179, 34.987179, 33.795868>,  <35.129093, 35.253086, 33.748775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424179, 34.987179, 33.795868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588071, 0.547094, -0.595702,
		0.331595, 0.508690, 0.794531,
		0.737711, -0.664772, 0.117732,
		35.645493, 34.787746, 33.831188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824966, 35.626099, 33.870110>,  <35.129093, 35.253086, 33.748775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.824966, 35.626099, 33.870110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.894680, 35.261677, 33.720650>,  <35.936508, 35.043026, 33.630974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.894680, 35.261677, 33.720650>,  <35.824966, 35.626099, 33.870110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894680, 35.261677, 33.720650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666321, 0.388499, -0.636462,
		0.725010, -0.138041, 0.674763,
		0.174287, -0.911051, -0.373645,
		35.946964, 34.988361, 33.608555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480972, 35.687088, 33.686588>,  <35.824966, 35.626099, 33.870110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.480972, 35.687088, 33.686588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.361721, 35.352661, 33.502365>,  <36.290169, 35.152004, 33.391830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.361721, 35.352661, 33.502365>,  <36.480972, 35.687088, 33.686588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361721, 35.352661, 33.502365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697213, 0.138800, -0.703299,
		0.651929, -0.530779, 0.541536,
		-0.298131, -0.836067, -0.460554,
		36.272282, 35.101841, 33.364201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021172, 35.284534, 33.594780>,  <36.480972, 35.687088, 33.686588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.021172, 35.284534, 33.594780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.747372, 35.194794, 33.317326>,  <36.583092, 35.140949, 33.150852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.747372, 35.194794, 33.317326>,  <37.021172, 35.284534, 33.594780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.747372, 35.194794, 33.317326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650270, 0.242228, -0.720052,
		0.329560, -0.943924, -0.019918,
		-0.684499, -0.224348, -0.693634,
		36.542023, 35.127491, 33.109234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.339115, 34.781471, 33.122845>,  <37.021172, 35.284534, 33.594780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.339115, 34.781471, 33.122845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.035366, 34.959332, 32.932838>,  <36.853115, 35.066048, 32.818836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.035366, 34.959332, 32.932838>,  <37.339115, 34.781471, 33.122845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.035366, 34.959332, 32.932838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562778, 0.082466, -0.822484,
		-0.326548, -0.891899, -0.312864,
		-0.759373, 0.444653, -0.475011,
		36.807552, 35.092728, 32.790337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271908, 34.485783, 32.431313>,  <37.339115, 34.781471, 33.122845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.271908, 34.485783, 32.431313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.049927, 34.811451, 32.363026>,  <36.916737, 35.006851, 32.322056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.049927, 34.811451, 32.363026>,  <37.271908, 34.485783, 32.431313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.049927, 34.811451, 32.363026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414169, 0.092444, -0.905493,
		-0.721449, -0.573213, -0.388508,
		-0.554955, 0.814175, -0.170713,
		36.883442, 35.055702, 32.311813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958656, 34.458958, 31.707901>,  <37.271908, 34.485783, 32.431313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.958656, 34.458958, 31.707901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.927036, 34.847599, 31.797106>,  <36.908062, 35.080784, 31.850628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.927036, 34.847599, 31.797106>,  <36.958656, 34.458958, 31.707901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.927036, 34.847599, 31.797106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321505, 0.236608, -0.916870,
		-0.943602, -0.000782, -0.331080,
		-0.079053, 0.971605, 0.223013,
		36.903320, 35.139080, 31.864010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.689159, 34.720882, 31.161896>,  <36.958656, 34.458958, 31.707901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.689159, 34.720882, 31.161896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.843922, 35.049950, 31.328522>,  <36.936779, 35.247391, 31.428497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.843922, 35.049950, 31.328522>,  <36.689159, 34.720882, 31.161896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843922, 35.049950, 31.328522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250332, 0.341074, -0.906092,
		-0.887491, 0.454848, -0.073978,
		0.386901, 0.822668, 0.416563,
		36.959991, 35.296749, 31.453491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506664, 35.189819, 30.761227>,  <36.689159, 34.720882, 31.161896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.506664, 35.189819, 30.761227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.815826, 35.368065, 30.941912>,  <37.001324, 35.475014, 31.050323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.815826, 35.368065, 30.941912>,  <36.506664, 35.189819, 30.761227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815826, 35.368065, 30.941912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323879, 0.335112, -0.884762,
		-0.545638, 0.830137, 0.114684,
		0.772905, 0.445616, 0.451713,
		37.047699, 35.501751, 31.077425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.497570, 35.933235, 30.500446>,  <36.506664, 35.189819, 30.761227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.497570, 35.933235, 30.500446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872070, 35.851971, 30.615099>,  <37.096771, 35.803211, 30.683891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872070, 35.851971, 30.615099>,  <36.497570, 35.933235, 30.500446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872070, 35.851971, 30.615099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344019, 0.364589, -0.865289,
		0.071287, 0.908736, 0.411238,
		0.936253, -0.203157, 0.286632,
		37.152946, 35.791023, 30.701088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788799, 36.564709, 30.323458>,  <36.497570, 35.933235, 30.500446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788799, 36.564709, 30.323458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.085228, 36.305504, 30.393757>,  <37.263084, 36.149979, 30.435936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.085228, 36.305504, 30.393757>,  <36.788799, 36.564709, 30.323458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.085228, 36.305504, 30.393757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386875, 0.198185, -0.900583,
		0.548763, 0.735389, 0.397571,
		0.741072, -0.648017, 0.175747,
		37.307549, 36.111099, 30.446482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413040, 36.925545, 30.208696>,  <36.788799, 36.564709, 30.323458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413040, 36.925545, 30.208696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.495892, 36.538849, 30.148682>,  <37.545601, 36.306831, 30.112673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.495892, 36.538849, 30.148682>,  <37.413040, 36.925545, 30.208696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495892, 36.538849, 30.148682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319548, 0.211802, -0.923596,
		0.924656, 0.143356, 0.352790,
		0.207124, -0.966742, -0.150035,
		37.558029, 36.248825, 30.103672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133186, 36.923702, 30.004831>,  <37.413040, 36.925545, 30.208696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.133186, 36.923702, 30.004831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.974537, 36.575962, 29.886900>,  <37.879349, 36.367317, 29.816141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.974537, 36.575962, 29.886900>,  <38.133186, 36.923702, 30.004831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974537, 36.575962, 29.886900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361349, 0.147388, -0.920708,
		0.843872, -0.471706, 0.255682,
		-0.396619, -0.869350, -0.294827,
		37.855553, 36.315155, 29.798452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.635410, 36.619335, 29.547684>,  <38.133186, 36.923702, 30.004831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.635410, 36.619335, 29.547684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.316235, 36.400864, 29.445715>,  <38.124729, 36.269783, 29.384533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.316235, 36.400864, 29.445715>,  <38.635410, 36.619335, 29.547684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316235, 36.400864, 29.445715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293766, 0.016896, -0.955728,
		0.526302, -0.837501, 0.146966,
		-0.797940, -0.546175, -0.254922,
		38.076851, 36.237011, 29.369238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875023, 36.088303, 29.119221>,  <38.635410, 36.619335, 29.547684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875023, 36.088303, 29.119221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.488827, 36.111061, 29.017567>,  <38.257107, 36.124718, 28.956575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.488827, 36.111061, 29.017567>,  <38.875023, 36.088303, 29.119221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.488827, 36.111061, 29.017567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258069, 0.078074, -0.962967,
		-0.034949, -0.995323, -0.090063,
		-0.965494, 0.056897, -0.254133,
		38.199177, 36.128128, 28.941326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732475, 35.484982, 28.663776>,  <38.875023, 36.088303, 29.119221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.732475, 35.484982, 28.663776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.471264, 35.781315, 28.600883>,  <38.314537, 35.959114, 28.563147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.471264, 35.781315, 28.600883>,  <38.732475, 35.484982, 28.663776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.471264, 35.781315, 28.600883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173687, -0.055578, -0.983231,
		-0.737147, -0.669389, -0.092378,
		-0.653030, 0.740831, -0.157233,
		38.275356, 36.003563, 28.553713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304741, 35.280132, 28.088484>,  <38.732475, 35.484982, 28.663776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304741, 35.280132, 28.088484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.300137, 35.680054, 28.094952>,  <38.297375, 35.920006, 28.098833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.300137, 35.680054, 28.094952>,  <38.304741, 35.280132, 28.088484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.300137, 35.680054, 28.094952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097174, 0.017214, -0.995119,
		-0.995201, -0.009879, -0.097353,
		-0.011507, 0.999803, 0.016171,
		38.296684, 35.979996, 28.099802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.945595, 35.443260, 27.578281>,  <38.304741, 35.280132, 28.088484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.945595, 35.443260, 27.578281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.078033, 35.819653, 27.606367>,  <38.157497, 36.045486, 27.623219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.078033, 35.819653, 27.606367>,  <37.945595, 35.443260, 27.578281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.078033, 35.819653, 27.606367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076426, 0.047426, -0.995947,
		-0.940496, 0.335123, -0.056212,
		0.331099, 0.940980, 0.070216,
		38.177364, 36.101948, 27.627432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553566, 35.890099, 27.069324>,  <37.945595, 35.443260, 27.578281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.553566, 35.890099, 27.069324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.886871, 36.096867, 27.147770>,  <38.086857, 36.220928, 27.194838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.886871, 36.096867, 27.147770>,  <37.553566, 35.890099, 27.069324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.886871, 36.096867, 27.147770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155307, 0.121582, -0.980356,
		-0.530610, 0.847355, 0.021029,
		0.833266, 0.516921, 0.196113,
		38.136852, 36.251942, 27.206604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497955, 36.566284, 26.712952>,  <37.553566, 35.890099, 27.069324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497955, 36.566284, 26.712952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.887672, 36.493568, 26.766167>,  <38.121502, 36.449940, 26.798096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.887672, 36.493568, 26.766167>,  <37.497955, 36.566284, 26.712952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.887672, 36.493568, 26.766167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171526, 0.215836, -0.961246,
		0.146031, 0.959358, 0.241469,
		0.974297, -0.181790, 0.133036,
		38.179962, 36.439030, 26.806078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778862, 36.791298, 26.077999>,  <37.497955, 36.566284, 26.712952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.778862, 36.791298, 26.077999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.105980, 36.607967, 26.217228>,  <38.302250, 36.497971, 26.300764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.105980, 36.607967, 26.217228>,  <37.778862, 36.791298, 26.077999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105980, 36.607967, 26.217228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371785, -0.040938, -0.927416,
		0.439307, 0.887841, 0.136920,
		0.817793, -0.458325, 0.348070,
		38.351318, 36.470470, 26.321650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317284, 37.212727, 25.877113>,  <37.778862, 36.791298, 26.077999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317284, 37.212727, 25.877113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.433907, 36.835030, 25.938307>,  <38.503880, 36.608410, 25.975023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.433907, 36.835030, 25.938307>,  <38.317284, 37.212727, 25.877113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.433907, 36.835030, 25.938307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349721, -0.043636, -0.935837,
		0.890332, 0.326349, 0.317498,
		0.291555, -0.944241, 0.152982,
		38.521374, 36.551758, 25.984201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032669, 37.165390, 25.567993>,  <38.317284, 37.212727, 25.877113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.032669, 37.165390, 25.567993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.966644, 36.773998, 25.617533>,  <38.927029, 36.539165, 25.647257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.966644, 36.773998, 25.617533>,  <39.032669, 37.165390, 25.567993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.966644, 36.773998, 25.617533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431566, -0.184566, -0.882998,
		0.886852, -0.092297, 0.452742,
		-0.165059, -0.978477, 0.123851,
		38.917126, 36.480453, 25.654688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649940, 36.802124, 25.395102>,  <39.032669, 37.165390, 25.567993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.649940, 36.802124, 25.395102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360207, 36.531719, 25.340933>,  <39.186367, 36.369476, 25.308432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360207, 36.531719, 25.340933>,  <39.649940, 36.802124, 25.395102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360207, 36.531719, 25.340933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368610, -0.213730, -0.904680,
		0.582634, -0.705211, 0.403999,
		-0.724337, -0.676016, -0.135421,
		39.142906, 36.328915, 25.300306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.891289, 36.190117, 25.109955>,  <39.649940, 36.802124, 25.395102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.891289, 36.190117, 25.109955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.502762, 36.145588, 25.025904>,  <39.269646, 36.118870, 24.975473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.502762, 36.145588, 25.025904>,  <39.891289, 36.190117, 25.109955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.502762, 36.145588, 25.025904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231560, -0.241814, -0.942288,
		0.054085, -0.963916, 0.260655,
		-0.971316, -0.111321, -0.210126,
		39.211369, 36.112190, 24.962866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.893452, 35.517803, 24.791349>,  <39.891289, 36.190117, 25.109955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.893452, 35.517803, 24.791349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.561234, 35.705116, 24.670742>,  <39.361904, 35.817505, 24.598377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.561234, 35.705116, 24.670742>,  <39.893452, 35.517803, 24.791349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.561234, 35.705116, 24.670742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025398, -0.508960, -0.860415,
		-0.556379, -0.722268, 0.410818,
		-0.830540, 0.468283, -0.301519,
		39.312073, 35.845600, 24.580286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.358330, 34.980389, 24.629385>,  <39.893452, 35.517803, 24.791349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.358330, 34.980389, 24.629385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.303825, 35.320766, 24.426477>,  <39.271122, 35.524994, 24.304733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.303825, 35.320766, 24.426477>,  <39.358330, 34.980389, 24.629385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.303825, 35.320766, 24.426477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015788, -0.510115, -0.859962,
		-0.990548, -0.125185, 0.056072,
		-0.136257, 0.850948, -0.507269,
		39.262947, 35.576050, 24.274296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868496, 34.830196, 23.980703>,  <39.358330, 34.980389, 24.629385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.868496, 34.830196, 23.980703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.075958, 35.162525, 23.899982>,  <39.200436, 35.361923, 23.851551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.075958, 35.162525, 23.899982>,  <38.868496, 34.830196, 23.980703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.075958, 35.162525, 23.899982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176401, -0.334937, -0.925581,
		-0.836587, 0.444461, -0.320276,
		0.518657, 0.830826, -0.201800,
		39.231556, 35.411774, 23.839443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703423, 34.975773, 23.329948>,  <38.868496, 34.830196, 23.980703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.703423, 34.975773, 23.329948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.032536, 35.200191, 23.366299>,  <39.230003, 35.334843, 23.388109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.032536, 35.200191, 23.366299>,  <38.703423, 34.975773, 23.329948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.032536, 35.200191, 23.366299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132993, -0.034594, -0.990513,
		-0.552582, 0.827060, -0.103078,
		0.822780, 0.561048, 0.090877,
		39.279369, 35.368507, 23.393562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.726852, 35.515236, 22.797039>,  <38.703423, 34.975773, 23.329948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.726852, 35.515236, 22.797039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.112511, 35.483547, 22.898344>,  <39.343906, 35.464535, 22.959127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.112511, 35.483547, 22.898344>,  <38.726852, 35.515236, 22.797039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112511, 35.483547, 22.898344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253530, -0.006826, -0.967303,
		0.078358, 0.996834, 0.013503,
		0.964149, -0.079219, 0.253263,
		39.401756, 35.459782, 22.974323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980095, 36.042938, 22.345602>,  <38.726852, 35.515236, 22.797039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.980095, 36.042938, 22.345602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.279945, 35.809528, 22.470543>,  <39.459854, 35.669483, 22.545507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.279945, 35.809528, 22.470543>,  <38.980095, 36.042938, 22.345602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279945, 35.809528, 22.470543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417190, 0.050203, -0.907432,
		0.513828, 0.810542, 0.281074,
		0.749622, -0.583525, 0.312354,
		39.504833, 35.634472, 22.564249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478436, 36.237629, 21.855577>,  <38.980095, 36.042938, 22.345602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.478436, 36.237629, 21.855577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.665115, 35.933102, 22.035616>,  <39.777122, 35.750385, 22.143639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.665115, 35.933102, 22.035616>,  <39.478436, 36.237629, 21.855577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.665115, 35.933102, 22.035616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543182, -0.154888, -0.825205,
		0.697956, 0.629610, 0.341246,
		0.466703, -0.761315, 0.450098,
		39.805126, 35.704708, 22.170645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.266895, 36.427528, 21.818470>,  <39.478436, 36.237629, 21.855577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.266895, 36.427528, 21.818470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.199253, 36.034744, 21.852316>,  <40.158669, 35.799076, 21.872623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.199253, 36.034744, 21.852316>,  <40.266895, 36.427528, 21.818470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.199253, 36.034744, 21.852316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615407, -0.172260, -0.769156,
		0.769855, -0.077999, 0.633435,
		-0.169109, -0.981959, 0.084614,
		40.148521, 35.740158, 21.877701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.922165, 36.138783, 21.781857>,  <40.266895, 36.427528, 21.818470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.922165, 36.138783, 21.781857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.667652, 35.846085, 21.684122>,  <40.514946, 35.670467, 21.625481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.667652, 35.846085, 21.684122>,  <40.922165, 36.138783, 21.781857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.667652, 35.846085, 21.684122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565824, -0.227364, -0.792558,
		0.524394, -0.642542, 0.558704,
		-0.636282, -0.731741, -0.244338,
		40.476768, 35.626564, 21.610821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.372185, 35.568005, 21.610340>,  <40.922165, 36.138783, 21.781857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.372185, 35.568005, 21.610340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.004196, 35.492519, 21.472918>,  <40.783401, 35.447227, 21.390465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.004196, 35.492519, 21.472918>,  <41.372185, 35.568005, 21.610340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.004196, 35.492519, 21.472918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391170, -0.498148, -0.773844,
		-0.025106, -0.846307, 0.532104,
		-0.919976, -0.188714, -0.343556,
		40.728203, 35.435905, 21.369850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.311604, 34.913109, 21.462652>,  <41.372185, 35.568005, 21.610340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.311604, 34.913109, 21.462652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.019085, 35.026340, 21.214437>,  <40.843575, 35.094280, 21.065510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.019085, 35.026340, 21.214437>,  <41.311604, 34.913109, 21.462652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.019085, 35.026340, 21.214437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345247, -0.630997, -0.694728,
		-0.588218, -0.722294, 0.363718,
		-0.731303, 0.283079, -0.620534,
		40.799694, 35.111267, 21.028276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.181213, 34.267033, 21.149511>,  <41.311604, 34.913109, 21.462652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.181213, 34.267033, 21.149511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.046753, 34.551266, 20.902260>,  <40.966076, 34.721806, 20.753910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.046753, 34.551266, 20.902260>,  <41.181213, 34.267033, 21.149511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.046753, 34.551266, 20.902260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334954, -0.523208, -0.783619,
		-0.880232, -0.470459, -0.062134,
		-0.336151, 0.710579, -0.618127,
		40.945908, 34.764439, 20.716822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.616520, 33.869526, 20.812572>,  <41.181213, 34.267033, 21.149511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.616520, 33.869526, 20.812572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.906471, 33.606319, 20.731024>,  <42.080441, 33.448395, 20.682095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.906471, 33.606319, 20.731024>,  <41.616520, 33.869526, 20.812572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.906471, 33.606319, 20.731024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085105, -0.379222, 0.921384,
		-0.683599, -0.650541, -0.330890,
		0.724879, -0.658018, -0.203872,
		42.123936, 33.408913, 20.669863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.353081, 33.121490, 20.866289>,  <41.616520, 33.869526, 20.812572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.353081, 33.121490, 20.866289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.724403, 33.226479, 20.971636>,  <41.947197, 33.289471, 21.034843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.724403, 33.226479, 20.971636>,  <41.353081, 33.121490, 20.866289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.724403, 33.226479, 20.971636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191814, -0.268736, 0.943922,
		0.318528, -0.926763, -0.199123,
		0.928303, 0.262471, 0.263366,
		42.002895, 33.305222, 21.050646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.385998, 32.863270, 21.510466>,  <41.353081, 33.121490, 20.866289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.385998, 32.863270, 21.510466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.732594, 33.062195, 21.527786>,  <41.940552, 33.181549, 21.538177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.732594, 33.062195, 21.527786>,  <41.385998, 32.863270, 21.510466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.732594, 33.062195, 21.527786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095715, 0.080383, 0.992158,
		0.489934, -0.863839, 0.117251,
		0.866489, 0.497314, 0.043300,
		41.992542, 33.211388, 21.540777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.897972, 32.573074, 22.042753>,  <41.385998, 32.863270, 21.510466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.897972, 32.573074, 22.042753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.014519, 32.951569, 21.986551>,  <42.084446, 33.178665, 21.952831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.014519, 32.951569, 21.986551>,  <41.897972, 32.573074, 22.042753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.014519, 32.951569, 21.986551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049275, 0.131835, 0.990046,
		0.955340, -0.295394, -0.008213,
		0.291371, 0.946236, -0.140503,
		42.101929, 33.235439, 21.944401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.418049, 32.705166, 22.511974>,  <41.897972, 32.573074, 22.042753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.418049, 32.705166, 22.511974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.294296, 33.071815, 22.410711>,  <42.220047, 33.291805, 22.349953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.294296, 33.071815, 22.410711>,  <42.418049, 32.705166, 22.511974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.294296, 33.071815, 22.410711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101421, 0.296505, 0.949631,
		0.945515, 0.268120, -0.184697,
		-0.309378, 0.916622, -0.253157,
		42.201485, 33.346802, 22.334764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.890919, 33.154510, 22.815041>,  <42.418049, 32.705166, 22.511974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.890919, 33.154510, 22.815041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.568268, 33.382168, 22.751249>,  <42.374680, 33.518761, 22.712975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.568268, 33.382168, 22.751249>,  <42.890919, 33.154510, 22.815041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.568268, 33.382168, 22.751249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024779, 0.302138, 0.952942,
		0.590544, 0.764715, -0.257815,
		-0.806625, 0.569142, -0.159477,
		42.326279, 33.552910, 22.703405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.979935, 33.708252, 23.260391>,  <42.890919, 33.154510, 22.815041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.979935, 33.708252, 23.260391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.591175, 33.762093, 23.183146>,  <42.357918, 33.794399, 23.136799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.591175, 33.762093, 23.183146>,  <42.979935, 33.708252, 23.260391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.591175, 33.762093, 23.183146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129910, 0.377426, 0.916882,
		0.196303, 0.916205, -0.349334,
		-0.971899, 0.134604, -0.193114,
		42.299606, 33.802475, 23.125212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.721458, 34.382313, 23.515072>,  <42.979935, 33.708252, 23.260391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.721458, 34.382313, 23.515072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.424492, 34.114574, 23.503788>,  <42.246311, 33.953930, 23.497017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.424492, 34.114574, 23.503788>,  <42.721458, 34.382313, 23.515072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.424492, 34.114574, 23.503788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208209, 0.190504, 0.959352,
		-0.636764, 0.718111, -0.280797,
		-0.742415, -0.669346, -0.028211,
		42.201767, 33.913769, 23.495325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.231236, 34.689129, 23.842459>,  <42.721458, 34.382313, 23.515072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.231236, 34.689129, 23.842459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.084976, 34.316837, 23.845121>,  <41.997223, 34.093464, 23.846720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.084976, 34.316837, 23.845121>,  <42.231236, 34.689129, 23.842459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.084976, 34.316837, 23.845121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448588, 0.182491, 0.874909,
		-0.815519, 0.316921, -0.484241,
		-0.365646, -0.930730, 0.006658,
		41.975281, 34.037617, 23.847118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.469616, 34.805748, 23.922710>,  <42.231236, 34.689129, 23.842459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.469616, 34.805748, 23.922710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.563595, 34.429703, 24.021492>,  <41.619984, 34.204075, 24.080761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.563595, 34.429703, 24.021492>,  <41.469616, 34.805748, 23.922710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.563595, 34.429703, 24.021492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600322, 0.059477, 0.797544,
		-0.764470, -0.335633, -0.550397,
		0.234946, -0.940113, 0.246956,
		41.634079, 34.147667, 24.095579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.807571, 34.439167, 24.120516>,  <41.469616, 34.805748, 23.922710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.807571, 34.439167, 24.120516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.111149, 34.241791, 24.290462>,  <41.293297, 34.123363, 24.392431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.111149, 34.241791, 24.290462>,  <40.807571, 34.439167, 24.120516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.111149, 34.241791, 24.290462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531409, -0.092298, 0.842072,
		-0.376302, -0.864866, -0.332270,
		0.758947, -0.493444, 0.424866,
		41.338833, 34.093758, 24.417923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.506836, 33.803608, 24.327015>,  <40.807571, 34.439167, 24.120516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.506836, 33.803608, 24.327015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.812016, 33.851616, 24.581102>,  <40.995125, 33.880421, 24.733555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.812016, 33.851616, 24.581102>,  <40.506836, 33.803608, 24.327015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.812016, 33.851616, 24.581102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587760, -0.280338, 0.758913,
		0.269163, -0.952368, -0.143340,
		0.762948, 0.120021, 0.635221,
		41.040901, 33.887623, 24.771669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446087, 33.310184, 24.928118>,  <40.506836, 33.803608, 24.327015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446087, 33.310184, 24.928118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.715225, 33.573223, 25.063675>,  <40.876709, 33.731045, 25.145008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.715225, 33.573223, 25.063675>,  <40.446087, 33.310184, 24.928118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.715225, 33.573223, 25.063675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477302, 0.035891, 0.878006,
		0.565209, -0.752517, 0.338020,
		0.672846, 0.657595, 0.338892,
		40.917080, 33.770500, 25.165342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.686779, 33.112663, 25.598169>,  <40.446087, 33.310184, 24.928118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.686779, 33.112663, 25.598169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.778530, 33.501781, 25.611189>,  <40.833580, 33.735252, 25.619001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.778530, 33.501781, 25.611189>,  <40.686779, 33.112663, 25.598169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.778530, 33.501781, 25.611189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450590, 0.076486, 0.889449,
		0.862759, -0.218689, 0.455875,
		0.229380, 0.972793, 0.032550,
		40.847343, 33.793621, 25.620955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.845215, 33.327114, 26.321489>,  <40.686779, 33.112663, 25.598169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.845215, 33.327114, 26.321489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.822559, 33.690033, 26.154827>,  <40.808964, 33.907784, 26.054829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.822559, 33.690033, 26.154827>,  <40.845215, 33.327114, 26.321489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.822559, 33.690033, 26.154827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312196, 0.380304, 0.870576,
		0.948327, 0.179389, 0.261714,
		-0.056641, 0.907297, -0.416657,
		40.805569, 33.962223, 26.029829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.299686, 33.751278, 26.704159>,  <40.845215, 33.327114, 26.321489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.299686, 33.751278, 26.704159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.041046, 34.000706, 26.528402>,  <40.885860, 34.150364, 26.422949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.041046, 34.000706, 26.528402>,  <41.299686, 33.751278, 26.704159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.041046, 34.000706, 26.528402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185638, 0.430062, 0.883508,
		0.739894, 0.652847, -0.162321,
		-0.646604, 0.623569, -0.439393,
		40.847065, 34.187775, 26.396584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.488235, 34.394608, 26.979340>,  <41.299686, 33.751278, 26.704159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.488235, 34.394608, 26.979340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.119812, 34.416393, 26.825100>,  <40.898758, 34.429466, 26.732555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.119812, 34.416393, 26.825100>,  <41.488235, 34.394608, 26.979340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.119812, 34.416393, 26.825100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325483, 0.435967, 0.839044,
		0.213810, 0.898313, -0.383822,
		-0.921057, 0.054469, -0.385599,
		40.843494, 34.432735, 26.709419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.185013, 35.051102, 27.143618>,  <41.488235, 34.394608, 26.979340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.185013, 35.051102, 27.143618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.862125, 34.830761, 27.058805>,  <40.668392, 34.698559, 27.007917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.862125, 34.830761, 27.058805>,  <41.185013, 35.051102, 27.143618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.862125, 34.830761, 27.058805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415547, 0.275258, 0.866922,
		-0.419180, 0.787908, -0.451098,
		-0.807223, -0.550849, -0.212030,
		40.619957, 34.665504, 26.995197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.538090, 35.421715, 27.312803>,  <41.185013, 35.051102, 27.143618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.538090, 35.421715, 27.312803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.419189, 35.040680, 27.286819>,  <40.347851, 34.812057, 27.271229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.419189, 35.040680, 27.286819>,  <40.538090, 35.421715, 27.312803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.419189, 35.040680, 27.286819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564505, 0.120462, 0.816592,
		-0.770051, 0.279402, -0.573547,
		-0.297248, -0.952588, -0.064962,
		40.330013, 34.754902, 27.267330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832409, 35.452850, 27.465527>,  <40.538090, 35.421715, 27.312803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.832409, 35.452850, 27.465527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.926437, 35.071224, 27.539814>,  <39.982857, 34.842247, 27.584387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.926437, 35.071224, 27.539814>,  <39.832409, 35.452850, 27.465527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.926437, 35.071224, 27.539814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532017, 0.033610, 0.846066,
		-0.813449, -0.297692, -0.499680,
		0.235073, -0.954070, 0.185717,
		39.996960, 34.785004, 27.595530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.212807, 35.142307, 27.651268>,  <39.832409, 35.452850, 27.465527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.212807, 35.142307, 27.651268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.491844, 34.893742, 27.793932>,  <39.659267, 34.744602, 27.879530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.491844, 34.893742, 27.793932>,  <39.212807, 35.142307, 27.651268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.491844, 34.893742, 27.793932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525603, -0.105534, 0.844158,
		-0.486934, -0.776341, -0.400238,
		0.697594, -0.621416, 0.356659,
		39.701122, 34.707317, 27.900930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.850983, 34.549755, 28.001495>,  <39.212807, 35.142307, 27.651268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.850983, 34.549755, 28.001495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206978, 34.581303, 28.181143>,  <39.420574, 34.600231, 28.288931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206978, 34.581303, 28.181143>,  <38.850983, 34.549755, 28.001495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206978, 34.581303, 28.181143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439104, -0.117315, 0.890744,
		0.122944, -0.989958, -0.069776,
		0.889985, 0.078873, 0.449117,
		39.473972, 34.604965, 28.315878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762161, 34.136295, 28.591499>,  <38.850983, 34.549755, 28.001495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.762161, 34.136295, 28.591499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.102139, 34.322845, 28.689556>,  <39.306126, 34.434776, 28.748390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.102139, 34.322845, 28.689556>,  <38.762161, 34.136295, 28.591499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.102139, 34.322845, 28.689556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136939, -0.253748, 0.957528,
		0.508770, -0.847412, -0.151806,
		0.849941, 0.466374, 0.245144,
		39.357121, 34.462757, 28.763100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291748, 33.626781, 28.994762>,  <38.762161, 34.136295, 28.591499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.291748, 33.626781, 28.994762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.391956, 34.003052, 29.086304>,  <39.452080, 34.228813, 29.141230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.391956, 34.003052, 29.086304>,  <39.291748, 33.626781, 28.994762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.391956, 34.003052, 29.086304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196773, -0.280935, 0.939338,
		0.947903, -0.190291, -0.255480,
		0.250521, 0.940673, 0.228855,
		39.467113, 34.285252, 29.154961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.891438, 33.651005, 29.546448>,  <39.291748, 33.626781, 28.994762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.891438, 33.651005, 29.546448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.788540, 34.035358, 29.587505>,  <39.726803, 34.265968, 29.612139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.788540, 34.035358, 29.587505>,  <39.891438, 33.651005, 29.546448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.788540, 34.035358, 29.587505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124816, -0.072288, 0.989543,
		0.958252, 0.267364, -0.101337,
		-0.257243, 0.960880, 0.102642,
		39.711369, 34.323624, 29.618298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.321049, 33.913605, 30.152561>,  <39.891438, 33.651005, 29.546448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.321049, 33.913605, 30.152561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.025284, 34.174900, 30.087399>,  <39.847824, 34.331676, 30.048302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.025284, 34.174900, 30.087399>,  <40.321049, 33.913605, 30.152561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.025284, 34.174900, 30.087399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042795, 0.195878, 0.979694,
		0.671886, 0.731374, -0.116880,
		-0.739417, 0.653241, -0.162907,
		39.803459, 34.370872, 30.038527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.497711, 34.585548, 30.482635>,  <40.321049, 33.913605, 30.152561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.497711, 34.585548, 30.482635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.102478, 34.530277, 30.455523>,  <39.865337, 34.497116, 30.439255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.102478, 34.530277, 30.455523>,  <40.497711, 34.585548, 30.482635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.102478, 34.530277, 30.455523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088694, 0.151309, 0.984499,
		-0.125777, 0.978782, -0.161762,
		-0.988086, -0.138174, -0.067781,
		39.806053, 34.488827, 30.435188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.271332, 35.184868, 30.772720>,  <40.497711, 34.585548, 30.482635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.271332, 35.184868, 30.772720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.016464, 34.878872, 30.810261>,  <39.863544, 34.695274, 30.832785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.016464, 34.878872, 30.810261>,  <40.271332, 35.184868, 30.772720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.016464, 34.878872, 30.810261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114807, 0.214617, 0.969927,
		-0.762124, 0.607234, -0.224573,
		-0.637170, -0.764988, 0.093850,
		39.825314, 34.649376, 30.838415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.985512, 35.337517, 31.347607>,  <40.271332, 35.184868, 30.772720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.985512, 35.337517, 31.347607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.811306, 34.978317, 31.322561>,  <39.706783, 34.762798, 31.307533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.811306, 34.978317, 31.322561>,  <39.985512, 35.337517, 31.347607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.811306, 34.978317, 31.322561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313441, 0.086071, 0.945699,
		-0.843851, 0.431489, -0.318956,
		-0.435512, -0.898003, -0.062615,
		39.680653, 34.708916, 31.303776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331161, 35.471058, 31.675661>,  <39.985512, 35.337517, 31.347607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.331161, 35.471058, 31.675661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.404915, 35.077969, 31.682018>,  <39.449165, 34.842113, 31.685833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.404915, 35.077969, 31.682018>,  <39.331161, 35.471058, 31.675661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.404915, 35.077969, 31.682018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278205, -0.036677, 0.959821,
		-0.942658, -0.181397, -0.280161,
		0.184384, -0.982726, 0.015892,
		39.460232, 34.783150, 31.686787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694538, 35.231430, 32.122635>,  <39.331161, 35.471058, 31.675661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694538, 35.231430, 32.122635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.984814, 34.956482, 32.110672>,  <39.158978, 34.791512, 32.103493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.984814, 34.956482, 32.110672>,  <38.694538, 35.231430, 32.122635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984814, 34.956482, 32.110672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131104, -0.180825, 0.974738,
		-0.675415, -0.703437, -0.221340,
		0.725690, -0.687371, -0.029909,
		39.202522, 34.750271, 32.101700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543304, 34.712410, 32.629395>,  <38.694538, 35.231430, 32.122635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.543304, 34.712410, 32.629395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.932442, 34.625942, 32.596302>,  <39.165924, 34.574062, 32.576447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.932442, 34.625942, 32.596302>,  <38.543304, 34.712410, 32.629395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932442, 34.625942, 32.596302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062618, -0.098298, 0.993185,
		-0.222826, -0.971396, -0.082093,
		0.972845, -0.216167, -0.082730,
		39.224297, 34.561092, 32.571484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577370, 34.120533, 33.071697>,  <38.543304, 34.712410, 32.629395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577370, 34.120533, 33.071697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.950047, 34.260445, 33.032490>,  <39.173653, 34.344391, 33.008965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.950047, 34.260445, 33.032490>,  <38.577370, 34.120533, 33.071697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.950047, 34.260445, 33.032490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127943, -0.063440, 0.989750,
		0.339977, -0.934681, -0.103859,
		0.931690, 0.349780, -0.098017,
		39.229553, 34.365379, 33.003086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021130, 33.617630, 33.514854>,  <38.577370, 34.120533, 33.071697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.021130, 33.617630, 33.514854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.160454, 33.986092, 33.445396>,  <39.244049, 34.207169, 33.403721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.160454, 33.986092, 33.445396>,  <39.021130, 33.617630, 33.514854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.160454, 33.986092, 33.445396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165352, 0.121962, 0.978664,
		0.922679, -0.369595, -0.109833,
		0.348314, 0.921154, -0.173645,
		39.264950, 34.262440, 33.393303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478222, 33.617840, 34.026985>,  <39.021130, 33.617630, 33.514854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.478222, 33.617840, 34.026985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.456055, 34.006351, 33.934422>,  <39.442757, 34.239456, 33.878883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.456055, 34.006351, 33.934422>,  <39.478222, 33.617840, 34.026985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456055, 34.006351, 33.934422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154861, 0.237321, 0.959008,
		0.986381, 0.017306, -0.163564,
		-0.055414, 0.971277, -0.231409,
		39.439430, 34.297733, 33.864998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.111340, 33.755539, 34.129337>,  <39.478222, 33.617840, 34.026985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.111340, 33.755539, 34.129337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.907986, 34.098927, 34.156425>,  <39.785973, 34.304958, 34.172680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.907986, 34.098927, 34.156425>,  <40.111340, 33.755539, 34.129337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.907986, 34.098927, 34.156425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402161, 0.167148, 0.900182,
		0.761456, 0.484869, -0.430216,
		-0.508380, 0.858466, 0.067720,
		39.755470, 34.356468, 34.176743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.602592, 34.226479, 34.432739>,  <40.111340, 33.755539, 34.129337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.602592, 34.226479, 34.432739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.241001, 34.386497, 34.493118>,  <40.024048, 34.482510, 34.529346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.241001, 34.386497, 34.493118>,  <40.602592, 34.226479, 34.432739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.241001, 34.386497, 34.493118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309113, 0.367529, 0.877139,
		0.295422, 0.839573, -0.455898,
		-0.903978, 0.400050, 0.150947,
		39.969807, 34.506512, 34.538403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.731586, 34.942860, 34.644058>,  <40.602592, 34.226479, 34.432739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.731586, 34.942860, 34.644058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.380600, 34.796406, 34.767994>,  <40.170010, 34.708534, 34.842354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.380600, 34.796406, 34.767994>,  <40.731586, 34.942860, 34.644058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.380600, 34.796406, 34.767994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279656, 0.134271, 0.950665,
		-0.389671, 0.920825, -0.015427,
		-0.877467, -0.366132, 0.309836,
		40.117359, 34.686565, 34.860943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.523037, 35.406372, 35.224789>,  <40.731586, 34.942860, 34.644058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.523037, 35.406372, 35.224789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.305328, 35.074368, 35.273533>,  <40.174702, 34.875164, 35.302780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.305328, 35.074368, 35.273533>,  <40.523037, 35.406372, 35.224789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.305328, 35.074368, 35.273533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326324, -0.075652, 0.942226,
		-0.772838, 0.552593, 0.312028,
		-0.544273, -0.830011, 0.121858,
		40.142048, 34.825363, 35.310089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.210938, 35.528297, 35.857697>,  <40.523037, 35.406372, 35.224789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.210938, 35.528297, 35.857697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.225201, 35.136620, 35.777786>,  <40.233757, 34.901615, 35.729839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.225201, 35.136620, 35.777786>,  <40.210938, 35.528297, 35.857697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.225201, 35.136620, 35.777786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376191, -0.172050, 0.910428,
		-0.925856, -0.107614, 0.362229,
		0.035653, -0.979193, -0.199776,
		40.235897, 34.842861, 35.717854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.749481, 35.531773, 36.318432>,  <40.210938, 35.528297, 35.857697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.749481, 35.531773, 36.318432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.093243, 35.702473, 36.431076>,  <41.299500, 35.804893, 36.498661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.093243, 35.702473, 36.431076>,  <40.749481, 35.531773, 36.318432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.093243, 35.702473, 36.431076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148504, -0.318689, 0.936154,
		0.489253, -0.846356, -0.210508,
		0.859406, 0.426755, 0.281607,
		41.351063, 35.830498, 36.515556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.308228, 35.027168, 36.517075>,  <40.749481, 35.531773, 36.318432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.308228, 35.027168, 36.517075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.363270, 35.375843, 36.705212>,  <41.396297, 35.585049, 36.818092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.363270, 35.375843, 36.705212>,  <41.308228, 35.027168, 36.517075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.363270, 35.375843, 36.705212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025666, -0.477840, 0.878072,
		0.990154, -0.108758, -0.088128,
		0.137609, 0.871688, 0.470344,
		41.404552, 35.637348, 36.846313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.902321, 34.894527, 36.989868>,  <41.308228, 35.027168, 36.517075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.902321, 34.894527, 36.989868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.667213, 35.196842, 37.105328>,  <41.526150, 35.378231, 37.174603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.667213, 35.196842, 37.105328>,  <41.902321, 34.894527, 36.989868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.667213, 35.196842, 37.105328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136082, -0.259346, 0.956149,
		0.797504, 0.601272, 0.049586,
		-0.587766, 0.755785, 0.288652,
		41.490883, 35.423576, 37.191925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.206470, 35.120941, 37.519196>,  <41.902321, 34.894527, 36.989868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.206470, 35.120941, 37.519196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.851330, 35.302139, 37.551476>,  <41.638245, 35.410858, 37.570843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.851330, 35.302139, 37.551476>,  <42.206470, 35.120941, 37.519196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.851330, 35.302139, 37.551476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054870, -0.278360, 0.958908,
		0.456848, 0.846940, 0.271998,
		-0.887851, 0.453000, 0.080696,
		41.584976, 35.438038, 37.575684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.153969, 35.525635, 38.144169>,  <42.206470, 35.120941, 37.519196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.153969, 35.525635, 38.144169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.765045, 35.483227, 38.060863>,  <41.531693, 35.457783, 38.010880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.765045, 35.483227, 38.060863>,  <42.153969, 35.525635, 38.144169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.765045, 35.483227, 38.060863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203567, -0.053475, 0.977600,
		-0.114782, 0.992925, 0.030412,
		-0.972309, -0.106020, -0.208265,
		41.473351, 35.451420, 37.998383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.965313, 36.046860, 38.587196>,  <42.153969, 35.525635, 38.144169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.965313, 36.046860, 38.587196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.691963, 35.768673, 38.498356>,  <41.527954, 35.601761, 38.445053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.691963, 35.768673, 38.498356>,  <41.965313, 36.046860, 38.587196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.691963, 35.768673, 38.498356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291391, -0.019106, 0.956413,
		-0.669393, 0.718309, -0.189595,
		-0.683378, -0.695462, -0.222098,
		41.486950, 35.560036, 38.431728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.489868, 36.193306, 39.005054>,  <41.965313, 36.046860, 38.587196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.489868, 36.193306, 39.005054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.406200, 35.817104, 38.897945>,  <41.355999, 35.591385, 38.833679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.406200, 35.817104, 38.897945>,  <41.489868, 36.193306, 39.005054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.406200, 35.817104, 38.897945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095395, -0.252902, 0.962777,
		-0.973215, 0.226927, -0.036820,
		-0.209169, -0.940502, -0.267776,
		41.343449, 35.534954, 38.817612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.888397, 36.045200, 39.374023>,  <41.489868, 36.193306, 39.005054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.888397, 36.045200, 39.374023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.090271, 35.711521, 39.285114>,  <41.211395, 35.511314, 39.231770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.090271, 35.711521, 39.285114>,  <40.888397, 36.045200, 39.374023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.090271, 35.711521, 39.285114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197444, -0.139115, 0.970393,
		-0.840423, -0.533628, 0.094498,
		0.504683, -0.834199, -0.222277,
		41.241676, 35.461262, 39.218430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.671562, 35.438671, 39.803764>,  <40.888397, 36.045200, 39.374023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.671562, 35.438671, 39.803764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.055878, 35.397041, 39.700970>,  <41.286469, 35.372063, 39.639294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.055878, 35.397041, 39.700970>,  <40.671562, 35.438671, 39.803764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.055878, 35.397041, 39.700970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246982, -0.099950, 0.963852,
		-0.126002, -0.989534, -0.070326,
		0.960793, -0.104078, -0.256992,
		41.344116, 35.365818, 39.623871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.621090, 34.984581, 40.274940>,  <40.671562, 35.438671, 39.803764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.621090, 34.984581, 40.274940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.992195, 35.072990, 40.154675>,  <41.214859, 35.126038, 40.082516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.992195, 35.072990, 40.154675>,  <40.621090, 34.984581, 40.274940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.992195, 35.072990, 40.154675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369976, -0.439758, 0.818371,
		0.048662, -0.870495, -0.489766,
		0.927766, 0.221025, -0.300663,
		41.270523, 35.139297, 40.064476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.985008, 34.286339, 40.225502>,  <40.621090, 34.984581, 40.274940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.985008, 34.286339, 40.225502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.261105, 34.572960, 40.265747>,  <41.426762, 34.744934, 40.289894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.261105, 34.572960, 40.265747>,  <40.985008, 34.286339, 40.225502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.261105, 34.572960, 40.265747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393523, -0.488429, 0.778830,
		0.607217, -0.497983, -0.619112,
		0.690237, 0.716554, 0.100614,
		41.468174, 34.787926, 40.295933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.696491, 33.905308, 40.166954>,  <40.985008, 34.286339, 40.225502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.696491, 33.905308, 40.166954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.681416, 34.249744, 40.369774>,  <41.672371, 34.456406, 40.491467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.681416, 34.249744, 40.369774>,  <41.696491, 33.905308, 40.166954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.681416, 34.249744, 40.369774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441373, -0.440889, 0.781542,
		0.896532, 0.253253, -0.363446,
		-0.037688, 0.861093, 0.507050,
		41.670109, 34.508072, 40.521889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.269825, 33.758675, 40.608734>,  <41.696491, 33.905308, 40.166954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.269825, 33.758675, 40.608734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.118416, 34.103996, 40.742252>,  <42.027573, 34.311192, 40.822365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.118416, 34.103996, 40.742252>,  <42.269825, 33.758675, 40.608734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.118416, 34.103996, 40.742252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321786, -0.215400, 0.921985,
		0.867858, 0.456401, -0.196267,
		-0.378519, 0.863308, 0.333799,
		42.004860, 34.362988, 40.842392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.800751, 33.977203, 41.097065>,  <42.269825, 33.758675, 40.608734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.800751, 33.977203, 41.097065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.447781, 34.147305, 41.177555>,  <42.236000, 34.249367, 41.225849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.447781, 34.147305, 41.177555>,  <42.800751, 33.977203, 41.097065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.447781, 34.147305, 41.177555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112914, -0.223781, 0.968077,
		0.456710, 0.876972, 0.149452,
		-0.882421, 0.425255, 0.201226,
		42.183056, 34.274879, 41.237923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.863525, 34.634132, 41.583599>,  <42.800751, 33.977203, 41.097065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.863525, 34.634132, 41.583599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.521755, 34.430042, 41.622837>,  <42.316692, 34.307587, 41.646378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.521755, 34.430042, 41.622837>,  <42.863525, 34.634132, 41.583599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.521755, 34.430042, 41.622837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244571, -0.228388, 0.942350,
		-0.458411, 0.829159, 0.319928,
		-0.854426, -0.510229, 0.098092,
		42.265427, 34.276974, 41.652264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.559837, 35.032291, 42.084808>,  <42.863525, 34.634132, 41.583599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.559837, 35.032291, 42.084808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.407169, 34.665409, 42.039093>,  <42.315567, 34.445278, 42.011662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.407169, 34.665409, 42.039093>,  <42.559837, 35.032291, 42.084808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.407169, 34.665409, 42.039093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094885, -0.161879, 0.982238,
		-0.919415, 0.364048, 0.148814,
		-0.381672, -0.917204, -0.114291,
		42.292667, 34.390247, 42.004807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.873718, 35.206417, 42.216278>,  <42.559837, 35.032291, 42.084808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.873718, 35.206417, 42.216278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.953831, 34.832485, 42.333572>,  <42.001896, 34.608128, 42.403950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.953831, 34.832485, 42.333572>,  <41.873718, 35.206417, 42.216278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.953831, 34.832485, 42.333572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398508, 0.195690, 0.896045,
		-0.895031, -0.296312, -0.333345,
		0.200277, -0.934829, 0.293231,
		42.013912, 34.552036, 42.421543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.362064, 35.016045, 42.653328>,  <41.873718, 35.206417, 42.216278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.362064, 35.016045, 42.653328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.630508, 34.727520, 42.721828>,  <41.791576, 34.554405, 42.762928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.630508, 34.727520, 42.721828>,  <41.362064, 35.016045, 42.653328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.630508, 34.727520, 42.721828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122335, 0.120083, 0.985197,
		-0.731195, -0.682126, -0.007652,
		0.671110, -0.721307, 0.171252,
		41.831841, 34.511127, 42.773205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.003719, 34.540257, 43.022049>,  <41.362064, 35.016045, 42.653328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.003719, 34.540257, 43.022049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.385838, 34.481773, 43.124836>,  <41.615108, 34.446682, 43.186508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.385838, 34.481773, 43.124836>,  <41.003719, 34.540257, 43.022049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.385838, 34.481773, 43.124836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251340, 0.056085, 0.966272,
		-0.155690, -0.987663, 0.016830,
		0.955295, -0.146209, 0.256971,
		41.672424, 34.437912, 43.201927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.053741, 33.948380, 43.391010>,  <41.003719, 34.540257, 43.022049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.053741, 33.948380, 43.391010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.357563, 34.185375, 43.498363>,  <41.539856, 34.327572, 43.562775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.357563, 34.185375, 43.498363>,  <41.053741, 33.948380, 43.391010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.357563, 34.185375, 43.498363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367032, 0.049760, 0.928876,
		0.536996, -0.804039, 0.255259,
		0.759554, 0.592491, 0.268387,
		41.585430, 34.363121, 43.578880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.242065, 33.725033, 44.085148>,  <41.053741, 33.948380, 43.391010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.242065, 33.725033, 44.085148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.972935, 33.665508, 44.375019>,  <40.811455, 33.629795, 44.548943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.972935, 33.665508, 44.375019>,  <41.242065, 33.725033, 44.085148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.972935, 33.665508, 44.375019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123998, -0.988387, -0.087833,
		0.729332, 0.030762, 0.683468,
		-0.672829, -0.148809, 0.724677,
		40.771088, 33.620865, 44.592422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.056568, 34.320255, 44.605145>,  <41.242065, 33.725033, 44.085148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.056568, 34.320255, 44.605145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.193928, 34.258846, 44.234524>,  <41.276344, 34.222000, 44.012150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.193928, 34.258846, 44.234524>,  <41.056568, 34.320255, 44.605145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.193928, 34.258846, 44.234524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216941, 0.972836, -0.080788,
		0.913790, -0.173265, 0.367381,
		0.343404, -0.153523, -0.926555,
		41.296947, 34.212788, 43.956558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.556141, 34.943752, 44.634594>,  <41.056568, 34.320255, 44.605145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.556141, 34.943752, 44.634594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.567780, 34.739586, 44.290821>,  <41.574760, 34.617085, 44.084557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.567780, 34.739586, 44.290821>,  <41.556141, 34.943752, 44.634594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.567780, 34.739586, 44.290821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324713, 0.817993, -0.474815,
		0.945365, -0.265256, 0.189537,
		0.029093, -0.510419, -0.859434,
		41.576508, 34.586460, 44.032990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.954506, 35.401028, 44.137096>,  <41.556141, 34.943752, 44.634594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.954506, 35.401028, 44.137096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.775059, 35.118736, 43.917755>,  <41.667389, 34.949364, 43.786148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.775059, 35.118736, 43.917755>,  <41.954506, 35.401028, 44.137096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.775059, 35.118736, 43.917755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048315, 0.593516, -0.803371,
		0.892416, -0.386901, -0.232166,
		-0.448619, -0.705724, -0.548356,
		41.640472, 34.907021, 43.753250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.393070, 35.487080, 43.535194>,  <41.954506, 35.401028, 44.137096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.393070, 35.487080, 43.535194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.041164, 35.325947, 43.434204>,  <41.830021, 35.229267, 43.373611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.041164, 35.325947, 43.434204>,  <42.393070, 35.487080, 43.535194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.041164, 35.325947, 43.434204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008262, 0.518027, -0.855324,
		0.475335, -0.754571, -0.452415,
		-0.879766, -0.402828, -0.252471,
		41.777233, 35.205097, 43.358463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.688831, 34.816284, 43.504482>,  <42.393070, 35.487080, 43.535194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.688831, 34.816284, 43.504482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.376091, 34.578342, 43.579163>,  <42.188446, 34.435577, 43.623970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.376091, 34.578342, 43.579163>,  <42.688831, 34.816284, 43.504482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.376091, 34.578342, 43.579163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043623, -0.246532, -0.968152,
		0.621940, -0.765093, 0.166801,
		-0.781848, -0.594857, 0.186704,
		42.141537, 34.399887, 43.635174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.897297, 34.126152, 43.429630>,  <42.688831, 34.816284, 43.504482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.897297, 34.126152, 43.429630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.508465, 34.186897, 43.358070>,  <42.275166, 34.223343, 43.315132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.508465, 34.186897, 43.358070>,  <42.897297, 34.126152, 43.429630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.508465, 34.186897, 43.358070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156076, -0.150909, -0.976149,
		-0.175246, -0.976812, 0.122992,
		-0.972075, 0.151870, -0.178903,
		42.216843, 34.232456, 43.304401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.547661, 33.485916, 43.158657>,  <42.897297, 34.126152, 43.429630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.547661, 33.485916, 43.158657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.325787, 33.797562, 43.041828>,  <42.192661, 33.984550, 42.971729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.325787, 33.797562, 43.041828>,  <42.547661, 33.485916, 43.158657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.325787, 33.797562, 43.041828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124344, -0.269468, -0.954948,
		-0.822718, -0.566012, 0.052591,
		-0.554684, 0.779113, -0.292076,
		42.159382, 34.031296, 42.954205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.035805, 33.330418, 42.683197>,  <42.547661, 33.485916, 43.158657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.035805, 33.330418, 42.683197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.066593, 33.723682, 42.616894>,  <42.085068, 33.959641, 42.577110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.066593, 33.723682, 42.616894>,  <42.035805, 33.330418, 42.683197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.066593, 33.723682, 42.616894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000571, -0.166209, -0.986090,
		-0.997033, 0.075994, -0.012232,
		0.076970, 0.983158, -0.165759,
		42.089684, 34.018631, 42.567165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.593227, 33.411610, 42.045540>,  <42.035805, 33.330418, 42.683197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.593227, 33.411610, 42.045540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.750626, 33.774498, 42.105030>,  <41.845062, 33.992229, 42.140724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.750626, 33.774498, 42.105030>,  <41.593227, 33.411610, 42.045540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.750626, 33.774498, 42.105030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080635, 0.195209, -0.977441,
		-0.915785, 0.372624, 0.149967,
		0.393493, 0.907218, 0.148723,
		41.868675, 34.046665, 42.149647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.098801, 33.750870, 41.695663>,  <41.593227, 33.411610, 42.045540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.098801, 33.750870, 41.695663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.451870, 33.938866, 41.696060>,  <41.663712, 34.051662, 41.696297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.451870, 33.938866, 41.696060>,  <41.098801, 33.750870, 41.695663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.451870, 33.938866, 41.696060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117843, 0.223355, -0.967587,
		-0.454981, 0.853943, 0.252534,
		0.882669, 0.469993, 0.000991,
		41.716671, 34.079865, 41.696358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.052086, 34.320267, 41.172241>,  <41.098801, 33.750870, 41.695663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.052086, 34.320267, 41.172241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.441067, 34.227200, 41.166618>,  <41.674458, 34.171360, 41.163242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.441067, 34.227200, 41.166618>,  <41.052086, 34.320267, 41.172241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.441067, 34.227200, 41.166618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068401, 0.342515, -0.937019,
		0.222830, 0.910247, 0.348995,
		0.972455, -0.232667, -0.014061,
		41.732803, 34.157398, 41.162399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.174351, 35.000389, 41.589607>,  <41.052086, 34.320267, 41.172241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.174351, 35.000389, 41.589607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.486755, 34.775211, 41.481445>,  <41.674198, 34.640106, 41.416550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.486755, 34.775211, 41.481445>,  <41.174351, 35.000389, 41.589607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.486755, 34.775211, 41.481445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015751, 0.415089, -0.909645,
		0.624321, 0.714700, 0.315321,
		0.781009, -0.562944, -0.270406,
		41.721058, 34.606327, 41.400322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.683739, 35.468117, 41.348408>,  <41.174351, 35.000389, 41.589607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.683739, 35.468117, 41.348408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.770649, 35.109760, 41.193401>,  <41.822796, 34.894745, 41.100399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.770649, 35.109760, 41.193401>,  <41.683739, 35.468117, 41.348408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.770649, 35.109760, 41.193401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021326, 0.401260, -0.915716,
		0.975878, 0.190698, 0.106289,
		0.217275, -0.895893, -0.387514,
		41.835831, 34.840992, 41.077148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.231907, 35.668785, 40.928246>,  <41.683739, 35.468117, 41.348408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.231907, 35.668785, 40.928246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.095863, 35.316177, 40.797249>,  <42.014236, 35.104614, 40.718651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.095863, 35.316177, 40.797249>,  <42.231907, 35.668785, 40.928246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.095863, 35.316177, 40.797249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051633, 0.365237, -0.929481,
		0.938967, -0.299217, -0.169737,
		-0.340111, -0.881516, -0.327496,
		41.993832, 35.051723, 40.699001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.451698, 35.610088, 40.250187>,  <42.231907, 35.668785, 40.928246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.451698, 35.610088, 40.250187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.157753, 35.339176, 40.264439>,  <41.981384, 35.176628, 40.272991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.157753, 35.339176, 40.264439>,  <42.451698, 35.610088, 40.250187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.157753, 35.339176, 40.264439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195031, 0.160712, -0.967541,
		0.649569, -0.717959, -0.250192,
		-0.734863, -0.677279, 0.035630,
		41.937294, 35.135994, 40.275127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.544140, 35.166126, 39.680996>,  <42.451698, 35.610088, 40.250187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.544140, 35.166126, 39.680996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.166328, 35.102089, 39.795704>,  <41.939640, 35.063667, 39.864529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.166328, 35.102089, 39.795704>,  <42.544140, 35.166126, 39.680996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.166328, 35.102089, 39.795704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286221, -0.027005, -0.957783,
		0.161077, -0.986733, -0.020314,
		-0.944527, -0.160091, 0.286774,
		41.882969, 35.054062, 39.881737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.203827, 34.645966, 39.230362>,  <42.544140, 35.166126, 39.680996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.203827, 34.645966, 39.230362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.864540, 34.804966, 39.370373>,  <41.660969, 34.900364, 39.454380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.864540, 34.804966, 39.370373>,  <42.203827, 34.645966, 39.230362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.864540, 34.804966, 39.370373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329553, 0.121260, -0.936318,
		-0.414629, -0.909555, 0.028141,
		-0.848220, 0.397498, 0.350025,
		41.610073, 34.924213, 39.475380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.491138, 34.218746, 38.981743>,  <42.203827, 34.645966, 39.230362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.491138, 34.218746, 38.981743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.432762, 34.609123, 39.046535>,  <41.397736, 34.843349, 39.085411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.432762, 34.609123, 39.046535>,  <41.491138, 34.218746, 38.981743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.432762, 34.609123, 39.046535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417000, 0.087794, -0.904656,
		-0.897113, -0.199575, 0.394155,
		-0.145942, 0.975942, 0.161984,
		41.388981, 34.901905, 39.095131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.020744, 34.287762, 38.502548>,  <41.491138, 34.218746, 38.981743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.020744, 34.287762, 38.502548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.117115, 34.665989, 38.590061>,  <41.174938, 34.892925, 38.642567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.117115, 34.665989, 38.590061>,  <41.020744, 34.287762, 38.502548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.117115, 34.665989, 38.590061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118328, 0.252355, -0.960373,
		-0.963304, 0.205488, 0.172685,
		0.240923, 0.945564, 0.218779,
		41.189392, 34.949657, 38.655697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.590237, 34.573883, 38.079903>,  <41.020744, 34.287762, 38.502548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.590237, 34.573883, 38.079903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.839390, 34.868248, 38.186077>,  <40.988880, 35.044868, 38.249783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.839390, 34.868248, 38.186077>,  <40.590237, 34.573883, 38.079903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.839390, 34.868248, 38.186077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139162, 0.438109, -0.888085,
		-0.769840, 0.516232, 0.375300,
		0.622881, 0.735911, 0.265434,
		41.026253, 35.089020, 38.265709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.233398, 35.215576, 37.767509>,  <40.590237, 34.573883, 38.079903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.233398, 35.215576, 37.767509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.622540, 35.276268, 37.837399>,  <40.856026, 35.312683, 37.879330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.622540, 35.276268, 37.837399>,  <40.233398, 35.215576, 37.767509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.622540, 35.276268, 37.837399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081261, 0.482956, -0.871866,
		-0.216668, 0.862399, 0.457518,
		0.972857, 0.151727, 0.174721,
		40.914398, 35.321785, 37.889816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.357189, 35.920467, 37.537479>,  <40.233398, 35.215576, 37.767509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.357189, 35.920467, 37.537479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.717968, 35.753860, 37.583103>,  <40.934433, 35.653896, 37.610477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.717968, 35.753860, 37.583103>,  <40.357189, 35.920467, 37.537479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.717968, 35.753860, 37.583103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372436, 0.616530, -0.693673,
		0.218607, 0.668134, 0.711202,
		0.901944, -0.416519, 0.114059,
		40.988552, 35.628906, 37.617321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.810181, 36.458832, 37.579525>,  <40.357189, 35.920467, 37.537479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.810181, 36.458832, 37.579525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.032486, 36.144466, 37.471107>,  <41.165871, 35.955845, 37.406059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.032486, 36.144466, 37.471107>,  <40.810181, 36.458832, 37.579525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.032486, 36.144466, 37.471107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374681, 0.527833, -0.762238,
		0.742118, 0.322072, 0.587818,
		0.555765, -0.785915, -0.271040,
		41.199215, 35.908691, 37.389797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.536701, 36.642673, 37.567142>,  <40.810181, 36.458832, 37.579525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.536701, 36.642673, 37.567142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.480774, 36.338104, 37.313942>,  <41.447220, 36.155365, 37.162022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.480774, 36.338104, 37.313942>,  <41.536701, 36.642673, 37.567142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.480774, 36.338104, 37.313942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439475, 0.525147, -0.728754,
		0.887307, -0.380079, 0.261201,
		-0.139815, -0.761420, -0.633002,
		41.438828, 36.109680, 37.124043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.316734, 36.456596, 37.193535>,  <41.536701, 36.642673, 37.567142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.316734, 36.456596, 37.193535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.000401, 36.334435, 36.981384>,  <41.810600, 36.261135, 36.854092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.000401, 36.334435, 36.981384>,  <42.316734, 36.456596, 37.193535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.000401, 36.334435, 36.981384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447262, 0.303144, -0.841463,
		0.417771, -0.902679, -0.103140,
		-0.790838, -0.305408, -0.530379,
		41.763149, 36.242813, 36.822269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.542759, 36.103748, 36.598629>,  <42.316734, 36.456596, 37.193535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.542759, 36.103748, 36.598629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.184872, 36.255054, 36.503643>,  <41.970139, 36.345840, 36.446651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.184872, 36.255054, 36.503643>,  <42.542759, 36.103748, 36.598629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.184872, 36.255054, 36.503643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368233, 0.323902, -0.871489,
		-0.252742, -0.867180, -0.429092,
		-0.894721, 0.378268, -0.237460,
		41.916454, 36.368534, 36.432404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.332935, 35.885609, 35.903610>,  <42.542759, 36.103748, 36.598629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.332935, 35.885609, 35.903610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.141117, 36.235050, 35.936703>,  <42.026028, 36.444717, 35.956558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.141117, 36.235050, 35.936703>,  <42.332935, 35.885609, 35.903610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.141117, 36.235050, 35.936703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287499, 0.245490, -0.925786,
		-0.829083, -0.420172, -0.368885,
		-0.479547, 0.873608, 0.082732,
		41.997253, 36.497131, 35.961521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.001160, 35.641125, 36.100224>,  <42.332935, 35.885609, 35.903610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.001160, 35.641125, 36.100224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.809326, 35.985462, 36.032173>,  <42.694225, 36.192066, 35.991341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.809326, 35.985462, 36.032173>,  <43.001160, 35.641125, 36.100224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.809326, 35.985462, 36.032173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877468, -0.468948, 0.100694,
		0.006900, 0.197574, 0.980264,
		-0.479587, 0.860844, -0.170129,
		42.665451, 36.243717, 35.981133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.728054, 35.401562, 36.137169>,  <43.001160, 35.641125, 36.100224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.728054, 35.401562, 36.137169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.003235, 35.369110, 35.848686>,  <44.168343, 35.349640, 35.675598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.003235, 35.369110, 35.848686>,  <43.728054, 35.401562, 36.137169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.003235, 35.369110, 35.848686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651647, 0.368407, -0.663048,
		0.319490, 0.926117, 0.200580,
		0.687955, -0.081129, -0.721204,
		44.209621, 35.344772, 35.632324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.762505, 36.096035, 35.804661>,  <43.728054, 35.401562, 36.137169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.762505, 36.096035, 35.804661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.832939, 35.769020, 35.585342>,  <43.875198, 35.572811, 35.453751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.832939, 35.769020, 35.585342>,  <43.762505, 36.096035, 35.804661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.832939, 35.769020, 35.585342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827990, 0.178233, -0.531663,
		0.532379, 0.547600, -0.645529,
		0.176084, -0.817537, -0.548294,
		43.885765, 35.523758, 35.420853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.658752, 36.299534, 35.139816>,  <43.762505, 36.096035, 35.804661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.658752, 36.299534, 35.139816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.618958, 35.903000, 35.174118>,  <43.595081, 35.665077, 35.194698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.618958, 35.903000, 35.174118>,  <43.658752, 36.299534, 35.139816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.618958, 35.903000, 35.174118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863995, 0.043317, -0.501634,
		0.493574, -0.123995, -0.860820,
		-0.099488, -0.991337, 0.085751,
		43.589111, 35.605598, 35.199844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.433990, 36.016361, 34.504570>,  <43.658752, 36.299534, 35.139816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.433990, 36.016361, 34.504570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.336536, 35.706486, 34.737976>,  <43.278065, 35.520561, 34.878021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.336536, 35.706486, 34.737976>,  <43.433990, 36.016361, 34.504570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.336536, 35.706486, 34.737976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881742, -0.073658, -0.465947,
		0.403946, -0.628033, -0.665133,
		-0.243637, -0.774693, 0.583516,
		43.263447, 35.474079, 34.913033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.142231, 35.281223, 34.115192>,  <43.433990, 36.016361, 34.504570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.142231, 35.281223, 34.115192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.001350, 35.373062, 34.478123>,  <42.916821, 35.428165, 34.695881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.001350, 35.373062, 34.478123>,  <43.142231, 35.281223, 34.115192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.001350, 35.373062, 34.478123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921687, 0.083353, -0.378873,
		-0.162619, -0.969709, 0.182264,
		-0.352204, 0.229602, 0.907323,
		42.895691, 35.441944, 34.750320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.749191, 34.943462, 34.725124>,  <43.142231, 35.281223, 34.115192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.749191, 34.943462, 34.725124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.478718, 34.767891, 34.488441>,  <42.316433, 34.662548, 34.346432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.478718, 34.767891, 34.488441>,  <42.749191, 34.943462, 34.725124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.478718, 34.767891, 34.488441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727565, -0.524148, -0.442628,
		-0.115861, -0.729804, 0.673768,
		-0.676185, -0.438926, -0.591708,
		42.275864, 34.636211, 34.310928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.918537, 34.305748, 34.687538>,  <42.749191, 34.943462, 34.725124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.918537, 34.305748, 34.687538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.710567, 34.409225, 34.361900>,  <42.585785, 34.471313, 34.166515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.710567, 34.409225, 34.361900>,  <42.918537, 34.305748, 34.687538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.710567, 34.409225, 34.361900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767324, -0.277340, -0.578184,
		-0.375356, -0.925288, -0.054309,
		-0.519925, 0.258697, -0.814097,
		42.554588, 34.486835, 34.117672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.102367, 33.727531, 34.135017>,  <42.918537, 34.305748, 34.687538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.102367, 33.727531, 34.135017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.012207, 34.093113, 34.000038>,  <42.958111, 34.312462, 33.919048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.012207, 34.093113, 34.000038>,  <43.102367, 33.727531, 34.135017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.012207, 34.093113, 34.000038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771785, -0.043879, -0.634368,
		-0.594593, -0.403429, -0.695489,
		-0.225405, 0.913958, -0.337450,
		42.944584, 34.367302, 33.898804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.439949, 32.994347, 34.156315>,  <43.102367, 33.727531, 34.135017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.439949, 32.994347, 34.156315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.774166, 32.775539, 34.176823>,  <43.974697, 32.644253, 34.189129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.774166, 32.775539, 34.176823>,  <43.439949, 32.994347, 34.156315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.774166, 32.775539, 34.176823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455935, 0.742426, 0.490843,
		-0.306568, -0.386745, 0.869738,
		0.835547, -0.547021, 0.051273,
		44.024830, 32.611435, 34.192204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.604927, 33.142246, 34.738045>,  <43.439949, 32.994347, 34.156315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.604927, 33.142246, 34.738045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.933899, 32.969387, 34.590073>,  <44.131283, 32.865669, 34.501289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.933899, 32.969387, 34.590073>,  <43.604927, 33.142246, 34.738045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.933899, 32.969387, 34.590073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562491, 0.714846, 0.415452,
		0.084907, -0.549765, 0.830993,
		0.822432, -0.432151, -0.369933,
		44.180630, 32.839741, 34.479092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.067944, 33.294422, 35.245697>,  <43.604927, 33.142246, 34.738045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.067944, 33.294422, 35.245697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.310398, 33.178322, 34.949493>,  <44.455872, 33.108662, 34.771770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.310398, 33.178322, 34.949493>,  <44.067944, 33.294422, 35.245697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.310398, 33.178322, 34.949493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705853, 0.625400, 0.332635,
		0.366569, -0.724314, 0.583949,
		0.606134, -0.290249, -0.740511,
		44.492237, 33.091248, 34.727341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.787106, 33.173546, 35.594501>,  <44.067944, 33.294422, 35.245697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.787106, 33.173546, 35.594501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.770916, 33.256168, 35.203461>,  <44.761204, 33.305740, 34.968838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.770916, 33.256168, 35.203461>,  <44.787106, 33.173546, 35.594501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.770916, 33.256168, 35.203461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678218, 0.724165, 0.124926,
		0.733746, -0.657968, -0.169397,
		-0.040474, 0.206552, -0.977598,
		44.758774, 33.318134, 34.910183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.484924, 33.031658, 35.253597>,  <44.787106, 33.173546, 35.594501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.484924, 33.031658, 35.253597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.249348, 33.326824, 35.121761>,  <45.108002, 33.503925, 35.042660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.249348, 33.326824, 35.121761>,  <45.484924, 33.031658, 35.253597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.249348, 33.326824, 35.121761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761039, 0.643617, 0.081095,
		0.271971, -0.203071, -0.940635,
		-0.588941, 0.737915, -0.329591,
		45.072666, 33.548199, 35.022884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.912926, 33.480946, 35.030544>,  <45.484924, 33.031658, 35.253597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.912926, 33.480946, 35.030544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.583302, 33.705448, 35.061295>,  <45.385525, 33.840149, 35.079742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.583302, 33.705448, 35.061295>,  <45.912926, 33.480946, 35.030544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.583302, 33.705448, 35.061295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564917, 0.824294, 0.037521,
		-0.042306, 0.074346, -0.996335,
		-0.824062, 0.561259, 0.076872,
		45.336082, 33.873825, 35.084354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.126667, 34.113461, 34.565945>,  <45.912926, 33.480946, 35.030544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.126667, 34.113461, 34.565945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.403458, 33.829121, 34.515572>,  <46.569530, 33.658516, 34.485348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.403458, 33.829121, 34.515572>,  <46.126667, 34.113461, 34.565945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.403458, 33.829121, 34.515572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488965, 0.589838, -0.642654,
		0.531112, 0.383124, 0.755735,
		0.691978, -0.710849, -0.125936,
		46.611050, 33.615868, 34.477791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.883160, 34.324440, 34.711823>,  <46.126667, 34.113461, 34.565945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.883160, 34.324440, 34.711823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.912910, 34.032547, 34.439953>,  <46.930759, 33.857410, 34.276833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.912910, 34.032547, 34.439953>,  <46.883160, 34.324440, 34.711823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.912910, 34.032547, 34.439953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562630, 0.593434, -0.575573,
		0.823356, -0.339595, 0.454708,
		0.074378, -0.729734, -0.679674,
		46.935223, 33.813625, 34.236050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.493423, 33.964008, 34.843552>,  <46.883160, 34.324440, 34.711823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.493423, 33.964008, 34.843552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.823029, 34.142704, 34.982933>,  <48.020794, 34.249920, 35.066563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.823029, 34.142704, 34.982933>,  <47.493423, 33.964008, 34.843552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.823029, 34.142704, 34.982933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449379, 0.889909, -0.078231,
		-0.345044, -0.092126, 0.934054,
		0.824017, 0.446737, 0.348457,
		48.070232, 34.276726, 35.087471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.469368, 34.376217, 35.457359>,  <47.493423, 33.964008, 34.843552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.469368, 34.376217, 35.457359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.747452, 34.526829, 35.212440>,  <47.914303, 34.617195, 35.065487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.747452, 34.526829, 35.212440>,  <47.469368, 34.376217, 35.457359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.747452, 34.526829, 35.212440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604391, 0.767299, -0.214393,
		0.389092, 0.519116, 0.761003,
		0.695211, 0.376525, -0.612299,
		47.956017, 34.639786, 35.028751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<40.010918, 30.384295, 26.666243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.647377, 30.235571, 26.590611>,  <39.429253, 30.146338, 26.545231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.647377, 30.235571, 26.590611>,  <40.010918, 30.384295, 26.666243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.647377, 30.235571, 26.590611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345250, 0.416141, 0.841207,
		-0.234084, 0.829810, -0.506577,
		-0.908849, -0.371809, -0.189080,
		39.374722, 30.124029, 26.533886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.509182, 30.889662, 26.914917>,  <40.010918, 30.384295, 26.666243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.509182, 30.889662, 26.914917> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.310913, 30.544546, 26.875111>,  <39.191952, 30.337477, 26.851227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.310913, 30.544546, 26.875111>,  <39.509182, 30.889662, 26.914917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.310913, 30.544546, 26.875111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496532, 0.187499, 0.847526,
		-0.712578, 0.469507, -0.521340,
		-0.495671, -0.862790, -0.099518,
		39.162212, 30.285709, 26.845255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839283, 31.032154, 27.101683>,  <39.509182, 30.889662, 26.914917>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.839283, 31.032154, 27.101683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.841511, 30.632816, 27.124575>,  <38.842846, 30.393213, 27.138309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.841511, 30.632816, 27.124575>,  <38.839283, 31.032154, 27.101683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.841511, 30.632816, 27.124575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434803, 0.049121, 0.899185,
		-0.900508, -0.029893, -0.433810,
		0.005570, -0.998346, 0.057232,
		38.843182, 30.333313, 27.141745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143299, 30.883692, 27.312078>,  <38.839283, 31.032154, 27.101683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.143299, 30.883692, 27.312078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.350208, 30.554701, 27.406702>,  <38.474354, 30.357307, 27.463476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.350208, 30.554701, 27.406702>,  <38.143299, 30.883692, 27.312078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350208, 30.554701, 27.406702> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432315, -0.012565, 0.901635,
		-0.738601, -0.568661, -0.362069,
		0.517274, -0.822476, 0.236560,
		38.505390, 30.307959, 27.477671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.664375, 30.498331, 27.703779>,  <38.143299, 30.883692, 27.312078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.664375, 30.498331, 27.703779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.998638, 30.291784, 27.778666>,  <38.199196, 30.167856, 27.823597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.998638, 30.291784, 27.778666>,  <37.664375, 30.498331, 27.703779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.998638, 30.291784, 27.778666> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368498, -0.274307, 0.888237,
		-0.407302, -0.811246, -0.419506,
		0.835652, -0.516367, 0.187216,
		38.249332, 30.136875, 27.834831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468765, 29.861778, 28.154568>,  <37.664375, 30.498331, 27.703779>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468765, 29.861778, 28.154568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.853127, 29.955519, 28.213541>,  <38.083744, 30.011763, 28.248924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.853127, 29.955519, 28.213541>,  <37.468765, 29.861778, 28.154568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.853127, 29.955519, 28.213541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113367, -0.152785, 0.981736,
		0.252595, -0.960071, -0.120245,
		0.960908, 0.234350, 0.147433,
		38.141399, 30.025824, 28.257771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785042, 29.375410, 28.695915>,  <37.468765, 29.861778, 28.154568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.785042, 29.375410, 28.695915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.021614, 29.697180, 28.673626>,  <38.163559, 29.890242, 28.660252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.021614, 29.697180, 28.673626>,  <37.785042, 29.375410, 28.695915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021614, 29.697180, 28.673626> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080644, 0.127769, 0.988520,
		0.802310, -0.580152, 0.140439,
		0.591435, 0.804425, -0.055724,
		38.199043, 29.938507, 28.656908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158741, 29.306078, 29.263008>,  <37.785042, 29.375410, 28.695915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.158741, 29.306078, 29.263008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.177536, 29.693573, 29.165571>,  <38.188812, 29.926071, 29.107109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.177536, 29.693573, 29.165571>,  <38.158741, 29.306078, 29.263008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.177536, 29.693573, 29.165571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043606, 0.245619, 0.968385,
		0.997943, -0.034884, 0.053785,
		0.046992, 0.968738, -0.243593,
		38.191635, 29.984194, 29.092493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.631706, 29.622398, 29.790781>,  <38.158741, 29.306078, 29.263008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.631706, 29.622398, 29.790781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.423222, 29.934523, 29.652536>,  <38.298130, 30.121798, 29.569590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.423222, 29.934523, 29.652536>,  <38.631706, 29.622398, 29.790781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423222, 29.934523, 29.652536> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204050, 0.279281, 0.938278,
		0.828673, 0.559567, 0.013657,
		-0.521215, 0.780312, -0.345612,
		38.266857, 30.168617, 29.548853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876034, 30.298073, 29.932703>,  <38.631706, 29.622398, 29.790781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876034, 30.298073, 29.932703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.494247, 30.394108, 29.861881>,  <38.265175, 30.451729, 29.819387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.494247, 30.394108, 29.861881>,  <38.876034, 30.298073, 29.932703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.494247, 30.394108, 29.861881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045847, 0.468411, 0.882321,
		0.294771, 0.850264, -0.436075,
		-0.954468, 0.240089, -0.177056,
		38.207909, 30.466135, 29.808765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714554, 30.943348, 30.317835>,  <38.876034, 30.298073, 29.932703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.714554, 30.943348, 30.317835> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.351315, 30.791534, 30.247047>,  <38.133373, 30.700447, 30.204575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.351315, 30.791534, 30.247047>,  <38.714554, 30.943348, 30.317835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.351315, 30.791534, 30.247047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291590, 0.269768, 0.917715,
		-0.300563, 0.884975, -0.355643,
		-0.908095, -0.379533, -0.176968,
		38.078884, 30.677675, 30.193956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.291168, 31.437510, 30.591743>,  <38.714554, 30.943348, 30.317835>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.291168, 31.437510, 30.591743> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.078552, 31.099171, 30.573807>,  <37.950981, 30.896168, 30.563044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.078552, 31.099171, 30.573807>,  <38.291168, 31.437510, 30.591743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.078552, 31.099171, 30.573807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223543, 0.089018, 0.970621,
		-0.817004, 0.525947, -0.236400,
		-0.531538, -0.845846, -0.044844,
		37.919090, 30.845417, 30.560354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678421, 31.579472, 30.983532>,  <38.291168, 31.437510, 30.591743>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678421, 31.579472, 30.983532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.737301, 31.183891, 30.990604>,  <37.772629, 30.946543, 30.994848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.737301, 31.183891, 30.990604>,  <37.678421, 31.579472, 30.983532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.737301, 31.183891, 30.990604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222040, -0.015618, 0.974912,
		-0.963862, -0.147434, -0.221886,
		0.147201, -0.988949, 0.017683,
		37.781460, 30.887207, 30.995909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073097, 31.341431, 31.398258>,  <37.678421, 31.579472, 30.983532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.073097, 31.341431, 31.398258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.320839, 31.027414, 31.393978>,  <37.469482, 30.839005, 31.391411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.320839, 31.027414, 31.393978>,  <37.073097, 31.341431, 31.398258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.320839, 31.027414, 31.393978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259846, -0.217826, 0.940762,
		-0.740865, -0.579884, -0.338900,
		0.619353, -0.785039, -0.010699,
		37.506645, 30.791903, 31.390768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778816, 30.775417, 31.786510>,  <37.073097, 31.341431, 31.398258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778816, 30.775417, 31.786510> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.167519, 30.684324, 31.811251>,  <37.400742, 30.629669, 31.826096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.167519, 30.684324, 31.811251>,  <36.778816, 30.775417, 31.786510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.167519, 30.684324, 31.811251> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091083, -0.120166, 0.988567,
		-0.217698, -0.966280, -0.137515,
		0.971757, -0.227734, 0.061852,
		37.459045, 30.616005, 31.829807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760937, 30.262110, 32.243412>,  <36.778816, 30.775417, 31.786510>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760937, 30.262110, 32.243412> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.134014, 30.406376, 32.242123>,  <37.357861, 30.492935, 32.241348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.134014, 30.406376, 32.242123>,  <36.760937, 30.262110, 32.243412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134014, 30.406376, 32.242123> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076959, -0.190262, 0.978712,
		0.352373, -0.913083, -0.205212,
		0.932690, 0.360665, -0.003226,
		37.413822, 30.514576, 32.241154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074886, 29.759254, 32.618603>,  <36.760937, 30.262110, 32.243412>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.074886, 29.759254, 32.618603> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.311390, 30.081720, 32.627621>,  <37.453293, 30.275200, 32.633030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.311390, 30.081720, 32.627621>,  <37.074886, 29.759254, 32.618603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.311390, 30.081720, 32.627621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149471, -0.137007, 0.979228,
		0.792507, -0.575611, -0.201505,
		0.591262, 0.806164, 0.022542,
		37.488770, 30.323570, 32.634384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685444, 29.536711, 32.960861>,  <37.074886, 29.759254, 32.618603>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685444, 29.536711, 32.960861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.676491, 29.935017, 32.996532>,  <37.671120, 30.174000, 33.017937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.676491, 29.935017, 32.996532>,  <37.685444, 29.536711, 32.960861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.676491, 29.935017, 32.996532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077089, -0.087215, 0.993203,
		0.996773, 0.029104, -0.074810,
		-0.022382, 0.995764, 0.089177,
		37.669777, 30.233746, 33.023285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218578, 29.680258, 33.497185>,  <37.685444, 29.536711, 32.960861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218578, 29.680258, 33.497185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.995468, 30.010126, 33.459656>,  <37.861603, 30.208046, 33.437138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.995468, 30.010126, 33.459656>,  <38.218578, 29.680258, 33.497185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.995468, 30.010126, 33.459656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127965, 0.026244, 0.991431,
		0.820066, 0.565005, 0.090890,
		-0.557779, 0.824670, -0.093823,
		37.828133, 30.257526, 33.431507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414040, 30.085051, 34.053814>,  <38.218578, 29.680258, 33.497185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414040, 30.085051, 34.053814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.061203, 30.252962, 33.968300>,  <37.849503, 30.353708, 33.916992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.061203, 30.252962, 33.968300>,  <38.414040, 30.085051, 34.053814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061203, 30.252962, 33.968300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151214, 0.177492, 0.972436,
		0.446153, 0.890102, -0.093087,
		-0.882089, 0.419779, -0.213784,
		37.796577, 30.378897, 33.904163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375065, 30.804331, 34.421452>,  <38.414040, 30.085051, 34.053814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.375065, 30.804331, 34.421452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.997509, 30.691847, 34.352177>,  <37.770977, 30.624355, 34.310612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.997509, 30.691847, 34.352177>,  <38.375065, 30.804331, 34.421452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997509, 30.691847, 34.352177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191000, 0.036998, 0.980892,
		-0.269431, 0.958932, -0.088634,
		-0.943888, -0.281212, -0.173188,
		37.714344, 30.607483, 34.300220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253300, 31.505407, 34.365063>,  <38.375065, 30.804331, 34.421452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253300, 31.505407, 34.365063> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.089531, 31.743055, 34.088108>,  <37.991272, 31.885645, 33.921936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.089531, 31.743055, 34.088108>,  <38.253300, 31.505407, 34.365063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.089531, 31.743055, 34.088108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217911, -0.800621, -0.558141,
		-0.885942, -0.077634, 0.457253,
		-0.409417, 0.594121, -0.692387,
		37.966705, 31.921291, 33.880394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540386, 32.210293, 34.420853>,  <38.253300, 31.505407, 34.365063>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.540386, 32.210293, 34.420853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.913353, 32.227093, 34.564423>,  <39.137135, 32.237171, 34.650566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.913353, 32.227093, 34.564423>,  <38.540386, 32.210293, 34.420853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913353, 32.227093, 34.564423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318725, -0.563682, -0.762022,
		0.170319, 0.824924, -0.538974,
		0.932420, 0.041998, 0.358929,
		39.193077, 32.239693, 34.672100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967300, 32.561478, 33.938610>,  <38.540386, 32.210293, 34.420853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.967300, 32.561478, 33.938610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.144367, 32.295856, 34.179634>,  <39.250607, 32.136482, 34.324249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.144367, 32.295856, 34.179634>,  <38.967300, 32.561478, 33.938610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.144367, 32.295856, 34.179634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120337, -0.621910, -0.773788,
		0.888574, 0.415041, -0.195390,
		0.442669, -0.664055, 0.602558,
		39.277168, 32.096642, 34.360401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646004, 32.581600, 33.642017>,  <38.967300, 32.561478, 33.938610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646004, 32.581600, 33.642017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.574192, 32.258720, 33.866947>,  <39.531105, 32.064995, 34.001904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.574192, 32.258720, 33.866947>,  <39.646004, 32.581600, 33.642017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.574192, 32.258720, 33.866947> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115810, -0.584974, -0.802741,
		0.976912, -0.078992, 0.198501,
		-0.179528, -0.807196, 0.562320,
		39.520332, 32.016560, 34.035645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.339008, 32.232811, 33.665932>,  <39.646004, 32.581600, 33.642017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.339008, 32.232811, 33.665932> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.062405, 31.953403, 33.739567>,  <39.896442, 31.785759, 33.783749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.062405, 31.953403, 33.739567>,  <40.339008, 32.232811, 33.665932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.062405, 31.953403, 33.739567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372525, -0.563181, -0.737599,
		0.618902, -0.441478, 0.649660,
		-0.691510, -0.698516, 0.184092,
		39.854950, 31.743849, 33.794796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.719639, 31.654182, 33.752960>,  <40.339008, 32.232811, 33.665932>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.719639, 31.654182, 33.752960> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.358002, 31.488453, 33.711109>,  <40.141018, 31.389015, 33.685997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.358002, 31.488453, 33.711109>,  <40.719639, 31.654182, 33.752960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.358002, 31.488453, 33.711109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396676, -0.722639, -0.566075,
		0.158929, -0.553290, 0.817687,
		-0.904096, -0.414323, -0.104629,
		40.086773, 31.364157, 33.679722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.788109, 30.939554, 33.863537>,  <40.719639, 31.654182, 33.752960>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.788109, 30.939554, 33.863537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.478661, 31.014193, 33.621315>,  <40.292992, 31.058975, 33.475983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.478661, 31.014193, 33.621315>,  <40.788109, 30.939554, 33.863537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.478661, 31.014193, 33.621315> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390552, -0.612138, -0.687573,
		-0.498977, -0.768420, 0.400689,
		-0.773622, 0.186593, -0.605551,
		40.246574, 31.070171, 33.439648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.738926, 30.239315, 33.459568>,  <40.788109, 30.939554, 33.863537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.738926, 30.239315, 33.459568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.528515, 30.521715, 33.269890>,  <40.402267, 30.691154, 33.156082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.528515, 30.521715, 33.269890>,  <40.738926, 30.239315, 33.459568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.528515, 30.521715, 33.269890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282659, -0.380741, -0.880420,
		-0.802123, -0.597159, 0.000722,
		-0.526025, 0.706001, -0.474193,
		40.370708, 30.733515, 33.127632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.246174, 29.950218, 32.979229>,  <40.738926, 30.239315, 33.459568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.246174, 29.950218, 32.979229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.271427, 30.320812, 32.830830>,  <40.286579, 30.543169, 32.741791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.271427, 30.320812, 32.830830>,  <40.246174, 29.950218, 32.979229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.271427, 30.320812, 32.830830> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193061, -0.376054, -0.906262,
		-0.979153, -0.014407, -0.202611,
		0.063136, 0.926486, -0.370996,
		40.290367, 30.598759, 32.719532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.031090, 29.810207, 32.335587>,  <40.246174, 29.950218, 32.979229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.031090, 29.810207, 32.335587> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.222122, 30.161478, 32.324806>,  <40.336742, 30.372240, 32.318336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.222122, 30.161478, 32.324806>,  <40.031090, 29.810207, 32.335587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.222122, 30.161478, 32.324806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254006, -0.167371, -0.952611,
		-0.841069, 0.448103, -0.302995,
		0.477581, 0.878174, -0.026950,
		40.365395, 30.424931, 32.316723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816299, 30.053919, 31.753302>,  <40.031090, 29.810207, 32.335587>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.816299, 30.053919, 31.753302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.159885, 30.226713, 31.863264>,  <40.366035, 30.330391, 31.929241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.159885, 30.226713, 31.863264>,  <39.816299, 30.053919, 31.753302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.159885, 30.226713, 31.863264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359105, -0.125512, -0.924819,
		-0.365006, 0.893103, -0.262939,
		0.858961, 0.431987, 0.274905,
		40.417572, 30.356310, 31.945736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965359, 30.342262, 31.203337>,  <39.816299, 30.053919, 31.753302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965359, 30.342262, 31.203337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.325008, 30.391121, 31.371462>,  <40.540798, 30.420437, 31.472336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.325008, 30.391121, 31.371462>,  <39.965359, 30.342262, 31.203337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325008, 30.391121, 31.371462> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431365, -0.084497, -0.898212,
		-0.074199, 0.988909, -0.128663,
		0.899121, 0.122147, 0.420311,
		40.594746, 30.427765, 31.497555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370602, 30.929039, 30.761917>,  <39.965359, 30.342262, 31.203337>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.370602, 30.929039, 30.761917> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.630505, 30.712349, 30.975214>,  <40.786446, 30.582335, 31.103191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.630505, 30.712349, 30.975214>,  <40.370602, 30.929039, 30.761917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.630505, 30.712349, 30.975214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509197, -0.210659, -0.834471,
		0.564387, 0.813729, 0.138968,
		0.649758, -0.541726, 0.533242,
		40.825432, 30.549831, 31.135187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.034771, 31.130272, 30.641989>,  <40.370602, 30.929039, 30.761917>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.034771, 31.130272, 30.641989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.021061, 30.740110, 30.729088>,  <41.012836, 30.506014, 30.781347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.021061, 30.740110, 30.729088>,  <41.034771, 31.130272, 30.641989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.021061, 30.740110, 30.729088> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408498, -0.212516, -0.887674,
		0.912115, 0.058527, 0.405734,
		-0.034272, -0.975403, 0.217747,
		41.010780, 30.447489, 30.794413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.687206, 30.925264, 30.653780>,  <41.034771, 31.130272, 30.641989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.687206, 30.925264, 30.653780> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.452503, 30.610538, 30.577213>,  <41.311680, 30.421703, 30.531273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.452503, 30.610538, 30.577213>,  <41.687206, 30.925264, 30.653780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.452503, 30.610538, 30.577213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524388, -0.189078, -0.830221,
		0.617037, -0.587515, 0.523538,
		-0.586757, -0.786814, -0.191418,
		41.276478, 30.374495, 30.519789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.093769, 30.433432, 30.473724>,  <41.687206, 30.925264, 30.653780>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.093769, 30.433432, 30.473724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.757206, 30.264063, 30.339409>,  <41.555267, 30.162441, 30.258820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.757206, 30.264063, 30.339409>,  <42.093769, 30.433432, 30.473724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.757206, 30.264063, 30.339409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481915, -0.306735, -0.820775,
		0.244535, -0.852425, 0.462141,
		-0.841404, -0.423421, -0.335789,
		41.504784, 30.137037, 30.238672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.371338, 29.844879, 30.059599>,  <42.093769, 30.433432, 30.473724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.371338, 29.844879, 30.059599> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.999664, 29.945337, 29.951122>,  <41.776661, 30.005613, 29.886036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.999664, 29.945337, 29.951122>,  <42.371338, 29.844879, 30.059599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.999664, 29.945337, 29.951122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186775, -0.314107, -0.930834,
		-0.318985, -0.915560, 0.244947,
		-0.929173, 0.251172, -0.271199,
		41.720909, 30.020681, 29.869764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.151329, 29.318214, 29.602142>,  <42.371338, 29.844879, 30.059599>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.151329, 29.318214, 29.602142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.918648, 29.632465, 29.517849>,  <41.779037, 29.821016, 29.467272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.918648, 29.632465, 29.517849>,  <42.151329, 29.318214, 29.602142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.918648, 29.632465, 29.517849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064219, -0.213912, -0.974740,
		-0.810861, -0.580544, 0.073981,
		-0.581704, 0.785628, -0.210735,
		41.744137, 29.868155, 29.454628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.946278, 29.046412, 28.991234>,  <42.151329, 29.318214, 29.602142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.946278, 29.046412, 28.991234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.837345, 29.430712, 29.012392>,  <41.771984, 29.661291, 29.025087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.837345, 29.430712, 29.012392>,  <41.946278, 29.046412, 28.991234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.837345, 29.430712, 29.012392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123453, 0.019633, -0.992156,
		-0.954251, -0.276724, 0.113261,
		-0.272330, 0.960749, 0.052897,
		41.755646, 29.718937, 29.028261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.225594, 29.094702, 28.467937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.370251, 29.457544, 28.554079>,  <41.457043, 29.675249, 28.605764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.370251, 29.457544, 28.554079>,  <41.225594, 29.094702, 28.467937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.370251, 29.457544, 28.554079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191852, 0.298448, -0.934945,
		-0.912365, 0.296796, 0.281961,
		0.361638, 0.907106, 0.215352,
		41.478741, 29.729675, 28.618685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.715137, 29.554567, 28.321358>,  <41.225594, 29.094702, 28.467937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.715137, 29.554567, 28.321358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.063610, 29.749716, 28.299355>,  <41.272694, 29.866806, 28.286152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.063610, 29.749716, 28.299355>,  <40.715137, 29.554567, 28.321358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.063610, 29.749716, 28.299355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250457, 0.345254, -0.904473,
		-0.422275, 0.801736, 0.422969,
		0.871180, 0.487872, -0.055008,
		41.324963, 29.896078, 28.282852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.594902, 30.192167, 27.842077>,  <40.715137, 29.554567, 28.321358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.594902, 30.192167, 27.842077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.986252, 30.113281, 27.867056>,  <41.221062, 30.065950, 27.882042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.986252, 30.113281, 27.867056>,  <40.594902, 30.192167, 27.842077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.986252, 30.113281, 27.867056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113044, 0.256901, -0.959804,
		0.173245, 0.946102, 0.273638,
		0.978370, -0.197214, 0.062444,
		41.279762, 30.054117, 27.885790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.978996, 30.842394, 27.750641>,  <40.594902, 30.192167, 27.842077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.978996, 30.842394, 27.750641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.234013, 30.547409, 27.661474>,  <41.387024, 30.370419, 27.607975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.234013, 30.547409, 27.661474>,  <40.978996, 30.842394, 27.750641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.234013, 30.547409, 27.661474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206771, 0.442517, -0.872596,
		0.742150, 0.510223, 0.434609,
		0.637541, -0.737462, -0.222915,
		41.425274, 30.326170, 27.594601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.437824, 31.249012, 27.354986>,  <40.978996, 30.842394, 27.750641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.437824, 31.249012, 27.354986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.498150, 30.858973, 27.289946>,  <41.534348, 30.624949, 27.250921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.498150, 30.858973, 27.289946>,  <41.437824, 31.249012, 27.354986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.498150, 30.858973, 27.289946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155656, 0.185857, -0.970169,
		0.976231, 0.121007, 0.179810,
		0.150816, -0.975097, -0.162604,
		41.543396, 30.566442, 27.241165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.084152, 31.244785, 26.978878>,  <41.437824, 31.249012, 27.354986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.084152, 31.244785, 26.978878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.875336, 30.910143, 26.912474>,  <41.750046, 30.709358, 26.872631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.875336, 30.910143, 26.912474>,  <42.084152, 31.244785, 26.978878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.875336, 30.910143, 26.912474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284236, 0.012867, -0.958668,
		0.804163, -0.547654, 0.231076,
		-0.522046, -0.836606, -0.166010,
		41.718723, 30.659161, 26.862671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.502613, 30.785410, 26.565260>,  <42.084152, 31.244785, 26.978878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.502613, 30.785410, 26.565260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.144268, 30.629992, 26.479038>,  <41.929260, 30.536741, 26.427305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.144268, 30.629992, 26.479038>,  <42.502613, 30.785410, 26.565260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.144268, 30.629992, 26.479038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215726, 0.043766, -0.975473,
		0.388449, -0.920390, 0.044611,
		-0.895863, -0.388545, -0.215553,
		41.875507, 30.513428, 26.414371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.683506, 30.428394, 26.051100>,  <42.502613, 30.785410, 26.565260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.683506, 30.428394, 26.051100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.284607, 30.445658, 26.027002>,  <42.045265, 30.456017, 26.012543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.284607, 30.445658, 26.027002>,  <42.683506, 30.428394, 26.051100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.284607, 30.445658, 26.027002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063769, 0.085564, -0.994290,
		-0.037757, -0.995398, -0.088081,
		-0.997250, 0.043158, -0.060245,
		41.985432, 30.458605, 26.008928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.492233, 29.832880, 25.817188>,  <42.683506, 30.428394, 26.051100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.492233, 29.832880, 25.817188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.195934, 30.081594, 25.715466>,  <42.018154, 30.230824, 25.654432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.195934, 30.081594, 25.715466>,  <42.492233, 29.832880, 25.817188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.195934, 30.081594, 25.715466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273606, -0.066492, -0.959541,
		-0.613540, -0.780358, -0.120871,
		-0.740748, 0.621788, -0.254306,
		41.973709, 30.268131, 25.639174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.156807, 29.501293, 25.282471>,  <42.492233, 29.832880, 25.817188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.156807, 29.501293, 25.282471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.008858, 29.870678, 25.241661>,  <41.920090, 30.092310, 25.217175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.008858, 29.870678, 25.241661>,  <42.156807, 29.501293, 25.282471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.008858, 29.870678, 25.241661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033408, -0.122961, -0.991849,
		-0.928482, -0.363449, 0.076331,
		-0.369872, 0.923464, -0.102025,
		41.897896, 30.147717, 25.211054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.666233, 29.442490, 24.849131>,  <42.156807, 29.501293, 25.282471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.666233, 29.442490, 24.849131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.804920, 29.817215, 24.830477>,  <41.888130, 30.042049, 24.819284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.804920, 29.817215, 24.830477>,  <41.666233, 29.442490, 24.849131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.804920, 29.817215, 24.830477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167947, -0.110920, -0.979536,
		-0.922813, 0.331786, -0.195792,
		0.346713, 0.936811, -0.046636,
		41.908936, 30.098259, 24.816486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.514164, 29.611300, 24.142233>,  <41.666233, 29.442490, 24.849131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.514164, 29.611300, 24.142233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.745632, 29.928345, 24.219080>,  <41.884514, 30.118572, 24.265188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.745632, 29.928345, 24.219080>,  <41.514164, 29.611300, 24.142233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.745632, 29.928345, 24.219080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186151, 0.100984, -0.977318,
		-0.794036, 0.601304, -0.089109,
		0.578667, 0.792613, 0.192118,
		41.919231, 30.166128, 24.276716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.283123, 30.139263, 23.779766>,  <41.514164, 29.611300, 24.142233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.283123, 30.139263, 23.779766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.661850, 30.254253, 23.837576>,  <41.889088, 30.323248, 23.872263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.661850, 30.254253, 23.837576>,  <41.283123, 30.139263, 23.779766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.661850, 30.254253, 23.837576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093434, 0.184173, -0.978443,
		-0.307895, 0.939914, 0.147519,
		0.946821, 0.287475, 0.144526,
		41.945896, 30.340496, 23.880934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.195644, 30.791412, 23.572969>,  <41.283123, 30.139263, 23.779766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.195644, 30.791412, 23.572969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.577740, 30.673079, 23.573784>,  <41.806995, 30.602077, 23.574272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.577740, 30.673079, 23.573784>,  <41.195644, 30.791412, 23.572969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.577740, 30.673079, 23.573784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094473, 0.298509, -0.949720,
		0.280353, 0.907399, 0.313095,
		0.955237, -0.295836, 0.002037,
		41.864311, 30.584328, 23.574394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.466049, 31.226925, 23.115067>,  <41.195644, 30.791412, 23.572969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.466049, 31.226925, 23.115067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.743832, 30.942366, 23.158215>,  <41.910503, 30.771629, 23.184103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.743832, 30.942366, 23.158215>,  <41.466049, 31.226925, 23.115067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.743832, 30.942366, 23.158215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274328, 0.123181, -0.953714,
		0.665185, 0.691907, 0.280702,
		0.694459, -0.711401, 0.107872,
		41.952168, 30.728945, 23.190577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.088882, 31.562269, 22.865025>,  <41.466049, 31.226925, 23.115067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.088882, 31.562269, 22.865025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.147453, 31.167004, 22.846725>,  <42.182594, 30.929844, 22.835747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.147453, 31.167004, 22.846725>,  <42.088882, 31.562269, 22.865025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.147453, 31.167004, 22.846725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264223, 0.083634, -0.960829,
		0.953282, 0.128599, 0.273341,
		0.146423, -0.988164, -0.045748,
		42.191380, 30.870554, 22.833002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.666065, 31.573362, 22.443506>,  <42.088882, 31.562269, 22.865025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.666065, 31.573362, 22.443506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.510273, 31.204950, 22.444107>,  <42.416798, 30.983902, 22.444468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.510273, 31.204950, 22.444107>,  <42.666065, 31.573362, 22.443506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.510273, 31.204950, 22.444107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078885, -0.034986, -0.996270,
		0.917649, -0.387913, 0.086282,
		-0.389484, -0.921032, 0.001504,
		42.393429, 30.928640, 22.444559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.073490, 31.152729, 22.012022>,  <42.666065, 31.573362, 22.443506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.073490, 31.152729, 22.012022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.726368, 30.953976, 22.009985>,  <42.518097, 30.834724, 22.008762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.726368, 30.953976, 22.009985>,  <43.073490, 31.152729, 22.012022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.726368, 30.953976, 22.009985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071441, -0.114620, -0.990837,
		0.491748, -0.860214, 0.134965,
		-0.867802, -0.496884, -0.005090,
		42.466026, 30.804911, 22.008457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.257374, 30.638626, 21.649601>,  <43.073490, 31.152729, 22.012022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.257374, 30.638626, 21.649601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.859653, 30.681015, 21.644863>,  <42.621021, 30.706450, 21.642021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.859653, 30.681015, 21.644863>,  <43.257374, 30.638626, 21.649601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.859653, 30.681015, 21.644863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000848, -0.118941, -0.992901,
		-0.106627, -0.987230, 0.118353,
		-0.994299, 0.105970, -0.011845,
		42.561363, 30.712807, 21.641310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.123615, 30.139282, 21.264477>,  <43.257374, 30.638626, 21.649601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.123615, 30.139282, 21.264477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.788078, 30.354916, 21.234190>,  <42.586758, 30.484295, 21.216017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.788078, 30.354916, 21.234190>,  <43.123615, 30.139282, 21.264477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.788078, 30.354916, 21.234190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112099, -0.307172, -0.945029,
		-0.532706, -0.784243, 0.318099,
		-0.838843, 0.539082, -0.075719,
		42.536427, 30.516640, 21.211473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.705166, 29.726761, 20.796352>,  <43.123615, 30.139282, 21.264477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.705166, 29.726761, 20.796352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.543713, 30.092428, 20.781536>,  <42.446838, 30.311829, 20.772646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.543713, 30.092428, 20.781536>,  <42.705166, 29.726761, 20.796352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.543713, 30.092428, 20.781536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234422, -0.142469, -0.961639,
		-0.884377, -0.379470, 0.271807,
		-0.403637, 0.914169, -0.037040,
		42.422623, 30.366678, 20.770424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.000984, 29.604673, 20.599186>,  <42.705166, 29.726761, 20.796352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.000984, 29.604673, 20.599186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.164494, 29.949699, 20.479927>,  <42.262600, 30.156715, 20.408373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.164494, 29.949699, 20.479927>,  <42.000984, 29.604673, 20.599186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.164494, 29.949699, 20.479927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495673, -0.064470, -0.866113,
		-0.766298, 0.501826, 0.401195,
		0.408773, 0.862563, -0.298145,
		42.287125, 30.208467, 20.390484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.499722, 30.096785, 20.214937>,  <42.000984, 29.604673, 20.599186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.499722, 30.096785, 20.214937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.843307, 30.258587, 20.089369>,  <42.049461, 30.355669, 20.014029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.843307, 30.258587, 20.089369>,  <41.499722, 30.096785, 20.214937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.843307, 30.258587, 20.089369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327851, -0.036424, -0.944027,
		-0.393300, 0.913809, 0.101331,
		0.858970, 0.404508, -0.313919,
		42.100998, 30.379940, 19.995193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.352665, 30.522238, 19.611282>,  <41.499722, 30.096785, 20.214937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.352665, 30.522238, 19.611282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.713135, 30.349569, 19.627012>,  <41.929417, 30.245968, 19.636450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.713135, 30.349569, 19.627012>,  <41.352665, 30.522238, 19.611282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.713135, 30.349569, 19.627012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128959, -0.353619, -0.926457,
		0.413831, 0.829827, -0.374340,
		0.901173, -0.431672, 0.039325,
		41.983486, 30.220068, 19.638809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.544025, 30.607796, 19.446306>,  <41.352665, 30.522238, 19.611282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.544025, 30.607796, 19.446306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.438213, 30.984503, 19.363262>,  <40.374725, 31.210527, 19.313437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.438213, 30.984503, 19.363262>,  <40.544025, 30.607796, 19.446306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.438213, 30.984503, 19.363262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075262, 0.194461, 0.978019,
		0.961437, 0.274337, 0.019439,
		-0.264527, 0.941766, -0.207609,
		40.358856, 31.267033, 19.300980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.280079, 30.328796, 18.804276>,  <40.544025, 30.607796, 19.446306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.280079, 30.328796, 18.804276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.021782, 30.082804, 18.985304>,  <39.866802, 29.935209, 19.093920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.021782, 30.082804, 18.985304>,  <40.280079, 30.328796, 18.804276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.021782, 30.082804, 18.985304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100398, 0.519180, 0.848747,
		-0.756927, 0.593508, -0.273513,
		-0.645741, -0.614980, 0.452569,
		39.828060, 29.898310, 19.121075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.751274, 30.762501, 19.213165>,  <40.280079, 30.328796, 18.804276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.751274, 30.762501, 19.213165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.753864, 30.392178, 19.364340>,  <39.755421, 30.169983, 19.455046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.753864, 30.392178, 19.364340>,  <39.751274, 30.762501, 19.213165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.753864, 30.392178, 19.364340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065676, 0.376736, 0.923990,
		-0.997820, -0.030807, -0.058363,
		0.006478, -0.925808, 0.377938,
		39.755806, 30.114435, 19.477720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.117420, 30.736284, 19.540024>,  <39.751274, 30.762501, 19.213165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.117420, 30.736284, 19.540024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.341526, 30.450100, 19.706984>,  <39.475990, 30.278389, 19.807159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.341526, 30.450100, 19.706984>,  <39.117420, 30.736284, 19.540024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.341526, 30.450100, 19.706984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161351, 0.399997, 0.902202,
		-0.812448, -0.572818, 0.108663,
		0.560263, -0.715459, 0.417401,
		39.509605, 30.235462, 19.832205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720787, 30.454742, 20.170067>,  <39.117420, 30.736284, 19.540024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720787, 30.454742, 20.170067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.102074, 30.344902, 20.220625>,  <39.330845, 30.278997, 20.250959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.102074, 30.344902, 20.220625>,  <38.720787, 30.454742, 20.170067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.102074, 30.344902, 20.220625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043079, 0.290449, 0.955920,
		-0.299210, -0.916642, 0.265030,
		0.953214, -0.274604, 0.126393,
		39.388039, 30.262522, 20.258543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.801739, 29.933929, 20.715828>,  <38.720787, 30.454742, 20.170067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.801739, 29.933929, 20.715828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.147274, 30.134958, 20.701921>,  <39.354595, 30.255575, 20.693579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.147274, 30.134958, 20.701921>,  <38.801739, 29.933929, 20.715828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147274, 30.134958, 20.701921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056397, 0.165051, 0.984671,
		0.500605, -0.848635, 0.170920,
		0.863837, 0.502571, -0.034765,
		39.406425, 30.285728, 20.691492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011501, 29.869791, 21.321640>,  <38.801739, 29.933929, 20.715828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.011501, 29.869791, 21.321640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.289536, 30.133371, 21.206652>,  <39.456356, 30.291519, 21.137659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.289536, 30.133371, 21.206652>,  <39.011501, 29.869791, 21.321640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.289536, 30.133371, 21.206652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255580, 0.147251, 0.955508,
		0.671962, -0.737633, -0.066063,
		0.695086, 0.658950, -0.287472,
		39.498062, 30.331057, 21.120411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758419, 29.628332, 21.517775>,  <39.011501, 29.869791, 21.321640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.758419, 29.628332, 21.517775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.740925, 30.026884, 21.488602>,  <39.730431, 30.266014, 21.471098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.740925, 30.026884, 21.488602>,  <39.758419, 29.628332, 21.517775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.740925, 30.026884, 21.488602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108146, 0.077293, 0.991126,
		0.993173, 0.035458, -0.111135,
		-0.043733, 0.996378, -0.072931,
		39.727806, 30.325798, 21.466722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189762, 29.802670, 21.963026>,  <39.758419, 29.628332, 21.517775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.189762, 29.802670, 21.963026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.072319, 30.179659, 21.899105>,  <40.001854, 30.405853, 21.860752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.072319, 30.179659, 21.899105>,  <40.189762, 29.802670, 21.963026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.072319, 30.179659, 21.899105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084513, 0.192106, 0.977728,
		0.952182, 0.273566, -0.136056,
		-0.293611, 0.942474, -0.159800,
		39.984234, 30.462400, 21.851166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.654354, 30.260599, 22.363880>,  <40.189762, 29.802670, 21.963026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.654354, 30.260599, 22.363880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.295979, 30.435116, 22.330540>,  <40.080956, 30.539825, 22.310535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.295979, 30.435116, 22.330540>,  <40.654354, 30.260599, 22.363880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.295979, 30.435116, 22.330540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089118, 0.007272, 0.995995,
		0.435151, 0.899776, 0.032366,
		-0.895936, 0.436292, -0.083350,
		40.027199, 30.566004, 22.305534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.639435, 30.844749, 22.792971>,  <40.654354, 30.260599, 22.363880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.639435, 30.844749, 22.792971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.254475, 30.760712, 22.724108>,  <40.023499, 30.710289, 22.682791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.254475, 30.760712, 22.724108>,  <40.639435, 30.844749, 22.792971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.254475, 30.760712, 22.724108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183006, 0.033187, 0.982551,
		-0.200714, 0.977118, -0.070388,
		-0.962405, -0.210093, -0.172157,
		39.965752, 30.697683, 22.672461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.269279, 31.312920, 23.122099>,  <40.639435, 30.844749, 22.792971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.269279, 31.312920, 23.122099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.007839, 31.013422, 23.077936>,  <39.850975, 30.833723, 23.051439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.007839, 31.013422, 23.077936>,  <40.269279, 31.312920, 23.122099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.007839, 31.013422, 23.077936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139752, -0.023972, 0.989896,
		-0.743824, 0.662427, -0.088970,
		-0.653601, -0.748743, -0.110407,
		39.811760, 30.788799, 23.044815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.572109, 31.443832, 23.477951>,  <40.269279, 31.312920, 23.122099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.572109, 31.443832, 23.477951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.620689, 31.048435, 23.441877>,  <39.649837, 30.811197, 23.420233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.620689, 31.048435, 23.441877>,  <39.572109, 31.443832, 23.477951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.620689, 31.048435, 23.441877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209608, -0.114350, 0.971076,
		-0.970213, -0.099034, -0.221084,
		0.121451, -0.988492, -0.090185,
		39.657124, 30.751888, 23.414822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961296, 31.137724, 23.705795>,  <39.572109, 31.443832, 23.477951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.961296, 31.137724, 23.705795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.228996, 30.842257, 23.737967>,  <39.389618, 30.664976, 23.757269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.228996, 30.842257, 23.737967>,  <38.961296, 31.137724, 23.705795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.228996, 30.842257, 23.737967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264685, -0.135862, 0.954716,
		-0.694290, -0.660237, -0.286440,
		0.669255, -0.738667, 0.080428,
		39.429771, 30.620657, 23.762094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756538, 30.764694, 24.184042>,  <38.961296, 31.137724, 23.705795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.756538, 30.764694, 24.184042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.106400, 30.570986, 24.175491>,  <39.316319, 30.454760, 24.170361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.106400, 30.570986, 24.175491>,  <38.756538, 30.764694, 24.184042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.106400, 30.570986, 24.175491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182467, -0.369776, 0.911028,
		-0.449095, -0.792933, -0.411790,
		0.874654, -0.484276, -0.021380,
		39.368797, 30.425703, 24.169077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623749, 30.097521, 24.320509>,  <38.756538, 30.764694, 24.184042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623749, 30.097521, 24.320509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.008018, 30.165428, 24.408411>,  <39.238579, 30.206173, 24.461153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.008018, 30.165428, 24.408411>,  <38.623749, 30.097521, 24.320509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008018, 30.165428, 24.408411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128000, -0.431565, 0.892954,
		0.246432, -0.885963, -0.392861,
		0.960670, 0.169767, 0.219755,
		39.296219, 30.216358, 24.474339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963940, 29.453377, 24.347904>,  <38.623749, 30.097521, 24.320509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.963940, 29.453377, 24.347904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.155674, 29.729162, 24.565113>,  <39.270714, 29.894634, 24.695438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.155674, 29.729162, 24.565113>,  <38.963940, 29.453377, 24.347904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.155674, 29.729162, 24.565113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300556, -0.452362, 0.839663,
		0.824562, -0.565691, -0.009611,
		0.479337, 0.689466, 0.543022,
		39.299477, 29.936003, 24.728020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188831, 29.074902, 24.964737>,  <38.963940, 29.453377, 24.347904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.188831, 29.074902, 24.964737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.289433, 29.443443, 25.083298>,  <39.349792, 29.664568, 25.154434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.289433, 29.443443, 25.083298>,  <39.188831, 29.074902, 24.964737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.289433, 29.443443, 25.083298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188902, -0.253627, 0.948678,
		0.949243, -0.294585, 0.110258,
		0.251502, 0.921354, 0.296402,
		39.364883, 29.719849, 25.172218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.713821, 29.008034, 25.552114>,  <39.188831, 29.074902, 24.964737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.713821, 29.008034, 25.552114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.573540, 29.381680, 25.578762>,  <39.489368, 29.605867, 25.594751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.573540, 29.381680, 25.578762>,  <39.713821, 29.008034, 25.552114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573540, 29.381680, 25.578762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114752, -0.113466, 0.986893,
		0.929428, 0.338466, 0.146984,
		-0.350708, 0.934113, 0.066619,
		39.468327, 29.661913, 25.598747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974274, 29.224514, 26.146656>,  <39.713821, 29.008034, 25.552114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.974274, 29.224514, 26.146656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.673153, 29.483244, 26.097811>,  <39.492481, 29.638481, 26.068504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.673153, 29.483244, 26.097811>,  <39.974274, 29.224514, 26.146656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.673153, 29.483244, 26.097811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214770, -0.065995, 0.974432,
		0.622226, 0.759779, 0.188600,
		-0.752800, 0.646823, -0.122114,
		39.447311, 29.677290, 26.061176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.658108, 29.695759, 31.561323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.394302, 29.974604, 31.448841>,  <41.236019, 30.141911, 31.381351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.394302, 29.974604, 31.448841>,  <41.658108, 29.695759, 31.561323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.394302, 29.974604, 31.448841> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113491, 0.277463, 0.954010,
		0.743077, 0.661095, -0.103874,
		-0.659512, 0.697114, -0.281205,
		41.196449, 30.183739, 31.364479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.697502, 30.262394, 32.045227>,  <41.658108, 29.695759, 31.561323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.697502, 30.262394, 32.045227> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.341164, 30.313242, 31.870760>,  <41.127361, 30.343752, 31.766081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.341164, 30.313242, 31.870760>,  <41.697502, 30.262394, 32.045227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.341164, 30.313242, 31.870760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350984, 0.416999, 0.838404,
		0.288459, 0.899973, -0.326863,
		-0.890843, 0.127122, -0.436163,
		41.073910, 30.351379, 31.739910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.532940, 31.026392, 32.095203>,  <41.697502, 30.262394, 32.045227>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.532940, 31.026392, 32.095203> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.199615, 30.806866, 32.068676>,  <40.999622, 30.675150, 32.052761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.199615, 30.806866, 32.068676>,  <41.532940, 31.026392, 32.095203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.199615, 30.806866, 32.068676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312360, 0.368481, 0.875588,
		-0.456099, 0.750350, -0.478486,
		-0.833310, -0.548814, -0.066315,
		40.949623, 30.642221, 32.048782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.099789, 31.516857, 32.197792>,  <41.532940, 31.026392, 32.095203>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.099789, 31.516857, 32.197792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.861580, 31.197096, 32.229568>,  <40.718655, 31.005239, 32.248634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.861580, 31.197096, 32.229568>,  <41.099789, 31.516857, 32.197792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.861580, 31.197096, 32.229568> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511871, 0.453803, 0.729418,
		-0.619150, 0.393719, -0.679440,
		-0.595518, -0.799405, 0.079438,
		40.682926, 30.957273, 32.253399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.501381, 31.817169, 32.286697>,  <41.099789, 31.516857, 32.197792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.501381, 31.817169, 32.286697> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.450737, 31.439453, 32.408211>,  <40.420349, 31.212824, 32.481121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.450737, 31.439453, 32.408211>,  <40.501381, 31.817169, 32.286697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.450737, 31.439453, 32.408211> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510716, 0.324597, 0.796119,
		-0.850375, -0.054349, -0.523363,
		-0.126613, -0.944290, 0.303786,
		40.412754, 31.156166, 32.499348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766155, 31.701059, 32.508911>,  <40.501381, 31.817169, 32.286697>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.766155, 31.701059, 32.508911> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.939941, 31.386456, 32.684475>,  <40.044212, 31.197693, 32.789814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.939941, 31.386456, 32.684475>,  <39.766155, 31.701059, 32.508911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.939941, 31.386456, 32.684475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453585, 0.229946, 0.861037,
		-0.778140, -0.573174, -0.256846,
		0.434463, -0.786509, 0.438913,
		40.070282, 31.150503, 32.816151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182076, 31.231319, 32.754040>,  <39.766155, 31.701059, 32.508911>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.182076, 31.231319, 32.754040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.519791, 31.187197, 32.963806>,  <39.722420, 31.160723, 33.089664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.519791, 31.187197, 32.963806>,  <39.182076, 31.231319, 32.754040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.519791, 31.187197, 32.963806> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492230, 0.227259, 0.840276,
		-0.211866, -0.967567, 0.137575,
		0.844288, -0.110307, 0.524414,
		39.773079, 31.154104, 33.121132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938190, 30.861820, 33.391460>,  <39.182076, 31.231319, 32.754040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938190, 30.861820, 33.391460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.293449, 31.031748, 33.461575>,  <39.506603, 31.133705, 33.503643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.293449, 31.031748, 33.461575>,  <38.938190, 30.861820, 33.391460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.293449, 31.031748, 33.461575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372212, 0.441237, 0.816559,
		0.269546, -0.790468, 0.550005,
		0.888146, 0.424819, 0.175288,
		39.559895, 31.159193, 33.514160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.110889, 30.768791, 34.135883>,  <38.938190, 30.861820, 33.391460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.110889, 30.768791, 34.135883> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.363365, 31.065445, 34.045036>,  <39.514851, 31.243437, 33.990528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.363365, 31.065445, 34.045036>,  <39.110889, 30.768791, 34.135883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.363365, 31.065445, 34.045036> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186568, 0.429387, 0.883640,
		0.752856, -0.515372, 0.409390,
		0.631190, 0.741632, -0.227114,
		39.552723, 31.287935, 33.976902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446808, 30.986507, 34.787479>,  <39.110889, 30.768791, 34.135883>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.446808, 30.986507, 34.787479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.463444, 31.302546, 34.542850>,  <39.473423, 31.492168, 34.396072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.463444, 31.302546, 34.542850>,  <39.446808, 30.986507, 34.787479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.463444, 31.302546, 34.542850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033888, 0.612864, 0.789461,
		0.998560, -0.012106, 0.052262,
		0.041586, 0.790096, -0.611571,
		39.475918, 31.539574, 34.359379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.080002, 31.312538, 34.976379>,  <39.446808, 30.986507, 34.787479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.080002, 31.312538, 34.976379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.835892, 31.567047, 34.787605>,  <39.689426, 31.719753, 34.674339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.835892, 31.567047, 34.787605>,  <40.080002, 31.312538, 34.976379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.835892, 31.567047, 34.787605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009924, 0.589547, 0.807673,
		0.792129, 0.497585, -0.353471,
		-0.610273, 0.636273, -0.471935,
		39.652809, 31.757929, 34.646027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.312691, 31.990931, 35.271839>,  <40.080002, 31.312538, 34.976379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.312691, 31.990931, 35.271839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.969017, 32.074108, 35.084835>,  <39.762814, 32.124016, 34.972633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.969017, 32.074108, 35.084835>,  <40.312691, 31.990931, 35.271839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.969017, 32.074108, 35.084835> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271894, 0.588477, 0.761425,
		0.433453, 0.781315, -0.449070,
		-0.859181, 0.207943, -0.467513,
		39.711262, 32.136490, 34.944580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.312584, 32.765400, 35.129990>,  <40.312691, 31.990931, 35.271839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.312584, 32.765400, 35.129990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.958614, 32.579372, 35.139935>,  <39.746231, 32.467758, 35.145901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.958614, 32.579372, 35.139935>,  <40.312584, 32.765400, 35.129990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.958614, 32.579372, 35.139935> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342215, 0.685519, 0.642614,
		-0.315901, 0.560158, -0.765787,
		-0.884927, -0.465066, 0.024862,
		39.693138, 32.439854, 35.147392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.788567, 33.135571, 34.813652>,  <40.312584, 32.765400, 35.129990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.788567, 33.135571, 34.813652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.716450, 33.032795, 35.193436>,  <39.673180, 32.971130, 35.421307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.716450, 33.032795, 35.193436>,  <39.788567, 33.135571, 34.813652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.716450, 33.032795, 35.193436> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108117, 0.964607, 0.240508,
		-0.977653, -0.059292, -0.201690,
		-0.180292, -0.256939, 0.949462,
		39.662361, 32.955711, 35.478275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.101841, 33.530579, 35.440998>,  <39.788567, 33.135571, 34.813652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.101841, 33.530579, 35.440998> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.135704, 33.919136, 35.529743>,  <40.156021, 34.152271, 35.582993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.135704, 33.919136, 35.529743>,  <40.101841, 33.530579, 35.440998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.135704, 33.919136, 35.529743> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593135, 0.228046, -0.772130,
		-0.800640, -0.066231, 0.595474,
		0.084657, 0.971395, 0.221866,
		40.161102, 34.210556, 35.596302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438396, 33.753765, 35.368382>,  <40.101841, 33.530579, 35.440998>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.438396, 33.753765, 35.368382> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.659576, 34.087036, 35.365250>,  <39.792286, 34.286999, 35.363373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.659576, 34.087036, 35.365250>,  <39.438396, 33.753765, 35.368382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.659576, 34.087036, 35.365250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512286, 0.332550, -0.791816,
		-0.657119, 0.441847, 0.610709,
		0.552953, 0.833175, -0.007827,
		39.825462, 34.336990, 35.362900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978363, 34.302799, 35.254681>,  <39.438396, 33.753765, 35.368382>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.978363, 34.302799, 35.254681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.325596, 34.469810, 35.147270>,  <39.533936, 34.570019, 35.082825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.325596, 34.469810, 35.147270>,  <38.978363, 34.302799, 35.254681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.325596, 34.469810, 35.147270> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412424, 0.305495, -0.858242,
		-0.276307, 0.855769, 0.437393,
		0.868079, 0.417530, -0.268529,
		39.586021, 34.595070, 35.066711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.798599, 34.917450, 34.835659>,  <38.978363, 34.302799, 35.254681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.798599, 34.917450, 34.835659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.173149, 34.819977, 34.734600>,  <39.397877, 34.761494, 34.673965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.173149, 34.819977, 34.734600>,  <38.798599, 34.917450, 34.835659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173149, 34.819977, 34.734600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194206, 0.239900, -0.951174,
		0.292394, 0.939716, 0.177311,
		0.936370, -0.243683, -0.252644,
		39.454060, 34.746872, 34.658806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051971, 35.459881, 34.208893>,  <38.798599, 34.917450, 34.835659>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.051971, 35.459881, 34.208893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.264954, 35.121296, 34.209690>,  <39.392742, 34.918144, 34.210171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.264954, 35.121296, 34.209690>,  <39.051971, 35.459881, 34.208893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.264954, 35.121296, 34.209690> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116506, -0.075622, -0.990307,
		0.838404, 0.527059, -0.138883,
		0.532452, -0.846458, 0.001997,
		39.424690, 34.867359, 34.210289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396229, 35.580376, 33.613434>,  <39.051971, 35.459881, 34.208893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.396229, 35.580376, 33.613434> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.431263, 35.187943, 33.682480>,  <39.452286, 34.952480, 33.723907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.431263, 35.187943, 33.682480>,  <39.396229, 35.580376, 33.613434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431263, 35.187943, 33.682480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152391, -0.158049, -0.975601,
		0.984432, 0.111756, 0.135666,
		0.087587, -0.981087, 0.172619,
		39.457539, 34.893616, 33.734264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.105854, 35.367588, 33.404106>,  <39.396229, 35.580376, 33.613434>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.105854, 35.367588, 33.404106> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.852669, 35.058094, 33.393494>,  <39.700760, 34.872398, 33.387127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.852669, 35.058094, 33.393494>,  <40.105854, 35.367588, 33.404106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.852669, 35.058094, 33.393494> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207537, -0.136564, -0.968648,
		0.745850, -0.618620, 0.247018,
		-0.632959, -0.773731, -0.026530,
		39.662781, 34.825974, 33.385536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.458691, 34.849400, 33.017601>,  <40.105854, 35.367588, 33.404106>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.458691, 34.849400, 33.017601> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.086662, 34.702812, 33.007275>,  <39.863445, 34.614861, 33.001080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.086662, 34.702812, 33.007275>,  <40.458691, 34.849400, 33.017601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.086662, 34.702812, 33.007275> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123632, -0.246049, -0.961340,
		0.345945, -0.897309, 0.274151,
		-0.930074, -0.366465, -0.025816,
		39.807640, 34.592873, 32.999531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.508751, 34.394367, 32.492718>,  <40.458691, 34.849400, 33.017601>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.508751, 34.394367, 32.492718> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.112431, 34.440155, 32.521603>,  <39.874638, 34.467628, 32.538933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.112431, 34.440155, 32.521603>,  <40.508751, 34.394367, 32.492718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.112431, 34.440155, 32.521603> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106312, -0.328000, -0.938677,
		-0.083762, -0.937717, 0.337151,
		-0.990798, 0.114468, 0.072217,
		39.815189, 34.474495, 32.543266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.181416, 33.806690, 32.159931>,  <40.508751, 34.394367, 32.492718>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.181416, 33.806690, 32.159931> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.890129, 34.080585, 32.148411>,  <39.715359, 34.244923, 32.141499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.890129, 34.080585, 32.148411>,  <40.181416, 33.806690, 32.159931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.890129, 34.080585, 32.148411> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135396, -0.184939, -0.973378,
		-0.671839, -0.704930, 0.227387,
		-0.728217, 0.684741, -0.028805,
		39.671665, 34.286007, 32.139771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.677902, 33.496723, 31.751987>,  <40.181416, 33.806690, 32.159931>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.677902, 33.496723, 31.751987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.621441, 33.892696, 31.747652>,  <39.587563, 34.130280, 31.745050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.621441, 33.892696, 31.747652>,  <39.677902, 33.496723, 31.751987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.621441, 33.892696, 31.747652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075004, -0.000223, -0.997183,
		-0.987143, -0.141567, -0.074217,
		-0.141152, 0.989929, -0.010838,
		39.579094, 34.189674, 31.744400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037441, 33.650661, 31.359648>,  <39.677902, 33.496723, 31.751987>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.037441, 33.650661, 31.359648> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.284454, 33.963833, 31.329508>,  <39.432663, 34.151737, 31.311424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.284454, 33.963833, 31.329508>,  <39.037441, 33.650661, 31.359648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.284454, 33.963833, 31.329508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070698, -0.040161, -0.996689,
		-0.783364, 0.620812, 0.030551,
		0.617529, 0.782930, -0.075351,
		39.469711, 34.198711, 31.306902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807545, 33.936752, 30.739395>,  <39.037441, 33.650661, 31.359648>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.807545, 33.936752, 30.739395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.168411, 34.102127, 30.788651>,  <39.384933, 34.201351, 30.818203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.168411, 34.102127, 30.788651>,  <38.807545, 33.936752, 30.739395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.168411, 34.102127, 30.788651> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036343, 0.211591, -0.976682,
		-0.429847, 0.885609, 0.175866,
		0.902170, 0.413432, 0.123138,
		39.439064, 34.226158, 30.825592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463745, 34.541172, 30.312733>,  <38.807545, 33.936752, 30.739395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.463745, 34.541172, 30.312733> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.862736, 34.529114, 30.338430>,  <39.102131, 34.521877, 30.353849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.862736, 34.529114, 30.338430>,  <38.463745, 34.541172, 30.312733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.862736, 34.529114, 30.338430> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067975, 0.145850, -0.986969,
		0.020385, 0.988847, 0.147531,
		0.997479, -0.030147, 0.064244,
		39.161980, 34.520069, 30.357704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239777, 35.171715, 30.642397>,  <38.463745, 34.541172, 30.312733>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239777, 35.171715, 30.642397> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.967491, 35.458809, 30.583778>,  <37.804119, 35.631065, 30.548607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.967491, 35.458809, 30.583778>,  <38.239777, 35.171715, 30.642397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967491, 35.458809, 30.583778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170198, 0.039619, 0.984613,
		0.712502, 0.695183, 0.095189,
		-0.680715, 0.717740, -0.146548,
		37.763275, 35.674129, 30.539814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.395100, 35.707581, 31.085835>,  <38.239777, 35.171715, 30.642397>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.395100, 35.707581, 31.085835> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.006927, 35.722370, 30.990416>,  <37.774025, 35.731243, 30.933165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.006927, 35.722370, 30.990416>,  <38.395100, 35.707581, 31.085835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006927, 35.722370, 30.990416> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237292, 0.035350, 0.970795,
		0.044327, 0.998691, -0.025531,
		-0.970427, 0.036975, -0.238548,
		37.715801, 35.733463, 30.918852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015785, 36.037975, 31.694199>,  <38.395100, 35.707581, 31.085835>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015785, 36.037975, 31.694199> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.695713, 35.911572, 31.490295>,  <37.503670, 35.835728, 31.367954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.695713, 35.911572, 31.490295>,  <38.015785, 36.037975, 31.694199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.695713, 35.911572, 31.490295> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552393, 0.057251, 0.831616,
		-0.233614, 0.947027, -0.220372,
		-0.800179, -0.316009, -0.509756,
		37.455658, 35.816769, 31.337368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309837, 36.453819, 31.962090>,  <38.015785, 36.037975, 31.694199>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.309837, 36.453819, 31.962090> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.184700, 36.110641, 31.799086>,  <37.109619, 35.904736, 31.701284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.184700, 36.110641, 31.799086>,  <37.309837, 36.453819, 31.962090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.184700, 36.110641, 31.799086> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529941, -0.198385, 0.824504,
		-0.788220, 0.473897, -0.392595,
		-0.312845, -0.857942, -0.407508,
		37.090847, 35.853260, 31.676834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624668, 36.394772, 31.941698>,  <37.309837, 36.453819, 31.962090>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624668, 36.394772, 31.941698> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.732090, 36.009487, 31.937687>,  <36.796543, 35.778316, 31.935280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.732090, 36.009487, 31.937687>,  <36.624668, 36.394772, 31.941698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732090, 36.009487, 31.937687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551866, -0.162382, 0.817971,
		-0.789507, -0.214138, -0.575173,
		0.268556, -0.963211, -0.010026,
		36.812656, 35.720524, 31.934679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.110939, 36.059868, 32.247730>,  <36.624668, 36.394772, 31.941698>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.110939, 36.059868, 32.247730> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.357441, 35.745026, 32.258251>,  <36.505344, 35.556122, 32.264565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.357441, 35.745026, 32.258251>,  <36.110939, 36.059868, 32.247730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.357441, 35.745026, 32.258251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550046, -0.406269, 0.729655,
		-0.563628, -0.464124, -0.683310,
		0.616258, -0.787105, 0.026305,
		36.542320, 35.508896, 32.266144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696213, 35.447647, 32.271263>,  <36.110939, 36.059868, 32.247730>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696213, 35.447647, 32.271263> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.043690, 35.331997, 32.432148>,  <36.252178, 35.262608, 32.528679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.043690, 35.331997, 32.432148>,  <35.696213, 35.447647, 32.271263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043690, 35.331997, 32.432148> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494309, -0.558517, 0.666121,
		0.032051, -0.777474, -0.628097,
		0.868695, -0.289124, 0.402214,
		36.304298, 35.245258, 32.552811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564709, 34.773022, 32.251217>,  <35.696213, 35.447647, 32.271263>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564709, 34.773022, 32.251217> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.865715, 34.858261, 32.500473>,  <36.046318, 34.909405, 32.650028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.865715, 34.858261, 32.500473>,  <35.564709, 34.773022, 32.251217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865715, 34.858261, 32.500473> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469469, -0.490006, 0.734502,
		0.461862, -0.845272, -0.268697,
		0.752517, 0.213094, 0.623145,
		36.091469, 34.922188, 32.687416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807571, 34.131435, 32.622509>,  <35.564709, 34.773022, 32.251217>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807571, 34.131435, 32.622509> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.961002, 34.404099, 32.871735>,  <36.053062, 34.567696, 33.021271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.961002, 34.404099, 32.871735>,  <35.807571, 34.131435, 32.622509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961002, 34.404099, 32.871735> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285045, -0.554343, 0.781954,
		0.878417, -0.477544, -0.018332,
		0.383580, 0.681657, 0.623066,
		36.076077, 34.608597, 33.058655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253277, 33.807133, 33.203117>,  <35.807571, 34.131435, 32.622509>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.253277, 33.807133, 33.203117> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.149193, 34.172112, 33.329437>,  <36.086742, 34.391098, 33.405228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.149193, 34.172112, 33.329437>,  <36.253277, 33.807133, 33.203117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.149193, 34.172112, 33.329437> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353031, -0.394329, 0.848454,
		0.898698, 0.109292, 0.424731,
		-0.260213, 0.912447, 0.315799,
		36.071129, 34.445847, 33.424175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520664, 33.903439, 33.964878>,  <36.253277, 33.807133, 33.203117>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.520664, 33.903439, 33.964878> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.231358, 34.175709, 33.918301>,  <36.057774, 34.339073, 33.890354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.231358, 34.175709, 33.918301>,  <36.520664, 33.903439, 33.964878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.231358, 34.175709, 33.918301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460222, -0.349399, 0.816159,
		0.514856, 0.643893, 0.565973,
		-0.723270, 0.680677, -0.116444,
		36.014378, 34.379913, 33.883366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441475, 34.050724, 34.686317>,  <36.520664, 33.903439, 33.964878>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441475, 34.050724, 34.686317> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.120537, 34.181595, 34.486637>,  <35.927975, 34.260117, 34.366829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.120537, 34.181595, 34.486637>,  <36.441475, 34.050724, 34.686317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120537, 34.181595, 34.486637> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543478, -0.054741, 0.837636,
		0.246727, 0.943377, 0.221734,
		-0.802345, 0.327175, -0.499199,
		35.879833, 34.279747, 34.336876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.423553, 36.450035, 27.090057> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032864, 36.421459, 27.009148>,  <38.798450, 36.404316, 26.960602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032864, 36.421459, 27.009148>,  <39.423553, 36.450035, 27.090057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.032864, 36.421459, 27.009148> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198905, -0.051545, 0.978662,
		-0.080338, 0.996112, 0.036136,
		-0.976720, -0.071436, -0.202273,
		38.739849, 36.400028, 26.948465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.200638, 36.887894, 27.557318>,  <39.423553, 36.450035, 27.090057>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.200638, 36.887894, 27.557318> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.862148, 36.703041, 27.451227>,  <38.659054, 36.592129, 27.387573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.862148, 36.703041, 27.451227>,  <39.200638, 36.887894, 27.557318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.862148, 36.703041, 27.451227> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298232, -0.001704, 0.954492,
		-0.441549, 0.886812, -0.136379,
		-0.846222, -0.462128, -0.265227,
		38.608280, 36.564404, 27.371658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646812, 37.243469, 27.845133>,  <39.200638, 36.887894, 27.557318>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646812, 37.243469, 27.845133> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489262, 36.881580, 27.780230>,  <38.394730, 36.664448, 27.741287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489262, 36.881580, 27.780230>,  <38.646812, 37.243469, 27.845133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.489262, 36.881580, 27.780230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207471, -0.084464, 0.974588,
		-0.895441, 0.417535, -0.154436,
		-0.393880, -0.904727, -0.162259,
		38.371098, 36.610161, 27.731552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984150, 37.277576, 28.195820>,  <38.646812, 37.243469, 27.845133>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.984150, 37.277576, 28.195820> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099747, 36.894974, 28.179882>,  <38.169106, 36.665413, 28.170321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099747, 36.894974, 28.179882>,  <37.984150, 37.277576, 28.195820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.099747, 36.894974, 28.179882> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251213, -0.115928, 0.960964,
		-0.923784, -0.267699, -0.273788,
		0.288989, -0.956503, -0.039843,
		38.186443, 36.608025, 28.167929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.339146, 36.873051, 28.264992>,  <37.984150, 37.277576, 28.195820>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.339146, 36.873051, 28.264992> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638733, 36.621758, 28.349245>,  <37.818485, 36.470982, 28.399797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638733, 36.621758, 28.349245>,  <37.339146, 36.873051, 28.264992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638733, 36.621758, 28.349245> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451696, -0.251516, 0.855985,
		-0.484780, -0.736250, -0.472148,
		0.748972, -0.628232, 0.210631,
		37.863426, 36.433289, 28.412436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020496, 36.396103, 28.633308>,  <37.339146, 36.873051, 28.264992>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.020496, 36.396103, 28.633308> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399483, 36.307285, 28.725407>,  <37.626873, 36.253994, 28.780664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399483, 36.307285, 28.725407>,  <37.020496, 36.396103, 28.633308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.399483, 36.307285, 28.725407> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280244, -0.229222, 0.932159,
		-0.154198, -0.947711, -0.279405,
		0.947463, -0.222038, 0.230245,
		37.683720, 36.240673, 28.794479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936119, 35.731998, 29.028358>,  <37.020496, 36.396103, 28.633308>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936119, 35.731998, 29.028358> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.299797, 35.857330, 29.138048>,  <37.518002, 35.932529, 29.203861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.299797, 35.857330, 29.138048>,  <36.936119, 35.731998, 29.028358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.299797, 35.857330, 29.138048> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189624, -0.274755, 0.942630,
		0.370696, -0.909030, -0.190390,
		0.909190, 0.313327, 0.274225,
		37.572556, 35.951328, 29.220316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425453, 35.149391, 29.428940>,  <36.936119, 35.731998, 29.028358>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.425453, 35.149391, 29.428940> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.536892, 35.516628, 29.541710>,  <37.603756, 35.736973, 29.609371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.536892, 35.516628, 29.541710>,  <37.425453, 35.149391, 29.428940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536892, 35.516628, 29.541710> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199308, -0.231888, 0.952105,
		0.939500, -0.321443, 0.118381,
		0.278596, 0.918097, 0.281925,
		37.620472, 35.792057, 29.626287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927605, 34.979698, 29.964735>,  <37.425453, 35.149391, 29.428940>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.927605, 34.979698, 29.964735> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795963, 35.353771, 30.017069>,  <37.716976, 35.578217, 30.048470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795963, 35.353771, 30.017069>,  <37.927605, 34.979698, 29.964735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.795963, 35.353771, 30.017069> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184003, -0.199405, 0.962487,
		0.926193, 0.292686, 0.237702,
		-0.329105, 0.935186, 0.130832,
		37.697231, 35.634327, 30.056318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718777, 35.090755, 29.921053>,  <37.927605, 34.979698, 29.964735>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718777, 35.090755, 29.921053> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057095, 34.878605, 29.944183>,  <39.260086, 34.751316, 29.958061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057095, 34.878605, 29.944183>,  <38.718777, 35.090755, 29.921053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.057095, 34.878605, 29.944183> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221630, 0.250697, -0.942354,
		0.485302, 0.809850, 0.329583,
		0.845791, -0.530372, 0.057824,
		39.310833, 34.719494, 29.961531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.238235, 35.528732, 29.598408>,  <38.718777, 35.090755, 29.921053>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.238235, 35.528732, 29.598408> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.356441, 35.146652, 29.591951>,  <39.427364, 34.917404, 29.588078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.356441, 35.146652, 29.591951>,  <39.238235, 35.528732, 29.598408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.356441, 35.146652, 29.591951> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246942, 0.092698, -0.964586,
		0.922870, 0.281066, 0.263273,
		0.295517, -0.955201, -0.016142,
		39.445095, 34.860092, 29.587109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.886734, 35.542522, 29.279245>,  <39.238235, 35.528732, 29.598408>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.886734, 35.542522, 29.279245> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.756668, 35.165890, 29.244152>,  <39.678631, 34.939911, 29.223097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.756668, 35.165890, 29.244152>,  <39.886734, 35.542522, 29.279245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.756668, 35.165890, 29.244152> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308477, -0.017911, -0.951063,
		0.893931, -0.336312, 0.296280,
		-0.325161, -0.941580, -0.087733,
		39.659119, 34.883415, 29.217833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.397343, 35.225117, 28.909267>,  <39.886734, 35.542522, 29.279245>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.397343, 35.225117, 28.909267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.109165, 34.948387, 28.889874>,  <39.936260, 34.782349, 28.878237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.109165, 34.948387, 28.889874>,  <40.397343, 35.225117, 28.909267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.109165, 34.948387, 28.889874> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237183, -0.180089, -0.954627,
		0.651699, -0.699251, 0.293831,
		-0.720440, -0.691820, -0.048487,
		39.893032, 34.740841, 28.875328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.710854, 34.675655, 28.698946>,  <40.397343, 35.225117, 28.909267>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.710854, 34.675655, 28.698946> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.323681, 34.626389, 28.611372>,  <40.091377, 34.596828, 28.558828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.323681, 34.626389, 28.611372>,  <40.710854, 34.675655, 28.698946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.323681, 34.626389, 28.611372> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248732, -0.347957, -0.903913,
		0.035155, -0.929384, 0.367436,
		-0.967934, -0.123170, -0.218935,
		40.033302, 34.589439, 28.545691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.600651, 33.940212, 28.473837>,  <40.710854, 34.675655, 28.698946>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.600651, 33.940212, 28.473837> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.334839, 34.183064, 28.299574>,  <40.175350, 34.328773, 28.195017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.334839, 34.183064, 28.299574>,  <40.600651, 33.940212, 28.473837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.334839, 34.183064, 28.299574> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320437, -0.295158, -0.900112,
		-0.675067, -0.737754, 0.001598,
		-0.664533, 0.607124, -0.435656,
		40.135479, 34.365200, 28.168877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.325684, 33.613323, 27.911167>,  <40.600651, 33.940212, 28.473837>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.325684, 33.613323, 27.911167> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203979, 33.975540, 27.792896>,  <40.130959, 34.192871, 27.721933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203979, 33.975540, 27.792896>,  <40.325684, 33.613323, 27.911167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.203979, 33.975540, 27.792896> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344276, -0.184884, -0.920485,
		-0.888201, -0.381859, -0.255503,
		-0.304257, 0.905539, -0.295679,
		40.112701, 34.247204, 27.704193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.916695, 33.511379, 27.245340>,  <40.325684, 33.613323, 27.911167>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.916695, 33.511379, 27.245340> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.044888, 33.890118, 27.256529>,  <40.121803, 34.117359, 27.263241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.044888, 33.890118, 27.256529>,  <39.916695, 33.511379, 27.245340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.044888, 33.890118, 27.256529> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399121, -0.108195, -0.910492,
		-0.859067, 0.302957, -0.412579,
		0.320479, 0.946842, 0.027970,
		40.141033, 34.174171, 27.264919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641914, 33.829765, 26.657574>,  <39.916695, 33.511379, 27.245340>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.641914, 33.829765, 26.657574> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.941746, 34.059872, 26.788544>,  <40.121643, 34.197937, 26.867126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.941746, 34.059872, 26.788544>,  <39.641914, 33.829765, 26.657574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.941746, 34.059872, 26.788544> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350099, 0.075248, -0.933685,
		-0.561755, 0.814499, -0.144996,
		0.749575, 0.575265, 0.327426,
		40.166618, 34.232452, 26.886772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.588417, 34.398357, 26.228962>,  <39.641914, 33.829765, 26.657574>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.588417, 34.398357, 26.228962> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965412, 34.440170, 26.355951>,  <40.191608, 34.465260, 26.432146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965412, 34.440170, 26.355951>,  <39.588417, 34.398357, 26.228962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.965412, 34.440170, 26.355951> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320132, -0.009250, -0.947328,
		-0.096093, 0.994478, -0.042183,
		0.942487, 0.104536, 0.317476,
		40.248158, 34.471531, 26.451195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958252, 34.940502, 25.884748>,  <39.588417, 34.398357, 26.228962>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.958252, 34.940502, 25.884748> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.239243, 34.696358, 26.031170>,  <40.407837, 34.549873, 26.119022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.239243, 34.696358, 26.031170>,  <39.958252, 34.940502, 25.884748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.239243, 34.696358, 26.031170> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427507, -0.049332, -0.902665,
		0.569006, 0.790589, 0.226278,
		0.702474, -0.610357, 0.366053,
		40.449986, 34.513252, 26.140985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.550884, 35.080502, 25.483225>,  <39.958252, 34.940502, 25.884748>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.550884, 35.080502, 25.483225> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.662865, 34.745220, 25.670433>,  <40.730053, 34.544052, 25.782757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.662865, 34.745220, 25.670433>,  <40.550884, 35.080502, 25.483225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.662865, 34.745220, 25.670433> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608972, -0.221825, -0.761543,
		0.742147, 0.498203, 0.448343,
		0.279949, -0.838205, 0.468018,
		40.746849, 34.493759, 25.810839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.336655, 34.975079, 25.565525>,  <40.550884, 35.080502, 25.483225>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.336655, 34.975079, 25.565525> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.161251, 34.616322, 25.588482>,  <41.056007, 34.401070, 25.602255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.161251, 34.616322, 25.588482>,  <41.336655, 34.975079, 25.565525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.161251, 34.616322, 25.588482> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714067, -0.386478, -0.583733,
		0.545724, -0.214993, 0.809915,
		-0.438513, -0.896891, 0.057391,
		41.029697, 34.347256, 25.605700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.864052, 34.490650, 25.657589>,  <41.336655, 34.975079, 25.565525>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.864052, 34.490650, 25.657589> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.563652, 34.280899, 25.497074>,  <41.383411, 34.155048, 25.400766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.563652, 34.280899, 25.497074>,  <41.864052, 34.490650, 25.657589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.563652, 34.280899, 25.497074> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611526, -0.323098, -0.722250,
		0.249078, -0.787804, 0.563316,
		-0.750997, -0.524379, -0.401286,
		41.338352, 34.123585, 25.376688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.058136, 30.842625, 24.368420> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.377941, 31.068497, 24.450323>,  <36.569824, 31.204020, 24.499464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.377941, 31.068497, 24.450323>,  <36.058136, 30.842625, 24.368420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.377941, 31.068497, 24.450323> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016297, -0.320371, 0.947152,
		0.600434, -0.760593, -0.246937,
		0.799508, 0.564678, 0.204757,
		36.617794, 31.237900, 24.511749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529392, 30.473396, 24.745457>,  <36.058136, 30.842625, 24.368420>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529392, 30.473396, 24.745457> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.606316, 30.856878, 24.829268>,  <36.652470, 31.086967, 24.879555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.606316, 30.856878, 24.829268>,  <36.529392, 30.473396, 24.745457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.606316, 30.856878, 24.829268> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014037, -0.216177, 0.976253,
		0.981233, -0.184804, -0.055031,
		0.192312, 0.958705, 0.209526,
		36.664009, 31.144489, 24.892126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.113579, 30.538340, 25.181091>,  <36.529392, 30.473396, 24.745457>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.113579, 30.538340, 25.181091> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.949356, 30.894541, 25.259525>,  <36.850822, 31.108261, 25.306585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.949356, 30.894541, 25.259525>,  <37.113579, 30.538340, 25.181091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.949356, 30.894541, 25.259525> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027679, -0.227118, 0.973474,
		0.911415, 0.394238, 0.117893,
		-0.410556, 0.890502, 0.196087,
		36.826191, 31.161692, 25.318352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370258, 30.635078, 25.958961>,  <37.113579, 30.538340, 25.181091>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370258, 30.635078, 25.958961> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.131718, 30.942654, 25.866789>,  <36.988594, 31.127199, 25.811485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.131718, 30.942654, 25.866789>,  <37.370258, 30.635078, 25.958961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131718, 30.942654, 25.866789> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268514, 0.079442, 0.959994,
		0.756481, 0.634370, 0.159095,
		-0.596353, 0.768937, -0.230433,
		36.952812, 31.173334, 25.797659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618736, 31.333883, 26.238762>,  <37.370258, 30.635078, 25.958961>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618736, 31.333883, 26.238762> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.222328, 31.304913, 26.193790>,  <36.984486, 31.287529, 26.166807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.222328, 31.304913, 26.193790>,  <37.618736, 31.333883, 26.238762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222328, 31.304913, 26.193790> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120790, 0.123855, 0.984921,
		-0.057412, 0.989654, -0.131491,
		-0.991017, -0.072429, -0.112429,
		36.925022, 31.283184, 26.160061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413971, 31.796625, 26.765673>,  <37.618736, 31.333883, 26.238762>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413971, 31.796625, 26.765673> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.101700, 31.570303, 26.659533>,  <36.914337, 31.434509, 26.595848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.101700, 31.570303, 26.659533>,  <37.413971, 31.796625, 26.765673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101700, 31.570303, 26.659533> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332787, 0.016994, 0.942849,
		-0.528960, 0.824364, -0.201559,
		-0.780675, -0.565805, -0.265349,
		36.867496, 31.400560, 26.579927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.784180, 32.066750, 27.140701>,  <37.413971, 31.796625, 26.765673>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.784180, 32.066750, 27.140701> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.684742, 31.690479, 27.048323>,  <36.625080, 31.464718, 26.992895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.684742, 31.690479, 27.048323>,  <36.784180, 32.066750, 27.140701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684742, 31.690479, 27.048323> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428070, -0.107190, 0.897366,
		-0.868884, 0.321939, -0.376028,
		-0.248590, -0.940673, -0.230948,
		36.610165, 31.408278, 26.979038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075241, 32.051964, 27.258894>,  <36.784180, 32.066750, 27.140701>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075241, 32.051964, 27.258894> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.189671, 31.668858, 27.247231>,  <36.258327, 31.438993, 27.240232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.189671, 31.668858, 27.247231>,  <36.075241, 32.051964, 27.258894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.189671, 31.668858, 27.247231> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569597, -0.194447, 0.798593,
		-0.770533, -0.211848, -0.601165,
		0.286076, -0.957763, -0.029160,
		36.275494, 31.381529, 27.238483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489746, 31.746424, 27.419613>,  <36.075241, 32.051964, 27.258894>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489746, 31.746424, 27.419613> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.742367, 31.438829, 27.459221>,  <35.893940, 31.254272, 27.482985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.742367, 31.438829, 27.459221>,  <35.489746, 31.746424, 27.419613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742367, 31.438829, 27.459221> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542829, -0.347351, 0.764646,
		-0.553609, -0.536662, -0.636798,
		0.631549, -0.768987, 0.099019,
		35.931831, 31.208134, 27.488926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.117710, 31.064358, 27.609962>,  <35.489746, 31.746424, 27.419613>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.117710, 31.064358, 27.609962> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.497475, 31.030167, 27.730835>,  <35.725334, 31.009651, 27.803358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.497475, 31.030167, 27.730835>,  <35.117710, 31.064358, 27.609962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497475, 31.030167, 27.730835> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313760, -0.298801, 0.901262,
		0.013256, -0.950480, -0.310504,
		0.949410, -0.085477, 0.302184,
		35.782299, 31.004522, 27.821489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134571, 30.478781, 28.017252>,  <35.117710, 31.064358, 27.609962>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134571, 30.478781, 28.017252> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.453617, 30.692163, 28.129847>,  <35.645046, 30.820192, 28.197403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.453617, 30.692163, 28.129847>,  <35.134571, 30.478781, 28.017252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.453617, 30.692163, 28.129847> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215877, -0.183291, 0.959063,
		0.563212, -0.825729, -0.031035,
		0.797615, 0.533456, 0.281487,
		35.692902, 30.852200, 28.214293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354702, 29.997242, 28.420822>,  <35.134571, 30.478781, 28.017252>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354702, 29.997242, 28.420822> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.490837, 30.360743, 28.517437>,  <35.572517, 30.578842, 28.575405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.490837, 30.360743, 28.517437>,  <35.354702, 29.997242, 28.420822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490837, 30.360743, 28.517437> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018765, -0.250257, 0.967998,
		0.940115, -0.333980, -0.068120,
		0.340339, 0.908751, 0.241538,
		35.592937, 30.633368, 28.589899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990387, 29.893538, 28.855520>,  <35.354702, 29.997242, 28.420822>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.990387, 29.893538, 28.855520> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.854290, 30.264162, 28.919672>,  <35.772633, 30.486536, 28.958164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.854290, 30.264162, 28.919672>,  <35.990387, 29.893538, 28.855520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854290, 30.264162, 28.919672> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093029, -0.136552, 0.986255,
		0.935725, 0.350486, -0.039736,
		-0.340242, 0.926560, 0.160381,
		35.752216, 30.542130, 28.967787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.378841, 30.189049, 29.474495>,  <35.990387, 29.893538, 28.855520>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.378841, 30.189049, 29.474495> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.059067, 30.427244, 29.442755>,  <35.867203, 30.570162, 29.423712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.059067, 30.427244, 29.442755>,  <36.378841, 30.189049, 29.474495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059067, 30.427244, 29.442755> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043977, 0.189739, 0.980849,
		0.599138, 0.780638, -0.177872,
		-0.799437, 0.595487, -0.079350,
		35.819237, 30.605890, 29.418949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047909, 30.699139, 29.389711>,  <36.378841, 30.189049, 29.474495>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047909, 30.699139, 29.389711> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.407520, 30.604696, 29.537224>,  <37.623287, 30.548031, 29.625731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.407520, 30.604696, 29.537224>,  <37.047909, 30.699139, 29.389711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407520, 30.604696, 29.537224> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346977, -0.129627, -0.928873,
		0.267118, 0.963042, -0.034614,
		0.899030, -0.236108, 0.368779,
		37.677231, 30.533863, 29.647858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535110, 31.053352, 28.931751>,  <37.047909, 30.699139, 29.389711>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.535110, 31.053352, 28.931751> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.766632, 30.794582, 29.130335>,  <37.905544, 30.639320, 29.249485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.766632, 30.794582, 29.130335>,  <37.535110, 31.053352, 28.931751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.766632, 30.794582, 29.130335> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521414, -0.174492, -0.835273,
		0.626987, 0.742321, 0.236319,
		0.578804, -0.646925, 0.496460,
		37.940273, 30.600504, 29.279272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293125, 31.252642, 28.799757>,  <37.535110, 31.053352, 28.931751>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293125, 31.252642, 28.799757> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.274250, 30.865831, 28.899862>,  <38.262924, 30.633745, 28.959925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.274250, 30.865831, 28.899862>,  <38.293125, 31.252642, 28.799757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274250, 30.865831, 28.899862> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445664, -0.244605, -0.861134,
		0.893956, 0.070899, 0.442511,
		-0.047187, -0.967027, 0.250264,
		38.260094, 30.575724, 28.974941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926735, 31.033272, 28.591810>,  <38.293125, 31.252642, 28.799757>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.926735, 31.033272, 28.591810> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.701050, 30.704926, 28.627228>,  <38.565639, 30.507917, 28.648478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.701050, 30.704926, 28.627228>,  <38.926735, 31.033272, 28.591810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701050, 30.704926, 28.627228> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363668, -0.343367, -0.865936,
		0.741221, -0.456373, 0.492255,
		-0.564214, -0.820867, 0.088542,
		38.531784, 30.458666, 28.653790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.338089, 30.449238, 28.364779>,  <38.926735, 31.033272, 28.591810>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.338089, 30.449238, 28.364779> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.972469, 30.288147, 28.345467>,  <38.753098, 30.191492, 28.333879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.972469, 30.288147, 28.345467>,  <39.338089, 30.449238, 28.364779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972469, 30.288147, 28.345467> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214453, -0.378804, -0.900288,
		0.344283, -0.833257, 0.432610,
		-0.914045, -0.402728, -0.048278,
		38.698257, 30.167328, 28.330982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435959, 29.718910, 28.117622>,  <39.338089, 30.449238, 28.364779>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.435959, 29.718910, 28.117622> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.064930, 29.841309, 28.031862>,  <38.842312, 29.914747, 27.980406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.064930, 29.841309, 28.031862>,  <39.435959, 29.718910, 28.117622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064930, 29.841309, 28.031862> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116294, -0.308875, -0.943966,
		-0.355077, -0.900533, 0.250918,
		-0.927575, 0.306001, -0.214401,
		38.786655, 29.933107, 27.967543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098110, 29.181271, 27.718313>,  <39.435959, 29.718910, 28.117622>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.098110, 29.181271, 27.718313> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.910049, 29.527494, 27.649313>,  <38.797211, 29.735229, 27.607912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.910049, 29.527494, 27.649313>,  <39.098110, 29.181271, 27.718313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.910049, 29.527494, 27.649313> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189641, -0.091812, -0.977551,
		-0.861969, -0.492315, -0.120980,
		-0.470155, 0.865562, -0.172502,
		38.769001, 29.787163, 27.597563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770401, 29.046946, 27.140650>,  <39.098110, 29.181271, 27.718313>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770401, 29.046946, 27.140650> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.799015, 29.445902, 27.136705>,  <38.816181, 29.685276, 27.134338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.799015, 29.445902, 27.136705>,  <38.770401, 29.046946, 27.140650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799015, 29.445902, 27.136705> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227258, -0.025923, -0.973490,
		-0.971204, 0.067396, -0.228519,
		0.071533, 0.997390, -0.009860,
		38.820477, 29.745119, 27.133747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449970, 29.163078, 26.561363>,  <38.770401, 29.046946, 27.140650>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.449970, 29.163078, 26.561363> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.636124, 29.502724, 26.661303>,  <38.747818, 29.706511, 26.721266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.636124, 29.502724, 26.661303>,  <38.449970, 29.163078, 26.561363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.636124, 29.502724, 26.661303> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250017, 0.144674, -0.957372,
		-0.849062, 0.508015, -0.144963,
		0.465387, 0.849112, 0.249849,
		38.775742, 29.757458, 26.736258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263702, 29.610859, 26.125637>,  <38.449970, 29.163078, 26.561363>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263702, 29.610859, 26.125637> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.595776, 29.784365, 26.265718>,  <38.795021, 29.888468, 26.349768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.595776, 29.784365, 26.265718>,  <38.263702, 29.610859, 26.125637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.595776, 29.784365, 26.265718> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288032, 0.204113, -0.935615,
		-0.477318, 0.877602, 0.044513,
		0.830184, 0.433765, 0.350204,
		38.844830, 29.914494, 26.370779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415691, 30.346546, 25.910616>,  <38.263702, 29.610859, 26.125637>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415691, 30.346546, 25.910616> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.776688, 30.190437, 25.983507>,  <38.993286, 30.096773, 26.027243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.776688, 30.190437, 25.983507>,  <38.415691, 30.346546, 25.910616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.776688, 30.190437, 25.983507> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264833, 0.169137, -0.949345,
		0.339679, 0.905032, 0.256000,
		0.902486, -0.390270, 0.182230,
		39.047432, 30.073357, 26.038176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854877, 30.840532, 25.615841>,  <38.415691, 30.346546, 25.910616>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.854877, 30.840532, 25.615841> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.045776, 30.489050, 25.620171>,  <39.160316, 30.278160, 25.622768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.045776, 30.489050, 25.620171>,  <38.854877, 30.840532, 25.615841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.045776, 30.489050, 25.620171> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264881, 0.132096, -0.955191,
		0.837901, 0.458725, 0.295794,
		0.477243, -0.878705, 0.010824,
		39.188950, 30.225439, 25.623417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560589, 30.968798, 25.550592>,  <38.854877, 30.840532, 25.615841>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.560589, 30.968798, 25.550592> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.483624, 30.594666, 25.431845>,  <39.437443, 30.370186, 25.360596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.483624, 30.594666, 25.431845>,  <39.560589, 30.968798, 25.550592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483624, 30.594666, 25.431845> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359700, 0.214243, -0.908139,
		0.913013, -0.281521, 0.295216,
		-0.192412, -0.935332, -0.296870,
		39.425900, 30.314066, 25.342783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.159760, 30.734579, 25.425882>,  <39.560589, 30.968798, 25.550592>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.159760, 30.734579, 25.425882> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.899422, 30.509844, 25.221632>,  <39.743217, 30.375002, 25.099081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.899422, 30.509844, 25.221632>,  <40.159760, 30.734579, 25.425882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.899422, 30.509844, 25.221632> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433837, 0.276720, -0.857445,
		0.623046, -0.779591, 0.063645,
		-0.650845, -0.561839, -0.510625,
		39.704166, 30.341291, 25.068445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.753773, 30.325060, 25.661320>,  <40.159760, 30.734579, 25.425882>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.753773, 30.325060, 25.661320> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.128448, 30.392080, 25.784313>,  <41.353252, 30.432293, 25.858109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.128448, 30.392080, 25.784313>,  <40.753773, 30.325060, 25.661320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.128448, 30.392080, 25.784313> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239818, -0.332893, 0.911959,
		0.255159, -0.927960, -0.271634,
		0.936686, 0.167552, 0.307482,
		41.409454, 30.442347, 25.876558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.658653, 30.066685, 26.383419>,  <40.753773, 30.325060, 25.661320>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.658653, 30.066685, 26.383419> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.043678, 30.174925, 26.389723>,  <41.274693, 30.239868, 26.393505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.043678, 30.174925, 26.389723>,  <40.658653, 30.066685, 26.383419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.043678, 30.174925, 26.389723> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062000, -0.276404, 0.959040,
		0.263872, -0.922159, -0.282833,
		0.962563, 0.270600, 0.015761,
		41.332447, 30.256105, 26.394451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.021282, 29.549299, 26.741369>,  <40.658653, 30.066685, 26.383419>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.021282, 29.549299, 26.741369> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.241459, 29.882734, 26.759893>,  <41.373566, 30.082794, 26.771008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.241459, 29.882734, 26.759893>,  <41.021282, 29.549299, 26.741369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.241459, 29.882734, 26.759893> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234990, -0.207922, 0.949499,
		0.801118, -0.511765, -0.310334,
		0.550445, 0.833586, 0.046310,
		41.406593, 30.132811, 26.773787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.729404, 29.313961, 26.929873>,  <41.021282, 29.549299, 26.741369>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.729404, 29.313961, 26.929873> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.672436, 29.695398, 27.035986>,  <41.638252, 29.924261, 27.099655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.672436, 29.695398, 27.035986>,  <41.729404, 29.313961, 26.929873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.672436, 29.695398, 27.035986> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391991, -0.191763, 0.899761,
		0.908877, 0.232138, -0.346488,
		-0.142425, 0.953593, 0.265285,
		41.629707, 29.981476, 27.115572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.402645, 29.621897, 27.196527>,  <41.729404, 29.313961, 26.929873>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.402645, 29.621897, 27.196527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.080021, 29.803797, 27.347610>,  <41.886448, 29.912937, 27.438261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.080021, 29.803797, 27.347610>,  <42.402645, 29.621897, 27.196527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.080021, 29.803797, 27.347610> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418493, -0.012030, 0.908140,
		0.417522, 0.890537, -0.180607,
		-0.806560, 0.454751, 0.377707,
		41.838055, 29.940222, 27.460922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.625946, 30.021273, 27.730484>,  <42.402645, 29.621897, 27.196527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.625946, 30.021273, 27.730484> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.230434, 30.002190, 27.787119>,  <41.993130, 29.990740, 27.821100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.230434, 30.002190, 27.787119>,  <42.625946, 30.021273, 27.730484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.230434, 30.002190, 27.787119> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135118, 0.118918, 0.983667,
		-0.063766, 0.991757, -0.111137,
		-0.988775, -0.047708, 0.141588,
		41.933804, 29.987877, 27.829596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.462513, 30.564127, 28.126530>,  <42.625946, 30.021273, 27.730484>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.462513, 30.564127, 28.126530> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.133762, 30.340439, 28.169970>,  <41.936512, 30.206226, 28.196033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.133762, 30.340439, 28.169970>,  <42.462513, 30.564127, 28.126530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.133762, 30.340439, 28.169970> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030031, 0.147841, 0.988555,
		-0.568877, 0.815729, -0.104712,
		-0.821874, -0.559222, 0.108601,
		41.887199, 30.172672, 28.202549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.178120, 30.868357, 28.702820>,  <42.462513, 30.564127, 28.126530>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.178120, 30.868357, 28.702820> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.962658, 30.531401, 28.696762>,  <41.833382, 30.329227, 28.693127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.962658, 30.531401, 28.696762>,  <42.178120, 30.868357, 28.702820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.962658, 30.531401, 28.696762> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063865, 0.022900, 0.997696,
		-0.840100, 0.538384, -0.066134,
		-0.538658, -0.842388, -0.015145,
		41.801060, 30.278685, 28.692219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.646927, 31.037809, 29.200411>,  <42.178120, 30.868357, 28.702820>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.646927, 31.037809, 29.200411> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.641762, 30.642586, 29.138992>,  <41.638664, 30.405453, 29.102142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.641762, 30.642586, 29.138992>,  <41.646927, 31.037809, 29.200411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.641762, 30.642586, 29.138992> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404854, -0.135242, 0.904324,
		-0.914290, 0.073839, -0.398273,
		-0.012912, -0.988057, -0.153545,
		41.637890, 30.346169, 29.092930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.988071, 30.951654, 29.374943>,  <41.646927, 31.037809, 29.200411>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.988071, 30.951654, 29.374943> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.213539, 30.621264, 29.377378>,  <41.348820, 30.423029, 29.378839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.213539, 30.621264, 29.377378>,  <40.988071, 30.951654, 29.374943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.213539, 30.621264, 29.377378> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382585, -0.254539, 0.888166,
		-0.732057, -0.502959, -0.459483,
		0.563668, -0.825979, 0.006087,
		41.382641, 30.373470, 29.379204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.529266, 30.354414, 29.487654>,  <40.988071, 30.951654, 29.374943>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.529266, 30.354414, 29.487654> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.898399, 30.261312, 29.610420>,  <41.119881, 30.205452, 29.684080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.898399, 30.261312, 29.610420>,  <40.529266, 30.354414, 29.487654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.898399, 30.261312, 29.610420> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356334, -0.213268, 0.909694,
		-0.146276, -0.948865, -0.279749,
		0.922838, -0.232750, 0.306917,
		41.175251, 30.191486, 29.702496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348484, 29.805315, 29.832714>,  <40.529266, 30.354414, 29.487654>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.348484, 29.805315, 29.832714> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.719204, 29.904697, 29.945366>,  <40.941635, 29.964327, 30.012957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.719204, 29.904697, 29.945366>,  <40.348484, 29.805315, 29.832714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.719204, 29.904697, 29.945366> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284676, -0.024350, 0.958314,
		0.244959, -0.968336, 0.048163,
		0.926798, 0.248459, 0.281627,
		40.997242, 29.979235, 30.029854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.429092, 29.354088, 30.443621>,  <40.348484, 29.805315, 29.832714>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.429092, 29.354088, 30.443621> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.687889, 29.659021, 30.437298>,  <40.843166, 29.841982, 30.433504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.687889, 29.659021, 30.437298>,  <40.429092, 29.354088, 30.443621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.687889, 29.659021, 30.437298> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156730, 0.153249, 0.975680,
		0.746216, -0.628779, 0.218631,
		0.646991, 0.762333, -0.015808,
		40.881989, 29.887722, 30.432556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.963478, 29.202164, 30.954582>,  <40.429092, 29.354088, 30.443621>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.963478, 29.202164, 30.954582> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.926735, 29.596775, 30.900438>,  <40.904690, 29.833542, 30.867952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.926735, 29.596775, 30.900438>,  <40.963478, 29.202164, 30.954582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.926735, 29.596775, 30.900438> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108872, 0.125167, 0.986144,
		0.989802, 0.105325, 0.095907,
		-0.091861, 0.986529, -0.135358,
		40.899178, 29.892735, 30.859831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<42.279209, 34.013027, 25.344545> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.911552, 33.959957, 25.196186>,  <41.690956, 33.928116, 25.107170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.911552, 33.959957, 25.196186>,  <42.279209, 34.013027, 25.344545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.911552, 33.959957, 25.196186> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389271, -0.450114, -0.803658,
		-0.060317, -0.883059, 0.465369,
		-0.919146, -0.132680, -0.370899,
		41.635807, 33.920155, 25.084917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.265911, 33.360947, 24.977249>,  <42.279209, 34.013027, 25.344545>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.265911, 33.360947, 24.977249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.981300, 33.581516, 24.803047>,  <41.810535, 33.713860, 24.698526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.981300, 33.581516, 24.803047>,  <42.265911, 33.360947, 24.977249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.981300, 33.581516, 24.803047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346040, -0.264441, -0.900182,
		-0.611548, -0.791203, -0.002659,
		-0.711524, 0.551424, -0.435506,
		41.767841, 33.746944, 24.672396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.921249, 32.930775, 24.514101>,  <42.265911, 33.360947, 24.977249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.921249, 32.930775, 24.514101> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.823502, 33.296818, 24.385813>,  <41.764854, 33.516445, 24.308840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.823502, 33.296818, 24.385813>,  <41.921249, 32.930775, 24.514101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.823502, 33.296818, 24.385813> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289615, -0.246775, -0.924784,
		-0.925423, -0.318872, -0.204726,
		-0.244367, 0.915108, -0.320721,
		41.750191, 33.571350, 24.289597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.530060, 32.836788, 23.860374>,  <41.921249, 32.930775, 24.514101>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.530060, 32.836788, 23.860374> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.655220, 33.216148, 23.839859>,  <41.730316, 33.443764, 23.827551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.655220, 33.216148, 23.839859>,  <41.530060, 32.836788, 23.860374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.655220, 33.216148, 23.839859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192325, -0.116149, -0.974434,
		-0.930108, 0.295042, -0.218744,
		0.312905, 0.948399, -0.051287,
		41.749092, 33.500668, 23.824472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.187576, 33.038963, 23.327753>,  <41.530060, 32.836788, 23.860374>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.187576, 33.038963, 23.327753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.479855, 33.309757, 23.363031>,  <41.655220, 33.472233, 23.384197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.479855, 33.309757, 23.363031>,  <41.187576, 33.038963, 23.327753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.479855, 33.309757, 23.363031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009140, 0.119470, -0.992796,
		-0.682642, 0.726238, 0.081109,
		0.730696, 0.676982, 0.088194,
		41.699062, 33.512852, 23.389490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.048298, 33.653572, 22.861319>,  <41.187576, 33.038963, 23.327753>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.048298, 33.653572, 22.861319> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.434139, 33.703606, 22.954184>,  <41.665642, 33.733624, 23.009903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.434139, 33.703606, 22.954184>,  <41.048298, 33.653572, 22.861319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.434139, 33.703606, 22.954184> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203925, 0.204397, -0.957411,
		-0.167207, 0.970864, 0.171655,
		0.964602, 0.125081, 0.232160,
		41.723518, 33.741131, 23.023832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.252678, 34.205364, 22.453579>,  <41.048298, 33.653572, 22.861319>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.252678, 34.205364, 22.453579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.575966, 33.986168, 22.539816>,  <41.769939, 33.854649, 22.591558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.575966, 33.986168, 22.539816>,  <41.252678, 34.205364, 22.453579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.575966, 33.986168, 22.539816> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135553, -0.183151, -0.973695,
		0.573063, 0.816186, -0.073745,
		0.808223, -0.547992, 0.215593,
		41.818432, 33.821770, 22.604494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.749176, 34.513599, 22.102167>,  <41.252678, 34.205364, 22.453579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.749176, 34.513599, 22.102167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.896015, 34.148563, 22.174191>,  <41.984119, 33.929543, 22.217405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.896015, 34.148563, 22.174191>,  <41.749176, 34.513599, 22.102167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.896015, 34.148563, 22.174191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233411, -0.097007, -0.967527,
		0.900420, 0.397208, 0.177396,
		0.367101, -0.912587, 0.180060,
		42.006145, 33.874786, 22.228209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.356537, 34.475426, 21.753653>,  <41.749176, 34.513599, 22.102167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.356537, 34.475426, 21.753653> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.283062, 34.086876, 21.813900>,  <42.238976, 33.853745, 21.850048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.283062, 34.086876, 21.813900>,  <42.356537, 34.475426, 21.753653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.283062, 34.086876, 21.813900> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483543, -0.222699, -0.846517,
		0.855829, -0.082666, 0.510610,
		-0.183691, -0.971376, 0.150620,
		42.227955, 33.795464, 21.859085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.949100, 34.076130, 21.713793>,  <42.356537, 34.475426, 21.753653>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.949100, 34.076130, 21.713793> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.648430, 33.824738, 21.633810>,  <42.468025, 33.673901, 21.585821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.648430, 33.824738, 21.633810>,  <42.949100, 34.076130, 21.713793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.648430, 33.824738, 21.633810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517727, -0.374475, -0.769238,
		0.408576, -0.681744, 0.606869,
		-0.751681, -0.628485, -0.199956,
		42.422924, 33.636192, 21.573824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.248531, 33.513561, 21.397692>,  <42.949100, 34.076130, 21.713793>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.248531, 33.513561, 21.397692> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.866810, 33.457603, 21.292070>,  <42.637775, 33.424030, 21.228697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.866810, 33.457603, 21.292070>,  <43.248531, 33.513561, 21.397692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.866810, 33.457603, 21.292070> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298794, -0.459282, -0.836530,
		-0.004248, -0.877205, 0.480097,
		-0.954308, -0.139896, -0.264055,
		42.580517, 33.415634, 21.212854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.458714, 32.901756, 20.953781>,  <43.248531, 33.513561, 21.397692>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.458714, 32.901756, 20.953781> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.072971, 33.002087, 20.920073>,  <42.841526, 33.062283, 20.899847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.072971, 33.002087, 20.920073>,  <43.458714, 32.901756, 20.953781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.072971, 33.002087, 20.920073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075398, -0.565765, -0.821112,
		-0.253631, -0.785492, 0.564511,
		-0.964358, 0.250822, -0.084271,
		42.783665, 33.077335, 20.894791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.999226, 32.399265, 21.006102>,  <43.458714, 32.901756, 20.953781>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.999226, 32.399265, 21.006102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.875263, 32.684395, 20.754436>,  <42.800888, 32.855473, 20.603437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.875263, 32.684395, 20.754436>,  <42.999226, 32.399265, 21.006102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.875263, 32.684395, 20.754436> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176120, -0.607251, -0.774744,
		-0.934314, -0.350903, 0.062647,
		-0.309903, 0.712820, -0.629164,
		42.782291, 32.898239, 20.565687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.531857, 32.273041, 20.449966>,  <42.999226, 32.399265, 21.006102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.531857, 32.273041, 20.449966> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.754360, 32.530891, 20.240194>,  <42.887863, 32.685600, 20.114330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.754360, 32.530891, 20.240194>,  <42.531857, 32.273041, 20.449966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.754360, 32.530891, 20.240194> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091471, -0.674741, -0.732364,
		-0.825957, 0.359417, -0.434298,
		0.556262, 0.644627, -0.524431,
		42.921238, 32.724281, 20.082865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.400223, 31.530142, 20.101698>,  <42.531857, 32.273041, 20.449966>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.400223, 31.530142, 20.101698> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.363995, 31.140707, 20.185534>,  <42.342258, 30.907047, 20.235836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.363995, 31.140707, 20.185534>,  <42.400223, 31.530142, 20.101698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.363995, 31.140707, 20.185534> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126014, 0.219967, 0.967334,
		-0.987886, 0.061197, -0.142607,
		-0.090567, -0.973586, 0.209591,
		42.336826, 30.848631, 20.248411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.842667, 31.490536, 20.605125>,  <42.400223, 31.530142, 20.101698>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.842667, 31.490536, 20.605125> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.029560, 31.140882, 20.658173>,  <42.141697, 30.931091, 20.690001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.029560, 31.140882, 20.658173>,  <41.842667, 31.490536, 20.605125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.029560, 31.140882, 20.658173> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038307, 0.169871, 0.984721,
		-0.883304, -0.455013, 0.112855,
		0.467232, -0.874132, 0.132618,
		42.169731, 30.878643, 20.697958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.473873, 31.332113, 21.209919>,  <41.842667, 31.490536, 20.605125>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.473873, 31.332113, 21.209919> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.770721, 31.064085, 21.216373>,  <41.948830, 30.903267, 21.220245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.770721, 31.064085, 21.216373>,  <41.473873, 31.332113, 21.209919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.770721, 31.064085, 21.216373> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033170, 0.060758, 0.997601,
		-0.669446, -0.739804, 0.067316,
		0.742120, -0.670073, 0.016135,
		41.993359, 30.863064, 21.221214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.244911, 30.859379, 21.640438>,  <41.473873, 31.332113, 21.209919>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.244911, 30.859379, 21.640438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.639389, 30.793505, 21.633450>,  <41.876076, 30.753981, 21.629257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.639389, 30.793505, 21.633450>,  <41.244911, 30.859379, 21.640438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.639389, 30.793505, 21.633450> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030159, -0.282327, 0.958844,
		-0.162837, -0.945078, -0.283395,
		0.986192, -0.164682, -0.017471,
		41.935246, 30.744099, 21.628208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.356258, 30.166367, 21.999664>,  <41.244911, 30.859379, 21.640438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.356258, 30.166367, 21.999664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.713913, 30.345476, 22.001196>,  <41.928505, 30.452942, 22.002115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.713913, 30.345476, 22.001196>,  <41.356258, 30.166367, 21.999664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.713913, 30.345476, 22.001196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045083, -0.098525, 0.994113,
		0.445514, -0.888703, -0.108282,
		0.894139, 0.447773, 0.003829,
		41.982155, 30.479809, 22.002344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.709579, 29.762590, 22.398985>,  <41.356258, 30.166367, 21.999664>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.709579, 29.762590, 22.398985> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.923611, 30.100372, 22.408632>,  <42.052029, 30.303041, 22.414421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.923611, 30.100372, 22.408632>,  <41.709579, 29.762590, 22.398985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.923611, 30.100372, 22.408632> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172894, -0.137410, 0.975308,
		0.826919, -0.517699, -0.219527,
		0.535081, 0.844456, 0.024120,
		42.084137, 30.353708, 22.415869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.367420, 29.548822, 22.791500>,  <41.709579, 29.762590, 22.398985>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.367420, 29.548822, 22.791500> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.342365, 29.947798, 22.805332>,  <42.327332, 30.187183, 22.813631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.342365, 29.947798, 22.805332>,  <42.367420, 29.548822, 22.791500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.342365, 29.947798, 22.805332> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045362, -0.031768, 0.998465,
		0.997005, 0.064113, -0.043256,
		-0.062640, 0.997437, 0.034581,
		42.323574, 30.247028, 22.815706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.874500, 29.853260, 23.184738>,  <42.367420, 29.548822, 22.791500>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.874500, 29.853260, 23.184738> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.588596, 30.132799, 23.195484>,  <42.417053, 30.300524, 23.201931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.588596, 30.132799, 23.195484>,  <42.874500, 29.853260, 23.184738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.588596, 30.132799, 23.195484> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163683, 0.129817, 0.977934,
		0.679941, 0.703390, -0.207178,
		-0.714765, 0.698849, 0.026865,
		42.374168, 30.342453, 23.203543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.159939, 30.341497, 23.574247>,  <42.874500, 29.853260, 23.184738>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.159939, 30.341497, 23.574247> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.765541, 30.402641, 23.600912>,  <42.528900, 30.439327, 23.616911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.765541, 30.402641, 23.600912>,  <43.159939, 30.341497, 23.574247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.765541, 30.402641, 23.600912> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072110, 0.030356, 0.996935,
		0.150370, 0.987781, -0.040954,
		-0.985997, 0.152862, 0.066664,
		42.469742, 30.448500, 23.620911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.126301, 30.734280, 24.135984>,  <43.159939, 30.341497, 23.574247>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.126301, 30.734280, 24.135984> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.753654, 30.611650, 24.057898>,  <42.530067, 30.538073, 24.011045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.753654, 30.611650, 24.057898>,  <43.126301, 30.734280, 24.135984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.753654, 30.611650, 24.057898> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219180, 0.045432, 0.974626,
		-0.289927, 0.950762, -0.109520,
		-0.931613, -0.306575, -0.195216,
		42.474171, 30.519678, 23.999332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.774296, 31.125122, 24.577923>,  <43.126301, 30.734280, 24.135984>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.774296, 31.125122, 24.577923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.509460, 30.841770, 24.480078>,  <42.350559, 30.671759, 24.421371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.509460, 30.841770, 24.480078>,  <42.774296, 31.125122, 24.577923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.509460, 30.841770, 24.480078> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363688, 0.018319, 0.931341,
		-0.655263, 0.705592, -0.269758,
		-0.662089, -0.708381, -0.244611,
		42.310833, 30.629255, 24.406694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.110283, 31.374557, 24.695562>,  <42.774296, 31.125122, 24.577923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.110283, 31.374557, 24.695562> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.077034, 30.978968, 24.744587>,  <42.057087, 30.741613, 24.774002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.077034, 30.978968, 24.744587>,  <42.110283, 31.374557, 24.695562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.077034, 30.978968, 24.744587> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364296, 0.144630, 0.919984,
		-0.927566, 0.031818, -0.372301,
		-0.083118, -0.988974, 0.122563,
		42.052097, 30.682276, 24.781357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.472679, 31.324348, 25.027689>,  <42.110283, 31.374557, 24.695562>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.472679, 31.324348, 25.027689> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.633209, 30.962341, 25.084087>,  <41.729527, 30.745136, 25.117926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.633209, 30.962341, 25.084087>,  <41.472679, 31.324348, 25.027689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.633209, 30.962341, 25.084087> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318960, 0.006209, 0.947748,
		-0.858605, -0.425328, -0.286172,
		0.401327, -0.905018, 0.140994,
		41.753609, 30.690836, 25.126385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.933949, 31.013620, 25.289240>,  <41.472679, 31.324348, 25.027689>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.933949, 31.013620, 25.289240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.261822, 30.813234, 25.400345>,  <41.458546, 30.693003, 25.467007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.261822, 30.813234, 25.400345>,  <40.933949, 31.013620, 25.289240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.261822, 30.813234, 25.400345> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375916, -0.104573, 0.920734,
		-0.432210, -0.859126, -0.274038,
		0.819684, -0.500966, 0.277762,
		41.507729, 30.662945, 25.483673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554466, 30.613501, 24.675638>,  <40.933949, 31.013620, 25.289240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.554466, 30.613501, 24.675638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.182453, 30.473228, 24.631699>,  <39.959248, 30.389065, 24.605335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.182453, 30.473228, 24.631699>,  <40.554466, 30.613501, 24.675638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.182453, 30.473228, 24.631699> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037046, 0.207937, -0.977440,
		0.365610, -0.913119, -0.180396,
		-0.930031, -0.350679, -0.109851,
		39.903442, 30.368025, 24.598743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.589722, 30.042089, 24.197233>,  <40.554466, 30.613501, 24.675638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.589722, 30.042089, 24.197233> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.202404, 30.140064, 24.177624>,  <39.970013, 30.198849, 24.165857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.202404, 30.140064, 24.177624>,  <40.589722, 30.042089, 24.197233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.202404, 30.140064, 24.177624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026609, -0.093998, -0.995217,
		-0.248374, -0.964971, 0.084501,
		-0.968299, 0.244938, -0.049024,
		39.911915, 30.213545, 24.162916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.178757, 29.479008, 23.743027>,  <40.589722, 30.042089, 24.197233>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.178757, 29.479008, 23.743027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.964592, 29.816183, 23.764149>,  <39.836094, 30.018488, 23.776821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.964592, 29.816183, 23.764149>,  <40.178757, 29.479008, 23.743027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.964592, 29.816183, 23.764149> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147059, -0.031476, -0.988627,
		-0.831689, -0.537089, 0.140815,
		-0.535413, 0.842938, 0.052805,
		39.803967, 30.069065, 23.779991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.568890, 29.482313, 23.199217>,  <40.178757, 29.479008, 23.743027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.568890, 29.482313, 23.199217> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.600052, 29.875704, 23.264582>,  <39.618748, 30.111738, 23.303801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.600052, 29.875704, 23.264582>,  <39.568890, 29.482313, 23.199217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600052, 29.875704, 23.264582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037335, 0.160919, -0.986261,
		-0.996262, 0.082934, -0.024181,
		0.077904, 0.983477, 0.163414,
		39.623425, 30.170748, 23.313606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.064823, 29.800489, 22.703236>,  <39.568890, 29.482313, 23.199217>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.064823, 29.800489, 22.703236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.293961, 30.107403, 22.818565>,  <39.431442, 30.291552, 22.887762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.293961, 30.107403, 22.818565>,  <39.064823, 29.800489, 22.703236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.293961, 30.107403, 22.818565> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071603, 0.397254, -0.914911,
		-0.816534, 0.503452, 0.282503,
		0.572839, 0.767285, 0.288323,
		39.465813, 30.337587, 22.905062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710117, 30.343977, 22.376892>,  <39.064823, 29.800489, 22.703236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710117, 30.343977, 22.376892> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.079155, 30.449690, 22.489302>,  <39.300579, 30.513117, 22.556747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.079155, 30.449690, 22.489302>,  <38.710117, 30.343977, 22.376892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.079155, 30.449690, 22.489302> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127415, 0.478839, -0.868608,
		-0.364121, 0.837179, 0.408101,
		0.922595, 0.264280, 0.281024,
		39.355934, 30.528975, 22.573608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815094, 31.044247, 22.211166>,  <38.710117, 30.343977, 22.376892>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.815094, 31.044247, 22.211166> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.195038, 30.921978, 22.237507>,  <39.423004, 30.848618, 22.253311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.195038, 30.921978, 22.237507>,  <38.815094, 31.044247, 22.211166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.195038, 30.921978, 22.237507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171252, 0.332345, -0.927480,
		0.261617, 0.892252, 0.368027,
		0.949858, -0.305670, 0.065853,
		39.479996, 30.830276, 22.257263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.648178, 31.754885, 22.307878>,  <38.815094, 31.044247, 22.211166>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.648178, 31.754885, 22.307878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.293530, 31.930752, 22.250463>,  <38.080742, 32.036270, 22.216015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.293530, 31.930752, 22.250463>,  <38.648178, 31.754885, 22.307878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293530, 31.930752, 22.250463> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177108, -0.036064, 0.983530,
		0.427249, 0.897436, 0.109843,
		-0.886617, 0.439667, -0.143535,
		38.027546, 32.062653, 22.207403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613201, 32.123699, 22.884783>,  <38.648178, 31.754885, 22.307878>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613201, 32.123699, 22.884783> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.242558, 32.075382, 22.742340>,  <38.020172, 32.046391, 22.656874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.242558, 32.075382, 22.742340>,  <38.613201, 32.123699, 22.884783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.242558, 32.075382, 22.742340> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356846, -0.016204, 0.934023,
		-0.118593, 0.992546, -0.028090,
		-0.926605, -0.120793, -0.356108,
		37.964577, 32.039143, 22.635508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159969, 32.472328, 23.372766>,  <38.613201, 32.123699, 22.884783>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.159969, 32.472328, 23.372766> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.885441, 32.253151, 23.181469>,  <37.720722, 32.121643, 23.066690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.885441, 32.253151, 23.181469>,  <38.159969, 32.472328, 23.372766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.885441, 32.253151, 23.181469> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483047, -0.148160, 0.862968,
		-0.543714, 0.823290, -0.162997,
		-0.686324, -0.547943, -0.478244,
		37.679543, 32.088768, 23.037996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585590, 32.676117, 23.621420>,  <38.159969, 32.472328, 23.372766>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.585590, 32.676117, 23.621420> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.484367, 32.323551, 23.461882>,  <37.423634, 32.112011, 23.366158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.484367, 32.323551, 23.461882>,  <37.585590, 32.676117, 23.621420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484367, 32.323551, 23.461882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509575, -0.229009, 0.829391,
		-0.822373, 0.413123, -0.391193,
		-0.253053, -0.881410, -0.398848,
		37.408451, 32.059128, 23.342228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847935, 32.654125, 23.681870>,  <37.585590, 32.676117, 23.621420>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847935, 32.654125, 23.681870> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.959999, 32.275169, 23.619951>,  <37.027237, 32.047794, 23.582800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.959999, 32.275169, 23.619951>,  <36.847935, 32.654125, 23.681870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959999, 32.275169, 23.619951> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635669, -0.303928, 0.709614,
		-0.719328, -0.100408, -0.687375,
		0.280164, -0.947389, -0.154798,
		37.044048, 31.990953, 23.573511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256603, 32.276680, 23.728424>,  <36.847935, 32.654125, 23.681870>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256603, 32.276680, 23.728424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.561932, 32.027096, 23.795383>,  <36.745129, 31.877346, 23.835558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.561932, 32.027096, 23.795383>,  <36.256603, 32.276680, 23.728424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561932, 32.027096, 23.795383> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530356, -0.457295, 0.713866,
		-0.368872, -0.633687, -0.679981,
		0.763319, -0.623957, 0.167396,
		36.790928, 31.839909, 23.845602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.999100, 31.598764, 23.881065>,  <36.256603, 32.276680, 23.728424>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.999100, 31.598764, 23.881065> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.365349, 31.597170, 24.041876>,  <36.585098, 31.596212, 24.138363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.365349, 31.597170, 24.041876>,  <35.999100, 31.598764, 23.881065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.365349, 31.597170, 24.041876> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359742, -0.454619, 0.814805,
		0.179522, -0.890677, -0.417692,
		0.915619, -0.003986, 0.402028,
		36.640034, 31.595974, 24.162485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.560360, 35.888424, 20.020279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.659809, 35.545704, 20.200981>,  <40.719479, 35.340073, 20.309402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.659809, 35.545704, 20.200981>,  <40.560360, 35.888424, 20.020279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.659809, 35.545704, 20.200981> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459890, 0.306056, 0.833565,
		-0.852458, -0.415006, -0.317938,
		0.248627, -0.856796, 0.451757,
		40.734398, 35.288666, 20.336508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.862782, 35.742805, 20.414104>,  <40.560360, 35.888424, 20.020279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.862782, 35.742805, 20.414104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.141903, 35.502758, 20.570530>,  <40.309376, 35.358730, 20.664385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.141903, 35.502758, 20.570530>,  <39.862782, 35.742805, 20.414104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.141903, 35.502758, 20.570530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348046, 0.193103, 0.917374,
		-0.626045, -0.776256, -0.074120,
		0.697805, -0.600115, 0.391064,
		40.351246, 35.322723, 20.687849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496223, 35.215534, 20.894114>,  <39.862782, 35.742805, 20.414104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.496223, 35.215534, 20.894114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.871838, 35.255043, 21.025843>,  <40.097206, 35.278748, 21.104879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.871838, 35.255043, 21.025843>,  <39.496223, 35.215534, 20.894114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871838, 35.255043, 21.025843> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330325, -0.006493, 0.943845,
		0.095366, -0.995089, 0.026530,
		0.939037, 0.098774, 0.329321,
		40.153549, 35.284676, 21.124640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562691, 34.713177, 21.351446>,  <39.496223, 35.215534, 20.894114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562691, 34.713177, 21.351446> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.840439, 34.990356, 21.429085>,  <40.007088, 35.156666, 21.475668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.840439, 34.990356, 21.429085>,  <39.562691, 34.713177, 21.351446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.840439, 34.990356, 21.429085> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306919, 0.041213, 0.950843,
		0.650887, -0.719807, 0.241297,
		0.694368, 0.692950, 0.194097,
		40.048748, 35.198242, 21.487314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.895229, 34.434086, 21.918615>,  <39.562691, 34.713177, 21.351446>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.895229, 34.434086, 21.918615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.974125, 34.826080, 21.907867>,  <40.021461, 35.061279, 21.901419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.974125, 34.826080, 21.907867>,  <39.895229, 34.434086, 21.918615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.974125, 34.826080, 21.907867> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301025, 0.086625, 0.949674,
		0.932997, -0.179220, 0.312086,
		0.197235, 0.979988, -0.026871,
		40.033295, 35.120075, 21.899807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.105484, 34.500183, 22.571253>,  <39.895229, 34.434086, 21.918615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.105484, 34.500183, 22.571253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.038712, 34.876511, 22.453268>,  <39.998650, 35.102306, 22.382477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.038712, 34.876511, 22.453268>,  <40.105484, 34.500183, 22.571253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.038712, 34.876511, 22.453268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253951, 0.248040, 0.934872,
		0.952704, 0.230961, 0.197516,
		-0.166927, 0.940815, -0.294961,
		39.988632, 35.158756, 22.364780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.643948, 35.006363, 22.987009>,  <40.105484, 34.500183, 22.571253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.643948, 35.006363, 22.987009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.308437, 35.178631, 22.853756>,  <40.107132, 35.281990, 22.773804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.308437, 35.178631, 22.853756>,  <40.643948, 35.006363, 22.987009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.308437, 35.178631, 22.853756> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271697, 0.199148, 0.941552,
		0.471836, 0.880266, -0.050031,
		-0.838780, 0.430665, -0.333131,
		40.056805, 35.307831, 22.753817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.636963, 35.584305, 23.385458>,  <40.643948, 35.006363, 22.987009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.636963, 35.584305, 23.385458> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.270370, 35.539948, 23.231697>,  <40.050415, 35.513332, 23.139441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.270370, 35.539948, 23.231697>,  <40.636963, 35.584305, 23.385458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.270370, 35.539948, 23.231697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398236, 0.160707, 0.903095,
		-0.038374, 0.980752, -0.191448,
		-0.916480, -0.110897, -0.384404,
		39.995426, 35.506680, 23.116375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.320766, 36.165123, 23.549608>,  <40.636963, 35.584305, 23.385458>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.320766, 36.165123, 23.549608> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.017288, 35.908302, 23.505522>,  <39.835201, 35.754208, 23.479069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.017288, 35.908302, 23.505522>,  <40.320766, 36.165123, 23.549608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.017288, 35.908302, 23.505522> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509322, 0.479130, 0.714860,
		-0.406172, 0.598496, -0.690526,
		-0.758693, -0.642056, -0.110218,
		39.789680, 35.715687, 23.472456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775303, 36.508213, 23.481180>,  <40.320766, 36.165123, 23.549608>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.775303, 36.508213, 23.481180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.617401, 36.158607, 23.594507>,  <39.522659, 35.948845, 23.662504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.617401, 36.158607, 23.594507>,  <39.775303, 36.508213, 23.481180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.617401, 36.158607, 23.594507> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577618, 0.475881, 0.663245,
		-0.714511, 0.098169, -0.692703,
		-0.394754, -0.874014, 0.283318,
		39.498974, 35.896404, 23.679502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997417, 36.548923, 23.481937>,  <39.775303, 36.508213, 23.481180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.997417, 36.548923, 23.481937> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.087376, 36.256618, 23.739744>,  <39.141350, 36.081234, 23.894428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.087376, 36.256618, 23.739744>,  <38.997417, 36.548923, 23.481937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087376, 36.256618, 23.739744> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583407, 0.428802, 0.689757,
		-0.780421, -0.531141, -0.329897,
		0.224898, -0.730765, 0.644518,
		39.154846, 36.037388, 23.933100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313831, 36.330154, 23.973314>,  <38.997417, 36.548923, 23.481937>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313831, 36.330154, 23.973314> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.631897, 36.200832, 24.178524>,  <38.822735, 36.123238, 24.301649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.631897, 36.200832, 24.178524>,  <38.313831, 36.330154, 23.973314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.631897, 36.200832, 24.178524> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449542, 0.253514, 0.856529,
		-0.406980, -0.911704, 0.056245,
		0.795160, -0.323306, 0.513024,
		38.870445, 36.103840, 24.332432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985813, 35.752010, 23.766279>,  <38.313831, 36.330154, 23.973314>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.985813, 35.752010, 23.766279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.616066, 35.651134, 23.651779>,  <37.394218, 35.590611, 23.583078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.616066, 35.651134, 23.651779>,  <37.985813, 35.752010, 23.766279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616066, 35.651134, 23.651779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268241, 0.103880, -0.957735,
		0.271265, -0.962086, -0.028376,
		-0.924371, -0.252188, -0.286250,
		37.338753, 35.575478, 23.565905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999470, 35.159584, 23.209490>,  <37.985813, 35.752010, 23.766279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.999470, 35.159584, 23.209490> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.650829, 35.352409, 23.173868>,  <37.441647, 35.468105, 23.152494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.650829, 35.352409, 23.173868>,  <37.999470, 35.159584, 23.209490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.650829, 35.352409, 23.173868> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065558, -0.065411, -0.995703,
		-0.485814, -0.873693, 0.025409,
		-0.871600, 0.482060, -0.089055,
		37.389351, 35.497028, 23.147152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.503517, 34.868641, 22.610693>,  <37.999470, 35.159584, 23.209490>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.503517, 34.868641, 22.610693> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.353184, 35.235447, 22.664116>,  <37.262985, 35.455528, 22.696169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.353184, 35.235447, 22.664116>,  <37.503517, 34.868641, 22.610693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.353184, 35.235447, 22.664116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122245, 0.093801, -0.988057,
		-0.918589, -0.387672, 0.076846,
		-0.375833, 0.917013, 0.133555,
		37.240433, 35.510551, 22.704182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828930, 34.887840, 22.297377>,  <37.503517, 34.868641, 22.610693>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828930, 34.887840, 22.297377> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.968800, 35.262550, 22.302734>,  <37.052723, 35.487377, 22.305948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.968800, 35.262550, 22.302734>,  <36.828930, 34.887840, 22.297377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968800, 35.262550, 22.302734> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054179, 0.034493, -0.997936,
		-0.935302, 0.348230, 0.062815,
		0.349678, 0.936774, 0.013394,
		37.073704, 35.543583, 22.306753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405136, 35.347519, 21.782646>,  <36.828930, 34.887840, 22.297377>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.405136, 35.347519, 21.782646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.751053, 35.538898, 21.843590>,  <36.958603, 35.653728, 21.880156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.751053, 35.538898, 21.843590>,  <36.405136, 35.347519, 21.782646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751053, 35.538898, 21.843590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086809, 0.156401, -0.983871,
		-0.494564, 0.864073, 0.093721,
		0.864795, 0.478452, 0.152359,
		37.010490, 35.682434, 21.889297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.484249, 35.845947, 21.273645>,  <36.405136, 35.347519, 21.782646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.484249, 35.845947, 21.273645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.866566, 35.868603, 21.389065>,  <37.095955, 35.882195, 21.458317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.866566, 35.868603, 21.389065>,  <36.484249, 35.845947, 21.273645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.866566, 35.868603, 21.389065> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284913, 0.064401, -0.956387,
		-0.072752, 0.996315, 0.045416,
		0.955788, 0.056639, 0.288549,
		37.153301, 35.885593, 21.475630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811180, 36.350201, 20.871620>,  <36.484249, 35.845947, 21.273645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811180, 36.350201, 20.871620> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.115398, 36.127831, 21.005796>,  <37.297928, 35.994408, 21.086302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.115398, 36.127831, 21.005796>,  <36.811180, 36.350201, 20.871620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.115398, 36.127831, 21.005796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352260, -0.080694, -0.932417,
		0.545420, 0.827308, 0.134458,
		0.760546, -0.555923, 0.335439,
		37.343563, 35.961052, 21.106428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471317, 36.685081, 20.575417>,  <36.811180, 36.350201, 20.871620>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.471317, 36.685081, 20.575417> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.544239, 36.304810, 20.675791>,  <37.587994, 36.076645, 20.736015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.544239, 36.304810, 20.675791>,  <37.471317, 36.685081, 20.575417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.544239, 36.304810, 20.675791> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498589, -0.130583, -0.856946,
		0.847452, 0.281338, 0.450194,
		0.182304, -0.950682, 0.250935,
		37.598930, 36.019604, 20.751072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074535, 36.504189, 20.354977>,  <37.471317, 36.685081, 20.575417>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.074535, 36.504189, 20.354977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.942562, 36.129097, 20.398436>,  <37.863377, 35.904041, 20.424511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.942562, 36.129097, 20.398436>,  <38.074535, 36.504189, 20.354977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.942562, 36.129097, 20.398436> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528592, -0.278875, -0.801760,
		0.782135, -0.207096, 0.587687,
		-0.329932, -0.937732, 0.108648,
		37.843582, 35.847778, 20.431030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702938, 36.143795, 20.216476>,  <38.074535, 36.504189, 20.354977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702938, 36.143795, 20.216476> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.392464, 35.895916, 20.169992>,  <38.206177, 35.747189, 20.142103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.392464, 35.895916, 20.169992>,  <38.702938, 36.143795, 20.216476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.392464, 35.895916, 20.169992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513388, -0.514192, -0.687051,
		0.366012, -0.592941, 0.717256,
		-0.776188, -0.619700, -0.116208,
		38.159607, 35.710007, 20.135130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992329, 35.379211, 20.229036>,  <38.702938, 36.143795, 20.216476>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.992329, 35.379211, 20.229036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.632687, 35.402206, 20.055456>,  <38.416901, 35.416004, 19.951307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.632687, 35.402206, 20.055456>,  <38.992329, 35.379211, 20.229036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632687, 35.402206, 20.055456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332737, -0.554405, -0.762838,
		-0.284435, -0.830260, 0.479339,
		-0.899101, 0.057484, -0.433950,
		38.362957, 35.419453, 19.925270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.017033, 34.708321, 19.967081>,  <38.992329, 35.379211, 20.229036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.017033, 34.708321, 19.967081> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.743816, 34.896717, 19.743790>,  <38.579887, 35.009754, 19.609814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.743816, 34.896717, 19.743790>,  <39.017033, 34.708321, 19.967081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.743816, 34.896717, 19.743790> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373030, -0.432139, -0.821039,
		-0.627934, -0.769041, 0.119477,
		-0.683043, 0.470990, -0.558230,
		38.538902, 35.038013, 19.576321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727642, 34.198238, 19.506004>,  <39.017033, 34.708321, 19.967081>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727642, 34.198238, 19.506004> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.605339, 34.539864, 19.337677>,  <38.531956, 34.744839, 19.236681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.605339, 34.539864, 19.337677>,  <38.727642, 34.198238, 19.506004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.605339, 34.539864, 19.337677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413705, -0.278908, -0.866636,
		-0.857531, -0.439077, -0.268051,
		-0.305758, 0.854062, -0.420820,
		38.513611, 34.796082, 19.211432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.425446, 33.926010, 19.605900>,  <38.727642, 34.198238, 19.506004>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.425446, 33.926010, 19.605900> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.113358, 33.698929, 19.500853>,  <38.926105, 33.562679, 19.437824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.113358, 33.698929, 19.500853>,  <39.425446, 33.926010, 19.605900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.113358, 33.698929, 19.500853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216167, -0.149262, 0.964880,
		-0.586963, 0.809590, -0.006261,
		-0.780222, -0.567702, -0.262618,
		38.879292, 33.528618, 19.422068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870697, 34.004890, 20.194252>,  <39.425446, 33.926010, 19.605900>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.870697, 34.004890, 20.194252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.784584, 33.662197, 20.006777>,  <38.732914, 33.456581, 19.894293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.784584, 33.662197, 20.006777>,  <38.870697, 34.004890, 20.194252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784584, 33.662197, 20.006777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244787, -0.417275, 0.875192,
		-0.945374, 0.303144, -0.119883,
		-0.215285, -0.856730, -0.468687,
		38.719997, 33.405178, 19.866171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073528, 33.767651, 20.342880>,  <38.870697, 34.004890, 20.194252>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073528, 33.767651, 20.342880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.251114, 33.433807, 20.212456>,  <38.357666, 33.233501, 20.134201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.251114, 33.433807, 20.212456>,  <38.073528, 33.767651, 20.342880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251114, 33.433807, 20.212456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448356, -0.521979, 0.725614,
		-0.775804, -0.175955, -0.605944,
		0.443965, -0.834612, -0.326064,
		38.384304, 33.183422, 20.114637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600029, 33.317417, 20.329865>,  <38.073528, 33.767651, 20.342880>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.600029, 33.317417, 20.329865> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.928741, 33.089828, 20.342150>,  <38.125969, 32.953274, 20.349522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.928741, 33.089828, 20.342150>,  <37.600029, 33.317417, 20.329865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928741, 33.089828, 20.342150> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332261, -0.434710, 0.837036,
		-0.462903, -0.698064, -0.546285,
		0.821781, -0.568976, 0.030711,
		38.175278, 32.919136, 20.351364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287037, 32.592289, 20.577711>,  <37.600029, 33.317417, 20.329865>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287037, 32.592289, 20.577711> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.683567, 32.596203, 20.630146>,  <37.921486, 32.598549, 20.661608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.683567, 32.596203, 20.630146>,  <37.287037, 32.592289, 20.577711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.683567, 32.596203, 20.630146> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107081, -0.518330, 0.848450,
		0.076245, -0.855125, -0.512785,
		0.991323, 0.009781, 0.131088,
		37.980965, 32.599136, 20.669472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.429688, 32.014832, 20.756943>,  <37.287037, 32.592289, 20.577711>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.429688, 32.014832, 20.756943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.755878, 32.202812, 20.892080>,  <37.951591, 32.315601, 20.973162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.755878, 32.202812, 20.892080>,  <37.429688, 32.014832, 20.756943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755878, 32.202812, 20.892080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131766, -0.417638, 0.899009,
		0.563590, -0.777637, -0.278650,
		0.815478, 0.469956, 0.337842,
		38.000523, 32.343800, 20.993433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854485, 31.418583, 21.216061>,  <37.429688, 32.014832, 20.756943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.854485, 31.418583, 21.216061> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.936687, 31.800692, 21.301121>,  <37.986012, 32.029957, 21.352158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.936687, 31.800692, 21.301121>,  <37.854485, 31.418583, 21.216061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.936687, 31.800692, 21.301121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076093, -0.201035, 0.976624,
		0.975692, -0.216888, 0.031375,
		0.205510, 0.955272, 0.212652,
		37.998341, 32.087273, 21.364916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317989, 31.355534, 21.750065>,  <37.854485, 31.418583, 21.216061>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317989, 31.355534, 21.750065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.145359, 31.716259, 21.758764>,  <38.041779, 31.932693, 21.763985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.145359, 31.716259, 21.758764>,  <38.317989, 31.355534, 21.750065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145359, 31.716259, 21.758764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118675, -0.080661, 0.989651,
		0.894235, 0.424531, 0.141834,
		-0.431578, 0.901813, 0.021749,
		38.015884, 31.986803, 21.765289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.117188, 31.401794, 21.682772>,  <38.317989, 31.355534, 21.750065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.117188, 31.401794, 21.682772> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.380554, 31.107916, 21.748142>,  <39.538574, 30.931589, 21.787365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.380554, 31.107916, 21.748142>,  <39.117188, 31.401794, 21.682772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380554, 31.107916, 21.748142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242434, 0.001460, -0.970167,
		0.712539, 0.678396, 0.179076,
		0.658418, -0.734695, 0.163426,
		39.578079, 30.887506, 21.797171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774895, 31.605370, 21.367146>,  <39.117188, 31.401794, 21.682772>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.774895, 31.605370, 21.367146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.726460, 31.210011, 21.403818>,  <39.697399, 30.972795, 21.425821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.726460, 31.210011, 21.403818>,  <39.774895, 31.605370, 21.367146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726460, 31.210011, 21.403818> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131988, -0.107575, -0.985397,
		0.983828, -0.107220, 0.143483,
		-0.121089, -0.988399, 0.091684,
		39.690132, 30.913490, 21.431324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.421703, 31.242342, 21.057966>,  <39.774895, 31.605370, 21.367146>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.421703, 31.242342, 21.057966> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.145653, 30.953932, 21.033155>,  <39.980022, 30.780886, 21.018269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.145653, 30.953932, 21.033155>,  <40.421703, 31.242342, 21.057966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.145653, 30.953932, 21.033155> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272793, -0.179796, -0.945123,
		0.670306, -0.669174, 0.320773,
		-0.690126, -0.721027, -0.062027,
		39.938614, 30.737623, 21.014547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.600296, 30.699575, 20.518909>,  <40.421703, 31.242342, 21.057966>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.600296, 30.699575, 20.518909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.226170, 30.568890, 20.573244>,  <40.001694, 30.490479, 20.605844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.226170, 30.568890, 20.573244>,  <40.600296, 30.699575, 20.518909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.226170, 30.568890, 20.573244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084136, -0.578255, -0.811506,
		0.343677, -0.747582, 0.568337,
		-0.935311, -0.326713, 0.135835,
		39.945576, 30.470875, 20.613995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.680534, 29.972586, 20.316135>,  <40.600296, 30.699575, 20.518909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.680534, 29.972586, 20.316135> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.291477, 30.065460, 20.312971>,  <40.058044, 30.121185, 20.311073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.291477, 30.065460, 20.312971>,  <40.680534, 29.972586, 20.316135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.291477, 30.065460, 20.312971> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153448, -0.667615, -0.728521,
		-0.174433, -0.707375, 0.684978,
		-0.972639, 0.232187, -0.007909,
		39.999687, 30.135117, 20.310598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313332, 29.377722, 20.371031>,  <40.680534, 29.972586, 20.316135>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.313332, 29.377722, 20.371031> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.049534, 29.623058, 20.197191>,  <39.891254, 29.770260, 20.092888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.049534, 29.623058, 20.197191>,  <40.313332, 29.377722, 20.371031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.049534, 29.623058, 20.197191> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135706, -0.665794, -0.733691,
		-0.739357, -0.424889, 0.522323,
		-0.659496, 0.613341, -0.434600,
		39.851685, 29.807060, 20.066811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.752518, 29.058628, 20.151485>,  <40.313332, 29.377722, 20.371031>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.752518, 29.058628, 20.151485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.764290, 29.381214, 19.915264>,  <39.771355, 29.574766, 19.773531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.764290, 29.381214, 19.915264>,  <39.752518, 29.058628, 20.151485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.764290, 29.381214, 19.915264> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082682, -0.586819, -0.805486,
		-0.996141, 0.072535, 0.049408,
		0.029433, 0.806463, -0.590552,
		39.773121, 29.623154, 19.738098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300613, 28.847454, 19.678215>,  <39.752518, 29.058628, 20.151485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.300613, 28.847454, 19.678215> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.499020, 29.157219, 19.521116>,  <39.618065, 29.343077, 19.426857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.499020, 29.157219, 19.521116>,  <39.300613, 28.847454, 19.678215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.499020, 29.157219, 19.521116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033026, -0.468812, -0.882680,
		-0.867683, 0.424856, -0.258116,
		0.496020, 0.774411, -0.392749,
		39.647827, 29.389542, 19.403292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934811, 29.043558, 19.084755>,  <39.300613, 28.847454, 19.678215>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.934811, 29.043558, 19.084755> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.325241, 29.112024, 19.031115>,  <39.559498, 29.153103, 18.998930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.325241, 29.112024, 19.031115>,  <38.934811, 29.043558, 19.084755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.325241, 29.112024, 19.031115> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055342, -0.400870, -0.914462,
		-0.210281, 0.900003, -0.381806,
		0.976073, 0.171164, -0.134103,
		39.618065, 29.163374, 18.990883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.867466, 29.895367, 34.581223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.948372, 30.287060, 34.575710>,  <36.996914, 30.522076, 34.572403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.948372, 30.287060, 34.575710>,  <36.867466, 29.895367, 34.581223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948372, 30.287060, 34.575710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341076, -0.083628, -0.936309,
		-0.918019, 0.184678, -0.350908,
		0.202261, 0.979235, -0.013783,
		37.009048, 30.580830, 34.571575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.478710, 30.387547, 34.059139>,  <36.867466, 29.895367, 34.581223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.478710, 30.387547, 34.059139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.856709, 30.492556, 34.137177>,  <37.083508, 30.555561, 34.183998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.856709, 30.492556, 34.137177>,  <36.478710, 30.387547, 34.059139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856709, 30.492556, 34.137177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202188, -0.000003, -0.979347,
		-0.257098, 0.964926, -0.053081,
		0.944998, 0.262520, 0.195096,
		37.140209, 30.571312, 34.195705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630268, 30.970184, 33.727425>,  <36.478710, 30.387547, 34.059139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.630268, 30.970184, 33.727425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.989372, 30.804619, 33.787701>,  <37.204834, 30.705280, 33.823864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.989372, 30.804619, 33.787701>,  <36.630268, 30.970184, 33.727425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989372, 30.804619, 33.787701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186492, 0.047235, -0.981320,
		0.399064, 0.909090, 0.119597,
		0.897757, -0.413914, 0.150688,
		37.258701, 30.680445, 33.832909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133556, 31.391113, 33.396492>,  <36.630268, 30.970184, 33.727425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133556, 31.391113, 33.396492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.329617, 31.042498, 33.391315>,  <37.447254, 30.833328, 33.388210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.329617, 31.042498, 33.391315>,  <37.133556, 31.391113, 33.396492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329617, 31.042498, 33.391315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346875, 0.208663, -0.914406,
		0.799642, 0.443709, 0.404592,
		0.490153, -0.871540, -0.012945,
		37.476662, 30.781036, 33.387432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.734562, 31.534492, 33.151241>,  <37.133556, 31.391113, 33.396492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.734562, 31.534492, 33.151241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.707108, 31.139339, 33.095558>,  <37.690636, 30.902248, 33.062149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.707108, 31.139339, 33.095558>,  <37.734562, 31.534492, 33.151241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.707108, 31.139339, 33.095558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328300, 0.109400, -0.938217,
		0.942077, -0.110093, 0.316813,
		-0.068631, -0.987882, -0.139207,
		37.686520, 30.842976, 33.053795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252777, 31.417181, 32.756721>,  <37.734562, 31.534492, 33.151241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252777, 31.417181, 32.756721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.015030, 31.101685, 32.693954>,  <37.872383, 30.912388, 32.656296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.015030, 31.101685, 32.693954>,  <38.252777, 31.417181, 32.756721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015030, 31.101685, 32.693954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192184, 0.050156, -0.980076,
		0.780895, -0.612678, 0.121772,
		-0.594364, -0.788739, -0.156914,
		37.836720, 30.865063, 32.646881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637020, 30.906300, 32.321133>,  <38.252777, 31.417181, 32.756721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.637020, 30.906300, 32.321133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.256180, 30.788694, 32.287540>,  <38.027676, 30.718130, 32.267387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.256180, 30.788694, 32.287540>,  <38.637020, 30.906300, 32.321133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.256180, 30.788694, 32.287540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164004, -0.259237, -0.951787,
		0.258069, -0.919974, 0.295041,
		-0.952104, -0.294015, -0.083978,
		37.970547, 30.700491, 32.262348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.673004, 30.214926, 31.935482>,  <38.637020, 30.906300, 32.321133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.673004, 30.214926, 31.935482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.309772, 30.375351, 31.887239>,  <38.091835, 30.471605, 31.858294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.309772, 30.375351, 31.887239>,  <38.673004, 30.214926, 31.935482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.309772, 30.375351, 31.887239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113501, -0.041531, -0.992670,
		-0.403133, -0.915108, -0.007808,
		-0.908076, 0.401064, -0.120608,
		38.037350, 30.495670, 31.851057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383480, 29.797489, 31.432266>,  <38.673004, 30.214926, 31.935482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.383480, 29.797489, 31.432266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.128819, 30.105103, 31.409430>,  <37.976021, 30.289671, 31.395727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.128819, 30.105103, 31.409430>,  <38.383480, 29.797489, 31.432266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128819, 30.105103, 31.409430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038087, -0.105301, -0.993711,
		-0.770210, -0.630474, 0.096330,
		-0.636652, 0.769035, -0.057091,
		37.937824, 30.335814, 31.392302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861862, 29.585762, 30.986792>,  <38.383480, 29.797489, 31.432266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861862, 29.585762, 30.986792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.826687, 29.984207, 30.984804>,  <37.805580, 30.223274, 30.983612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.826687, 29.984207, 30.984804>,  <37.861862, 29.585762, 30.986792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.826687, 29.984207, 30.984804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094747, -0.013331, -0.995412,
		-0.991610, -0.087067, 0.095551,
		-0.087941, 0.996113, -0.004969,
		37.800304, 30.283041, 30.983313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435509, 29.696110, 30.397652>,  <37.861862, 29.585762, 30.986792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435509, 29.696110, 30.397652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.589935, 30.059851, 30.459658>,  <37.682590, 30.278095, 30.496861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.589935, 30.059851, 30.459658>,  <37.435509, 29.696110, 30.397652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589935, 30.059851, 30.459658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155346, 0.229734, -0.960776,
		-0.909295, 0.346845, 0.229958,
		0.386070, 0.909352, 0.155015,
		37.705757, 30.332657, 30.506163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949970, 30.155588, 30.025021>,  <37.435509, 29.696110, 30.397652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949970, 30.155588, 30.025021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.311924, 30.313942, 30.087584>,  <37.529095, 30.408955, 30.125122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.311924, 30.313942, 30.087584>,  <36.949970, 30.155588, 30.025021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.311924, 30.313942, 30.087584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138140, 0.074437, -0.987611,
		-0.402625, 0.915277, 0.012669,
		0.904882, 0.395887, 0.156407,
		37.583389, 30.432709, 30.134506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479610, 30.802006, 30.041826>,  <36.949970, 30.155588, 30.025021>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479610, 30.802006, 30.041826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.092705, 30.827698, 29.943628>,  <35.860561, 30.843113, 29.884710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.092705, 30.827698, 29.943628>,  <36.479610, 30.802006, 30.041826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092705, 30.827698, 29.943628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212485, 0.323851, 0.921938,
		0.138719, 0.943925, -0.299603,
		-0.967268, 0.064229, -0.245495,
		35.802525, 30.846966, 29.869980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148972, 31.512720, 30.114328>,  <36.479610, 30.802006, 30.041826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148972, 31.512720, 30.114328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.848499, 31.249794, 30.138550>,  <35.668217, 31.092039, 30.153084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.848499, 31.249794, 30.138550>,  <36.148972, 31.512720, 30.114328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848499, 31.249794, 30.138550> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222462, 0.338460, 0.914306,
		-0.621482, 0.673337, -0.400472,
		-0.751179, -0.657315, 0.060555,
		35.623146, 31.052599, 30.156715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.737255, 31.955072, 30.391491>,  <36.148972, 31.512720, 30.114328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.737255, 31.955072, 30.391491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.583954, 31.592415, 30.462048>,  <35.491974, 31.374821, 30.504381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.583954, 31.592415, 30.462048>,  <35.737255, 31.955072, 30.391491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583954, 31.592415, 30.462048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274953, 0.294306, 0.915306,
		-0.881768, 0.302298, -0.362079,
		-0.383257, -0.906642, 0.176392,
		35.468975, 31.320423, 30.514965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197960, 32.084686, 30.773319>,  <35.737255, 31.955072, 30.391491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197960, 32.084686, 30.773319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.230076, 31.688467, 30.817799>,  <35.249344, 31.450735, 30.844486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.230076, 31.688467, 30.817799>,  <35.197960, 32.084686, 30.773319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230076, 31.688467, 30.817799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549039, 0.049162, 0.834349,
		-0.831931, -0.128039, -0.539904,
		0.080286, -0.990550, 0.111197,
		35.254162, 31.391302, 30.851158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512039, 31.809210, 30.728308>,  <35.197960, 32.084686, 30.773319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512039, 31.809210, 30.728308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.727825, 31.551022, 30.944586>,  <34.857296, 31.396109, 31.074352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.727825, 31.551022, 30.944586>,  <34.512039, 31.809210, 30.728308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.727825, 31.551022, 30.944586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656420, 0.079781, 0.750165,
		-0.527348, -0.759606, -0.380662,
		0.539460, -0.645472, 0.540693,
		34.889664, 31.357380, 31.106794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166485, 31.198317, 30.827835>,  <34.512039, 31.809210, 30.728308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.166485, 31.198317, 30.827835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.410442, 31.263157, 31.138126>,  <34.556816, 31.302061, 31.324301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.410442, 31.263157, 31.138126>,  <34.166485, 31.198317, 30.827835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410442, 31.263157, 31.138126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791105, 0.066783, 0.608024,
		0.046757, -0.984511, 0.168970,
		0.609891, 0.162102, 0.775729,
		34.593410, 31.311787, 31.370846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.777725, 30.961460, 31.429766>,  <34.166485, 31.198317, 30.827835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.777725, 30.961460, 31.429766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.081509, 31.136911, 31.621946>,  <34.263779, 31.242182, 31.737255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.081509, 31.136911, 31.621946>,  <33.777725, 30.961460, 31.429766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.081509, 31.136911, 31.621946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615432, 0.244997, 0.749147,
		0.210881, -0.864632, 0.456006,
		0.759456, 0.438621, 0.480457,
		34.309345, 31.268499, 31.766083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.522724, 30.919382, 32.093060>,  <33.777725, 30.961460, 31.429766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.522724, 30.919382, 32.093060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.828384, 31.174850, 32.129227>,  <34.011780, 31.328131, 32.150928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.828384, 31.174850, 32.129227>,  <33.522724, 30.919382, 32.093060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.828384, 31.174850, 32.129227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422988, 0.390316, 0.817762,
		0.486987, -0.663139, 0.568410,
		0.764149, 0.638670, 0.090421,
		34.057629, 31.366451, 32.156353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.817841, 30.721508, 32.813599>,  <33.522724, 30.919382, 32.093060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.817841, 30.721508, 32.813599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.927612, 31.085896, 32.690422>,  <33.993477, 31.304527, 32.616516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.927612, 31.085896, 32.690422>,  <33.817841, 30.721508, 32.813599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927612, 31.085896, 32.690422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352684, 0.393269, 0.849089,
		0.894595, -0.124414, 0.429210,
		0.274434, 0.910967, -0.307938,
		34.009941, 31.359186, 32.598042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216999, 31.152662, 33.361225>,  <33.817841, 30.721508, 32.813599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216999, 31.152662, 33.361225> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.059036, 31.412586, 33.101440>,  <33.964260, 31.568541, 32.945572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.059036, 31.412586, 33.101440>,  <34.216999, 31.152662, 33.361225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.059036, 31.412586, 33.101440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287441, 0.584037, 0.759130,
		0.872598, 0.486465, -0.043857,
		-0.394904, 0.649809, -0.649460,
		33.940563, 31.607529, 32.906601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.209660, 31.824234, 33.765396>,  <34.216999, 31.152662, 33.361225>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.209660, 31.824234, 33.765396> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.981861, 31.903124, 33.446201>,  <33.845181, 31.950459, 33.254684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.981861, 31.903124, 33.446201>,  <34.209660, 31.824234, 33.765396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.981861, 31.903124, 33.446201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407542, 0.775324, 0.482475,
		0.713851, 0.599980, -0.361167,
		-0.569497, 0.197224, -0.797983,
		33.811012, 31.962292, 33.206806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.291531, 32.543793, 33.733952>,  <34.209660, 31.824234, 33.765396>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.291531, 32.543793, 33.733952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.962429, 32.468731, 33.519341>,  <33.764969, 32.423695, 33.390575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.962429, 32.468731, 33.519341>,  <34.291531, 32.543793, 33.733952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.962429, 32.468731, 33.519341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513302, 0.650712, 0.559549,
		0.244119, 0.735771, -0.631702,
		-0.822756, -0.187657, -0.536524,
		33.715603, 32.412434, 33.358383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.992699, 33.173862, 33.660954>,  <34.291531, 32.543793, 33.733952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.992699, 33.173862, 33.660954> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.685730, 32.923416, 33.605755>,  <33.501549, 32.773148, 33.572636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.685730, 32.923416, 33.605755>,  <33.992699, 33.173862, 33.660954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.685730, 32.923416, 33.605755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597829, 0.621020, 0.506886,
		-0.231670, 0.471495, -0.850895,
		-0.767417, -0.626120, -0.138001,
		33.455505, 32.735580, 33.564354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.428307, 33.568775, 33.468529>,  <33.992699, 33.173862, 33.660954>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.428307, 33.568775, 33.468529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.284779, 33.239002, 33.643600>,  <33.198662, 33.041138, 33.748642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.284779, 33.239002, 33.643600>,  <33.428307, 33.568775, 33.468529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.284779, 33.239002, 33.643600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406134, 0.560089, 0.722050,
		-0.840419, 0.081328, -0.535799,
		-0.358818, -0.824431, 0.437679,
		33.177132, 32.991673, 33.774906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.658699, 33.710289, 33.711922>,  <33.428307, 33.568775, 33.468529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.658699, 33.710289, 33.711922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.905388, 33.479904, 33.926559>,  <33.053402, 33.341675, 34.055340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.905388, 33.479904, 33.926559>,  <32.658699, 33.710289, 33.711922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.905388, 33.479904, 33.926559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256051, 0.497814, 0.828625,
		-0.744375, -0.648424, 0.159537,
		0.616720, -0.575958, 0.536590,
		33.090405, 33.307117, 34.087536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.374729, 33.461781, 33.057755>,  <32.658699, 33.710289, 33.711922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.374729, 33.461781, 33.057755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.627148, 33.758606, 33.148197>,  <32.778599, 33.936703, 33.202461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.627148, 33.758606, 33.148197>,  <32.374729, 33.461781, 33.057755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.627148, 33.758606, 33.148197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073885, 0.232649, -0.969750,
		-0.772221, 0.628660, 0.091984,
		0.631043, 0.742065, 0.226105,
		32.816460, 33.981224, 33.216030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.178978, 34.056747, 32.663960>,  <32.374729, 33.461781, 33.057755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.178978, 34.056747, 32.663960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.550301, 34.142586, 32.785416>,  <32.773094, 34.194088, 32.858288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.550301, 34.142586, 32.785416>,  <32.178978, 34.056747, 32.663960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.550301, 34.142586, 32.785416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205404, 0.384728, -0.899885,
		-0.309931, 0.897737, 0.313066,
		0.928306, 0.214598, 0.303638,
		32.828793, 34.206966, 32.876507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.366745, 34.774055, 32.667770>,  <32.178978, 34.056747, 32.663960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.366745, 34.774055, 32.667770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.732174, 34.611385, 32.667118>,  <32.951431, 34.513783, 32.666725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.732174, 34.611385, 32.667118>,  <32.366745, 34.774055, 32.667770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.732174, 34.611385, 32.667118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240717, 0.543985, -0.803825,
		0.327787, 0.733957, 0.594863,
		0.913570, -0.406678, -0.001635,
		33.006245, 34.489384, 32.666626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.773643, 35.228851, 32.305435>,  <32.366745, 34.774055, 32.667770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.773643, 35.228851, 32.305435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.012417, 34.908131, 32.316658>,  <33.155682, 34.715698, 32.323391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.012417, 34.908131, 32.316658>,  <32.773643, 35.228851, 32.305435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.012417, 34.908131, 32.316658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297502, 0.188734, -0.935880,
		0.745092, 0.567007, 0.351199,
		0.596934, -0.801800, 0.028061,
		33.191498, 34.667591, 32.325077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.404301, 35.408741, 32.177681>,  <32.773643, 35.228851, 32.305435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.404301, 35.408741, 32.177681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.406639, 35.019356, 32.086174>,  <33.408043, 34.785725, 32.031269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.406639, 35.019356, 32.086174>,  <33.404301, 35.408741, 32.177681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.406639, 35.019356, 32.086174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475964, 0.203902, -0.855501,
		0.879445, -0.103886, 0.464525,
		0.005843, -0.973464, -0.228767,
		33.408394, 34.727318, 32.017544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084412, 35.303791, 31.956388>,  <33.404301, 35.408741, 32.177681>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084412, 35.303791, 31.956388> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.864326, 34.996998, 31.824329>,  <33.732273, 34.812923, 31.745094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.864326, 34.996998, 31.824329>,  <34.084412, 35.303791, 31.956388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.864326, 34.996998, 31.824329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324313, 0.168055, -0.930902,
		0.769471, -0.619268, 0.156277,
		-0.550215, -0.766985, -0.330150,
		33.699261, 34.766903, 31.725285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468628, 34.939716, 31.645613>,  <34.084412, 35.303791, 31.956388>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468628, 34.939716, 31.645613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.119896, 34.830097, 31.483227>,  <33.910656, 34.764324, 31.385796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.119896, 34.830097, 31.483227>,  <34.468628, 34.939716, 31.645613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119896, 34.830097, 31.483227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407315, 0.054692, -0.911649,
		0.272043, -0.960158, 0.063944,
		-0.871829, -0.274053, -0.405965,
		33.858345, 34.747883, 31.361437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663261, 34.461891, 31.177759>,  <34.468628, 34.939716, 31.645613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.663261, 34.461891, 31.177759> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.300476, 34.581970, 31.059578>,  <34.082806, 34.654018, 30.988670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.300476, 34.581970, 31.059578>,  <34.663261, 34.461891, 31.177759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300476, 34.581970, 31.059578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316970, 0.024510, -0.948119,
		-0.277382, -0.953562, -0.117383,
		-0.906967, 0.300198, -0.295452,
		34.028385, 34.672028, 30.970942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598267, 34.200294, 30.533867>,  <34.663261, 34.461891, 31.177759>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.598267, 34.200294, 30.533867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.313850, 34.481155, 30.518837>,  <34.143200, 34.649670, 30.509819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.313850, 34.481155, 30.518837>,  <34.598267, 34.200294, 30.533867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.313850, 34.481155, 30.518837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160069, 0.109597, -0.981003,
		-0.684692, -0.703544, -0.190320,
		-0.711037, 0.702149, -0.037576,
		34.100540, 34.691799, 30.507565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.262978, 33.962860, 29.978127>,  <34.598267, 34.200294, 30.533867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.262978, 33.962860, 29.978127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.166325, 34.347145, 30.032743>,  <34.108334, 34.577717, 30.065514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.166325, 34.347145, 30.032743>,  <34.262978, 33.962860, 29.978127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166325, 34.347145, 30.032743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441782, 0.234197, -0.866014,
		-0.863968, -0.148939, -0.481016,
		-0.241636, 0.960713, 0.136540,
		34.093834, 34.635361, 30.073706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886379, 34.144482, 29.389906>,  <34.262978, 33.962860, 29.978127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886379, 34.144482, 29.389906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.006840, 34.499088, 29.530416>,  <34.079117, 34.711853, 29.614723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.006840, 34.499088, 29.530416>,  <33.886379, 34.144482, 29.389906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.006840, 34.499088, 29.530416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163899, 0.314775, -0.934908,
		-0.939385, 0.339123, -0.050504,
		0.301151, 0.886517, 0.351278,
		34.097183, 34.765045, 29.635799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.578541, 34.658180, 28.962828>,  <33.886379, 34.144482, 29.389906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.578541, 34.658180, 28.962828> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.879383, 34.852337, 29.141150>,  <34.059887, 34.968830, 29.248142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.879383, 34.852337, 29.141150>,  <33.578541, 34.658180, 28.962828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.879383, 34.852337, 29.141150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373062, 0.244078, -0.895126,
		-0.543294, 0.839539, 0.002492,
		0.752101, 0.485387, 0.445806,
		34.105015, 34.997952, 29.274891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.520569, 35.466560, 28.805321>,  <33.578541, 34.658180, 28.962828>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.520569, 35.466560, 28.805321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.896961, 35.394718, 28.920067>,  <34.122795, 35.351612, 28.988914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.896961, 35.394718, 28.920067>,  <33.520569, 35.466560, 28.805321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.896961, 35.394718, 28.920067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337796, 0.445491, -0.829115,
		0.021121, 0.877085, 0.479871,
		0.940983, -0.179610, 0.286866,
		34.179256, 35.340836, 29.006126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916931, 36.071613, 28.626186>,  <33.520569, 35.466560, 28.805321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.916931, 36.071613, 28.626186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.191658, 35.782303, 28.654892>,  <34.356495, 35.608715, 28.672115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.191658, 35.782303, 28.654892>,  <33.916931, 36.071613, 28.626186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191658, 35.782303, 28.654892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501950, 0.400589, -0.766534,
		0.525670, 0.562490, 0.638181,
		0.686816, -0.723279, 0.071765,
		34.397701, 35.565319, 28.676422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.563839, 36.372444, 28.353771>,  <33.916931, 36.071613, 28.626186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.563839, 36.372444, 28.353771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.641689, 35.980907, 28.328510>,  <34.688400, 35.745987, 28.313354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.641689, 35.980907, 28.328510>,  <34.563839, 36.372444, 28.353771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641689, 35.980907, 28.328510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628141, 0.173829, -0.758434,
		0.753364, 0.107945, 0.648683,
		0.194629, -0.978842, -0.063152,
		34.700077, 35.687256, 28.309565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218208, 36.395203, 28.144384>,  <34.563839, 36.372444, 28.353771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.218208, 36.395203, 28.144384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.117661, 36.014656, 28.073145>,  <35.057331, 35.786327, 28.030401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.117661, 36.014656, 28.073145>,  <35.218208, 36.395203, 28.144384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117661, 36.014656, 28.073145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643487, -0.026813, -0.764987,
		0.723007, -0.306895, 0.618931,
		-0.251367, -0.951366, -0.178097,
		35.042252, 35.729248, 28.019716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839005, 35.951641, 28.000645>,  <35.218208, 36.395203, 28.144384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839005, 35.951641, 28.000645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.552494, 35.737019, 27.822182>,  <35.380589, 35.608246, 27.715105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.552494, 35.737019, 27.822182>,  <35.839005, 35.951641, 28.000645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552494, 35.737019, 27.822182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613364, -0.179216, -0.769198,
		0.332757, -0.824617, 0.457471,
		-0.716280, -0.536552, -0.446155,
		35.337608, 35.576054, 27.688335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254951, 35.516716, 27.669279>,  <35.839005, 35.951641, 28.000645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.254951, 35.516716, 27.669279> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.907696, 35.483120, 27.473616>,  <35.699341, 35.462963, 27.356218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.907696, 35.483120, 27.473616>,  <36.254951, 35.516716, 27.669279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907696, 35.483120, 27.473616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496314, -0.143491, -0.856202,
		0.001725, -0.986081, 0.166257,
		-0.868142, -0.083993, -0.489158,
		35.647255, 35.457924, 27.326868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.378262, 34.927689, 27.114477>,  <36.254951, 35.516716, 27.669279>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.378262, 34.927689, 27.114477> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.029930, 35.088333, 27.001085>,  <35.820930, 35.184719, 26.933050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.029930, 35.088333, 27.001085>,  <36.378262, 34.927689, 27.114477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029930, 35.088333, 27.001085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285777, -0.055619, -0.956681,
		-0.399983, -0.914118, -0.066338,
		-0.870830, 0.401614, -0.283481,
		35.768681, 35.208817, 26.916040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.041771, 34.447586, 26.710253>,  <36.378262, 34.927689, 27.114477>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.041771, 34.447586, 26.710253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.906307, 34.812164, 26.616806>,  <35.825027, 35.030910, 26.560738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.906307, 34.812164, 26.616806>,  <36.041771, 34.447586, 26.710253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.906307, 34.812164, 26.616806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259732, -0.148086, -0.954259,
		-0.904350, -0.383846, -0.186581,
		-0.338658, 0.911445, -0.233619,
		35.804710, 35.085598, 26.546721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.654716, 34.344379, 26.143267>,  <36.041771, 34.447586, 26.710253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.654716, 34.344379, 26.143267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.787128, 34.721447, 26.160223>,  <35.866573, 34.947689, 26.170397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.787128, 34.721447, 26.160223>,  <35.654716, 34.344379, 26.143267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787128, 34.721447, 26.160223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224511, -0.035046, -0.973841,
		-0.916524, 0.331885, -0.223241,
		0.331027, 0.942669, 0.042391,
		35.886436, 35.004246, 26.172941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.459484, 34.649307, 25.488176>,  <35.654716, 34.344379, 26.143267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.459484, 34.649307, 25.488176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.694530, 34.945763, 25.618055>,  <35.835556, 35.123634, 25.695984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.694530, 34.945763, 25.618055>,  <35.459484, 34.649307, 25.488176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.694530, 34.945763, 25.618055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179409, 0.271960, -0.945437,
		-0.789001, 0.613805, 0.026841,
		0.587613, 0.741135, 0.324699,
		35.870815, 35.168102, 25.715466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270050, 35.293552, 25.084927>,  <35.459484, 34.649307, 25.488176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270050, 35.293552, 25.084927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.644180, 35.370319, 25.203812>,  <35.868660, 35.416382, 25.275143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.644180, 35.370319, 25.203812>,  <35.270050, 35.293552, 25.084927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644180, 35.370319, 25.203812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327279, -0.150287, -0.932900,
		-0.134376, 0.969835, -0.203379,
		0.935324, 0.191921, 0.297212,
		35.924778, 35.427895, 25.292974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528545, 35.828022, 24.645882>,  <35.270050, 35.293552, 25.084927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528545, 35.828022, 24.645882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.858051, 35.659889, 24.798058>,  <36.055756, 35.559010, 24.889362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.858051, 35.659889, 24.798058>,  <35.528545, 35.828022, 24.645882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.858051, 35.659889, 24.798058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425967, 0.016061, -0.904596,
		0.374121, 0.907228, 0.192278,
		0.823763, -0.420332, 0.380440,
		36.105179, 35.533791, 24.912189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046223, 36.355385, 24.642336>,  <35.528545, 35.828022, 24.645882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046223, 36.355385, 24.642336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.228531, 35.999382, 24.647402>,  <36.337914, 35.785778, 24.650442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.228531, 35.999382, 24.647402>,  <36.046223, 36.355385, 24.642336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228531, 35.999382, 24.647402> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501400, 0.244953, -0.829817,
		0.735442, 0.384554, 0.557892,
		0.455767, -0.890009, 0.012666,
		36.365261, 35.732380, 24.651201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720825, 36.508167, 24.572720>,  <36.046223, 36.355385, 24.642336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720825, 36.508167, 24.572720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.709801, 36.120201, 24.475975>,  <36.703186, 35.887421, 24.417929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.709801, 36.120201, 24.475975>,  <36.720825, 36.508167, 24.572720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709801, 36.120201, 24.475975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465679, 0.201639, -0.861676,
		0.884525, -0.136374, 0.446115,
		-0.027556, -0.969919, -0.241861,
		36.701534, 35.829224, 24.403416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380596, 36.335094, 24.428476>,  <36.720825, 36.508167, 24.572720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380596, 36.335094, 24.428476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.145176, 36.082153, 24.226988>,  <37.003922, 35.930389, 24.106094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.145176, 36.082153, 24.226988>,  <37.380596, 36.335094, 24.428476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145176, 36.082153, 24.226988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523166, 0.177117, -0.833623,
		0.616363, -0.754159, 0.226584,
		-0.588552, -0.632355, -0.503719,
		36.968609, 35.892448, 24.075872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999977, 35.999039, 24.547527>,  <37.380596, 36.335094, 24.428476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.999977, 35.999039, 24.547527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.373249, 36.020836, 24.689631>,  <38.597214, 36.033916, 24.774893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.373249, 36.020836, 24.689631>,  <37.999977, 35.999039, 24.547527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373249, 36.020836, 24.689631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358963, 0.190658, 0.913671,
		-0.017940, -0.980143, 0.197481,
		0.933180, 0.054497, 0.355256,
		38.653202, 36.037186, 24.796207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084438, 35.559624, 25.110785>,  <37.999977, 35.999039, 24.547527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084438, 35.559624, 25.110785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.401291, 35.795513, 25.173717>,  <38.591404, 35.937046, 25.211477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.401291, 35.795513, 25.173717>,  <38.084438, 35.559624, 25.110785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.401291, 35.795513, 25.173717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281426, 0.124161, 0.951516,
		0.541599, -0.798003, 0.264316,
		0.792130, 0.589725, 0.157333,
		38.638931, 35.972431, 25.220917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372612, 35.353912, 25.750509>,  <38.084438, 35.559624, 25.110785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.372612, 35.353912, 25.750509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.517994, 35.723881, 25.705923>,  <38.605221, 35.945862, 25.679173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.517994, 35.723881, 25.705923>,  <38.372612, 35.353912, 25.750509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.517994, 35.723881, 25.705923> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022992, 0.128515, 0.991441,
		0.931329, -0.357778, 0.067974,
		0.363452, 0.924921, -0.111464,
		38.627029, 36.001358, 25.672483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992252, 35.356186, 26.203167>,  <38.372612, 35.353912, 25.750509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.992252, 35.356186, 26.203167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.843853, 35.723900, 26.150597>,  <38.754814, 35.944530, 26.119055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.843853, 35.723900, 26.150597>,  <38.992252, 35.356186, 26.203167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843853, 35.723900, 26.150597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022994, 0.150575, 0.988331,
		0.928351, 0.363643, -0.077000,
		-0.370994, 0.919288, -0.131425,
		38.732555, 35.999687, 26.111170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369164, 35.762817, 26.652584>,  <38.992252, 35.356186, 26.203167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369164, 35.762817, 26.652584> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.040684, 35.975735, 26.570314>,  <38.843597, 36.103485, 26.520952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.040684, 35.975735, 26.570314>,  <39.369164, 35.762817, 26.652584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.040684, 35.975735, 26.570314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103351, 0.215731, 0.970968,
		0.561211, 0.818610, -0.122144,
		-0.821195, 0.532294, -0.205675,
		38.794327, 36.135422, 26.508612>
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
