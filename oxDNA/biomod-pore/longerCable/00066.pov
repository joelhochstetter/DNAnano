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
	<23.997147, 34.886978, 34.983551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.386585, 34.919479, 34.898224>,  <24.620249, 34.938980, 34.847027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.386585, 34.919479, 34.898224>,  <23.997147, 34.886978, 34.983551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.386585, 34.919479, 34.898224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135463, -0.957829, 0.253402,
		-0.183735, -0.275608, -0.943547,
		0.973597, 0.081257, -0.213321,
		24.678665, 34.943855, 34.834229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.166759, 34.317322, 34.429306>,  <23.997147, 34.886978, 34.983551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.166759, 34.317322, 34.429306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.485746, 34.455647, 34.627079>,  <24.677139, 34.538639, 34.745743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.485746, 34.455647, 34.627079>,  <24.166759, 34.317322, 34.429306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.485746, 34.455647, 34.627079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162369, -0.912228, 0.376133,
		0.581103, -0.219674, -0.783622,
		0.797469, 0.345808, 0.494430,
		24.724987, 34.559387, 34.775410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.818628, 34.384830, 34.037594>,  <24.166759, 34.317322, 34.429306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.818628, 34.384830, 34.037594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.695587, 34.465755, 33.665691>,  <24.621763, 34.514309, 33.442551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.695587, 34.465755, 33.665691>,  <24.818628, 34.384830, 34.037594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.695587, 34.465755, 33.665691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924774, 0.293593, -0.242068,
		0.223998, -0.934277, -0.277402,
		-0.307602, 0.202312, -0.929759,
		24.603306, 34.526447, 33.386765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.398968, 34.722240, 33.792587>,  <24.818628, 34.384830, 34.037594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.398968, 34.722240, 33.792587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.183935, 34.696625, 33.456276>,  <25.054916, 34.681255, 33.254490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.183935, 34.696625, 33.456276>,  <25.398968, 34.722240, 33.792587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.183935, 34.696625, 33.456276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764100, 0.384680, -0.517854,
		0.356590, -0.920826, -0.157869,
		-0.537583, -0.064034, -0.840776,
		25.022661, 34.677414, 33.204044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.738436, 34.410015, 33.246151>,  <25.398968, 34.722240, 33.792587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.738436, 34.410015, 33.246151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.465231, 34.645653, 33.073425>,  <25.301308, 34.787037, 32.969791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.465231, 34.645653, 33.073425>,  <25.738436, 34.410015, 33.246151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.465231, 34.645653, 33.073425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708745, 0.391631, -0.586775,
		-0.176556, -0.706819, -0.685007,
		-0.683014, 0.589095, -0.431810,
		25.260326, 34.822380, 32.943882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.505417, 34.348354, 33.069130>,  <25.738436, 34.410015, 33.246151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.505417, 34.348354, 33.069130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.845310, 34.445297, 32.881847>,  <27.049246, 34.503464, 32.769478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.845310, 34.445297, 32.881847>,  <26.505417, 34.348354, 33.069130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.845310, 34.445297, 32.881847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065515, 0.929734, 0.362358,
		0.523127, -0.277233, 0.805903,
		0.849733, 0.242358, -0.468206,
		27.100229, 34.518005, 32.741386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.794214, 34.778309, 33.444168>,  <26.505417, 34.348354, 33.069130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.794214, 34.778309, 33.444168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.978178, 34.878338, 33.103359>,  <27.088556, 34.938354, 32.898872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.978178, 34.878338, 33.103359>,  <26.794214, 34.778309, 33.444168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.978178, 34.878338, 33.103359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065460, 0.966461, 0.248331,
		0.885549, -0.058437, 0.460856,
		0.459911, 0.250077, -0.852023,
		27.116152, 34.953362, 32.847752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.399324, 35.194462, 33.476280>,  <26.794214, 34.778309, 33.444168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.399324, 35.194462, 33.476280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.231716, 35.281742, 33.123734>,  <27.131151, 35.334110, 32.912205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.231716, 35.281742, 33.123734>,  <27.399324, 35.194462, 33.476280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.231716, 35.281742, 33.123734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150059, 0.973989, 0.169788,
		0.895491, -0.061113, -0.440863,
		-0.419020, 0.218199, -0.881369,
		27.106010, 35.347202, 32.859322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.874723, 35.695194, 33.290234>,  <27.399324, 35.194462, 33.476280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.874723, 35.695194, 33.290234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.536499, 35.741211, 33.081696>,  <27.333565, 35.768822, 32.956573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.536499, 35.741211, 33.081696>,  <27.874723, 35.695194, 33.290234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.536499, 35.741211, 33.081696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056503, 0.990307, 0.126880,
		0.530883, 0.077827, -0.843863,
		-0.845559, 0.115040, -0.521340,
		27.282831, 35.775723, 32.925293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.954252, 36.276089, 32.904526>,  <27.874723, 35.695194, 33.290234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.954252, 36.276089, 32.904526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.562910, 36.201164, 32.939705>,  <27.328104, 36.156208, 32.960812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.562910, 36.201164, 32.939705>,  <27.954252, 36.276089, 32.904526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.562910, 36.201164, 32.939705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169513, 0.969223, 0.178525,
		-0.118685, 0.159752, -0.979996,
		-0.978355, -0.187310, 0.087952,
		27.269403, 36.144970, 32.966091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.597464, 36.819080, 32.476814>,  <27.954252, 36.276089, 32.904526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.597464, 36.819080, 32.476814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.355001, 36.670734, 32.758247>,  <27.209524, 36.581726, 32.927109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.355001, 36.670734, 32.758247>,  <27.597464, 36.819080, 32.476814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.355001, 36.670734, 32.758247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107919, 0.914799, 0.389226,
		-0.787990, 0.160002, -0.594535,
		-0.606156, -0.370868, 0.703585,
		27.173155, 36.559475, 32.969322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.002260, 37.297829, 32.461658>,  <27.597464, 36.819080, 32.476814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.002260, 37.297829, 32.461658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.082039, 37.104145, 32.802425>,  <27.129906, 36.987934, 33.006886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.082039, 37.104145, 32.802425>,  <27.002260, 37.297829, 32.461658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.082039, 37.104145, 32.802425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070933, 0.859967, 0.505396,
		-0.977338, -0.161228, 0.137171,
		0.199447, -0.484212, 0.851915,
		27.141872, 36.958881, 33.057999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.990952, 37.981396, 32.898064>,  <27.002260, 37.297829, 32.461658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.990952, 37.981396, 32.898064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.828562, 37.963966, 33.263203>,  <26.731129, 37.953510, 33.482285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.828562, 37.963966, 33.263203>,  <26.990952, 37.981396, 32.898064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.828562, 37.963966, 33.263203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013384, -0.998472, -0.053609,
		0.913787, -0.033982, 0.404770,
		-0.405973, -0.043570, 0.912846,
		26.706770, 37.950897, 33.537056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.316660, 37.542458, 33.365017>,  <26.990952, 37.981396, 32.898064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.316660, 37.542458, 33.365017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.930431, 37.575264, 33.463768>,  <26.698694, 37.594948, 33.523018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.930431, 37.575264, 33.463768>,  <27.316660, 37.542458, 33.365017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.930431, 37.575264, 33.463768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125711, -0.977946, -0.166787,
		0.227750, -0.192080, 0.954587,
		-0.965571, 0.082016, 0.246873,
		26.640760, 37.599869, 33.537830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.183062, 36.918560, 33.883190>,  <27.316660, 37.542458, 33.365017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.183062, 36.918560, 33.883190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.901854, 37.071911, 33.643597>,  <26.733130, 37.163921, 33.499840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.901854, 37.071911, 33.643597>,  <27.183062, 36.918560, 33.883190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.901854, 37.071911, 33.643597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181056, -0.910989, -0.370565,
		-0.687736, -0.152064, 0.709856,
		-0.703020, 0.383375, -0.598988,
		26.690948, 37.186924, 33.463902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.554111, 36.587177, 34.003353>,  <27.183062, 36.918560, 33.883190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.554111, 36.587177, 34.003353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.594614, 36.693405, 33.619850>,  <26.618916, 36.757141, 33.389748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.594614, 36.693405, 33.619850>,  <26.554111, 36.587177, 34.003353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.594614, 36.693405, 33.619850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072190, -0.963135, -0.259153,
		-0.992238, -0.042972, -0.116693,
		0.101255, 0.265565, -0.958761,
		26.624990, 36.773075, 33.332222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.168461, 36.130054, 33.665028>,  <26.554111, 36.587177, 34.003353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.168461, 36.130054, 33.665028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.470816, 36.260315, 33.437840>,  <26.652229, 36.338470, 33.301529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.470816, 36.260315, 33.437840>,  <26.168461, 36.130054, 33.665028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.470816, 36.260315, 33.437840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189283, -0.939173, -0.286576,
		-0.626742, 0.109113, -0.771550,
		0.755888, 0.325650, -0.567966,
		26.697582, 36.358009, 33.267448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.954693, 35.887691, 32.998058>,  <26.168461, 36.130054, 33.665028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.954693, 35.887691, 32.998058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.341421, 35.988518, 32.981457>,  <26.573458, 36.049015, 32.971497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.341421, 35.988518, 32.981457>,  <25.954693, 35.887691, 32.998058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.341421, 35.988518, 32.981457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173753, -0.767934, -0.616512,
		-0.187272, 0.588845, -0.786251,
		0.966819, 0.252069, -0.041499,
		26.631466, 36.064140, 32.969006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.136833, 35.913059, 32.345757>,  <25.954693, 35.887691, 32.998058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.136833, 35.913059, 32.345757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.486454, 35.874233, 32.536171>,  <26.696226, 35.850937, 32.650417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.486454, 35.874233, 32.536171>,  <26.136833, 35.913059, 32.345757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.486454, 35.874233, 32.536171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207929, -0.810819, -0.547118,
		0.439084, 0.577191, -0.688517,
		0.874054, -0.097068, 0.476032,
		26.748671, 35.845112, 32.678982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.573254, 35.782795, 31.742153>,  <26.136833, 35.913059, 32.345757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.573254, 35.782795, 31.742153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.728109, 35.625347, 32.075665>,  <26.821022, 35.530880, 32.275772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.728109, 35.625347, 32.075665>,  <26.573254, 35.782795, 31.742153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.728109, 35.625347, 32.075665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145525, -0.866875, -0.476813,
		0.910465, 0.305928, -0.278319,
		0.387138, -0.393619, 0.833779,
		26.844252, 35.507263, 32.325798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.123333, 35.257305, 31.642733>,  <26.573254, 35.782795, 31.742153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.123333, 35.257305, 31.642733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.947657, 35.144482, 31.983921>,  <26.842251, 35.076786, 32.188633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.947657, 35.144482, 31.983921>,  <27.123333, 35.257305, 31.642733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.947657, 35.144482, 31.983921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121716, -0.959364, -0.254569,
		0.890111, -0.007985, 0.455674,
		-0.439190, -0.282057, 0.852969,
		26.815899, 35.059864, 32.239811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.759684, 35.163967, 31.752085>,  <27.123333, 35.257305, 31.642733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.759684, 35.163967, 31.752085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.565889, 35.095352, 32.095211>,  <27.449614, 35.054184, 32.301086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.565889, 35.095352, 32.095211>,  <27.759684, 35.163967, 31.752085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.565889, 35.095352, 32.095211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315322, -0.948913, -0.011666,
		0.815995, 0.264836, 0.513822,
		-0.484483, -0.171539, 0.857817,
		27.420544, 35.043892, 32.352554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.248247, 34.821617, 32.221931>,  <27.759684, 35.163967, 31.752085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.248247, 34.821617, 32.221931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.888922, 34.736538, 32.375706>,  <27.673326, 34.685490, 32.467972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.888922, 34.736538, 32.375706>,  <28.248247, 34.821617, 32.221931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.888922, 34.736538, 32.375706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235064, -0.971912, 0.011531,
		0.371184, 0.100725, 0.923080,
		-0.898314, -0.212703, 0.384434,
		27.619427, 34.672726, 32.491035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.318899, 34.468132, 32.881672>,  <28.248247, 34.821617, 32.221931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.318899, 34.468132, 32.881672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.971100, 34.381241, 32.704231>,  <27.762421, 34.329105, 32.597767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.971100, 34.381241, 32.704231>,  <28.318899, 34.468132, 32.881672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.971100, 34.381241, 32.704231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278405, -0.957382, -0.076881,
		-0.407994, -0.190349, 0.892921,
		-0.869500, -0.217227, -0.443600,
		27.710249, 34.316074, 32.571152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.074852, 33.876312, 33.182228>,  <28.318899, 34.468132, 32.881672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.074852, 33.876312, 33.182228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.928238, 33.871643, 32.810097>,  <27.840269, 33.868843, 32.586819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.928238, 33.871643, 32.810097>,  <28.074852, 33.876312, 33.182228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.928238, 33.871643, 32.810097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393845, -0.907862, -0.143777,
		-0.842935, -0.419106, 0.337359,
		-0.366533, -0.011672, -0.930332,
		27.818277, 33.868141, 32.530998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.519112, 33.855991, 33.720295>,  <28.074852, 33.876312, 33.182228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.519112, 33.855991, 33.720295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.595110, 33.503040, 33.548103>,  <28.640709, 33.291271, 33.444786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.595110, 33.503040, 33.548103>,  <28.519112, 33.855991, 33.720295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.595110, 33.503040, 33.548103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284120, -0.370290, 0.884399,
		-0.939775, -0.290339, 0.180348,
		0.189995, -0.882376, -0.430481,
		28.652109, 33.238327, 33.418961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.992220, 33.338051, 33.902359>,  <28.519112, 33.855991, 33.720295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.992220, 33.338051, 33.902359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.359022, 33.195023, 33.831657>,  <28.579103, 33.109203, 33.789238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.359022, 33.195023, 33.831657>,  <27.992220, 33.338051, 33.902359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.359022, 33.195023, 33.831657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063562, -0.306469, 0.949756,
		-0.393781, -0.882165, -0.258306,
		0.917004, -0.357577, -0.176754,
		28.634123, 33.087749, 33.778633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.003265, 32.647018, 34.031647>,  <27.992220, 33.338051, 33.902359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.003265, 32.647018, 34.031647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.377338, 32.777317, 34.087246>,  <28.601782, 32.855495, 34.120605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.377338, 32.777317, 34.087246>,  <28.003265, 32.647018, 34.031647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.377338, 32.777317, 34.087246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041328, -0.289410, 0.956312,
		0.351746, -0.900071, -0.257189,
		0.935182, 0.325750, 0.138997,
		28.657894, 32.875042, 34.128944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.439167, 32.104969, 34.420540>,  <28.003265, 32.647018, 34.031647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.439167, 32.104969, 34.420540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.608915, 32.465431, 34.455929>,  <28.710764, 32.681709, 34.477161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.608915, 32.465431, 34.455929>,  <28.439167, 32.104969, 34.420540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.608915, 32.465431, 34.455929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258670, -0.214290, 0.941897,
		0.867754, -0.376829, -0.324041,
		0.424373, 0.901155, 0.088477,
		28.736227, 32.735779, 34.482471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.946058, 31.957766, 34.909908>,  <28.439167, 32.104969, 34.420540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.946058, 31.957766, 34.909908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.956112, 32.357395, 34.923885>,  <28.962145, 32.597172, 34.932270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.956112, 32.357395, 34.923885>,  <28.946058, 31.957766, 34.909908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.956112, 32.357395, 34.923885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309534, -0.041014, 0.950004,
		0.950556, -0.013061, -0.310278,
		0.025134, 0.999073, 0.034943,
		28.963652, 32.657116, 34.934368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.543211, 32.218330, 35.314938>,  <28.946058, 31.957766, 34.909908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.543211, 32.218330, 35.314938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.322573, 32.551430, 35.334023>,  <29.190189, 32.751289, 35.345474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.322573, 32.551430, 35.334023>,  <29.543211, 32.218330, 35.314938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.322573, 32.551430, 35.334023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308764, 0.150714, 0.939122,
		0.774860, 0.532746, -0.340255,
		-0.551595, 0.832747, 0.047711,
		29.157095, 32.801254, 35.348335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.986256, 32.661846, 35.718193>,  <29.543211, 32.218330, 35.314938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.986256, 32.661846, 35.718193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.600126, 32.765785, 35.728191>,  <29.368448, 32.828148, 35.734192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.600126, 32.765785, 35.728191>,  <29.986256, 32.661846, 35.718193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.600126, 32.765785, 35.728191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035238, 0.034824, 0.998772,
		0.258661, 0.965021, -0.042773,
		-0.965325, 0.259851, 0.024998,
		29.310528, 32.843739, 35.735691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.877598, 33.282673, 36.203247>,  <29.986256, 32.661846, 35.718193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.877598, 33.282673, 36.203247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.525230, 33.099712, 36.154648>,  <29.313810, 32.989937, 36.125488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.525230, 33.099712, 36.154648>,  <29.877598, 33.282673, 36.203247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.525230, 33.099712, 36.154648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103518, -0.064275, 0.992548,
		-0.461806, 0.886932, 0.009271,
		-0.880919, -0.457405, -0.121496,
		29.260954, 32.962490, 36.118198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.412878, 33.705936, 36.613934>,  <29.877598, 33.282673, 36.203247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.412878, 33.705936, 36.613934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.189100, 33.379017, 36.558739>,  <29.054834, 33.182865, 36.525623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.189100, 33.379017, 36.558739>,  <29.412878, 33.705936, 36.613934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.189100, 33.379017, 36.558739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140978, -0.070221, 0.987519,
		-0.816792, 0.571913, -0.075937,
		-0.559443, -0.817303, -0.137984,
		29.021267, 33.133827, 36.517345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.754860, 33.827534, 36.900883>,  <29.412878, 33.705936, 36.613934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.754860, 33.827534, 36.900883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.844887, 33.438171, 36.883831>,  <28.898903, 33.204552, 36.873600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.844887, 33.438171, 36.883831>,  <28.754860, 33.827534, 36.900883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.844887, 33.438171, 36.883831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072682, -0.026854, 0.996993,
		-0.971628, -0.227489, 0.064706,
		0.225067, -0.973410, -0.042627,
		28.912407, 33.146149, 36.871044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.605701, 33.599514, 37.498558>,  <28.754860, 33.827534, 36.900883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.605701, 33.599514, 37.498558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.841043, 33.306789, 37.360985>,  <28.982248, 33.131153, 37.278442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.841043, 33.306789, 37.360985>,  <28.605701, 33.599514, 37.498558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.841043, 33.306789, 37.360985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184176, -0.292875, 0.938245,
		-0.787348, -0.615365, -0.037532,
		0.588355, -0.731813, -0.343930,
		29.017550, 33.087246, 37.257805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.022556, 33.027527, 37.817806>,  <28.605701, 33.599514, 37.498558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.022556, 33.027527, 37.817806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.685741, 32.835831, 37.718769>,  <28.483652, 32.720814, 37.659348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.685741, 32.835831, 37.718769>,  <29.022556, 33.027527, 37.817806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.685741, 32.835831, 37.718769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339693, -0.114558, -0.933534,
		0.419021, -0.870177, 0.259256,
		-0.842039, -0.479238, -0.247590,
		28.433130, 32.692059, 37.644493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.203306, 32.414440, 37.395042>,  <29.022556, 33.027527, 37.817806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.203306, 32.414440, 37.395042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.841824, 32.569263, 37.321827>,  <28.624935, 32.662159, 37.277897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.841824, 32.569263, 37.321827>,  <29.203306, 32.414440, 37.395042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.841824, 32.569263, 37.321827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251679, 0.134380, -0.958436,
		-0.346375, -0.912210, -0.218855,
		-0.903704, 0.387060, -0.183038,
		28.570713, 32.685383, 37.266914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.747860, 31.921923, 36.978760>,  <29.203306, 32.414440, 37.395042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.747860, 31.921923, 36.978760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.679790, 32.312687, 36.927090>,  <28.638948, 32.547146, 36.896088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.679790, 32.312687, 36.927090>,  <28.747860, 31.921923, 36.978760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.679790, 32.312687, 36.927090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113565, -0.110768, -0.987336,
		-0.978848, -0.182689, -0.092093,
		-0.170175, 0.976911, -0.129172,
		28.628738, 32.605759, 36.888336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.355516, 32.047092, 36.391315>,  <28.747860, 31.921923, 36.978760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.355516, 32.047092, 36.391315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.549353, 32.393589, 36.439964>,  <28.665653, 32.601486, 36.469154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.549353, 32.393589, 36.439964>,  <28.355516, 32.047092, 36.391315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.549353, 32.393589, 36.439964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228858, 0.008648, -0.973422,
		-0.844274, 0.499544, -0.194056,
		0.484589, 0.866245, 0.121626,
		28.694729, 32.653461, 36.476452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.080166, 32.489090, 35.901249>,  <28.355516, 32.047092, 36.391315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.080166, 32.489090, 35.901249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.431604, 32.656944, 35.992439>,  <28.642467, 32.757656, 36.047153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.431604, 32.656944, 35.992439>,  <28.080166, 32.489090, 35.901249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.431604, 32.656944, 35.992439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119162, 0.269648, -0.955558,
		-0.462458, 0.866717, 0.186907,
		0.878597, 0.419633, 0.227980,
		28.695183, 32.782833, 36.060833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.128607, 33.301167, 35.743923>,  <28.080166, 32.489090, 35.901249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.128607, 33.301167, 35.743923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.491529, 33.133591, 35.729568>,  <28.709282, 33.033047, 35.720955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.491529, 33.133591, 35.729568>,  <28.128607, 33.301167, 35.743923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.491529, 33.133591, 35.729568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027484, 0.144259, -0.989158,
		0.419573, 0.896482, 0.142401,
		0.907306, -0.418938, -0.035888,
		28.763721, 33.007908, 35.718803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.412798, 33.797127, 35.273323>,  <28.128607, 33.301167, 35.743923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.412798, 33.797127, 35.273323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.608046, 33.449051, 35.300190>,  <28.725195, 33.240204, 35.316311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.608046, 33.449051, 35.300190>,  <28.412798, 33.797127, 35.273323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.608046, 33.449051, 35.300190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291061, 0.089747, -0.952486,
		0.822814, 0.484477, 0.297085,
		0.488120, -0.870188, 0.067167,
		28.754482, 33.187996, 35.320339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.094860, 33.877934, 34.872814>,  <28.412798, 33.797127, 35.273323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.094860, 33.877934, 34.872814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.998465, 33.489723, 34.872608>,  <28.940626, 33.256798, 34.872482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.998465, 33.489723, 34.872608>,  <29.094860, 33.877934, 34.872814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.998465, 33.489723, 34.872608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240268, -0.059142, -0.968903,
		0.940317, -0.233621, 0.247439,
		-0.240990, -0.970528, -0.000519,
		28.926167, 33.198566, 34.872452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.583496, 33.723396, 34.508839>,  <29.094860, 33.877934, 34.872814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.583496, 33.723396, 34.508839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.311472, 33.430168, 34.504410>,  <29.148258, 33.254230, 34.501751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.311472, 33.430168, 34.504410>,  <29.583496, 33.723396, 34.508839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.311472, 33.430168, 34.504410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080592, -0.059734, -0.994956,
		0.728714, -0.677521, 0.099703,
		-0.680059, -0.733074, -0.011074,
		29.107454, 33.210247, 34.501087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.901230, 33.096455, 34.225590>,  <29.583496, 33.723396, 34.508839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.901230, 33.096455, 34.225590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.502905, 33.083401, 34.191422>,  <29.263910, 33.075569, 34.170921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.502905, 33.083401, 34.191422>,  <29.901230, 33.096455, 34.225590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.502905, 33.083401, 34.191422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085175, 0.008811, -0.996327,
		0.033268, -0.999429, -0.005994,
		-0.995810, -0.032635, -0.085420,
		29.204163, 33.073608, 34.165794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.913208, 32.778339, 33.663757>,  <29.901230, 33.096455, 34.225590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.913208, 32.778339, 33.663757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.538963, 32.912781, 33.706959>,  <29.314417, 32.993446, 33.732880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.538963, 32.912781, 33.706959>,  <29.913208, 32.778339, 33.663757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.538963, 32.912781, 33.706959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106175, 0.023861, -0.994061,
		-0.336682, -0.941523, 0.013361,
		-0.935613, 0.336101, 0.108000,
		29.258280, 33.013611, 33.739357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.533344, 32.513454, 33.207970>,  <29.913208, 32.778339, 33.663757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.533344, 32.513454, 33.207970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.320326, 32.844360, 33.279552>,  <29.192514, 33.042904, 33.322502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.320326, 32.844360, 33.279552>,  <29.533344, 32.513454, 33.207970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.320326, 32.844360, 33.279552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111705, 0.278278, -0.953983,
		-0.838997, -0.488049, -0.240605,
		-0.532546, 0.827266, 0.178957,
		29.160563, 33.092541, 33.333241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.143429, 32.209057, 32.585239>,  <29.533344, 32.513454, 33.207970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.143429, 32.209057, 32.585239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.110519, 31.843718, 32.744755>,  <29.090773, 31.624516, 32.840462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.110519, 31.843718, 32.744755>,  <29.143429, 32.209057, 32.585239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.110519, 31.843718, 32.744755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910067, -0.094242, -0.403604,
		0.406212, -0.396129, -0.823452,
		-0.082276, -0.913345, 0.398786,
		29.085836, 31.569714, 32.864391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.913933, 31.750771, 32.151684>,  <29.143429, 32.209057, 32.585239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.913933, 31.750771, 32.151684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.811846, 31.539801, 32.475830>,  <28.750593, 31.413219, 32.670319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.811846, 31.539801, 32.475830>,  <28.913933, 31.750771, 32.151684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.811846, 31.539801, 32.475830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937316, -0.070721, -0.341230,
		0.237283, -0.846653, -0.476314,
		-0.255218, -0.527424, 0.810362,
		28.735281, 31.381573, 32.718941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.589460, 31.605165, 31.790560>,  <28.913933, 31.750771, 32.151684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.589460, 31.605165, 31.790560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.713902, 31.984560, 31.814535>,  <29.788567, 32.212196, 31.828920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.713902, 31.984560, 31.814535>,  <29.589460, 31.605165, 31.790560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.713902, 31.984560, 31.814535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946323, -0.314977, 0.072539,
		0.087681, 0.034154, -0.995563,
		0.311102, 0.948484, 0.059938,
		29.807232, 32.269104, 31.832516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.253769, 31.647402, 31.454395>,  <29.589460, 31.605165, 31.790560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.253769, 31.647402, 31.454395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.233797, 31.935778, 31.730873>,  <30.221813, 32.108803, 31.896759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.233797, 31.935778, 31.730873>,  <30.253769, 31.647402, 31.454395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.233797, 31.935778, 31.730873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882646, -0.292004, 0.368333,
		0.467378, 0.628472, -0.621756,
		-0.049932, 0.720941, 0.691195,
		30.218817, 32.152061, 31.938232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.807566, 32.072258, 31.468473>,  <30.253769, 31.647402, 31.454395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.807566, 32.072258, 31.468473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.726534, 32.058998, 31.859955>,  <30.677916, 32.051041, 32.094845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.726534, 32.058998, 31.859955>,  <30.807566, 32.072258, 31.468473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.726534, 32.058998, 31.859955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923973, -0.337550, 0.179816,
		0.324400, 0.940724, 0.099013,
		-0.202579, -0.033153, 0.978705,
		30.665760, 32.049053, 32.153564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.301903, 32.454308, 31.992910>,  <30.807566, 32.072258, 31.468473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.301903, 32.454308, 31.992910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.126137, 32.150875, 32.185356>,  <31.020678, 31.968815, 32.300823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.126137, 32.150875, 32.185356>,  <31.301903, 32.454308, 31.992910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.126137, 32.150875, 32.185356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893001, -0.426896, 0.142507,
		0.097283, 0.492255, 0.864998,
		-0.439414, -0.758581, 0.481114,
		30.994312, 31.923302, 32.329689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.666121, 32.359688, 32.636662>,  <31.301903, 32.454308, 31.992910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.666121, 32.359688, 32.636662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.483313, 32.012180, 32.560383>,  <31.373627, 31.803675, 32.514618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.483313, 32.012180, 32.560383>,  <31.666121, 32.359688, 32.636662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.483313, 32.012180, 32.560383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767786, -0.493568, 0.408528,
		-0.449038, 0.040295, 0.892604,
		-0.457022, -0.868773, -0.190693,
		31.346207, 31.751549, 32.503174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.548359, 31.899277, 33.184765>,  <31.666121, 32.359688, 32.636662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.548359, 31.899277, 33.184765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.596498, 31.677748, 32.855209>,  <31.625383, 31.544830, 32.657475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.596498, 31.677748, 32.855209>,  <31.548359, 31.899277, 33.184765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.596498, 31.677748, 32.855209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668395, -0.568422, 0.479734,
		-0.734005, -0.608420, 0.301764,
		0.120351, -0.553825, -0.823890,
		31.632605, 31.511600, 32.608044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.262938, 31.174225, 33.326107>,  <31.548359, 31.899277, 33.184765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.262938, 31.174225, 33.326107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.567137, 31.257689, 33.080147>,  <31.749657, 31.307766, 32.932571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.567137, 31.257689, 33.080147>,  <31.262938, 31.174225, 33.326107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.567137, 31.257689, 33.080147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615223, -0.534450, 0.579539,
		-0.207708, -0.819039, -0.534819,
		0.760499, 0.208658, -0.614901,
		31.795286, 31.320286, 32.895676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.662697, 30.526407, 33.132454>,  <31.262938, 31.174225, 33.326107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.662697, 30.526407, 33.132454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.889105, 30.855976, 33.121342>,  <32.024948, 31.053719, 33.114674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.889105, 30.855976, 33.121342>,  <31.662697, 30.526407, 33.132454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.889105, 30.855976, 33.121342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679636, -0.447294, 0.581397,
		0.466601, -0.347963, -0.813145,
		0.566020, 0.823923, -0.027780,
		32.058910, 31.103153, 33.113007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.244030, 30.278708, 32.979630>,  <31.662697, 30.526407, 33.132454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.244030, 30.278708, 32.979630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.276173, 30.624033, 33.178921>,  <32.295460, 30.831228, 33.298496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.276173, 30.624033, 33.178921>,  <32.244030, 30.278708, 32.979630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.276173, 30.624033, 33.178921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684564, -0.411120, 0.601957,
		0.724510, 0.292699, -0.624029,
		0.080359, 0.863312, 0.498232,
		32.300282, 30.883026, 33.328392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.965630, 30.309454, 32.788116>,  <32.244030, 30.278708, 32.979630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.965630, 30.309454, 32.788116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166527, 30.642088, 32.693275>,  <33.287064, 30.841669, 32.636372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166527, 30.642088, 32.693275>,  <32.965630, 30.309454, 32.788116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.166527, 30.642088, 32.693275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669354, 0.547464, 0.502243,
		0.547464, -0.093541, 0.831584,
		-0.502243, -0.831584, 0.237106,
		33.317200, 30.891563, 32.622143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289295, 30.773066, 33.338882>,  <32.965630, 30.309454, 32.788116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.289295, 30.773066, 33.338882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.124855, 30.987404, 33.043892>,  <33.026192, 31.116007, 32.866898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.124855, 30.987404, 33.043892>,  <33.289295, 30.773066, 33.338882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124855, 30.987404, 33.043892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704656, 0.326439, 0.629998,
		0.578322, 0.778656, 0.243390,
		-0.411100, 0.535848, -0.737472,
		33.001526, 31.148159, 32.822651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669441, 30.486994, 33.916065>,  <33.289295, 30.773066, 33.338882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669441, 30.486994, 33.916065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501904, 30.375185, 33.570480>,  <33.401379, 30.308100, 33.363129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501904, 30.375185, 33.570480>,  <33.669441, 30.486994, 33.916065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501904, 30.375185, 33.570480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641280, 0.582568, -0.499373,
		0.642904, -0.763204, -0.064755,
		-0.418848, -0.279523, -0.863963,
		33.376247, 30.291328, 33.311291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.107021, 30.273470, 34.534443>,  <33.669441, 30.486994, 33.916065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.107021, 30.273470, 34.534443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.272938, 30.442097, 34.856991>,  <34.372486, 30.543274, 35.050518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.272938, 30.442097, 34.856991>,  <34.107021, 30.273470, 34.534443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.272938, 30.442097, 34.856991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748692, 0.345513, -0.565758,
		-0.517116, 0.838392, -0.172309,
		0.414792, 0.421568, 0.806367,
		34.397377, 30.568567, 35.098900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170414, 30.974577, 34.493790>,  <34.107021, 30.273470, 34.534443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170414, 30.974577, 34.493790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464813, 30.805965, 34.705685>,  <34.641453, 30.704800, 34.832821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464813, 30.805965, 34.705685>,  <34.170414, 30.974577, 34.493790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464813, 30.805965, 34.705685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644020, 0.194760, -0.739802,
		0.208674, 0.885654, 0.414815,
		0.735998, -0.421527, 0.529738,
		34.685612, 30.679508, 34.864605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.563362, 31.524017, 34.305794>,  <34.170414, 30.974577, 34.493790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.563362, 31.524017, 34.305794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.718647, 31.166443, 34.395386>,  <34.811817, 30.951899, 34.449142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.718647, 31.166443, 34.395386>,  <34.563362, 31.524017, 34.305794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.718647, 31.166443, 34.395386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707327, 0.133232, -0.694217,
		0.590745, 0.427932, 0.684028,
		0.388212, -0.893937, 0.223982,
		34.835110, 30.898262, 34.462582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372101, 31.549660, 34.507961>,  <34.563362, 31.524017, 34.305794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372101, 31.549660, 34.507961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.203560, 31.236612, 34.324673>,  <35.102436, 31.048784, 34.214699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.203560, 31.236612, 34.324673>,  <35.372101, 31.549660, 34.507961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203560, 31.236612, 34.324673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755775, -0.023747, -0.654400,
		0.501266, -0.622046, 0.601491,
		-0.421351, -0.782621, -0.458223,
		35.077156, 31.001825, 34.187206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.870975, 31.075949, 34.240044>,  <35.372101, 31.549660, 34.507961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.870975, 31.075949, 34.240044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.542107, 30.965471, 34.040947>,  <35.344784, 30.899185, 33.921490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.542107, 30.965471, 34.040947>,  <35.870975, 31.075949, 34.240044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.542107, 30.965471, 34.040947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555037, -0.194853, -0.808682,
		0.126366, -0.941142, 0.313500,
		-0.822171, -0.276194, -0.497746,
		35.295456, 30.882612, 33.891624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789536, 30.359980, 33.985493>,  <35.870975, 31.075949, 34.240044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789536, 30.359980, 33.985493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.634731, 30.590841, 33.697849>,  <35.541851, 30.729359, 33.525261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.634731, 30.590841, 33.697849>,  <35.789536, 30.359980, 33.985493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634731, 30.590841, 33.697849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589306, -0.445004, -0.674307,
		-0.709185, -0.684738, -0.167899,
		-0.387008, 0.577152, -0.719110,
		35.518627, 30.763987, 33.482117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.726307, 29.926699, 33.460331>,  <35.789536, 30.359980, 33.985493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.726307, 29.926699, 33.460331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.687027, 30.278687, 33.274422>,  <35.663460, 30.489880, 33.162876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.687027, 30.278687, 33.274422>,  <35.726307, 29.926699, 33.460331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687027, 30.278687, 33.274422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451923, -0.376660, -0.808637,
		-0.886635, -0.289451, -0.360688,
		-0.098204, 0.879969, -0.464769,
		35.657566, 30.542677, 33.134991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416378, 29.689098, 32.835617>,  <35.726307, 29.926699, 33.460331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416378, 29.689098, 32.835617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.591824, 30.046234, 32.794720>,  <35.697090, 30.260515, 32.770184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.591824, 30.046234, 32.794720>,  <35.416378, 29.689098, 32.835617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.591824, 30.046234, 32.794720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361743, -0.279555, -0.889377,
		-0.822652, 0.353111, -0.445596,
		0.438618, 0.892839, -0.102241,
		35.723408, 30.314085, 32.764046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.214527, 29.943695, 32.285309>,  <35.416378, 29.689098, 32.835617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.214527, 29.943695, 32.285309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569172, 30.115337, 32.354343>,  <35.781960, 30.218323, 32.395763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569172, 30.115337, 32.354343>,  <35.214527, 29.943695, 32.285309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569172, 30.115337, 32.354343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309730, -0.273741, -0.910568,
		-0.343486, 0.860776, -0.375609,
		0.886614, 0.429104, 0.172582,
		35.835155, 30.244068, 32.406116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282841, 30.261211, 31.664145>,  <35.214527, 29.943695, 32.285309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282841, 30.261211, 31.664145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.640331, 30.237366, 31.841995>,  <35.854828, 30.223059, 31.948706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.640331, 30.237366, 31.841995>,  <35.282841, 30.261211, 31.664145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640331, 30.237366, 31.841995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394952, -0.365470, -0.842879,
		0.212746, 0.928912, -0.303087,
		0.893729, -0.059614, 0.444628,
		35.908451, 30.219482, 31.975384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672714, 30.503061, 31.223637>,  <35.282841, 30.261211, 31.664145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672714, 30.503061, 31.223637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.939163, 30.308344, 31.449667>,  <36.099033, 30.191513, 31.585285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.939163, 30.308344, 31.449667>,  <35.672714, 30.503061, 31.223637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.939163, 30.308344, 31.449667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478073, -0.302850, -0.824456,
		0.572474, 0.819337, 0.030988,
		0.666123, -0.486794, 0.565077,
		36.139000, 30.162306, 31.619190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306240, 30.608168, 30.876453>,  <35.672714, 30.503061, 31.223637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306240, 30.608168, 30.876453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.360950, 30.301424, 31.127283>,  <36.393776, 30.117378, 31.277781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.360950, 30.301424, 31.127283>,  <36.306240, 30.608168, 30.876453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360950, 30.301424, 31.127283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497236, -0.494351, -0.713003,
		0.856767, 0.409324, 0.313696,
		0.136773, -0.766858, 0.627074,
		36.401981, 30.071367, 31.315405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959854, 30.453466, 30.827221>,  <36.306240, 30.608168, 30.876453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959854, 30.453466, 30.827221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.812519, 30.113031, 30.976879>,  <36.724117, 29.908772, 31.066673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.812519, 30.113031, 30.976879>,  <36.959854, 30.453466, 30.827221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.812519, 30.113031, 30.976879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472233, -0.517930, -0.713263,
		0.800828, -0.086036, 0.592682,
		-0.368334, -0.851085, 0.374144,
		36.702019, 29.857706, 31.089123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461983, 30.037710, 30.687256>,  <36.959854, 30.453466, 30.827221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461983, 30.037710, 30.687256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.147907, 29.794647, 30.734974>,  <36.959461, 29.648809, 30.763605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.147907, 29.794647, 30.734974>,  <37.461983, 30.037710, 30.687256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147907, 29.794647, 30.734974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477714, -0.716956, -0.507704,
		0.394039, -0.341654, 0.853232,
		-0.785190, -0.607656, 0.119296,
		36.912350, 29.612350, 30.770763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773682, 29.552319, 30.949934>,  <37.461983, 30.037710, 30.687256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.773682, 29.552319, 30.949934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.434032, 29.396065, 30.807724>,  <37.230244, 29.302313, 30.722399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.434032, 29.396065, 30.807724>,  <37.773682, 29.552319, 30.949934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.434032, 29.396065, 30.807724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516875, -0.475891, -0.711596,
		0.108784, -0.787992, 0.605998,
		-0.849121, -0.390635, -0.355524,
		37.179295, 29.278873, 30.701067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956619, 28.843197, 30.874828>,  <37.773682, 29.552319, 30.949934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.956619, 28.843197, 30.874828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.654072, 28.940876, 30.632084>,  <37.472546, 28.999483, 30.486437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.654072, 28.940876, 30.632084>,  <37.956619, 28.843197, 30.874828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654072, 28.940876, 30.632084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524807, -0.327272, -0.785793,
		-0.390497, -0.912831, 0.119381,
		-0.756367, 0.244198, -0.606859,
		37.427162, 29.014135, 30.450026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066940, 28.368324, 30.361057>,  <37.956619, 28.843197, 30.874828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066940, 28.368324, 30.361057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.800804, 28.610184, 30.185913>,  <37.641121, 28.755299, 30.080828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.800804, 28.610184, 30.185913>,  <38.066940, 28.368324, 30.361057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800804, 28.610184, 30.185913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360457, -0.253428, -0.897689,
		-0.653753, -0.755098, -0.049334,
		-0.665340, 0.604650, -0.437859,
		37.601200, 28.791578, 30.054556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807709, 27.931343, 29.896917>,  <38.066940, 28.368324, 30.361057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807709, 27.931343, 29.896917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.743572, 28.307173, 29.775927>,  <37.705090, 28.532671, 29.703331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.743572, 28.307173, 29.775927>,  <37.807709, 27.931343, 29.896917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743572, 28.307173, 29.775927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290869, -0.247858, -0.924101,
		-0.943231, -0.236156, -0.233549,
		-0.160345, 0.939573, -0.302478,
		37.695469, 28.589045, 29.685183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581310, 27.915400, 29.119196>,  <37.807709, 27.931343, 29.896917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.581310, 27.915400, 29.119196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.663940, 28.303598, 29.168934>,  <37.713516, 28.536518, 29.198776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.663940, 28.303598, 29.168934>,  <37.581310, 27.915400, 29.119196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.663940, 28.303598, 29.168934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372138, 0.039604, -0.927332,
		-0.904898, 0.237835, -0.352978,
		0.206572, 0.970498, 0.124345,
		37.725914, 28.594748, 29.206238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.190979, 28.339151, 28.716011>,  <37.581310, 27.915400, 29.119196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.190979, 28.339151, 28.716011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.533356, 28.543592, 28.747343>,  <37.738781, 28.666256, 28.766142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.533356, 28.543592, 28.747343>,  <37.190979, 28.339151, 28.716011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.533356, 28.543592, 28.747343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099764, -0.014602, -0.994904,
		-0.507353, 0.859397, -0.063488,
		0.855944, 0.511101, 0.078328,
		37.790138, 28.696922, 28.770842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202660, 28.772348, 28.140873>,  <37.190979, 28.339151, 28.716011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.202660, 28.772348, 28.140873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.585758, 28.803564, 28.251608>,  <37.815617, 28.822292, 28.318048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.585758, 28.803564, 28.251608>,  <37.202660, 28.772348, 28.140873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585758, 28.803564, 28.251608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268256, 0.104901, -0.957619,
		-0.103772, 0.991416, 0.079534,
		0.957742, 0.078038, 0.276839,
		37.873081, 28.826975, 28.334660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528706, 29.301868, 27.692249>,  <37.202660, 28.772348, 28.140873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528706, 29.301868, 27.692249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823879, 29.072027, 27.833832>,  <38.000984, 28.934122, 27.918781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823879, 29.072027, 27.833832>,  <37.528706, 29.301868, 27.692249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823879, 29.072027, 27.833832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417851, -0.022843, -0.908228,
		0.529954, 0.818115, 0.223241,
		0.737936, -0.574601, 0.353956,
		38.045261, 28.899647, 27.940018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097122, 29.543980, 27.243795>,  <37.528706, 29.301868, 27.692249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.097122, 29.543980, 27.243795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219337, 29.196001, 27.398632>,  <38.292667, 28.987213, 27.491533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219337, 29.196001, 27.398632>,  <38.097122, 29.543980, 27.243795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219337, 29.196001, 27.398632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559771, -0.164757, -0.812103,
		0.770263, 0.464808, 0.436633,
		0.305534, -0.869948, 0.387092,
		38.310997, 28.935017, 27.514759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799908, 29.609255, 26.943100>,  <38.097122, 29.543980, 27.243795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.799908, 29.609255, 26.943100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.703896, 29.237755, 27.056101>,  <38.646290, 29.014854, 27.123901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.703896, 29.237755, 27.056101>,  <38.799908, 29.609255, 26.943100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.703896, 29.237755, 27.056101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458850, -0.364993, -0.810084,
		0.855479, -0.064816, 0.513766,
		-0.240027, -0.928751, 0.282503,
		38.631889, 28.959129, 27.140852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.383827, 29.151943, 26.970583>,  <38.799908, 29.609255, 26.943100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.383827, 29.151943, 26.970583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.062893, 28.920830, 26.910679>,  <38.870335, 28.782162, 26.874737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.062893, 28.920830, 26.910679>,  <39.383827, 29.151943, 26.970583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.062893, 28.920830, 26.910679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441645, -0.405894, -0.800125,
		0.401514, -0.708106, 0.580838,
		-0.802332, -0.577785, -0.149759,
		38.822193, 28.747494, 26.865751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.675690, 28.675480, 26.623051>,  <39.383827, 29.151943, 26.970583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.675690, 28.675480, 26.623051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.290653, 28.592915, 26.552830>,  <39.059631, 28.543375, 26.510696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.290653, 28.592915, 26.552830>,  <39.675690, 28.675480, 26.623051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.290653, 28.592915, 26.552830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224368, -0.243885, -0.943493,
		0.151936, -0.947583, 0.281073,
		-0.962588, -0.206414, -0.175552,
		39.001877, 28.530991, 26.500164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.671787, 28.214504, 26.128635>,  <39.675690, 28.675480, 26.623051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.671787, 28.214504, 26.128635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.290184, 28.329399, 26.094328>,  <39.061222, 28.398336, 26.073744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.290184, 28.329399, 26.094328>,  <39.671787, 28.214504, 26.128635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.290184, 28.329399, 26.094328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038617, -0.401495, -0.915047,
		-0.297272, -0.869653, 0.394123,
		-0.954011, 0.287238, -0.085769,
		39.003979, 28.415571, 26.068598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307991, 27.654341, 25.882235>,  <39.671787, 28.214504, 26.128635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.307991, 27.654341, 25.882235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.095123, 27.974873, 25.772934>,  <38.967403, 28.167191, 25.707354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.095123, 27.974873, 25.772934>,  <39.307991, 27.654341, 25.882235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.095123, 27.974873, 25.772934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086792, -0.372686, -0.923890,
		-0.842177, -0.467950, 0.267881,
		-0.532170, 0.801329, -0.273253,
		38.935471, 28.215271, 25.690958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994598, 27.311207, 25.443922>,  <39.307991, 27.654341, 25.882235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994598, 27.311207, 25.443922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.900204, 27.693323, 25.372669>,  <38.843567, 27.922592, 25.329918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.900204, 27.693323, 25.372669>,  <38.994598, 27.311207, 25.443922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900204, 27.693323, 25.372669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030269, -0.190448, -0.981231,
		-0.971286, -0.226161, 0.073859,
		-0.235983, 0.955291, -0.178133,
		38.829411, 27.979910, 25.319229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411564, 27.380100, 24.907152>,  <38.994598, 27.311207, 25.443922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411564, 27.380100, 24.907152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.658371, 27.694855, 24.911188>,  <38.806454, 27.883707, 24.913610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.658371, 27.694855, 24.911188>,  <38.411564, 27.380100, 24.907152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.658371, 27.694855, 24.911188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145017, -0.101091, -0.984251,
		-0.773475, 0.608761, -0.176487,
		0.617015, 0.786887, 0.010089,
		38.843475, 27.930922, 24.914215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227356, 27.689302, 24.341448>,  <38.411564, 27.380100, 24.907152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227356, 27.689302, 24.341448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.570942, 27.879982, 24.416218>,  <38.777092, 27.994389, 24.461081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.570942, 27.879982, 24.416218>,  <38.227356, 27.689302, 24.341448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570942, 27.879982, 24.416218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149566, 0.115555, -0.981976,
		-0.489706, 0.871439, 0.027959,
		0.858963, 0.476697, 0.186926,
		38.828632, 28.022991, 24.472296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292446, 28.219217, 23.904417>,  <38.227356, 27.689302, 24.341448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292446, 28.219217, 23.904417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.681133, 28.195185, 23.995758>,  <38.914345, 28.180765, 24.050564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.681133, 28.195185, 23.995758>,  <38.292446, 28.219217, 23.904417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.681133, 28.195185, 23.995758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234701, 0.139691, -0.961978,
		0.025897, 0.988371, 0.149842,
		0.971723, -0.060080, 0.228354,
		38.972649, 28.177160, 24.064264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583641, 28.779732, 23.502884>,  <38.292446, 28.219217, 23.904417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.583641, 28.779732, 23.502884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.858559, 28.507174, 23.603550>,  <39.023510, 28.343639, 23.663950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.858559, 28.507174, 23.603550>,  <38.583641, 28.779732, 23.502884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.858559, 28.507174, 23.603550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383096, 0.045668, -0.922579,
		0.617147, 0.730490, 0.292427,
		0.687290, -0.681394, 0.251664,
		39.064747, 28.302755, 23.679049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257679, 29.004648, 23.330093>,  <38.583641, 28.779732, 23.502884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.257679, 29.004648, 23.330093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.318886, 28.609739, 23.347435>,  <39.355610, 28.372793, 23.357840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.318886, 28.609739, 23.347435>,  <39.257679, 29.004648, 23.330093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.318886, 28.609739, 23.347435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329112, 0.009546, -0.944243,
		0.931811, 0.158751, 0.326384,
		0.153015, -0.987272, 0.043352,
		39.364792, 28.313557, 23.360441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.077522, 28.906820, 23.267841>,  <39.257679, 29.004648, 23.330093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.077522, 28.906820, 23.267841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.899418, 28.565557, 23.159128>,  <39.792553, 28.360800, 23.093901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.899418, 28.565557, 23.159128>,  <40.077522, 28.906820, 23.267841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.899418, 28.565557, 23.159128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494406, 0.018805, -0.869028,
		0.746527, -0.521318, 0.413432,
		-0.445265, -0.853155, -0.271781,
		39.765839, 28.309610, 23.077595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.628143, 28.388577, 23.000069>,  <40.077522, 28.906820, 23.267841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.628143, 28.388577, 23.000069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.282879, 28.286871, 22.825577>,  <40.075718, 28.225847, 22.720881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.282879, 28.286871, 22.825577>,  <40.628143, 28.388577, 23.000069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.282879, 28.286871, 22.825577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462142, -0.049802, -0.885406,
		0.203401, -0.965852, 0.160493,
		-0.863164, -0.254263, -0.436231,
		40.023930, 28.210592, 22.694708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.698170, 27.912525, 22.358181>,  <40.628143, 28.388577, 23.000069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.698170, 27.912525, 22.358181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.331551, 28.057995, 22.291626>,  <40.111580, 28.145277, 22.251692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.331551, 28.057995, 22.291626>,  <40.698170, 27.912525, 22.358181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.331551, 28.057995, 22.291626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284355, 0.300038, -0.910560,
		-0.281224, -0.881883, -0.378412,
		-0.916545, 0.363675, -0.166390,
		40.056587, 28.167097, 22.241709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.525238, 27.616774, 21.668547>,  <40.698170, 27.912525, 22.358181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.525238, 27.616774, 21.668547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.252602, 27.905787, 21.714813>,  <40.089020, 28.079193, 21.742573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.252602, 27.905787, 21.714813>,  <40.525238, 27.616774, 21.668547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.252602, 27.905787, 21.714813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049794, 0.203506, -0.977807,
		-0.730035, -0.660707, -0.174686,
		-0.681594, 0.722531, 0.115667,
		40.048122, 28.122545, 21.749514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871964, 27.481899, 21.245089>,  <40.525238, 27.616774, 21.668547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.871964, 27.481899, 21.245089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.906181, 27.875757, 21.305956>,  <39.926712, 28.112072, 21.342476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.906181, 27.875757, 21.305956>,  <39.871964, 27.481899, 21.245089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.906181, 27.875757, 21.305956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011882, 0.151708, -0.988354,
		-0.996264, 0.086354, 0.001278,
		0.085542, 0.984646, 0.152167,
		39.931843, 28.171150, 21.351606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.418407, 27.763767, 20.834984>,  <39.871964, 27.481899, 21.245089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.418407, 27.763767, 20.834984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.688622, 28.050573, 20.903734>,  <39.850750, 28.222656, 20.944984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.688622, 28.050573, 20.903734>,  <39.418407, 27.763767, 20.834984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.688622, 28.050573, 20.903734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048735, 0.276019, -0.959916,
		-0.735716, 0.640080, 0.221404,
		0.675535, 0.717015, 0.171877,
		39.891281, 28.265678, 20.955297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076977, 28.334879, 20.466919>,  <39.418407, 27.763767, 20.834984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.076977, 28.334879, 20.466919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.464512, 28.399771, 20.541798>,  <39.697033, 28.438705, 20.586725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.464512, 28.399771, 20.541798>,  <39.076977, 28.334879, 20.466919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.464512, 28.399771, 20.541798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114633, 0.376299, -0.919379,
		-0.219591, 0.912185, 0.345975,
		0.968834, 0.162227, 0.187198,
		39.755161, 28.448439, 20.597958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.096027, 29.064011, 20.238642>,  <39.076977, 28.334879, 20.466919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.096027, 29.064011, 20.238642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.482948, 28.963406, 20.251699>,  <39.715103, 28.903044, 20.259535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.482948, 28.963406, 20.251699>,  <39.096027, 29.064011, 20.238642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.482948, 28.963406, 20.251699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141997, 0.430420, -0.891390,
		0.210143, 0.866880, 0.452060,
		0.967304, -0.251510, 0.032644,
		39.773140, 28.887953, 20.261494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.449875, 29.534296, 19.849667>,  <39.096027, 29.064011, 20.238642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.449875, 29.534296, 19.849667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.726925, 29.245779, 19.849581>,  <39.893154, 29.072668, 19.849529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.726925, 29.245779, 19.849581>,  <39.449875, 29.534296, 19.849667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726925, 29.245779, 19.849581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275156, 0.264495, -0.924300,
		0.666749, 0.640138, 0.381666,
		0.692629, -0.721294, -0.000214,
		39.934715, 29.029390, 19.849516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.008915, 29.913986, 19.589367>,  <39.449875, 29.534296, 19.849667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.008915, 29.913986, 19.589367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.075520, 29.520926, 19.556690>,  <40.115482, 29.285089, 19.537085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.075520, 29.520926, 19.556690>,  <40.008915, 29.913986, 19.589367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.075520, 29.520926, 19.556690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267184, 0.124709, -0.955542,
		0.949151, 0.137279, 0.283313,
		0.166507, -0.982651, -0.081689,
		40.125473, 29.226130, 19.532183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.643349, 29.862314, 19.294201>,  <40.008915, 29.913986, 19.589367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.643349, 29.862314, 19.294201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.439220, 29.531498, 19.199903>,  <40.316742, 29.333008, 19.143324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.439220, 29.531498, 19.199903>,  <40.643349, 29.862314, 19.294201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.439220, 29.531498, 19.199903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225497, 0.135848, -0.964726,
		0.829891, -0.545484, 0.117168,
		-0.510325, -0.827039, -0.235745,
		40.286121, 29.283386, 19.129181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.096317, 29.539549, 18.880159>,  <40.643349, 29.862314, 19.294201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.096317, 29.539549, 18.880159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.747162, 29.357920, 18.808729>,  <40.537670, 29.248941, 18.765871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.747162, 29.357920, 18.808729>,  <41.096317, 29.539549, 18.880159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.747162, 29.357920, 18.808729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200686, -0.000514, -0.979655,
		0.444744, -0.890964, 0.091574,
		-0.872885, -0.454074, -0.178576,
		40.485298, 29.221697, 18.755156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.294800, 29.003719, 18.374891>,  <41.096317, 29.539549, 18.880159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.294800, 29.003719, 18.374891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.907764, 29.104305, 18.384211>,  <40.675545, 29.164658, 18.389803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.907764, 29.104305, 18.384211>,  <41.294800, 29.003719, 18.374891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.907764, 29.104305, 18.384211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047542, 0.271988, -0.961125,
		-0.248028, -0.928863, -0.275127,
		-0.967586, 0.251466, 0.023301,
		40.617489, 29.179745, 18.391201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.148663, 28.821568, 17.686884>,  <41.294800, 29.003719, 18.374891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.148663, 28.821568, 17.686884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.837936, 29.046574, 17.800110>,  <40.651501, 29.181578, 17.868046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.837936, 29.046574, 17.800110>,  <41.148663, 28.821568, 17.686884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.837936, 29.046574, 17.800110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053488, 0.506822, -0.860390,
		-0.627447, -0.653227, -0.423797,
		-0.776819, 0.562517, 0.283064,
		40.604889, 29.215328, 17.885029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.627762, 28.815735, 17.134108>,  <41.148663, 28.821568, 17.686884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.627762, 28.815735, 17.134108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.629642, 29.142138, 17.365318>,  <40.630772, 29.337978, 17.504044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.629642, 29.142138, 17.365318>,  <40.627762, 28.815735, 17.134108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.629642, 29.142138, 17.365318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082937, 0.575722, -0.813428,
		-0.996544, 0.051761, -0.064972,
		0.004698, 0.816006, 0.578025,
		40.631050, 29.386940, 17.538725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.201607, 28.332455, 16.829185>,  <40.627762, 28.815735, 17.134108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.201607, 28.332455, 16.829185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.944321, 28.626734, 16.914059>,  <39.789948, 28.803301, 16.964983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.944321, 28.626734, 16.914059>,  <40.201607, 28.332455, 16.829185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.944321, 28.626734, 16.914059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205543, 0.101038, -0.973418,
		-0.737580, -0.669731, 0.086229,
		-0.643217, 0.735698, 0.212183,
		39.751354, 28.847443, 16.977713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.532276, 28.279873, 16.470833>,  <40.201607, 28.332455, 16.829185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.532276, 28.279873, 16.470833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.636070, 28.658623, 16.546831>,  <39.698345, 28.885872, 16.592430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.636070, 28.658623, 16.546831>,  <39.532276, 28.279873, 16.470833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.636070, 28.658623, 16.546831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153187, 0.234601, -0.959946,
		-0.953520, 0.219986, 0.205924,
		0.259485, 0.946873, 0.189997,
		39.713917, 28.942684, 16.603830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056614, 28.626570, 16.111624>,  <39.532276, 28.279873, 16.470833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.056614, 28.626570, 16.111624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360088, 28.884253, 16.150379>,  <39.542175, 29.038862, 16.173632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360088, 28.884253, 16.150379>,  <39.056614, 28.626570, 16.111624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360088, 28.884253, 16.150379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149274, 0.316681, -0.936713,
		-0.634118, 0.696212, 0.336426,
		0.758691, 0.644206, 0.096887,
		39.587696, 29.077515, 16.179445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750210, 29.290262, 16.008131>,  <39.056614, 28.626570, 16.111624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750210, 29.290262, 16.008131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.129433, 29.231611, 15.895221>,  <39.356968, 29.196421, 15.827475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.129433, 29.231611, 15.895221>,  <38.750210, 29.290262, 16.008131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.129433, 29.231611, 15.895221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246162, 0.223821, -0.943031,
		0.201451, 0.963538, 0.176103,
		0.948062, -0.146625, -0.282276,
		39.413853, 29.187624, 15.810538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739304, 29.505085, 15.284866>,  <38.750210, 29.290262, 16.008131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.739304, 29.505085, 15.284866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.629532, 29.878662, 15.376469>,  <38.563667, 30.102808, 15.431430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.629532, 29.878662, 15.376469>,  <38.739304, 29.505085, 15.284866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.629532, 29.878662, 15.376469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152471, -0.277396, 0.948580,
		0.949443, 0.225400, 0.218524,
		-0.274428, 0.933941, 0.229005,
		38.547203, 30.158844, 15.445170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169048, 29.888416, 15.741767>,  <38.739304, 29.505085, 15.284866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.169048, 29.888416, 15.741767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.802307, 30.032780, 15.810025>,  <38.582260, 30.119398, 15.850980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.802307, 30.032780, 15.810025>,  <39.169048, 29.888416, 15.741767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.802307, 30.032780, 15.810025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108817, -0.185332, 0.976632,
		0.384101, 0.914000, 0.130650,
		-0.916856, 0.360909, 0.170645,
		38.527252, 30.141052, 15.861218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290268, 30.463346, 16.232090>,  <39.169048, 29.888416, 15.741767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.290268, 30.463346, 16.232090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.979706, 30.211430, 16.222725>,  <38.793369, 30.060280, 16.217106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.979706, 30.211430, 16.222725>,  <39.290268, 30.463346, 16.232090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.979706, 30.211430, 16.222725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192412, -0.272257, 0.942791,
		-0.600138, 0.727486, 0.332563,
		-0.776409, -0.629794, -0.023414,
		38.746784, 30.022491, 16.215700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638771, 30.784470, 16.571123>,  <39.290268, 30.463346, 16.232090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.638771, 30.784470, 16.571123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.702141, 30.390121, 16.592871>,  <38.740162, 30.153513, 16.605919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.702141, 30.390121, 16.592871>,  <38.638771, 30.784470, 16.571123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.702141, 30.390121, 16.592871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003928, 0.055694, 0.998440,
		-0.987363, -0.157968, 0.012696,
		0.158429, -0.985872, 0.054369,
		38.749668, 30.094360, 16.609182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061520, 30.401588, 16.887817>,  <38.638771, 30.784470, 16.571123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061520, 30.401588, 16.887817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.405163, 30.211136, 16.962894>,  <38.611351, 30.096865, 17.007940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.405163, 30.211136, 16.962894>,  <38.061520, 30.401588, 16.887817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.405163, 30.211136, 16.962894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209085, 0.008213, 0.977863,
		-0.467133, -0.879336, -0.092496,
		0.859110, -0.476132, 0.187692,
		38.662895, 30.068296, 17.019201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.663166, 30.050863, 17.370285>,  <38.061520, 30.401588, 16.887817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.663166, 30.050863, 17.370285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.062763, 30.052549, 17.388149>,  <38.302521, 30.053562, 17.398867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.062763, 30.052549, 17.388149>,  <37.663166, 30.050863, 17.370285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.062763, 30.052549, 17.388149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044706, 0.012070, 0.998927,
		0.003675, -0.999918, 0.012246,
		0.998993, 0.004219, 0.044658,
		38.362461, 30.053814, 17.401546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891834, 29.550165, 17.875635>,  <37.663166, 30.050863, 17.370285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.891834, 29.550165, 17.875635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.167046, 29.836916, 17.830557>,  <38.332172, 30.008966, 17.803509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.167046, 29.836916, 17.830557>,  <37.891834, 29.550165, 17.875635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.167046, 29.836916, 17.830557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026439, 0.179959, 0.983319,
		0.725199, -0.673575, 0.142771,
		0.688031, 0.716877, -0.112698,
		38.373455, 30.051979, 17.796747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252628, 29.548820, 18.392349>,  <37.891834, 29.550165, 17.875635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252628, 29.548820, 18.392349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.375134, 29.911835, 18.277399>,  <38.448635, 30.129642, 18.208429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.375134, 29.911835, 18.277399>,  <38.252628, 29.548820, 18.392349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375134, 29.911835, 18.277399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068271, 0.322042, 0.944261,
		0.949497, -0.269568, 0.160586,
		0.306258, 0.907536, -0.287375,
		38.467010, 30.184095, 18.191187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749245, 29.748322, 18.968622>,  <38.252628, 29.548820, 18.392349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.749245, 29.748322, 18.968622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.625946, 30.075617, 18.774521>,  <38.551968, 30.271994, 18.658060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.625946, 30.075617, 18.774521>,  <38.749245, 29.748322, 18.968622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.625946, 30.075617, 18.774521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006527, 0.508260, 0.861179,
		0.951283, 0.268625, -0.151330,
		-0.308249, 0.818238, -0.485253,
		38.533470, 30.321089, 18.628944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170044, 30.242104, 19.287512>,  <38.749245, 29.748322, 18.968622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.170044, 30.242104, 19.287512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.881203, 30.443308, 19.097544>,  <38.707897, 30.564032, 18.983562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.881203, 30.443308, 19.097544>,  <39.170044, 30.242104, 19.287512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881203, 30.443308, 19.097544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037277, 0.657221, 0.752776,
		0.690783, 0.561283, -0.455829,
		-0.722101, 0.503013, -0.474920,
		38.664574, 30.594212, 18.955069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320324, 30.938473, 19.206522>,  <39.170044, 30.242104, 19.287512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.320324, 30.938473, 19.206522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.921181, 30.913956, 19.215649>,  <38.681694, 30.899246, 19.221125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.921181, 30.913956, 19.215649>,  <39.320324, 30.938473, 19.206522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.921181, 30.913956, 19.215649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023309, 0.659290, 0.751528,
		-0.061106, 0.749387, -0.659307,
		-0.997859, -0.061291, 0.022819,
		38.621822, 30.895569, 19.222494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043842, 31.632818, 19.479403>,  <39.320324, 30.938473, 19.206522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.043842, 31.632818, 19.479403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.691635, 31.444372, 19.500347>,  <38.480312, 31.331305, 19.512913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.691635, 31.444372, 19.500347>,  <39.043842, 31.632818, 19.479403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.691635, 31.444372, 19.500347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261357, 0.574668, 0.775532,
		-0.395455, 0.669184, -0.629134,
		-0.880516, -0.471116, 0.052359,
		38.427479, 31.303038, 19.516054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.519630, 32.206928, 19.433825>,  <39.043842, 31.632818, 19.479403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.519630, 32.206928, 19.433825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.372959, 31.881853, 19.614969>,  <38.284958, 31.686808, 19.723656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.372959, 31.881853, 19.614969>,  <38.519630, 32.206928, 19.433825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.372959, 31.881853, 19.614969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243665, 0.553662, 0.796295,
		-0.897873, 0.181636, -0.401039,
		-0.366676, -0.812691, 0.452860,
		38.262955, 31.638046, 19.750828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845650, 32.318001, 19.616617>,  <38.519630, 32.206928, 19.433825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.845650, 32.318001, 19.616617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.931728, 32.027115, 19.877340>,  <37.983376, 31.852583, 20.033773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.931728, 32.027115, 19.877340>,  <37.845650, 32.318001, 19.616617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.931728, 32.027115, 19.877340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405238, 0.540773, 0.737121,
		-0.888523, -0.422760, -0.178325,
		0.215192, -0.727213, 0.651808,
		37.996284, 31.808950, 20.072884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277107, 32.254879, 20.027237>,  <37.845650, 32.318001, 19.616617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.277107, 32.254879, 20.027237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.548466, 32.067432, 20.253574>,  <37.711281, 31.954966, 20.389378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.548466, 32.067432, 20.253574>,  <37.277107, 32.254879, 20.027237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548466, 32.067432, 20.253574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349067, 0.472108, 0.809485,
		-0.646474, -0.746670, 0.156700,
		0.678397, -0.468613, 0.565843,
		37.751984, 31.926849, 20.423326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862152, 31.955849, 20.539124>,  <37.277107, 32.254879, 20.027237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862152, 31.955849, 20.539124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.243179, 31.985266, 20.657246>,  <37.471794, 32.002914, 20.728119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.243179, 31.985266, 20.657246>,  <36.862152, 31.955849, 20.539124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.243179, 31.985266, 20.657246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303399, 0.305057, 0.902712,
		-0.023697, -0.949490, 0.312900,
		0.952569, 0.073542, 0.295304,
		37.528950, 32.007328, 20.745836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.910488, 31.608393, 21.140015>,  <36.862152, 31.955849, 20.539124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.910488, 31.608393, 21.140015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.248657, 31.821373, 21.156815>,  <37.451557, 31.949162, 21.166895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.248657, 31.821373, 21.156815>,  <36.910488, 31.608393, 21.140015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248657, 31.821373, 21.156815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083535, 0.054144, 0.995033,
		0.527531, -0.844728, 0.090253,
		0.845419, 0.532450, 0.042002,
		37.502281, 31.981108, 21.169415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310349, 31.419844, 21.668396>,  <36.910488, 31.608393, 21.140015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310349, 31.419844, 21.668396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.444263, 31.794790, 21.629904>,  <37.524612, 32.019760, 21.606808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.444263, 31.794790, 21.629904>,  <37.310349, 31.419844, 21.668396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.444263, 31.794790, 21.629904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169758, 0.040454, 0.984655,
		0.926876, -0.345986, -0.145582,
		0.334787, 0.937367, -0.096230,
		37.544701, 32.076000, 21.601034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.802338, 31.422472, 22.140772>,  <37.310349, 31.419844, 21.668396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.802338, 31.422472, 22.140772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.755314, 31.810696, 22.056677>,  <37.727100, 32.043629, 22.006220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.755314, 31.810696, 22.056677>,  <37.802338, 31.422472, 22.140772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755314, 31.810696, 22.056677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132765, 0.225165, 0.965233,
		0.984152, 0.085556, -0.155325,
		-0.117555, 0.970557, -0.210238,
		37.720047, 32.101864, 21.993605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.353607, 31.725878, 22.479086>,  <37.802338, 31.422472, 22.140772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.353607, 31.725878, 22.479086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.074013, 32.004791, 22.415581>,  <37.906254, 32.172138, 22.377478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.074013, 32.004791, 22.415581>,  <38.353607, 31.725878, 22.479086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.074013, 32.004791, 22.415581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150194, 0.360195, 0.920707,
		0.699181, 0.619720, -0.356501,
		-0.698990, 0.697285, -0.158763,
		37.864315, 32.213978, 22.367952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552505, 32.276402, 22.911970>,  <38.353607, 31.725878, 22.479086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.552505, 32.276402, 22.911970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.166660, 32.367443, 22.858738>,  <37.935154, 32.422070, 22.826799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.166660, 32.367443, 22.858738>,  <38.552505, 32.276402, 22.911970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.166660, 32.367443, 22.858738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125522, 0.047426, 0.990957,
		0.231856, 0.972598, -0.017179,
		-0.964617, 0.227603, -0.133079,
		37.877274, 32.435722, 22.818813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.477432, 32.805851, 23.412781>,  <38.552505, 32.276402, 22.911970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.477432, 32.805851, 23.412781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.108631, 32.669373, 23.339569>,  <37.887352, 32.587486, 23.295643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.108631, 32.669373, 23.339569>,  <38.477432, 32.805851, 23.412781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108631, 32.669373, 23.339569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232708, 0.110510, 0.966247,
		-0.309456, 0.933472, -0.181290,
		-0.922000, -0.341199, -0.183029,
		37.832031, 32.567013, 23.284660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935013, 33.202503, 23.713190>,  <38.477432, 32.805851, 23.412781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935013, 33.202503, 23.713190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.739841, 32.857841, 23.657354>,  <37.622738, 32.651047, 23.623854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.739841, 32.857841, 23.657354>,  <37.935013, 33.202503, 23.713190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739841, 32.857841, 23.657354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440905, 0.105269, 0.891359,
		-0.753345, 0.496465, -0.431270,
		-0.487928, -0.861651, -0.139590,
		37.593464, 32.599346, 23.615477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380878, 33.323093, 24.107990>,  <37.935013, 33.202503, 23.713190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380878, 33.323093, 24.107990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.356373, 32.927197, 24.056372>,  <37.341667, 32.689659, 24.025400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.356373, 32.927197, 24.056372>,  <37.380878, 33.323093, 24.107990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356373, 32.927197, 24.056372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319820, -0.103006, 0.941862,
		-0.945495, 0.098976, -0.310229,
		-0.061266, -0.989744, -0.129047,
		37.337994, 32.630272, 24.017658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720325, 33.186634, 24.322081>,  <37.380878, 33.323093, 24.107990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720325, 33.186634, 24.322081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.933102, 32.848537, 24.342508>,  <37.060768, 32.645679, 24.354765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.933102, 32.848537, 24.342508>,  <36.720325, 33.186634, 24.322081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.933102, 32.848537, 24.342508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282150, -0.120056, 0.951829,
		-0.798392, -0.520726, -0.302347,
		0.531941, -0.845240, 0.051071,
		37.092686, 32.594967, 24.357830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.324883, 32.690735, 24.706070>,  <36.720325, 33.186634, 24.322081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.324883, 32.690735, 24.706070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.690361, 32.528759, 24.719824>,  <36.909649, 32.431572, 24.728077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.690361, 32.528759, 24.719824>,  <36.324883, 32.690735, 24.706070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690361, 32.528759, 24.719824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218322, -0.417726, 0.881953,
		-0.342775, -0.813344, -0.470082,
		0.913696, -0.404941, 0.034385,
		36.964470, 32.407276, 24.730139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267727, 32.021156, 24.941166>,  <36.324883, 32.690735, 24.706070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.267727, 32.021156, 24.941166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.658421, 32.092007, 24.989521>,  <36.892838, 32.134518, 25.018534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.658421, 32.092007, 24.989521>,  <36.267727, 32.021156, 24.941166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.658421, 32.092007, 24.989521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003288, -0.551281, 0.834314,
		0.214420, -0.815302, -0.537873,
		0.976736, 0.177125, 0.120886,
		36.951443, 32.145145, 25.025787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564445, 31.330437, 25.183105>,  <36.267727, 32.021156, 24.941166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.564445, 31.330437, 25.183105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.811161, 31.627136, 25.288465>,  <36.959190, 31.805155, 25.351681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.811161, 31.627136, 25.288465>,  <36.564445, 31.330437, 25.183105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811161, 31.627136, 25.288465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093180, -0.401088, 0.911288,
		0.781591, -0.537532, -0.316504,
		0.616792, 0.741747, 0.263399,
		36.996201, 31.849661, 25.367485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079941, 31.063585, 25.564508>,  <36.564445, 31.330437, 25.183105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.079941, 31.063585, 25.564508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.081535, 31.442074, 25.693905>,  <37.082493, 31.669167, 25.771544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.081535, 31.442074, 25.693905>,  <37.079941, 31.063585, 25.564508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.081535, 31.442074, 25.693905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040176, -0.323081, 0.945518,
		0.999185, -0.016764, 0.036727,
		0.003985, 0.946223, 0.323491,
		37.082729, 31.725941, 25.790953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482185, 31.027678, 26.254827>,  <37.079941, 31.063585, 25.564508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.482185, 31.027678, 26.254827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.267952, 31.365471, 26.253809>,  <37.139412, 31.568146, 26.253197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.267952, 31.365471, 26.253809>,  <37.482185, 31.027678, 26.254827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.267952, 31.365471, 26.253809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145516, -0.089314, 0.985316,
		0.831853, 0.528086, 0.170720,
		-0.535579, 0.844481, -0.002549,
		37.107277, 31.618814, 26.253044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550304, 31.226471, 26.956921>,  <37.482185, 31.027678, 26.254827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550304, 31.226471, 26.956921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.249104, 31.459249, 26.834072>,  <37.068382, 31.598917, 26.760363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.249104, 31.459249, 26.834072>,  <37.550304, 31.226471, 26.956921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.249104, 31.459249, 26.834072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390860, -0.020094, 0.920231,
		0.529356, 0.812977, 0.242591,
		-0.753001, 0.581949, -0.307123,
		37.023205, 31.633835, 26.741936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368294, 31.646481, 27.502445>,  <37.550304, 31.226471, 26.956921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.368294, 31.646481, 27.502445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.046070, 31.684418, 27.268494>,  <36.852737, 31.707180, 27.128122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.046070, 31.684418, 27.268494>,  <37.368294, 31.646481, 27.502445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.046070, 31.684418, 27.268494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586311, 0.014915, 0.809949,
		0.085542, 0.995380, 0.043592,
		-0.805557, 0.094843, -0.584878,
		36.804401, 31.712872, 27.093031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862621, 32.193077, 27.757593>,  <37.368294, 31.646481, 27.502445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862621, 32.193077, 27.757593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659046, 31.908434, 27.563852>,  <36.536900, 31.737648, 27.447607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659046, 31.908434, 27.563852>,  <36.862621, 32.193077, 27.757593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659046, 31.908434, 27.563852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640099, -0.063359, 0.765676,
		-0.575548, 0.699715, -0.423253,
		-0.508938, -0.711607, -0.484353,
		36.506363, 31.694952, 27.418547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176155, 32.438488, 27.804441>,  <36.862621, 32.193077, 27.757593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.176155, 32.438488, 27.804441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.140320, 32.044788, 27.743483>,  <36.118820, 31.808569, 27.706907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.140320, 32.044788, 27.743483>,  <36.176155, 32.438488, 27.804441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140320, 32.044788, 27.743483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620950, -0.064436, 0.781198,
		-0.778714, 0.164616, -0.605397,
		-0.089589, -0.984251, -0.152395,
		36.113441, 31.749514, 27.697763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.481548, 32.287613, 27.853935>,  <36.176155, 32.438488, 27.804441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.481548, 32.287613, 27.853935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.639381, 31.921980, 27.891388>,  <35.734081, 31.702600, 27.913858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.639381, 31.921980, 27.891388>,  <35.481548, 32.287613, 27.853935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.639381, 31.921980, 27.891388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581828, -0.169681, 0.795415,
		-0.711185, -0.368331, -0.598789,
		0.394578, -0.914079, 0.093631,
		35.757755, 31.647757, 27.919477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.978962, 31.748680, 27.727707>,  <35.481548, 32.287613, 27.853935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.978962, 31.748680, 27.727707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.265495, 31.615532, 27.973001>,  <35.437416, 31.535643, 28.120178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.265495, 31.615532, 27.973001>,  <34.978962, 31.748680, 27.727707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265495, 31.615532, 27.973001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676521, -0.116162, 0.727204,
		-0.170831, -0.935789, -0.308407,
		0.716335, -0.332873, 0.613237,
		35.480396, 31.515671, 28.156973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591774, 31.361734, 28.258053>,  <34.978962, 31.748680, 27.727707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591774, 31.361734, 28.258053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.952419, 31.313850, 28.424313>,  <35.168804, 31.285120, 28.524069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.952419, 31.313850, 28.424313>,  <34.591774, 31.361734, 28.258053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.952419, 31.313850, 28.424313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424943, -0.065755, 0.902829,
		-0.080772, -0.990626, -0.110167,
		0.901609, -0.119738, 0.415648,
		35.222904, 31.277937, 28.549007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618713, 30.699163, 28.751774>,  <34.591774, 31.361734, 28.258053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618713, 30.699163, 28.751774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915958, 30.939257, 28.870098>,  <35.094307, 31.083313, 28.941093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915958, 30.939257, 28.870098>,  <34.618713, 30.699163, 28.751774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915958, 30.939257, 28.870098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371716, 0.002688, 0.928343,
		0.556426, -0.799821, 0.225114,
		0.743114, 0.600232, 0.295810,
		35.138893, 31.119326, 28.958841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810223, 30.485294, 29.464165>,  <34.618713, 30.699163, 28.751774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810223, 30.485294, 29.464165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.943321, 30.861322, 29.434374>,  <35.023178, 31.086939, 29.416498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.943321, 30.861322, 29.434374>,  <34.810223, 30.485294, 29.464165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943321, 30.861322, 29.434374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227154, 0.156554, 0.961193,
		0.915250, -0.302913, 0.265633,
		0.332744, 0.940071, -0.074478,
		35.043144, 31.143343, 29.412031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.914959, 30.646017, 30.115849>,  <34.810223, 30.485294, 29.464165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.914959, 30.646017, 30.115849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915077, 31.018690, 29.970539>,  <34.915150, 31.242294, 29.883354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915077, 31.018690, 29.970539>,  <34.914959, 30.646017, 30.115849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915077, 31.018690, 29.970539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333290, 0.342596, 0.878377,
		0.942824, 0.120813, 0.310623,
		0.000299, 0.931683, -0.363273,
		34.915169, 31.298195, 29.861557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.428474, 31.153774, 30.503788>,  <34.914959, 30.646017, 30.115849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.428474, 31.153774, 30.503788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.153816, 31.386723, 30.329723>,  <34.989021, 31.526491, 30.225285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.153816, 31.386723, 30.329723>,  <35.428474, 31.153774, 30.503788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153816, 31.386723, 30.329723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160720, 0.462167, 0.872107,
		0.709006, 0.668766, -0.223745,
		-0.686643, 0.582369, -0.435163,
		34.947823, 31.561434, 30.199175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593548, 31.850454, 30.862284>,  <35.428474, 31.153774, 30.503788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593548, 31.850454, 30.862284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234413, 31.841530, 30.686377>,  <35.018932, 31.836174, 30.580832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234413, 31.841530, 30.686377>,  <35.593548, 31.850454, 30.862284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.234413, 31.841530, 30.686377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383750, 0.529423, 0.756603,
		0.215942, 0.848065, -0.483896,
		-0.897834, -0.022313, -0.439769,
		34.965061, 31.834835, 30.554445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345974, 32.502373, 31.056313>,  <35.593548, 31.850454, 30.862284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345974, 32.502373, 31.056313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.027042, 32.294762, 30.933102>,  <34.835682, 32.170197, 30.859175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.027042, 32.294762, 30.933102>,  <35.345974, 32.502373, 31.056313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.027042, 32.294762, 30.933102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545074, 0.400105, 0.736756,
		-0.259151, 0.755335, -0.601922,
		-0.797330, -0.519023, -0.308026,
		34.787842, 32.139053, 30.840694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.704517, 33.070744, 30.996454>,  <35.345974, 32.502373, 31.056313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.704517, 33.070744, 30.996454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.592991, 32.691387, 31.056871>,  <34.526077, 32.463772, 31.093121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.592991, 32.691387, 31.056871>,  <34.704517, 33.070744, 30.996454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.592991, 32.691387, 31.056871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518953, 0.281128, 0.807251,
		-0.808054, 0.146689, -0.570554,
		-0.278814, -0.948393, 0.151042,
		34.509346, 32.406868, 31.102184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.999771, 33.670433, 30.519693>,  <34.704517, 33.070744, 30.996454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.999771, 33.670433, 30.519693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.266941, 33.868362, 30.742056>,  <35.427242, 33.987118, 30.875473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.266941, 33.868362, 30.742056>,  <34.999771, 33.670433, 30.519693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.266941, 33.868362, 30.742056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201983, 0.598397, -0.775322,
		-0.716298, 0.630138, 0.299737,
		0.667922, 0.494820, 0.555908,
		35.467316, 34.016808, 30.908829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.787945, 34.264511, 30.466244>,  <34.999771, 33.670433, 30.519693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.787945, 34.264511, 30.466244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.174210, 34.297955, 30.564638>,  <35.405968, 34.318020, 30.623674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.174210, 34.297955, 30.564638>,  <34.787945, 34.264511, 30.466244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.174210, 34.297955, 30.564638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130073, 0.664005, -0.736328,
		-0.224901, 0.743039, 0.630328,
		0.965661, 0.083612, 0.245985,
		35.463909, 34.323040, 30.638433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.849621, 34.955368, 30.512041>,  <34.787945, 34.264511, 30.466244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.849621, 34.955368, 30.512041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.218121, 34.806011, 30.468451>,  <35.439220, 34.716396, 30.442295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.218121, 34.806011, 30.468451>,  <34.849621, 34.955368, 30.512041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.218121, 34.806011, 30.468451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163337, 0.625628, -0.762831,
		0.353017, 0.684957, 0.637348,
		0.921249, -0.373395, -0.108978,
		35.494495, 34.693993, 30.435757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.222080, 35.536301, 30.343969>,  <34.849621, 34.955368, 30.512041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.222080, 35.536301, 30.343969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.466671, 35.240608, 30.231091>,  <35.613426, 35.063194, 30.163363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.466671, 35.240608, 30.231091>,  <35.222080, 35.536301, 30.343969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.466671, 35.240608, 30.231091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397247, 0.595240, -0.698487,
		0.684316, 0.315008, 0.657633,
		0.611479, -0.739229, -0.282196,
		35.650116, 35.018841, 30.146431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825409, 35.798126, 30.401011>,  <35.222080, 35.536301, 30.343969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.825409, 35.798126, 30.401011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848331, 35.490673, 30.146162>,  <35.862087, 35.306202, 29.993252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848331, 35.490673, 30.146162>,  <35.825409, 35.798126, 30.401011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848331, 35.490673, 30.146162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228867, 0.631292, -0.741007,
		0.971769, -0.103349, 0.212093,
		0.057310, -0.768628, -0.637123,
		35.865524, 35.260086, 29.955025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600918, 35.788315, 30.028790>,  <35.825409, 35.798126, 30.401011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.600918, 35.788315, 30.028790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.333385, 35.595139, 29.802717>,  <36.172867, 35.479233, 29.667074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.333385, 35.595139, 29.802717>,  <36.600918, 35.788315, 30.028790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.333385, 35.595139, 29.802717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368429, 0.444989, -0.816239,
		0.645693, -0.754157, -0.119695,
		-0.668835, -0.482941, -0.565179,
		36.132736, 35.450256, 29.633163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029011, 35.483692, 29.443130>,  <36.600918, 35.788315, 30.028790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029011, 35.483692, 29.443130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.648071, 35.464333, 29.322674>,  <36.419506, 35.452717, 29.250399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.648071, 35.464333, 29.322674>,  <37.029011, 35.483692, 29.443130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.648071, 35.464333, 29.322674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275798, 0.284990, -0.917996,
		0.130248, -0.957308, -0.258063,
		-0.952350, -0.048394, -0.301143,
		36.362366, 35.449814, 29.232330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098160, 35.174225, 28.792055>,  <37.029011, 35.483692, 29.443130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098160, 35.174225, 28.792055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.750042, 35.370888, 28.780373>,  <36.541172, 35.488884, 28.773363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.750042, 35.370888, 28.780373>,  <37.098160, 35.174225, 28.792055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.750042, 35.370888, 28.780373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294717, 0.472340, -0.830684,
		-0.394616, -0.731551, -0.555977,
		-0.870299, 0.491657, -0.029207,
		36.488953, 35.518387, 28.771610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.930550, 35.120228, 28.064777>,  <37.098160, 35.174225, 28.792055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.930550, 35.120228, 28.064777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.679920, 35.389565, 28.221760>,  <36.529541, 35.551167, 28.315948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.679920, 35.389565, 28.221760>,  <36.930550, 35.120228, 28.064777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679920, 35.389565, 28.221760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193988, 0.622453, -0.758236,
		-0.754833, -0.398960, -0.520633,
		-0.626575, 0.673338, 0.392454,
		36.491947, 35.591564, 28.339497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458939, 35.135078, 27.543428>,  <36.930550, 35.120228, 28.064777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458939, 35.135078, 27.543428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.412281, 35.471043, 27.755445>,  <36.384285, 35.672619, 27.882656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.412281, 35.471043, 27.755445>,  <36.458939, 35.135078, 27.543428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412281, 35.471043, 27.755445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186576, 0.542717, -0.818931,
		-0.975491, 0.003367, -0.220014,
		-0.116648, 0.839909, 0.530044,
		36.377285, 35.723015, 27.914459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922386, 35.518211, 27.202312>,  <36.458939, 35.135078, 27.543428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922386, 35.518211, 27.202312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.150246, 35.775646, 27.406782>,  <36.286961, 35.930107, 27.529465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.150246, 35.775646, 27.406782>,  <35.922386, 35.518211, 27.202312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.150246, 35.775646, 27.406782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120397, 0.549897, -0.826509,
		-0.813023, 0.532363, 0.235762,
		0.569648, 0.643586, 0.511174,
		36.321140, 35.968723, 27.560135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616802, 35.986126, 27.036737>,  <35.922386, 35.518211, 27.202312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.616802, 35.986126, 27.036737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.973373, 36.111183, 27.167955>,  <36.187317, 36.186218, 27.246685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.973373, 36.111183, 27.167955>,  <35.616802, 35.986126, 27.036737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.973373, 36.111183, 27.167955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157597, 0.464832, -0.871260,
		-0.424876, 0.828364, 0.365094,
		0.891428, 0.312640, 0.328043,
		36.240803, 36.204975, 27.266369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687408, 36.496326, 26.705807>,  <35.616802, 35.986126, 27.036737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687408, 36.496326, 26.705807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.068604, 36.426506, 26.804880>,  <36.297321, 36.384613, 26.864325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.068604, 36.426506, 26.804880>,  <35.687408, 36.496326, 26.705807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068604, 36.426506, 26.804880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283683, 0.226691, -0.931738,
		0.106489, 0.958198, 0.265551,
		0.952987, -0.174552, 0.247685,
		36.354500, 36.374142, 26.879185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100853, 36.950279, 26.288876>,  <35.687408, 36.496326, 26.705807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100853, 36.950279, 26.288876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.332352, 36.642673, 26.397448>,  <36.471249, 36.458111, 26.462591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.332352, 36.642673, 26.397448>,  <36.100853, 36.950279, 26.288876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.332352, 36.642673, 26.397448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426759, 0.001964, -0.904364,
		0.694934, 0.639231, 0.329320,
		0.578744, -0.769012, 0.271432,
		36.505974, 36.411968, 26.478878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877903, 37.127419, 26.082888>,  <36.100853, 36.950279, 26.288876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.877903, 37.127419, 26.082888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.840199, 36.729954, 26.107359>,  <36.817577, 36.491474, 26.122042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.840199, 36.729954, 26.107359>,  <36.877903, 37.127419, 26.082888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.840199, 36.729954, 26.107359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510157, -0.100982, -0.854133,
		0.854901, -0.049297, 0.516444,
		-0.094258, -0.993666, 0.061180,
		36.811920, 36.431854, 26.125713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564213, 36.814629, 25.819763>,  <36.877903, 37.127419, 26.082888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564213, 36.814629, 25.819763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.307796, 36.509022, 25.848993>,  <37.153946, 36.325657, 25.866531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.307796, 36.509022, 25.848993>,  <37.564213, 36.814629, 25.819763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307796, 36.509022, 25.848993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392519, -0.408170, -0.824212,
		0.659539, -0.499673, 0.561547,
		-0.641043, -0.764018, 0.073073,
		37.115482, 36.279816, 25.870914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006145, 36.302498, 25.669670>,  <37.564213, 36.814629, 25.819763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006145, 36.302498, 25.669670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.644756, 36.148075, 25.595158>,  <37.427925, 36.055420, 25.550449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.644756, 36.148075, 25.595158>,  <38.006145, 36.302498, 25.669670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644756, 36.148075, 25.595158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342972, -0.390376, -0.854387,
		0.257122, -0.835803, 0.485100,
		-0.903470, -0.386058, -0.186283,
		37.373714, 36.032257, 25.539272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095261, 35.503361, 25.586281>,  <38.006145, 36.302498, 25.669670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095261, 35.503361, 25.586281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.773827, 35.642048, 25.392771>,  <37.580967, 35.725258, 25.276665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.773827, 35.642048, 25.392771>,  <38.095261, 35.503361, 25.586281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.773827, 35.642048, 25.392771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330454, -0.416119, -0.847139,
		-0.495024, -0.840615, 0.219814,
		-0.803586, 0.346716, -0.483774,
		37.532749, 35.746063, 25.247639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929344, 34.990448, 25.205875>,  <38.095261, 35.503361, 25.586281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929344, 34.990448, 25.205875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.729740, 35.277588, 25.011690>,  <37.609978, 35.449871, 24.895178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.729740, 35.277588, 25.011690>,  <37.929344, 34.990448, 25.205875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729740, 35.277588, 25.011690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132726, -0.490279, -0.861400,
		-0.856371, -0.494282, 0.149378,
		-0.499011, 0.717852, -0.485465,
		37.580036, 35.492943, 24.866051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531635, 34.615963, 24.805340>,  <37.929344, 34.990448, 25.205875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.531635, 34.615963, 24.805340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.537350, 34.968121, 24.615732>,  <37.540779, 35.179417, 24.501966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.537350, 34.968121, 24.615732>,  <37.531635, 34.615963, 24.805340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.537350, 34.968121, 24.615732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149691, -0.470609, -0.869552,
		-0.988630, -0.058535, -0.138510,
		0.014285, 0.880398, -0.474020,
		37.541634, 35.232239, 24.473526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103050, 34.593071, 24.226263>,  <37.531635, 34.615963, 24.805340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.103050, 34.593071, 24.226263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.338367, 34.899162, 24.121695>,  <37.479557, 35.082817, 24.058954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.338367, 34.899162, 24.121695>,  <37.103050, 34.593071, 24.226263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338367, 34.899162, 24.121695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037462, -0.348722, -0.936477,
		-0.807781, 0.541128, -0.233817,
		0.588292, 0.765227, -0.261419,
		37.514854, 35.128731, 24.043268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906113, 34.796059, 23.470247>,  <37.103050, 34.593071, 24.226263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.906113, 34.796059, 23.470247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.265335, 34.969280, 23.501137>,  <37.480869, 35.073215, 23.519670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.265335, 34.969280, 23.501137>,  <36.906113, 34.796059, 23.470247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265335, 34.969280, 23.501137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173809, -0.188060, -0.966656,
		-0.404094, 0.881530, -0.244157,
		0.898053, 0.433057, 0.077223,
		37.534752, 35.099197, 23.524303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977684, 35.235031, 22.907894>,  <36.906113, 34.796059, 23.470247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977684, 35.235031, 22.907894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.353043, 35.158718, 23.023146>,  <37.578259, 35.112930, 23.092297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.353043, 35.158718, 23.023146>,  <36.977684, 35.235031, 22.907894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.353043, 35.158718, 23.023146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212776, -0.337996, -0.916780,
		0.272288, 0.921609, -0.276581,
		0.938395, -0.190779, 0.288129,
		37.634560, 35.101486, 23.109585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436230, 35.647675, 22.493443>,  <36.977684, 35.235031, 22.907894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.436230, 35.647675, 22.493443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.634815, 35.325085, 22.621889>,  <37.753967, 35.131531, 22.698957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.634815, 35.325085, 22.621889>,  <37.436230, 35.647675, 22.493443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634815, 35.325085, 22.621889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360234, -0.145157, -0.921499,
		0.789779, 0.573173, 0.218454,
		0.496468, -0.806475, 0.321118,
		37.783756, 35.083141, 22.718224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975544, 35.697502, 21.988529>,  <37.436230, 35.647675, 22.493443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.975544, 35.697502, 21.988529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.061054, 35.338737, 22.143372>,  <38.112362, 35.123478, 22.236277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.061054, 35.338737, 22.143372>,  <37.975544, 35.697502, 21.988529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061054, 35.338737, 22.143372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444959, -0.263372, -0.855948,
		0.869661, 0.355228, 0.342786,
		0.213776, -0.896911, 0.387106,
		38.125187, 35.069664, 22.259504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727604, 35.585487, 21.984238>,  <37.975544, 35.697502, 21.988529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727604, 35.585487, 21.984238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.544159, 35.230053, 21.987982>,  <38.434093, 35.016792, 21.990229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.544159, 35.230053, 21.987982>,  <38.727604, 35.585487, 21.984238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.544159, 35.230053, 21.987982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691743, -0.363587, -0.623936,
		0.557826, -0.279668, 0.781419,
		-0.458609, -0.888589, 0.009360,
		38.406578, 34.963478, 21.990789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230476, 35.131809, 22.151531>,  <38.727604, 35.585487, 21.984238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.230476, 35.131809, 22.151531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.954857, 34.912788, 21.961622>,  <38.789486, 34.781376, 21.847677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.954857, 34.912788, 21.961622>,  <39.230476, 35.131809, 22.151531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.954857, 34.912788, 21.961622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723136, -0.476201, -0.500306,
		0.047856, -0.688057, 0.724077,
		-0.689045, -0.547549, -0.474770,
		38.748142, 34.748524, 21.819191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624111, 34.632271, 21.958769>,  <39.230476, 35.131809, 22.151531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.624111, 34.632271, 21.958769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.301285, 34.566025, 21.732063>,  <39.107590, 34.526276, 21.596039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.301285, 34.566025, 21.732063>,  <39.624111, 34.632271, 21.958769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.301285, 34.566025, 21.732063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584539, -0.359757, -0.727247,
		-0.083454, -0.918230, 0.387156,
		-0.807062, -0.165616, -0.566765,
		39.059166, 34.516338, 21.562035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.612461, 33.942142, 21.718315>,  <39.624111, 34.632271, 21.958769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.612461, 33.942142, 21.718315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.367439, 34.118519, 21.455912>,  <39.220425, 34.224342, 21.298470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.367439, 34.118519, 21.455912>,  <39.612461, 33.942142, 21.718315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.367439, 34.118519, 21.455912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586301, -0.303151, -0.751233,
		-0.530115, -0.844792, -0.072824,
		-0.612559, 0.440936, -0.656008,
		39.183670, 34.250801, 21.259109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630688, 33.471222, 21.158262>,  <39.612461, 33.942142, 21.718315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.630688, 33.471222, 21.158262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.483418, 33.812092, 21.009541>,  <39.395054, 34.016613, 20.920307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.483418, 33.812092, 21.009541>,  <39.630688, 33.471222, 21.158262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483418, 33.812092, 21.009541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493470, -0.159817, -0.854954,
		-0.787993, -0.498250, -0.361683,
		-0.368178, 0.852177, -0.371806,
		39.372963, 34.067745, 20.897999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261318, 33.350857, 20.499186>,  <39.630688, 33.471222, 21.158262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.261318, 33.350857, 20.499186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.410484, 33.721996, 20.501516>,  <39.499985, 33.944679, 20.502914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.410484, 33.721996, 20.501516>,  <39.261318, 33.350857, 20.499186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.410484, 33.721996, 20.501516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596498, -0.234920, -0.767465,
		-0.710723, 0.289671, -0.641064,
		0.372911, 0.927849, 0.005825,
		39.522358, 34.000351, 20.503263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664726, 33.312817, 19.918320>,  <39.261318, 33.350857, 20.499186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.664726, 33.312817, 19.918320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.751793, 33.690151, 20.018511>,  <39.804031, 33.916553, 20.078625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.751793, 33.690151, 20.018511>,  <39.664726, 33.312817, 19.918320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.751793, 33.690151, 20.018511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687601, 0.033923, -0.725296,
		-0.692695, 0.330100, -0.641255,
		0.217667, 0.943336, 0.250476,
		39.817093, 33.973152, 20.093653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640499, 33.698509, 19.224031>,  <39.664726, 33.312817, 19.918320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.640499, 33.698509, 19.224031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.880745, 33.859623, 19.500301>,  <40.024891, 33.956291, 19.666063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.880745, 33.859623, 19.500301>,  <39.640499, 33.698509, 19.224031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.880745, 33.859623, 19.500301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774135, -0.076914, -0.628331,
		-0.199959, 0.912058, -0.358004,
		0.600610, 0.402784, 0.690676,
		40.060928, 33.980457, 19.707504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070168, 34.279839, 18.862432>,  <39.640499, 33.698509, 19.224031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.070168, 34.279839, 18.862432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.276199, 34.197483, 19.195251>,  <40.399818, 34.148071, 19.394943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.276199, 34.197483, 19.195251>,  <40.070168, 34.279839, 18.862432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.276199, 34.197483, 19.195251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840604, -0.068425, -0.537311,
		0.167559, 0.976180, 0.137827,
		0.515082, -0.205889, 0.832046,
		40.430725, 34.135715, 19.444866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.726871, 34.719028, 18.802357>,  <40.070168, 34.279839, 18.862432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.726871, 34.719028, 18.802357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.848831, 34.451218, 19.073286>,  <40.922005, 34.290531, 19.235844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.848831, 34.451218, 19.073286>,  <40.726871, 34.719028, 18.802357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.848831, 34.451218, 19.073286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862025, -0.108356, -0.495148,
		0.404908, 0.734840, 0.544113,
		0.304896, -0.669529, 0.677325,
		40.940300, 34.250359, 19.276484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.489918, 34.810341, 18.817429>,  <40.726871, 34.719028, 18.802357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.489918, 34.810341, 18.817429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.441090, 34.441292, 18.963778>,  <41.411793, 34.219860, 19.051586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.441090, 34.441292, 18.963778>,  <41.489918, 34.810341, 18.817429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.441090, 34.441292, 18.963778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816205, -0.303058, -0.491900,
		0.564719, 0.238577, 0.790046,
		-0.122074, -0.922625, 0.365871,
		41.404469, 34.164505, 19.073540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.151020, 34.589310, 19.126003>,  <41.489918, 34.810341, 18.817429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.151020, 34.589310, 19.126003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.942780, 34.261791, 19.029217>,  <41.817837, 34.065281, 18.971144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.942780, 34.261791, 19.029217>,  <42.151020, 34.589310, 19.126003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.942780, 34.261791, 19.029217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731618, -0.281723, -0.620779,
		0.440123, -0.500207, 0.745711,
		-0.520602, -0.818795, -0.241968,
		41.786598, 34.016151, 18.956627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.655941, 34.103260, 19.230139>,  <42.151020, 34.589310, 19.126003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.655941, 34.103260, 19.230139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.374249, 33.956680, 18.986904>,  <42.205231, 33.868732, 18.840963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.374249, 33.956680, 18.986904>,  <42.655941, 34.103260, 19.230139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.374249, 33.956680, 18.986904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708933, -0.316716, -0.630163,
		0.038335, -0.874873, 0.482833,
		-0.704233, -0.366453, -0.608085,
		42.162979, 33.846745, 18.804478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.987228, 33.378036, 19.129238>,  <42.655941, 34.103260, 19.230139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.987228, 33.378036, 19.129238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.350388, 33.512531, 19.229366>,  <43.568283, 33.593227, 19.289442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.350388, 33.512531, 19.229366>,  <42.987228, 33.378036, 19.129238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.350388, 33.512531, 19.229366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391613, 0.467351, 0.792605,
		0.149517, -0.817635, 0.555984,
		0.907901, 0.336239, 0.250319,
		43.622757, 33.613403, 19.304462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.106445, 33.236122, 19.813351>,  <42.987228, 33.378036, 19.129238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.106445, 33.236122, 19.813351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.371143, 33.528969, 19.748737>,  <43.529961, 33.704678, 19.709969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.371143, 33.528969, 19.748737>,  <43.106445, 33.236122, 19.813351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.371143, 33.528969, 19.748737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263376, 0.428731, 0.864189,
		0.701944, -0.529329, 0.476534,
		0.661746, 0.732120, -0.161533,
		43.569668, 33.748604, 19.700277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.537083, 33.295296, 20.445761>,  <43.106445, 33.236122, 19.813351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.537083, 33.295296, 20.445761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.550064, 33.634483, 20.234140>,  <43.557854, 33.837997, 20.107168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.550064, 33.634483, 20.234140>,  <43.537083, 33.295296, 20.445761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.550064, 33.634483, 20.234140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113839, 0.529022, 0.840937,
		0.992969, 0.032936, 0.113700,
		0.032453, 0.847968, -0.529052,
		43.559799, 33.888874, 20.075424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.907051, 33.679028, 20.830542>,  <43.537083, 33.295296, 20.445761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.907051, 33.679028, 20.830542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.705761, 33.934589, 20.597799>,  <43.584988, 34.087929, 20.458155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.705761, 33.934589, 20.597799>,  <43.907051, 33.679028, 20.830542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.705761, 33.934589, 20.597799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222777, 0.554650, 0.801707,
		0.834943, 0.533067, -0.136782,
		-0.503229, 0.638908, -0.581856,
		43.554790, 34.126263, 20.423243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.938725, 34.395191, 21.116308>,  <43.907051, 33.679028, 20.830542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.938725, 34.395191, 21.116308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.627293, 34.431423, 20.867920>,  <43.440434, 34.453163, 20.718887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.627293, 34.431423, 20.867920>,  <43.938725, 34.395191, 21.116308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.627293, 34.431423, 20.867920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445942, 0.616352, 0.649034,
		0.441527, 0.782244, -0.439487,
		-0.778582, 0.090580, -0.620972,
		43.393719, 34.458599, 20.681629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.750759, 35.105217, 21.179966>,  <43.938725, 34.395191, 21.116308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.750759, 35.105217, 21.179966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.443508, 34.904209, 21.021242>,  <43.259159, 34.783604, 20.926008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.443508, 34.904209, 21.021242>,  <43.750759, 35.105217, 21.179966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.443508, 34.904209, 21.021242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637945, 0.547542, 0.541500,
		-0.054844, 0.669083, -0.741161,
		-0.768126, -0.502519, -0.396809,
		43.213070, 34.753452, 20.902199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.172340, 35.611012, 20.951004>,  <43.750759, 35.105217, 21.179966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.172340, 35.611012, 20.951004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.026711, 35.245144, 21.021229>,  <42.939331, 35.025623, 21.063364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.026711, 35.245144, 21.021229>,  <43.172340, 35.611012, 20.951004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.026711, 35.245144, 21.021229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634771, 0.381625, 0.671884,
		-0.681552, 0.133178, -0.719548,
		-0.364078, -0.914672, 0.175560,
		42.917488, 34.970741, 21.073896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.428169, 35.711193, 20.918243>,  <43.172340, 35.611012, 20.951004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.428169, 35.711193, 20.918243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.515800, 35.375427, 21.117199>,  <42.568378, 35.173969, 21.236572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.515800, 35.375427, 21.117199>,  <42.428169, 35.711193, 20.918243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.515800, 35.375427, 21.117199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766737, 0.167161, 0.619816,
		-0.603424, -0.517153, -0.606986,
		0.219075, -0.839411, 0.497389,
		42.581524, 35.123604, 21.266417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.754066, 35.491970, 21.038956>,  <42.428169, 35.711193, 20.918243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.754066, 35.491970, 21.038956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.978954, 35.267239, 21.281694>,  <42.113888, 35.132401, 21.427338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.978954, 35.267239, 21.281694>,  <41.754066, 35.491970, 21.038956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.978954, 35.267239, 21.281694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720157, 0.028136, 0.693240,
		-0.406554, -0.826778, -0.388784,
		0.562217, -0.561825, 0.606849,
		42.147621, 35.098690, 21.463749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.303432, 35.030121, 21.384573>,  <41.754066, 35.491970, 21.038956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.303432, 35.030121, 21.384573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.630959, 35.071213, 21.610489>,  <41.827473, 35.095867, 21.746038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.630959, 35.071213, 21.610489>,  <41.303432, 35.030121, 21.384573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.630959, 35.071213, 21.610489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560576, 0.355067, 0.748119,
		-0.123685, -0.929179, 0.348322,
		0.818814, 0.102730, 0.564791,
		41.876602, 35.102032, 21.779926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.102394, 34.697620, 22.032335>,  <41.303432, 35.030121, 21.384573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.102394, 34.697620, 22.032335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.419376, 34.911079, 22.150478>,  <41.609566, 35.039154, 22.221363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.419376, 34.911079, 22.150478>,  <41.102394, 34.697620, 22.032335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.419376, 34.911079, 22.150478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537603, 0.382394, 0.751504,
		0.288093, -0.754319, 0.589920,
		0.792455, 0.533646, 0.295359,
		41.657112, 35.071175, 22.239086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.255554, 34.479252, 22.621099>,  <41.102394, 34.697620, 22.032335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.255554, 34.479252, 22.621099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.404106, 34.850307, 22.605318>,  <41.493237, 35.072941, 22.595850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.404106, 34.850307, 22.605318>,  <41.255554, 34.479252, 22.621099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.404106, 34.850307, 22.605318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431470, 0.210053, 0.877332,
		0.822138, -0.308801, 0.478259,
		0.371381, 0.927642, -0.039454,
		41.515522, 35.128601, 22.593481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.441044, 34.650410, 23.364874>,  <41.255554, 34.479252, 22.621099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.441044, 34.650410, 23.364874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.428444, 34.996376, 23.164505>,  <41.420883, 35.203957, 23.044283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.428444, 34.996376, 23.164505>,  <41.441044, 34.650410, 23.364874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.428444, 34.996376, 23.164505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284182, 0.472737, 0.834122,
		0.958253, 0.168629, 0.230903,
		-0.031501, 0.864918, -0.500923,
		41.418995, 35.255852, 23.014229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.663761, 35.121876, 23.767206>,  <41.441044, 34.650410, 23.364874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.663761, 35.121876, 23.767206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.458763, 35.356327, 23.516191>,  <41.335766, 35.496998, 23.365583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.458763, 35.356327, 23.516191>,  <41.663761, 35.121876, 23.767206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.458763, 35.356327, 23.516191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291734, 0.568485, 0.769230,
		0.807615, 0.577298, -0.120350,
		-0.512492, 0.586132, -0.627535,
		41.305016, 35.532166, 23.327930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.901184, 35.747272, 23.994003>,  <41.663761, 35.121876, 23.767206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.901184, 35.747272, 23.994003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.560299, 35.822838, 23.798845>,  <41.355766, 35.868176, 23.681751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.560299, 35.822838, 23.798845>,  <41.901184, 35.747272, 23.994003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.560299, 35.822838, 23.798845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349926, 0.487451, 0.799965,
		0.388946, 0.852469, -0.349309,
		-0.852216, 0.188911, -0.487893,
		41.304634, 35.879513, 23.652477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.864677, 36.452847, 24.113865>,  <41.901184, 35.747272, 23.994003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.864677, 36.452847, 24.113865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.507111, 36.324390, 23.988781>,  <41.292572, 36.247318, 23.913731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.507111, 36.324390, 23.988781>,  <41.864677, 36.452847, 24.113865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.507111, 36.324390, 23.988781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438697, 0.483617, 0.757404,
		-0.091998, 0.814239, -0.573194,
		-0.893914, -0.321138, -0.312712,
		41.238937, 36.228050, 23.894968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.305138, 37.078442, 24.203518>,  <41.864677, 36.452847, 24.113865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.305138, 37.078442, 24.203518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.069386, 36.759308, 24.152775>,  <40.927937, 36.567829, 24.122330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.069386, 36.759308, 24.152775>,  <41.305138, 37.078442, 24.203518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.069386, 36.759308, 24.152775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567973, 0.297561, 0.767375,
		-0.574492, 0.524324, -0.628525,
		-0.589378, -0.797836, -0.126856,
		40.892570, 36.519958, 24.114717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.613712, 37.344070, 24.216761>,  <41.305138, 37.078442, 24.203518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.613712, 37.344070, 24.216761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.562393, 36.959728, 24.314985>,  <40.531601, 36.729122, 24.373920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.562393, 36.959728, 24.314985>,  <40.613712, 37.344070, 24.216761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.562393, 36.959728, 24.314985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609172, 0.271746, 0.745026,
		-0.782591, -0.054003, -0.620190,
		-0.128300, -0.960853, 0.245563,
		40.523903, 36.671471, 24.388655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.852165, 37.281258, 24.272642>,  <40.613712, 37.344070, 24.216761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.852165, 37.281258, 24.272642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.019032, 36.979267, 24.475023>,  <40.119152, 36.798073, 24.596453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.019032, 36.979267, 24.475023>,  <39.852165, 37.281258, 24.272642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.019032, 36.979267, 24.475023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668305, 0.122447, 0.733740,
		-0.615906, -0.644224, -0.453471,
		0.417167, -0.754972, 0.505954,
		40.144180, 36.752777, 24.626810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272633, 36.865608, 24.534679>,  <39.852165, 37.281258, 24.272642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272633, 36.865608, 24.534679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.592312, 36.809013, 24.768353>,  <39.784119, 36.775055, 24.908556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.592312, 36.809013, 24.768353>,  <39.272633, 36.865608, 24.534679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.592312, 36.809013, 24.768353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597653, -0.083523, 0.797392,
		-0.064020, -0.986412, -0.151306,
		0.799194, -0.141478, 0.584185,
		39.832069, 36.766567, 24.943607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008091, 36.415699, 24.977245>,  <39.272633, 36.865608, 24.534679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.008091, 36.415699, 24.977245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.339264, 36.561279, 25.147923>,  <39.537968, 36.648628, 25.250328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.339264, 36.561279, 25.147923>,  <39.008091, 36.415699, 24.977245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.339264, 36.561279, 25.147923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506098, 0.157038, 0.848059,
		0.241651, -0.918082, 0.314215,
		0.827931, 0.363958, 0.426691,
		39.587643, 36.670467, 25.275930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123638, 35.945930, 25.454779>,  <39.008091, 36.415699, 24.977245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123638, 35.945930, 25.454779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.326450, 36.281944, 25.531986>,  <39.448139, 36.483551, 25.578312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.326450, 36.281944, 25.531986>,  <39.123638, 35.945930, 25.454779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.326450, 36.281944, 25.531986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362992, 0.004997, 0.931779,
		0.781762, -0.542509, 0.307460,
		0.507035, 0.840035, 0.193020,
		39.478561, 36.533955, 25.589891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385334, 35.777603, 26.068409>,  <39.123638, 35.945930, 25.454779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.385334, 35.777603, 26.068409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.431316, 36.174950, 26.068493>,  <39.458904, 36.413357, 26.068542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.431316, 36.174950, 26.068493>,  <39.385334, 35.777603, 26.068409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431316, 36.174950, 26.068493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248731, 0.028580, 0.968151,
		0.961727, -0.111344, 0.250368,
		0.114954, 0.993371, 0.000208,
		39.465801, 36.472961, 26.068556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732784, 35.877426, 26.649292>,  <39.385334, 35.777603, 26.068409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.732784, 35.877426, 26.649292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.551678, 36.227402, 26.580608>,  <39.443016, 36.437389, 26.539398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.551678, 36.227402, 26.580608>,  <39.732784, 35.877426, 26.649292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.551678, 36.227402, 26.580608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161746, 0.108785, 0.980818,
		0.876837, 0.471852, 0.092265,
		-0.452764, 0.874941, -0.171707,
		39.415848, 36.489883, 26.529097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.985119, 36.214664, 27.201015>,  <39.732784, 35.877426, 26.649292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.985119, 36.214664, 27.201015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.677826, 36.442993, 27.085100>,  <39.493450, 36.579990, 27.015551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.677826, 36.442993, 27.085100>,  <39.985119, 36.214664, 27.201015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.677826, 36.442993, 27.085100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127242, 0.307488, 0.943006,
		0.627398, 0.761321, -0.163589,
		-0.768232, 0.570825, -0.289790,
		39.447357, 36.614243, 26.998163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972343, 36.818516, 27.672894>,  <39.985119, 36.214664, 27.201015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.972343, 36.818516, 27.672894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.610607, 36.798233, 27.503374>,  <39.393566, 36.786064, 27.401663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.610607, 36.798233, 27.503374>,  <39.972343, 36.818516, 27.672894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.610607, 36.798233, 27.503374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426361, 0.153324, 0.891464,
		0.019776, 0.986874, -0.160275,
		-0.904337, -0.050705, -0.423796,
		39.339306, 36.783020, 27.376236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.712292, 37.456013, 27.633200>,  <39.972343, 36.818516, 27.672894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.712292, 37.456013, 27.633200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.407337, 37.197266, 27.640369>,  <39.224365, 37.042015, 27.644670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.407337, 37.197266, 27.640369>,  <39.712292, 37.456013, 27.633200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.407337, 37.197266, 27.640369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256461, 0.327458, 0.909395,
		-0.594130, 0.688716, -0.415547,
		-0.762389, -0.646870, 0.017924,
		39.178619, 37.003204, 27.645746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062969, 37.848808, 27.824871>,  <39.712292, 37.456013, 27.633200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.062969, 37.848808, 27.824871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.979008, 37.464794, 27.898922>,  <38.928631, 37.234386, 27.943354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.979008, 37.464794, 27.898922>,  <39.062969, 37.848808, 27.824871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.979008, 37.464794, 27.898922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189517, 0.225707, 0.955584,
		-0.959179, 0.165496, -0.229320,
		-0.209905, -0.960035, 0.185129,
		38.916035, 37.176785, 27.954460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498169, 37.846848, 28.251610>,  <39.062969, 37.848808, 27.824871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498169, 37.846848, 28.251610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.649078, 37.483471, 28.323605>,  <38.739624, 37.265446, 28.366802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.649078, 37.483471, 28.323605>,  <38.498169, 37.846848, 28.251610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649078, 37.483471, 28.323605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263700, 0.080927, 0.961204,
		-0.887767, -0.410095, -0.209026,
		0.377269, -0.908445, 0.179986,
		38.762260, 37.210938, 28.377600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131855, 37.696213, 28.814308>,  <38.498169, 37.846848, 28.251610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131855, 37.696213, 28.814308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.400116, 37.399662, 28.804607>,  <38.561073, 37.221733, 28.798788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.400116, 37.399662, 28.804607>,  <38.131855, 37.696213, 28.814308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.400116, 37.399662, 28.804607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098891, -0.121763, 0.987620,
		-0.735148, -0.659954, -0.154976,
		0.670655, -0.741373, -0.024250,
		38.601311, 37.177250, 28.797333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805435, 37.134583, 29.250408>,  <38.131855, 37.696213, 28.814308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.805435, 37.134583, 29.250408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.199516, 37.078648, 29.210775>,  <38.435966, 37.045086, 29.186996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.199516, 37.078648, 29.210775>,  <37.805435, 37.134583, 29.250408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.199516, 37.078648, 29.210775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066330, -0.221959, 0.972797,
		-0.158020, -0.964977, -0.209400,
		0.985205, -0.139831, -0.099081,
		38.495079, 37.036697, 29.181051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009518, 36.442146, 29.474308>,  <37.805435, 37.134583, 29.250408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009518, 36.442146, 29.474308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.315979, 36.693062, 29.530195>,  <38.499855, 36.843613, 29.563726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.315979, 36.693062, 29.530195>,  <38.009518, 36.442146, 29.474308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.315979, 36.693062, 29.530195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031126, -0.253366, 0.966870,
		0.641908, -0.736418, -0.213642,
		0.766149, 0.627291, 0.139716,
		38.545822, 36.881248, 29.572109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445278, 35.968811, 29.895058>,  <38.009518, 36.442146, 29.474308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445278, 35.968811, 29.895058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.589622, 36.338352, 29.946091>,  <38.676231, 36.560078, 29.976711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.589622, 36.338352, 29.946091>,  <38.445278, 35.968811, 29.895058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589622, 36.338352, 29.946091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173009, -0.200742, 0.964246,
		0.916431, -0.325887, -0.232275,
		0.360863, 0.923851, 0.127585,
		38.697880, 36.615509, 29.984365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052990, 35.857597, 30.277584>,  <38.445278, 35.968811, 29.895058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.052990, 35.857597, 30.277584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.948238, 36.238895, 30.337915>,  <38.885387, 36.467674, 30.374115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.948238, 36.238895, 30.337915>,  <39.052990, 35.857597, 30.277584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.948238, 36.238895, 30.337915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228059, -0.090733, 0.969411,
		0.937768, 0.288266, -0.193634,
		-0.261879, 0.953242, 0.150828,
		38.869675, 36.524868, 30.383163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577702, 36.098431, 30.705706>,  <39.052990, 35.857597, 30.277584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.577702, 36.098431, 30.705706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.302071, 36.381847, 30.766539>,  <39.136692, 36.551899, 30.803040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.302071, 36.381847, 30.766539>,  <39.577702, 36.098431, 30.705706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.302071, 36.381847, 30.766539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228321, 0.013094, 0.973498,
		0.687777, 0.705543, -0.170799,
		-0.689081, 0.708546, 0.152084,
		39.095345, 36.594410, 30.812164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.938450, 36.520409, 31.114368>,  <39.577702, 36.098431, 30.705706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.938450, 36.520409, 31.114368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.546772, 36.590572, 31.155197>,  <39.311768, 36.632671, 31.179693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.546772, 36.590572, 31.155197>,  <39.938450, 36.520409, 31.114368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.546772, 36.590572, 31.155197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090014, -0.075384, 0.993084,
		0.181891, 0.981605, 0.058026,
		-0.979190, 0.175410, 0.102070,
		39.253014, 36.643196, 31.185818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.902176, 36.974827, 31.636915>,  <39.938450, 36.520409, 31.114368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.902176, 36.974827, 31.636915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.531631, 36.825623, 31.616058>,  <39.309303, 36.736099, 31.603544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.531631, 36.825623, 31.616058>,  <39.902176, 36.974827, 31.636915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.531631, 36.825623, 31.616058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074771, -0.317819, 0.945199,
		-0.369144, 0.871695, 0.322305,
		-0.926360, -0.373013, -0.052143,
		39.253723, 36.713718, 31.600416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.517357, 37.321297, 32.184231>,  <39.902176, 36.974827, 31.636915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.517357, 37.321297, 32.184231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.350780, 36.969666, 32.091461>,  <39.250835, 36.758686, 32.035801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.350780, 36.969666, 32.091461>,  <39.517357, 37.321297, 32.184231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.350780, 36.969666, 32.091461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085886, -0.215916, 0.972627,
		-0.905095, 0.424965, 0.014417,
		-0.416445, -0.879082, -0.231923,
		39.225845, 36.705940, 32.021885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960365, 37.327679, 32.660194>,  <39.517357, 37.321297, 32.184231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.960365, 37.327679, 32.660194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.032242, 36.947449, 32.558910>,  <39.075367, 36.719311, 32.498138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.032242, 36.947449, 32.558910>,  <38.960365, 37.327679, 32.660194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.032242, 36.947449, 32.558910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080951, -0.270819, 0.959220,
		-0.980387, -0.151866, -0.125614,
		0.179692, -0.950576, -0.253214,
		39.086151, 36.662277, 32.482944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361912, 36.918819, 33.068729>,  <38.960365, 37.327679, 32.660194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.361912, 36.918819, 33.068729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.657555, 36.667797, 32.970837>,  <38.834942, 36.517185, 32.912102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.657555, 36.667797, 32.970837>,  <38.361912, 36.918819, 33.068729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.657555, 36.667797, 32.970837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087683, -0.270594, 0.958692,
		-0.667856, -0.730035, -0.144972,
		0.739108, -0.627557, -0.244729,
		38.879288, 36.479530, 32.897419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133148, 36.271572, 33.195354>,  <38.361912, 36.918819, 33.068729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.133148, 36.271572, 33.195354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.532364, 36.293602, 33.207253>,  <38.771893, 36.306820, 33.214390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.532364, 36.293602, 33.207253>,  <38.133148, 36.271572, 33.195354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.532364, 36.293602, 33.207253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019891, -0.171495, 0.984984,
		0.059352, -0.983644, -0.170063,
		0.998039, 0.055078, 0.029744,
		38.831776, 36.310123, 33.216175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289074, 35.776791, 33.685669>,  <38.133148, 36.271572, 33.195354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.289074, 35.776791, 33.685669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.624237, 35.994724, 33.672585>,  <38.825336, 36.125484, 33.664734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.624237, 35.994724, 33.672585>,  <38.289074, 35.776791, 33.685669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624237, 35.994724, 33.672585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168773, -0.201629, 0.964811,
		0.519063, -0.813944, -0.260899,
		0.837908, 0.544831, -0.032713,
		38.875610, 36.158173, 33.662769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756527, 35.320595, 33.883438>,  <38.289074, 35.776791, 33.685669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.756527, 35.320595, 33.883438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.888252, 35.691502, 33.954700>,  <38.967285, 35.914043, 33.997456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.888252, 35.691502, 33.954700>,  <38.756527, 35.320595, 33.883438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888252, 35.691502, 33.954700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074551, -0.213621, 0.974068,
		0.941274, -0.307488, -0.139476,
		0.329309, 0.927263, 0.178153,
		38.987045, 35.969681, 34.008148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313652, 35.222786, 34.289131>,  <38.756527, 35.320595, 33.883438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.313652, 35.222786, 34.289131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.252174, 35.612682, 34.353939>,  <39.215290, 35.846622, 34.392826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.252174, 35.612682, 34.353939>,  <39.313652, 35.222786, 34.289131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.252174, 35.612682, 34.353939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074520, -0.152069, 0.985557,
		0.985305, 0.163546, -0.049266,
		-0.153692, 0.974745, 0.162022,
		39.206066, 35.905106, 34.402546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843338, 35.443245, 34.721867>,  <39.313652, 35.222786, 34.289131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843338, 35.443245, 34.721867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.548973, 35.705662, 34.788845>,  <39.372353, 35.863113, 34.829033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.548973, 35.705662, 34.788845>,  <39.843338, 35.443245, 34.721867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548973, 35.705662, 34.788845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202859, -0.022308, 0.978954,
		0.645970, 0.754395, -0.116668,
		-0.735915, 0.656042, 0.167446,
		39.328197, 35.902473, 34.839081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.089413, 35.770641, 35.316357>,  <39.843338, 35.443245, 34.721867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.089413, 35.770641, 35.316357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.706497, 35.883118, 35.289417>,  <39.476749, 35.950603, 35.273254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.706497, 35.883118, 35.289417>,  <40.089413, 35.770641, 35.316357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.706497, 35.883118, 35.289417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048618, 0.073057, 0.996142,
		0.285030, 0.956866, -0.056266,
		-0.957285, 0.281195, -0.067344,
		39.419312, 35.967476, 35.269215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.112846, 36.289276, 35.676018>,  <40.089413, 35.770641, 35.316357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.112846, 36.289276, 35.676018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.722187, 36.205402, 35.657326>,  <39.487789, 36.155079, 35.646111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.722187, 36.205402, 35.657326>,  <40.112846, 36.289276, 35.676018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.722187, 36.205402, 35.657326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133254, 0.420681, 0.897369,
		-0.168507, 0.882644, -0.438800,
		-0.976652, -0.209685, -0.046728,
		39.429192, 36.142498, 35.643307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.733768, 36.912464, 35.812450>,  <40.112846, 36.289276, 35.676018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.733768, 36.912464, 35.812450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.499931, 36.611118, 35.932911>,  <39.359627, 36.430309, 36.005188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.499931, 36.611118, 35.932911>,  <39.733768, 36.912464, 35.812450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.499931, 36.611118, 35.932911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000074, 0.371231, 0.928541,
		-0.811324, 0.542799, -0.217076,
		-0.584597, -0.753364, 0.301148,
		39.324551, 36.385109, 36.023254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146137, 37.200424, 36.040615>,  <39.733768, 36.912464, 35.812450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.146137, 37.200424, 36.040615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.219521, 36.856728, 36.231632>,  <39.263550, 36.650509, 36.346241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.219521, 36.856728, 36.231632>,  <39.146137, 37.200424, 36.040615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.219521, 36.856728, 36.231632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008850, 0.487209, 0.873240,
		-0.982987, -0.155980, 0.096988,
		0.183461, -0.859242, 0.477540,
		39.274559, 36.598953, 36.374893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.455761, 37.098816, 35.936417>,  <39.146137, 37.200424, 36.040615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.455761, 37.098816, 35.936417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.598549, 37.352951, 35.662506>,  <38.684219, 37.505432, 35.498158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.598549, 37.352951, 35.662506>,  <38.455761, 37.098816, 35.936417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598549, 37.352951, 35.662506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798614, -0.587837, -0.129087,
		-0.484552, -0.500795, -0.717226,
		0.356966, 0.635336, -0.684780,
		38.705639, 37.543552, 35.457073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.689598, 37.307751, 36.649021>,  <38.455761, 37.098816, 35.936417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.689598, 37.307751, 36.649021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.957310, 37.016441, 36.707932>,  <39.117935, 36.841656, 36.743279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.957310, 37.016441, 36.707932>,  <38.689598, 37.307751, 36.649021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957310, 37.016441, 36.707932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026644, 0.221612, 0.974771,
		-0.742536, -0.648467, 0.167724,
		0.669276, -0.728271, 0.147277,
		39.158092, 36.797958, 36.752113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413536, 36.832993, 37.056244>,  <38.689598, 37.307751, 36.649021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.413536, 36.832993, 37.056244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.807579, 36.814575, 37.122520>,  <39.044003, 36.803524, 37.162285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.807579, 36.814575, 37.122520>,  <38.413536, 36.832993, 37.056244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807579, 36.814575, 37.122520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148289, 0.260441, 0.954034,
		-0.087079, -0.964391, 0.249734,
		0.985103, -0.046044, 0.165687,
		39.103111, 36.800762, 37.172226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528648, 36.530479, 37.656052>,  <38.413536, 36.832993, 37.056244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.528648, 36.530479, 37.656052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.892925, 36.689602, 37.611519>,  <39.111492, 36.785076, 37.584801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.892925, 36.689602, 37.611519>,  <38.528648, 36.530479, 37.656052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.892925, 36.689602, 37.611519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072831, 0.110659, 0.991186,
		0.406623, -0.910770, 0.071803,
		0.910688, 0.397810, -0.111329,
		39.166130, 36.808945, 37.578121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037960, 36.088009, 38.116776>,  <38.528648, 36.530479, 37.656052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.037960, 36.088009, 38.116776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.185574, 36.456287, 38.065983>,  <39.274143, 36.677254, 38.035507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.185574, 36.456287, 38.065983>,  <39.037960, 36.088009, 38.116776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185574, 36.456287, 38.065983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060598, 0.160168, 0.985228,
		0.927438, -0.355888, 0.114900,
		0.369034, 0.920701, -0.126980,
		39.296284, 36.732498, 38.027889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580612, 36.238190, 38.667820>,  <39.037960, 36.088009, 38.116776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.580612, 36.238190, 38.667820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.369534, 36.547142, 38.526417>,  <39.242886, 36.732513, 38.441574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.369534, 36.547142, 38.526417>,  <39.580612, 36.238190, 38.667820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.369534, 36.547142, 38.526417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421972, 0.122818, 0.898251,
		0.737208, 0.623173, 0.261112,
		-0.527697, 0.772380, -0.353504,
		39.211224, 36.778854, 38.420364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654720, 36.765335, 39.195698>,  <39.580612, 36.238190, 38.667820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654720, 36.765335, 39.195698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.327560, 36.877468, 38.994717>,  <39.131264, 36.944748, 38.874130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.327560, 36.877468, 38.994717>,  <39.654720, 36.765335, 39.195698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.327560, 36.877468, 38.994717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510997, 0.047424, 0.858273,
		0.264432, 0.958730, 0.104463,
		-0.817898, 0.280335, -0.502449,
		39.082191, 36.961567, 38.843983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.202679, 37.068695, 39.728607>,  <39.654720, 36.765335, 39.195698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.202679, 37.068695, 39.728607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.950710, 36.990990, 39.427818>,  <38.799530, 36.944366, 39.247345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.950710, 36.990990, 39.427818>,  <39.202679, 37.068695, 39.728607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.950710, 36.990990, 39.427818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747953, -0.109082, 0.654727,
		-0.209217, 0.974865, -0.076589,
		-0.629916, -0.194265, -0.751975,
		38.761734, 36.932709, 39.202225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569920, 37.467861, 39.821274>,  <39.202679, 37.068695, 39.728607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.569920, 37.467861, 39.821274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.447090, 37.181332, 39.570648>,  <38.373394, 37.009415, 39.420273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.447090, 37.181332, 39.570648>,  <38.569920, 37.467861, 39.821274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.447090, 37.181332, 39.570648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754062, -0.218525, 0.619384,
		-0.580600, 0.662667, -0.473049,
		-0.307073, -0.716323, -0.626568,
		38.354969, 36.966434, 39.382679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886765, 37.555275, 39.733860>,  <38.569920, 37.467861, 39.821274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.886765, 37.555275, 39.733860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.946976, 37.173061, 39.632439>,  <37.983101, 36.943733, 39.571587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.946976, 37.173061, 39.632439>,  <37.886765, 37.555275, 39.733860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946976, 37.173061, 39.632439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779359, -0.272490, 0.564224,
		-0.608228, 0.112676, -0.785724,
		0.150527, -0.955538, -0.253551,
		37.992134, 36.886398, 39.556374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.351601, 37.232155, 39.399990>,  <37.886765, 37.555275, 39.733860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.351601, 37.232155, 39.399990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.536087, 36.934013, 39.592541>,  <37.646778, 36.755127, 39.708073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.536087, 36.934013, 39.592541>,  <37.351601, 37.232155, 39.399990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536087, 36.934013, 39.592541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807682, -0.128079, 0.575540,
		-0.367330, -0.654246, -0.661084,
		0.461215, -0.745358, 0.481375,
		37.674450, 36.710407, 39.736954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939419, 36.646526, 39.246967>,  <37.351601, 37.232155, 39.399990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939419, 36.646526, 39.246967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.125290, 36.678661, 39.599697>,  <37.236813, 36.697945, 39.811337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.125290, 36.678661, 39.599697>,  <36.939419, 36.646526, 39.246967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.125290, 36.678661, 39.599697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858864, -0.201448, 0.470927,
		0.215478, -0.976199, -0.024606,
		0.464675, 0.080341, 0.881829,
		37.264694, 36.702763, 39.864246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741776, 36.108208, 39.833817>,  <36.939419, 36.646526, 39.246967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741776, 36.108208, 39.833817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.858372, 36.448231, 40.009289>,  <36.928329, 36.652245, 40.114571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.858372, 36.448231, 40.009289>,  <36.741776, 36.108208, 39.833817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858372, 36.448231, 40.009289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759845, -0.072821, 0.646013,
		0.581091, -0.521637, 0.624683,
		0.291494, 0.850054, 0.438679,
		36.945820, 36.703247, 40.140892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731030, 36.066109, 40.484833>,  <36.741776, 36.108208, 39.833817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731030, 36.066109, 40.484833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.677296, 36.456142, 40.414207>,  <36.645058, 36.690163, 40.371834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.677296, 36.456142, 40.414207>,  <36.731030, 36.066109, 40.484833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.677296, 36.456142, 40.414207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819399, -0.009100, 0.573151,
		0.557261, 0.221667, 0.800203,
		-0.134330, 0.975080, -0.176563,
		36.636997, 36.748665, 40.361240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.444107, 36.209610, 40.608067>,  <36.731030, 36.066109, 40.484833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.444107, 36.209610, 40.608067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.353256, 36.053619, 40.251118>,  <37.298748, 35.960026, 40.036949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.353256, 36.053619, 40.251118>,  <37.444107, 36.209610, 40.608067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.353256, 36.053619, 40.251118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813242, 0.428167, -0.394094,
		0.535772, -0.815226, 0.219897,
		-0.227123, -0.389974, -0.892376,
		37.285118, 35.936626, 39.983406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099903, 36.074669, 40.402737>,  <37.444107, 36.209610, 40.608067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.099903, 36.074669, 40.402737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.837532, 36.072258, 40.100819>,  <37.680107, 36.070812, 39.919666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.837532, 36.072258, 40.100819>,  <38.099903, 36.074669, 40.402737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.837532, 36.072258, 40.100819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683211, 0.420380, -0.597079,
		0.320900, -0.907328, -0.271623,
		-0.655931, -0.006027, -0.754797,
		37.640751, 36.070450, 39.874378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526241, 35.885578, 39.878281>,  <38.099903, 36.074669, 40.402737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.526241, 35.885578, 39.878281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.188473, 36.042072, 39.731918>,  <37.985809, 36.135967, 39.644100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.188473, 36.042072, 39.731918>,  <38.526241, 35.885578, 39.878281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.188473, 36.042072, 39.731918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528337, 0.495590, -0.689385,
		-0.088373, -0.775452, -0.625191,
		-0.844423, 0.391234, -0.365903,
		37.935146, 36.159443, 39.622147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267223, 35.654381, 39.174995>,  <38.526241, 35.885578, 39.878281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267223, 35.654381, 39.174995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142036, 36.023605, 39.264450>,  <38.066925, 36.245140, 39.318123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142036, 36.023605, 39.264450>,  <38.267223, 35.654381, 39.174995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142036, 36.023605, 39.264450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598888, 0.374546, -0.707848,
		-0.737147, -0.087601, -0.670030,
		-0.312965, 0.923061, 0.223632,
		38.048145, 36.300522, 39.331539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091335, 35.937889, 38.621857>,  <38.267223, 35.654381, 39.174995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.091335, 35.937889, 38.621857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.181198, 36.254009, 38.849876>,  <38.235115, 36.443680, 38.986687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.181198, 36.254009, 38.849876>,  <38.091335, 35.937889, 38.621857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.181198, 36.254009, 38.849876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489409, 0.414350, -0.767328,
		-0.842619, 0.451372, -0.293693,
		0.224659, 0.790302, 0.570045,
		38.248596, 36.491100, 39.020889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.970112, 36.608368, 38.244976>,  <38.091335, 35.937889, 38.621857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.970112, 36.608368, 38.244976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.242035, 36.706478, 38.521439>,  <38.405190, 36.765343, 38.687317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.242035, 36.706478, 38.521439>,  <37.970112, 36.608368, 38.244976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.242035, 36.706478, 38.521439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531465, 0.484662, -0.694728,
		-0.505379, 0.839609, 0.199121,
		0.679806, 0.245275, 0.691161,
		38.445976, 36.780060, 38.728786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085518, 37.376675, 38.462234>,  <37.970112, 36.608368, 38.244976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085518, 37.376675, 38.462234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.431881, 37.179203, 38.494427>,  <38.639698, 37.060719, 38.513741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.431881, 37.179203, 38.494427>,  <38.085518, 37.376675, 38.462234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.431881, 37.179203, 38.494427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397421, 0.581331, -0.710008,
		0.303734, 0.646787, 0.699580,
		0.865912, -0.493681, 0.080477,
		38.691654, 37.031097, 38.518570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.519135, 37.856400, 38.150272>,  <38.085518, 37.376675, 38.462234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.519135, 37.856400, 38.150272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.740406, 37.530743, 38.220898>,  <38.873169, 37.335350, 38.263271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.740406, 37.530743, 38.220898>,  <38.519135, 37.856400, 38.150272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.740406, 37.530743, 38.220898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616793, 0.257797, -0.743712,
		0.559967, 0.520306, 0.644762,
		0.553176, -0.814139, 0.176564,
		38.906357, 37.286503, 38.273869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194351, 38.085758, 38.249615>,  <38.519135, 37.856400, 38.150272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.194351, 38.085758, 38.249615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.199371, 37.705864, 38.124489>,  <39.202381, 37.477928, 38.049412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.199371, 37.705864, 38.124489>,  <39.194351, 38.085758, 38.249615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.199371, 37.705864, 38.124489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600988, 0.257190, -0.756747,
		0.799159, -0.178504, 0.574004,
		0.012546, -0.949731, -0.312815,
		39.203136, 37.420944, 38.030643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.881302, 37.924835, 37.810650>,  <39.194351, 38.085758, 38.249615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.881302, 37.924835, 37.810650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.732006, 37.564171, 37.898006>,  <39.642429, 37.347771, 37.950420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.732006, 37.564171, 37.898006>,  <39.881302, 37.924835, 37.810650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732006, 37.564171, 37.898006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190432, -0.304853, -0.933167,
		0.907982, -0.306701, 0.285488,
		-0.373235, -0.901665, 0.218395,
		39.620037, 37.293671, 37.963524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.259163, 37.483635, 37.278034>,  <39.881302, 37.924835, 37.810650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.259163, 37.483635, 37.278034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.952290, 37.257027, 37.398361>,  <39.768166, 37.121063, 37.470558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.952290, 37.257027, 37.398361>,  <40.259163, 37.483635, 37.278034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.952290, 37.257027, 37.398361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053323, -0.523685, -0.850241,
		0.639213, -0.636247, 0.431968,
		-0.767179, -0.566519, 0.300820,
		39.722137, 37.087070, 37.488605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.355671, 36.782158, 37.370953>,  <40.259163, 37.483635, 37.278034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.355671, 36.782158, 37.370953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.974068, 36.825485, 37.259140>,  <39.745106, 36.851482, 37.192055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.974068, 36.825485, 37.259140>,  <40.355671, 36.782158, 37.370953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.974068, 36.825485, 37.259140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152058, -0.628747, -0.762598,
		-0.258356, -0.770029, 0.583359,
		-0.954008, 0.108318, -0.279530,
		39.687866, 36.857979, 37.175282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.225651, 36.116005, 37.074696>,  <40.355671, 36.782158, 37.370953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.225651, 36.116005, 37.074696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.893707, 36.318653, 36.981174>,  <39.694542, 36.440243, 36.925064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.893707, 36.318653, 36.981174>,  <40.225651, 36.116005, 37.074696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.893707, 36.318653, 36.981174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155648, -0.612581, -0.774931,
		-0.535816, -0.606697, 0.587214,
		-0.829865, 0.506619, -0.233799,
		39.644749, 36.470638, 36.911034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746452, 35.610260, 37.071453>,  <40.225651, 36.116005, 37.074696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.746452, 35.610260, 37.071453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.579151, 35.913189, 36.870846>,  <39.478771, 36.094948, 36.750481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.579151, 35.913189, 36.870846>,  <39.746452, 35.610260, 37.071453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.579151, 35.913189, 36.870846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344739, -0.643176, -0.683725,
		-0.840367, -0.113079, 0.530091,
		-0.418256, 0.757323, -0.501521,
		39.453674, 36.140385, 36.720390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.028473, 35.451950, 36.893711>,  <39.746452, 35.610260, 37.071453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.028473, 35.451950, 36.893711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.119877, 35.759220, 36.654484>,  <39.174721, 35.943581, 36.510948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.119877, 35.759220, 36.654484>,  <39.028473, 35.451950, 36.893711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.119877, 35.759220, 36.654484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565778, -0.395148, -0.723708,
		-0.792261, 0.503752, 0.344320,
		0.228512, 0.768174, -0.598072,
		39.188431, 35.989674, 36.475063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553719, 35.401157, 36.333103>,  <39.028473, 35.451950, 36.893711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.553719, 35.401157, 36.333103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.790421, 35.708218, 36.234688>,  <38.932442, 35.892452, 36.175636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.790421, 35.708218, 36.234688>,  <38.553719, 35.401157, 36.333103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.790421, 35.708218, 36.234688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232161, -0.129994, -0.963952,
		-0.771963, 0.627544, 0.101294,
		0.591755, 0.767652, -0.246043,
		38.967945, 35.938515, 36.160873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197010, 35.775314, 35.818645>,  <38.553719, 35.401157, 36.333103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197010, 35.775314, 35.818645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.575813, 35.897152, 35.777840>,  <38.803093, 35.970253, 35.753357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.575813, 35.897152, 35.777840>,  <38.197010, 35.775314, 35.818645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.575813, 35.897152, 35.777840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089663, -0.054298, -0.994491,
		-0.308453, 0.950934, -0.024109,
		0.947004, 0.304592, -0.102012,
		38.859913, 35.988529, 35.747234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154469, 36.104652, 35.131836>,  <38.197010, 35.775314, 35.818645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.154469, 36.104652, 35.131836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.546494, 36.071644, 35.204124>,  <38.781708, 36.051838, 35.247498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.546494, 36.071644, 35.204124>,  <38.154469, 36.104652, 35.131836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.546494, 36.071644, 35.204124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189471, 0.114580, -0.975178,
		0.059767, 0.989981, 0.127932,
		0.980066, -0.082523, 0.180724,
		38.840515, 36.046886, 35.258343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364525, 36.693619, 34.950188>,  <38.154469, 36.104652, 35.131836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364525, 36.693619, 34.950188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.678497, 36.446068, 34.938423>,  <38.866882, 36.297539, 34.931362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.678497, 36.446068, 34.938423>,  <38.364525, 36.693619, 34.950188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.678497, 36.446068, 34.938423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240229, 0.347760, -0.906286,
		0.571109, 0.704310, 0.421642,
		0.784936, -0.618878, -0.029413,
		38.913979, 36.260403, 34.929600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031635, 37.074509, 34.758396>,  <38.364525, 36.693619, 34.950188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.031635, 37.074509, 34.758396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.038754, 36.692551, 34.639828>,  <39.043026, 36.463375, 34.568687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.038754, 36.692551, 34.639828>,  <39.031635, 37.074509, 34.758396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038754, 36.692551, 34.639828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118719, 0.296385, -0.947661,
		0.992768, -0.018323, 0.118639,
		0.017799, -0.954893, -0.296417,
		39.044094, 36.406082, 34.550903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457287, 37.116119, 34.193531>,  <39.031635, 37.074509, 34.758396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.457287, 37.116119, 34.193531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.267822, 36.767006, 34.146389>,  <39.154144, 36.557537, 34.118103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.267822, 36.767006, 34.146389>,  <39.457287, 37.116119, 34.193531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.267822, 36.767006, 34.146389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088238, 0.086113, -0.992370,
		0.876275, -0.480447, 0.036224,
		-0.473662, -0.872786, -0.117852,
		39.125725, 36.505169, 34.111034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.986320, 36.795254, 33.804893>,  <39.457287, 37.116119, 34.193531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.986320, 36.795254, 33.804893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.643078, 36.598358, 33.746433>,  <39.437134, 36.480221, 33.711357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.643078, 36.598358, 33.746433>,  <39.986320, 36.795254, 33.804893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.643078, 36.598358, 33.746433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178800, -0.019639, -0.983689,
		0.481336, -0.870241, 0.104863,
		-0.858106, -0.492235, -0.146146,
		39.385647, 36.450687, 33.702591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.097519, 36.216202, 33.320961>,  <39.986320, 36.795254, 33.804893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.097519, 36.216202, 33.320961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.704678, 36.281059, 33.282639>,  <39.468971, 36.319973, 33.259644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.704678, 36.281059, 33.282639>,  <40.097519, 36.216202, 33.320961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.704678, 36.281059, 33.282639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113315, 0.102404, -0.988268,
		-0.150428, -0.981440, -0.118944,
		-0.982106, 0.162142, -0.095807,
		39.410046, 36.329700, 33.253895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.830151, 36.372402, 33.247387>,  <40.097519, 36.216202, 33.320961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.830151, 36.372402, 33.247387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.619717, 36.309265, 33.581650>,  <40.493458, 36.271381, 33.782207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.619717, 36.309265, 33.581650>,  <40.830151, 36.372402, 33.247387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.619717, 36.309265, 33.581650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765699, -0.515489, 0.384676,
		0.370054, 0.842233, 0.392050,
		-0.526085, -0.157842, 0.835656,
		40.461891, 36.261913, 33.832348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.038383, 36.787384, 33.877453>,  <40.830151, 36.372402, 33.247387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.038383, 36.787384, 33.877453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.896198, 36.414494, 33.904575>,  <40.810886, 36.190758, 33.920849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.896198, 36.414494, 33.904575>,  <41.038383, 36.787384, 33.877453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.896198, 36.414494, 33.904575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929971, -0.345450, 0.125775,
		-0.093827, 0.107765, 0.989739,
		-0.355460, -0.932229, 0.067806,
		40.789562, 36.134827, 33.924915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.315434, 36.431461, 34.521725>,  <41.038383, 36.787384, 33.877453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.315434, 36.431461, 34.521725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.230934, 36.182274, 34.220451>,  <41.180237, 36.032761, 34.039688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.230934, 36.182274, 34.220451>,  <41.315434, 36.431461, 34.521725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.230934, 36.182274, 34.220451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873772, -0.465711, 0.140129,
		-0.438063, -0.628510, 0.642710,
		-0.211245, -0.622967, -0.753185,
		41.167561, 35.995384, 33.994495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.969036, 37.093296, 34.703686>,  <41.315434, 36.431461, 34.521725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.969036, 37.093296, 34.703686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.794212, 36.755878, 34.828526>,  <40.689316, 36.553429, 34.903431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.794212, 36.755878, 34.828526>,  <40.969036, 37.093296, 34.703686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.794212, 36.755878, 34.828526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688593, 0.537053, 0.487250,
		-0.578632, -0.001950, -0.815586,
		-0.437063, -0.843546, 0.312099,
		40.663094, 36.502815, 34.922153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.777615, 36.995338, 34.724354>,  <40.969036, 37.093296, 34.703686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.777615, 36.995338, 34.724354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.045456, 37.202648, 34.511555>,  <42.206161, 37.327034, 34.383873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.045456, 37.202648, 34.511555>,  <41.777615, 36.995338, 34.724354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.045456, 37.202648, 34.511555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499357, -0.844380, -0.194072,
		-0.549792, -0.135706, -0.824204,
		0.669606, 0.518271, -0.531999,
		42.246338, 37.358131, 34.351955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.827579, 36.863899, 33.919373>,  <41.777615, 36.995338, 34.724354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.827579, 36.863899, 33.919373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.188137, 36.956726, 34.065594>,  <42.404472, 37.012424, 34.153328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.188137, 36.956726, 34.065594>,  <41.827579, 36.863899, 33.919373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.188137, 36.956726, 34.065594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325565, -0.919849, -0.218828,
		0.285470, 0.316261, -0.904702,
		0.901396, 0.232070, 0.365553,
		42.458557, 37.026348, 34.175259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.375183, 36.799824, 33.510612>,  <41.827579, 36.863899, 33.919373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.375183, 36.799824, 33.510612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.563061, 36.738811, 33.858433>,  <42.675789, 36.702202, 34.067123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.563061, 36.738811, 33.858433>,  <42.375183, 36.799824, 33.510612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.563061, 36.738811, 33.858433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149463, -0.957003, -0.248607,
		0.870084, 0.246736, -0.426703,
		0.469696, -0.152533, 0.869551,
		42.703968, 36.693050, 34.119297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.988018, 36.511623, 33.347080>,  <42.375183, 36.799824, 33.510612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.988018, 36.511623, 33.347080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.865513, 36.418743, 33.716358>,  <42.792011, 36.363014, 33.937923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.865513, 36.418743, 33.716358>,  <42.988018, 36.511623, 33.347080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.865513, 36.418743, 33.716358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116683, -0.971639, -0.205677,
		0.944770, 0.044731, 0.324666,
		-0.306258, -0.232200, 0.923195,
		42.773636, 36.349083, 33.993317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.310398, 35.908985, 33.474579>,  <42.988018, 36.511623, 33.347080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.310398, 35.908985, 33.474579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.005787, 35.918373, 33.733662>,  <42.823021, 35.924004, 33.889111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.005787, 35.918373, 33.733662>,  <43.310398, 35.908985, 33.474579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.005787, 35.918373, 33.733662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108187, -0.989926, -0.091332,
		0.639039, -0.139625, 0.756395,
		-0.761528, 0.023467, 0.647708,
		42.777328, 35.925415, 33.927975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.462482, 35.385563, 34.058430>,  <43.310398, 35.908985, 33.474579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.462482, 35.385563, 34.058430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.075462, 35.469028, 34.001427>,  <42.843250, 35.519108, 33.967224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.075462, 35.469028, 34.001427>,  <43.462482, 35.385563, 34.058430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.075462, 35.469028, 34.001427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193959, -0.974776, -0.110418,
		-0.161952, -0.079195, 0.983616,
		-0.967549, 0.208663, -0.142507,
		42.785198, 35.531628, 33.958675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.041908, 35.028763, 34.574951>,  <43.462482, 35.385563, 34.058430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.041908, 35.028763, 34.574951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.862701, 35.086758, 34.222076>,  <42.755177, 35.121555, 34.010349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.862701, 35.086758, 34.222076>,  <43.041908, 35.028763, 34.574951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.862701, 35.086758, 34.222076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301364, -0.953502, -0.003656,
		-0.841700, 0.264223, 0.470879,
		-0.448018, 0.144983, -0.882190,
		42.728294, 35.130253, 33.957420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.533813, 34.602421, 35.009098>,  <43.041908, 35.028763, 34.574951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.533813, 34.602421, 35.009098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.590485, 34.210918, 35.068390>,  <43.624489, 33.976017, 35.103966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.590485, 34.210918, 35.068390>,  <43.533813, 34.602421, 35.009098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.590485, 34.210918, 35.068390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970684, 0.107989, -0.214733,
		0.194164, 0.174303, 0.965359,
		0.141677, -0.978753, 0.148226,
		43.632988, 33.917294, 35.112858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.092461, 34.550629, 35.511505>,  <43.533813, 34.602421, 35.009098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.092461, 34.550629, 35.511505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.066097, 34.227489, 35.277225>,  <44.050278, 34.033607, 35.136658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.066097, 34.227489, 35.277225>,  <44.092461, 34.550629, 35.511505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.066097, 34.227489, 35.277225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917405, 0.181804, -0.354001,
		0.392460, -0.560652, 0.729139,
		-0.065910, -0.807847, -0.585696,
		44.046326, 33.985134, 35.101517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.530945, 34.037495, 35.569679>,  <44.092461, 34.550629, 35.511505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.530945, 34.037495, 35.569679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.481010, 34.032375, 35.172840>,  <44.451050, 34.029305, 34.934738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.481010, 34.032375, 35.172840>,  <44.530945, 34.037495, 35.569679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.481010, 34.032375, 35.172840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940442, 0.317144, -0.122424,
		0.316205, -0.948291, -0.027543,
		-0.124829, -0.012809, -0.992095,
		44.443562, 34.028534, 34.875210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.108463, 33.687599, 35.253811>,  <44.530945, 34.037495, 35.569679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.108463, 33.687599, 35.253811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.990402, 33.971313, 34.997749>,  <44.919567, 34.141544, 34.844112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.990402, 33.971313, 34.997749>,  <45.108463, 33.687599, 35.253811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.990402, 33.971313, 34.997749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941390, 0.330405, -0.067948,
		0.163315, -0.622690, -0.765236,
		-0.295148, 0.709288, -0.640154,
		44.901859, 34.184101, 34.805702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.385345, 33.577648, 34.477211>,  <45.108463, 33.687599, 35.253811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.385345, 33.577648, 34.477211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.355804, 33.967014, 34.563946>,  <45.338081, 34.200634, 34.615986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.355804, 33.967014, 34.563946>,  <45.385345, 33.577648, 34.477211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.355804, 33.967014, 34.563946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995725, 0.084068, -0.038275,
		-0.055486, 0.213079, -0.975458,
		-0.073849, 0.973411, 0.216833,
		45.333649, 34.259037, 34.628994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.675293, 33.955044, 33.946449>,  <45.385345, 33.577648, 34.477211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.675293, 33.955044, 33.946449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.672279, 34.231468, 34.235554>,  <45.670471, 34.397324, 34.409016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.672279, 34.231468, 34.235554>,  <45.675293, 33.955044, 33.946449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.672279, 34.231468, 34.235554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962550, 0.200890, -0.182047,
		-0.271000, 0.694322, -0.666690,
		-0.007532, 0.691057, 0.722761,
		45.670021, 34.438786, 34.452381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.819027, 34.788662, 33.710758>,  <45.675293, 33.955044, 33.946449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.819027, 34.788662, 33.710758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.950470, 34.629433, 34.053349>,  <46.029335, 34.533897, 34.258904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.950470, 34.629433, 34.053349>,  <45.819027, 34.788662, 33.710758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.950470, 34.629433, 34.053349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931823, 0.284534, -0.225269,
		-0.154025, 0.872112, 0.464432,
		0.328606, -0.398071, 0.856479,
		46.049053, 34.510010, 34.310291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.473667, 35.117538, 34.044647>,  <45.819027, 34.788662, 33.710758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.473667, 35.117538, 34.044647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.496685, 34.746384, 34.192005>,  <46.510494, 34.523689, 34.280418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.496685, 34.746384, 34.192005>,  <46.473667, 35.117538, 34.044647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.496685, 34.746384, 34.192005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975647, -0.025970, -0.217802,
		0.211663, 0.371954, 0.903797,
		0.057541, -0.927888, 0.368393,
		46.513947, 34.468018, 34.302525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.051399, 34.975491, 34.574318>,  <46.473667, 35.117538, 34.044647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.051399, 34.975491, 34.574318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.972477, 34.649677, 34.356106>,  <46.925125, 34.454189, 34.225178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.972477, 34.649677, 34.356106>,  <47.051399, 34.975491, 34.574318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.972477, 34.649677, 34.356106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979397, -0.139355, -0.146156,
		0.043027, -0.563129, 0.825248,
		-0.197307, -0.814534, -0.545531,
		46.913284, 34.405315, 34.192448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.702160, 34.810284, 34.724102>,  <47.051399, 34.975491, 34.574318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.702160, 34.810284, 34.724102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.632442, 35.073158, 35.017422>,  <47.590614, 35.230885, 35.193413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.632442, 35.073158, 35.017422>,  <47.702160, 34.810284, 34.724102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.632442, 35.073158, 35.017422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635779, -0.643774, 0.425840,
		0.751936, -0.391997, 0.530028,
		-0.174290, 0.657186, 0.733300,
		47.580154, 35.270313, 35.237411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<41.847839, 30.776739, 26.421371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.609566, 30.478285, 26.302410>,  <41.466602, 30.299213, 26.231033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.609566, 30.478285, 26.302410>,  <41.847839, 30.776739, 26.421371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.609566, 30.478285, 26.302410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554882, 0.114550, 0.824005,
		-0.580750, 0.655868, -0.482251,
		-0.595680, -0.746134, -0.297404,
		41.430862, 30.254444, 26.213188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.112480, 30.996696, 26.497149>,  <41.847839, 30.776739, 26.421371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.112480, 30.996696, 26.497149> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.150917, 30.598957, 26.515209>,  <41.173981, 30.360313, 26.526047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.150917, 30.598957, 26.515209>,  <41.112480, 30.996696, 26.497149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.150917, 30.598957, 26.515209> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471278, -0.005495, 0.881968,
		-0.876734, -0.106031, -0.469142,
		0.096093, -0.994348, 0.045152,
		41.179745, 30.300653, 26.528755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.646683, 30.884682, 26.910490>,  <41.112480, 30.996696, 26.497149>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.646683, 30.884682, 26.910490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.805042, 30.517595, 26.923521>,  <40.900059, 30.297342, 26.931339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.805042, 30.517595, 26.923521>,  <40.646683, 30.884682, 26.910490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.805042, 30.517595, 26.923521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519189, -0.194429, 0.832250,
		-0.757436, -0.346399, -0.553443,
		0.395896, -0.917717, 0.032579,
		40.923809, 30.242281, 26.933294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.030445, 30.350115, 26.833353>,  <40.646683, 30.884682, 26.910490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.030445, 30.350115, 26.833353> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.354076, 30.175262, 26.990479>,  <40.548256, 30.070351, 27.084753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.354076, 30.175262, 26.990479>,  <40.030445, 30.350115, 26.833353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.354076, 30.175262, 26.990479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513436, -0.200533, 0.834368,
		-0.285958, -0.876756, -0.386688,
		0.809081, -0.437134, 0.392814,
		40.596802, 30.044123, 27.108322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.717510, 29.785007, 27.195387>,  <40.030445, 30.350115, 26.833353>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.717510, 29.785007, 27.195387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.086475, 29.824207, 27.344812>,  <40.307854, 29.847727, 27.434467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.086475, 29.824207, 27.344812>,  <39.717510, 29.785007, 27.195387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.086475, 29.824207, 27.344812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353141, -0.177563, 0.918566,
		0.156349, -0.979218, -0.129179,
		0.922413, 0.097999, 0.373563,
		40.363201, 29.853607, 27.456881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.859447, 29.240528, 27.717699>,  <39.717510, 29.785007, 27.195387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.859447, 29.240528, 27.717699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.095322, 29.553366, 27.798294>,  <40.236847, 29.741068, 27.846651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.095322, 29.553366, 27.798294>,  <39.859447, 29.240528, 27.717699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.095322, 29.553366, 27.798294> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374326, 0.043607, 0.926271,
		0.715646, -0.621632, 0.318473,
		0.589688, 0.782094, 0.201486,
		40.272228, 29.787994, 27.858740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.035210, 29.028458, 28.392689>,  <39.859447, 29.240528, 27.717699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.035210, 29.028458, 28.392689> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.124962, 29.416744, 28.358368>,  <40.178814, 29.649717, 28.337776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.124962, 29.416744, 28.358368>,  <40.035210, 29.028458, 28.392689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.124962, 29.416744, 28.358368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303830, 0.153344, 0.940305,
		0.925928, -0.184914, 0.329340,
		0.224378, 0.970717, -0.085803,
		40.192276, 29.707960, 28.332626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.402702, 29.234179, 28.934393>,  <40.035210, 29.028458, 28.392689>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.402702, 29.234179, 28.934393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.255177, 29.579508, 28.796610>,  <40.166660, 29.786705, 28.713940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.255177, 29.579508, 28.796610>,  <40.402702, 29.234179, 28.934393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.255177, 29.579508, 28.796610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338477, 0.220397, 0.914799,
		0.865684, 0.453983, 0.210928,
		-0.368816, 0.863322, -0.344457,
		40.144531, 29.838505, 28.693274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.631027, 29.745564, 29.325710>,  <40.402702, 29.234179, 28.934393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.631027, 29.745564, 29.325710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.323086, 29.936436, 29.156183>,  <40.138321, 30.050959, 29.054468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.323086, 29.936436, 29.156183>,  <40.631027, 29.745564, 29.325710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.323086, 29.936436, 29.156183> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248421, 0.387643, 0.887705,
		0.587885, 0.788690, -0.179888,
		-0.769856, 0.477180, -0.423817,
		40.092129, 30.079590, 29.029037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.600639, 30.414852, 29.561790>,  <40.631027, 29.745564, 29.325710>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.600639, 30.414852, 29.561790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.226723, 30.349644, 29.435566>,  <40.002373, 30.310518, 29.359831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.226723, 30.349644, 29.435566>,  <40.600639, 30.414852, 29.561790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.226723, 30.349644, 29.435566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353267, 0.518948, 0.778393,
		0.036865, 0.839116, -0.542701,
		-0.934796, -0.163023, -0.315563,
		39.946285, 30.300737, 29.340897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.367840, 30.976191, 29.662636>,  <40.600639, 30.414852, 29.561790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.367840, 30.976191, 29.662636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.041634, 30.745483, 29.643545>,  <39.845909, 30.607059, 29.632092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.041634, 30.745483, 29.643545>,  <40.367840, 30.976191, 29.662636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.041634, 30.745483, 29.643545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426158, 0.542669, 0.723809,
		-0.391569, 0.610615, -0.688347,
		-0.815514, -0.576766, -0.047727,
		39.796978, 30.572453, 29.629227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699013, 31.495100, 29.495667>,  <40.367840, 30.976191, 29.662636>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.699013, 31.495100, 29.495667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.553741, 31.159258, 29.657242>,  <39.466579, 30.957752, 29.754187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.553741, 31.159258, 29.657242>,  <39.699013, 31.495100, 29.495667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.553741, 31.159258, 29.657242> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488692, 0.540774, 0.684648,
		-0.793273, 0.051248, -0.606706,
		-0.363178, -0.839605, 0.403937,
		39.444790, 30.907377, 29.778423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.999306, 31.588755, 29.607830>,  <39.699013, 31.495100, 29.495667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.999306, 31.588755, 29.607830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.060905, 31.283949, 29.859423>,  <39.097866, 31.101065, 30.010378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.060905, 31.283949, 29.859423>,  <38.999306, 31.588755, 29.607830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.060905, 31.283949, 29.859423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471772, 0.502616, 0.724436,
		-0.868167, -0.408301, -0.282093,
		0.154003, -0.762015, 0.628980,
		39.107105, 31.055344, 30.048117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336166, 31.450737, 29.924057>,  <38.999306, 31.588755, 29.607830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336166, 31.450737, 29.924057> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.562954, 31.236248, 30.174183>,  <38.699024, 31.107555, 30.324257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.562954, 31.236248, 30.174183>,  <38.336166, 31.450737, 29.924057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.562954, 31.236248, 30.174183> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465983, 0.417197, 0.780261,
		-0.679271, -0.733766, -0.013334,
		0.566966, -0.536222, 0.625312,
		38.733044, 31.075382, 30.361776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879963, 31.372627, 30.448971>,  <38.336166, 31.450737, 29.924057>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879963, 31.372627, 30.448971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.249722, 31.310875, 30.588484>,  <38.471577, 31.273823, 30.672192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.249722, 31.310875, 30.588484>,  <37.879963, 31.372627, 30.448971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.249722, 31.310875, 30.588484> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215617, 0.542793, 0.811717,
		-0.314632, -0.825555, 0.468471,
		0.924400, -0.154382, 0.348784,
		38.527042, 31.264561, 30.693119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888973, 30.947315, 31.136810>,  <37.879963, 31.372627, 30.448971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.888973, 30.947315, 31.136810> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.216927, 31.176285, 31.132326>,  <38.413700, 31.313665, 31.129635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.216927, 31.176285, 31.132326>,  <37.888973, 30.947315, 31.136810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.216927, 31.176285, 31.132326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223330, 0.337785, 0.914344,
		0.527178, -0.747151, 0.404783,
		0.819883, 0.572422, -0.011211,
		38.462891, 31.348011, 31.128963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900703, 31.077738, 31.764515>,  <37.888973, 30.947315, 31.136810>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.900703, 31.077738, 31.764515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.180412, 31.334682, 31.639046>,  <38.348236, 31.488850, 31.563765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.180412, 31.334682, 31.639046>,  <37.900703, 31.077738, 31.764515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.180412, 31.334682, 31.639046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070809, 0.498876, 0.863776,
		0.711344, -0.581801, 0.394333,
		0.699269, 0.642364, -0.313676,
		38.390194, 31.527391, 31.544943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446175, 31.136190, 32.205597>,  <37.900703, 31.077738, 31.764515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446175, 31.136190, 32.205597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.396946, 31.480232, 32.007576>,  <38.367409, 31.686657, 31.888763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.396946, 31.480232, 32.007576>,  <38.446175, 31.136190, 32.205597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.396946, 31.480232, 32.007576> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033662, 0.502175, 0.864110,
		0.991827, 0.089684, -0.090756,
		-0.123072, 0.860102, -0.495052,
		38.360023, 31.738262, 31.859060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.744583, 31.612059, 32.697102>,  <38.446175, 31.136190, 32.205597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.744583, 31.612059, 32.697102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.580784, 31.876278, 32.445393>,  <38.482506, 32.034809, 32.294365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.580784, 31.876278, 32.445393>,  <38.744583, 31.612059, 32.697102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.580784, 31.876278, 32.445393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179797, 0.617801, 0.765503,
		0.894420, 0.426612, -0.134222,
		-0.409496, 0.660549, -0.629277,
		38.457935, 32.074444, 32.256611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091816, 32.241245, 32.939156>,  <38.744583, 31.612059, 32.697102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.091816, 32.241245, 32.939156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.778870, 32.369091, 32.725334>,  <38.591103, 32.445797, 32.597042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.778870, 32.369091, 32.725334>,  <39.091816, 32.241245, 32.939156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.778870, 32.369091, 32.725334> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209646, 0.673058, 0.709255,
		0.586471, 0.666966, -0.459574,
		-0.782368, 0.319610, -0.534555,
		38.544159, 32.464973, 32.564968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089497, 32.979885, 32.972084>,  <39.091816, 32.241245, 32.939156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.089497, 32.979885, 32.972084> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.717274, 32.852036, 32.900635>,  <38.493938, 32.775326, 32.857765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.717274, 32.852036, 32.900635>,  <39.089497, 32.979885, 32.972084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.717274, 32.852036, 32.900635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341538, 0.581888, 0.738077,
		-0.131968, 0.747829, -0.650644,
		-0.930557, -0.319622, -0.178621,
		38.438107, 32.756149, 32.847050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738037, 33.520042, 33.052776>,  <39.089497, 32.979885, 32.972084>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.738037, 33.520042, 33.052776> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.449993, 33.243999, 33.081600>,  <38.277168, 33.078373, 33.098892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.449993, 33.243999, 33.081600>,  <38.738037, 33.520042, 33.052776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.449993, 33.243999, 33.081600> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515144, 0.601310, 0.610781,
		-0.464833, 0.402710, -0.788514,
		-0.720110, -0.690109, 0.072055,
		38.233959, 33.036968, 33.103218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.471607, 33.915882, 33.015083>,  <38.738037, 33.520042, 33.052776>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.471607, 33.915882, 33.015083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.775803, 34.094215, 33.203930>,  <39.958321, 34.201214, 33.317238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.775803, 34.094215, 33.203930>,  <39.471607, 33.915882, 33.015083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775803, 34.094215, 33.203930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643210, -0.417410, -0.641911,
		-0.089121, 0.791833, -0.604200,
		0.760486, 0.445835, 0.472115,
		40.003948, 34.227966, 33.345566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.834911, 34.227783, 32.530025>,  <39.471607, 33.915882, 33.015083>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.834911, 34.227783, 32.530025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.090775, 34.179409, 32.833660>,  <40.244293, 34.150383, 33.015839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.090775, 34.179409, 32.833660>,  <39.834911, 34.227783, 32.530025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.090775, 34.179409, 32.833660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693578, -0.334879, -0.637813,
		0.331336, 0.934468, -0.130330,
		0.639661, -0.120936, 0.759084,
		40.282673, 34.143127, 33.061386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.424397, 34.547771, 32.341393>,  <39.834911, 34.227783, 32.530025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.424397, 34.547771, 32.341393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.555046, 34.289379, 32.617371>,  <40.633434, 34.134342, 32.782959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.555046, 34.289379, 32.617371>,  <40.424397, 34.547771, 32.341393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.555046, 34.289379, 32.617371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772025, -0.238774, -0.589036,
		0.545248, 0.725049, 0.420724,
		0.326622, -0.645981, 0.689947,
		40.653034, 34.095585, 32.824356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.181133, 34.721134, 32.509109>,  <40.424397, 34.547771, 32.341393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.181133, 34.721134, 32.509109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.118080, 34.339085, 32.609425>,  <41.080250, 34.109856, 32.669613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.118080, 34.339085, 32.609425>,  <41.181133, 34.721134, 32.509109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.118080, 34.339085, 32.609425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692383, -0.287978, -0.661569,
		0.704101, 0.069359, 0.706704,
		-0.157630, -0.955122, 0.250789,
		41.070789, 34.052547, 32.684662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.810471, 34.502663, 32.679554>,  <41.181133, 34.721134, 32.509109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.810471, 34.502663, 32.679554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.605751, 34.168285, 32.600300>,  <41.482918, 33.967659, 32.552746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.605751, 34.168285, 32.600300>,  <41.810471, 34.502663, 32.679554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.605751, 34.168285, 32.600300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737973, -0.309711, -0.599562,
		0.439835, -0.453076, 0.775414,
		-0.511802, -0.835943, -0.198136,
		41.452209, 33.917503, 32.540859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.315533, 33.878681, 32.699535>,  <41.810471, 34.502663, 32.679554>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.315533, 33.878681, 32.699535> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.985222, 33.765034, 32.504654>,  <41.787033, 33.696846, 32.387726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.985222, 33.765034, 32.504654>,  <42.315533, 33.878681, 32.699535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.985222, 33.765034, 32.504654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561730, -0.491648, -0.665388,
		-0.050485, -0.823140, 0.565589,
		-0.825779, -0.284116, -0.487204,
		41.737488, 33.679798, 32.358494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.514423, 33.124168, 32.564255>,  <42.315533, 33.878681, 32.699535>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.514423, 33.124168, 32.564255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.208549, 33.227486, 32.328106>,  <42.025024, 33.289474, 32.186417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.208549, 33.227486, 32.328106>,  <42.514423, 33.124168, 32.564255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.208549, 33.227486, 32.328106> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443869, -0.453033, -0.773137,
		-0.467167, -0.853251, 0.231770,
		-0.764679, 0.258309, -0.590374,
		41.979145, 33.304974, 32.150993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.524036, 32.576405, 32.131332>,  <42.514423, 33.124168, 32.564255>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.524036, 32.576405, 32.131332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.281754, 32.818268, 31.924452>,  <42.136383, 32.963387, 31.800322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.281754, 32.818268, 31.924452>,  <42.524036, 32.576405, 32.131332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.281754, 32.818268, 31.924452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202590, -0.511396, -0.835124,
		-0.769464, -0.610622, 0.187258,
		-0.605709, 0.604661, -0.517207,
		42.100040, 32.999664, 31.769291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.098370, 32.140675, 31.703310>,  <42.524036, 32.576405, 32.131332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.098370, 32.140675, 31.703310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.116138, 32.512547, 31.557034>,  <42.126801, 32.735668, 31.469269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.116138, 32.512547, 31.557034>,  <42.098370, 32.140675, 31.703310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.116138, 32.512547, 31.557034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464068, -0.343364, -0.816543,
		-0.884685, -0.133429, -0.446688,
		0.044426, 0.929676, -0.365689,
		42.129467, 32.791451, 31.447327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.921028, 32.053574, 30.987022>,  <42.098370, 32.140675, 31.703310>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.921028, 32.053574, 30.987022> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.110615, 32.405209, 31.007298>,  <42.224365, 32.616188, 31.019463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.110615, 32.405209, 31.007298>,  <41.921028, 32.053574, 30.987022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.110615, 32.405209, 31.007298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465481, -0.201270, -0.861869,
		-0.747453, 0.432089, -0.504592,
		0.473963, 0.879084, 0.050690,
		42.252804, 32.668934, 31.022505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.682644, 32.505009, 30.512295>,  <41.921028, 32.053574, 30.987022>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.682644, 32.505009, 30.512295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.046535, 32.655071, 30.583450>,  <42.264870, 32.745110, 30.626143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.046535, 32.655071, 30.583450>,  <41.682644, 32.505009, 30.512295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.046535, 32.655071, 30.583450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232494, -0.105320, -0.966879,
		-0.343995, 0.920959, -0.183034,
		0.909733, 0.375156, 0.177888,
		42.319454, 32.767616, 30.636816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.828362, 33.007511, 30.024712>,  <41.682644, 32.505009, 30.512295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.828362, 33.007511, 30.024712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.191132, 32.924736, 30.171499>,  <42.408794, 32.875072, 30.259571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.191132, 32.924736, 30.171499>,  <41.828362, 33.007511, 30.024712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.191132, 32.924736, 30.171499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369115, -0.029587, -0.928913,
		0.203081, 0.977907, 0.049549,
		0.906925, -0.206934, 0.366969,
		42.463207, 32.862656, 30.281590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.306545, 33.473404, 29.813932>,  <41.828362, 33.007511, 30.024712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.306545, 33.473404, 29.813932> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.530483, 33.149654, 29.884911>,  <42.664848, 32.955406, 29.927498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.530483, 33.149654, 29.884911>,  <42.306545, 33.473404, 29.813932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.530483, 33.149654, 29.884911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426896, 0.098202, -0.898953,
		0.710161, 0.579028, 0.400496,
		0.559849, -0.809372, 0.177445,
		42.698437, 32.906841, 29.938145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.932865, 33.560146, 29.486427>,  <42.306545, 33.473404, 29.813932>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.932865, 33.560146, 29.486427> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.953465, 33.165905, 29.550835>,  <42.965824, 32.929359, 29.589479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.953465, 33.165905, 29.550835>,  <42.932865, 33.560146, 29.486427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.953465, 33.165905, 29.550835> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341018, -0.134186, -0.930430,
		0.938645, 0.102824, 0.329200,
		0.051497, -0.985607, 0.161018,
		42.968914, 32.870224, 29.599140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.630920, 33.339874, 29.135653>,  <42.932865, 33.560146, 29.486427>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.630920, 33.339874, 29.135653> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.402210, 33.014599, 29.179102>,  <43.264984, 32.819435, 29.205172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.402210, 33.014599, 29.179102>,  <43.630920, 33.339874, 29.135653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.402210, 33.014599, 29.179102> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280116, -0.317950, -0.905783,
		0.771108, -0.487477, 0.409582,
		-0.571775, -0.813187, 0.108624,
		43.230679, 32.770641, 29.211689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.996048, 32.773380, 28.999449>,  <43.630920, 33.339874, 29.135653>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.996048, 32.773380, 28.999449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.629066, 32.619732, 28.958025>,  <43.408878, 32.527542, 28.933170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.629066, 32.619732, 28.958025>,  <43.996048, 32.773380, 28.999449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.629066, 32.619732, 28.958025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270337, -0.410957, -0.870650,
		0.291876, -0.826780, 0.480877,
		-0.917456, -0.384121, -0.103560,
		43.353828, 32.504494, 28.926956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.075050, 32.168728, 28.718491>,  <43.996048, 32.773380, 28.999449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.075050, 32.168728, 28.718491> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.686188, 32.217644, 28.638533>,  <43.452869, 32.246994, 28.590559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.686188, 32.217644, 28.638533>,  <44.075050, 32.168728, 28.718491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.686188, 32.217644, 28.638533> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162123, -0.264928, -0.950542,
		-0.169199, -0.956483, 0.237725,
		-0.972157, 0.122290, -0.199893,
		43.394543, 32.254330, 28.578564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.919811, 31.662054, 28.201975>,  <44.075050, 32.168728, 28.718491>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.919811, 31.662054, 28.201975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.627438, 31.928427, 28.142286>,  <43.452011, 32.088249, 28.106472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.627438, 31.928427, 28.142286>,  <43.919811, 31.662054, 28.201975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.627438, 31.928427, 28.142286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020593, -0.197037, -0.980180,
		-0.682134, -0.719523, 0.130308,
		-0.730937, 0.665930, -0.149223,
		43.408157, 32.128204, 28.097519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<43.475567, 31.338564, 27.745853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.394356, 31.727312, 27.698116>,  <43.345627, 31.960562, 27.669474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.394356, 31.727312, 27.698116>,  <43.475567, 31.338564, 27.745853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.394356, 31.727312, 27.698116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059423, -0.133885, -0.989214,
		-0.977368, -0.193748, 0.084935,
		-0.203030, 0.971873, -0.119342,
		43.333447, 32.018875, 27.662313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.919781, 31.257524, 27.374544>,  <43.475567, 31.338564, 27.745853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.919781, 31.257524, 27.374544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.048447, 31.634331, 27.336309>,  <43.125645, 31.860415, 27.313368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.048447, 31.634331, 27.336309>,  <42.919781, 31.257524, 27.374544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.048447, 31.634331, 27.336309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204214, -0.029557, -0.978480,
		-0.924570, 0.334261, 0.182866,
		0.321663, 0.942017, -0.095588,
		43.144947, 31.916935, 27.307632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.442135, 31.605688, 26.949242>,  <42.919781, 31.257524, 27.374544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.442135, 31.605688, 26.949242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.768642, 31.835604, 26.926182>,  <42.964546, 31.973553, 26.912346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.768642, 31.835604, 26.926182>,  <42.442135, 31.605688, 26.949242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.768642, 31.835604, 26.926182> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078217, 0.011097, -0.996875,
		-0.572351, 0.818228, 0.054016,
		0.816270, 0.574787, -0.057648,
		43.013523, 32.008041, 26.908888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.244877, 32.007290, 26.430855>,  <42.442135, 31.605688, 26.949242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.244877, 32.007290, 26.430855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.640102, 32.063488, 26.456154>,  <42.877235, 32.097206, 26.471333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.640102, 32.063488, 26.456154>,  <42.244877, 32.007290, 26.430855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.640102, 32.063488, 26.456154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059737, 0.029066, -0.997791,
		-0.142019, 0.989655, 0.020326,
		0.988060, 0.140491, 0.063247,
		42.936520, 32.105637, 26.475128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.397530, 32.545456, 26.001163>,  <42.244877, 32.007290, 26.430855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.397530, 32.545456, 26.001163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.721470, 32.315937, 26.049988>,  <42.915833, 32.178226, 26.079283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.721470, 32.315937, 26.049988>,  <42.397530, 32.545456, 26.001163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.721470, 32.315937, 26.049988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068002, -0.114842, -0.991054,
		0.582681, 0.810906, -0.053986,
		0.809851, -0.573797, 0.122060,
		42.964424, 32.143799, 26.086605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.768433, 32.710785, 25.478312>,  <42.397530, 32.545456, 26.001163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.768433, 32.710785, 25.478312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.910160, 32.347706, 25.568233>,  <42.995197, 32.129856, 25.622187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.910160, 32.347706, 25.568233>,  <42.768433, 32.710785, 25.478312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.910160, 32.347706, 25.568233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184850, -0.167673, -0.968357,
		0.916672, 0.384664, 0.108378,
		0.354321, -0.907700, 0.224806,
		43.016457, 32.075397, 25.635675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.399303, 32.684879, 25.100557>,  <42.768433, 32.710785, 25.478312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.399303, 32.684879, 25.100557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.312405, 32.306591, 25.197239>,  <43.260265, 32.079620, 25.255247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.312405, 32.306591, 25.197239>,  <43.399303, 32.684879, 25.100557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.312405, 32.306591, 25.197239> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137072, -0.274721, -0.951704,
		0.966445, -0.173622, 0.189313,
		-0.217245, -0.945719, 0.241704,
		43.247231, 32.022877, 25.269751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.993969, 32.329018, 24.905426>,  <43.399303, 32.684879, 25.100557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.993969, 32.329018, 24.905426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.693398, 32.065117, 24.901768>,  <43.513054, 31.906776, 24.899572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.693398, 32.065117, 24.901768>,  <43.993969, 32.329018, 24.905426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.693398, 32.065117, 24.901768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264262, -0.288228, -0.920375,
		0.604583, -0.694013, 0.390930,
		-0.751429, -0.659751, -0.009144,
		43.467968, 31.867191, 24.899025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.307770, 31.758978, 24.586269>,  <43.993969, 32.329018, 24.905426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.307770, 31.758978, 24.586269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.912560, 31.705315, 24.555790>,  <43.675434, 31.673117, 24.537502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.912560, 31.705315, 24.555790>,  <44.307770, 31.758978, 24.586269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.912560, 31.705315, 24.555790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108589, -0.253832, -0.961134,
		0.109602, -0.957899, 0.265360,
		-0.988026, -0.134158, -0.076197,
		43.616150, 31.665068, 24.532930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.238667, 31.074869, 24.162388>,  <44.307770, 31.758978, 24.586269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.238667, 31.074869, 24.162388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.881935, 31.255777, 24.158533>,  <43.667896, 31.364323, 24.156219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.881935, 31.255777, 24.158533>,  <44.238667, 31.074869, 24.162388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.881935, 31.255777, 24.158533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076228, -0.171243, -0.982276,
		-0.445907, -0.875286, 0.187195,
		-0.891828, 0.452272, -0.009637,
		43.614388, 31.391459, 24.155642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.929256, 30.647541, 23.773003>,  <44.238667, 31.074869, 24.162388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.929256, 30.647541, 23.773003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.705723, 30.978670, 23.753342>,  <43.571602, 31.177347, 23.741545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.705723, 30.978670, 23.753342>,  <43.929256, 30.647541, 23.773003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.705723, 30.978670, 23.753342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142820, -0.154458, -0.977622,
		-0.816888, -0.539310, 0.204546,
		-0.558835, 0.827821, -0.049150,
		43.538071, 31.227016, 23.738596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.443489, 30.424225, 23.337978>,  <43.929256, 30.647541, 23.773003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.443489, 30.424225, 23.337978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.396770, 30.821398, 23.329556>,  <43.368740, 31.059702, 23.324503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.396770, 30.821398, 23.329556>,  <43.443489, 30.424225, 23.337978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.396770, 30.821398, 23.329556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011801, -0.019812, -0.999734,
		-0.993086, -0.117010, -0.009404,
		-0.116793, 0.992933, -0.021056,
		43.361732, 31.119278, 23.323238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.109585, 30.552916, 22.687693>,  <43.443489, 30.424225, 23.337978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.109585, 30.552916, 22.687693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.267254, 30.903513, 22.798248>,  <43.361855, 31.113871, 22.864582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.267254, 30.903513, 22.798248>,  <43.109585, 30.552916, 22.687693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.267254, 30.903513, 22.798248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212586, 0.205626, -0.955262,
		-0.894113, 0.435291, -0.105278,
		0.394169, 0.876493, 0.276390,
		43.385506, 31.166460, 22.881165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.774303, 31.089504, 22.304274>,  <43.109585, 30.552916, 22.687693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.774303, 31.089504, 22.304274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.124001, 31.247086, 22.417763>,  <43.333820, 31.341635, 22.485855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.124001, 31.247086, 22.417763>,  <42.774303, 31.089504, 22.304274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.124001, 31.247086, 22.417763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226872, 0.185153, -0.956163,
		-0.429216, 0.900288, 0.072492,
		0.874244, 0.393953, 0.283721,
		43.386272, 31.365273, 22.502878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.854641, 31.693373, 21.972120>,  <42.774303, 31.089504, 22.304274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.854641, 31.693373, 21.972120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.245724, 31.632978, 22.030479>,  <43.480373, 31.596743, 22.065495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.245724, 31.632978, 22.030479>,  <42.854641, 31.693373, 21.972120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.245724, 31.632978, 22.030479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181379, 0.257354, -0.949142,
		0.105760, 0.954449, 0.279003,
		0.977710, -0.150986, 0.145899,
		43.539036, 31.587683, 22.074249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.202553, 32.277168, 21.605530>,  <42.854641, 31.693373, 21.972120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.202553, 32.277168, 21.605530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.444111, 31.964270, 21.666716>,  <43.589046, 31.776531, 21.703426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.444111, 31.964270, 21.666716>,  <43.202553, 32.277168, 21.605530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.444111, 31.964270, 21.666716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488256, 0.211367, -0.846717,
		0.630009, 0.586018, 0.509580,
		0.603900, -0.782245, 0.152964,
		43.625282, 31.729595, 21.712605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.801727, 32.484573, 21.196400>,  <43.202553, 32.277168, 21.605530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.801727, 32.484573, 21.196400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.843925, 32.092186, 21.261604>,  <43.869244, 31.856754, 21.300726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.843925, 32.092186, 21.261604>,  <43.801727, 32.484573, 21.196400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.843925, 32.092186, 21.261604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360429, -0.115057, -0.925664,
		0.926802, 0.156408, 0.341431,
		0.105498, -0.980968, 0.163009,
		43.875576, 31.797895, 21.310507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.432507, 32.455757, 20.889454>,  <43.801727, 32.484573, 21.196400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.432507, 32.455757, 20.889454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.260559, 32.095570, 20.915909>,  <44.157391, 31.879457, 20.931782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.260559, 32.095570, 20.915909>,  <44.432507, 32.455757, 20.889454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.260559, 32.095570, 20.915909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466488, -0.284213, -0.837623,
		0.773048, -0.329216, 0.542231,
		-0.429868, -0.900467, 0.066135,
		44.131599, 31.825430, 20.935749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.000942, 31.992170, 20.893822>,  <44.432507, 32.455757, 20.889454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.000942, 31.992170, 20.893822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.666397, 31.804991, 20.779613>,  <44.465672, 31.692684, 20.711088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.666397, 31.804991, 20.779613>,  <45.000942, 31.992170, 20.893822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.666397, 31.804991, 20.779613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424452, -0.223211, -0.877506,
		0.346896, -0.855103, 0.385307,
		-0.836363, -0.467948, -0.285520,
		44.415489, 31.664606, 20.693958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.203583, 31.281870, 20.629780>,  <45.000942, 31.992170, 20.893822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.203583, 31.281870, 20.629780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.828880, 31.295046, 20.490408>,  <44.604057, 31.302952, 20.406786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.828880, 31.295046, 20.490408>,  <45.203583, 31.281870, 20.629780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.828880, 31.295046, 20.490408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303929, -0.417080, -0.856547,
		-0.173534, -0.908273, 0.380692,
		-0.936757, 0.032937, -0.348428,
		44.547852, 31.304928, 20.385880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.013245, 30.665047, 20.514034>,  <45.203583, 31.281870, 20.629780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.013245, 30.665047, 20.514034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.795647, 30.909847, 20.284418>,  <44.665089, 31.056728, 20.146648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.795647, 30.909847, 20.284418>,  <45.013245, 30.665047, 20.514034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.795647, 30.909847, 20.284418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427623, -0.386411, -0.817205,
		-0.721947, -0.690030, -0.051500,
		-0.543996, 0.612001, -0.574041,
		44.632446, 31.093449, 20.112206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.865864, 30.275913, 19.799334>,  <45.013245, 30.665047, 20.514034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.865864, 30.275913, 19.799334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.803143, 30.666180, 19.738033>,  <44.765511, 30.900339, 19.701254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.803143, 30.666180, 19.738033>,  <44.865864, 30.275913, 19.799334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.803143, 30.666180, 19.738033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328562, -0.094798, -0.939713,
		-0.931375, -0.197703, -0.305702,
		-0.156804, 0.975667, -0.153250,
		44.756100, 30.958879, 19.692059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.383129, 30.306122, 19.247799>,  <44.865864, 30.275913, 19.799334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.383129, 30.306122, 19.247799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.605705, 30.638268, 19.236059>,  <44.739250, 30.837555, 19.229015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.605705, 30.638268, 19.236059>,  <44.383129, 30.306122, 19.247799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.605705, 30.638268, 19.236059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118890, -0.114529, -0.986280,
		-0.822335, 0.545321, -0.162451,
		0.556445, 0.830366, -0.029348,
		44.772640, 30.887377, 19.227255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.218559, 29.762203, 18.747005>,  <44.383129, 30.306122, 19.247799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.218559, 29.762203, 18.747005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.009975, 29.501633, 18.526562>,  <43.884827, 29.345291, 18.394295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.009975, 29.501633, 18.526562>,  <44.218559, 29.762203, 18.747005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.009975, 29.501633, 18.526562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751141, 0.044038, 0.658671,
		-0.404806, 0.757432, -0.512277,
		-0.521459, -0.651427, -0.551111,
		43.853539, 29.306204, 18.361229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.599258, 30.089560, 18.621788>,  <44.218559, 29.762203, 18.747005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.599258, 30.089560, 18.621788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.551655, 29.692667, 18.607264>,  <43.523094, 29.454533, 18.598549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.551655, 29.692667, 18.607264>,  <43.599258, 30.089560, 18.621788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.551655, 29.692667, 18.607264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668374, 0.053014, 0.741934,
		-0.734243, 0.112564, -0.669489,
		-0.119007, -0.992229, -0.036310,
		43.515953, 29.394999, 18.596371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.905575, 29.964293, 18.667334>,  <43.599258, 30.089560, 18.621788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.905575, 29.964293, 18.667334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.025574, 29.605305, 18.796671>,  <43.097572, 29.389912, 18.874273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.025574, 29.605305, 18.796671>,  <42.905575, 29.964293, 18.667334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.025574, 29.605305, 18.796671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681766, 0.035367, 0.730715,
		-0.667229, -0.439658, -0.601253,
		0.300000, -0.897468, 0.323342,
		43.115574, 29.336063, 18.893673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.283970, 29.612856, 18.827971>,  <42.905575, 29.964293, 18.667334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.283970, 29.612856, 18.827971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.564835, 29.414467, 19.032314>,  <42.733353, 29.295433, 19.154921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.564835, 29.414467, 19.032314>,  <42.283970, 29.612856, 18.827971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.564835, 29.414467, 19.032314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644919, -0.138970, 0.751510,
		-0.301735, -0.857145, -0.417443,
		0.702165, -0.495974, 0.510856,
		42.775486, 29.265675, 19.185572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.959705, 29.108910, 19.270695>,  <42.283970, 29.612856, 18.827971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.959705, 29.108910, 19.270695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.330132, 29.129911, 19.420170>,  <42.552387, 29.142511, 19.509855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.330132, 29.129911, 19.420170>,  <41.959705, 29.108910, 19.270695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.330132, 29.129911, 19.420170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364532, -0.131529, 0.921855,
		0.097552, -0.989921, -0.102665,
		0.926067, 0.052504, 0.373689,
		42.607952, 29.145662, 19.532276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.989376, 28.528173, 19.619743>,  <41.959705, 29.108910, 19.270695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.989376, 28.528173, 19.619743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.259377, 28.788618, 19.758553>,  <42.421375, 28.944885, 19.841837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.259377, 28.788618, 19.758553>,  <41.989376, 28.528173, 19.619743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.259377, 28.788618, 19.758553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334794, -0.148829, 0.930464,
		0.657484, -0.744246, 0.117530,
		0.675002, 0.651114, 0.347022,
		42.461876, 28.983952, 19.862659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.179676, 28.201103, 20.195595>,  <41.989376, 28.528173, 19.619743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.179676, 28.201103, 20.195595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.308331, 28.579699, 20.206221>,  <42.385525, 28.806856, 20.212597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.308331, 28.579699, 20.206221>,  <42.179676, 28.201103, 20.195595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.308331, 28.579699, 20.206221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282758, 0.069236, 0.956690,
		0.903658, -0.315217, 0.289896,
		0.321636, 0.946491, 0.026565,
		42.404823, 28.863646, 20.214190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.579575, 28.255474, 20.846394>,  <42.179676, 28.201103, 20.195595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.579575, 28.255474, 20.846394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.459343, 28.622297, 20.741587>,  <42.387203, 28.842392, 20.678701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.459343, 28.622297, 20.741587>,  <42.579575, 28.255474, 20.846394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.459343, 28.622297, 20.741587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148672, 0.226314, 0.962641,
		0.942099, 0.328303, 0.068316,
		-0.300577, 0.917060, -0.262020,
		42.369171, 28.897415, 20.662981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.773338, 28.547878, 21.441128>,  <42.579575, 28.255474, 20.846394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.773338, 28.547878, 21.441128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.541119, 28.834162, 21.285835>,  <42.401787, 29.005932, 21.192659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.541119, 28.834162, 21.285835>,  <42.773338, 28.547878, 21.441128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.541119, 28.834162, 21.285835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210944, 0.328324, 0.920709,
		0.786428, 0.616410, -0.039633,
		-0.580546, 0.715711, -0.388231,
		42.366955, 29.048876, 21.169365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.016712, 29.154461, 21.836624>,  <42.773338, 28.547878, 21.441128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.016712, 29.154461, 21.836624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.662064, 29.242746, 21.674051>,  <42.449276, 29.295717, 21.576508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.662064, 29.242746, 21.674051>,  <43.016712, 29.154461, 21.836624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.662064, 29.242746, 21.674051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315104, 0.354989, 0.880166,
		0.338544, 0.908443, -0.245193,
		-0.886621, 0.220714, -0.406434,
		42.396076, 29.308960, 21.552122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.814850, 29.901997, 21.801729>,  <43.016712, 29.154461, 21.836624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.814850, 29.901997, 21.801729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.465183, 29.707809, 21.796743>,  <42.255383, 29.591297, 21.793753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.465183, 29.707809, 21.796743>,  <42.814850, 29.901997, 21.801729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.465183, 29.707809, 21.796743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235493, 0.401316, 0.885149,
		-0.424710, 0.776701, -0.465141,
		-0.874165, -0.485469, -0.012464,
		42.202934, 29.562168, 21.793005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.380440, 30.407387, 21.967600>,  <42.814850, 29.901997, 21.801729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.380440, 30.407387, 21.967600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.192806, 30.061033, 22.037121>,  <42.080227, 29.853222, 22.078833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.192806, 30.061033, 22.037121>,  <42.380440, 30.407387, 21.967600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.192806, 30.061033, 22.037121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292801, 0.338144, 0.894386,
		-0.833203, 0.368652, -0.412150,
		-0.469083, -0.865883, 0.173801,
		42.052082, 29.801268, 22.089260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.669136, 30.547321, 22.302956>,  <42.380440, 30.407387, 21.967600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.669136, 30.547321, 22.302956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.734776, 30.160910, 22.382814>,  <41.774158, 29.929062, 22.430731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.734776, 30.160910, 22.382814>,  <41.669136, 30.547321, 22.302956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.734776, 30.160910, 22.382814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162222, 0.173209, 0.971433,
		-0.973014, -0.191794, -0.128289,
		0.164095, -0.966030, 0.199648,
		41.784004, 29.871101, 22.442709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.152271, 30.413822, 22.746685>,  <41.669136, 30.547321, 22.302956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.152271, 30.413822, 22.746685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.416859, 30.120438, 22.809298>,  <41.575611, 29.944407, 22.846865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.416859, 30.120438, 22.809298>,  <41.152271, 30.413822, 22.746685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.416859, 30.120438, 22.809298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099702, 0.120862, 0.987650,
		-0.743320, -0.668901, 0.006818,
		0.661464, -0.733460, 0.156530,
		41.615299, 29.900400, 22.856256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.846176, 29.958055, 23.314468>,  <41.152271, 30.413822, 22.746685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.846176, 29.958055, 23.314468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.236046, 29.869480, 23.301968>,  <41.469967, 29.816336, 23.294468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.236046, 29.869480, 23.301968>,  <40.846176, 29.958055, 23.314468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.236046, 29.869480, 23.301968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062889, 0.137308, 0.988530,
		-0.214608, -0.965459, 0.147757,
		0.974673, -0.221438, -0.031249,
		41.528446, 29.803049, 23.292593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.933735, 29.546049, 23.908739>,  <40.846176, 29.958055, 23.314468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.933735, 29.546049, 23.908739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.315441, 29.655159, 23.859808>,  <41.544464, 29.720625, 23.830450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.315441, 29.655159, 23.859808>,  <40.933735, 29.546049, 23.908739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.315441, 29.655159, 23.859808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092576, 0.119437, 0.988516,
		0.284252, -0.954636, 0.088723,
		0.954270, 0.272774, -0.122326,
		41.601723, 29.736992, 23.823111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.292042, 29.188383, 24.384777>,  <40.933735, 29.546049, 23.908739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.292042, 29.188383, 24.384777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.541069, 29.489618, 24.299671>,  <41.690487, 29.670359, 24.248608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.541069, 29.489618, 24.299671>,  <41.292042, 29.188383, 24.384777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.541069, 29.489618, 24.299671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233786, 0.080481, 0.968952,
		0.746829, -0.652979, -0.125956,
		0.622568, 0.753089, -0.212763,
		41.727840, 29.715546, 24.235842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.900108, 28.918285, 24.692186>,  <41.292042, 29.188383, 24.384777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.900108, 28.918285, 24.692186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.859108, 29.315742, 24.673563>,  <41.834507, 29.554216, 24.662388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.859108, 29.315742, 24.673563>,  <41.900108, 28.918285, 24.692186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.859108, 29.315742, 24.673563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104466, 0.057300, 0.992876,
		0.989232, 0.096907, -0.109675,
		-0.102501, 0.993643, -0.046559,
		41.828358, 29.613834, 24.659595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.371346, 29.095291, 25.178398>,  <41.900108, 28.918285, 24.692186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.371346, 29.095291, 25.178398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.153618, 29.423584, 25.108986>,  <42.022980, 29.620560, 25.067339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.153618, 29.423584, 25.108986>,  <42.371346, 29.095291, 25.178398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.153618, 29.423584, 25.108986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009048, 0.212595, 0.977099,
		0.838827, 0.530286, -0.123146,
		-0.544322, 0.820731, -0.173532,
		41.990322, 29.669804, 25.056927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.588821, 29.543720, 25.653131>,  <42.371346, 29.095291, 25.178398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.588821, 29.543720, 25.653131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.231590, 29.695086, 25.555794>,  <42.017250, 29.785904, 25.497391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.231590, 29.695086, 25.555794>,  <42.588821, 29.543720, 25.653131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.231590, 29.695086, 25.555794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134653, 0.291274, 0.947116,
		0.429280, 0.878615, -0.209176,
		-0.893077, 0.378412, -0.243346,
		41.963669, 29.808609, 25.482790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.425648, 30.168251, 26.045582>,  <42.588821, 29.543720, 25.653131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.425648, 30.168251, 26.045582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.060886, 30.063757, 25.918968>,  <41.842030, 30.001060, 25.843000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.060886, 30.063757, 25.918968>,  <42.425648, 30.168251, 26.045582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.060886, 30.063757, 25.918968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355219, 0.116076, 0.927548,
		-0.205568, 0.958270, -0.198646,
		-0.911900, -0.261237, -0.316534,
		41.787315, 29.985386, 25.824009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.597454, 32.534828, 30.777012> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.250198, 32.641628, 30.609661>,  <43.041843, 32.705708, 30.509251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.250198, 32.641628, 30.609661>,  <43.597454, 32.534828, 30.777012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.250198, 32.641628, 30.609661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233326, 0.524450, 0.818847,
		0.438050, 0.808494, -0.393000,
		-0.868143, 0.266999, -0.418378,
		42.989754, 32.721729, 30.484148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.460068, 33.230762, 30.979059>,  <43.597454, 32.534828, 30.777012>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.460068, 33.230762, 30.979059> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.114258, 33.062943, 30.868374>,  <42.906773, 32.962250, 30.801964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.114258, 33.062943, 30.868374>,  <43.460068, 33.230762, 30.979059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.114258, 33.062943, 30.868374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452945, 0.411824, 0.790723,
		-0.217792, 0.808937, -0.546066,
		-0.864528, -0.419551, -0.276712,
		42.854900, 32.937077, 30.785360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.941315, 33.747917, 30.910646>,  <43.460068, 33.230762, 30.979059>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.941315, 33.747917, 30.910646> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.730476, 33.417267, 30.989494>,  <42.603973, 33.218876, 31.036802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.730476, 33.417267, 30.989494>,  <42.941315, 33.747917, 30.910646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.730476, 33.417267, 30.989494> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640907, 0.538999, 0.546551,
		-0.558042, 0.161748, -0.813896,
		-0.527092, -0.826630, 0.197119,
		42.572350, 33.169277, 31.048630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.243412, 33.983341, 30.955444>,  <42.941315, 33.747917, 30.910646>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.243412, 33.983341, 30.955444> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.200424, 33.620441, 31.118093>,  <42.174629, 33.402702, 31.215683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.200424, 33.620441, 31.118093>,  <42.243412, 33.983341, 30.955444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.200424, 33.620441, 31.118093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736058, 0.347543, 0.580890,
		-0.668333, -0.236869, -0.705142,
		-0.107472, -0.907252, 0.406623,
		42.168182, 33.348267, 31.240080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.493969, 33.953430, 31.126394>,  <42.243412, 33.983341, 30.955444>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.493969, 33.953430, 31.126394> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.676540, 33.657650, 31.324339>,  <41.786083, 33.480183, 31.443106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.676540, 33.657650, 31.324339>,  <41.493969, 33.953430, 31.126394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.676540, 33.657650, 31.324339> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552597, 0.200324, 0.809016,
		-0.697359, -0.642716, -0.317185,
		0.456428, -0.739450, 0.494861,
		41.813469, 33.435814, 31.472797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.957527, 33.458721, 31.353825>,  <41.493969, 33.953430, 31.126394>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.957527, 33.458721, 31.353825> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.282013, 33.469322, 31.587482>,  <41.476704, 33.475681, 31.727676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.282013, 33.469322, 31.587482>,  <40.957527, 33.458721, 31.353825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.282013, 33.469322, 31.587482> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583583, -0.026262, 0.811629,
		0.036854, -0.999304, -0.005835,
		0.811217, 0.026506, 0.584145,
		41.525379, 33.477272, 31.762726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.646996, 33.180313, 31.898672>,  <40.957527, 33.458721, 31.353825>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.646996, 33.180313, 31.898672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.998409, 33.315830, 32.033371>,  <41.209259, 33.397141, 32.114189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.998409, 33.315830, 32.033371>,  <40.646996, 33.180313, 31.898672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.998409, 33.315830, 32.033371> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377545, 0.060603, 0.924006,
		0.292638, -0.938908, 0.181151,
		0.878534, 0.338792, 0.336746,
		41.261971, 33.417469, 32.134396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.663864, 32.887680, 32.439804>,  <40.646996, 33.180313, 31.898672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.663864, 32.887680, 32.439804> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.941204, 33.173157, 32.479626>,  <41.107609, 33.344440, 32.503517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.941204, 33.173157, 32.479626>,  <40.663864, 32.887680, 32.439804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.941204, 33.173157, 32.479626> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455481, 0.327004, 0.828013,
		0.558391, -0.619447, 0.551801,
		0.693351, 0.713690, 0.099551,
		41.149208, 33.387264, 32.509491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.939487, 32.879070, 33.131863>,  <40.663864, 32.887680, 32.439804>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.939487, 32.879070, 33.131863> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.996441, 33.250778, 32.995522>,  <41.030613, 33.473804, 32.913719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.996441, 33.250778, 32.995522>,  <40.939487, 32.879070, 33.131863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.996441, 33.250778, 32.995522> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434631, 0.368080, 0.821957,
		0.889283, 0.031115, 0.456298,
		0.142379, 0.929274, -0.340850,
		41.039154, 33.529560, 32.893265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.125046, 33.250542, 33.764038>,  <40.939487, 32.879070, 33.131863>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.125046, 33.250542, 33.764038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.010197, 33.529240, 33.501095>,  <40.941288, 33.696457, 33.343330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.010197, 33.529240, 33.501095>,  <41.125046, 33.250542, 33.764038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.010197, 33.529240, 33.501095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538908, 0.449850, 0.712189,
		0.791922, 0.558736, 0.246319,
		-0.287119, 0.696741, -0.657354,
		40.924061, 33.738262, 33.303890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.114639, 33.881737, 34.022835>,  <41.125046, 33.250542, 33.764038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.114639, 33.881737, 34.022835> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.881218, 33.976883, 33.712254>,  <40.741165, 34.033970, 33.525906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.881218, 33.976883, 33.712254>,  <41.114639, 33.881737, 34.022835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.881218, 33.976883, 33.712254> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556349, 0.579398, 0.595628,
		0.591556, 0.779563, -0.205775,
		-0.583555, 0.237865, -0.776456,
		40.706150, 34.048241, 33.479317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.967033, 34.537315, 34.197472>,  <41.114639, 33.881737, 34.022835>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.967033, 34.537315, 34.197472> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.692566, 34.449444, 33.920082>,  <40.527885, 34.396721, 33.753647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.692566, 34.449444, 33.920082>,  <40.967033, 34.537315, 34.197472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.692566, 34.449444, 33.920082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666925, 0.570656, 0.479128,
		0.290482, 0.791260, -0.538077,
		-0.686172, -0.219678, -0.693477,
		40.486713, 34.383541, 33.712040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.775547, 35.121281, 33.712978>,  <40.967033, 34.537315, 34.197472>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.775547, 35.121281, 33.712978> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.484390, 34.849205, 33.747669>,  <40.309696, 34.685959, 33.768482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.484390, 34.849205, 33.747669>,  <40.775547, 35.121281, 33.712978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.484390, 34.849205, 33.747669> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659385, 0.729043, 0.183598,
		-0.188106, 0.076455, -0.979168,
		-0.727893, -0.680185, 0.086724,
		40.266022, 34.645149, 33.773685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142735, 35.110321, 33.169743>,  <40.775547, 35.121281, 33.712978>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.142735, 35.110321, 33.169743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.018696, 35.015747, 33.538078>,  <39.944271, 34.959003, 33.759079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.018696, 35.015747, 33.538078>,  <40.142735, 35.110321, 33.169743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.018696, 35.015747, 33.538078> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618313, 0.785906, -0.006434,
		-0.722169, -0.571360, -0.389898,
		-0.310099, -0.236433, 0.920836,
		39.925667, 34.944817, 33.814327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776237, 35.539368, 32.599945>,  <40.142735, 35.110321, 33.169743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.776237, 35.539368, 32.599945> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.500618, 35.816345, 32.685486>,  <39.335247, 35.982533, 32.736813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.500618, 35.816345, 32.685486>,  <39.776237, 35.539368, 32.599945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.500618, 35.816345, 32.685486> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139927, 0.162420, -0.976750,
		-0.711082, -0.702948, -0.015023,
		-0.689045, 0.692447, 0.213855,
		39.293903, 36.024078, 32.749641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163181, 35.386284, 32.185329>,  <39.776237, 35.539368, 32.599945>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.163181, 35.386284, 32.185329> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.135311, 35.775169, 32.274715>,  <39.118587, 36.008503, 32.328346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.135311, 35.775169, 32.274715>,  <39.163181, 35.386284, 32.185329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.135311, 35.775169, 32.274715> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300027, 0.193214, -0.934158,
		-0.951382, -0.132135, 0.278229,
		-0.069678, 0.972218, 0.223465,
		39.114407, 36.066833, 32.341755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574306, 35.581432, 31.864109>,  <39.163181, 35.386284, 32.185329>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.574306, 35.581432, 31.864109> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.763500, 35.931419, 31.905508>,  <38.877014, 36.141411, 31.930347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.763500, 35.931419, 31.905508>,  <38.574306, 35.581432, 31.864109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.763500, 35.931419, 31.905508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231304, 0.236658, -0.943659,
		-0.850168, 0.422395, 0.314319,
		0.472983, 0.874972, 0.103498,
		38.905396, 36.193913, 31.936558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.127014, 36.060856, 31.610767>,  <38.574306, 35.581432, 31.864109>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.127014, 36.060856, 31.610767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.474297, 36.259239, 31.604509>,  <38.682667, 36.378269, 31.600754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.474297, 36.259239, 31.604509>,  <38.127014, 36.060856, 31.610767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474297, 36.259239, 31.604509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252961, 0.415260, -0.873825,
		-0.426881, 0.762619, 0.485989,
		0.868207, 0.495955, -0.015646,
		38.734760, 36.408028, 31.599815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952030, 36.712116, 31.349380>,  <38.127014, 36.060856, 31.610767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952030, 36.712116, 31.349380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.345573, 36.665855, 31.294744>,  <38.581699, 36.638100, 31.261963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.345573, 36.665855, 31.294744>,  <37.952030, 36.712116, 31.349380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345573, 36.665855, 31.294744> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084832, 0.370660, -0.924887,
		0.157590, 0.921541, 0.354864,
		0.983854, -0.115650, -0.136588,
		38.640728, 36.631161, 31.253769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061447, 37.360260, 30.859850>,  <37.952030, 36.712116, 31.349380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061447, 37.360260, 30.859850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.393677, 37.137791, 30.848402>,  <38.593014, 37.004311, 30.841534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.393677, 37.137791, 30.848402>,  <38.061447, 37.360260, 30.859850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.393677, 37.137791, 30.848402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178249, 0.314180, -0.932480,
		0.527609, 0.769393, 0.360087,
		0.830576, -0.556170, -0.028620,
		38.642849, 36.970940, 30.839815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.599800, 37.754562, 30.545635>,  <38.061447, 37.360260, 30.859850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.599800, 37.754562, 30.545635> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.708233, 37.375259, 30.479527>,  <38.773293, 37.147678, 30.439861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.708233, 37.375259, 30.479527>,  <38.599800, 37.754562, 30.545635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.708233, 37.375259, 30.479527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204633, 0.224552, -0.952734,
		0.940553, 0.224447, 0.254917,
		0.271080, -0.948262, -0.165274,
		38.789558, 37.090782, 30.429945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214420, 37.803112, 30.050924>,  <38.599800, 37.754562, 30.545635>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214420, 37.803112, 30.050924> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.053928, 37.436729, 30.053528>,  <38.957634, 37.216900, 30.055090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.053928, 37.436729, 30.053528>,  <39.214420, 37.803112, 30.050924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053928, 37.436729, 30.053528> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126394, -0.062403, -0.990016,
		0.907214, -0.396403, 0.140809,
		-0.401232, -0.915954, 0.006510,
		38.933559, 37.161942, 30.055481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738266, 37.352592, 29.639332>,  <39.214420, 37.803112, 30.050924>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.738266, 37.352592, 29.639332> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.362915, 37.214626, 29.630615>,  <39.137703, 37.131847, 29.625385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.362915, 37.214626, 29.630615>,  <39.738266, 37.352592, 29.639332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.362915, 37.214626, 29.630615> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100304, -0.211467, -0.972224,
		0.330725, -0.914503, 0.233033,
		-0.938381, -0.344914, -0.021791,
		39.081402, 37.111153, 29.624079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.835377, 36.999874, 29.078703>,  <39.738266, 37.352592, 29.639332>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.835377, 36.999874, 29.078703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.438015, 37.020725, 29.119539>,  <39.199596, 37.033237, 29.144041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.438015, 37.020725, 29.119539>,  <39.835377, 36.999874, 29.078703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.438015, 37.020725, 29.119539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107594, -0.116871, -0.987302,
		-0.039534, -0.991778, 0.121710,
		-0.993408, 0.052127, 0.102089,
		39.139992, 37.036366, 29.150166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692986, 36.423145, 28.720446>,  <39.835377, 36.999874, 29.078703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.692986, 36.423145, 28.720446> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.369259, 36.657227, 28.740656>,  <39.175022, 36.797676, 28.752781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.369259, 36.657227, 28.740656>,  <39.692986, 36.423145, 28.720446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.369259, 36.657227, 28.740656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166700, -0.146355, -0.975085,
		-0.563227, -0.797571, 0.216000,
		-0.809312, 0.585202, 0.050524,
		39.126465, 36.832787, 28.755814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089851, 36.002026, 28.642063>,  <39.692986, 36.423145, 28.720446>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.089851, 36.002026, 28.642063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.017300, 36.381027, 28.536737>,  <38.973770, 36.608429, 28.473541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.017300, 36.381027, 28.536737>,  <39.089851, 36.002026, 28.642063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.017300, 36.381027, 28.536737> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261128, -0.304548, -0.916004,
		-0.948111, -0.097385, 0.302658,
		-0.181379, 0.947506, -0.263315,
		38.962887, 36.665279, 28.457743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.617493, 35.911911, 28.061884>,  <39.089851, 36.002026, 28.642063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.617493, 35.911911, 28.061884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.721371, 36.298061, 28.052050>,  <38.783699, 36.529751, 28.046148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.721371, 36.298061, 28.052050>,  <38.617493, 35.911911, 28.061884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721371, 36.298061, 28.052050> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093841, -0.000111, -0.995587,
		-0.961120, 0.260858, 0.090564,
		0.259697, 0.965377, -0.024586,
		38.799278, 36.587673, 28.044674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057896, 36.224125, 27.708044>,  <38.617493, 35.911911, 28.061884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.057896, 36.224125, 27.708044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.400909, 36.425636, 27.666403>,  <38.606720, 36.546543, 27.641418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.400909, 36.425636, 27.666403>,  <38.057896, 36.224125, 27.708044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.400909, 36.425636, 27.666403> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177362, 0.099584, -0.979094,
		-0.482877, 0.858075, 0.174747,
		0.857539, 0.503776, -0.104103,
		38.658173, 36.576771, 27.635172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376965, 36.644863, 27.746195>,  <38.057896, 36.224125, 27.708044>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.376965, 36.644863, 27.746195> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.019505, 36.546024, 27.596354>,  <36.805027, 36.486721, 27.506449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.019505, 36.546024, 27.596354>,  <37.376965, 36.644863, 27.746195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.019505, 36.546024, 27.596354> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215497, -0.495921, 0.841204,
		-0.393633, 0.832470, 0.389932,
		-0.893652, -0.247096, -0.374605,
		36.751408, 36.471897, 27.483973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988773, 36.850655, 28.224213>,  <37.376965, 36.644863, 27.746195>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.988773, 36.850655, 28.224213> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.772484, 36.577099, 28.028288>,  <36.642712, 36.412964, 27.910732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.772484, 36.577099, 28.028288>,  <36.988773, 36.850655, 28.224213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.772484, 36.577099, 28.028288> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305133, -0.383161, 0.871827,
		-0.783910, 0.620873, -0.001495,
		-0.540721, -0.683889, -0.489812,
		36.610268, 36.371933, 27.881344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414757, 36.841858, 28.561825>,  <36.988773, 36.850655, 28.224213>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.414757, 36.841858, 28.561825> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.380527, 36.497494, 28.361223>,  <36.359989, 36.290874, 28.240862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.380527, 36.497494, 28.361223>,  <36.414757, 36.841858, 28.561825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380527, 36.497494, 28.361223> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529664, -0.387022, 0.754765,
		-0.843880, 0.330217, -0.422875,
		-0.085574, -0.860913, -0.501504,
		36.354855, 36.239220, 28.210772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785313, 36.542923, 28.770657>,  <36.414757, 36.841858, 28.561825>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785313, 36.542923, 28.770657> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.995399, 36.237007, 28.621401>,  <36.121452, 36.053455, 28.531847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.995399, 36.237007, 28.621401>,  <35.785313, 36.542923, 28.770657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.995399, 36.237007, 28.621401> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495440, -0.631332, 0.596622,
		-0.691869, -0.128489, -0.710498,
		0.525220, -0.764794, -0.373141,
		36.152966, 36.007568, 28.509459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.321594, 35.985386, 28.816221>,  <35.785313, 36.542923, 28.770657>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.321594, 35.985386, 28.816221> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.691586, 35.833813, 28.804764>,  <35.913582, 35.742870, 28.797890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.691586, 35.833813, 28.804764>,  <35.321594, 35.985386, 28.816221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691586, 35.833813, 28.804764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264262, -0.695574, 0.668089,
		-0.273083, -0.610401, -0.743530,
		0.924982, -0.378931, -0.028643,
		35.969082, 35.720135, 28.796171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.231239, 35.214970, 28.656315>,  <35.321594, 35.985386, 28.816221>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.231239, 35.214970, 28.656315> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.580074, 35.274509, 28.842779>,  <35.789375, 35.310234, 28.954659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.580074, 35.274509, 28.842779>,  <35.231239, 35.214970, 28.656315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580074, 35.274509, 28.842779> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217999, -0.734688, 0.642425,
		0.438108, -0.661874, -0.608264,
		0.872088, 0.148850, 0.466161,
		35.841702, 35.319164, 28.982628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581772, 34.635132, 28.766886>,  <35.231239, 35.214970, 28.656315>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581772, 34.635132, 28.766886> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.739651, 34.873894, 29.046291>,  <35.834377, 35.017151, 29.213936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.739651, 34.873894, 29.046291>,  <35.581772, 34.635132, 28.766886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739651, 34.873894, 29.046291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220970, -0.676259, 0.702742,
		0.891846, -0.431719, -0.135018,
		0.394694, 0.596902, 0.698516,
		35.858059, 35.052963, 29.255846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887421, 34.205513, 29.167343>,  <35.581772, 34.635132, 28.766886>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887421, 34.205513, 29.167343> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.877743, 34.526794, 29.405430>,  <35.871937, 34.719563, 29.548281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.877743, 34.526794, 29.405430>,  <35.887421, 34.205513, 29.167343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877743, 34.526794, 29.405430> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231292, -0.583734, 0.778305,
		0.972583, -0.118834, 0.199900,
		-0.024199, 0.803202, 0.595215,
		35.870483, 34.767754, 29.583994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.351452, 33.952591, 29.819649>,  <35.887421, 34.205513, 29.167343>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.351452, 33.952591, 29.819649> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.144093, 34.278336, 29.924009>,  <36.019676, 34.473782, 29.986626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.144093, 34.278336, 29.924009>,  <36.351452, 33.952591, 29.819649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144093, 34.278336, 29.924009> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033862, -0.285309, 0.957837,
		0.854468, 0.505377, 0.120328,
		-0.518400, 0.814366, 0.260901,
		35.988571, 34.522644, 30.002279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726486, 34.284813, 30.341936>,  <36.351452, 33.952591, 29.819649>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726486, 34.284813, 30.341936> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.345768, 34.400856, 30.381786>,  <36.117336, 34.470482, 30.405697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.345768, 34.400856, 30.381786>,  <36.726486, 34.284813, 30.341936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.345768, 34.400856, 30.381786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015259, -0.369178, 0.929233,
		0.306355, 0.882919, 0.355809,
		-0.951795, 0.290105, 0.099627,
		36.060230, 34.487888, 30.411674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650669, 34.477516, 31.073256>,  <36.726486, 34.284813, 30.341936>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.650669, 34.477516, 31.073256> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.286800, 34.407093, 30.922789>,  <36.068478, 34.364841, 30.832508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.286800, 34.407093, 30.922789>,  <36.650669, 34.477516, 31.073256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.286800, 34.407093, 30.922789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262051, -0.459374, 0.848708,
		-0.322220, 0.870621, 0.371744,
		-0.909672, -0.176055, -0.376166,
		36.013897, 34.354275, 30.809938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191525, 34.800373, 31.535929>,  <36.650669, 34.477516, 31.073256>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191525, 34.800373, 31.535929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.006065, 34.502041, 31.344608>,  <35.894791, 34.323040, 31.229816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.006065, 34.502041, 31.344608>,  <36.191525, 34.800373, 31.535929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.006065, 34.502041, 31.344608> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305304, -0.372285, 0.876466,
		-0.831758, 0.552397, -0.055097,
		-0.463646, -0.745830, -0.478300,
		35.866970, 34.278294, 31.201118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.303940, 36.125443, 23.720102> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064301, 35.815739, 23.801685>,  <37.920517, 35.629913, 23.850636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064301, 35.815739, 23.801685>,  <38.303940, 36.125443, 23.720102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064301, 35.815739, 23.801685> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256400, 0.426834, 0.867221,
		-0.758513, 0.467255, -0.454236,
		-0.599097, -0.774264, 0.203955,
		37.884571, 35.583458, 23.862871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560337, 36.414822, 23.866199>,  <38.303940, 36.125443, 23.720102>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560337, 36.414822, 23.866199> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589542, 36.061146, 24.050758>,  <37.607063, 35.848942, 24.161493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589542, 36.061146, 24.050758>,  <37.560337, 36.414822, 23.866199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589542, 36.061146, 24.050758> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482054, 0.373714, 0.792440,
		-0.873094, -0.280275, -0.398940,
		0.073011, -0.884185, 0.461395,
		37.611446, 35.795891, 24.189177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992981, 36.509300, 24.387987>,  <37.560337, 36.414822, 23.866199>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992981, 36.509300, 24.387987> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177147, 36.181900, 24.525440>,  <37.287647, 35.985462, 24.607912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177147, 36.181900, 24.525440>,  <36.992981, 36.509300, 24.387987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.177147, 36.181900, 24.525440> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291800, 0.226045, 0.929385,
		-0.838375, -0.528172, -0.134763,
		0.460413, -0.818497, 0.343631,
		37.315269, 35.936352, 24.628531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458694, 36.215855, 24.740765>,  <36.992981, 36.509300, 24.387987>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458694, 36.215855, 24.740765> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790771, 36.048191, 24.887775>,  <36.990021, 35.947594, 24.975983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790771, 36.048191, 24.887775>,  <36.458694, 36.215855, 24.740765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790771, 36.048191, 24.887775> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401025, 0.008905, 0.916024,
		-0.387236, -0.907868, -0.160701,
		0.830197, -0.419162, 0.367526,
		37.039829, 35.922443, 24.998034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269852, 35.589226, 25.121975>,  <36.458694, 36.215855, 24.740765>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269852, 35.589226, 25.121975> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610992, 35.738968, 25.267578>,  <36.815678, 35.828815, 25.354940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610992, 35.738968, 25.267578>,  <36.269852, 35.589226, 25.121975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610992, 35.738968, 25.267578> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390647, -0.005118, 0.920527,
		0.346472, -0.927269, 0.141878,
		0.852850, 0.374360, 0.364008,
		36.866848, 35.851276, 25.376780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258350, 35.354179, 25.749737>,  <36.269852, 35.589226, 25.121975>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.258350, 35.354179, 25.749737> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.550510, 35.624996, 25.785818>,  <36.725807, 35.787487, 25.807467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.550510, 35.624996, 25.785818>,  <36.258350, 35.354179, 25.749737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.550510, 35.624996, 25.785818> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286813, 0.184165, 0.940118,
		0.619886, -0.712530, 0.328698,
		0.730397, 0.677041, 0.090201,
		36.769630, 35.828110, 25.812878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675117, 35.212666, 26.408728>,  <36.258350, 35.354179, 25.749737>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.675117, 35.212666, 26.408728> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745869, 35.595432, 26.316614>,  <36.788319, 35.825092, 26.261345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745869, 35.595432, 26.316614>,  <36.675117, 35.212666, 26.408728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745869, 35.595432, 26.316614> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096392, 0.216008, 0.971622,
		0.979502, -0.194053, -0.054032,
		0.176874, 0.956914, -0.230285,
		36.798931, 35.882507, 26.247528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245064, 35.426903, 26.806753>,  <36.675117, 35.212666, 26.408728>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245064, 35.426903, 26.806753> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001999, 35.728832, 26.707962>,  <36.856159, 35.909988, 26.648687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001999, 35.728832, 26.707962>,  <37.245064, 35.426903, 26.806753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001999, 35.728832, 26.707962> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086054, 0.246570, 0.965297,
		0.789521, 0.607825, -0.084876,
		-0.607660, 0.754819, -0.246978,
		36.819702, 35.955276, 26.633869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589611, 36.070744, 26.965948>,  <37.245064, 35.426903, 26.806753>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589611, 36.070744, 26.965948> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191738, 36.107109, 26.985289>,  <36.953014, 36.128929, 26.996893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191738, 36.107109, 26.985289>,  <37.589611, 36.070744, 26.965948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.191738, 36.107109, 26.985289> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075584, 0.325709, 0.942444,
		0.069936, 0.941089, -0.330849,
		-0.994684, 0.090918, 0.048353,
		36.893333, 36.134384, 26.999794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111309, 36.549961, 26.936134>,  <37.589611, 36.070744, 26.965948>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111309, 36.549961, 26.936134> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.480984, 36.646183, 27.054800>,  <38.702789, 36.703915, 27.125999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.480984, 36.646183, 27.054800>,  <38.111309, 36.549961, 26.936134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.480984, 36.646183, 27.054800> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282617, 0.091767, -0.954833,
		-0.256914, 0.966288, 0.016825,
		0.924188, 0.240555, 0.296665,
		38.758240, 36.718349, 27.143799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305962, 37.159939, 26.609629>,  <38.111309, 36.549961, 26.936134>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.305962, 37.159939, 26.609629> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669014, 37.027466, 26.712793>,  <38.886845, 36.947983, 26.774693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669014, 37.027466, 26.712793>,  <38.305962, 37.159939, 26.609629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.669014, 37.027466, 26.712793> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339224, 0.216816, -0.915378,
		0.247235, 0.918320, 0.309134,
		0.907635, -0.331179, 0.257912,
		38.941303, 36.928112, 26.790167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840294, 37.649574, 26.338852>,  <38.305962, 37.159939, 26.609629>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.840294, 37.649574, 26.338852> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.016556, 37.294476, 26.392105>,  <39.122311, 37.081417, 26.424057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.016556, 37.294476, 26.392105>,  <38.840294, 37.649574, 26.338852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016556, 37.294476, 26.392105> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466467, 0.099735, -0.878898,
		0.766964, 0.449390, 0.458055,
		0.440652, -0.887751, 0.133133,
		39.148750, 37.028149, 26.432045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549339, 37.721161, 26.314140>,  <38.840294, 37.649574, 26.338852>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.549339, 37.721161, 26.314140> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474266, 37.341953, 26.211348>,  <39.429222, 37.114429, 26.149672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474266, 37.341953, 26.211348>,  <39.549339, 37.721161, 26.314140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.474266, 37.341953, 26.211348> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539337, 0.119197, -0.833611,
		0.820909, -0.295055, 0.488929,
		-0.187682, -0.948016, -0.256984,
		39.417961, 37.057549, 26.134253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162117, 37.554184, 26.035381>,  <39.549339, 37.721161, 26.314140>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.162117, 37.554184, 26.035381> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.959164, 37.241726, 25.889851>,  <39.837391, 37.054253, 25.802532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.959164, 37.241726, 25.889851>,  <40.162117, 37.554184, 26.035381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.959164, 37.241726, 25.889851> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533094, 0.047181, -0.844740,
		0.677029, -0.622565, 0.392485,
		-0.507388, -0.781145, -0.363828,
		39.806946, 37.007381, 25.780703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.685593, 37.121174, 25.807983>,  <40.162117, 37.554184, 26.035381>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.685593, 37.121174, 25.807983> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.350262, 36.983032, 25.639254>,  <40.149063, 36.900146, 25.538015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.350262, 36.983032, 25.639254>,  <40.685593, 37.121174, 25.807983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.350262, 36.983032, 25.639254> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544945, -0.509037, -0.666271,
		0.015374, -0.788425, 0.614939,
		-0.838331, -0.345351, -0.421822,
		40.098763, 36.879429, 25.512707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.827385, 36.435940, 25.696051>,  <40.685593, 37.121174, 25.807983>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.827385, 36.435940, 25.696051> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.506630, 36.491539, 25.463615>,  <40.314178, 36.524899, 25.324154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.506630, 36.491539, 25.463615>,  <40.827385, 36.435940, 25.696051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.506630, 36.491539, 25.463615> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466309, -0.462463, -0.754112,
		-0.373547, -0.875677, 0.306028,
		-0.801884, 0.138993, -0.581087,
		40.266064, 36.533237, 25.289289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.599602, 35.780846, 25.382841>,  <40.827385, 36.435940, 25.696051>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.599602, 35.780846, 25.382841> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.471630, 36.067238, 25.134644>,  <40.394848, 36.239075, 24.985725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.471630, 36.067238, 25.134644>,  <40.599602, 35.780846, 25.382841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.471630, 36.067238, 25.134644> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384974, -0.500175, -0.775642,
		-0.865703, -0.487022, -0.115617,
		-0.319926, 0.715985, -0.620494,
		40.375652, 36.282032, 24.948496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.391438, 35.435978, 24.761257>,  <40.599602, 35.780846, 25.382841>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.391438, 35.435978, 24.761257> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.442020, 35.817623, 24.652687>,  <40.472370, 36.046612, 24.587545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.442020, 35.817623, 24.652687>,  <40.391438, 35.435978, 24.761257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.442020, 35.817623, 24.652687> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338487, -0.298706, -0.892301,
		-0.932434, 0.020967, -0.360730,
		0.126461, 0.954115, -0.271426,
		40.479958, 36.103859, 24.571259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.194313, 35.368793, 24.063917>,  <40.391438, 35.435978, 24.761257>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.194313, 35.368793, 24.063917> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.378841, 35.723396, 24.078320>,  <40.489559, 35.936157, 24.086962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.378841, 35.723396, 24.078320>,  <40.194313, 35.368793, 24.063917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.378841, 35.723396, 24.078320> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458191, -0.203288, -0.865295,
		-0.759766, 0.415676, -0.499968,
		0.461320, 0.886503, 0.036007,
		40.517239, 35.989346, 24.089121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.065502, 35.671089, 23.401178>,  <40.194313, 35.368793, 24.063917>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.065502, 35.671089, 23.401178> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387600, 35.855022, 23.550920>,  <40.580856, 35.965382, 23.640766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387600, 35.855022, 23.550920>,  <40.065502, 35.671089, 23.401178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.387600, 35.855022, 23.550920> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505815, -0.203251, -0.838355,
		-0.309411, 0.864434, -0.396255,
		0.805242, 0.459829, 0.374356,
		40.629173, 35.992970, 23.663227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.226620, 36.245972, 22.974051>,  <40.065502, 35.671089, 23.401178>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.226620, 36.245972, 22.974051> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.545048, 36.101795, 23.168512>,  <40.736107, 36.015289, 23.285191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.545048, 36.101795, 23.168512>,  <40.226620, 36.245972, 22.974051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.545048, 36.101795, 23.168512> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372066, -0.342075, -0.862874,
		0.477321, 0.867792, -0.138207,
		0.796073, -0.360446, 0.486155,
		40.783871, 35.993660, 23.314360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.677692, 36.365089, 22.576771>,  <40.226620, 36.245972, 22.974051>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.677692, 36.365089, 22.576771> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.887875, 36.126728, 22.819683>,  <41.013985, 35.983711, 22.965431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.887875, 36.126728, 22.819683>,  <40.677692, 36.365089, 22.576771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.887875, 36.126728, 22.819683> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475520, -0.386192, -0.790403,
		0.705535, 0.704095, 0.080440,
		0.525454, -0.595907, 0.607283,
		41.045509, 35.947956, 23.001867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.339333, 36.430557, 22.442717>,  <40.677692, 36.365089, 22.576771>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.339333, 36.430557, 22.442717> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.349380, 36.063114, 22.600468>,  <41.355408, 35.842648, 22.695118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.349380, 36.063114, 22.600468>,  <41.339333, 36.430557, 22.442717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.349380, 36.063114, 22.600468> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708685, -0.261881, -0.655121,
		0.705078, 0.295943, 0.644424,
		0.025116, -0.918605, 0.394377,
		41.356915, 35.787533, 22.718781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<40.001892, 27.401209, 24.017540> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.731922, 27.678288, 23.915838>,  <39.569939, 27.844534, 23.854816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.731922, 27.678288, 23.915838>,  <40.001892, 27.401209, 24.017540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.731922, 27.678288, 23.915838> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176049, 0.183456, 0.967135,
		0.716576, 0.697506, -0.001871,
		-0.674926, 0.692697, -0.254255,
		39.529446, 27.886097, 23.839561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.165554, 27.982914, 24.418489>,  <40.001892, 27.401209, 24.017540>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.165554, 27.982914, 24.418489> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.786469, 28.039476, 24.304052>,  <39.559017, 28.073414, 24.235390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.786469, 28.039476, 24.304052>,  <40.165554, 27.982914, 24.418489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.786469, 28.039476, 24.304052> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244891, 0.252579, 0.936073,
		0.204625, 0.957188, -0.204744,
		-0.947711, 0.141404, -0.286091,
		39.502155, 28.081898, 24.218225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.906139, 28.633673, 24.640503>,  <40.165554, 27.982914, 24.418489>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.906139, 28.633673, 24.640503> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.581982, 28.403664, 24.595581>,  <39.387486, 28.265659, 24.568628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.581982, 28.403664, 24.595581>,  <39.906139, 28.633673, 24.640503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.581982, 28.403664, 24.595581> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390451, 0.387146, 0.835264,
		-0.436817, 0.720742, -0.538259,
		-0.810394, -0.575021, -0.112303,
		39.338863, 28.231157, 24.561890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.449070, 29.091135, 24.945988>,  <39.906139, 28.633673, 24.640503>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.449070, 29.091135, 24.945988> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.258896, 28.739611, 24.929708>,  <39.144791, 28.528696, 24.919941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.258896, 28.739611, 24.929708>,  <39.449070, 29.091135, 24.945988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.258896, 28.739611, 24.929708> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634497, 0.310482, 0.707824,
		-0.609406, 0.362347, -0.705215,
		-0.475434, -0.878809, -0.040699,
		39.116264, 28.475967, 24.917500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.832096, 29.310747, 25.004648>,  <39.449070, 29.091135, 24.945988>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.832096, 29.310747, 25.004648> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.813900, 28.919788, 25.087234>,  <38.802982, 28.685213, 25.136787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.813900, 28.919788, 25.087234>,  <38.832096, 29.310747, 25.004648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.813900, 28.919788, 25.087234> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380407, 0.208060, 0.901111,
		-0.923699, -0.037546, -0.381274,
		-0.045495, -0.977395, 0.206467,
		38.800251, 28.626570, 25.149176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.176285, 29.240566, 25.398714>,  <38.832096, 29.310747, 25.004648>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.176285, 29.240566, 25.398714> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.412075, 28.929802, 25.487192>,  <38.553547, 28.743343, 25.540279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.412075, 28.929802, 25.487192>,  <38.176285, 29.240566, 25.398714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.412075, 28.929802, 25.487192> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327742, 0.020253, 0.944550,
		-0.738313, -0.629282, -0.242689,
		0.589474, -0.776913, 0.221195,
		38.588917, 28.696728, 25.553551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841503, 28.902636, 25.886045>,  <38.176285, 29.240566, 25.398714>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.841503, 28.902636, 25.886045> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.204826, 28.746920, 25.947287>,  <38.422821, 28.653490, 25.984032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.204826, 28.746920, 25.947287>,  <37.841503, 28.902636, 25.886045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.204826, 28.746920, 25.947287> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167098, -0.002123, 0.985938,
		-0.383489, -0.921114, -0.066977,
		0.908303, -0.389288, 0.153102,
		38.477318, 28.630133, 25.993217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641869, 28.323353, 26.267771>,  <37.841503, 28.902636, 25.886045>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.641869, 28.323353, 26.267771> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.029755, 28.379492, 26.347727>,  <38.262486, 28.413176, 26.395700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.029755, 28.379492, 26.347727>,  <37.641869, 28.323353, 26.267771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029755, 28.379492, 26.347727> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197085, -0.033749, 0.979805,
		0.144261, -0.989527, -0.005066,
		0.969714, 0.140350, 0.199889,
		38.320667, 28.421597, 26.407694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909912, 27.852882, 26.714149>,  <37.641869, 28.323353, 26.267771>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.909912, 27.852882, 26.714149> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.168449, 28.152853, 26.770500>,  <38.323574, 28.332836, 26.804312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.168449, 28.152853, 26.770500>,  <37.909912, 27.852882, 26.714149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168449, 28.152853, 26.770500> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243836, 0.028047, 0.969411,
		0.723036, -0.660926, 0.200987,
		0.646346, 0.749927, 0.140878,
		38.362354, 28.377831, 26.812763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221741, 27.761019, 27.443060>,  <37.909912, 27.852882, 26.714149>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.221741, 27.761019, 27.443060> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.348114, 28.127329, 27.343830>,  <38.423939, 28.347115, 27.284292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.348114, 28.127329, 27.343830>,  <38.221741, 27.761019, 27.443060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348114, 28.127329, 27.343830> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052034, 0.244348, 0.968290,
		0.947352, -0.318826, 0.029547,
		0.315936, 0.915775, -0.248074,
		38.442894, 28.402061, 27.269407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.617210, 27.769320, 28.006271>,  <38.221741, 27.761019, 27.443060>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.617210, 27.769320, 28.006271> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.542118, 28.131407, 27.853779>,  <38.497063, 28.348660, 27.762283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.542118, 28.131407, 27.853779>,  <38.617210, 27.769320, 28.006271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.542118, 28.131407, 27.853779> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144524, 0.358449, 0.922295,
		0.971530, 0.228236, 0.063535,
		-0.187727, 0.905219, -0.381230,
		38.485802, 28.402973, 27.739410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097408, 28.245714, 28.423243>,  <38.617210, 27.769320, 28.006271>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.097408, 28.245714, 28.423243> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.787121, 28.444435, 28.267580>,  <38.600948, 28.563667, 28.174183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.787121, 28.444435, 28.267580>,  <39.097408, 28.245714, 28.423243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.787121, 28.444435, 28.267580> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230074, 0.351576, 0.907447,
		0.587640, 0.793462, -0.158424,
		-0.775723, 0.496803, -0.389155,
		38.554405, 28.593475, 28.150833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099045, 28.963076, 28.582880>,  <39.097408, 28.245714, 28.423243>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.099045, 28.963076, 28.582880> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.706459, 28.902575, 28.535791>,  <38.470909, 28.866274, 28.507538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.706459, 28.902575, 28.535791>,  <39.099045, 28.963076, 28.582880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.706459, 28.902575, 28.535791> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164369, 0.348318, 0.922853,
		-0.098579, 0.925093, -0.366721,
		-0.981461, -0.151251, -0.117720,
		38.412022, 28.857199, 28.500475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770641, 29.554449, 28.900053>,  <39.099045, 28.963076, 28.582880>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770641, 29.554449, 28.900053> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.486385, 29.275421, 28.863434>,  <38.315830, 29.108004, 28.841463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.486385, 29.275421, 28.863434>,  <38.770641, 29.554449, 28.900053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.486385, 29.275421, 28.863434> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424578, 0.321454, 0.846405,
		-0.560998, 0.640362, -0.524612,
		-0.710644, -0.697570, -0.091548,
		38.273193, 29.066151, 28.835970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.731983, 30.291584, 28.940918>,  <38.770641, 29.554449, 28.900053>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.731983, 30.291584, 28.940918> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.113163, 30.277431, 29.061337>,  <39.341873, 30.268940, 29.133587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.113163, 30.277431, 29.061337>,  <38.731983, 30.291584, 28.940918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.113163, 30.277431, 29.061337> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287557, -0.208592, -0.934773,
		0.095871, 0.977363, -0.188604,
		0.952953, -0.035383, 0.301045,
		39.399048, 30.266817, 29.151649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.077587, 30.650240, 28.441441>,  <38.731983, 30.291584, 28.940918>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.077587, 30.650240, 28.441441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.377766, 30.462753, 28.627831>,  <39.557873, 30.350262, 28.739664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.377766, 30.462753, 28.627831>,  <39.077587, 30.650240, 28.441441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377766, 30.462753, 28.627831> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505299, -0.047570, -0.861632,
		0.426026, 0.882067, 0.201143,
		0.750449, -0.468715, 0.465974,
		39.602901, 30.322138, 28.767622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.728355, 30.970577, 28.261686>,  <39.077587, 30.650240, 28.441441>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.728355, 30.970577, 28.261686> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.861103, 30.614460, 28.386421>,  <39.940754, 30.400789, 28.461262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.861103, 30.614460, 28.386421>,  <39.728355, 30.970577, 28.261686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.861103, 30.614460, 28.386421> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552492, -0.084495, -0.829224,
		0.764600, 0.447483, 0.463838,
		0.331871, -0.890292, 0.311836,
		39.960663, 30.347372, 28.479973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.481365, 31.013128, 28.112005>,  <39.728355, 30.970577, 28.261686>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.481365, 31.013128, 28.112005> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.396862, 30.627617, 28.177122>,  <40.346161, 30.396309, 28.216192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.396862, 30.627617, 28.177122>,  <40.481365, 31.013128, 28.112005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.396862, 30.627617, 28.177122> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652156, -0.263040, -0.710987,
		0.728055, -0.044034, 0.684103,
		-0.211255, -0.963779, 0.162791,
		40.333485, 30.338484, 28.225960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.115238, 30.646458, 28.160084>,  <40.481365, 31.013128, 28.112005>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.115238, 30.646458, 28.160084> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.853466, 30.365290, 28.048643>,  <40.696404, 30.196589, 27.981779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.853466, 30.365290, 28.048643>,  <41.115238, 30.646458, 28.160084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.853466, 30.365290, 28.048643> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602079, -0.261551, -0.754381,
		0.457401, -0.661433, 0.594382,
		-0.654435, -0.702920, -0.278602,
		40.657135, 30.154413, 27.965063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.472092, 30.160469, 28.035782>,  <41.115238, 30.646458, 28.160084>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.472092, 30.160469, 28.035782> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.137737, 30.052877, 27.844387>,  <40.937126, 29.988321, 27.729549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.137737, 30.052877, 27.844387>,  <41.472092, 30.160469, 28.035782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.137737, 30.052877, 27.844387> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540662, -0.252909, -0.802323,
		0.094796, -0.929347, 0.356830,
		-0.835882, -0.268982, -0.478488,
		40.886974, 29.972183, 27.700840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.662205, 29.476976, 27.681295>,  <41.472092, 30.160469, 28.035782>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.662205, 29.476976, 27.681295> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.342602, 29.638632, 27.503189>,  <41.150841, 29.735624, 27.396326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.342602, 29.638632, 27.503189>,  <41.662205, 29.476976, 27.681295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.342602, 29.638632, 27.503189> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408957, -0.177648, -0.895095,
		-0.440842, -0.897281, -0.023333,
		-0.799007, 0.404137, -0.445264,
		41.102901, 29.759872, 27.369610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.560684, 29.097773, 27.154352>,  <41.662205, 29.476976, 27.681295>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.560684, 29.097773, 27.154352> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.353676, 29.429699, 27.070845>,  <41.229473, 29.628855, 27.020741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.353676, 29.429699, 27.070845>,  <41.560684, 29.097773, 27.154352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.353676, 29.429699, 27.070845> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288866, -0.060231, -0.955473,
		-0.805440, -0.554779, -0.208535,
		-0.517516, 0.829814, -0.208769,
		41.198421, 29.678644, 27.008213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.182125, 29.001139, 26.507595>,  <41.560684, 29.097773, 27.154352>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.182125, 29.001139, 26.507595> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.219330, 29.397715, 26.544258>,  <41.241653, 29.635660, 26.566256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.219330, 29.397715, 26.544258>,  <41.182125, 29.001139, 26.507595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.219330, 29.397715, 26.544258> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282626, 0.061979, -0.957226,
		-0.954710, 0.114936, -0.274442,
		0.093010, 0.991437, 0.091656,
		41.247234, 29.695147, 26.571754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.810558, 29.182884, 25.944431>,  <41.182125, 29.001139, 26.507595>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.810558, 29.182884, 25.944431> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.021828, 29.515276, 26.014294>,  <41.148590, 29.714710, 26.056211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.021828, 29.515276, 26.014294>,  <40.810558, 29.182884, 25.944431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.021828, 29.515276, 26.014294> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280847, 0.023157, -0.959473,
		-0.801346, 0.555823, -0.221147,
		0.528176, 0.830978, 0.174658,
		41.180279, 29.764570, 26.066690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.567184, 29.643383, 25.477510>,  <40.810558, 29.182884, 25.944431>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.567184, 29.643383, 25.477510> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.940857, 29.731430, 25.589840>,  <41.165058, 29.784258, 25.657238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.940857, 29.731430, 25.589840>,  <40.567184, 29.643383, 25.477510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.940857, 29.731430, 25.589840> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282627, 0.023927, -0.958931,
		-0.217795, 0.975180, -0.039858,
		0.934177, 0.220116, 0.280824,
		41.221111, 29.797464, 25.674088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.747658, 30.251471, 25.137131>,  <40.567184, 29.643383, 25.477510>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.747658, 30.251471, 25.137131> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.112476, 30.117689, 25.232052>,  <41.331367, 30.037420, 25.289005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.112476, 30.117689, 25.232052>,  <40.747658, 30.251471, 25.137131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.112476, 30.117689, 25.232052> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257651, 0.017144, -0.966086,
		0.319041, 0.942257, 0.101807,
		0.912047, -0.334451, 0.237304,
		41.386089, 30.017353, 25.303244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.193588, 30.666971, 24.784485>,  <40.747658, 30.251471, 25.137131>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.193588, 30.666971, 24.784485> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.443024, 30.368200, 24.876776>,  <41.592686, 30.188938, 24.932150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.443024, 30.368200, 24.876776>,  <41.193588, 30.666971, 24.784485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.443024, 30.368200, 24.876776> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278828, -0.063221, -0.958258,
		0.730336, 0.661893, 0.168840,
		0.623589, -0.746928, 0.230727,
		41.630100, 30.144121, 24.945993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.839451, 30.904202, 24.558439>,  <41.193588, 30.666971, 24.784485>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.839451, 30.904202, 24.558439> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.791431, 30.507111, 24.562031>,  <41.762619, 30.268856, 24.564186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.791431, 30.507111, 24.562031>,  <41.839451, 30.904202, 24.558439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.791431, 30.507111, 24.562031> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120392, -0.023536, -0.992448,
		0.985441, -0.118061, 0.122342,
		-0.120049, -0.992728, 0.008979,
		41.755417, 30.209291, 24.564724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.504066, 31.030828, 25.031935>,  <41.839451, 30.904202, 24.558439>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.504066, 31.030828, 25.031935> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.808449, 31.285883, 24.984001>,  <42.991077, 31.438915, 24.955242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.808449, 31.285883, 24.984001>,  <42.504066, 31.030828, 25.031935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.808449, 31.285883, 24.984001> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215418, -0.074091, 0.973707,
		0.611993, -0.766766, -0.193739,
		0.760960, 0.637636, -0.119832,
		43.036736, 31.477175, 24.948051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.986752, 30.747004, 25.424099>,  <42.504066, 31.030828, 25.031935>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.986752, 30.747004, 25.424099> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.052467, 31.139429, 25.383066>,  <43.091896, 31.374884, 25.358446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.052467, 31.139429, 25.383066>,  <42.986752, 30.747004, 25.424099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.052467, 31.139429, 25.383066> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133120, 0.080992, 0.987785,
		0.977388, -0.175941, -0.117293,
		0.164292, 0.981063, -0.102582,
		43.101753, 31.433748, 25.352291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.515224, 30.958038, 26.053314>,  <42.986752, 30.747004, 25.424099>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.515224, 30.958038, 26.053314> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.374596, 31.306862, 25.917133>,  <43.290218, 31.516157, 25.835424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.374596, 31.306862, 25.917133>,  <43.515224, 30.958038, 26.053314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.374596, 31.306862, 25.917133> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226094, 0.432000, 0.873073,
		0.908449, 0.229973, -0.349047,
		-0.351572, 0.872060, -0.340455,
		43.269123, 31.568480, 25.814997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.019337, 31.457813, 26.221613>,  <43.515224, 30.958038, 26.053314>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.019337, 31.457813, 26.221613> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.703438, 31.698221, 26.172506>,  <43.513897, 31.842466, 26.143042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.703438, 31.698221, 26.172506>,  <44.019337, 31.457813, 26.221613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.703438, 31.698221, 26.172506> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283166, 0.534714, 0.796177,
		0.544166, 0.594015, -0.592478,
		-0.789747, 0.601022, -0.122768,
		43.466515, 31.878529, 26.135675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.194977, 32.118908, 26.573231>,  <44.019337, 31.457813, 26.221613>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.194977, 32.118908, 26.573231> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.798824, 32.144196, 26.523983>,  <43.561134, 32.159367, 26.494434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.798824, 32.144196, 26.523983>,  <44.194977, 32.118908, 26.573231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.798824, 32.144196, 26.523983> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097039, 0.317099, 0.943415,
		0.098680, 0.946283, -0.307913,
		-0.990377, 0.063216, -0.123117,
		43.501713, 32.163162, 26.487047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.015892, 32.803047, 26.876883>,  <44.194977, 32.118908, 26.573231>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.015892, 32.803047, 26.876883> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.713593, 32.541286, 26.867071>,  <43.532211, 32.384232, 26.861183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.713593, 32.541286, 26.867071>,  <44.015892, 32.803047, 26.876883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.713593, 32.541286, 26.867071> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167556, 0.157023, 0.973278,
		-0.633064, 0.739663, -0.228319,
		-0.755749, -0.654403, -0.024529,
		43.486870, 32.344967, 26.859713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.575035, 33.172123, 27.126358>,  <44.015892, 32.803047, 26.876883>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.575035, 33.172123, 27.126358> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.466682, 32.790936, 27.180716>,  <43.401669, 32.562222, 27.213329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.466682, 32.790936, 27.180716>,  <43.575035, 33.172123, 27.126358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.466682, 32.790936, 27.180716> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238796, 0.203285, 0.949553,
		-0.932523, 0.224767, -0.282633,
		-0.270884, -0.952972, 0.135894,
		43.385418, 32.505043, 27.221483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.014812, 33.226196, 27.416271>,  <43.575035, 33.172123, 27.126358>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.014812, 33.226196, 27.416271> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.100658, 32.844833, 27.501074>,  <43.152168, 32.616016, 27.551956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.100658, 32.844833, 27.501074>,  <43.014812, 33.226196, 27.416271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.100658, 32.844833, 27.501074> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305432, 0.140663, 0.941767,
		-0.927712, -0.266875, -0.261013,
		0.214619, -0.953410, 0.212007,
		43.165043, 32.558811, 27.564676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.511871, 33.060173, 27.915907>,  <43.014812, 33.226196, 27.416271>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.511871, 33.060173, 27.915907> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.782318, 32.773209, 27.983051>,  <42.944588, 32.601028, 28.023338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.782318, 32.773209, 27.983051>,  <42.511871, 33.060173, 27.915907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.782318, 32.773209, 27.983051> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186709, 0.053562, 0.980954,
		-0.712742, -0.694584, -0.097733,
		0.676120, -0.717414, 0.167861,
		42.985153, 32.557983, 28.033409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.175137, 32.539970, 28.197880>,  <42.511871, 33.060173, 27.915907>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.175137, 32.539970, 28.197880> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.553398, 32.468143, 28.306314>,  <42.780357, 32.425045, 28.371374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.553398, 32.468143, 28.306314>,  <42.175137, 32.539970, 28.197880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.553398, 32.468143, 28.306314> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287579, -0.072773, 0.954988,
		-0.151764, -0.981049, -0.120460,
		0.945657, -0.179574, 0.271085,
		42.837097, 32.414272, 28.387640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.103859, 32.101711, 28.788500>,  <42.175137, 32.539970, 28.197880>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.103859, 32.101711, 28.788500> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.487476, 32.209671, 28.822906>,  <42.717648, 32.274448, 28.843550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.487476, 32.209671, 28.822906>,  <42.103859, 32.101711, 28.788500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.487476, 32.209671, 28.822906> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077160, -0.043274, 0.996079,
		0.272564, -0.961916, -0.020676,
		0.959039, 0.269900, 0.086016,
		42.775188, 32.290642, 28.848711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.413010, 31.749714, 29.353216>,  <42.103859, 32.101711, 28.788500>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.413010, 31.749714, 29.353216> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.668392, 32.056904, 29.332863>,  <42.821621, 32.241219, 29.320650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.668392, 32.056904, 29.332863>,  <42.413010, 31.749714, 29.353216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.668392, 32.056904, 29.332863> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041292, 0.031840, 0.998640,
		0.768552, -0.639686, -0.011383,
		0.638453, 0.767977, -0.050884,
		42.859928, 32.287296, 29.317598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.021149, 31.622402, 29.788761>,  <42.413010, 31.749714, 29.353216>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.021149, 31.622402, 29.788761> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.032043, 32.017864, 29.729679>,  <43.038582, 32.255142, 29.694231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.032043, 32.017864, 29.729679>,  <43.021149, 31.622402, 29.788761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.032043, 32.017864, 29.729679> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050149, 0.146220, 0.987980,
		0.998370, -0.034320, -0.045597,
		0.027241, 0.988657, -0.147703,
		43.040215, 32.314461, 29.685368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.481571, 31.919792, 30.327591>,  <43.021149, 31.622402, 29.788761>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.481571, 31.919792, 30.327591> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.247410, 32.224342, 30.216158>,  <43.106915, 32.407074, 30.149298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.247410, 32.224342, 30.216158>,  <43.481571, 31.919792, 30.327591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.247410, 32.224342, 30.216158> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047527, 0.375253, 0.925703,
		0.809347, 0.528671, -0.255861,
		-0.585404, 0.761376, -0.278583,
		43.071789, 32.452755, 30.132584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<42.120007, 36.293049, 22.517454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.938427, 35.938320, 22.552063>,  <41.829479, 35.725483, 22.572828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.938427, 35.938320, 22.552063>,  <42.120007, 36.293049, 22.517454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.938427, 35.938320, 22.552063> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594872, -0.373925, -0.711553,
		0.663371, -0.271537, 0.697285,
		-0.453946, -0.886819, 0.086521,
		41.802242, 35.672276, 22.578020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.712055, 35.785557, 22.554550>,  <42.120007, 36.293049, 22.517454>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.712055, 35.785557, 22.554550> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.399925, 35.559700, 22.447014>,  <42.212646, 35.424187, 22.382492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.399925, 35.559700, 22.447014>,  <42.712055, 35.785557, 22.554550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.399925, 35.559700, 22.447014> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589312, -0.520029, -0.618289,
		0.209309, -0.640895, 0.738541,
		-0.780321, -0.564645, -0.268840,
		42.165829, 35.390308, 22.366362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.019382, 35.152645, 22.474430>,  <42.712055, 35.785557, 22.554550>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.019382, 35.152645, 22.474430> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.674076, 35.140881, 22.272875>,  <42.466892, 35.133823, 22.151941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.674076, 35.140881, 22.272875>,  <43.019382, 35.152645, 22.474430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.674076, 35.140881, 22.272875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471747, -0.402030, -0.784746,
		-0.179500, -0.915154, 0.360933,
		-0.863270, -0.029408, -0.503886,
		42.415096, 35.132057, 22.121710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.860439, 34.427418, 22.390692>,  <43.019382, 35.152645, 22.474430>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.860439, 34.427418, 22.390692> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.681156, 34.639019, 22.102451>,  <42.573586, 34.765980, 21.929506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.681156, 34.639019, 22.102451>,  <42.860439, 34.427418, 22.390692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.681156, 34.639019, 22.102451> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524796, -0.496862, -0.691171,
		-0.723670, -0.687958, -0.054919,
		-0.448209, 0.529001, -0.720601,
		42.546692, 34.797718, 21.886271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.783627, 33.977558, 21.868553>,  <42.860439, 34.427418, 22.390692>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.783627, 33.977558, 21.868553> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.705547, 34.315304, 21.668976>,  <42.658699, 34.517952, 21.549229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.705547, 34.315304, 21.668976>,  <42.783627, 33.977558, 21.868553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.705547, 34.315304, 21.668976> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498848, -0.352531, -0.791753,
		-0.844422, -0.403447, -0.352396,
		-0.195200, 0.844365, -0.498944,
		42.646988, 34.568615, 21.519293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.313568, 33.861084, 21.272289>,  <42.783627, 33.977558, 21.868553>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.313568, 33.861084, 21.272289> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.515205, 34.201008, 21.210691>,  <42.636189, 34.404961, 21.173733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.515205, 34.201008, 21.210691>,  <42.313568, 33.861084, 21.272289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.515205, 34.201008, 21.210691> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292354, -0.335683, -0.895459,
		-0.812663, 0.406372, -0.417660,
		0.504091, 0.849811, -0.153992,
		42.666431, 34.455952, 21.164494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.126160, 34.252983, 20.541632>,  <42.313568, 33.861084, 21.272289>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.126160, 34.252983, 20.541632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.491932, 34.356621, 20.666012>,  <42.711395, 34.418804, 20.740641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.491932, 34.356621, 20.666012>,  <42.126160, 34.252983, 20.541632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.491932, 34.356621, 20.666012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388363, -0.345289, -0.854371,
		-0.113996, 0.902022, -0.416366,
		0.914428, 0.259096, 0.310950,
		42.766262, 34.434349, 20.759296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.328255, 34.595451, 19.928167>,  <42.126160, 34.252983, 20.541632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.328255, 34.595451, 19.928167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.654453, 34.532131, 20.150843>,  <42.850174, 34.494137, 20.284447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.654453, 34.532131, 20.150843>,  <42.328255, 34.595451, 19.928167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.654453, 34.532131, 20.150843> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508204, -0.264372, -0.819656,
		0.276927, 0.951340, -0.135145,
		0.815500, -0.158304, 0.556687,
		42.899105, 34.484638, 20.317848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.923653, 34.962757, 19.631052>,  <42.328255, 34.595451, 19.928167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.923653, 34.962757, 19.631052> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.110535, 34.699940, 19.867697>,  <43.222664, 34.542248, 20.009684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.110535, 34.699940, 19.867697>,  <42.923653, 34.962757, 19.631052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.110535, 34.699940, 19.867697> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498494, -0.356883, -0.790024,
		0.730220, 0.664021, 0.160796,
		0.467207, -0.657047, 0.591614,
		43.250698, 34.502827, 20.045181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.585297, 35.035664, 19.375975>,  <42.923653, 34.962757, 19.631052>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.585297, 35.035664, 19.375975> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.573135, 34.690495, 19.577742>,  <43.565838, 34.483391, 19.698801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.573135, 34.690495, 19.577742>,  <43.585297, 35.035664, 19.375975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.573135, 34.690495, 19.577742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619684, -0.412235, -0.667872,
		0.784262, 0.292273, 0.547275,
		-0.030405, -0.862924, 0.504417,
		43.564014, 34.431618, 19.729067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.271801, 34.786049, 19.429810>,  <43.585297, 35.035664, 19.375975>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.271801, 34.786049, 19.429810> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.053249, 34.464001, 19.522108>,  <43.922119, 34.270771, 19.577488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.053249, 34.464001, 19.522108>,  <44.271801, 34.786049, 19.429810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.053249, 34.464001, 19.522108> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520163, -0.542134, -0.659940,
		0.656430, -0.240552, 0.715007,
		-0.546380, -0.805124, 0.230747,
		43.889336, 34.222462, 19.591331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.727570, 34.245483, 19.566221>,  <44.271801, 34.786049, 19.429810>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.727570, 34.245483, 19.566221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.390415, 34.051212, 19.473566>,  <44.188122, 33.934650, 19.417973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.390415, 34.051212, 19.473566>,  <44.727570, 34.245483, 19.566221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.390415, 34.051212, 19.473566> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492276, -0.522196, -0.696402,
		0.217270, -0.701017, 0.679242,
		-0.842887, -0.485682, -0.231636,
		44.137550, 33.905506, 19.404076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.848103, 33.507862, 19.512047>,  <44.727570, 34.245483, 19.566221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.848103, 33.507862, 19.512047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.555164, 33.648132, 19.278570>,  <44.379402, 33.732296, 19.138485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.555164, 33.648132, 19.278570>,  <44.848103, 33.507862, 19.512047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.555164, 33.648132, 19.278570> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448004, -0.397398, -0.800854,
		-0.512800, -0.847997, 0.133927,
		-0.732344, 0.350678, -0.583692,
		44.335461, 33.753334, 19.103462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.471611, 32.953426, 19.268152>,  <44.848103, 33.507862, 19.512047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.471611, 32.953426, 19.268152> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.474503, 33.240360, 18.989477>,  <44.476238, 33.412521, 18.822271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.474503, 33.240360, 18.989477>,  <44.471611, 32.953426, 19.268152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.474503, 33.240360, 18.989477> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634239, -0.541928, -0.551411,
		-0.773103, -0.437884, -0.458878,
		0.007225, 0.717336, -0.696690,
		44.476669, 33.455563, 18.780470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.371239, 32.339314, 19.714811>,  <44.471611, 32.953426, 19.268152>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.371239, 32.339314, 19.714811> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.454231, 31.955378, 19.639280>,  <44.504025, 31.725016, 19.593962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.454231, 31.955378, 19.639280>,  <44.371239, 32.339314, 19.714811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.454231, 31.955378, 19.639280> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600378, -0.277338, 0.750086,
		-0.772333, -0.042260, -0.633810,
		0.207478, -0.959842, -0.188826,
		44.516476, 31.667425, 19.582632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.776436, 31.928045, 19.549458>,  <44.371239, 32.339314, 19.714811>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.776436, 31.928045, 19.549458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.030125, 31.660482, 19.704546>,  <44.182339, 31.499945, 19.797600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.030125, 31.660482, 19.704546>,  <43.776436, 31.928045, 19.549458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.030125, 31.660482, 19.704546> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684618, -0.252853, 0.683640,
		-0.359255, -0.699020, -0.618310,
		0.634219, -0.668907, 0.387723,
		44.220390, 31.459810, 19.820864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.400177, 31.423927, 19.762262>,  <43.776436, 31.928045, 19.549458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.400177, 31.423927, 19.762262> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.736660, 31.378168, 19.973652>,  <43.938549, 31.350712, 20.100485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.736660, 31.378168, 19.973652>,  <43.400177, 31.423927, 19.762262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.736660, 31.378168, 19.973652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530497, 0.014490, 0.847563,
		-0.104621, -0.993329, -0.048502,
		0.841206, -0.114403, 0.528474,
		43.989021, 31.343849, 20.132195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.288464, 31.039162, 20.343178>,  <43.400177, 31.423927, 19.762262>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.288464, 31.039162, 20.343178> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.637146, 31.205843, 20.446318>,  <43.846355, 31.305851, 20.508202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.637146, 31.205843, 20.446318>,  <43.288464, 31.039162, 20.343178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.637146, 31.205843, 20.446318> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352598, 0.167961, 0.920578,
		0.340298, -0.893392, 0.293341,
		0.871707, 0.416702, 0.257851,
		43.898659, 31.330854, 20.523672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.586460, 30.642313, 20.961130>,  <43.288464, 31.039162, 20.343178>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.586460, 30.642313, 20.961130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.772278, 30.996515, 20.957426>,  <43.883766, 31.209036, 20.955204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.772278, 30.996515, 20.957426>,  <43.586460, 30.642313, 20.961130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.772278, 30.996515, 20.957426> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238369, 0.135105, 0.961731,
		0.852868, -0.444555, 0.273839,
		0.464539, 0.885504, -0.009258,
		43.911640, 31.262167, 20.954649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.093136, 30.499504, 21.423491>,  <43.586460, 30.642313, 20.961130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.093136, 30.499504, 21.423491> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.010052, 30.887455, 21.372580>,  <43.960201, 31.120226, 21.342033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.010052, 30.887455, 21.372580>,  <44.093136, 30.499504, 21.423491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.010052, 30.887455, 21.372580> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133167, 0.100866, 0.985948,
		0.969084, 0.221739, 0.108205,
		-0.207709, 0.969875, -0.127276,
		43.947739, 31.178417, 21.334396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.527081, 30.835663, 21.829372>,  <44.093136, 30.499504, 21.423491>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.527081, 30.835663, 21.829372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.234177, 31.105104, 21.789267>,  <44.058434, 31.266769, 21.765203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.234177, 31.105104, 21.789267>,  <44.527081, 30.835663, 21.829372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.234177, 31.105104, 21.789267> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037829, 0.187230, 0.981588,
		0.679974, 0.714984, -0.162583,
		-0.732260, 0.673604, -0.100264,
		44.014500, 31.307186, 21.759188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.786758, 31.309370, 22.273777>,  <44.527081, 30.835663, 21.829372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.786758, 31.309370, 22.273777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.398769, 31.398407, 22.234589>,  <44.165974, 31.451828, 22.211075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.398769, 31.398407, 22.234589>,  <44.786758, 31.309370, 22.273777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.398769, 31.398407, 22.234589> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040375, 0.249867, 0.967438,
		0.239823, 0.942348, -0.233378,
		-0.969977, 0.222591, -0.097972,
		44.107777, 31.465185, 22.205196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.531918, 31.745052, 22.926535>,  <44.786758, 31.309370, 22.273777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.531918, 31.745052, 22.926535> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.171364, 31.639149, 22.789480>,  <43.955032, 31.575605, 22.707247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.171364, 31.639149, 22.789480>,  <44.531918, 31.745052, 22.926535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.171364, 31.639149, 22.789480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393828, 0.172342, 0.902883,
		-0.179997, 0.948789, -0.259617,
		-0.901388, -0.264760, -0.342638,
		43.900948, 31.559721, 22.686689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.017845, 32.240967, 23.205038>,  <44.531918, 31.745052, 22.926535>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.017845, 32.240967, 23.205038> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.832081, 31.896427, 23.122679>,  <43.720623, 31.689703, 23.073263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.832081, 31.896427, 23.122679>,  <44.017845, 32.240967, 23.205038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.832081, 31.896427, 23.122679> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519021, 0.076332, 0.851346,
		-0.717594, 0.502239, -0.482510,
		-0.464410, -0.861353, -0.205897,
		43.692757, 31.638021, 23.060909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.294895, 32.387691, 23.159599>,  <44.017845, 32.240967, 23.205038>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.294895, 32.387691, 23.159599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.325111, 32.000515, 23.255421>,  <43.343239, 31.768209, 23.312914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.325111, 32.000515, 23.255421>,  <43.294895, 32.387691, 23.159599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.325111, 32.000515, 23.255421> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436996, 0.183804, 0.880483,
		-0.896286, -0.171194, -0.409102,
		0.075538, -0.967941, 0.239552,
		43.347775, 31.710133, 23.327286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.799683, 32.314541, 23.587370>,  <43.294895, 32.387691, 23.159599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.799683, 32.314541, 23.587370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.013454, 31.981733, 23.646875>,  <43.141720, 31.782049, 23.682579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.013454, 31.981733, 23.646875>,  <42.799683, 32.314541, 23.587370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.013454, 31.981733, 23.646875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338472, -0.049400, 0.939679,
		-0.774479, -0.552548, -0.308015,
		0.534434, -0.832016, 0.148763,
		43.173786, 31.732128, 23.691504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.452354, 31.898741, 24.091192>,  <42.799683, 32.314541, 23.587370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.452354, 31.898741, 24.091192> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.824326, 31.751652, 24.092335>,  <43.047508, 31.663399, 24.093019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.824326, 31.751652, 24.092335>,  <42.452354, 31.898741, 24.091192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.824326, 31.751652, 24.092335> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011224, 0.036146, 0.999283,
		-0.367563, -0.929232, 0.037741,
		0.929931, -0.367724, 0.002856,
		43.103306, 31.641335, 24.093191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.363010, 31.361782, 24.405527>,  <42.452354, 31.898741, 24.091192>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.363010, 31.361782, 24.405527> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.745998, 31.466654, 24.453728>,  <42.975792, 31.529577, 24.482649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.745998, 31.466654, 24.453728>,  <42.363010, 31.361782, 24.405527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.745998, 31.466654, 24.453728> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084979, -0.142881, 0.986085,
		0.275749, -0.954383, -0.114523,
		0.957466, 0.262180, 0.120502,
		43.033237, 31.545307, 24.489878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.447372, 30.739363, 23.963303>,  <42.363010, 31.361782, 24.405527>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.447372, 30.739363, 23.963303> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.240921, 30.407358, 24.047865>,  <42.117050, 30.208155, 24.098602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.240921, 30.407358, 24.047865>,  <42.447372, 30.739363, 23.963303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.240921, 30.407358, 24.047865> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030355, -0.264391, -0.963938,
		0.855974, -0.491097, 0.161654,
		-0.516127, -0.830013, 0.211405,
		42.086082, 30.158354, 24.111286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.815342, 30.134005, 23.670786>,  <42.447372, 30.739363, 23.963303>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.815342, 30.134005, 23.670786> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.427620, 30.041553, 23.704300>,  <42.194984, 29.986082, 23.724407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.427620, 30.041553, 23.704300>,  <42.815342, 30.134005, 23.670786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.427620, 30.041553, 23.704300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032930, -0.215665, -0.975912,
		0.243630, -0.948719, 0.201435,
		-0.969309, -0.231128, 0.083784,
		42.136826, 29.972216, 23.729435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.763538, 29.483082, 23.359386>,  <42.815342, 30.134005, 23.670786>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.763538, 29.483082, 23.359386> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.388176, 29.619513, 23.337267>,  <42.162960, 29.701372, 23.323996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.388176, 29.619513, 23.337267>,  <42.763538, 29.483082, 23.359386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.388176, 29.619513, 23.337267> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072435, -0.350671, -0.933693,
		-0.337835, -0.872185, 0.353780,
		-0.938414, 0.341060, -0.055292,
		42.106655, 29.721836, 23.320677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.411629, 28.904598, 23.055542>,  <42.763538, 29.483082, 23.359386>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.411629, 28.904598, 23.055542> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.164890, 29.214397, 22.999464>,  <42.016850, 29.400278, 22.965816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.164890, 29.214397, 22.999464>,  <42.411629, 28.904598, 23.055542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.164890, 29.214397, 22.999464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222890, -0.342716, -0.912615,
		-0.754868, -0.531691, 0.384030,
		-0.616842, 0.774500, -0.140197,
		41.979839, 29.446747, 22.957405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.841751, 28.586178, 22.720959>,  <42.411629, 28.904598, 23.055542>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.841751, 28.586178, 22.720959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.823643, 28.976103, 22.633606>,  <41.812778, 29.210058, 22.581194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.823643, 28.976103, 22.633606>,  <41.841751, 28.586178, 22.720959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.823643, 28.976103, 22.633606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039784, -0.220193, -0.974645,
		-0.998182, -0.035434, 0.048750,
		-0.045270, 0.974812, -0.218383,
		41.810062, 29.268547, 22.568090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.387474, 28.648703, 22.270481>,  <41.841751, 28.586178, 22.720959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.387474, 28.648703, 22.270481> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.568508, 29.002001, 22.221418>,  <41.677128, 29.213980, 22.191980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.568508, 29.002001, 22.221418>,  <41.387474, 28.648703, 22.270481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.568508, 29.002001, 22.221418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038769, -0.156909, -0.986852,
		-0.890877, 0.441881, -0.105258,
		0.452587, 0.883244, -0.122655,
		41.704285, 29.266973, 22.184622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.020527, 29.135162, 21.653858>,  <41.387474, 28.648703, 22.270481>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.020527, 29.135162, 21.653858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.398815, 29.253582, 21.707483>,  <41.625786, 29.324635, 21.739658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.398815, 29.253582, 21.707483>,  <41.020527, 29.135162, 21.653858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.398815, 29.253582, 21.707483> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186238, -0.155632, -0.970100,
		-0.266334, 0.942408, -0.202320,
		0.945717, 0.296050, 0.134062,
		41.682529, 29.342398, 21.747702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.541092, 29.319824, 21.297560>,  <41.020527, 29.135162, 21.653858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.541092, 29.319824, 21.297560> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.328751, 29.008467, 21.163515>,  <40.201347, 28.821653, 21.083088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.328751, 29.008467, 21.163515>,  <40.541092, 29.319824, 21.297560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.328751, 29.008467, 21.163515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251019, -0.233262, 0.939457,
		-0.809434, 0.582834, -0.071563,
		-0.530855, -0.778391, -0.335112,
		40.169495, 28.774950, 21.062981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.970673, 29.444252, 21.702768>,  <40.541092, 29.319824, 21.297560>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.970673, 29.444252, 21.702768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.955254, 29.058516, 21.598032>,  <39.946003, 28.827074, 21.535191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.955254, 29.058516, 21.598032>,  <39.970673, 29.444252, 21.702768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.955254, 29.058516, 21.598032> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397852, -0.225558, 0.889291,
		-0.916639, 0.138454, -0.374970,
		-0.038548, -0.964341, -0.261839,
		39.943687, 28.769213, 21.519480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.284641, 29.144606, 22.023933>,  <39.970673, 29.444252, 21.702768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.284641, 29.144606, 22.023933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.496902, 28.817619, 21.934351>,  <39.624260, 28.621428, 21.880602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.496902, 28.817619, 21.934351>,  <39.284641, 29.144606, 22.023933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.496902, 28.817619, 21.934351> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295263, -0.425962, 0.855205,
		-0.794496, -0.387693, -0.467407,
		0.530655, -0.817465, -0.223954,
		39.656097, 28.572380, 21.867165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.783485, 28.460646, 22.030327>,  <39.284641, 29.144606, 22.023933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.783485, 28.460646, 22.030327> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.173401, 28.382212, 22.072924>,  <39.407349, 28.335152, 22.098482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.173401, 28.382212, 22.072924>,  <38.783485, 28.460646, 22.030327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173401, 28.382212, 22.072924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196483, -0.528087, 0.826146,
		-0.105757, -0.826241, -0.553300,
		0.974787, -0.196084, 0.106494,
		39.465836, 28.323387, 22.104872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.832150, 27.762838, 22.356638>,  <38.783485, 28.460646, 22.030327>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.832150, 27.762838, 22.356638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.200489, 27.891483, 22.444822>,  <39.421494, 27.968670, 22.497734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.200489, 27.891483, 22.444822>,  <38.832150, 27.762838, 22.356638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.200489, 27.891483, 22.444822> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097592, -0.357306, 0.928875,
		0.377511, -0.876868, -0.297638,
		0.920848, 0.321613, 0.220463,
		39.476742, 27.987967, 22.510962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171112, 27.177126, 22.771347>,  <38.832150, 27.762838, 22.356638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.171112, 27.177126, 22.771347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.340878, 27.528269, 22.860104>,  <39.442738, 27.738955, 22.913357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.340878, 27.528269, 22.860104>,  <39.171112, 27.177126, 22.771347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340878, 27.528269, 22.860104> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020858, -0.235512, 0.971648,
		0.905226, -0.417013, -0.081645,
		0.424418, 0.877858, 0.221890,
		39.468204, 27.791626, 22.926670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.553310, 27.035814, 23.385113>,  <39.171112, 27.177126, 22.771347>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.553310, 27.035814, 23.385113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.498398, 27.431997, 23.380344>,  <39.465450, 27.669708, 23.377483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.498398, 27.431997, 23.380344>,  <39.553310, 27.035814, 23.385113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.498398, 27.431997, 23.380344> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111197, -0.003451, 0.993793,
		0.984270, 0.137760, 0.110610,
		-0.137286, 0.990460, -0.011922,
		39.457211, 27.729136, 23.376768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<41.283371, 33.197632, 18.022017> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.550751, 33.358791, 18.272087>,  <41.711178, 33.455486, 18.422131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.550751, 33.358791, 18.272087>,  <41.283371, 33.197632, 18.022017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.550751, 33.358791, 18.272087> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727044, 0.176778, 0.663443,
		0.156774, -0.898016, 0.411084,
		0.668453, 0.402886, 0.625182,
		41.751286, 33.479660, 18.459641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.246052, 32.901501, 18.668949>,  <41.283371, 33.197632, 18.022017>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.246052, 32.901501, 18.668949> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.407654, 33.255085, 18.763098>,  <41.504616, 33.467236, 18.819588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.407654, 33.255085, 18.763098>,  <41.246052, 32.901501, 18.668949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.407654, 33.255085, 18.763098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656464, 0.100972, 0.747569,
		0.637055, -0.456531, 0.621080,
		0.404001, 0.883959, 0.235371,
		41.528854, 33.520271, 18.833710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.069195, 32.949036, 19.343758>,  <41.246052, 32.901501, 18.668949>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.069195, 32.949036, 19.343758> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.198181, 33.322758, 19.282970>,  <41.275574, 33.546989, 19.246498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.198181, 33.322758, 19.282970>,  <41.069195, 32.949036, 19.343758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.198181, 33.322758, 19.282970> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665067, 0.337870, 0.665980,
		0.673572, -0.113688, 0.730326,
		0.322470, 0.934301, -0.151970,
		41.294922, 33.603046, 19.237379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.174389, 33.269058, 20.021013>,  <41.069195, 32.949036, 19.343758>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.174389, 33.269058, 20.021013> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.071083, 33.581543, 19.793680>,  <41.009098, 33.769035, 19.657280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.071083, 33.581543, 19.793680>,  <41.174389, 33.269058, 20.021013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.071083, 33.581543, 19.793680> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707529, 0.247612, 0.661885,
		0.657799, 0.573056, 0.488781,
		-0.258269, 0.781214, -0.568333,
		40.993603, 33.815907, 19.623180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.143291, 33.854240, 20.480659>,  <41.174389, 33.269058, 20.021013>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.143291, 33.854240, 20.480659> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.925205, 33.940159, 20.156536>,  <40.794353, 33.991711, 19.962063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.925205, 33.940159, 20.156536>,  <41.143291, 33.854240, 20.480659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.925205, 33.940159, 20.156536> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785082, 0.208067, 0.583398,
		0.293909, 0.954239, 0.055190,
		-0.545218, 0.214795, -0.810309,
		40.761639, 34.004597, 19.913443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.850224, 34.497929, 20.612141>,  <41.143291, 33.854240, 20.480659>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.850224, 34.497929, 20.612141> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.616516, 34.299492, 20.355228>,  <40.476292, 34.180431, 20.201080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.616516, 34.299492, 20.355228>,  <40.850224, 34.497929, 20.612141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.616516, 34.299492, 20.355228> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801933, 0.231370, 0.550792,
		-0.124636, 0.836878, -0.533011,
		-0.584269, -0.496087, -0.642283,
		40.441235, 34.150665, 20.162544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.353546, 35.003696, 20.508278>,  <40.850224, 34.497929, 20.612141>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.353546, 35.003696, 20.508278> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.175014, 34.659866, 20.408741>,  <40.067894, 34.453568, 20.349018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.175014, 34.659866, 20.408741>,  <40.353546, 35.003696, 20.508278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.175014, 34.659866, 20.408741> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867130, 0.346742, 0.357569,
		-0.221071, 0.375376, -0.900122,
		-0.446333, -0.859571, -0.248845,
		40.041115, 34.401997, 20.334087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723324, 35.301487, 20.445564>,  <40.353546, 35.003696, 20.508278>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723324, 35.301487, 20.445564> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.672558, 34.904747, 20.441147>,  <39.642097, 34.666702, 20.438496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.672558, 34.904747, 20.441147>,  <39.723324, 35.301487, 20.445564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.672558, 34.904747, 20.441147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918303, 0.113276, 0.379327,
		-0.374985, 0.058283, -0.925197,
		-0.126911, -0.991853, -0.011044,
		39.634483, 34.607193, 20.437834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073692, 35.213287, 20.327810>,  <39.723324, 35.301487, 20.445564>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.073692, 35.213287, 20.327810> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.136818, 34.858658, 20.501741>,  <39.174694, 34.645878, 20.606100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.136818, 34.858658, 20.501741>,  <39.073692, 35.213287, 20.327810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.136818, 34.858658, 20.501741> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828812, 0.120461, 0.546407,
		-0.536812, -0.446620, -0.715796,
		0.157810, -0.886578, 0.434829,
		39.184162, 34.592686, 20.632191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419182, 34.801491, 20.376089>,  <39.073692, 35.213287, 20.327810>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.419182, 34.801491, 20.376089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.654221, 34.641342, 20.657354>,  <38.795242, 34.545254, 20.826113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.654221, 34.641342, 20.657354>,  <38.419182, 34.801491, 20.376089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.654221, 34.641342, 20.657354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762881, 0.015550, 0.646351,
		-0.269717, -0.916220, -0.296301,
		0.587592, -0.400375, 0.703161,
		38.830498, 34.521229, 20.868303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977543, 34.230904, 20.801655>,  <38.419182, 34.801491, 20.376089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.977543, 34.230904, 20.801655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.300579, 34.327274, 21.016972>,  <38.494400, 34.385098, 21.146162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.300579, 34.327274, 21.016972>,  <37.977543, 34.230904, 20.801655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.300579, 34.327274, 21.016972> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571150, 0.092104, 0.815662,
		0.146945, -0.966160, 0.211993,
		0.807585, 0.240938, 0.538288,
		38.542854, 34.399551, 21.178459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853497, 33.927299, 21.420298>,  <37.977543, 34.230904, 20.801655>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.853497, 33.927299, 21.420298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.132641, 34.190483, 21.533485>,  <38.300129, 34.348392, 21.601398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.132641, 34.190483, 21.533485>,  <37.853497, 33.927299, 21.420298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132641, 34.190483, 21.533485> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495346, 0.158019, 0.854203,
		0.517318, -0.736286, 0.436194,
		0.697864, 0.657961, 0.282970,
		38.341999, 34.387871, 21.618376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006271, 33.260021, 21.415024>,  <37.853497, 33.927299, 21.420298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006271, 33.260021, 21.415024> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.872501, 32.887402, 21.472130>,  <37.792240, 32.663830, 21.506393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.872501, 32.887402, 21.472130>,  <38.006271, 33.260021, 21.415024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.872501, 32.887402, 21.472130> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199607, -0.218064, -0.955304,
		0.921042, -0.290978, 0.258869,
		-0.334422, -0.931547, 0.142764,
		37.772175, 32.607937, 21.514959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561596, 32.763256, 21.192970>,  <38.006271, 33.260021, 21.415024>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.561596, 32.763256, 21.192970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.250103, 32.512798, 21.208593>,  <38.063210, 32.362522, 21.217968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.250103, 32.512798, 21.208593>,  <38.561596, 32.763256, 21.192970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.250103, 32.512798, 21.208593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377345, -0.517221, -0.768175,
		0.501191, -0.583461, 0.639047,
		-0.778728, -0.626144, 0.039060,
		38.016483, 32.324955, 21.220312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833637, 32.125813, 21.019249>,  <38.561596, 32.763256, 21.192970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.833637, 32.125813, 21.019249> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.439133, 32.080738, 20.970947>,  <38.202431, 32.053692, 20.941965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.439133, 32.080738, 20.970947>,  <38.833637, 32.125813, 21.019249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439133, 32.080738, 20.970947> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164996, -0.705543, -0.689191,
		-0.007535, -0.699650, 0.714446,
		-0.986265, -0.112688, -0.120756,
		38.143253, 32.046932, 20.934721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765549, 31.429317, 21.027317>,  <38.833637, 32.125813, 21.019249>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765549, 31.429317, 21.027317> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.425316, 31.555719, 20.859198>,  <38.221176, 31.631561, 20.758326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.425316, 31.555719, 20.859198>,  <38.765549, 31.429317, 21.027317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.425316, 31.555719, 20.859198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109045, -0.675913, -0.728870,
		-0.514412, -0.665795, 0.540461,
		-0.850582, 0.316004, -0.420299,
		38.170143, 31.650520, 20.733109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246799, 30.886387, 20.896660>,  <38.765549, 31.429317, 21.027317>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246799, 30.886387, 20.896660> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.183182, 31.172165, 20.624111>,  <38.145012, 31.343632, 20.460581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.183182, 31.172165, 20.624111>,  <38.246799, 30.886387, 20.896660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.183182, 31.172165, 20.624111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097132, -0.675487, -0.730947,
		-0.982482, -0.182436, 0.038036,
		-0.159044, 0.714447, -0.681374,
		38.135468, 31.386499, 20.419699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712044, 30.663134, 20.436752>,  <38.246799, 30.886387, 20.896660>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712044, 30.663134, 20.436752> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.880241, 30.953331, 20.218821>,  <37.981159, 31.127449, 20.088060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.880241, 30.953331, 20.218821>,  <37.712044, 30.663134, 20.436752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.880241, 30.953331, 20.218821> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073221, -0.625677, -0.776638,
		-0.904336, 0.286679, -0.316215,
		0.420494, 0.725495, -0.544832,
		38.006390, 31.170980, 20.055370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421581, 30.537107, 19.680378>,  <37.712044, 30.663134, 20.436752>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.421581, 30.537107, 19.680378> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.732903, 30.783216, 19.630287>,  <37.919697, 30.930882, 19.600233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.732903, 30.783216, 19.630287>,  <37.421581, 30.537107, 19.680378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732903, 30.783216, 19.630287> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213827, -0.447249, -0.868474,
		-0.590357, 0.649159, -0.479657,
		0.778304, 0.615273, -0.125229,
		37.966393, 30.967798, 19.592718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377892, 30.772408, 18.999571>,  <37.421581, 30.537107, 19.680378>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.377892, 30.772408, 18.999571> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.763344, 30.838720, 19.083405>,  <37.994617, 30.878508, 19.133705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.763344, 30.838720, 19.083405>,  <37.377892, 30.772408, 18.999571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763344, 30.838720, 19.083405> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251277, -0.295252, -0.921784,
		-0.090933, 0.940927, -0.326171,
		0.963634, 0.165780, 0.209585,
		38.052433, 30.888454, 19.146280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617645, 31.250288, 18.521645>,  <37.377892, 30.772408, 18.999571>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617645, 31.250288, 18.521645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.935139, 31.041422, 18.646439>,  <38.125633, 30.916101, 18.721315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.935139, 31.041422, 18.646439>,  <37.617645, 31.250288, 18.521645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.935139, 31.041422, 18.646439> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202057, -0.257442, -0.944932,
		0.573729, 0.813061, -0.098833,
		0.793731, -0.522165, 0.311986,
		38.173260, 30.884773, 18.740034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.127434, 31.399546, 18.046726>,  <37.617645, 31.250288, 18.521645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.127434, 31.399546, 18.046726> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.246044, 31.056871, 18.215563>,  <38.317211, 30.851267, 18.316864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.246044, 31.056871, 18.215563>,  <38.127434, 31.399546, 18.046726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.246044, 31.056871, 18.215563> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388176, -0.295697, -0.872859,
		0.872577, 0.422671, 0.244863,
		0.296527, -0.856687, 0.422089,
		38.335003, 30.799866, 18.342190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747452, 31.305025, 17.669987>,  <38.127434, 31.399546, 18.046726>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.747452, 31.305025, 17.669987> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.623554, 30.960052, 17.830120>,  <38.549217, 30.753069, 17.926201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.623554, 30.960052, 17.830120>,  <38.747452, 31.305025, 17.669987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.623554, 30.960052, 17.830120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203312, -0.471378, -0.858177,
		0.928829, -0.184422, 0.321349,
		-0.309743, -0.862433, 0.400335,
		38.530632, 30.701323, 17.950220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348812, 30.840950, 17.548155>,  <38.747452, 31.305025, 17.669987>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.348812, 30.840950, 17.548155> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.026974, 30.620113, 17.635630>,  <38.833870, 30.487612, 17.688114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.026974, 30.620113, 17.635630>,  <39.348812, 30.840950, 17.548155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026974, 30.620113, 17.635630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148005, -0.543090, -0.826527,
		0.575086, -0.632652, 0.518679,
		-0.804594, -0.552091, 0.218688,
		38.785595, 30.454487, 17.701237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.702885, 30.187706, 17.572819>,  <39.348812, 30.840950, 17.548155>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.702885, 30.187706, 17.572819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.312172, 30.149265, 17.496223>,  <39.077744, 30.126202, 17.450266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.312172, 30.149265, 17.496223>,  <39.702885, 30.187706, 17.572819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.312172, 30.149265, 17.496223> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213902, -0.488485, -0.845949,
		-0.012243, -0.867264, 0.497697,
		-0.976778, -0.096102, -0.191490,
		39.019138, 30.120436, 17.438776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718044, 30.054270, 18.330341>,  <39.702885, 30.187706, 17.572819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.718044, 30.054270, 18.330341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.969284, 29.775307, 18.192289>,  <40.120029, 29.607929, 18.109459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.969284, 29.775307, 18.192289>,  <39.718044, 30.054270, 18.330341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.969284, 29.775307, 18.192289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115231, -0.522008, 0.845121,
		-0.769555, -0.491049, -0.408235,
		0.628098, -0.697409, -0.345130,
		40.157715, 29.566084, 18.088751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349636, 29.450737, 18.202026>,  <39.718044, 30.054270, 18.330341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.349636, 29.450737, 18.202026> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.735958, 29.377684, 18.275633>,  <39.967751, 29.333851, 18.319796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.735958, 29.377684, 18.275633>,  <39.349636, 29.450737, 18.202026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.735958, 29.377684, 18.275633> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258703, -0.632329, 0.730228,
		-0.017006, -0.752865, -0.657956,
		0.965807, -0.182633, 0.184015,
		40.025700, 29.322893, 18.330837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368298, 28.723652, 18.445564>,  <39.349636, 29.450737, 18.202026>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.368298, 28.723652, 18.445564> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.726070, 28.872480, 18.544802>,  <39.940735, 28.961779, 18.604343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.726070, 28.872480, 18.544802>,  <39.368298, 28.723652, 18.445564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726070, 28.872480, 18.544802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029349, -0.504736, 0.862775,
		0.446237, -0.778976, -0.440533,
		0.894434, 0.372072, 0.248094,
		39.994400, 28.984102, 18.619230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723648, 28.157900, 18.920317>,  <39.368298, 28.723652, 18.445564>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723648, 28.157900, 18.920317> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.878548, 28.521191, 18.983763>,  <39.971489, 28.739166, 19.021830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.878548, 28.521191, 18.983763>,  <39.723648, 28.157900, 18.920317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.878548, 28.521191, 18.983763> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146964, -0.230647, 0.961875,
		0.910187, -0.349175, -0.222794,
		0.387249, 0.908228, 0.158616,
		39.994724, 28.793659, 19.031347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.340485, 28.016815, 19.208004>,  <39.723648, 28.157900, 18.920317>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.340485, 28.016815, 19.208004> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.249401, 28.386356, 19.331062>,  <40.194752, 28.608080, 19.404898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.249401, 28.386356, 19.331062>,  <40.340485, 28.016815, 19.208004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.249401, 28.386356, 19.331062> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026804, -0.309879, 0.950398,
		0.973359, 0.224664, 0.045801,
		-0.227713, 0.923851, 0.307645,
		40.181087, 28.663511, 19.423355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.824406, 28.127920, 19.719488>,  <40.340485, 28.016815, 19.208004>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.824406, 28.127920, 19.719488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.544075, 28.405315, 19.786325>,  <40.375877, 28.571753, 19.826427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.544075, 28.405315, 19.786325>,  <40.824406, 28.127920, 19.719488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.544075, 28.405315, 19.786325> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027483, -0.207818, 0.977781,
		0.712802, 0.689847, 0.126586,
		-0.700826, 0.693486, 0.167092,
		40.333828, 28.613361, 19.836452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.011833, 28.506927, 20.285582>,  <40.824406, 28.127920, 19.719488>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.011833, 28.506927, 20.285582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.629894, 28.625671, 20.290283>,  <40.400730, 28.696918, 20.293104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.629894, 28.625671, 20.290283>,  <41.011833, 28.506927, 20.285582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.629894, 28.625671, 20.290283> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042515, -0.175687, 0.983528,
		0.294036, 0.938620, 0.180376,
		-0.954848, 0.296861, 0.011753,
		40.343441, 28.714729, 20.293810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.965321, 28.923487, 20.829887>,  <41.011833, 28.506927, 20.285582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.965321, 28.923487, 20.829887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.600067, 28.779499, 20.753349>,  <40.380917, 28.693108, 20.707426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.600067, 28.779499, 20.753349>,  <40.965321, 28.923487, 20.829887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.600067, 28.779499, 20.753349> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148895, -0.142450, 0.978539,
		-0.379500, 0.922026, 0.076478,
		-0.913132, -0.359968, -0.191344,
		40.326126, 28.671509, 20.695946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.206043, 29.581978, 21.094654>,  <40.965321, 28.923487, 20.829887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.206043, 29.581978, 21.094654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.581722, 29.523621, 21.218996>,  <41.807129, 29.488605, 21.293600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.581722, 29.523621, 21.218996>,  <41.206043, 29.581978, 21.094654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.581722, 29.523621, 21.218996> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313322, -0.006340, -0.949626,
		0.140515, 0.989280, 0.039757,
		0.939194, -0.145893, 0.310854,
		41.863480, 29.479853, 21.312252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.489246, 29.874666, 20.556593>,  <41.206043, 29.581978, 21.094654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.489246, 29.874666, 20.556593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.770584, 29.649975, 20.730844>,  <41.939384, 29.515160, 20.835396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.770584, 29.649975, 20.730844>,  <41.489246, 29.874666, 20.556593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.770584, 29.649975, 20.730844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415196, -0.172795, -0.893171,
		0.576994, 0.809075, 0.111694,
		0.703342, -0.561729, 0.435627,
		41.981586, 29.481457, 20.861532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.044998, 30.051264, 20.225805>,  <41.489246, 29.874666, 20.556593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.044998, 30.051264, 20.225805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.147396, 29.697895, 20.382793>,  <42.208836, 29.485874, 20.476986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.147396, 29.697895, 20.382793>,  <42.044998, 30.051264, 20.225805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.147396, 29.697895, 20.382793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601993, -0.171976, -0.779762,
		0.756355, 0.435875, 0.487791,
		0.255991, -0.883423, 0.392469,
		42.224194, 29.432867, 20.500534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.683311, 30.113464, 20.272341>,  <42.044998, 30.051264, 20.225805>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.683311, 30.113464, 20.272341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.607140, 29.721210, 20.254038>,  <42.561436, 29.485859, 20.243057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.607140, 29.721210, 20.254038>,  <42.683311, 30.113464, 20.272341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.607140, 29.721210, 20.254038> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637949, -0.088190, -0.765012,
		0.746162, -0.174873, 0.642388,
		-0.190432, -0.980633, -0.045756,
		42.550011, 29.427021, 20.240311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.351173, 29.840750, 20.229538>,  <42.683311, 30.113464, 20.272341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.351173, 29.840750, 20.229538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.066536, 29.584311, 20.114557>,  <42.895752, 29.430447, 20.045568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.066536, 29.584311, 20.114557>,  <43.351173, 29.840750, 20.229538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.066536, 29.584311, 20.114557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512753, -0.194163, -0.836293,
		0.480333, -0.742492, 0.466890,
		-0.711593, -0.641098, -0.287452,
		42.853058, 29.391981, 20.028322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.737648, 29.315962, 20.056692>,  <43.351173, 29.840750, 20.229538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.737648, 29.315962, 20.056692> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.376217, 29.262156, 19.893986>,  <43.159359, 29.229872, 19.796362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.376217, 29.262156, 19.893986>,  <43.737648, 29.315962, 20.056692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.376217, 29.262156, 19.893986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426880, -0.201953, -0.881470,
		0.036424, -0.970113, 0.239902,
		-0.903575, -0.134516, -0.406766,
		43.105145, 29.221802, 19.771955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.830658, 28.726028, 19.796741>,  <43.737648, 29.315962, 20.056692>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.830658, 28.726028, 19.796741> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.503036, 28.858734, 19.609516>,  <43.306465, 28.938356, 19.497181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.503036, 28.858734, 19.609516>,  <43.830658, 28.726028, 19.796741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.503036, 28.858734, 19.609516> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447024, -0.142338, -0.883125,
		-0.359612, -0.932562, -0.031724,
		-0.819053, 0.331764, -0.468064,
		43.257320, 28.958263, 19.469097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.737488, 28.224392, 19.245020>,  <43.830658, 28.726028, 19.796741>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.737488, 28.224392, 19.245020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.543625, 28.562645, 19.155571>,  <43.427307, 28.765596, 19.101902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.543625, 28.562645, 19.155571>,  <43.737488, 28.224392, 19.245020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.543625, 28.562645, 19.155571> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429021, 0.007022, -0.903267,
		-0.762263, -0.533717, -0.366198,
		-0.484660, 0.845634, -0.223623,
		43.398228, 28.816336, 19.088484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.459240, 28.081970, 18.634926>,  <43.737488, 28.224392, 19.245020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.459240, 28.081970, 18.634926> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.518639, 28.477516, 18.631142>,  <43.554279, 28.714844, 18.628872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.518639, 28.477516, 18.631142>,  <43.459240, 28.081970, 18.634926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.518639, 28.477516, 18.631142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400015, -0.068812, -0.913922,
		-0.904398, 0.131935, -0.405780,
		0.148501, 0.988867, -0.009458,
		43.563190, 28.774176, 18.628304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.302334, 32.168755, 33.402199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.573483, 32.444462, 33.299904>,  <37.736172, 32.609886, 33.238525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.573483, 32.444462, 33.299904>,  <37.302334, 32.168755, 33.402199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573483, 32.444462, 33.299904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295197, -0.573776, -0.763963,
		-0.673311, 0.442376, -0.592416,
		0.677873, 0.689264, -0.255742,
		37.776844, 32.651241, 33.223183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179008, 32.421593, 32.672096>,  <37.302334, 32.168755, 33.402199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179008, 32.421593, 32.672096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.559277, 32.528286, 32.735451>,  <37.787437, 32.592304, 32.773464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.559277, 32.528286, 32.735451>,  <37.179008, 32.421593, 32.672096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.559277, 32.528286, 32.735451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287262, -0.564207, -0.774049,
		-0.117104, 0.781360, -0.612995,
		0.950667, 0.266735, 0.158384,
		37.844475, 32.608307, 32.782967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.336441, 32.421757, 32.028591>,  <37.179008, 32.421593, 32.672096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.336441, 32.421757, 32.028591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.708473, 32.468266, 32.167980>,  <37.931690, 32.496170, 32.251614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.708473, 32.468266, 32.167980>,  <37.336441, 32.421757, 32.028591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708473, 32.468266, 32.167980> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363941, -0.420790, -0.830953,
		0.050017, 0.899676, -0.433684,
		0.930078, 0.116274, 0.348476,
		37.987495, 32.503147, 32.272522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759315, 32.757774, 31.431396>,  <37.336441, 32.421757, 32.028591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.759315, 32.757774, 31.431396> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.992432, 32.550644, 31.681904>,  <38.132301, 32.426365, 31.832209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.992432, 32.550644, 31.681904>,  <37.759315, 32.757774, 31.431396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992432, 32.550644, 31.681904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497390, -0.382138, -0.778828,
		0.642617, 0.765395, 0.034853,
		0.582792, -0.517823, 0.626268,
		38.167271, 32.395298, 31.869783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449173, 32.829517, 31.113543>,  <37.759315, 32.757774, 31.431396>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.449173, 32.829517, 31.113543> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.438778, 32.516247, 31.362043>,  <38.432541, 32.328285, 31.511143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.438778, 32.516247, 31.362043>,  <38.449173, 32.829517, 31.113543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.438778, 32.516247, 31.362043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418012, -0.573033, -0.704911,
		0.908070, 0.241374, 0.342268,
		-0.025984, -0.783181, 0.621251,
		38.430984, 32.281292, 31.548418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054794, 32.444447, 30.866678>,  <38.449173, 32.829517, 31.113543>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.054794, 32.444447, 30.866678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.863884, 32.167423, 31.083038>,  <38.749340, 32.001209, 31.212854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.863884, 32.167423, 31.083038>,  <39.054794, 32.444447, 30.866678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.863884, 32.167423, 31.083038> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318254, -0.709969, -0.628218,
		0.819100, -0.127688, 0.559259,
		-0.477273, -0.692560, 0.540899,
		38.720703, 31.959656, 31.245308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595215, 31.996164, 31.181089>,  <39.054794, 32.444447, 30.866678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.595215, 31.996164, 31.181089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.238506, 31.816603, 31.158375>,  <39.024483, 31.708866, 31.144747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.238506, 31.816603, 31.158375>,  <39.595215, 31.996164, 31.181089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.238506, 31.816603, 31.158375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377316, -0.668484, -0.640907,
		0.249747, -0.592969, 0.765515,
		-0.891773, -0.448906, -0.056785,
		38.970974, 31.681931, 31.141340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.722507, 31.287025, 31.278223>,  <39.595215, 31.996164, 31.181089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.722507, 31.287025, 31.278223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.363506, 31.264736, 31.103231>,  <39.148106, 31.251364, 30.998236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.363506, 31.264736, 31.103231>,  <39.722507, 31.287025, 31.278223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.363506, 31.264736, 31.103231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282362, -0.834610, -0.472967,
		-0.338770, -0.548015, 0.764797,
		-0.897500, -0.055722, -0.437479,
		39.094257, 31.248020, 30.971987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.634945, 30.573462, 31.088936>,  <39.722507, 31.287025, 31.278223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.634945, 30.573462, 31.088936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.366047, 30.756382, 30.856054>,  <39.204708, 30.866135, 30.716326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.366047, 30.756382, 30.856054>,  <39.634945, 30.573462, 31.088936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.366047, 30.756382, 30.856054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199499, -0.645425, -0.737310,
		-0.712944, -0.611802, 0.342651,
		-0.672244, 0.457302, -0.582206,
		39.164375, 30.893572, 30.681393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233749, 30.054127, 30.879093>,  <39.634945, 30.573462, 31.088936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.233749, 30.054127, 30.879093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.217148, 30.363264, 30.625797>,  <39.207188, 30.548746, 30.473820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.217148, 30.363264, 30.625797>,  <39.233749, 30.054127, 30.879093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.217148, 30.363264, 30.625797> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330358, -0.587525, -0.738700,
		-0.942943, -0.239851, -0.230933,
		-0.041499, 0.772842, -0.633240,
		39.204697, 30.595118, 30.435825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.013412, 29.709303, 30.310053>,  <39.233749, 30.054127, 30.879093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.013412, 29.709303, 30.310053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.159081, 30.057636, 30.177979>,  <39.246483, 30.266636, 30.098734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.159081, 30.057636, 30.177979>,  <39.013412, 29.709303, 30.310053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.159081, 30.057636, 30.177979> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384646, -0.463519, -0.798247,
		-0.848190, 0.163695, -0.503764,
		0.364173, 0.870835, -0.330187,
		39.268333, 30.318888, 30.078922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893063, 29.647934, 29.630833>,  <39.013412, 29.709303, 30.310053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893063, 29.647934, 29.630833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.142956, 29.960253, 29.634148>,  <39.292892, 30.147644, 29.636137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.142956, 29.960253, 29.634148>,  <38.893063, 29.647934, 29.630833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142956, 29.960253, 29.634148> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383682, -0.297715, -0.874159,
		-0.680072, 0.549295, -0.485569,
		0.624732, 0.780795, 0.008287,
		39.330376, 30.194490, 29.636633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190212, 29.758018, 29.303080>,  <38.893063, 29.647934, 29.630833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190212, 29.758018, 29.303080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.064823, 29.378922, 29.279354>,  <37.989590, 29.151463, 29.265120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.064823, 29.378922, 29.279354>,  <38.190212, 29.758018, 29.303080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064823, 29.378922, 29.279354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553720, 0.131691, 0.822223,
		-0.771445, 0.290590, -0.566066,
		-0.313476, -0.947742, -0.059314,
		37.970779, 29.094599, 29.261560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478642, 29.776903, 29.223419>,  <38.190212, 29.758018, 29.303080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478642, 29.776903, 29.223419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.565853, 29.418463, 29.378063>,  <37.618179, 29.203400, 29.470850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.565853, 29.418463, 29.378063>,  <37.478642, 29.776903, 29.223419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.565853, 29.418463, 29.378063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780871, 0.077439, 0.619874,
		-0.585408, -0.437044, -0.682854,
		0.218032, -0.896100, 0.386608,
		37.631264, 29.149633, 29.494045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882816, 29.555767, 29.410255>,  <37.478642, 29.776903, 29.223419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882816, 29.555767, 29.410255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.094540, 29.293135, 29.625193>,  <37.221573, 29.135555, 29.754154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.094540, 29.293135, 29.625193>,  <36.882816, 29.555767, 29.410255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094540, 29.293135, 29.625193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629137, 0.121175, 0.767791,
		-0.569229, -0.744459, -0.348940,
		0.529306, -0.656580, 0.537343,
		37.253330, 29.096161, 29.786396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.435925, 29.044357, 29.616547>,  <36.882816, 29.555767, 29.410255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.435925, 29.044357, 29.616547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.736881, 29.028858, 29.879576>,  <36.917458, 29.019558, 30.037394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.736881, 29.028858, 29.879576>,  <36.435925, 29.044357, 29.616547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736881, 29.028858, 29.879576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658563, -0.022944, 0.752175,
		-0.014058, -0.998986, -0.042780,
		0.752394, -0.038748, 0.657573,
		36.962601, 29.017233, 30.076847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093071, 28.810871, 30.251482>,  <36.435925, 29.044357, 29.616547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093071, 28.810871, 30.251482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.439056, 28.951851, 30.394377>,  <36.646648, 29.036438, 30.480114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.439056, 28.951851, 30.394377>,  <36.093071, 28.810871, 30.251482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.439056, 28.951851, 30.394377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456549, 0.257142, 0.851728,
		0.208323, -0.899813, 0.383326,
		0.864965, 0.352442, 0.357239,
		36.698547, 29.057585, 30.501547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.079151, 28.632206, 30.963699>,  <36.093071, 28.810871, 30.251482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.079151, 28.632206, 30.963699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.320621, 28.945728, 30.905426>,  <36.465504, 29.133842, 30.870462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.320621, 28.945728, 30.905426>,  <36.079151, 28.632206, 30.963699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.320621, 28.945728, 30.905426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373150, 0.439283, 0.817184,
		0.704511, -0.438951, 0.557661,
		0.603675, 0.783807, -0.145685,
		36.501724, 29.180870, 30.861721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059982, 28.807436, 31.598082>,  <36.079151, 28.632206, 30.963699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059982, 28.807436, 31.598082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.267487, 29.106497, 31.432234>,  <36.391987, 29.285933, 31.332726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.267487, 29.106497, 31.432234>,  <36.059982, 28.807436, 31.598082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.267487, 29.106497, 31.432234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125344, 0.546254, 0.828188,
		0.845683, -0.377659, 0.377086,
		0.518757, 0.747650, -0.414621,
		36.423115, 29.330791, 31.307848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.536255, 29.004780, 32.105133>,  <36.059982, 28.807436, 31.598082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.536255, 29.004780, 32.105133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.499802, 29.318281, 31.859394>,  <36.477928, 29.506382, 31.711950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.499802, 29.318281, 31.859394>,  <36.536255, 29.004780, 32.105133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.499802, 29.318281, 31.859394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088866, 0.608054, 0.788907,
		0.991865, 0.126494, 0.014233,
		-0.091138, 0.783754, -0.614348,
		36.472462, 29.553408, 31.675089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981285, 29.476236, 32.386101>,  <36.536255, 29.004780, 32.105133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.981285, 29.476236, 32.386101> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.724934, 29.676256, 32.153130>,  <36.571121, 29.796268, 32.013348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.724934, 29.676256, 32.153130>,  <36.981285, 29.476236, 32.386101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724934, 29.676256, 32.153130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159155, 0.655686, 0.738069,
		0.750963, 0.565709, -0.340629,
		-0.640877, 0.500050, -0.582432,
		36.532669, 29.826271, 31.978399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103416, 30.215893, 32.514118>,  <36.981285, 29.476236, 32.386101>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.103416, 30.215893, 32.514118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.735371, 30.205791, 32.357780>,  <36.514545, 30.199730, 32.263977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.735371, 30.205791, 32.357780>,  <37.103416, 30.215893, 32.514118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735371, 30.205791, 32.357780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332145, 0.579131, 0.744504,
		0.207548, 0.814843, -0.541253,
		-0.920110, -0.025254, -0.390844,
		36.459339, 30.198215, 32.240528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908699, 30.917244, 32.341164>,  <37.103416, 30.215893, 32.514118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.908699, 30.917244, 32.341164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.582012, 30.688723, 32.373638>,  <36.386002, 30.551609, 32.393124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.582012, 30.688723, 32.373638>,  <36.908699, 30.917244, 32.341164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582012, 30.688723, 32.373638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384512, 0.643704, 0.661661,
		-0.430267, 0.509172, -0.745395,
		-0.816714, -0.571304, 0.081182,
		36.336998, 30.517332, 32.397991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414383, 31.419558, 32.485523>,  <36.908699, 30.917244, 32.341164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.414383, 31.419558, 32.485523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.203178, 31.090637, 32.570400>,  <36.076454, 30.893286, 32.621326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.203178, 31.090637, 32.570400>,  <36.414383, 31.419558, 32.485523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.203178, 31.090637, 32.570400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548386, 0.520931, 0.654143,
		-0.648441, 0.229031, -0.725996,
		-0.528012, -0.822299, 0.212195,
		36.044773, 30.843948, 32.634060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582619, 31.558977, 32.415897>,  <36.414383, 31.419558, 32.485523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582619, 31.558977, 32.415897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.639042, 31.249369, 32.662796>,  <35.672897, 31.063604, 32.810936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.639042, 31.249369, 32.662796>,  <35.582619, 31.558977, 32.415897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.639042, 31.249369, 32.662796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648896, 0.398591, 0.648120,
		-0.747687, -0.491952, -0.446035,
		0.141058, -0.774021, 0.617247,
		35.681358, 31.017162, 32.847969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938469, 31.372887, 32.521046>,  <35.582619, 31.558977, 32.415897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938469, 31.372887, 32.521046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.145897, 31.217737, 32.825844>,  <35.270355, 31.124647, 33.008724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.145897, 31.217737, 32.825844>,  <34.938469, 31.372887, 32.521046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.145897, 31.217737, 32.825844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654413, 0.393516, 0.645669,
		-0.550296, -0.833485, -0.049764,
		0.518572, -0.387875, 0.761994,
		35.301468, 31.101374, 33.054443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873638, 31.980314, 32.179535>,  <34.938469, 31.372887, 32.521046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.873638, 31.980314, 32.179535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.518505, 32.096497, 32.036770>,  <34.305424, 32.166206, 31.951111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.518505, 32.096497, 32.036770>,  <34.873638, 31.980314, 32.179535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.518505, 32.096497, 32.036770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278570, -0.278098, -0.919271,
		-0.366264, -0.915586, 0.165993,
		-0.887834, 0.290455, -0.356913,
		34.252155, 32.183632, 31.929697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.365170, 31.485409, 31.767307>,  <34.873638, 31.980314, 32.179535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.365170, 31.485409, 31.767307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.348358, 31.857729, 31.622066>,  <34.338272, 32.081120, 31.534922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.348358, 31.857729, 31.622066>,  <34.365170, 31.485409, 31.767307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348358, 31.857729, 31.622066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397933, -0.317760, -0.860627,
		-0.916451, -0.180662, -0.357041,
		-0.042029, 0.930801, -0.363103,
		34.335751, 32.136971, 31.513136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.887585, 31.292866, 31.220364>,  <34.365170, 31.485409, 31.767307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.887585, 31.292866, 31.220364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.068649, 31.645346, 31.165840>,  <34.177288, 31.856834, 31.133127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.068649, 31.645346, 31.165840>,  <33.887585, 31.292866, 31.220364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.068649, 31.645346, 31.165840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254715, -0.274283, -0.927302,
		-0.854526, 0.385038, -0.348613,
		0.452665, 0.881201, -0.136307,
		34.204449, 31.909706, 31.124949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.708809, 31.501278, 30.510592>,  <33.887585, 31.292866, 31.220364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.708809, 31.501278, 30.510592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.037651, 31.703108, 30.616085>,  <34.234955, 31.824205, 30.679382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.037651, 31.703108, 30.616085>,  <33.708809, 31.501278, 30.510592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.037651, 31.703108, 30.616085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426119, -0.238084, -0.872777,
		-0.377589, 0.829893, -0.410737,
		0.822101, 0.504573, 0.263735,
		34.284283, 31.854481, 30.695206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.778580, 32.022369, 29.994026>,  <33.708809, 31.501278, 30.510592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.778580, 32.022369, 29.994026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.133526, 31.963720, 30.168877>,  <34.346493, 31.928530, 30.273787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.133526, 31.963720, 30.168877>,  <33.778580, 32.022369, 29.994026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.133526, 31.963720, 30.168877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436326, -0.039321, -0.898929,
		0.148994, 0.988410, 0.029085,
		0.887367, -0.146626, 0.437127,
		34.399734, 31.919733, 30.300014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296955, 32.489632, 29.638634>,  <33.778580, 32.022369, 29.994026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296955, 32.489632, 29.638634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.489826, 32.184502, 29.810959>,  <34.605549, 32.001423, 29.914354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.489826, 32.184502, 29.810959>,  <34.296955, 32.489632, 29.638634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489826, 32.184502, 29.810959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539319, -0.129065, -0.832152,
		0.690388, 0.633596, 0.349172,
		0.482182, -0.762823, 0.430815,
		34.634480, 31.955654, 29.940203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.863243, 32.488331, 29.343836>,  <34.296955, 32.489632, 29.638634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.863243, 32.488331, 29.343836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.895565, 32.123672, 29.505020>,  <34.914959, 31.904879, 29.601730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.895565, 32.123672, 29.505020>,  <34.863243, 32.488331, 29.343836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895565, 32.123672, 29.505020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670087, -0.249597, -0.699060,
		0.737871, 0.326509, 0.590711,
		0.080809, -0.911643, 0.402960,
		34.919807, 31.850180, 29.625908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570591, 32.288658, 29.267933>,  <34.863243, 32.488331, 29.343836>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570591, 32.288658, 29.267933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.384048, 31.938292, 29.317392>,  <35.272121, 31.728073, 29.347069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.384048, 31.938292, 29.317392>,  <35.570591, 32.288658, 29.267933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384048, 31.938292, 29.317392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549242, -0.396287, -0.735724,
		0.693431, -0.275196, 0.665899,
		-0.466356, -0.875913, 0.123649,
		35.244141, 31.675518, 29.354486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159309, 31.877665, 29.332554>,  <35.570591, 32.288658, 29.267933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.159309, 31.877665, 29.332554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.839321, 31.665422, 29.220478>,  <35.647327, 31.538076, 29.153233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.839321, 31.665422, 29.220478>,  <36.159309, 31.877665, 29.332554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839321, 31.665422, 29.220478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522598, -0.386645, -0.759866,
		0.294857, -0.754295, 0.586599,
		-0.799969, -0.530608, -0.280188,
		35.599331, 31.506241, 29.136421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.345497, 31.266474, 29.147495>,  <36.159309, 31.877665, 29.332554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.345497, 31.266474, 29.147495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.995205, 31.272324, 28.954462>,  <35.785030, 31.275833, 28.838642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.995205, 31.272324, 28.954462>,  <36.345497, 31.266474, 29.147495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.995205, 31.272324, 28.954462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469873, -0.203977, -0.858844,
		-0.110992, -0.978866, 0.171759,
		-0.875728, 0.014620, -0.482583,
		35.732487, 31.276711, 28.809687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370495, 30.795042, 28.722458>,  <36.345497, 31.266474, 29.147495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.370495, 30.795042, 28.722458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.081501, 31.014454, 28.554111>,  <35.908104, 31.146101, 28.453104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.081501, 31.014454, 28.554111>,  <36.370495, 30.795042, 28.722458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.081501, 31.014454, 28.554111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460363, -0.072492, -0.884766,
		-0.515830, -0.832982, -0.200149,
		-0.722485, 0.548530, -0.420868,
		35.864754, 31.179012, 28.427851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180405, 30.424219, 28.169809>,  <36.370495, 30.795042, 28.722458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.180405, 30.424219, 28.169809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.077286, 30.805084, 28.104176>,  <36.015415, 31.033604, 28.064795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.077286, 30.805084, 28.104176>,  <36.180405, 30.424219, 28.169809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077286, 30.805084, 28.104176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399604, -0.049548, -0.915348,
		-0.879690, -0.301547, -0.367715,
		-0.257801, 0.952163, -0.164086,
		35.999947, 31.090733, 28.054949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965603, 30.524673, 27.374451>,  <36.180405, 30.424219, 28.169809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.965603, 30.524673, 27.374451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.004105, 30.911320, 27.469435>,  <36.027206, 31.143307, 27.526426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.004105, 30.911320, 27.469435>,  <35.965603, 30.524673, 27.374451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.004105, 30.911320, 27.469435> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488857, 0.161903, -0.857209,
		-0.867038, 0.198597, -0.456952,
		0.096257, 0.966616, 0.237462,
		36.032982, 31.201305, 27.540672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749855, 30.810934, 26.785540>,  <35.965603, 30.524673, 27.374451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749855, 30.810934, 26.785540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.986900, 31.076504, 26.967974>,  <36.129128, 31.235846, 27.077435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.986900, 31.076504, 26.967974>,  <35.749855, 30.810934, 26.785540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.986900, 31.076504, 26.967974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306245, 0.337987, -0.889932,
		-0.744998, 0.667060, -0.003028,
		0.592614, 0.663925, 0.456083,
		36.164684, 31.275681, 27.104799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788399, 31.542011, 26.330950>,  <35.749855, 30.810934, 26.785540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788399, 31.542011, 26.330950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.084763, 31.622778, 26.587164>,  <36.262581, 31.671238, 26.740892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.084763, 31.622778, 26.587164>,  <35.788399, 31.542011, 26.330950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084763, 31.622778, 26.587164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496091, 0.478351, -0.724620,
		-0.452714, 0.854640, 0.254244,
		0.740908, 0.201917, 0.640535,
		36.307034, 31.683353, 26.779324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.021172, 32.125225, 26.108221>,  <35.788399, 31.542011, 26.330950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.021172, 32.125225, 26.108221> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.326832, 32.000500, 26.334089>,  <36.510227, 31.925665, 26.469610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.326832, 32.000500, 26.334089>,  <36.021172, 32.125225, 26.108221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.326832, 32.000500, 26.334089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644889, 0.388455, -0.658195,
		-0.014117, 0.867108, 0.497920,
		0.764146, -0.311812, 0.564672,
		36.556076, 31.906956, 26.503490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397804, 32.713039, 26.282265>,  <36.021172, 32.125225, 26.108221>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.397804, 32.713039, 26.282265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.617943, 32.379097, 26.277760>,  <36.750027, 32.178730, 26.275057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.617943, 32.379097, 26.277760>,  <36.397804, 32.713039, 26.282265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.617943, 32.379097, 26.277760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506219, 0.344376, -0.790663,
		0.663970, 0.429439, 0.612148,
		0.550351, -0.834858, -0.011265,
		36.783047, 32.128639, 26.274380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169346, 32.963482, 26.202684>,  <36.397804, 32.713039, 26.282265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.169346, 32.963482, 26.202684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.115349, 32.588238, 26.075111>,  <37.082951, 32.363091, 25.998568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.115349, 32.588238, 26.075111>,  <37.169346, 32.963482, 26.202684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.115349, 32.588238, 26.075111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200462, 0.289365, -0.935993,
		0.970356, -0.190289, 0.148993,
		-0.134996, -0.938114, -0.318933,
		37.074848, 32.306805, 25.979431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789864, 32.737709, 25.875025>,  <37.169346, 32.963482, 26.202684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.789864, 32.737709, 25.875025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.531223, 32.481079, 25.709955>,  <37.376041, 32.327103, 25.610914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.531223, 32.481079, 25.709955>,  <37.789864, 32.737709, 25.875025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.531223, 32.481079, 25.709955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250711, 0.332194, -0.909281,
		0.720455, -0.691400, -0.053947,
		-0.646598, -0.641571, -0.412672,
		37.337242, 32.288609, 25.586153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233391, 32.554653, 25.355865>,  <37.789864, 32.737709, 25.875025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.233391, 32.554653, 25.355865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.863544, 32.428207, 25.270863>,  <37.641636, 32.352341, 25.219860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.863544, 32.428207, 25.270863>,  <38.233391, 32.554653, 25.355865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863544, 32.428207, 25.270863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175421, 0.141828, -0.974224,
		0.338109, -0.938059, -0.075682,
		-0.924613, -0.316118, -0.212508,
		37.586159, 32.333374, 25.207109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264050, 32.139622, 24.696802>,  <38.233391, 32.554653, 25.355865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.264050, 32.139622, 24.696802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.866283, 32.173382, 24.722153>,  <37.627625, 32.193638, 24.737364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.866283, 32.173382, 24.722153>,  <38.264050, 32.139622, 24.696802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.866283, 32.173382, 24.722153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080488, -0.217992, -0.972626,
		-0.068268, -0.972295, 0.223567,
		-0.994415, 0.084394, 0.063377,
		37.567959, 32.198700, 24.741165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844372, 31.558815, 24.465517>,  <38.264050, 32.139622, 24.696802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844372, 31.558815, 24.465517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.592464, 31.868029, 24.435030>,  <37.441319, 32.053558, 24.416739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.592464, 31.868029, 24.435030>,  <37.844372, 31.558815, 24.465517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.592464, 31.868029, 24.435030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099546, -0.177625, -0.979051,
		-0.770379, -0.608986, 0.188815,
		-0.629767, 0.773036, -0.076216,
		37.403534, 32.099941, 24.412165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551289, 31.327993, 23.932539>,  <37.844372, 31.558815, 24.465517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.551289, 31.327993, 23.932539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.454815, 31.714785, 23.965471>,  <37.396931, 31.946859, 23.985229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.454815, 31.714785, 23.965471>,  <37.551289, 31.327993, 23.932539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454815, 31.714785, 23.965471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001253, 0.084524, -0.996421,
		-0.970478, -0.240427, -0.019175,
		-0.241187, 0.966980, 0.082330,
		37.382458, 32.004879, 23.990170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041676, 31.421276, 23.451555>,  <37.551289, 31.327993, 23.932539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.041676, 31.421276, 23.451555> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.234772, 31.767061, 23.507643>,  <37.350632, 31.974533, 23.541294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.234772, 31.767061, 23.507643>,  <37.041676, 31.421276, 23.451555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234772, 31.767061, 23.507643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149835, 0.076221, -0.985768,
		-0.862848, 0.496884, -0.092732,
		0.482745, 0.864463, 0.140218,
		37.379597, 32.026402, 23.549707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.727066, 31.966824, 23.063948>,  <37.041676, 31.421276, 23.451555>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.727066, 31.966824, 23.063948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.071877, 32.159939, 23.125685>,  <37.278763, 32.275806, 23.162727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.071877, 32.159939, 23.125685>,  <36.727066, 31.966824, 23.063948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.071877, 32.159939, 23.125685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066308, 0.194478, -0.978663,
		-0.502504, 0.853870, 0.135633,
		0.862029, 0.482788, 0.154344,
		37.330486, 32.304775, 23.171988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611748, 32.539345, 22.711649>,  <36.727066, 31.966824, 23.063948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611748, 32.539345, 22.711649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.005287, 32.473701, 22.740232>,  <37.241413, 32.434315, 22.757383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.005287, 32.473701, 22.740232>,  <36.611748, 32.539345, 22.711649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005287, 32.473701, 22.740232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099782, 0.171406, -0.980134,
		0.148600, 0.971436, 0.185013,
		0.983850, -0.164109, 0.071461,
		37.300442, 32.424469, 22.761671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822594, 33.024590, 22.282150>,  <36.611748, 32.539345, 22.711649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.822594, 33.024590, 22.282150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.153309, 32.801735, 22.313183>,  <37.351738, 32.668022, 22.331802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.153309, 32.801735, 22.313183>,  <36.822594, 33.024590, 22.282150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153309, 32.801735, 22.313183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124507, 0.046756, -0.991116,
		0.548564, 0.829101, 0.108025,
		0.826786, -0.557141, 0.077581,
		37.401344, 32.634594, 22.336456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433548, 33.391262, 22.012541>,  <36.822594, 33.024590, 22.282150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.433548, 33.391262, 22.012541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.473175, 32.993881, 21.989801>,  <37.496952, 32.755451, 21.976158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.473175, 32.993881, 21.989801>,  <37.433548, 33.391262, 22.012541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.473175, 32.993881, 21.989801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202260, 0.076040, -0.976376,
		0.974309, 0.085225, 0.208469,
		0.099064, -0.993456, -0.056848,
		37.502895, 32.695843, 21.972748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987427, 33.719788, 22.221079>,  <37.433548, 33.391262, 22.012541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.987427, 33.719788, 22.221079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.098427, 34.096104, 22.143196>,  <38.165028, 34.321892, 22.096466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.098427, 34.096104, 22.143196>,  <37.987427, 33.719788, 22.221079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.098427, 34.096104, 22.143196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303745, 0.278183, 0.911237,
		0.911447, -0.193725, 0.362955,
		0.277497, 0.940790, -0.194706,
		38.181675, 34.378342, 22.084784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135796, 33.912022, 22.838718>,  <37.987427, 33.719788, 22.221079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135796, 33.912022, 22.838718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.171822, 34.265297, 22.654604>,  <38.193436, 34.477261, 22.544134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.171822, 34.265297, 22.654604>,  <38.135796, 33.912022, 22.838718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.171822, 34.265297, 22.654604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044840, 0.465293, 0.884020,
		0.994926, -0.058976, 0.081507,
		0.090060, 0.883190, -0.460288,
		38.198841, 34.530254, 22.516518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.731316, 34.214294, 23.059938>,  <38.135796, 33.912022, 22.838718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.731316, 34.214294, 23.059938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.443954, 34.475414, 22.963812>,  <38.271538, 34.632088, 22.906136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.443954, 34.475414, 22.963812>,  <38.731316, 34.214294, 23.059938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.443954, 34.475414, 22.963812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024843, 0.321168, 0.946696,
		0.695187, 0.686076, -0.214510,
		-0.718399, 0.652802, -0.240316,
		38.228436, 34.671253, 22.891718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.855511, 34.781914, 23.442987>,  <38.731316, 34.214294, 23.059938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.855511, 34.781914, 23.442987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.487625, 34.899387, 23.338768>,  <38.266895, 34.969872, 23.276237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.487625, 34.899387, 23.338768>,  <38.855511, 34.781914, 23.442987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.487625, 34.899387, 23.338768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112273, 0.439186, 0.891353,
		0.376204, 0.849038, -0.370951,
		-0.919709, 0.293683, -0.260548,
		38.211712, 34.987492, 23.260603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.724102, 35.526123, 23.525541>,  <38.855511, 34.781914, 23.442987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.724102, 35.526123, 23.525541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.347477, 35.392284, 23.541115>,  <38.121502, 35.311981, 23.550459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.347477, 35.392284, 23.541115>,  <38.724102, 35.526123, 23.525541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.347477, 35.392284, 23.541115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124440, 0.452911, 0.882829,
		-0.313023, 0.826389, -0.468078,
		-0.941558, -0.334593, 0.038936,
		38.065010, 35.291908, 23.552795>
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
