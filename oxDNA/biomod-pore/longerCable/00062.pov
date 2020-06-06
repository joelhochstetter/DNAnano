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
	<23.877644, 34.842690, 34.878700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.274721, 34.845940, 34.926849>,  <24.512968, 34.847889, 34.955738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.274721, 34.845940, 34.926849>,  <23.877644, 34.842690, 34.878700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.274721, 34.845940, 34.926849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033212, -0.977588, -0.207892,
		0.115984, 0.210371, -0.970717,
		0.992696, 0.008127, 0.120371,
		24.572531, 34.848377, 34.962959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.188721, 34.402618, 34.320580>,  <23.877644, 34.842690, 34.878700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.188721, 34.402618, 34.320580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.443216, 34.409218, 34.629105>,  <24.595915, 34.413177, 34.814220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.443216, 34.409218, 34.629105>,  <24.188721, 34.402618, 34.320580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.443216, 34.409218, 34.629105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074924, -0.996367, -0.040492,
		0.767844, 0.083553, -0.635165,
		0.636241, 0.016497, 0.771314,
		24.634089, 34.414165, 34.860500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.002316, 34.135025, 34.269482>,  <24.188721, 34.402618, 34.320580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.002316, 34.135025, 34.269482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.838251, 34.078495, 34.629879>,  <24.739813, 34.044579, 34.846119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.838251, 34.078495, 34.629879>,  <25.002316, 34.135025, 34.269482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.838251, 34.078495, 34.629879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219921, -0.974094, -0.052677,
		0.885100, 0.176542, 0.430616,
		-0.410161, -0.141326, 0.900997,
		24.715202, 34.036098, 34.900177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.519819, 33.834938, 34.628643>,  <25.002316, 34.135025, 34.269482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.519819, 33.834938, 34.628643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.146473, 33.734257, 34.730991>,  <24.922464, 33.673847, 34.792400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.146473, 33.734257, 34.730991>,  <25.519819, 33.834938, 34.628643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.146473, 33.734257, 34.730991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202642, -0.957949, -0.203148,
		0.296244, -0.137762, 0.945125,
		-0.933368, -0.251703, 0.255871,
		24.866463, 33.658745, 34.807751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.209454, 34.200939, 34.286015>,  <25.519819, 33.834938, 34.628643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.209454, 34.200939, 34.286015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.573578, 34.358871, 34.236309>,  <26.792053, 34.453629, 34.206486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.573578, 34.358871, 34.236309>,  <26.209454, 34.200939, 34.286015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.573578, 34.358871, 34.236309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367341, 0.632242, -0.682151,
		-0.190765, 0.666619, 0.720574,
		0.910313, 0.394828, -0.124267,
		26.846672, 34.477318, 34.199028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.921007, 34.791000, 34.452415>,  <26.209454, 34.200939, 34.286015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.921007, 34.791000, 34.452415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.210394, 34.796619, 34.176327>,  <26.384026, 34.799992, 34.010674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.210394, 34.796619, 34.176327>,  <25.921007, 34.791000, 34.452415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.210394, 34.796619, 34.176327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357090, 0.863270, -0.356724,
		0.590834, 0.504547, 0.629561,
		0.723465, 0.014045, -0.690218,
		26.427433, 34.800835, 33.969261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.318916, 35.455139, 34.620132>,  <25.921007, 34.791000, 34.452415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.318916, 35.455139, 34.620132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.272179, 35.312607, 34.249321>,  <26.244135, 35.227085, 34.026836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.272179, 35.312607, 34.249321>,  <26.318916, 35.455139, 34.620132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.272179, 35.312607, 34.249321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276426, 0.908202, -0.314257,
		0.953906, 0.219534, -0.204619,
		-0.116845, -0.356333, -0.927024,
		26.237125, 35.205708, 33.971214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.754469, 35.719971, 34.064163>,  <26.318916, 35.455139, 34.620132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.754469, 35.719971, 34.064163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.389538, 35.607037, 33.945541>,  <26.170580, 35.539276, 33.874367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.389538, 35.607037, 33.945541>,  <26.754469, 35.719971, 34.064163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.389538, 35.607037, 33.945541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183893, 0.929633, -0.319320,
		0.365844, -0.236789, -0.900050,
		-0.912328, -0.282334, -0.296556,
		26.115839, 35.522335, 33.856575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.602375, 36.153172, 33.626404>,  <26.754469, 35.719971, 34.064163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.602375, 36.153172, 33.626404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.237026, 36.001205, 33.684940>,  <26.017817, 35.910027, 33.720062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.237026, 36.001205, 33.684940>,  <26.602375, 36.153172, 33.626404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.237026, 36.001205, 33.684940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406142, 0.825224, -0.392498,
		0.028349, -0.417933, -0.908035,
		-0.913370, -0.379918, 0.146346,
		25.963015, 35.887230, 33.728844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.223339, 36.336781, 33.033909>,  <26.602375, 36.153172, 33.626404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.223339, 36.336781, 33.033909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.944120, 36.236099, 33.302052>,  <25.776588, 36.175690, 33.462936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.944120, 36.236099, 33.302052>,  <26.223339, 36.336781, 33.033909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.944120, 36.236099, 33.302052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479887, 0.859274, -0.177079,
		-0.531447, -0.445304, -0.720602,
		-0.698049, -0.251699, 0.670355,
		25.734705, 36.160591, 33.503159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.630838, 36.463764, 32.738403>,  <26.223339, 36.336781, 33.033909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.630838, 36.463764, 32.738403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.613281, 36.504116, 33.135975>,  <25.602747, 36.528328, 33.374519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.613281, 36.504116, 33.135975>,  <25.630838, 36.463764, 32.738403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.613281, 36.504116, 33.135975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429819, 0.896197, -0.109942,
		-0.901848, -0.432035, 0.004023,
		-0.043894, 0.100880, 0.993930,
		25.600113, 36.534378, 33.434155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.021889, 36.768204, 32.527859>,  <25.630838, 36.463764, 32.738403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.021889, 36.768204, 32.527859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.283665, 37.055485, 32.433296>,  <25.440731, 37.227856, 32.376560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.283665, 37.055485, 32.433296>,  <25.021889, 36.768204, 32.527859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.283665, 37.055485, 32.433296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752171, 0.586497, -0.300434,
		-0.077122, 0.374434, 0.924041,
		0.654440, 0.718206, -0.236406,
		25.479998, 37.270947, 32.362373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.739885, 37.262890, 32.861534>,  <25.021889, 36.768204, 32.527859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.739885, 37.262890, 32.861534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.946257, 37.384426, 32.541161>,  <25.070080, 37.457348, 32.348934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.946257, 37.384426, 32.541161>,  <24.739885, 37.262890, 32.861534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.946257, 37.384426, 32.541161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808780, 0.480895, -0.338548,
		0.282303, 0.822449, 0.493845,
		0.515926, 0.303838, -0.800939,
		25.101034, 37.475578, 32.300880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.176918, 37.594032, 33.366985>,  <24.739885, 37.262890, 32.861534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.176918, 37.594032, 33.366985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.976854, 37.564571, 33.712105>,  <24.856815, 37.546894, 33.919174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.976854, 37.564571, 33.712105>,  <25.176918, 37.594032, 33.366985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.976854, 37.564571, 33.712105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141449, -0.989942, -0.002503,
		0.854302, 0.120790, 0.505548,
		-0.500161, -0.073648, 0.862795,
		24.826805, 37.542477, 33.970943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.713902, 37.477051, 33.947460>,  <25.176918, 37.594032, 33.366985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.713902, 37.477051, 33.947460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.345993, 37.323536, 33.914646>,  <25.125248, 37.231426, 33.894958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.345993, 37.323536, 33.914646>,  <25.713902, 37.477051, 33.947460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.345993, 37.323536, 33.914646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377028, -0.922126, 0.086795,
		-0.108961, 0.048900, 0.992843,
		-0.919770, -0.383787, -0.082039,
		25.070063, 37.208401, 33.890034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.748945, 36.917164, 34.361954>,  <25.713902, 37.477051, 33.947460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.748945, 36.917164, 34.361954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.457388, 36.859283, 34.094292>,  <25.282454, 36.824554, 33.933693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.457388, 36.859283, 34.094292>,  <25.748945, 36.917164, 34.361954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.457388, 36.859283, 34.094292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313625, -0.939393, -0.138489,
		-0.608565, -0.310810, 0.730101,
		-0.728895, -0.144698, -0.669159,
		25.238720, 36.815872, 33.893543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.147861, 36.475296, 34.588741>,  <25.748945, 36.917164, 34.361954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.147861, 36.475296, 34.588741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.228178, 36.459286, 34.197216>,  <25.276367, 36.449680, 33.962299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.228178, 36.459286, 34.197216>,  <25.147861, 36.475296, 34.588741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.228178, 36.459286, 34.197216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234873, -0.968056, 0.087762,
		-0.951061, -0.247519, -0.184976,
		0.200790, -0.040021, -0.978816,
		25.288416, 36.447281, 33.903572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.809120, 35.881191, 34.347664>,  <25.147861, 36.475296, 34.588741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.809120, 35.881191, 34.347664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.110264, 35.976864, 34.102390>,  <25.290949, 36.034267, 33.955227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.110264, 35.976864, 34.102390>,  <24.809120, 35.881191, 34.347664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.110264, 35.976864, 34.102390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267623, -0.962386, -0.046807,
		-0.601319, -0.128864, -0.788550,
		0.752858, 0.239179, -0.613188,
		25.336121, 36.048618, 33.918434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.796495, 35.334118, 33.939625>,  <24.809120, 35.881191, 34.347664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.796495, 35.334118, 33.939625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.146225, 35.504299, 33.846203>,  <25.356062, 35.606407, 33.790150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.146225, 35.504299, 33.846203>,  <24.796495, 35.334118, 33.939625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.146225, 35.504299, 33.846203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410817, -0.904978, -0.110655,
		-0.258439, 0.000801, -0.966027,
		0.874322, 0.425458, -0.233552,
		25.408522, 35.631935, 33.776138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.016420, 35.105782, 33.233673>,  <24.796495, 35.334118, 33.939625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.016420, 35.105782, 33.233673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.339796, 35.204674, 33.447327>,  <25.533821, 35.264011, 33.575520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.339796, 35.204674, 33.447327>,  <25.016420, 35.105782, 33.233673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.339796, 35.204674, 33.447327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390602, -0.904223, -0.172658,
		0.440289, 0.348218, -0.827581,
		0.808440, 0.247235, 0.534134,
		25.582329, 35.278843, 33.607567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.553461, 34.881134, 32.820511>,  <25.016420, 35.105782, 33.233673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.553461, 34.881134, 32.820511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.699398, 34.923580, 33.190514>,  <25.786961, 34.949047, 33.412514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.699398, 34.923580, 33.190514>,  <25.553461, 34.881134, 32.820511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.699398, 34.923580, 33.190514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508987, -0.854624, -0.102717,
		0.779630, 0.508290, -0.365811,
		0.364841, 0.106112, 0.925003,
		25.808851, 34.955414, 33.468014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.230446, 34.657761, 32.818672>,  <25.553461, 34.881134, 32.820511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.230446, 34.657761, 32.818672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.179012, 34.633553, 33.214611>,  <26.148151, 34.619026, 33.452175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.179012, 34.633553, 33.214611>,  <26.230446, 34.657761, 32.818672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.179012, 34.633553, 33.214611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379383, -0.925211, -0.007284,
		0.916261, 0.374596, 0.141926,
		-0.128583, -0.060519, 0.989850,
		26.140436, 34.615398, 33.511566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.919733, 34.541580, 32.877922>,  <26.230446, 34.657761, 32.818672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.919733, 34.541580, 32.877922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.010313, 34.327099, 33.203182>,  <27.064661, 34.198410, 33.398338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.010313, 34.327099, 33.203182>,  <26.919733, 34.541580, 32.877922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.010313, 34.327099, 33.203182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010566, -0.836136, -0.548420,
		0.973966, 0.115598, -0.195009,
		0.226450, -0.536203, 0.813146,
		27.078247, 34.166237, 33.447124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.532837, 34.619366, 32.529179>,  <26.919733, 34.541580, 32.877922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.532837, 34.619366, 32.529179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.374210, 34.642159, 32.162685>,  <27.279034, 34.655834, 31.942789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.374210, 34.642159, 32.162685>,  <27.532837, 34.619366, 32.529179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.374210, 34.642159, 32.162685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065938, 0.993726, 0.090341,
		0.915634, 0.096241, -0.390322,
		-0.396568, 0.056983, -0.916235,
		27.255239, 34.659252, 31.887815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.195778, 34.833000, 32.351933>,  <27.532837, 34.619366, 32.529179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.195778, 34.833000, 32.351933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.511251, 34.658943, 32.525661>,  <28.700535, 34.554508, 32.629898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.511251, 34.658943, 32.525661>,  <28.195778, 34.833000, 32.351933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.511251, 34.658943, 32.525661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375168, 0.900295, 0.220723,
		-0.487061, -0.011137, 0.873297,
		0.788683, -0.435139, 0.434321,
		28.747856, 34.528400, 32.655956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.392059, 35.282558, 31.859356>,  <28.195778, 34.833000, 32.351933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.392059, 35.282558, 31.859356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.687443, 35.348396, 31.597794>,  <28.864672, 35.387897, 31.440857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.687443, 35.348396, 31.597794>,  <28.392059, 35.282558, 31.859356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.687443, 35.348396, 31.597794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176806, 0.888560, 0.423321,
		0.650708, -0.428219, 0.627062,
		0.738457, 0.164590, -0.653905,
		28.908979, 35.397774, 31.401623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.594528, 36.090866, 31.955475>,  <28.392059, 35.282558, 31.859356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.594528, 36.090866, 31.955475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.927166, 36.112869, 31.734415>,  <29.126749, 36.126072, 31.601780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.927166, 36.112869, 31.734415>,  <28.594528, 36.090866, 31.955475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.927166, 36.112869, 31.734415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550654, 0.211227, -0.807567,
		0.072311, 0.975888, 0.205947,
		0.831596, 0.055009, -0.552650,
		29.176645, 36.129372, 31.568621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.739470, 36.813362, 31.667179>,  <28.594528, 36.090866, 31.955475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.739470, 36.813362, 31.667179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.918896, 36.543388, 31.432829>,  <29.026550, 36.381405, 31.292219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.918896, 36.543388, 31.432829>,  <28.739470, 36.813362, 31.667179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.918896, 36.543388, 31.432829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571173, 0.287714, -0.768754,
		0.687424, 0.679472, -0.256447,
		0.448563, -0.674936, -0.585878,
		29.053465, 36.340908, 31.257065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.763628, 37.124611, 30.898102>,  <28.739470, 36.813362, 31.667179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.763628, 37.124611, 30.898102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.823822, 36.730755, 30.862684>,  <28.859940, 36.494442, 30.841434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.823822, 36.730755, 30.862684>,  <28.763628, 37.124611, 30.898102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.823822, 36.730755, 30.862684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502566, 0.000933, -0.864538,
		0.851341, 0.174600, -0.494705,
		0.150487, -0.984639, -0.088542,
		28.868969, 36.435364, 30.836121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.954815, 36.993988, 30.206038>,  <28.763628, 37.124611, 30.898102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.954815, 36.993988, 30.206038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.866772, 36.617237, 30.307568>,  <28.813946, 36.391186, 30.368484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.866772, 36.617237, 30.307568>,  <28.954815, 36.993988, 30.206038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.866772, 36.617237, 30.307568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597504, -0.075502, -0.798303,
		0.771066, -0.327371, -0.546156,
		-0.220105, -0.941874, 0.253823,
		28.800739, 36.334675, 30.383715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.068130, 36.442497, 29.655169>,  <28.954815, 36.993988, 30.206038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.068130, 36.442497, 29.655169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.802994, 36.243252, 29.878784>,  <28.643911, 36.123703, 30.012953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.802994, 36.243252, 29.878784>,  <29.068130, 36.442497, 29.655169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.802994, 36.243252, 29.878784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558415, -0.168528, -0.812263,
		0.498813, -0.850577, -0.166447,
		-0.662841, -0.498114, 0.559039,
		28.604141, 36.093819, 30.046495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.726273, 36.025074, 29.168610>,  <29.068130, 36.442497, 29.655169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.726273, 36.025074, 29.168610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.474770, 36.010918, 29.479328>,  <28.323868, 36.002426, 29.665760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.474770, 36.010918, 29.479328>,  <28.726273, 36.025074, 29.168610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.474770, 36.010918, 29.479328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759323, -0.187378, -0.623151,
		0.167606, -0.981650, 0.090945,
		-0.628758, -0.035388, 0.776796,
		28.286142, 36.000301, 29.712366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.439426, 35.386097, 29.189135>,  <28.726273, 36.025074, 29.168610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.439426, 35.386097, 29.189135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.148497, 35.581955, 29.381487>,  <27.973938, 35.699471, 29.496899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.148497, 35.581955, 29.381487>,  <28.439426, 35.386097, 29.189135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.148497, 35.581955, 29.381487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681681, -0.434338, -0.588779,
		-0.079429, -0.756041, 0.649687,
		-0.727325, 0.489646, 0.480880,
		27.930300, 35.728848, 29.525751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.861990, 34.883099, 29.200705>,  <28.439426, 35.386097, 29.189135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.861990, 34.883099, 29.200705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.690269, 35.225029, 29.317303>,  <27.587236, 35.430187, 29.387262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.690269, 35.225029, 29.317303>,  <27.861990, 34.883099, 29.200705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.690269, 35.225029, 29.317303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826850, -0.242151, -0.507624,
		-0.363345, -0.458947, 0.810770,
		-0.429302, 0.854828, 0.291496,
		27.561480, 35.481476, 29.404753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.195770, 34.676697, 29.451027>,  <27.861990, 34.883099, 29.200705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.195770, 34.676697, 29.451027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.212700, 35.059559, 29.336435>,  <27.222857, 35.289276, 29.267681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.212700, 35.059559, 29.336435>,  <27.195770, 34.676697, 29.451027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.212700, 35.059559, 29.336435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623336, -0.198790, -0.756264,
		-0.780808, 0.210580, 0.588213,
		0.042323, 0.957151, -0.286479,
		27.225397, 35.346703, 29.250492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.540617, 34.910847, 29.791821>,  <27.195770, 34.676697, 29.451027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.540617, 34.910847, 29.791821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.722578, 35.116356, 29.500864>,  <26.831755, 35.239662, 29.326290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.722578, 35.116356, 29.500864>,  <26.540617, 34.910847, 29.791821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.722578, 35.116356, 29.500864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842892, -0.015192, -0.537868,
		-0.287392, 0.857792, 0.426144,
		0.454905, 0.513772, -0.727393,
		26.859049, 35.270489, 29.282646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.339863, 35.657185, 29.559004>,  <26.540617, 34.910847, 29.791821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.339863, 35.657185, 29.559004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.459066, 35.436714, 29.247263>,  <26.530588, 35.304432, 29.060219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.459066, 35.436714, 29.247263>,  <26.339863, 35.657185, 29.559004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.459066, 35.436714, 29.247263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867819, 0.183630, -0.461703,
		0.397594, 0.813930, -0.423600,
		0.298008, -0.551178, -0.779355,
		26.548470, 35.271362, 29.013456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.203083, 36.176456, 29.128267>,  <26.339863, 35.657185, 29.559004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.203083, 36.176456, 29.128267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.021034, 36.458755, 28.911091>,  <25.911806, 36.628136, 28.780785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.021034, 36.458755, 28.911091>,  <26.203083, 36.176456, 29.128267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.021034, 36.458755, 28.911091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872580, -0.232016, 0.429852,
		0.177398, 0.669392, 0.721418,
		-0.455120, 0.705750, -0.542939,
		25.884499, 36.670479, 28.748209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.939125, 36.362194, 28.976837>,  <26.203083, 36.176456, 29.128267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.939125, 36.362194, 28.976837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.959166, 36.031250, 29.200607>,  <26.971189, 35.832684, 29.334869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.959166, 36.031250, 29.200607>,  <26.939125, 36.362194, 28.976837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.959166, 36.031250, 29.200607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766754, 0.390787, 0.509288,
		-0.639983, 0.403427, 0.653963,
		0.050100, -0.827364, 0.559426,
		26.974195, 35.783039, 29.368435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.016094, 36.630646, 29.689123>,  <26.939125, 36.362194, 28.976837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.016094, 36.630646, 29.689123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.179018, 36.271278, 29.623465>,  <27.276773, 36.055656, 29.584070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.179018, 36.271278, 29.623465>,  <27.016094, 36.630646, 29.689123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.179018, 36.271278, 29.623465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676856, 0.176284, 0.714696,
		-0.613159, -0.402206, 0.679902,
		0.407311, -0.898418, -0.164146,
		27.301210, 36.001755, 29.574221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.146770, 36.374363, 30.268118>,  <27.016094, 36.630646, 29.689123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.146770, 36.374363, 30.268118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.395664, 36.153660, 30.045986>,  <27.545000, 36.021236, 29.912708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.395664, 36.153660, 30.045986>,  <27.146770, 36.374363, 30.268118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.395664, 36.153660, 30.045986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729754, 0.152065, 0.666585,
		-0.283348, -0.820024, 0.497268,
		0.622233, -0.551759, -0.555328,
		27.582335, 35.988132, 29.879387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.460562, 35.874104, 30.740957>,  <27.146770, 36.374363, 30.268118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.460562, 35.874104, 30.740957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.696190, 35.921391, 30.421202>,  <27.837566, 35.949760, 30.229349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.696190, 35.921391, 30.421202>,  <27.460562, 35.874104, 30.740957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.696190, 35.921391, 30.421202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804147, 0.011754, 0.594315,
		0.079652, -0.992918, -0.088138,
		0.589070, 0.118215, -0.799389,
		27.872911, 35.956856, 30.181385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.956554, 35.530281, 30.899851>,  <27.460562, 35.874104, 30.740957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.956554, 35.530281, 30.899851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.116611, 35.779690, 30.631193>,  <28.212646, 35.929333, 30.469997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.116611, 35.779690, 30.631193>,  <27.956554, 35.530281, 30.899851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.116611, 35.779690, 30.631193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814331, 0.094296, 0.572690,
		0.420416, -0.776101, -0.470018,
		0.400145, 0.623519, -0.671646,
		28.236654, 35.966743, 30.429699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.590311, 35.119385, 30.605204>,  <27.956554, 35.530281, 30.899851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.590311, 35.119385, 30.605204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.600092, 35.519039, 30.618658>,  <28.605961, 35.758831, 30.626732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.600092, 35.519039, 30.618658>,  <28.590311, 35.119385, 30.605204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.600092, 35.519039, 30.618658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831733, -0.039002, 0.553804,
		0.554636, 0.014436, -0.831968,
		0.024454, 0.999135, 0.033638,
		28.607428, 35.818779, 30.628750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.274195, 35.223785, 30.504803>,  <28.590311, 35.119385, 30.605204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.274195, 35.223785, 30.504803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.159477, 35.586765, 30.627625>,  <29.090647, 35.804554, 30.701317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.159477, 35.586765, 30.627625>,  <29.274195, 35.223785, 30.504803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.159477, 35.586765, 30.627625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776841, 0.032733, 0.628846,
		0.560596, 0.418883, -0.714332,
		-0.286795, 0.907450, 0.307055,
		29.073439, 35.859001, 30.719742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.811483, 35.728638, 30.424280>,  <29.274195, 35.223785, 30.504803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.811483, 35.728638, 30.424280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.560099, 35.859890, 30.706377>,  <29.409267, 35.938641, 30.875635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.560099, 35.859890, 30.706377>,  <29.811483, 35.728638, 30.424280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.560099, 35.859890, 30.706377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777547, 0.240161, 0.581157,
		0.021325, 0.913593, -0.406071,
		-0.628463, 0.328132, 0.705240,
		29.371559, 35.958328, 30.917950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.282297, 36.038952, 30.864765>,  <29.811483, 35.728638, 30.424280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.282297, 36.038952, 30.864765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.947760, 36.056606, 31.083334>,  <29.747036, 36.067200, 31.214476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.947760, 36.056606, 31.083334>,  <30.282297, 36.038952, 30.864765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.947760, 36.056606, 31.083334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542221, -0.080247, 0.836395,
		0.080761, 0.995798, 0.043185,
		-0.836345, 0.044132, 0.546424,
		29.696856, 36.069847, 31.247261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.212831, 36.793011, 30.860003>,  <30.282297, 36.038952, 30.864765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.212831, 36.793011, 30.860003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.154249, 36.908863, 31.238350>,  <30.119101, 36.978374, 31.465359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.154249, 36.908863, 31.238350>,  <30.212831, 36.793011, 30.860003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.154249, 36.908863, 31.238350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517181, -0.792670, 0.322796,
		0.843252, 0.536461, -0.033700,
		-0.146455, 0.289627, 0.945868,
		30.110313, 36.995750, 31.522110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.822386, 36.570145, 31.373766>,  <30.212831, 36.793011, 30.860003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.822386, 36.570145, 31.373766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.486996, 36.621609, 31.585579>,  <30.285761, 36.652485, 31.712667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.486996, 36.621609, 31.585579>,  <30.822386, 36.570145, 31.373766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.486996, 36.621609, 31.585579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305044, -0.694404, 0.651730,
		0.451559, 0.707991, 0.542995,
		-0.838476, 0.128658, 0.529532,
		30.235453, 36.660206, 31.744438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.010933, 36.711288, 32.035469>,  <30.822386, 36.570145, 31.373766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.010933, 36.711288, 32.035469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.655176, 36.534882, 32.083614>,  <30.441723, 36.429035, 32.112499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.655176, 36.534882, 32.083614>,  <31.010933, 36.711288, 32.035469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.655176, 36.534882, 32.083614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380727, -0.568844, 0.729015,
		-0.253045, 0.694203, 0.673833,
		-0.889390, -0.441020, 0.120359,
		30.388359, 36.402576, 32.119720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.691303, 36.853508, 32.732067>,  <31.010933, 36.711288, 32.035469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.691303, 36.853508, 32.732067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.578083, 36.490547, 32.607807>,  <30.510151, 36.272770, 32.533253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.578083, 36.490547, 32.607807>,  <30.691303, 36.853508, 32.732067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.578083, 36.490547, 32.607807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361851, -0.400994, 0.841587,
		-0.888226, 0.125804, 0.441846,
		-0.283052, -0.907401, -0.310651,
		30.493168, 36.218327, 32.514610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.553959, 36.560650, 33.348671>,  <30.691303, 36.853508, 32.732067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.553959, 36.560650, 33.348671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.699888, 36.282772, 33.100700>,  <30.787447, 36.116047, 32.951920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.699888, 36.282772, 33.100700>,  <30.553959, 36.560650, 33.348671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.699888, 36.282772, 33.100700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448556, -0.452317, 0.770848,
		-0.815904, -0.559295, 0.146592,
		0.364825, -0.694693, -0.619923,
		30.809336, 36.074364, 32.914722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.970503, 36.593151, 33.775604>,  <30.553959, 36.560650, 33.348671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.970503, 36.593151, 33.775604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.723444, 36.639908, 34.086693>,  <29.575209, 36.667961, 34.273346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.723444, 36.639908, 34.086693>,  <29.970503, 36.593151, 33.775604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.723444, 36.639908, 34.086693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635754, -0.507907, 0.581246,
		0.462953, 0.853444, 0.239391,
		-0.617649, 0.116896, 0.777717,
		29.538149, 36.674976, 34.320007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.398123, 36.998917, 34.318977>,  <29.970503, 36.593151, 33.775604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.398123, 36.998917, 34.318977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.107157, 36.733223, 34.387867>,  <29.932577, 36.573807, 34.429199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.107157, 36.733223, 34.387867>,  <30.398123, 36.998917, 34.318977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.107157, 36.733223, 34.387867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676208, -0.736551, 0.015323,
		0.116674, 0.127605, 0.984938,
		-0.727413, -0.664236, 0.172224,
		29.888933, 36.533951, 34.439533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.602234, 36.935463, 35.032959>,  <30.398123, 36.998917, 34.318977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.602234, 36.935463, 35.032959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.512547, 36.793266, 35.395916>,  <30.458735, 36.707951, 35.613689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.512547, 36.793266, 35.395916>,  <30.602234, 36.935463, 35.032959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.512547, 36.793266, 35.395916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136385, -0.933379, -0.331969,
		0.964949, 0.049321, 0.257763,
		-0.224217, -0.355488, 0.907389,
		30.445282, 36.686619, 35.668133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.031191, 36.436657, 35.071274>,  <30.602234, 36.935463, 35.032959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.031191, 36.436657, 35.071274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.761162, 36.356258, 35.355213>,  <30.599144, 36.308022, 35.525578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.761162, 36.356258, 35.355213>,  <31.031191, 36.436657, 35.071274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.761162, 36.356258, 35.355213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017845, -0.966340, -0.256648,
		0.737537, -0.160589, 0.655935,
		-0.675071, -0.200993, 0.709846,
		30.558640, 36.295959, 35.568169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.205690, 35.851063, 35.547825>,  <31.031191, 36.436657, 35.071274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.205690, 35.851063, 35.547825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.813078, 35.872532, 35.474373>,  <30.577511, 35.885414, 35.430302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.813078, 35.872532, 35.474373>,  <31.205690, 35.851063, 35.547825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.813078, 35.872532, 35.474373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042515, -0.874652, -0.482884,
		-0.186527, -0.481772, 0.856215,
		-0.981530, 0.053669, -0.183629,
		30.518620, 35.888634, 35.419285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.867630, 35.164753, 35.830898>,  <31.205690, 35.851063, 35.547825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.867630, 35.164753, 35.830898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.644222, 35.336674, 35.547115>,  <30.510178, 35.439827, 35.376846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.644222, 35.336674, 35.547115>,  <30.867630, 35.164753, 35.830898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.644222, 35.336674, 35.547115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148885, -0.893342, -0.423997,
		-0.816020, -0.131184, 0.562941,
		-0.558521, 0.429803, -0.709454,
		30.476667, 35.465614, 35.334278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.102676, 35.003883, 35.877884>,  <30.867630, 35.164753, 35.830898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.102676, 35.003883, 35.877884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.227251, 35.075050, 35.504498>,  <30.301994, 35.117752, 35.280468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.227251, 35.075050, 35.504498>,  <30.102676, 35.003883, 35.877884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.227251, 35.075050, 35.504498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022832, -0.983434, -0.179823,
		-0.949993, 0.034691, -0.310337,
		0.311434, 0.177917, -0.933464,
		30.320681, 35.128426, 35.224457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.765850, 34.494766, 35.511620>,  <30.102676, 35.003883, 35.877884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.765850, 34.494766, 35.511620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.103031, 34.638515, 35.351479>,  <30.305340, 34.724766, 35.255394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.103031, 34.638515, 35.351479>,  <29.765850, 34.494766, 35.511620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.103031, 34.638515, 35.351479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284775, -0.929423, -0.234685,
		-0.456440, 0.083817, -0.885797,
		0.842951, 0.359372, -0.400357,
		30.355917, 34.746326, 35.231373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.001701, 33.926701, 35.301853>,  <29.765850, 34.494766, 35.511620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.001701, 33.926701, 35.301853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.342934, 34.130314, 35.255997>,  <30.547672, 34.252480, 35.228481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.342934, 34.130314, 35.255997>,  <30.001701, 33.926701, 35.301853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.342934, 34.130314, 35.255997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436574, -0.816662, -0.377445,
		-0.285756, 0.271941, -0.918908,
		0.853080, 0.509029, -0.114644,
		30.598858, 34.283024, 35.221603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.272259, 33.936451, 34.552681>,  <30.001701, 33.926701, 35.301853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.272259, 33.936451, 34.552681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.582949, 33.997677, 34.797066>,  <30.769363, 34.034412, 34.943695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.582949, 33.997677, 34.797066>,  <30.272259, 33.936451, 34.552681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.582949, 33.997677, 34.797066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515639, -0.711565, -0.477275,
		0.361683, 0.685746, -0.631616,
		0.776725, 0.153063, 0.610958,
		30.815966, 34.043594, 34.980354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.905405, 33.911564, 34.157990>,  <30.272259, 33.936451, 34.552681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.905405, 33.911564, 34.157990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.973240, 33.834885, 34.544666>,  <31.013941, 33.788876, 34.776672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.973240, 33.834885, 34.544666>,  <30.905405, 33.911564, 34.157990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.973240, 33.834885, 34.544666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671351, -0.695625, -0.255722,
		0.721476, 0.692357, 0.010727,
		0.169589, -0.191699, 0.966691,
		31.024117, 33.777374, 34.834675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.569641, 33.752094, 34.286907>,  <30.905405, 33.911564, 34.157990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.569641, 33.752094, 34.286907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.412363, 33.591064, 34.617565>,  <31.317997, 33.494446, 34.815960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.412363, 33.591064, 34.617565>,  <31.569641, 33.752094, 34.286907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.412363, 33.591064, 34.617565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453390, -0.867040, -0.206590,
		0.799898, 0.293561, 0.523435,
		-0.393193, -0.402571, 0.826641,
		31.294405, 33.470295, 34.865559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.096809, 33.407673, 34.618488>,  <31.569641, 33.752094, 34.286907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.096809, 33.407673, 34.618488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.741209, 33.242535, 34.697723>,  <31.527849, 33.143452, 34.745262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.741209, 33.242535, 34.697723>,  <32.096809, 33.407673, 34.618488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.741209, 33.242535, 34.697723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355631, -0.894997, -0.269270,
		0.288453, -0.168936, 0.942473,
		-0.889000, -0.412844, 0.198086,
		31.474508, 33.118683, 34.757149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.248669, 32.803120, 35.098270>,  <32.096809, 33.407673, 34.618488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.248669, 32.803120, 35.098270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.909178, 32.766621, 34.889908>,  <31.705484, 32.744720, 34.764889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.909178, 32.766621, 34.889908>,  <32.248669, 32.803120, 35.098270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.909178, 32.766621, 34.889908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284913, -0.908722, -0.305039,
		-0.445526, -0.407306, 0.797251,
		-0.848724, -0.091245, -0.520906,
		31.654560, 32.739246, 34.733635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.907297, 32.128098, 35.292194>,  <32.248669, 32.803120, 35.098270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.907297, 32.128098, 35.292194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.804382, 32.233982, 34.920444>,  <31.742634, 32.297512, 34.697395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.804382, 32.233982, 34.920444>,  <31.907297, 32.128098, 35.292194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.804382, 32.233982, 34.920444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489119, -0.793776, -0.361500,
		-0.833406, -0.547582, 0.074752,
		-0.257288, 0.264714, -0.929371,
		31.727196, 32.313396, 34.641632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.704018, 31.559566, 35.008144>,  <31.907297, 32.128098, 35.292194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.704018, 31.559566, 35.008144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815607, 31.814384, 34.720715>,  <31.882561, 31.967276, 34.548256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815607, 31.814384, 34.720715>,  <31.704018, 31.559566, 35.008144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.815607, 31.814384, 34.720715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481731, -0.740155, -0.469154,
		-0.830727, -0.215275, -0.513370,
		0.278976, 0.637046, -0.718572,
		31.899300, 32.005497, 34.505142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.688423, 31.230900, 34.369793>,  <31.704018, 31.559566, 35.008144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.688423, 31.230900, 34.369793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919552, 31.533552, 34.247395>,  <32.058228, 31.715143, 34.173954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919552, 31.533552, 34.247395>,  <31.688423, 31.230900, 34.369793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.919552, 31.533552, 34.247395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579123, -0.644281, -0.499518,
		-0.575098, 0.111422, -0.810461,
		0.577822, 0.756629, -0.305998,
		32.092899, 31.760540, 34.155594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.704077, 31.312990, 33.652584>,  <31.688423, 31.230900, 34.369793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.704077, 31.312990, 33.652584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.046558, 31.498449, 33.743755>,  <32.252048, 31.609724, 33.798458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.046558, 31.498449, 33.743755>,  <31.704077, 31.312990, 33.652584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.046558, 31.498449, 33.743755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472900, -0.525668, -0.707134,
		-0.208048, 0.713235, -0.669337,
		0.856202, 0.463647, 0.227925,
		32.303417, 31.637543, 33.812134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.904493, 31.648708, 33.113468>,  <31.704077, 31.312990, 33.652584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.904493, 31.648708, 33.113468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.248138, 31.616571, 33.315647>,  <32.454327, 31.597288, 33.436954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.248138, 31.616571, 33.315647>,  <31.904493, 31.648708, 33.113468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.248138, 31.616571, 33.315647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463905, -0.294852, -0.835377,
		0.216149, 0.952159, -0.216038,
		0.859111, -0.080344, 0.505443,
		32.505871, 31.592468, 33.467281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.437717, 32.015388, 32.718903>,  <31.904493, 31.648708, 33.113468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.437717, 32.015388, 32.718903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.653820, 31.780003, 32.959511>,  <32.783482, 31.638769, 33.103874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.653820, 31.780003, 32.959511>,  <32.437717, 32.015388, 32.718903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.653820, 31.780003, 32.959511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557425, -0.285232, -0.779692,
		0.630398, 0.756536, 0.173929,
		0.540255, -0.588469, 0.601522,
		32.815895, 31.603462, 33.139969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.108547, 32.241432, 32.675911>,  <32.437717, 32.015388, 32.718903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.108547, 32.241432, 32.675911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125820, 31.857122, 32.785492>,  <33.136185, 31.626537, 32.851238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125820, 31.857122, 32.785492>,  <33.108547, 32.241432, 32.675911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125820, 31.857122, 32.785492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430500, -0.229547, -0.872913,
		0.901557, 0.155630, 0.403701,
		0.043183, -0.960774, 0.273948,
		33.138775, 31.568890, 32.867676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.755604, 31.967245, 32.372341>,  <33.108547, 32.241432, 32.675911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.755604, 31.967245, 32.372341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.536560, 31.648338, 32.473919>,  <33.405132, 31.456995, 32.534866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.536560, 31.648338, 32.473919>,  <33.755604, 31.967245, 32.372341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.536560, 31.648338, 32.473919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393329, -0.513150, -0.762869,
		0.738523, -0.317870, 0.594595,
		-0.547610, -0.797267, 0.253946,
		33.372276, 31.409159, 32.550102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264084, 31.393986, 32.295330>,  <33.755604, 31.967245, 32.372341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264084, 31.393986, 32.295330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.889778, 31.253820, 32.279545>,  <33.665195, 31.169722, 32.270073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.889778, 31.253820, 32.279545>,  <34.264084, 31.393986, 32.295330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.889778, 31.253820, 32.279545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274154, -0.652574, -0.706390,
		0.221777, -0.671833, 0.706722,
		-0.935764, -0.350412, -0.039460,
		33.609051, 31.148697, 32.267708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349949, 30.650324, 32.315407>,  <34.264084, 31.393986, 32.295330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349949, 30.650324, 32.315407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.992683, 30.729361, 32.153805>,  <33.778324, 30.776783, 32.056843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.992683, 30.729361, 32.153805>,  <34.349949, 30.650324, 32.315407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.992683, 30.729361, 32.153805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164614, -0.692347, -0.702537,
		-0.418524, -0.693984, 0.585853,
		-0.893162, 0.197589, -0.404004,
		33.724735, 30.788637, 32.032604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093575, 29.978447, 32.007473>,  <34.349949, 30.650324, 32.315407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093575, 29.978447, 32.007473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855076, 30.248676, 31.833994>,  <33.711975, 30.410814, 31.729908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855076, 30.248676, 31.833994>,  <34.093575, 29.978447, 32.007473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855076, 30.248676, 31.833994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001467, -0.541144, -0.840929,
		-0.802799, -0.500765, 0.323647,
		-0.596248, 0.675572, -0.433695,
		33.676201, 30.451347, 31.703886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.587917, 29.601980, 31.689959>,  <34.093575, 29.978447, 32.007473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.587917, 29.601980, 31.689959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.574051, 29.960974, 31.514086>,  <33.565731, 30.176371, 31.408562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.574051, 29.960974, 31.514086>,  <33.587917, 29.601980, 31.689959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.574051, 29.960974, 31.514086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114417, -0.440619, -0.890373,
		-0.992828, 0.019441, 0.117962,
		-0.034667, 0.897484, -0.439684,
		33.563652, 30.230219, 31.382181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119083, 29.507587, 31.076191>,  <33.587917, 29.601980, 31.689959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.119083, 29.507587, 31.076191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279583, 29.864639, 30.994005>,  <33.375881, 30.078871, 30.944693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279583, 29.864639, 30.994005>,  <33.119083, 29.507587, 31.076191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.279583, 29.864639, 30.994005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070770, -0.193433, -0.978558,
		-0.913231, 0.407186, -0.014444,
		0.401249, 0.892627, -0.205466,
		33.399956, 30.132427, 30.932365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.670940, 29.885262, 30.454906>,  <33.119083, 29.507587, 31.076191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.670940, 29.885262, 30.454906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.034210, 30.052158, 30.468302>,  <33.252174, 30.152296, 30.476339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.034210, 30.052158, 30.468302>,  <32.670940, 29.885262, 30.454906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.034210, 30.052158, 30.468302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052211, -0.033538, -0.998073,
		-0.415316, 0.908176, -0.052243,
		0.908178, 0.417243, 0.033488,
		33.306664, 30.177332, 30.478348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.662113, 30.249222, 29.863173>,  <32.670940, 29.885262, 30.454906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.662113, 30.249222, 29.863173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.044792, 30.280342, 29.975376>,  <33.274399, 30.299013, 30.042698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.044792, 30.280342, 29.975376>,  <32.662113, 30.249222, 29.863173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.044792, 30.280342, 29.975376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285237, -0.058125, -0.956693,
		-0.058125, 0.995273, -0.077799,
		0.956693, 0.077799, 0.280511,
		33.331799, 30.303682, 30.059530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.995590, 30.766584, 29.447588>,  <32.662113, 30.249222, 29.863173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.995590, 30.766584, 29.447588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.288494, 30.524076, 29.571678>,  <33.464237, 30.378572, 29.646132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.288494, 30.524076, 29.571678>,  <32.995590, 30.766584, 29.447588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.288494, 30.524076, 29.571678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285727, -0.139998, -0.948030,
		0.618191, 0.782841, 0.070713,
		0.732257, -0.606268, 0.310225,
		33.508171, 30.342196, 29.664745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.639038, 31.033804, 29.228886>,  <32.995590, 30.766584, 29.447588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.639038, 31.033804, 29.228886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.655777, 30.635988, 29.267118>,  <33.665821, 30.397299, 29.290058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.655777, 30.635988, 29.267118>,  <33.639038, 31.033804, 29.228886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655777, 30.635988, 29.267118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159762, -0.087773, -0.983246,
		0.986268, 0.056419, 0.155217,
		0.041849, -0.994542, 0.095581,
		33.668331, 30.337626, 29.295794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.177357, 30.847713, 28.781631>,  <33.639038, 31.033804, 29.228886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.177357, 30.847713, 28.781631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.974327, 30.512417, 28.861349>,  <33.852509, 30.311239, 28.909180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.974327, 30.512417, 28.861349>,  <34.177357, 30.847713, 28.781631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.974327, 30.512417, 28.861349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051672, -0.260505, -0.964089,
		0.860055, -0.479052, 0.175540,
		-0.507578, -0.838240, 0.199295,
		33.822052, 30.260944, 28.921137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.481693, 30.398432, 28.316624>,  <34.177357, 30.847713, 28.781631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.481693, 30.398432, 28.316624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.124161, 30.237581, 28.395975>,  <33.909641, 30.141071, 28.443586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.124161, 30.237581, 28.395975>,  <34.481693, 30.398432, 28.316624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124161, 30.237581, 28.395975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077281, -0.297639, -0.951545,
		0.441689, -0.865854, 0.234963,
		-0.893833, -0.402129, 0.198378,
		33.856010, 30.116943, 28.455488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526474, 29.827208, 27.918880>,  <34.481693, 30.398432, 28.316624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.526474, 29.827208, 27.918880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.133957, 29.835958, 27.995382>,  <33.898445, 29.841209, 28.041283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.133957, 29.835958, 27.995382>,  <34.526474, 29.827208, 27.918880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.133957, 29.835958, 27.995382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192232, -0.163764, -0.967589,
		0.010153, -0.986257, 0.164906,
		-0.981297, 0.021876, 0.191253,
		33.839569, 29.842522, 28.052757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265076, 29.306458, 27.525953>,  <34.526474, 29.827208, 27.918880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265076, 29.306458, 27.525953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.909401, 29.471052, 27.605986>,  <33.695995, 29.569809, 27.654005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.909401, 29.471052, 27.605986>,  <34.265076, 29.306458, 27.525953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.909401, 29.471052, 27.605986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329641, -0.272848, -0.903820,
		-0.317326, -0.869613, 0.378256,
		-0.889180, 0.411494, 0.200078,
		33.642647, 29.594498, 27.666010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839691, 28.760109, 27.393612>,  <34.265076, 29.306458, 27.525953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839691, 28.760109, 27.393612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.644203, 29.108631, 27.375834>,  <33.526909, 29.317745, 27.365166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.644203, 29.108631, 27.375834>,  <33.839691, 28.760109, 27.393612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.644203, 29.108631, 27.375834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363445, -0.249643, -0.897545,
		-0.793133, -0.422495, 0.438678,
		-0.488721, 0.871307, -0.044446,
		33.497585, 29.370024, 27.362499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.091946, 28.644953, 27.114796>,  <33.839691, 28.760109, 27.393612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.091946, 28.644953, 27.114796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.158394, 29.036171, 27.064463>,  <33.198265, 29.270901, 27.034264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.158394, 29.036171, 27.064463>,  <33.091946, 28.644953, 27.114796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158394, 29.036171, 27.064463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314884, -0.068313, -0.946669,
		-0.934479, 0.196886, 0.296622,
		0.166122, 0.978044, -0.125833,
		33.208229, 29.329584, 27.026712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.453678, 29.054539, 26.886227>,  <33.091946, 28.644953, 27.114796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.453678, 29.054539, 26.886227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.794487, 29.219364, 26.757067>,  <32.998974, 29.318258, 26.679571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.794487, 29.219364, 26.757067>,  <32.453678, 29.054539, 26.886227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.794487, 29.219364, 26.757067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232091, -0.255554, -0.938523,
		-0.469248, 0.874584, -0.122102,
		0.852021, 0.412062, -0.322902,
		33.050095, 29.342983, 26.660196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.355118, 29.039316, 26.159325>,  <32.453678, 29.054539, 26.886227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.355118, 29.039316, 26.159325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.721638, 29.199306, 26.151239>,  <32.941551, 29.295300, 26.146387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.721638, 29.199306, 26.151239>,  <32.355118, 29.039316, 26.159325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.721638, 29.199306, 26.151239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003175, -0.043218, -0.999061,
		-0.400472, 0.915507, -0.038331,
		0.916303, 0.399974, -0.020215,
		32.996529, 29.319300, 26.145176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.336979, 29.613573, 25.623516>,  <32.355118, 29.039316, 26.159325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.336979, 29.613573, 25.623516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718811, 29.504160, 25.670776>,  <32.947910, 29.438513, 25.699133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718811, 29.504160, 25.670776>,  <32.336979, 29.613573, 25.623516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.718811, 29.504160, 25.670776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128957, 0.021806, -0.991410,
		0.268607, 0.961616, 0.056089,
		0.954579, -0.273532, 0.118150,
		33.005184, 29.422100, 25.706221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.700882, 30.014822, 25.130577>,  <32.336979, 29.613573, 25.623516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.700882, 30.014822, 25.130577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.997028, 29.758507, 25.211821>,  <33.174717, 29.604717, 25.260567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.997028, 29.758507, 25.211821>,  <32.700882, 30.014822, 25.130577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.997028, 29.758507, 25.211821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255831, -0.010811, -0.966661,
		0.621620, 0.767642, 0.155929,
		0.740364, -0.640788, 0.203107,
		33.219139, 29.566271, 25.272753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.265594, 30.313044, 24.785625>,  <32.700882, 30.014822, 25.130577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.265594, 30.313044, 24.785625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.333553, 29.921932, 24.834755>,  <33.374329, 29.687265, 24.864233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.333553, 29.921932, 24.834755>,  <33.265594, 30.313044, 24.785625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.333553, 29.921932, 24.834755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259060, -0.075938, -0.962871,
		0.950801, 0.195407, 0.240402,
		0.169896, -0.977778, 0.122824,
		33.384521, 29.628599, 24.871603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726627, 30.245762, 24.340214>,  <33.265594, 30.313044, 24.785625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726627, 30.245762, 24.340214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.599854, 29.874346, 24.417538>,  <33.523788, 29.651497, 24.463932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.599854, 29.874346, 24.417538>,  <33.726627, 30.245762, 24.340214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.599854, 29.874346, 24.417538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214766, -0.268783, -0.938952,
		0.923813, -0.256067, 0.284605,
		-0.316932, -0.928539, 0.193311,
		33.504772, 29.595783, 24.475531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.330990, 29.762991, 24.156816>,  <33.726627, 30.245762, 24.340214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.330990, 29.762991, 24.156816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.973415, 29.584951, 24.135744>,  <33.758873, 29.478128, 24.123100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.973415, 29.584951, 24.135744>,  <34.330990, 29.762991, 24.156816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.973415, 29.584951, 24.135744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245814, -0.388582, -0.888020,
		0.374783, -0.806779, 0.456777,
		-0.893931, -0.445097, -0.052683,
		33.705235, 29.451422, 24.119940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.424004, 29.066216, 23.790052>,  <34.330990, 29.762991, 24.156816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.424004, 29.066216, 23.790052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.036121, 29.158119, 23.756880>,  <33.803391, 29.213261, 23.736977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.036121, 29.158119, 23.756880>,  <34.424004, 29.066216, 23.790052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.036121, 29.158119, 23.756880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010008, -0.376592, -0.926325,
		-0.244061, -0.897435, 0.367483,
		-0.969708, 0.229758, -0.082930,
		33.745209, 29.227047, 23.732000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.112514, 28.548813, 23.251425>,  <34.424004, 29.066216, 23.790052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.112514, 28.548813, 23.251425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.846706, 28.845190, 23.290230>,  <33.687222, 29.023016, 23.313513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.846706, 28.845190, 23.290230>,  <34.112514, 28.548813, 23.251425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.846706, 28.845190, 23.290230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311784, -0.156929, -0.937104,
		-0.679115, -0.652976, 0.335297,
		-0.664525, 0.740942, 0.097014,
		33.647350, 29.067472, 23.319334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390148, 28.284519, 23.006277>,  <34.112514, 28.548813, 23.251425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390148, 28.284519, 23.006277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432724, 28.682238, 23.003483>,  <33.458267, 28.920868, 23.001806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432724, 28.682238, 23.003483>,  <33.390148, 28.284519, 23.006277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.432724, 28.682238, 23.003483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150289, 0.009143, -0.988600,
		-0.982896, 0.106271, 0.150405,
		0.106435, 0.994295, -0.006984,
		33.464653, 28.980526, 23.001387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.958817, 28.421597, 22.499985>,  <33.390148, 28.284519, 23.006277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.958817, 28.421597, 22.499985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195549, 28.741245, 22.542213>,  <33.337589, 28.933035, 22.567551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195549, 28.741245, 22.542213>,  <32.958817, 28.421597, 22.499985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.195549, 28.741245, 22.542213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069433, 0.079944, -0.994378,
		-0.803067, 0.595832, -0.008172,
		0.591829, 0.799120, 0.105571,
		33.373096, 28.980982, 22.573885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.656944, 28.979727, 21.986057>,  <32.958817, 28.421597, 22.499985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.656944, 28.979727, 21.986057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.019901, 29.121120, 22.077002>,  <33.237675, 29.205957, 22.131569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.019901, 29.121120, 22.077002>,  <32.656944, 28.979727, 21.986057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.019901, 29.121120, 22.077002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201936, 0.107756, -0.973453,
		-0.368601, 0.929213, 0.026395,
		0.907389, 0.353486, 0.227361,
		33.292118, 29.227165, 22.145210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.715889, 29.678232, 21.782892>,  <32.656944, 28.979727, 21.986057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.715889, 29.678232, 21.782892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091835, 29.542772, 21.765135>,  <33.317402, 29.461496, 21.754480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091835, 29.542772, 21.765135>,  <32.715889, 29.678232, 21.782892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091835, 29.542772, 21.765135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011249, 0.160604, -0.986955,
		0.341364, 0.927104, 0.154756,
		0.939864, -0.338651, -0.044395,
		33.373795, 29.441177, 21.751816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.000683, 30.117167, 21.366249>,  <32.715889, 29.678232, 21.782892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.000683, 30.117167, 21.366249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291801, 29.843058, 21.376951>,  <33.466473, 29.678593, 21.383373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291801, 29.843058, 21.376951>,  <33.000683, 30.117167, 21.366249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291801, 29.843058, 21.376951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126607, 0.095913, -0.987305,
		0.674008, 0.721943, 0.156565,
		0.727794, -0.685273, 0.026757,
		33.510139, 29.637476, 21.384977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.550369, 30.406769, 20.916010>,  <33.000683, 30.117167, 21.366249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.550369, 30.406769, 20.916010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604832, 30.010687, 20.928408>,  <33.637508, 29.773039, 20.935846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604832, 30.010687, 20.928408>,  <33.550369, 30.406769, 20.916010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.604832, 30.010687, 20.928408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352962, 0.019255, -0.935439,
		0.925678, 0.138304, 0.352126,
		0.136155, -0.990203, 0.030992,
		33.645679, 29.713627, 20.937706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.295162, 30.279026, 20.745285>,  <33.550369, 30.406769, 20.916010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.295162, 30.279026, 20.745285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.094643, 29.945551, 20.652626>,  <33.974331, 29.745466, 20.597031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.094643, 29.945551, 20.652626>,  <34.295162, 30.279026, 20.745285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.094643, 29.945551, 20.652626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360492, 0.042147, -0.931810,
		0.786603, -0.550623, 0.279410,
		-0.501299, -0.833689, -0.231648,
		33.944252, 29.695444, 20.583132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.695732, 29.985886, 20.310041>,  <34.295162, 30.279026, 20.745285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.695732, 29.985886, 20.310041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.353462, 29.787228, 20.251846>,  <34.148102, 29.668034, 20.216928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.353462, 29.787228, 20.251846>,  <34.695732, 29.985886, 20.310041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.353462, 29.787228, 20.251846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180961, -0.023758, -0.983203,
		0.484844, -0.867630, 0.110203,
		-0.855675, -0.496643, -0.145488,
		34.096760, 29.638235, 20.208200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785141, 29.599997, 19.820547>,  <34.695732, 29.985886, 20.310041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.785141, 29.599997, 19.820547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.386765, 29.580845, 19.790068>,  <34.147739, 29.569355, 19.771780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.386765, 29.580845, 19.790068>,  <34.785141, 29.599997, 19.820547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.386765, 29.580845, 19.790068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074042, 0.045349, -0.996224,
		0.051176, -0.997822, -0.041619,
		-0.995941, -0.047901, -0.076201,
		34.087982, 29.566483, 19.767208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681973, 29.173450, 19.256470>,  <34.785141, 29.599997, 19.820547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681973, 29.173450, 19.256470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.358696, 29.404655, 19.301605>,  <34.164730, 29.543379, 19.328686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.358696, 29.404655, 19.301605>,  <34.681973, 29.173450, 19.256470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358696, 29.404655, 19.301605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028216, 0.153376, -0.987765,
		-0.588249, -0.801483, -0.107647,
		-0.808188, 0.578014, 0.112838,
		34.116241, 29.578060, 19.335457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153763, 28.944571, 18.822315>,  <34.681973, 29.173450, 19.256470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153763, 28.944571, 18.822315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.054947, 29.327662, 18.881277>,  <33.995655, 29.557516, 18.916655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.054947, 29.327662, 18.881277>,  <34.153763, 28.944571, 18.822315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.054947, 29.327662, 18.881277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041003, 0.162318, -0.985886,
		-0.968137, -0.237512, -0.079369,
		-0.247043, 0.957727, 0.147407,
		33.980835, 29.614979, 18.925499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625481, 29.131935, 18.287521>,  <34.153763, 28.944571, 18.822315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625481, 29.131935, 18.287521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.817547, 29.464691, 18.398802>,  <33.932785, 29.664345, 18.465570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.817547, 29.464691, 18.398802>,  <33.625481, 29.131935, 18.287521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.817547, 29.464691, 18.398802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294608, 0.145787, -0.944432,
		-0.826224, 0.535445, -0.175080,
		0.480167, 0.831892, 0.278199,
		33.961597, 29.714258, 18.482262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.550385, 29.513647, 17.734404>,  <33.625481, 29.131935, 18.287521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.550385, 29.513647, 17.734404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834690, 29.713535, 17.932430>,  <34.005276, 29.833469, 18.051247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834690, 29.713535, 17.932430>,  <33.550385, 29.513647, 17.734404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.834690, 29.713535, 17.932430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394102, 0.300067, -0.868702,
		-0.582662, 0.812550, 0.016336,
		0.710766, 0.499722, 0.495065,
		34.047920, 29.863451, 18.080950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004490, 29.940094, 17.211744>,  <33.550385, 29.513647, 17.734404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004490, 29.940094, 17.211744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.194546, 29.846401, 17.551008>,  <34.308578, 29.790186, 17.754566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.194546, 29.846401, 17.551008>,  <34.004490, 29.940094, 17.211744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.194546, 29.846401, 17.551008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068888, -0.951056, -0.301241,
		0.877211, 0.201560, -0.435747,
		0.475138, -0.234234, 0.848162,
		34.337086, 29.776131, 17.805456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.833458, 30.487432, 17.700596>,  <34.004490, 29.940094, 17.211744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.833458, 30.487432, 17.700596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.846634, 30.883253, 17.644444>,  <33.854538, 31.120745, 17.610752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.846634, 30.883253, 17.644444>,  <33.833458, 30.487432, 17.700596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.846634, 30.883253, 17.644444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187807, -0.144084, -0.971581,
		-0.981654, 0.005636, -0.190590,
		0.032937, 0.989549, -0.140382,
		33.856514, 31.180119, 17.602329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.322277, 30.709343, 17.198004>,  <33.833458, 30.487432, 17.700596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.322277, 30.709343, 17.198004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.610023, 30.986811, 17.212576>,  <33.782673, 31.153292, 17.221319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.610023, 30.986811, 17.212576>,  <33.322277, 30.709343, 17.198004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.610023, 30.986811, 17.212576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131783, -0.084795, -0.987645,
		-0.682011, 0.715284, -0.152413,
		0.719370, 0.693671, 0.036431,
		33.825836, 31.194912, 17.223505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.228058, 31.134571, 16.584084>,  <33.322277, 30.709343, 17.198004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.228058, 31.134571, 16.584084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.607861, 31.162262, 16.706491>,  <33.835743, 31.178877, 16.779936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.607861, 31.162262, 16.706491>,  <33.228058, 31.134571, 16.584084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.607861, 31.162262, 16.706491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313217, -0.152295, -0.937391,
		-0.018287, 0.985908, -0.166288,
		0.949505, 0.069226, 0.306018,
		33.892712, 31.183029, 16.798298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.655949, 31.613710, 16.347033>,  <33.228058, 31.134571, 16.584084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.655949, 31.613710, 16.347033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.932961, 31.332546, 16.411924>,  <34.099167, 31.163847, 16.450859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.932961, 31.332546, 16.411924>,  <33.655949, 31.613710, 16.347033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.932961, 31.332546, 16.411924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298272, 0.074245, -0.951589,
		0.656837, 0.707393, 0.261075,
		0.692531, -0.702911, 0.162229,
		34.140720, 31.121674, 16.460592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.346233, 31.884804, 16.167446>,  <33.655949, 31.613710, 16.347033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.346233, 31.884804, 16.167446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.308178, 31.488811, 16.125706>,  <34.285347, 31.251217, 16.100662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.308178, 31.488811, 16.125706>,  <34.346233, 31.884804, 16.167446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308178, 31.488811, 16.125706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269318, 0.075320, -0.960101,
		0.958341, -0.119443, 0.259454,
		-0.095135, -0.989980, -0.104350,
		34.279636, 31.191818, 16.094400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.374710, 32.606739, 16.664083>,  <34.346233, 31.884804, 16.167446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.374710, 32.606739, 16.664083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.747570, 32.678623, 16.789820>,  <34.971287, 32.721752, 16.865261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.747570, 32.678623, 16.789820>,  <34.374710, 32.606739, 16.664083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.747570, 32.678623, 16.789820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319024, -0.818227, -0.478256,
		0.171257, 0.546087, -0.820037,
		0.932145, 0.179706, 0.314342,
		35.027214, 32.732536, 16.884123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.620926, 32.223915, 17.259413>,  <34.374710, 32.606739, 16.664083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.620926, 32.223915, 17.259413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.354637, 31.928854, 17.214355>,  <34.194862, 31.751818, 17.187321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.354637, 31.928854, 17.214355>,  <34.620926, 32.223915, 17.259413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.354637, 31.928854, 17.214355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402687, 0.228052, 0.886474,
		-0.628217, 0.635506, -0.448861,
		-0.665723, -0.737648, -0.112644,
		34.154919, 31.707560, 17.180563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.996952, 32.466816, 17.379271>,  <34.620926, 32.223915, 17.259413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.996952, 32.466816, 17.379271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960400, 32.076115, 17.456829>,  <33.938469, 31.841692, 17.503365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960400, 32.076115, 17.456829>,  <33.996952, 32.466816, 17.379271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960400, 32.076115, 17.456829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196562, 0.208571, 0.958051,
		-0.976224, 0.049431, -0.211052,
		-0.091377, -0.976757, 0.193896,
		33.932987, 31.783087, 17.514997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391171, 32.431374, 17.727163>,  <33.996952, 32.466816, 17.379271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391171, 32.431374, 17.727163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.584553, 32.104435, 17.852524>,  <33.700581, 31.908272, 17.927740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.584553, 32.104435, 17.852524>,  <33.391171, 32.431374, 17.727163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.584553, 32.104435, 17.852524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092695, 0.308207, 0.946793,
		-0.870447, -0.486783, 0.073240,
		0.483455, -0.817344, 0.313400,
		33.729588, 31.859232, 17.946545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.052425, 32.250237, 18.316168>,  <33.391171, 32.431374, 17.727163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.052425, 32.250237, 18.316168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.405285, 32.063507, 18.341089>,  <33.617001, 31.951469, 18.356043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.405285, 32.063507, 18.341089>,  <33.052425, 32.250237, 18.316168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.405285, 32.063507, 18.341089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025428, 0.179310, 0.983464,
		-0.470275, -0.865982, 0.170050,
		0.882154, -0.466823, 0.062305,
		33.669930, 31.923460, 18.359781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.982147, 31.711082, 18.781719>,  <33.052425, 32.250237, 18.316168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.982147, 31.711082, 18.781719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.373207, 31.794989, 18.776165>,  <33.607845, 31.845333, 18.772833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.373207, 31.794989, 18.776165>,  <32.982147, 31.711082, 18.781719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.373207, 31.794989, 18.776165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014013, 0.130921, 0.991294,
		0.209760, -0.968947, 0.130934,
		0.977652, 0.209768, -0.013884,
		33.666504, 31.857918, 18.771999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.278072, 31.444843, 19.419279>,  <32.982147, 31.711082, 18.781719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.278072, 31.444843, 19.419279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.578941, 31.691681, 19.326822>,  <33.759464, 31.839783, 19.271349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.578941, 31.691681, 19.326822>,  <33.278072, 31.444843, 19.419279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.578941, 31.691681, 19.326822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223059, 0.091623, 0.970490,
		0.620060, -0.781538, -0.068732,
		0.752177, 0.617093, -0.231141,
		33.804596, 31.876808, 19.257481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873997, 31.234980, 19.896116>,  <33.278072, 31.444843, 19.419279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873997, 31.234980, 19.896116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.922920, 31.605854, 19.754488>,  <33.952274, 31.828379, 19.669510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.922920, 31.605854, 19.754488>,  <33.873997, 31.234980, 19.896116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.922920, 31.605854, 19.754488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324826, 0.299706, 0.897031,
		0.937831, -0.224730, -0.264516,
		0.122313, 0.927185, -0.354072,
		33.959614, 31.884010, 19.648266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.561001, 31.472090, 20.164572>,  <33.873997, 31.234980, 19.896116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.561001, 31.472090, 20.164572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.393715, 31.811420, 20.034691>,  <34.293343, 32.015018, 19.956762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.393715, 31.811420, 20.034691>,  <34.561001, 31.472090, 20.164572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.393715, 31.811420, 20.034691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161359, 0.421163, 0.892516,
		0.893899, 0.320874, -0.313024,
		-0.418220, 0.848328, -0.324702,
		34.268250, 32.065918, 19.937281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.906601, 31.951292, 20.554874>,  <34.561001, 31.472090, 20.164572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.906601, 31.951292, 20.554874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614212, 32.179684, 20.405390>,  <34.438778, 32.316719, 20.315699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614212, 32.179684, 20.405390>,  <34.906601, 31.951292, 20.554874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614212, 32.179684, 20.405390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034788, 0.515747, 0.856034,
		0.681518, 0.638739, -0.357135,
		-0.730974, 0.570979, -0.373712,
		34.394920, 32.350979, 20.293276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.073742, 32.708675, 20.565886>,  <34.906601, 31.951292, 20.554874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.073742, 32.708675, 20.565886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.678379, 32.674469, 20.616068>,  <34.441162, 32.653946, 20.646177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.678379, 32.674469, 20.616068>,  <35.073742, 32.708675, 20.565886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.678379, 32.674469, 20.616068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041556, 0.642365, 0.765271,
		-0.146035, 0.761612, -0.631364,
		-0.988406, -0.085519, 0.125457,
		34.381859, 32.648811, 20.653706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861004, 33.392780, 20.789198>,  <35.073742, 32.708675, 20.565886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.861004, 33.392780, 20.789198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556843, 33.151577, 20.885662>,  <34.374344, 33.006855, 20.943541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556843, 33.151577, 20.885662>,  <34.861004, 33.392780, 20.789198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556843, 33.151577, 20.885662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164715, 0.538260, 0.826526,
		-0.628214, 0.588772, -0.508621,
		-0.760406, -0.603012, 0.241163,
		34.328720, 32.970673, 20.958012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351982, 33.850910, 21.085489>,  <34.861004, 33.392780, 20.789198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351982, 33.850910, 21.085489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.222164, 33.500084, 21.227150>,  <34.144272, 33.289589, 21.312147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.222164, 33.500084, 21.227150>,  <34.351982, 33.850910, 21.085489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.222164, 33.500084, 21.227150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293585, 0.449336, 0.843745,
		-0.899154, 0.169861, -0.403324,
		-0.324548, -0.877066, 0.354154,
		34.124802, 33.236965, 21.333397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654270, 33.996494, 21.484514>,  <34.351982, 33.850910, 21.085489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654270, 33.996494, 21.484514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.753613, 33.627102, 21.601477>,  <33.813217, 33.405468, 21.671654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.753613, 33.627102, 21.601477>,  <33.654270, 33.996494, 21.484514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.753613, 33.627102, 21.601477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212752, 0.242490, 0.946538,
		-0.945015, -0.297292, -0.136248,
		0.248360, -0.923480, 0.292406,
		33.828121, 33.350060, 21.689199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.145462, 33.786579, 22.029591>,  <33.654270, 33.996494, 21.484514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.145462, 33.786579, 22.029591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473866, 33.562122, 22.071671>,  <33.670906, 33.427448, 22.096918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473866, 33.562122, 22.071671>,  <33.145462, 33.786579, 22.029591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.473866, 33.562122, 22.071671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131530, -0.006601, 0.991290,
		-0.555559, -0.827694, -0.079227,
		0.821007, -0.561141, 0.105199,
		33.720169, 33.393780, 22.103230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.901875, 33.326473, 22.487265>,  <33.145462, 33.786579, 22.029591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.901875, 33.326473, 22.487265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301228, 33.329018, 22.509878>,  <33.540840, 33.330544, 22.523447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301228, 33.329018, 22.509878>,  <32.901875, 33.326473, 22.487265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301228, 33.329018, 22.509878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056520, -0.002610, 0.998398,
		0.006533, -0.999976, -0.002244,
		0.998380, 0.006396, 0.056535,
		33.600742, 33.330929, 22.526838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.097733, 32.761559, 22.890186>,  <32.901875, 33.326473, 22.487265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.097733, 32.761559, 22.890186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432709, 32.978313, 22.918629>,  <33.633694, 33.108368, 22.935694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432709, 32.978313, 22.918629>,  <33.097733, 32.761559, 22.890186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.432709, 32.978313, 22.918629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044455, -0.062138, 0.997077,
		0.544720, -0.838152, -0.027947,
		0.837438, 0.541886, 0.071108,
		33.683941, 33.140881, 22.939960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416096, 32.498737, 23.574289>,  <33.097733, 32.761559, 22.890186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416096, 32.498737, 23.574289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.536438, 32.861420, 23.456060>,  <33.608643, 33.079029, 23.385122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.536438, 32.861420, 23.456060>,  <33.416096, 32.498737, 23.574289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.536438, 32.861420, 23.456060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010663, 0.306714, 0.951742,
		0.953609, -0.289491, 0.082609,
		0.300858, 0.906709, -0.295573,
		33.626694, 33.133430, 23.367388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029709, 32.476528, 23.882668>,  <33.416096, 32.498737, 23.574289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029709, 32.476528, 23.882668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.899677, 32.850147, 23.823500>,  <33.821659, 33.074318, 23.787998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.899677, 32.850147, 23.823500>,  <34.029709, 32.476528, 23.882668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.899677, 32.850147, 23.823500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042756, 0.170772, 0.984382,
		0.944721, 0.313674, -0.095450,
		-0.325075, 0.934048, -0.147921,
		33.802155, 33.130363, 23.779123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466377, 32.836826, 24.309711>,  <34.029709, 32.476528, 23.882668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466377, 32.836826, 24.309711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.164993, 33.086895, 24.228266>,  <33.984161, 33.236938, 24.179399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.164993, 33.086895, 24.228266>,  <34.466377, 32.836826, 24.309711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.164993, 33.086895, 24.228266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106871, 0.422009, 0.900271,
		0.648752, 0.656557, -0.384779,
		-0.753459, 0.625174, -0.203613,
		33.938957, 33.274448, 24.167183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.632824, 33.396034, 24.688471>,  <34.466377, 32.836826, 24.309711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.632824, 33.396034, 24.688471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.260654, 33.509686, 24.595873>,  <34.037354, 33.577877, 24.540314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.260654, 33.509686, 24.595873>,  <34.632824, 33.396034, 24.688471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260654, 33.509686, 24.595873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044826, 0.538674, 0.841321,
		0.363742, 0.793159, -0.488457,
		-0.930420, 0.284128, -0.231493,
		33.981529, 33.594925, 24.526424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621990, 34.017574, 24.911682>,  <34.632824, 33.396034, 24.688471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621990, 34.017574, 24.911682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.235355, 33.920506, 24.878660>,  <34.003372, 33.862263, 24.858847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.235355, 33.920506, 24.878660>,  <34.621990, 34.017574, 24.911682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.235355, 33.920506, 24.878660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196073, 0.492516, 0.847929,
		-0.165109, 0.835786, -0.523642,
		-0.966589, -0.242673, -0.082556,
		33.945377, 33.847702, 24.853893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206341, 34.575195, 25.161572>,  <34.621990, 34.017574, 24.911682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206341, 34.575195, 25.161572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.947243, 34.274063, 25.208332>,  <33.791782, 34.093384, 25.236387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.947243, 34.274063, 25.208332>,  <34.206341, 34.575195, 25.161572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.947243, 34.274063, 25.208332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231476, 0.340663, 0.911245,
		-0.725839, 0.563196, -0.394926,
		-0.647747, -0.752834, 0.116900,
		33.752918, 34.048214, 25.243402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.488720, 34.838474, 25.434389>,  <34.206341, 34.575195, 25.161572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.488720, 34.838474, 25.434389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.498474, 34.451630, 25.535664>,  <33.504326, 34.219524, 25.596428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.498474, 34.451630, 25.535664>,  <33.488720, 34.838474, 25.434389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.498474, 34.451630, 25.535664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380003, 0.225287, 0.897131,
		-0.924664, -0.118087, -0.362012,
		0.024383, -0.967110, 0.253188,
		33.505791, 34.161495, 25.611620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.921928, 34.743252, 25.772951>,  <33.488720, 34.838474, 25.434389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.921928, 34.743252, 25.772951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.093777, 34.392967, 25.861088>,  <33.196888, 34.182796, 25.913969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.093777, 34.392967, 25.861088>,  <32.921928, 34.743252, 25.772951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.093777, 34.392967, 25.861088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429747, 0.016323, 0.902802,
		-0.794191, -0.482557, -0.369323,
		0.429625, -0.875713, 0.220341,
		33.222664, 34.130253, 25.927191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.429832, 34.321575, 25.989546>,  <32.921928, 34.743252, 25.772951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.429832, 34.321575, 25.989546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.749893, 34.133244, 26.138178>,  <32.941929, 34.020245, 26.227358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.749893, 34.133244, 26.138178>,  <32.429832, 34.321575, 25.989546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.749893, 34.133244, 26.138178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445630, -0.052015, 0.893705,
		-0.401454, -0.880690, -0.251435,
		0.800156, -0.470828, 0.371580,
		32.989941, 33.991997, 26.249653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.195507, 33.777443, 26.401766>,  <32.429832, 34.321575, 25.989546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.195507, 33.777443, 26.401766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.564251, 33.870987, 26.525372>,  <32.785496, 33.927113, 26.599535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.564251, 33.870987, 26.525372>,  <32.195507, 33.777443, 26.401766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.564251, 33.870987, 26.525372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301542, -0.068006, 0.951025,
		0.243424, -0.969888, 0.007828,
		0.921855, 0.233863, 0.309016,
		32.840809, 33.941147, 26.618076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.266163, 33.322098, 27.011847>,  <32.195507, 33.777443, 26.401766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.266163, 33.322098, 27.011847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545250, 33.600937, 27.077875>,  <32.712704, 33.768238, 27.117493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545250, 33.600937, 27.077875>,  <32.266163, 33.322098, 27.011847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.545250, 33.600937, 27.077875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147606, -0.085589, 0.985336,
		0.701001, -0.711852, 0.043178,
		0.697718, 0.697095, 0.165072,
		32.754566, 33.810066, 27.127398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.668228, 33.068676, 27.444527>,  <32.266163, 33.322098, 27.011847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.668228, 33.068676, 27.444527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746799, 33.457726, 27.494202>,  <32.793941, 33.691154, 27.524006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746799, 33.457726, 27.494202>,  <32.668228, 33.068676, 27.444527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.746799, 33.457726, 27.494202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159741, -0.093218, 0.982748,
		0.967420, -0.212872, 0.137057,
		0.196424, 0.972623, 0.124185,
		32.805725, 33.749512, 27.531458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.262688, 33.085712, 27.943352>,  <32.668228, 33.068676, 27.444527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.262688, 33.085712, 27.943352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115658, 33.457684, 27.947838>,  <33.027439, 33.680866, 27.950529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115658, 33.457684, 27.947838>,  <33.262688, 33.085712, 27.943352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.115658, 33.457684, 27.947838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114050, -0.057043, 0.991836,
		0.922974, 0.363296, 0.127026,
		-0.367576, 0.929926, 0.011215,
		33.005386, 33.736660, 27.951202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.641819, 33.389771, 28.528664>,  <33.262688, 33.085712, 27.943352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.641819, 33.389771, 28.528664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.323055, 33.622288, 28.462908>,  <33.131798, 33.761799, 28.423454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.323055, 33.622288, 28.462908>,  <33.641819, 33.389771, 28.528664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.323055, 33.622288, 28.462908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148054, 0.075883, 0.986064,
		0.585669, 0.810146, 0.025591,
		-0.796914, 0.581296, -0.164388,
		33.083981, 33.796677, 28.413591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726925, 34.119564, 28.880325>,  <33.641819, 33.389771, 28.528664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726925, 34.119564, 28.880325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.333710, 34.082588, 28.816973>,  <33.097778, 34.060402, 28.778961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.333710, 34.082588, 28.816973>,  <33.726925, 34.119564, 28.880325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.333710, 34.082588, 28.816973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169208, 0.124261, 0.977716,
		-0.070697, 0.987934, -0.137795,
		-0.983041, -0.092438, -0.158382,
		33.038795, 34.054855, 28.769459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455875, 34.556801, 29.347895>,  <33.726925, 34.119564, 28.880325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.455875, 34.556801, 29.347895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115337, 34.361713, 29.270596>,  <32.911015, 34.244659, 29.224216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115337, 34.361713, 29.270596>,  <33.455875, 34.556801, 29.347895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.115337, 34.361713, 29.270596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252347, 0.057767, 0.965911,
		-0.459931, 0.871086, -0.172254,
		-0.851343, -0.487720, -0.193247,
		32.859936, 34.215397, 29.212622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.955708, 34.962963, 29.683020>,  <33.455875, 34.556801, 29.347895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.955708, 34.962963, 29.683020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823399, 34.588436, 29.635857>,  <32.744011, 34.363720, 29.607559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823399, 34.588436, 29.635857>,  <32.955708, 34.962963, 29.683020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823399, 34.588436, 29.635857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133002, -0.077438, 0.988086,
		-0.934290, 0.342517, -0.098917,
		-0.330776, -0.936315, -0.117905,
		32.724167, 34.307541, 29.600485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.299549, 34.933372, 30.083897>,  <32.955708, 34.962963, 29.683020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.299549, 34.933372, 30.083897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.431347, 34.557907, 30.043217>,  <32.510426, 34.332626, 30.018808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.431347, 34.557907, 30.043217>,  <32.299549, 34.933372, 30.083897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.431347, 34.557907, 30.043217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242977, -0.188386, 0.951563,
		-0.912358, -0.288823, -0.290146,
		0.329493, -0.938664, -0.101698,
		32.530193, 34.276306, 30.012707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.838371, 34.556290, 30.459236>,  <32.299549, 34.933372, 30.083897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.838371, 34.556290, 30.459236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.149406, 34.307045, 30.425562>,  <32.336029, 34.157497, 30.405357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.149406, 34.307045, 30.425562>,  <31.838371, 34.556290, 30.459236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.149406, 34.307045, 30.425562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070990, -0.220036, 0.972905,
		-0.624755, -0.750542, -0.215332,
		0.777587, -0.623114, -0.084188,
		32.382683, 34.120110, 30.400305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.651464, 33.872437, 30.834400>,  <31.838371, 34.556290, 30.459236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.651464, 33.872437, 30.834400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.049133, 33.894077, 30.797100>,  <32.287735, 33.907063, 30.774721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.049133, 33.894077, 30.797100>,  <31.651464, 33.872437, 30.834400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.049133, 33.894077, 30.797100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097982, -0.092666, 0.990865,
		0.044970, -0.994226, -0.097428,
		0.994172, 0.054105, -0.093249,
		32.347385, 33.910309, 30.769125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.878551, 33.278870, 31.126118>,  <31.651464, 33.872437, 30.834400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.878551, 33.278870, 31.126118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.188293, 33.531685, 31.138090>,  <32.374138, 33.683376, 31.145273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.188293, 33.531685, 31.138090>,  <31.878551, 33.278870, 31.126118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.188293, 33.531685, 31.138090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071163, -0.133994, 0.988424,
		0.628736, -0.763262, -0.148737,
		0.774356, 0.632042, 0.029931,
		32.420601, 33.721298, 31.147070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.387356, 32.969448, 31.567162>,  <31.878551, 33.278870, 31.126118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.387356, 32.969448, 31.567162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459789, 33.362797, 31.561764>,  <32.503250, 33.598808, 31.558525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459789, 33.362797, 31.561764>,  <32.387356, 32.969448, 31.567162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.459789, 33.362797, 31.561764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234980, -0.029939, 0.971539,
		0.954984, -0.179096, -0.236495,
		0.181079, 0.983376, -0.013492,
		32.514114, 33.657810, 31.557716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.905437, 33.014961, 32.030804>,  <32.387356, 32.969448, 31.567162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.905437, 33.014961, 32.030804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.763344, 33.386501, 31.988756>,  <32.678089, 33.609425, 31.963528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.763344, 33.386501, 31.988756>,  <32.905437, 33.014961, 32.030804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.763344, 33.386501, 31.988756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158727, 0.170754, 0.972445,
		0.921203, 0.328761, -0.208091,
		-0.355234, 0.928848, -0.105116,
		32.656773, 33.665157, 31.957222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325588, 33.435616, 32.292671>,  <32.905437, 33.014961, 32.030804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325588, 33.435616, 32.292671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.008835, 33.679489, 32.278824>,  <32.818783, 33.825813, 32.270515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.008835, 33.679489, 32.278824>,  <33.325588, 33.435616, 32.292671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.008835, 33.679489, 32.278824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228776, 0.348753, 0.908864,
		0.566197, 0.711796, -0.415654,
		-0.791886, 0.609687, -0.034621,
		32.771271, 33.862396, 32.268436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.579350, 34.096745, 32.423351>,  <33.325588, 33.435616, 32.292671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.579350, 34.096745, 32.423351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.196426, 34.037544, 32.522675>,  <32.966671, 34.002026, 32.582268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.196426, 34.037544, 32.522675>,  <33.579350, 34.096745, 32.423351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196426, 34.037544, 32.522675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247170, 0.026332, 0.968614,
		-0.149891, 0.988637, 0.011373,
		-0.957309, -0.147998, 0.248308,
		32.909233, 33.993145, 32.597168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900814, 34.484112, 31.871618>,  <33.579350, 34.096745, 32.423351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900814, 34.484112, 31.871618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.204456, 34.530399, 32.127857>,  <34.386642, 34.558174, 32.281601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.204456, 34.530399, 32.127857>,  <33.900814, 34.484112, 31.871618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.204456, 34.530399, 32.127857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605964, 0.233909, -0.760325,
		-0.237827, 0.965347, 0.107440,
		0.759109, 0.115721, 0.640595,
		34.432190, 34.565117, 32.320034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.225040, 35.174019, 31.732061>,  <33.900814, 34.484112, 31.871618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.225040, 35.174019, 31.732061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.504082, 34.959702, 31.922335>,  <34.671505, 34.831112, 32.036499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.504082, 34.959702, 31.922335>,  <34.225040, 35.174019, 31.732061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.504082, 34.959702, 31.922335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625415, 0.131442, -0.769142,
		0.349577, 0.834055, 0.426789,
		0.697604, -0.535794, 0.475681,
		34.713364, 34.798962, 32.065041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856506, 35.538086, 31.552744>,  <34.225040, 35.174019, 31.732061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856506, 35.538086, 31.552744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.986275, 35.181049, 31.677984>,  <35.064137, 34.966827, 31.753128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.986275, 35.181049, 31.677984>,  <34.856506, 35.538086, 31.552744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.986275, 35.181049, 31.677984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646250, -0.032559, -0.762431,
		0.690733, 0.449692, 0.566273,
		0.324422, -0.892590, 0.313103,
		35.083603, 34.913273, 31.771915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611839, 35.585922, 31.489117>,  <34.856506, 35.538086, 31.552744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611839, 35.585922, 31.489117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517601, 35.197937, 31.464884>,  <35.461060, 34.965145, 31.450344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517601, 35.197937, 31.464884>,  <35.611839, 35.585922, 31.489117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517601, 35.197937, 31.464884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500565, -0.067677, -0.863049,
		0.833025, -0.233653, 0.501473,
		-0.235593, -0.969962, -0.060582,
		35.446922, 34.906948, 31.446709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193855, 35.209339, 31.268942>,  <35.611839, 35.585922, 31.489117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193855, 35.209339, 31.268942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.891762, 34.959648, 31.188974>,  <35.710506, 34.809834, 31.140993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.891762, 34.959648, 31.188974>,  <36.193855, 35.209339, 31.268942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.891762, 34.959648, 31.188974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398342, -0.194890, -0.896293,
		0.520527, -0.756546, 0.395842,
		-0.755232, -0.624225, -0.199919,
		35.665192, 34.772381, 31.129000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.496628, 34.707607, 31.015549>,  <36.193855, 35.209339, 31.268942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.496628, 34.707607, 31.015549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.123405, 34.701859, 30.871767>,  <35.899471, 34.698410, 30.785498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.123405, 34.701859, 30.871767>,  <36.496628, 34.707607, 31.015549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.123405, 34.701859, 30.871767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358755, -0.111148, -0.926791,
		-0.026633, -0.993700, 0.108863,
		-0.933052, -0.014372, -0.359455,
		35.843491, 34.697548, 30.763931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406929, 34.078529, 30.506601>,  <36.496628, 34.707607, 31.015549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406929, 34.078529, 30.506601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.121082, 34.337322, 30.400213>,  <35.949574, 34.492599, 30.336380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.121082, 34.337322, 30.400213>,  <36.406929, 34.078529, 30.506601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.121082, 34.337322, 30.400213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159853, -0.219122, -0.962514,
		-0.681009, -0.730342, 0.053166,
		-0.714614, 0.646982, -0.265972,
		35.906696, 34.531418, 30.320421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.167847, 33.773064, 29.900162>,  <36.406929, 34.078529, 30.506601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.167847, 33.773064, 29.900162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010239, 34.140705, 29.899527>,  <35.915672, 34.361290, 29.899145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010239, 34.140705, 29.899527>,  <36.167847, 33.773064, 29.900162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010239, 34.140705, 29.899527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173094, -0.075900, -0.981977,
		-0.902656, -0.386644, 0.188997,
		-0.394020, 0.919101, -0.001586,
		35.892033, 34.416435, 29.899052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614487, 33.776207, 29.385149>,  <36.167847, 33.773064, 29.900162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614487, 33.776207, 29.385149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.727032, 34.157726, 29.427305>,  <35.794559, 34.386639, 29.452599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.727032, 34.157726, 29.427305>,  <35.614487, 33.776207, 29.385149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.727032, 34.157726, 29.427305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019872, 0.115595, -0.993098,
		-0.959397, 0.277324, 0.051477,
		0.281360, 0.953797, 0.105390,
		35.811440, 34.443867, 29.458921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248924, 33.991196, 28.854345>,  <35.614487, 33.776207, 29.385149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248924, 33.991196, 28.854345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.536053, 34.261707, 28.920544>,  <35.708328, 34.424015, 28.960262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.536053, 34.261707, 28.920544>,  <35.248924, 33.991196, 28.854345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536053, 34.261707, 28.920544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149969, 0.081935, -0.985290,
		-0.679888, 0.732078, -0.042606,
		0.717818, 0.676276, 0.165495,
		35.751396, 34.464592, 28.970192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139820, 34.439999, 28.328766>,  <35.248924, 33.991196, 28.854345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.139820, 34.439999, 28.328766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507748, 34.536465, 28.452553>,  <35.728504, 34.594345, 28.526825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507748, 34.536465, 28.452553>,  <35.139820, 34.439999, 28.328766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507748, 34.536465, 28.452553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212023, 0.358128, -0.909280,
		-0.330119, 0.901988, 0.278280,
		0.919819, 0.241169, 0.309467,
		35.783695, 34.608814, 28.545393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.201138, 35.095299, 28.121376>,  <35.139820, 34.439999, 28.328766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.201138, 35.095299, 28.121376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.571445, 34.950287, 28.164316>,  <35.793629, 34.863281, 28.190081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.571445, 34.950287, 28.164316>,  <35.201138, 35.095299, 28.121376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.571445, 34.950287, 28.164316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232891, 0.323118, -0.917255,
		0.297842, 0.874168, 0.383562,
		0.925771, -0.362525, 0.107348,
		35.849178, 34.841530, 28.196520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600704, 35.563969, 27.794830>,  <35.201138, 35.095299, 28.121376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600704, 35.563969, 27.794830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.831127, 35.237045, 27.800032>,  <35.969379, 35.040890, 27.803152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.831127, 35.237045, 27.800032>,  <35.600704, 35.563969, 27.794830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.831127, 35.237045, 27.800032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357406, 0.237536, -0.903237,
		0.735134, 0.524962, 0.428945,
		0.576055, -0.817308, 0.013004,
		36.003944, 34.991852, 27.803932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.236282, 35.837765, 27.629114>,  <35.600704, 35.563969, 27.794830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.236282, 35.837765, 27.629114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.245590, 35.443668, 27.561279>,  <36.251175, 35.207211, 27.520578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.245590, 35.443668, 27.561279>,  <36.236282, 35.837765, 27.629114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.245590, 35.443668, 27.561279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489331, 0.159152, -0.857453,
		0.871788, -0.063030, 0.485812,
		0.023272, -0.985240, -0.169589,
		36.252571, 35.148098, 27.510403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928284, 35.663670, 27.444380>,  <36.236282, 35.837765, 27.629114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928284, 35.663670, 27.444380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.686035, 35.383984, 27.292419>,  <36.540688, 35.216171, 27.201244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.686035, 35.383984, 27.292419>,  <36.928284, 35.663670, 27.444380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.686035, 35.383984, 27.292419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471389, 0.069394, -0.879191,
		0.641105, -0.711537, 0.287575,
		-0.605621, -0.699214, -0.379899,
		36.504349, 35.174221, 27.178450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290676, 35.400616, 26.857016>,  <36.928284, 35.663670, 27.444380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290676, 35.400616, 26.857016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.925785, 35.263981, 26.766548>,  <36.706848, 35.181999, 26.712267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.925785, 35.263981, 26.766548>,  <37.290676, 35.400616, 26.857016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.925785, 35.263981, 26.766548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205240, 0.096736, -0.973919,
		0.354555, -0.934859, -0.018139,
		-0.912232, -0.341585, -0.226169,
		36.652115, 35.161507, 26.698698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349667, 34.856850, 26.320560>,  <37.290676, 35.400616, 26.857016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349667, 34.856850, 26.320560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.960232, 34.940739, 26.284445>,  <36.726570, 34.991074, 26.262775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.960232, 34.940739, 26.284445>,  <37.349667, 34.856850, 26.320560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.960232, 34.940739, 26.284445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105807, 0.063972, -0.992327,
		-0.202341, -0.975665, -0.084472,
		-0.973583, 0.209726, -0.090288,
		36.668156, 35.003654, 26.257359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024208, 34.357292, 25.902885>,  <37.349667, 34.856850, 26.320560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.024208, 34.357292, 25.902885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.759796, 34.655598, 25.869707>,  <36.601151, 34.834579, 25.849800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.759796, 34.655598, 25.869707>,  <37.024208, 34.357292, 25.902885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.759796, 34.655598, 25.869707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110933, -0.206451, -0.972148,
		-0.742116, -0.633416, 0.219199,
		-0.661028, 0.745763, -0.082944,
		36.561489, 34.879326, 25.844824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.495899, 34.030216, 25.501032>,  <37.024208, 34.357292, 25.902885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.495899, 34.030216, 25.501032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.409756, 34.416748, 25.444704>,  <36.358070, 34.648666, 25.410908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.409756, 34.416748, 25.444704>,  <36.495899, 34.030216, 25.501032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409756, 34.416748, 25.444704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246352, -0.193303, -0.949708,
		-0.944949, -0.169840, 0.279687,
		-0.215363, 0.966327, -0.140821,
		36.345146, 34.706646, 25.402458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825657, 34.005432, 25.264713>,  <36.495899, 34.030216, 25.501032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.825657, 34.005432, 25.264713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.999523, 34.335594, 25.120623>,  <36.103844, 34.533691, 25.034168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.999523, 34.335594, 25.120623>,  <35.825657, 34.005432, 25.264713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.999523, 34.335594, 25.120623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273181, -0.260301, -0.926075,
		-0.858158, 0.500943, 0.112341,
		0.434668, 0.825408, -0.360228,
		36.129925, 34.583218, 25.012554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331768, 34.236027, 24.896610>,  <35.825657, 34.005432, 25.264713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.331768, 34.236027, 24.896610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.655586, 34.438885, 24.778322>,  <35.849876, 34.560600, 24.707350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.655586, 34.438885, 24.778322>,  <35.331768, 34.236027, 24.896610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.655586, 34.438885, 24.778322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086414, -0.395298, -0.914479,
		-0.580668, 0.765863, -0.276186,
		0.809541, 0.507143, -0.295718,
		35.898449, 34.591026, 24.689608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199070, 34.498287, 24.188845>,  <35.331768, 34.236027, 24.896610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199070, 34.498287, 24.188845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.593830, 34.488461, 24.252625>,  <35.830685, 34.482563, 24.290892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.593830, 34.488461, 24.252625>,  <35.199070, 34.498287, 24.188845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.593830, 34.488461, 24.252625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142981, -0.324596, -0.934983,
		0.074725, 0.945534, -0.316832,
		0.986901, -0.024565, 0.159449,
		35.889900, 34.481091, 24.300459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504776, 34.847507, 23.603140>,  <35.199070, 34.498287, 24.188845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.504776, 34.847507, 23.603140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798580, 34.614639, 23.742615>,  <35.974861, 34.474918, 23.826300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798580, 34.614639, 23.742615>,  <35.504776, 34.847507, 23.603140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798580, 34.614639, 23.742615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175758, -0.333094, -0.926368,
		0.655445, 0.741708, -0.142340,
		0.734507, -0.582166, 0.348686,
		36.018932, 34.439991, 23.847221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203819, 35.021358, 23.312519>,  <35.504776, 34.847507, 23.603140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.203819, 35.021358, 23.312519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.201508, 34.640186, 23.433773>,  <36.200119, 34.411484, 23.506525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.201508, 34.640186, 23.433773>,  <36.203819, 35.021358, 23.312519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201508, 34.640186, 23.433773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413842, -0.278243, -0.866785,
		0.910330, 0.120439, 0.395971,
		-0.005782, -0.952930, 0.303136,
		36.199772, 34.354309, 23.524714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773594, 34.711945, 22.946911>,  <36.203819, 35.021358, 23.312519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773594, 34.711945, 22.946911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.585323, 34.385353, 23.080669>,  <36.472363, 34.189396, 23.160925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.585323, 34.385353, 23.080669>,  <36.773594, 34.711945, 22.946911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.585323, 34.385353, 23.080669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240391, -0.483338, -0.841781,
		0.848925, -0.315822, 0.423772,
		-0.470678, -0.816480, 0.334397,
		36.444118, 34.140408, 23.180988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238907, 34.099426, 22.740225>,  <36.773594, 34.711945, 22.946911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238907, 34.099426, 22.740225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.880520, 33.939384, 22.817327>,  <36.665489, 33.843357, 22.863590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.880520, 33.939384, 22.817327>,  <37.238907, 34.099426, 22.740225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880520, 33.939384, 22.817327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141830, -0.669070, -0.729541,
		0.420865, -0.626305, 0.656212,
		-0.895967, -0.400109, 0.192759,
		36.611729, 33.819351, 22.875154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389515, 33.459045, 22.509274>,  <37.238907, 34.099426, 22.740225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.389515, 33.459045, 22.509274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.997768, 33.447300, 22.589252>,  <36.762722, 33.440254, 22.637239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.997768, 33.447300, 22.589252>,  <37.389515, 33.459045, 22.509274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.997768, 33.447300, 22.589252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098020, -0.796196, -0.597046,
		0.176729, -0.604326, 0.776890,
		-0.979366, -0.029364, 0.199947,
		36.703957, 33.438492, 22.649237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264210, 32.786858, 22.856453>,  <37.389515, 33.459045, 22.509274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264210, 32.786858, 22.856453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.961773, 32.952709, 22.653906>,  <36.780312, 33.052219, 22.532377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.961773, 32.952709, 22.653906>,  <37.264210, 32.786858, 22.856453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961773, 32.952709, 22.653906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021846, -0.789268, -0.613660,
		-0.654103, -0.452920, 0.605816,
		-0.756090, 0.414631, -0.506368,
		36.734947, 33.077099, 22.501995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829075, 32.247093, 22.772976>,  <37.264210, 32.786858, 22.856453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.829075, 32.247093, 22.772976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.706394, 32.507626, 22.495356>,  <36.632786, 32.663944, 22.328783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.706394, 32.507626, 22.495356>,  <36.829075, 32.247093, 22.772976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706394, 32.507626, 22.495356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055430, -0.715734, -0.696170,
		-0.950189, -0.251991, 0.183417,
		-0.306706, 0.651326, -0.694050,
		36.614384, 32.703022, 22.287140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.155712, 32.082626, 22.441008>,  <36.829075, 32.247093, 22.772976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.155712, 32.082626, 22.441008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.371029, 32.296303, 22.180275>,  <36.500217, 32.424507, 22.023836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.371029, 32.296303, 22.180275>,  <36.155712, 32.082626, 22.441008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371029, 32.296303, 22.180275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144976, -0.703223, -0.696031,
		-0.830197, 0.469165, -0.301091,
		0.538288, 0.534192, -0.651832,
		36.532516, 32.456562, 21.984726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.838360, 31.907921, 21.807318>,  <36.155712, 32.082626, 22.441008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.838360, 31.907921, 21.807318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.182735, 32.058292, 21.670223>,  <36.389359, 32.148518, 21.587967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.182735, 32.058292, 21.670223>,  <35.838360, 31.907921, 21.807318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.182735, 32.058292, 21.670223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026522, -0.705980, -0.707735,
		-0.508023, 0.600224, -0.617773,
		0.860935, 0.375930, -0.342735,
		36.441017, 32.171070, 21.567402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733036, 31.913889, 21.157637>,  <35.838360, 31.907921, 21.807318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733036, 31.913889, 21.157637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.129871, 31.963425, 21.165861>,  <36.367973, 31.993145, 21.170795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.129871, 31.963425, 21.165861>,  <35.733036, 31.913889, 21.157637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129871, 31.963425, 21.165861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098196, -0.663507, -0.741698,
		-0.078207, 0.737850, -0.670418,
		0.992089, 0.123838, 0.020563,
		36.427498, 32.000576, 21.172029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912624, 32.046299, 20.402458>,  <35.733036, 31.913889, 21.157637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.912624, 32.046299, 20.402458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.237377, 31.928726, 20.604229>,  <36.432228, 31.858183, 20.725292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.237377, 31.928726, 20.604229>,  <35.912624, 32.046299, 20.402458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.237377, 31.928726, 20.604229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261086, -0.590004, -0.764022,
		0.522183, 0.751997, -0.402275,
		0.811886, -0.293931, 0.504426,
		36.480942, 31.840548, 20.755556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523083, 32.057171, 19.974771>,  <35.912624, 32.046299, 20.402458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523083, 32.057171, 19.974771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.613266, 31.791418, 20.259802>,  <36.667374, 31.631966, 20.430820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.613266, 31.791418, 20.259802>,  <36.523083, 32.057171, 19.974771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.613266, 31.791418, 20.259802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191170, -0.687019, -0.701041,
		0.955313, 0.294277, -0.027882,
		0.225456, -0.664384, 0.712576,
		36.680904, 31.592102, 20.473574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.155331, 31.717602, 19.782454>,  <36.523083, 32.057171, 19.974771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.155331, 31.717602, 19.782454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.972775, 31.476606, 20.044357>,  <36.863239, 31.332008, 20.201500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.972775, 31.476606, 20.044357>,  <37.155331, 31.717602, 19.782454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972775, 31.476606, 20.044357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140932, -0.775527, -0.615383,
		0.878546, -0.188581, 0.438856,
		-0.456394, -0.602491, 0.654759,
		36.835857, 31.295858, 20.240786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652122, 31.154867, 19.873581>,  <37.155331, 31.717602, 19.782454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652122, 31.154867, 19.873581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.289970, 31.037657, 19.996498>,  <37.072681, 30.967331, 20.070248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.289970, 31.037657, 19.996498>,  <37.652122, 31.154867, 19.873581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289970, 31.037657, 19.996498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083795, -0.832779, -0.547228,
		0.416257, -0.469698, 0.778533,
		-0.905378, -0.293025, 0.307291,
		37.018356, 30.949749, 20.088686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771149, 30.462830, 20.136560>,  <37.652122, 31.154867, 19.873581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.771149, 30.462830, 20.136560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.378849, 30.486658, 20.062166>,  <37.143471, 30.500956, 20.017529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.378849, 30.486658, 20.062166>,  <37.771149, 30.462830, 20.136560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378849, 30.486658, 20.062166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050601, -0.842305, -0.536622,
		-0.188624, -0.535700, 0.823071,
		-0.980745, 0.059571, -0.185986,
		37.084625, 30.504530, 20.006371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453117, 29.870371, 20.301794>,  <37.771149, 30.462830, 20.136560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.453117, 29.870371, 20.301794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.167801, 30.006834, 20.056900>,  <36.996613, 30.088711, 19.909964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.167801, 30.006834, 20.056900>,  <37.453117, 29.870371, 20.301794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.167801, 30.006834, 20.056900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082354, -0.826687, -0.556602,
		-0.696014, -0.447439, 0.561572,
		-0.713290, 0.341155, -0.612234,
		36.953815, 30.109180, 19.873230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658043, 29.153551, 20.443346>,  <37.453117, 29.870371, 20.301794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658043, 29.153551, 20.443346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.007927, 29.044031, 20.283384>,  <38.217857, 28.978319, 20.187408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.007927, 29.044031, 20.283384>,  <37.658043, 29.153551, 20.443346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007927, 29.044031, 20.283384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470147, 0.278996, 0.837331,
		-0.117691, -0.920431, 0.372766,
		0.874706, -0.273801, -0.399903,
		38.270340, 28.961891, 20.163414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977623, 28.881649, 20.966513>,  <37.658043, 29.153551, 20.443346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.977623, 28.881649, 20.966513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284241, 28.942846, 20.717035>,  <38.468212, 28.979565, 20.567348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284241, 28.942846, 20.717035>,  <37.977623, 28.881649, 20.966513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284241, 28.942846, 20.717035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569213, 0.287779, 0.770181,
		0.297337, -0.945394, 0.133496,
		0.766542, 0.153016, -0.623698,
		38.514206, 28.988745, 20.529926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468945, 28.515800, 21.266140>,  <37.977623, 28.881649, 20.966513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468945, 28.515800, 21.266140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638397, 28.791128, 21.030600>,  <38.740070, 28.956326, 20.889275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638397, 28.791128, 21.030600>,  <38.468945, 28.515800, 21.266140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638397, 28.791128, 21.030600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593101, 0.280572, 0.754659,
		0.684664, -0.668949, -0.289383,
		0.423636, 0.688321, -0.588852,
		38.765488, 28.997625, 20.853945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161495, 28.585064, 21.478346>,  <38.468945, 28.515800, 21.266140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161495, 28.585064, 21.478346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.106655, 28.922260, 21.270281>,  <39.073750, 29.124578, 21.145441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.106655, 28.922260, 21.270281>,  <39.161495, 28.585064, 21.478346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.106655, 28.922260, 21.270281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451723, 0.520549, 0.724552,
		0.881561, -0.135634, -0.452166,
		-0.137100, 0.842990, -0.520164,
		39.065525, 29.175158, 21.114231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774639, 28.782574, 21.454855>,  <39.161495, 28.585064, 21.478346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.774639, 28.782574, 21.454855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.573837, 29.118336, 21.371529>,  <39.453358, 29.319794, 21.321533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.573837, 29.118336, 21.371529>,  <39.774639, 28.782574, 21.454855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573837, 29.118336, 21.371529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374804, 0.428217, 0.822284,
		0.779434, 0.334709, -0.529578,
		-0.502000, 0.839405, -0.208317,
		39.423237, 29.370157, 21.309034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313290, 29.373394, 21.422539>,  <39.774639, 28.782574, 21.454855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.313290, 29.373394, 21.422539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.952187, 29.535372, 21.480583>,  <39.735527, 29.632559, 21.515409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.952187, 29.535372, 21.480583>,  <40.313290, 29.373394, 21.422539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.952187, 29.535372, 21.480583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288308, 0.319239, 0.902754,
		0.319239, 0.856801, -0.404942,
		-0.902754, 0.404942, 0.145110,
		39.681362, 29.656855, 21.524117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.531582, 29.949736, 21.760368>,  <40.313290, 29.373394, 21.422539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.531582, 29.949736, 21.760368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.138447, 29.932383, 21.832088>,  <39.902565, 29.921970, 21.875120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.138447, 29.932383, 21.832088>,  <40.531582, 29.949736, 21.760368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.138447, 29.932383, 21.832088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160285, 0.280326, 0.946428,
		-0.091319, 0.958924, -0.268562,
		-0.982837, -0.043381, 0.179300,
		39.843597, 29.919369, 21.885878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.340900, 30.542189, 22.147278>,  <40.531582, 29.949736, 21.760368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.340900, 30.542189, 22.147278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.033047, 30.305521, 22.243261>,  <39.848335, 30.163521, 22.300852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.033047, 30.305521, 22.243261>,  <40.340900, 30.542189, 22.147278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.033047, 30.305521, 22.243261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128991, 0.223993, 0.966017,
		-0.625314, 0.774437, -0.096073,
		-0.769639, -0.591671, 0.239961,
		39.802155, 30.128019, 22.315250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.812908, 30.973202, 22.579142>,  <40.340900, 30.542189, 22.147278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.812908, 30.973202, 22.579142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.746178, 30.583960, 22.642687>,  <39.706139, 30.350414, 22.680815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.746178, 30.583960, 22.642687>,  <39.812908, 30.973202, 22.579142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.746178, 30.583960, 22.642687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126704, 0.180944, 0.975298,
		-0.977811, 0.142579, -0.153482,
		-0.166828, -0.973104, 0.158864,
		39.696129, 30.292028, 22.690346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074348, 30.820618, 22.802031>,  <39.812908, 30.973202, 22.579142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.074348, 30.820618, 22.802031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.308697, 30.530426, 22.946495>,  <39.449306, 30.356310, 23.033175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.308697, 30.530426, 22.946495>,  <39.074348, 30.820618, 22.802031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.308697, 30.530426, 22.946495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154806, 0.337262, 0.928595,
		-0.795484, -0.599943, 0.085282,
		0.585866, -0.725481, 0.361161,
		39.484455, 30.312782, 23.054844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818306, 30.786255, 23.445515>,  <39.074348, 30.820618, 22.802031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.818306, 30.786255, 23.445515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.148132, 30.565441, 23.495075>,  <39.346027, 30.432953, 23.524811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.148132, 30.565441, 23.495075>,  <38.818306, 30.786255, 23.445515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.148132, 30.565441, 23.495075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009985, 0.204762, 0.978761,
		-0.565680, -0.808288, 0.163327,
		0.824564, -0.552035, 0.123901,
		39.395500, 30.399830, 23.532246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.724567, 30.494663, 24.059053>,  <38.818306, 30.786255, 23.445515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.724567, 30.494663, 24.059053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.115532, 30.413227, 24.036383>,  <39.350113, 30.364365, 24.022779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.115532, 30.413227, 24.036383>,  <38.724567, 30.494663, 24.059053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.115532, 30.413227, 24.036383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101542, 0.217231, 0.970824,
		-0.185339, -0.954652, 0.232998,
		0.977414, -0.203591, -0.056676,
		39.408756, 30.352150, 24.019381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844379, 29.996874, 24.559792>,  <38.724567, 30.494663, 24.059053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.844379, 29.996874, 24.559792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.182034, 30.191187, 24.469055>,  <39.384624, 30.307775, 24.414614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.182034, 30.191187, 24.469055>,  <38.844379, 29.996874, 24.559792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182034, 30.191187, 24.469055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087729, 0.292246, 0.952311,
		0.528909, -0.823777, 0.204076,
		0.844132, 0.485782, -0.226841,
		39.435272, 30.336922, 24.401003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293907, 29.767792, 25.059433>,  <38.844379, 29.996874, 24.559792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.293907, 29.767792, 25.059433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.413658, 30.114683, 24.900295>,  <39.485508, 30.322819, 24.804811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.413658, 30.114683, 24.900295>,  <39.293907, 29.767792, 25.059433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.413658, 30.114683, 24.900295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162225, 0.457166, 0.874461,
		0.940241, -0.197257, 0.277554,
		0.299381, 0.867231, -0.397846,
		39.503471, 30.374853, 24.780941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776585, 30.057756, 25.576649>,  <39.293907, 29.767792, 25.059433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.776585, 30.057756, 25.576649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.662815, 30.366335, 25.348974>,  <39.594551, 30.551481, 25.212370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.662815, 30.366335, 25.348974>,  <39.776585, 30.057756, 25.576649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.662815, 30.366335, 25.348974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007976, 0.591785, 0.806057,
		0.958665, 0.233804, -0.162166,
		-0.284427, 0.771445, -0.569188,
		39.577488, 30.597769, 25.178219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.895828, 30.643921, 26.024899>,  <39.776585, 30.057756, 25.576649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.895828, 30.643921, 26.024899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.686470, 30.820406, 25.733313>,  <39.560856, 30.926296, 25.558361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.686470, 30.820406, 25.733313>,  <39.895828, 30.643921, 26.024899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.686470, 30.820406, 25.733313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419645, 0.611088, 0.671170,
		0.741589, 0.657195, -0.134689,
		-0.523396, 0.441211, -0.728965,
		39.529449, 30.952768, 25.514624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.971889, 31.448931, 26.098301>,  <39.895828, 30.643921, 26.024899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.971889, 31.448931, 26.098301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.628479, 31.359760, 25.913588>,  <39.422432, 31.306257, 25.802759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.628479, 31.359760, 25.913588>,  <39.971889, 31.448931, 26.098301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.628479, 31.359760, 25.913588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475841, 0.681946, 0.555451,
		0.191085, 0.696602, -0.691544,
		-0.858523, -0.222927, -0.461781,
		39.370922, 31.292883, 25.775053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.697411, 32.147556, 25.919315>,  <39.971889, 31.448931, 26.098301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.697411, 32.147556, 25.919315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408684, 31.872036, 25.892393>,  <39.235447, 31.706724, 25.876240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408684, 31.872036, 25.892393>,  <39.697411, 32.147556, 25.919315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408684, 31.872036, 25.892393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625309, 0.607410, 0.489941,
		-0.296588, 0.395737, -0.869153,
		-0.721820, -0.688800, -0.067307,
		39.192139, 31.665396, 25.872200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249775, 32.571342, 25.611074>,  <39.697411, 32.147556, 25.919315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.249775, 32.571342, 25.611074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.034992, 32.270466, 25.763857>,  <38.906120, 32.089939, 25.855526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.034992, 32.270466, 25.763857>,  <39.249775, 32.571342, 25.611074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.034992, 32.270466, 25.763857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599340, 0.658772, 0.454766,
		-0.593690, 0.015270, -0.804549,
		-0.536958, -0.752188, 0.381954,
		38.873905, 32.044811, 25.878443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580662, 32.656261, 25.519018>,  <39.249775, 32.571342, 25.611074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.580662, 32.656261, 25.519018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.585102, 32.411133, 25.835077>,  <38.587765, 32.264057, 26.024712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.585102, 32.411133, 25.835077>,  <38.580662, 32.656261, 25.519018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585102, 32.411133, 25.835077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528826, 0.667048, 0.524776,
		-0.848658, -0.423675, -0.316670,
		0.011100, -0.612818, 0.790146,
		38.588432, 32.227287, 26.072121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903473, 32.685696, 25.842743>,  <38.580662, 32.656261, 25.519018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.903473, 32.685696, 25.842743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.120056, 32.512383, 26.130934>,  <38.250008, 32.408394, 26.303848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.120056, 32.512383, 26.130934>,  <37.903473, 32.685696, 25.842743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.120056, 32.512383, 26.130934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511944, 0.509846, 0.691354,
		-0.666883, -0.743186, 0.054247,
		0.541462, -0.433281, 0.720477,
		38.282494, 32.382397, 26.347076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470825, 32.709663, 26.382530>,  <37.903473, 32.685696, 25.842743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470825, 32.709663, 26.382530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.820496, 32.645485, 26.565866>,  <38.030296, 32.606976, 26.675869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.820496, 32.645485, 26.565866>,  <37.470825, 32.709663, 26.382530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.820496, 32.645485, 26.565866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331747, 0.491954, 0.804938,
		-0.354636, -0.855709, 0.376824,
		0.874173, -0.160450, 0.458343,
		38.082748, 32.597351, 26.703369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308228, 32.579449, 27.067848>,  <37.470825, 32.709663, 26.382530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308228, 32.579449, 27.067848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.694210, 32.683846, 27.078707>,  <37.925800, 32.746483, 27.085222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.694210, 32.683846, 27.078707>,  <37.308228, 32.579449, 27.067848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694210, 32.683846, 27.078707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135448, 0.406823, 0.903410,
		0.224740, -0.875430, 0.427918,
		0.964959, 0.260993, 0.027146,
		37.983696, 32.762142, 27.086851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587543, 32.357643, 27.669096>,  <37.308228, 32.579449, 27.067848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.587543, 32.357643, 27.669096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.837551, 32.655800, 27.576359>,  <37.987556, 32.834694, 27.520716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.837551, 32.655800, 27.576359>,  <37.587543, 32.357643, 27.669096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.837551, 32.655800, 27.576359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001949, 0.298494, 0.954410,
		0.780609, -0.596070, 0.188017,
		0.625016, 0.745387, -0.231845,
		38.025055, 32.879417, 27.506805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065857, 32.317154, 28.193293>,  <37.587543, 32.357643, 27.669096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.065857, 32.317154, 28.193293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.098843, 32.684208, 28.037786>,  <38.118633, 32.904442, 27.944483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.098843, 32.684208, 28.037786>,  <38.065857, 32.317154, 28.193293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.098843, 32.684208, 28.037786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031130, 0.392274, 0.919321,
		0.996107, -0.063712, 0.060916,
		0.082467, 0.917639, -0.388763,
		38.123581, 32.959499, 27.921158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.599854, 32.627144, 28.529501>,  <38.065857, 32.317154, 28.193293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.599854, 32.627144, 28.529501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.411877, 32.944775, 28.375305>,  <38.299091, 33.135353, 28.282787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.411877, 32.944775, 28.375305>,  <38.599854, 32.627144, 28.529501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.411877, 32.944775, 28.375305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139025, 0.497852, 0.856046,
		0.871681, 0.348699, -0.344357,
		-0.469942, 0.794073, -0.385490,
		38.270893, 33.182995, 28.259659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991718, 33.222866, 28.631529>,  <38.599854, 32.627144, 28.529501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991718, 33.222866, 28.631529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.609924, 33.334160, 28.588554>,  <38.380848, 33.400936, 28.562769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.609924, 33.334160, 28.588554>,  <38.991718, 33.222866, 28.631529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.609924, 33.334160, 28.588554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006199, 0.341634, 0.939812,
		0.298193, 0.897703, -0.324360,
		-0.954486, 0.278235, -0.107438,
		38.323578, 33.417629, 28.556324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902386, 34.000938, 28.779114>,  <38.991718, 33.222866, 28.631529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902386, 34.000938, 28.779114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.555061, 33.806698, 28.819574>,  <38.346668, 33.690155, 28.843851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.555061, 33.806698, 28.819574>,  <38.902386, 34.000938, 28.779114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.555061, 33.806698, 28.819574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060579, 0.306218, 0.950032,
		-0.492312, 0.818793, -0.295309,
		-0.868308, -0.485602, 0.101153,
		38.294567, 33.661018, 28.849920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536968, 34.494938, 29.157909>,  <38.902386, 34.000938, 28.779114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.536968, 34.494938, 29.157909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.325809, 34.158630, 29.205963>,  <38.199112, 33.956844, 29.234795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.325809, 34.158630, 29.205963>,  <38.536968, 34.494938, 29.157909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.325809, 34.158630, 29.205963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096206, 0.199738, 0.975115,
		-0.843840, 0.503205, -0.186329,
		-0.527900, -0.840767, 0.120135,
		38.167439, 33.906399, 29.242004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006981, 34.695488, 29.650881>,  <38.536968, 34.494938, 29.157909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006981, 34.695488, 29.650881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.035313, 34.296944, 29.669870>,  <38.052311, 34.057819, 29.681265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.035313, 34.296944, 29.669870>,  <38.006981, 34.695488, 29.650881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035313, 34.296944, 29.669870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083615, 0.041495, 0.995634,
		-0.993978, -0.074492, -0.080372,
		0.070832, -0.996358, 0.047474,
		38.056561, 33.998035, 29.684113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.473656, 34.460606, 30.006964>,  <38.006981, 34.695488, 29.650881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.473656, 34.460606, 30.006964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.724148, 34.149696, 30.031223>,  <37.874443, 33.963150, 30.045778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.724148, 34.149696, 30.031223>,  <37.473656, 34.460606, 30.006964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724148, 34.149696, 30.031223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107030, 0.162764, 0.980843,
		-0.772257, -0.607742, 0.185120,
		0.626230, -0.777276, 0.060648,
		37.912018, 33.916515, 30.049417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.417320, 34.300304, 30.664536>,  <37.473656, 34.460606, 30.006964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.417320, 34.300304, 30.664536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.736546, 34.084320, 30.557552>,  <37.928082, 33.954731, 30.493362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.736546, 34.084320, 30.557552>,  <37.417320, 34.300304, 30.664536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.736546, 34.084320, 30.557552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344246, 0.044262, 0.937836,
		-0.494555, -0.840526, 0.221203,
		0.798067, -0.539959, -0.267458,
		37.975967, 33.922333, 30.477316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.443848, 33.754951, 31.168375>,  <37.417320, 34.300304, 30.664536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.443848, 33.754951, 31.168375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.814522, 33.782055, 31.020504>,  <38.036926, 33.798317, 30.931782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.814522, 33.782055, 31.020504>,  <37.443848, 33.754951, 31.168375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.814522, 33.782055, 31.020504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375823, -0.158530, 0.913031,
		0.003259, -0.985026, -0.172372,
		0.926686, 0.067757, -0.369678,
		38.092529, 33.802383, 30.909601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819069, 33.200268, 31.469738>,  <37.443848, 33.754951, 31.168375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819069, 33.200268, 31.469738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.116627, 33.444031, 31.360020>,  <38.295162, 33.590290, 31.294189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.116627, 33.444031, 31.360020>,  <37.819069, 33.200268, 31.469738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.116627, 33.444031, 31.360020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383721, -0.053457, 0.921901,
		0.547150, -0.791053, -0.273609,
		0.743898, 0.609408, -0.274295,
		38.339798, 33.626854, 31.277731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454533, 32.913052, 31.762075>,  <37.819069, 33.200268, 31.469738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.454533, 32.913052, 31.762075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.552502, 33.296604, 31.704725>,  <38.611282, 33.526737, 31.670315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.552502, 33.296604, 31.704725>,  <38.454533, 32.913052, 31.762075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.552502, 33.296604, 31.704725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503456, 0.000595, 0.864020,
		0.828580, -0.283800, -0.482610,
		0.244922, 0.958883, -0.143374,
		38.625977, 33.584270, 31.661713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260223, 33.038300, 31.880804>,  <38.454533, 32.913052, 31.762075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.260223, 33.038300, 31.880804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104687, 33.405025, 31.917137>,  <39.011364, 33.625061, 31.938936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104687, 33.405025, 31.917137>,  <39.260223, 33.038300, 31.880804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104687, 33.405025, 31.917137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556599, 0.155206, 0.816155,
		0.734166, 0.367912, -0.570650,
		-0.388842, 0.916816, 0.090833,
		38.988033, 33.680069, 31.944387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.825718, 33.413418, 32.210220>,  <39.260223, 33.038300, 31.880804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.825718, 33.413418, 32.210220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.491409, 33.624516, 32.270855>,  <39.290825, 33.751175, 32.307236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.491409, 33.624516, 32.270855>,  <39.825718, 33.413418, 32.210220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.491409, 33.624516, 32.270855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327117, 0.256832, 0.909413,
		0.441006, 0.809644, -0.387286,
		-0.835768, 0.527744, 0.151584,
		39.240681, 33.782837, 32.316330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.001900, 34.163208, 32.506359>,  <39.825718, 33.413418, 32.210220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.001900, 34.163208, 32.506359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.621315, 34.076477, 32.593735>,  <39.392963, 34.024441, 32.646160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.621315, 34.076477, 32.593735>,  <40.001900, 34.163208, 32.506359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.621315, 34.076477, 32.593735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133524, 0.348680, 0.927682,
		-0.277310, 0.911817, -0.302803,
		-0.951457, -0.216824, 0.218442,
		39.335876, 34.011429, 32.659267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.681553, 34.762505, 32.812843>,  <40.001900, 34.163208, 32.506359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.681553, 34.762505, 32.812843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.482742, 34.438747, 32.937965>,  <39.363457, 34.244492, 33.013039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.482742, 34.438747, 32.937965>,  <39.681553, 34.762505, 32.812843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.482742, 34.438747, 32.937965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136391, 0.283130, 0.949334,
		-0.856951, 0.514505, -0.030327,
		-0.497023, -0.809397, 0.312802,
		39.333633, 34.195927, 33.031807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300259, 35.017548, 33.293293>,  <39.681553, 34.762505, 32.812843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.300259, 35.017548, 33.293293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.272923, 34.627911, 33.379528>,  <39.256519, 34.394131, 33.431271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.272923, 34.627911, 33.379528>,  <39.300259, 35.017548, 33.293293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.272923, 34.627911, 33.379528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115377, 0.222363, 0.968113,
		-0.990968, 0.041291, -0.127585,
		-0.068345, -0.974089, 0.215590,
		39.252419, 34.335686, 33.444206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676155, 34.848824, 33.735218>,  <39.300259, 35.017548, 33.293293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.676155, 34.848824, 33.735218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.990234, 34.610119, 33.801357>,  <39.178684, 34.466896, 33.841042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.990234, 34.610119, 33.801357>,  <38.676155, 34.848824, 33.735218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.990234, 34.610119, 33.801357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110476, 0.127740, 0.985636,
		-0.609307, -0.792189, 0.034374,
		0.785201, -0.596757, 0.165351,
		39.225796, 34.431091, 33.850964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511696, 34.317032, 34.188812>,  <38.676155, 34.848824, 33.735218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.511696, 34.317032, 34.188812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.903671, 34.392265, 34.215183>,  <39.138855, 34.437405, 34.231007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.903671, 34.392265, 34.215183>,  <38.511696, 34.317032, 34.188812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903671, 34.392265, 34.215183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079283, 0.064386, 0.994771,
		0.182854, -0.980041, 0.078006,
		0.979938, 0.188082, 0.065928,
		39.197655, 34.448689, 34.234962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755211, 33.836319, 34.589447>,  <38.511696, 34.317032, 34.188812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755211, 33.836319, 34.589447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.000961, 34.151806, 34.598057>,  <39.148411, 34.341099, 34.603222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.000961, 34.151806, 34.598057>,  <38.755211, 33.836319, 34.589447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.000961, 34.151806, 34.598057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079525, 0.034757, 0.996227,
		0.784996, -0.613769, 0.084076,
		0.614375, 0.788720, 0.021526,
		39.185272, 34.388420, 34.604515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750008, 34.012981, 35.231869>,  <38.755211, 33.836319, 34.589447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750008, 34.012981, 35.231869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.014210, 34.298294, 35.138092>,  <39.172729, 34.469482, 35.081825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.014210, 34.298294, 35.138092>,  <38.750008, 34.012981, 35.231869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.014210, 34.298294, 35.138092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055592, 0.264929, 0.962664,
		0.748765, -0.648873, 0.135333,
		0.660500, 0.713286, -0.234441,
		39.212360, 34.512280, 35.067760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.200695, 33.988754, 35.776600>,  <38.750008, 34.012981, 35.231869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.200695, 33.988754, 35.776600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.205338, 34.356998, 35.620480>,  <39.208122, 34.577946, 35.526806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.205338, 34.356998, 35.620480>,  <39.200695, 33.988754, 35.776600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205338, 34.356998, 35.620480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226265, 0.382624, 0.895770,
		0.973997, 0.077917, 0.212743,
		0.011605, 0.920613, -0.390304,
		39.208820, 34.633183, 35.503387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.622456, 34.512951, 36.237602>,  <39.200695, 33.988754, 35.776600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.622456, 34.512951, 36.237602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.361519, 34.735786, 36.032043>,  <39.204956, 34.869488, 35.908707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.361519, 34.735786, 36.032043>,  <39.622456, 34.512951, 36.237602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.361519, 34.735786, 36.032043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347374, 0.382868, 0.856004,
		0.673629, 0.736926, -0.056243,
		-0.652346, 0.557092, -0.513900,
		39.165813, 34.902912, 35.877872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.675957, 35.296432, 36.506912>,  <39.622456, 34.512951, 36.237602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.675957, 35.296432, 36.506912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.310894, 35.268417, 36.345840>,  <39.091858, 35.251610, 36.249199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.310894, 35.268417, 36.345840>,  <39.675957, 35.296432, 36.506912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.310894, 35.268417, 36.345840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404399, 0.297670, 0.864785,
		0.059298, 0.952096, -0.299994,
		-0.912658, -0.070037, -0.402678,
		39.037098, 35.247406, 36.225037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.299267, 35.946194, 36.554398>,  <39.675957, 35.296432, 36.506912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.299267, 35.946194, 36.554398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.996834, 35.689384, 36.503571>,  <38.815372, 35.535301, 36.473076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.996834, 35.689384, 36.503571>,  <39.299267, 35.946194, 36.554398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.996834, 35.689384, 36.503571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514628, 0.463263, 0.721488,
		-0.404344, 0.610899, -0.680667,
		-0.756085, -0.642020, -0.127068,
		38.770008, 35.496777, 36.465450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808167, 36.199474, 37.049747>,  <39.299267, 35.946194, 36.554398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.808167, 36.199474, 37.049747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.620483, 35.873219, 36.914352>,  <38.507874, 35.677464, 36.833115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.620483, 35.873219, 36.914352>,  <38.808167, 36.199474, 37.049747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620483, 35.873219, 36.914352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640557, 0.050496, 0.766248,
		-0.607890, 0.576352, -0.546157,
		-0.469208, -0.815640, -0.338491,
		38.479721, 35.628525, 36.812805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149605, 36.293060, 37.212090>,  <38.808167, 36.199474, 37.049747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149605, 36.293060, 37.212090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.215244, 35.899017, 37.191593>,  <38.254627, 35.662590, 37.179295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.215244, 35.899017, 37.191593>,  <38.149605, 36.293060, 37.212090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215244, 35.899017, 37.191593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263673, -0.093860, 0.960035,
		-0.950552, -0.144029, -0.275150,
		0.164098, -0.985112, -0.051243,
		38.264473, 35.603485, 37.176220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.548069, 35.961891, 37.401878>,  <38.149605, 36.293060, 37.212090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.548069, 35.961891, 37.401878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845299, 35.701221, 37.462746>,  <38.023636, 35.544819, 37.499268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845299, 35.701221, 37.462746>,  <37.548069, 35.961891, 37.401878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845299, 35.701221, 37.462746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339268, -0.170855, 0.925044,
		-0.576829, -0.739005, -0.348051,
		0.743079, -0.651674, 0.152167,
		38.068222, 35.505718, 37.508396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.306271, 35.300236, 37.727432>,  <37.548069, 35.961891, 37.401878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.306271, 35.300236, 37.727432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.682652, 35.309238, 37.862545>,  <37.908482, 35.314640, 37.943611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.682652, 35.309238, 37.862545>,  <37.306271, 35.300236, 37.727432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.682652, 35.309238, 37.862545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310499, -0.340184, 0.887618,
		0.134887, -0.940089, -0.313109,
		0.940955, 0.022508, 0.337783,
		37.964939, 35.315990, 37.963879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261379, 34.773026, 38.148140>,  <37.306271, 35.300236, 37.727432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.261379, 34.773026, 38.148140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.616951, 34.937885, 38.228065>,  <37.830296, 35.036800, 38.276020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.616951, 34.937885, 38.228065>,  <37.261379, 34.773026, 38.148140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616951, 34.937885, 38.228065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117743, -0.215964, 0.969276,
		0.442643, -0.885149, -0.143450,
		0.888934, 0.412153, 0.199815,
		37.883633, 35.061531, 38.288010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745655, 34.261471, 38.355389>,  <37.261379, 34.773026, 38.148140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745655, 34.261471, 38.355389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.854431, 34.618153, 38.500118>,  <37.919697, 34.832161, 38.586956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.854431, 34.618153, 38.500118>,  <37.745655, 34.261471, 38.355389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.854431, 34.618153, 38.500118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058421, -0.390594, 0.918708,
		0.960539, -0.228697, -0.158312,
		0.271941, 0.891703, 0.361820,
		37.936012, 34.885662, 38.608665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191521, 34.131870, 38.917656>,  <37.745655, 34.261471, 38.355389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.191521, 34.131870, 38.917656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.098167, 34.516331, 38.976608>,  <38.042156, 34.747005, 39.011978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.098167, 34.516331, 38.976608>,  <38.191521, 34.131870, 38.917656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.098167, 34.516331, 38.976608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041426, -0.141600, 0.989057,
		0.971502, 0.236936, -0.006770,
		-0.233385, 0.961151, 0.147380,
		38.028152, 34.804676, 39.020821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.558552, 34.264084, 39.509956>,  <38.191521, 34.131870, 38.917656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.558552, 34.264084, 39.509956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.352165, 34.606728, 39.509346>,  <38.228333, 34.812313, 39.508980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.352165, 34.606728, 39.509346>,  <38.558552, 34.264084, 39.509956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.352165, 34.606728, 39.509346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193026, -0.114528, 0.974486,
		0.834578, 0.503096, 0.224441,
		-0.515965, 0.856608, -0.001528,
		38.197376, 34.863708, 39.508888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866215, 34.643810, 40.107697>,  <38.558552, 34.264084, 39.509956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.866215, 34.643810, 40.107697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.497242, 34.755386, 40.000874>,  <38.275860, 34.822330, 39.936779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.497242, 34.755386, 40.000874>,  <38.866215, 34.643810, 40.107697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.497242, 34.755386, 40.000874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319243, -0.161709, 0.933774,
		0.217282, 0.946595, 0.238214,
		-0.922427, 0.278941, -0.267058,
		38.220512, 34.839069, 39.920757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593037, 35.299728, 40.438217>,  <38.866215, 34.643810, 40.107697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593037, 35.299728, 40.438217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.272388, 35.082020, 40.339279>,  <38.080002, 34.951393, 40.279919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.272388, 35.082020, 40.339279>,  <38.593037, 35.299728, 40.438217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272388, 35.082020, 40.339279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203193, -0.141057, 0.968925,
		-0.562247, 0.826966, 0.002482,
		-0.801618, -0.544271, -0.247342,
		38.031902, 34.918739, 40.265076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016552, 35.570179, 40.905064>,  <38.593037, 35.299728, 40.438217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.016552, 35.570179, 40.905064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.885925, 35.214115, 40.777962>,  <37.807549, 35.000477, 40.701698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.885925, 35.214115, 40.777962>,  <38.016552, 35.570179, 40.905064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.885925, 35.214115, 40.777962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020310, -0.329504, 0.943936,
		-0.944957, 0.314708, 0.089525,
		-0.326563, -0.890161, -0.317759,
		37.787956, 34.947067, 40.682632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471451, 35.348148, 41.408916>,  <38.016552, 35.570179, 40.905064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.471451, 35.348148, 41.408916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.614407, 35.036568, 41.202805>,  <37.700180, 34.849621, 41.079136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.614407, 35.036568, 41.202805>,  <37.471451, 35.348148, 41.408916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614407, 35.036568, 41.202805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142292, -0.499865, 0.854334,
		-0.923054, -0.378647, -0.067806,
		0.357385, -0.778949, -0.515281,
		37.721622, 34.802883, 41.048222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131081, 34.718037, 41.435654>,  <37.471451, 35.348148, 41.408916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.131081, 34.718037, 41.435654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.512253, 34.629745, 41.352512>,  <37.740955, 34.576771, 41.302628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.512253, 34.629745, 41.352512>,  <37.131081, 34.718037, 41.435654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512253, 34.629745, 41.352512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020852, -0.636226, 0.771221,
		-0.302471, -0.739255, -0.601676,
		0.952930, -0.220726, -0.207855,
		37.798130, 34.563526, 41.290157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151623, 34.028309, 41.612648>,  <37.131081, 34.718037, 41.435654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151623, 34.028309, 41.612648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.512947, 34.197872, 41.638962>,  <37.729744, 34.299610, 41.654751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.512947, 34.197872, 41.638962>,  <37.151623, 34.028309, 41.612648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512947, 34.197872, 41.638962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240650, -0.627697, 0.740326,
		0.355123, -0.652916, -0.669021,
		0.903314, 0.423907, 0.065785,
		37.783939, 34.325043, 41.658699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.548088, 33.499874, 41.739750>,  <37.151623, 34.028309, 41.612648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.548088, 33.499874, 41.739750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.742062, 33.831635, 41.850693>,  <37.858448, 34.030693, 41.917259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.742062, 33.831635, 41.850693>,  <37.548088, 33.499874, 41.739750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742062, 33.831635, 41.850693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396659, -0.491237, 0.775466,
		0.779422, -0.266035, -0.567209,
		0.484936, 0.829404, 0.277356,
		37.887543, 34.080456, 41.933899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313351, 33.453247, 41.607216>,  <37.548088, 33.499874, 41.739750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313351, 33.453247, 41.607216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.178185, 33.640125, 41.934029>,  <38.097084, 33.752251, 42.130116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.178185, 33.640125, 41.934029>,  <38.313351, 33.453247, 41.607216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178185, 33.640125, 41.934029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489119, -0.654491, 0.576545,
		0.804098, 0.594452, -0.007347,
		-0.337920, 0.467192, 0.817033,
		38.076809, 33.780281, 42.179138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452576, 34.072792, 41.123920>,  <38.313351, 33.453247, 41.607216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.452576, 34.072792, 41.123920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.054909, 34.096996, 41.159615>,  <37.816307, 34.111519, 41.181030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.054909, 34.096996, 41.159615>,  <38.452576, 34.072792, 41.123920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.054909, 34.096996, 41.159615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047710, 0.495317, -0.867401,
		-0.096686, -0.866602, -0.489543,
		-0.994171, 0.060510, 0.089236,
		37.756657, 34.115150, 41.186386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.055210, 33.670540, 40.599510>,  <38.452576, 34.072792, 41.123920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.055210, 33.670540, 40.599510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.866394, 33.998310, 40.729568>,  <37.753105, 34.194973, 40.807606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.866394, 33.998310, 40.729568>,  <38.055210, 33.670540, 40.599510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.866394, 33.998310, 40.729568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057911, 0.339206, -0.938928,
		-0.879673, -0.462041, -0.112665,
		-0.472040, 0.819425, 0.325148,
		37.724781, 34.244137, 40.827114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.361465, 33.748299, 40.246819>,  <38.055210, 33.670540, 40.599510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.361465, 33.748299, 40.246819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.506924, 34.093082, 40.388119>,  <37.594200, 34.299953, 40.472900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.506924, 34.093082, 40.388119>,  <37.361465, 33.748299, 40.246819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.506924, 34.093082, 40.388119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044530, 0.394863, -0.917661,
		-0.930472, 0.317975, 0.181974,
		0.363647, 0.861960, 0.353249,
		37.616016, 34.351669, 40.494095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967358, 34.201954, 39.958633>,  <37.361465, 33.748299, 40.246819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.967358, 34.201954, 39.958633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.301605, 34.399475, 40.054890>,  <37.502151, 34.517986, 40.112644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.301605, 34.399475, 40.054890>,  <36.967358, 34.201954, 39.958633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301605, 34.399475, 40.054890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033713, 0.483347, -0.874779,
		-0.548280, 0.722866, 0.420540,
		0.835615, 0.493802, 0.240640,
		37.552288, 34.547615, 40.127083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974564, 34.904972, 39.588905>,  <36.967358, 34.201954, 39.958633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974564, 34.904972, 39.588905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.346737, 34.913868, 39.735218>,  <37.570042, 34.919205, 39.823006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.346737, 34.913868, 39.735218>,  <36.974564, 34.904972, 39.588905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.346737, 34.913868, 39.735218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263437, 0.653271, -0.709815,
		-0.254738, 0.756798, 0.601969,
		0.930435, 0.022236, 0.365781,
		37.625866, 34.920540, 39.844952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263580, 35.595783, 39.854958>,  <36.974564, 34.904972, 39.588905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.263580, 35.595783, 39.854958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.575729, 35.399265, 39.700222>,  <37.763020, 35.281353, 39.607380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.575729, 35.399265, 39.700222>,  <37.263580, 35.595783, 39.854958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575729, 35.399265, 39.700222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129746, 0.732389, -0.668411,
		0.611707, 0.471418, 0.635279,
		0.780372, -0.491296, -0.386843,
		37.809841, 35.251877, 39.584167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.373531, 35.391529, 39.150810>,  <37.263580, 35.595783, 39.854958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.373531, 35.391529, 39.150810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.450428, 35.015575, 39.037910>,  <37.496567, 34.790005, 38.970169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.450428, 35.015575, 39.037910>,  <37.373531, 35.391529, 39.150810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.450428, 35.015575, 39.037910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039913, 0.294867, -0.954704,
		0.980537, 0.172264, 0.094198,
		0.192237, -0.939882, -0.282252,
		37.508099, 34.733612, 38.953236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715157, 35.946663, 39.386639>,  <37.373531, 35.391529, 39.150810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.715157, 35.946663, 39.386639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.879642, 35.601624, 39.268772>,  <37.978333, 35.394600, 39.198051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.879642, 35.601624, 39.268772>,  <37.715157, 35.946663, 39.386639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.879642, 35.601624, 39.268772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315016, 0.437826, -0.842065,
		0.855375, 0.253446, 0.451773,
		0.411216, -0.862597, -0.294666,
		38.003006, 35.342846, 39.180374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333534, 36.044487, 39.026043>,  <37.715157, 35.946663, 39.386639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.333534, 36.044487, 39.026043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.230843, 35.679676, 38.898102>,  <38.169228, 35.460789, 38.821339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.230843, 35.679676, 38.898102>,  <38.333534, 36.044487, 39.026043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230843, 35.679676, 38.898102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408335, 0.197597, -0.891189,
		0.875986, -0.359402, 0.321681,
		-0.256732, -0.912023, -0.319849,
		38.153824, 35.406071, 38.802147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878941, 35.884754, 38.571239>,  <38.333534, 36.044487, 39.026043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.878941, 35.884754, 38.571239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.595791, 35.616894, 38.481369>,  <38.425900, 35.456177, 38.427448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.595791, 35.616894, 38.481369>,  <38.878941, 35.884754, 38.571239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.595791, 35.616894, 38.481369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279573, 0.026478, -0.959759,
		0.648656, -0.742201, 0.168474,
		-0.707873, -0.669654, -0.224674,
		38.383430, 35.415997, 38.413967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.193790, 35.360718, 38.119656>,  <38.878941, 35.884754, 38.571239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.193790, 35.360718, 38.119656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.801426, 35.311707, 38.059269>,  <38.566006, 35.282299, 38.023037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.801426, 35.311707, 38.059269>,  <39.193790, 35.360718, 38.119656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.801426, 35.311707, 38.059269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158894, -0.057645, -0.985611,
		0.112061, -0.990790, 0.076014,
		-0.980916, -0.122527, -0.150971,
		38.507153, 35.274948, 38.013977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138203, 34.821575, 37.682499>,  <39.193790, 35.360718, 38.119656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.138203, 34.821575, 37.682499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.807056, 35.040478, 37.633255>,  <38.608368, 35.171818, 37.603710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.807056, 35.040478, 37.633255>,  <39.138203, 34.821575, 37.682499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807056, 35.040478, 37.633255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142965, -0.006368, -0.989707,
		-0.542409, -0.836940, -0.072967,
		-0.827861, 0.547258, -0.123108,
		38.558697, 35.204655, 37.596321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.771835, 34.432819, 37.194458>,  <39.138203, 34.821575, 37.682499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.771835, 34.432819, 37.194458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.624954, 34.799881, 37.133705>,  <38.536827, 35.020119, 37.097256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.624954, 34.799881, 37.133705>,  <38.771835, 34.432819, 37.194458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624954, 34.799881, 37.133705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184564, -0.088155, -0.978859,
		-0.911647, -0.387470, -0.136996,
		-0.367201, 0.917658, -0.151879,
		38.514793, 35.075180, 37.088142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084522, 34.392574, 36.741611>,  <38.771835, 34.432819, 37.194458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084522, 34.392574, 36.741611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.288288, 34.736732, 36.735653>,  <38.410549, 34.943226, 36.732079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.288288, 34.736732, 36.735653>,  <38.084522, 34.392574, 36.741611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288288, 34.736732, 36.735653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113067, -0.084082, -0.990023,
		-0.853062, 0.502647, -0.140114,
		0.509413, 0.860393, -0.014894,
		38.441113, 34.994850, 36.731186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.718311, 34.783749, 36.249653>,  <38.084522, 34.392574, 36.741611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.718311, 34.783749, 36.249653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.096863, 34.908894, 36.281857>,  <38.323994, 34.983978, 36.301178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.096863, 34.908894, 36.281857>,  <37.718311, 34.783749, 36.249653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096863, 34.908894, 36.281857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044170, 0.121561, -0.991601,
		-0.320019, 0.941988, 0.101224,
		0.946381, 0.312860, 0.080509,
		38.380775, 35.002750, 36.306011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.871479, 35.111172, 35.615215>,  <37.718311, 34.783749, 36.249653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.871479, 35.111172, 35.615215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.227722, 35.137802, 35.795162>,  <38.441467, 35.153782, 35.903130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.227722, 35.137802, 35.795162>,  <37.871479, 35.111172, 35.615215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.227722, 35.137802, 35.795162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445200, 0.074210, -0.892351,
		-0.092797, 0.995018, 0.036452,
		0.890610, 0.066579, 0.449869,
		38.494904, 35.157776, 35.930122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273998, 35.404758, 35.118690>,  <37.871479, 35.111172, 35.615215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273998, 35.404758, 35.118690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.558517, 35.275433, 35.368336>,  <38.729229, 35.197838, 35.518124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.558517, 35.275433, 35.368336>,  <38.273998, 35.404758, 35.118690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558517, 35.275433, 35.368336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619805, -0.130263, -0.773869,
		0.331502, 0.937283, 0.107736,
		0.711300, -0.323315, 0.624115,
		38.771908, 35.178436, 35.555569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915077, 35.795322, 35.002632>,  <38.273998, 35.404758, 35.118690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.915077, 35.795322, 35.002632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.021374, 35.432472, 35.133171>,  <39.085152, 35.214764, 35.211494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.021374, 35.432472, 35.133171>,  <38.915077, 35.795322, 35.002632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.021374, 35.432472, 35.133171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383733, -0.211012, -0.899013,
		0.884381, 0.364136, 0.292019,
		0.265744, -0.907127, 0.326346,
		39.101097, 35.160336, 35.231075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.375042, 35.591633, 34.443291>,  <38.915077, 35.795322, 35.002632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.375042, 35.591633, 34.443291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.340977, 35.264503, 34.670944>,  <39.320538, 35.068226, 34.807537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.340977, 35.264503, 34.670944>,  <39.375042, 35.591633, 34.443291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340977, 35.264503, 34.670944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453761, -0.540372, -0.708589,
		0.887044, 0.197904, 0.417117,
		-0.085166, -0.817822, 0.569135,
		39.315426, 35.019157, 34.841686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988121, 35.387012, 34.460339>,  <39.375042, 35.591633, 34.443291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.988121, 35.387012, 34.460339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.733898, 35.084610, 34.522976>,  <39.581364, 34.903168, 34.560558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.733898, 35.084610, 34.522976>,  <39.988121, 35.387012, 34.460339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.733898, 35.084610, 34.522976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363920, -0.472236, -0.802842,
		0.680904, -0.453263, 0.575258,
		-0.635556, -0.756007, 0.156596,
		39.543232, 34.857807, 34.569954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.394447, 34.824409, 34.464088>,  <39.988121, 35.387012, 34.460339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.394447, 34.824409, 34.464088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.018921, 34.729473, 34.364246>,  <39.793606, 34.672512, 34.304340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.018921, 34.729473, 34.364246>,  <40.394447, 34.824409, 34.464088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.018921, 34.729473, 34.364246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322155, -0.348718, -0.880121,
		0.121848, -0.906678, 0.403841,
		-0.938813, -0.237340, -0.249600,
		39.737278, 34.658272, 34.289368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.401108, 34.369221, 33.908192>,  <40.394447, 34.824409, 34.464088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.401108, 34.369221, 33.908192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.021843, 34.490379, 33.869743>,  <39.794285, 34.563076, 33.846676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.021843, 34.490379, 33.869743>,  <40.401108, 34.369221, 33.908192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.021843, 34.490379, 33.869743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009959, -0.330644, -0.943703,
		-0.317613, -0.893832, 0.316523,
		-0.948168, 0.302885, -0.096116,
		39.737392, 34.581249, 33.840908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.048325, 34.499805, 33.442562>,  <40.401108, 34.369221, 33.908192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.048325, 34.499805, 33.442562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.874069, 34.204506, 33.648556>,  <40.769516, 34.027328, 33.772152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.874069, 34.204506, 33.648556>,  <41.048325, 34.499805, 33.442562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.874069, 34.204506, 33.648556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855901, 0.516864, 0.016910,
		-0.278662, -0.433411, -0.857031,
		-0.435639, -0.738246, 0.514987,
		40.743378, 33.983032, 33.803051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.230366, 33.844849, 33.570984>,  <41.048325, 34.499805, 33.442562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.230366, 33.844849, 33.570984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.197983, 33.849789, 33.969639>,  <41.178555, 33.852753, 34.208832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.197983, 33.849789, 33.969639>,  <41.230366, 33.844849, 33.570984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.197983, 33.849789, 33.969639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842514, 0.535117, 0.061804,
		-0.532556, 0.844688, -0.053727,
		-0.080956, 0.012352, 0.996641,
		41.173695, 33.853493, 34.268631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.900356, 33.919834, 34.008305>,  <41.230366, 33.844849, 33.570984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.900356, 33.919834, 34.008305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.128639, 34.212795, 33.859776>,  <42.265610, 34.388573, 33.770660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.128639, 34.212795, 33.859776>,  <41.900356, 33.919834, 34.008305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.128639, 34.212795, 33.859776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394569, 0.151977, 0.906211,
		0.720142, -0.663695, -0.202248,
		0.570710, 0.732402, -0.371319,
		42.299850, 34.432514, 33.748379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.567093, 33.868992, 34.285038>,  <41.900356, 33.919834, 34.008305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.567093, 33.868992, 34.285038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.518230, 34.256702, 34.199635>,  <42.488911, 34.489326, 34.148392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.518230, 34.256702, 34.199635>,  <42.567093, 33.868992, 34.285038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.518230, 34.256702, 34.199635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545849, 0.245279, 0.801179,
		0.828931, -0.018673, -0.559039,
		-0.122160, 0.969273, -0.213512,
		42.481583, 34.547485, 34.135582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.231430, 33.877625, 33.731453>,  <42.567093, 33.868992, 34.285038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.231430, 33.877625, 33.731453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.543449, 33.863461, 33.481564>,  <43.730659, 33.854961, 33.331631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.543449, 33.863461, 33.481564>,  <43.231430, 33.877625, 33.731453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.543449, 33.863461, 33.481564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599751, 0.326983, 0.730329,
		0.178410, -0.944366, 0.276301,
		0.780044, -0.035413, -0.624722,
		43.777462, 33.852837, 33.294147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.677387, 33.437309, 33.988407>,  <43.231430, 33.877625, 33.731453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.677387, 33.437309, 33.988407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.825859, 33.752968, 33.792660>,  <43.914944, 33.942364, 33.675213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.825859, 33.752968, 33.792660>,  <43.677387, 33.437309, 33.988407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.825859, 33.752968, 33.792660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349270, 0.369659, 0.861024,
		0.860369, -0.490517, -0.138413,
		0.371181, 0.789142, -0.489366,
		43.937214, 33.989712, 33.645851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.311291, 33.404995, 34.120453>,  <43.677387, 33.437309, 33.988407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.311291, 33.404995, 34.120453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.191639, 33.782532, 34.064335>,  <44.119846, 34.009052, 34.030666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.191639, 33.782532, 34.064335>,  <44.311291, 33.404995, 34.120453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.191639, 33.782532, 34.064335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282956, 0.228150, 0.931603,
		0.911294, 0.238974, -0.335312,
		-0.299130, 0.943843, -0.140293,
		44.101898, 34.065685, 34.022247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.954380, 33.767208, 34.266979>,  <44.311291, 33.404995, 34.120453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.954380, 33.767208, 34.266979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.594078, 33.929138, 34.329910>,  <44.377895, 34.026295, 34.367668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.594078, 33.929138, 34.329910>,  <44.954380, 33.767208, 34.266979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.594078, 33.929138, 34.329910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243763, 0.171420, 0.954565,
		0.359462, 0.898183, -0.253089,
		-0.900759, 0.404824, 0.157325,
		44.323849, 34.050587, 34.377110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.082516, 34.493393, 34.591213>,  <44.954380, 33.767208, 34.266979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.082516, 34.493393, 34.591213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.731075, 34.323406, 34.678364>,  <44.520210, 34.221413, 34.730656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.731075, 34.323406, 34.678364>,  <45.082516, 34.493393, 34.591213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.731075, 34.323406, 34.678364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183304, 0.121187, 0.975558,
		-0.440984, 0.897060, -0.028576,
		-0.878597, -0.424967, 0.217876,
		44.467495, 34.195915, 34.743725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.747375, 34.512745, 34.466492>,  <45.082516, 34.493393, 34.591213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.747375, 34.512745, 34.466492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.581303, 34.542660, 34.829155>,  <45.481659, 34.560608, 35.046753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.581303, 34.542660, 34.829155>,  <45.747375, 34.512745, 34.466492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.581303, 34.542660, 34.829155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446645, 0.884990, 0.131535,
		-0.792546, 0.459565, -0.400837,
		-0.415185, 0.074784, 0.906658,
		45.456745, 34.565094, 35.101151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.366703, 35.187244, 34.538857>,  <45.747375, 34.512745, 34.466492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.366703, 35.187244, 34.538857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.563457, 35.021759, 34.845291>,  <45.681511, 34.922470, 35.029152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.563457, 35.021759, 34.845291>,  <45.366703, 35.187244, 34.538857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.563457, 35.021759, 34.845291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614015, 0.788659, 0.031654,
		-0.617276, 0.454819, 0.641958,
		0.491889, -0.413711, 0.766086,
		45.711025, 34.897644, 35.075115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.275738, 35.486320, 35.276482>,  <45.366703, 35.187244, 34.538857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.275738, 35.486320, 35.276482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.632885, 35.355595, 35.152561>,  <45.847172, 35.277161, 35.078209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.632885, 35.355595, 35.152561>,  <45.275738, 35.486320, 35.276482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.632885, 35.355595, 35.152561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340371, 0.940228, -0.010882,
		0.294842, -0.095732, 0.950738,
		0.892869, -0.326812, -0.309803,
		45.900745, 35.257549, 35.059620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.829235, 35.637173, 35.812759>,  <45.275738, 35.486320, 35.276482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.829235, 35.637173, 35.812759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.956417, 35.625889, 35.433685>,  <46.032726, 35.619118, 35.206242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.956417, 35.625889, 35.433685>,  <45.829235, 35.637173, 35.812759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.956417, 35.625889, 35.433685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155108, 0.987638, 0.022640,
		0.935332, -0.154192, 0.318400,
		0.317955, -0.028210, -0.947686,
		46.051804, 35.617424, 35.149380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.600601, 35.790760, 35.836403>,  <45.829235, 35.637173, 35.812759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.600601, 35.790760, 35.836403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.390518, 35.912674, 35.518593>,  <46.264469, 35.985825, 35.327908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.390518, 35.912674, 35.518593>,  <46.600601, 35.790760, 35.836403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.390518, 35.912674, 35.518593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200339, 0.951702, 0.232653,
		0.827057, -0.036983, -0.560900,
		-0.525205, 0.304788, -0.794521,
		46.232956, 36.004108, 35.280235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.929974, 36.398617, 35.463196>,  <46.600601, 35.790760, 35.836403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.929974, 36.398617, 35.463196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.530121, 36.405090, 35.454525>,  <46.290207, 36.408974, 35.449322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.530121, 36.405090, 35.454525>,  <46.929974, 36.398617, 35.463196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.530121, 36.405090, 35.454525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009063, 0.955373, 0.295263,
		0.025485, 0.294959, -0.955170,
		-0.999634, 0.016182, -0.021674,
		46.230232, 36.409946, 35.448021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.670380, 36.897961, 35.066040>,  <46.929974, 36.398617, 35.463196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.670380, 36.897961, 35.066040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.364807, 36.853077, 35.320229>,  <46.181465, 36.826145, 35.472740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.364807, 36.853077, 35.320229>,  <46.670380, 36.897961, 35.066040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.364807, 36.853077, 35.320229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072171, 0.963729, 0.256938,
		-0.641253, 0.242144, -0.728121,
		-0.763928, -0.112213, 0.635470,
		46.135628, 36.819412, 35.510868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.321617, 37.134739, 35.420387>,  <46.670380, 36.897961, 35.066040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.321617, 37.134739, 35.420387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.637646, 36.964291, 35.596664>,  <47.827263, 36.862022, 35.702431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.637646, 36.964291, 35.596664>,  <47.321617, 37.134739, 35.420387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.637646, 36.964291, 35.596664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213948, -0.865364, -0.453180,
		0.574466, 0.263760, -0.774867,
		0.790073, -0.426118, 0.440691,
		47.874668, 36.836456, 35.728870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.907188, 36.757526, 34.974678>,  <47.321617, 37.134739, 35.420387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.907188, 36.757526, 34.974678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.896770, 36.583645, 35.334755>,  <47.890518, 36.479317, 35.550800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.896770, 36.583645, 35.334755>,  <47.907188, 36.757526, 34.974678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.896770, 36.583645, 35.334755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031363, -0.899704, -0.435373,
		0.999169, -0.039573, 0.009801,
		-0.026047, -0.434704, 0.900197,
		47.888958, 36.453232, 35.604813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.641991, 36.117897, 35.158485>,  <47.907188, 36.757526, 34.974678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.641991, 36.117897, 35.158485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.372162, 36.220875, 34.881737>,  <47.210266, 36.282661, 34.715687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.372162, 36.220875, 34.881737>,  <47.641991, 36.117897, 35.158485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.372162, 36.220875, 34.881737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737096, -0.183363, 0.650436,
		0.040587, 0.948736, 0.313450,
		-0.674568, 0.257442, -0.691868,
		47.169792, 36.298107, 34.674175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.835228, 35.434475, 35.098049>,  <47.641991, 36.117897, 35.158485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.835228, 35.434475, 35.098049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.513847, 35.202110, 35.045883>,  <47.321018, 35.062691, 35.014584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.513847, 35.202110, 35.045883>,  <47.835228, 35.434475, 35.098049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.513847, 35.202110, 35.045883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577721, -0.813640, 0.065023,
		-0.143884, -0.023101, 0.989325,
		-0.803453, -0.580909, -0.130416,
		47.272812, 35.027836, 35.006760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.019035, 34.779247, 35.448360>,  <47.835228, 35.434475, 35.098049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.019035, 34.779247, 35.448360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.712002, 34.729675, 35.196819>,  <47.527782, 34.699932, 35.045895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.712002, 34.729675, 35.196819>,  <48.019035, 34.779247, 35.448360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.712002, 34.729675, 35.196819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494246, -0.739122, -0.457624,
		-0.408081, -0.662072, 0.628594,
		-0.767587, -0.123933, -0.628848,
		47.481724, 34.692497, 35.008163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.396564, 27.863552, 26.748213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.017208, 27.960157, 26.666018>,  <35.789593, 28.018122, 26.616701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.017208, 27.960157, 26.666018>,  <36.396564, 27.863552, 26.748213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.017208, 27.960157, 26.666018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202790, 0.036249, 0.978551,
		0.243783, 0.969720, 0.014599,
		-0.948391, 0.241515, -0.205487,
		35.732689, 28.032612, 26.604372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255104, 28.565216, 27.066471>,  <36.396564, 27.863552, 26.748213>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255104, 28.565216, 27.066471> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.900871, 28.383678, 27.026930>,  <35.688332, 28.274755, 27.003204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.900871, 28.383678, 27.026930>,  <36.255104, 28.565216, 27.066471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.900871, 28.383678, 27.026930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177080, 0.133133, 0.975150,
		-0.429404, 0.881080, -0.198267,
		-0.885582, -0.453843, -0.098854,
		35.635197, 28.247526, 26.997274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709728, 29.031591, 27.274990>,  <36.255104, 28.565216, 27.066471>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709728, 29.031591, 27.274990> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.575367, 28.657017, 27.315504>,  <35.494751, 28.432272, 27.339813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.575367, 28.657017, 27.315504>,  <35.709728, 29.031591, 27.274990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.575367, 28.657017, 27.315504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168901, 0.165676, 0.971609,
		-0.926630, 0.309257, -0.213816,
		-0.335901, -0.936436, 0.101287,
		35.474598, 28.376085, 27.345890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047424, 29.102821, 27.645342>,  <35.709728, 29.031591, 27.274990>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.047424, 29.102821, 27.645342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.140114, 28.721560, 27.723106>,  <35.195728, 28.492802, 27.769766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.140114, 28.721560, 27.723106>,  <35.047424, 29.102821, 27.645342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140114, 28.721560, 27.723106> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122227, 0.169739, 0.977880,
		-0.965072, -0.250363, -0.077168,
		0.231726, -0.953156, 0.194412,
		35.209633, 28.435612, 27.781429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674465, 28.829643, 28.137085>,  <35.047424, 29.102821, 27.645342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674465, 28.829643, 28.137085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.975182, 28.566298, 28.151892>,  <35.155609, 28.408291, 28.160776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.975182, 28.566298, 28.151892>,  <34.674465, 28.829643, 28.137085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.975182, 28.566298, 28.151892> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044833, 0.107043, 0.993243,
		-0.657878, -0.745050, 0.109990,
		0.751789, -0.658364, 0.037018,
		35.200718, 28.368788, 28.162996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567112, 28.388947, 28.784323>,  <34.674465, 28.829643, 28.137085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.567112, 28.388947, 28.784323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.957760, 28.358446, 28.703926>,  <35.192150, 28.340147, 28.655689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.957760, 28.358446, 28.703926>,  <34.567112, 28.388947, 28.784323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957760, 28.358446, 28.703926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208965, 0.117338, 0.970858,
		-0.050445, -0.990161, 0.130528,
		0.976621, -0.076251, -0.200990,
		35.250748, 28.335571, 28.643629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740723, 27.868965, 29.143566>,  <34.567112, 28.388947, 28.784323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.740723, 27.868965, 29.143566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.080917, 28.069296, 29.079271>,  <35.285034, 28.189495, 29.040693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.080917, 28.069296, 29.079271>,  <34.740723, 27.868965, 29.143566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.080917, 28.069296, 29.079271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047013, 0.231989, 0.971582,
		0.523883, -0.833879, 0.173759,
		0.850492, 0.500826, -0.160738,
		35.336063, 28.219543, 29.031050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.062702, 27.815983, 29.797871>,  <34.740723, 27.868965, 29.143566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.062702, 27.815983, 29.797871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.292728, 28.084955, 29.611479>,  <35.430744, 28.246338, 29.499643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.292728, 28.084955, 29.611479>,  <35.062702, 27.815983, 29.797871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292728, 28.084955, 29.611479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359237, 0.304184, 0.882282,
		0.735016, -0.674767, -0.066635,
		0.575065, 0.672429, -0.465982,
		35.465248, 28.286684, 29.471684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581532, 27.850735, 30.173317>,  <35.062702, 27.815983, 29.797871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581532, 27.850735, 30.173317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.629578, 28.190052, 29.967026>,  <35.658405, 28.393642, 29.843252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.629578, 28.190052, 29.967026>,  <35.581532, 27.850735, 30.173317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629578, 28.190052, 29.967026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433783, 0.422428, 0.795856,
		0.892976, -0.319305, -0.317236,
		0.120112, 0.848292, -0.515727,
		35.665611, 28.444540, 29.812307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279572, 28.055063, 30.314528>,  <35.581532, 27.850735, 30.173317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279572, 28.055063, 30.314528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.099819, 28.390429, 30.191164>,  <35.991966, 28.591648, 30.117146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.099819, 28.390429, 30.191164>,  <36.279572, 28.055063, 30.314528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099819, 28.390429, 30.191164> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333792, 0.477813, 0.812575,
		0.828635, 0.262214, -0.494578,
		-0.449384, 0.838414, -0.308408,
		35.965004, 28.641953, 30.098642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781864, 28.497576, 30.263586>,  <36.279572, 28.055063, 30.314528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781864, 28.497576, 30.263586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.454502, 28.726007, 30.289120>,  <36.258083, 28.863066, 30.304440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.454502, 28.726007, 30.289120>,  <36.781864, 28.497576, 30.263586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454502, 28.726007, 30.289120> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445278, 0.560037, 0.698631,
		0.363225, 0.600190, -0.712629,
		-0.818410, 0.571079, 0.063832,
		36.208981, 28.897331, 30.308270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004704, 29.195877, 30.298454>,  <36.781864, 28.497576, 30.263586>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004704, 29.195877, 30.298454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.636959, 29.221043, 30.453793>,  <36.416313, 29.236141, 30.546995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.636959, 29.221043, 30.453793>,  <37.004704, 29.195877, 30.298454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636959, 29.221043, 30.453793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343413, 0.609931, 0.714179,
		-0.191933, 0.789953, -0.582354,
		-0.919364, 0.062913, 0.388346,
		36.361149, 29.239916, 30.570297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638313, 29.871866, 30.329132>,  <37.004704, 29.195877, 30.298454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638313, 29.871866, 30.329132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.499580, 29.647213, 30.629604>,  <36.416340, 29.512421, 30.809889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.499580, 29.647213, 30.629604>,  <36.638313, 29.871866, 30.329132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.499580, 29.647213, 30.629604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302108, 0.691316, 0.656363,
		-0.887941, 0.454585, -0.070096,
		-0.346832, -0.561635, 0.751181,
		36.395531, 29.478722, 30.854959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.525158, 30.387508, 30.808609>,  <36.638313, 29.871866, 30.329132>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.525158, 30.387508, 30.808609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.482456, 30.054592, 31.026194>,  <36.456833, 29.854841, 31.156744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.482456, 30.054592, 31.026194>,  <36.525158, 30.387508, 30.808609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482456, 30.054592, 31.026194> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116052, 0.532917, 0.838172,
		-0.987489, 0.152610, 0.039696,
		-0.106759, -0.832292, 0.543960,
		36.450428, 29.804905, 31.189383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.099243, 30.588011, 31.270920>,  <36.525158, 30.387508, 30.808609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.099243, 30.588011, 31.270920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.295128, 30.279354, 31.433277>,  <36.412659, 30.094160, 31.530691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.295128, 30.279354, 31.433277>,  <36.099243, 30.588011, 31.270920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295128, 30.279354, 31.433277> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155175, 0.535242, 0.830323,
		-0.857965, -0.343633, 0.381853,
		0.489711, -0.771643, 0.405895,
		36.442039, 30.047861, 31.555046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871746, 30.580509, 31.857189>,  <36.099243, 30.588011, 31.270920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871746, 30.580509, 31.857189> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.206440, 30.363098, 31.883884>,  <36.407257, 30.232653, 31.899900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.206440, 30.363098, 31.883884>,  <35.871746, 30.580509, 31.857189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.206440, 30.363098, 31.883884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160837, 0.360418, 0.918820,
		-0.523456, -0.758075, 0.388993,
		0.836735, -0.543526, 0.066737,
		36.457462, 30.200041, 31.903906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.804840, 30.104193, 32.431385>,  <35.871746, 30.580509, 31.857189>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.804840, 30.104193, 32.431385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.196404, 30.158735, 32.370537>,  <36.431343, 30.191460, 32.334030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.196404, 30.158735, 32.370537>,  <35.804840, 30.104193, 32.431385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196404, 30.158735, 32.370537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102495, 0.316294, 0.943108,
		0.176709, -0.938811, 0.295649,
		0.978912, 0.136353, -0.152116,
		36.490078, 30.199642, 32.324902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132195, 29.902443, 32.963264>,  <35.804840, 30.104193, 32.431385>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132195, 29.902443, 32.963264> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.436745, 30.109018, 32.806496>,  <36.619476, 30.232964, 32.712437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.436745, 30.109018, 32.806496>,  <36.132195, 29.902443, 32.963264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.436745, 30.109018, 32.806496> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370975, 0.148721, 0.916657,
		0.531682, -0.843312, -0.078353,
		0.761375, 0.516437, -0.391920,
		36.665157, 30.263948, 32.688919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579929, 29.664394, 33.316048>,  <36.132195, 29.902443, 32.963264>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.579929, 29.664394, 33.316048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.681526, 30.030165, 33.189987>,  <36.742485, 30.249626, 33.114353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.681526, 30.030165, 33.189987>,  <36.579929, 29.664394, 33.316048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681526, 30.030165, 33.189987> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405287, 0.195227, 0.893101,
		0.878198, -0.354562, -0.321020,
		0.253988, 0.914425, -0.315147,
		36.757721, 30.304493, 33.095444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302948, 29.689835, 33.473515>,  <36.579929, 29.664394, 33.316048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.302948, 29.689835, 33.473515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.153870, 30.057831, 33.424999>,  <37.064423, 30.278629, 33.395889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.153870, 30.057831, 33.424999>,  <37.302948, 29.689835, 33.473515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153870, 30.057831, 33.424999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552327, 0.324966, 0.767680,
		0.745674, 0.219120, -0.629251,
		-0.372699, 0.919991, -0.121293,
		37.042061, 30.333828, 33.388611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825497, 30.141323, 33.599930>,  <37.302948, 29.689835, 33.473515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.825497, 30.141323, 33.599930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.521759, 30.399904, 33.629578>,  <37.339516, 30.555052, 33.647366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.521759, 30.399904, 33.629578>,  <37.825497, 30.141323, 33.599930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.521759, 30.399904, 33.629578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354931, 0.316041, 0.879853,
		0.545358, 0.694421, -0.469430,
		-0.759347, 0.646450, 0.074116,
		37.293953, 30.593840, 33.651814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141190, 30.798664, 33.833805>,  <37.825497, 30.141323, 33.599930>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.141190, 30.798664, 33.833805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.751408, 30.811340, 33.922741>,  <37.517540, 30.818947, 33.976101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.751408, 30.811340, 33.922741>,  <38.141190, 30.798664, 33.833805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751408, 30.811340, 33.922741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219285, 0.348046, 0.911470,
		-0.048499, 0.936942, -0.346104,
		-0.974455, 0.031690, 0.222337,
		37.459072, 30.820847, 33.989441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491039, 31.167854, 33.241337>,  <38.141190, 30.798664, 33.833805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491039, 31.167854, 33.241337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.887390, 31.221117, 33.233047>,  <39.125202, 31.253075, 33.228073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.887390, 31.221117, 33.233047>,  <38.491039, 31.167854, 33.241337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.887390, 31.221117, 33.233047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012695, -0.060887, -0.998064,
		-0.134159, 0.989223, -0.058641,
		0.990878, 0.133155, -0.020726,
		39.184654, 31.261063, 33.226830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586746, 31.458570, 32.604046>,  <38.491039, 31.167854, 33.241337>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.586746, 31.458570, 32.604046> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.954090, 31.343729, 32.712997>,  <39.174496, 31.274824, 32.778366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.954090, 31.343729, 32.712997>,  <38.586746, 31.458570, 32.604046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.954090, 31.343729, 32.712997> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164080, -0.350079, -0.922237,
		0.360130, 0.891636, -0.274390,
		0.918359, -0.287104, 0.272374,
		39.229599, 31.257597, 32.794708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114964, 31.779116, 32.138096>,  <38.586746, 31.458570, 32.604046>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.114964, 31.779116, 32.138096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.282658, 31.446667, 32.284233>,  <39.383274, 31.247198, 32.371918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.282658, 31.446667, 32.284233>,  <39.114964, 31.779116, 32.138096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.282658, 31.446667, 32.284233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231975, -0.290997, -0.928175,
		0.877742, 0.473874, 0.070803,
		0.419234, -0.831122, 0.365347,
		39.408428, 31.197330, 32.393837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.650730, 31.555010, 31.671907>,  <39.114964, 31.779116, 32.138096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.650730, 31.555010, 31.671907> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.618465, 31.220448, 31.888765>,  <39.599106, 31.019711, 32.018879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.618465, 31.220448, 31.888765>,  <39.650730, 31.555010, 31.671907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.618465, 31.220448, 31.888765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298392, -0.539235, -0.787520,
		0.951029, 0.098252, 0.293070,
		-0.080659, -0.836404, 0.542146,
		39.594269, 30.969526, 32.051411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162014, 31.143167, 31.452379>,  <39.650730, 31.555010, 31.671907>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.162014, 31.143167, 31.452379> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.922455, 30.877909, 31.631960>,  <39.778721, 30.718754, 31.739708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.922455, 30.877909, 31.631960>,  <40.162014, 31.143167, 31.452379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.922455, 30.877909, 31.631960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381102, -0.729068, -0.568525,
		0.704335, -0.169389, 0.689362,
		-0.598894, -0.663149, 0.448954,
		39.742786, 30.678965, 31.766645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.485199, 30.443953, 31.617199>,  <40.162014, 31.143167, 31.452379>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.485199, 30.443953, 31.617199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.090332, 30.381420, 31.630211>,  <39.853413, 30.343901, 31.638018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.090332, 30.381420, 31.630211>,  <40.485199, 30.443953, 31.617199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.090332, 30.381420, 31.630211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119453, -0.858187, -0.499245,
		0.105966, -0.488953, 0.865850,
		-0.987169, -0.156331, 0.032532,
		39.794182, 30.334520, 31.639971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.323097, 29.676483, 31.680716>,  <40.485199, 30.443953, 31.617199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.323097, 29.676483, 31.680716> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.988873, 29.836653, 31.530252>,  <39.788338, 29.932755, 31.439974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.988873, 29.836653, 31.530252>,  <40.323097, 29.676483, 31.680716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.988873, 29.836653, 31.530252> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005008, -0.679099, -0.734030,
		-0.549369, -0.615213, 0.565426,
		-0.835565, 0.400421, -0.376157,
		39.738205, 29.956779, 31.417406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.794281, 29.068911, 31.753595>,  <40.323097, 29.676483, 31.680716>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.794281, 29.068911, 31.753595> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.668888, 29.329414, 31.477163>,  <39.593655, 29.485718, 31.311304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.668888, 29.329414, 31.477163>,  <39.794281, 29.068911, 31.753595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.668888, 29.329414, 31.477163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231983, -0.758233, -0.609316,
		-0.920823, -0.030688, 0.388771,
		-0.313478, 0.651261, -0.691079,
		39.574844, 29.524794, 31.269840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.322712, 28.691820, 31.308290>,  <39.794281, 29.068911, 31.753595>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.322712, 28.691820, 31.308290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.331699, 29.009512, 31.065411>,  <39.337090, 29.200127, 30.919682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.331699, 29.009512, 31.065411>,  <39.322712, 28.691820, 31.308290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.331699, 29.009512, 31.065411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424441, -0.542326, -0.725074,
		-0.905177, 0.274010, 0.324921,
		0.022464, 0.794230, -0.607202,
		39.338440, 29.247782, 30.883249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719769, 28.682968, 30.974485>,  <39.322712, 28.691820, 31.308290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719769, 28.682968, 30.974485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.950756, 28.905664, 30.735634>,  <39.089348, 29.039282, 30.592323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.950756, 28.905664, 30.735634>,  <38.719769, 28.682968, 30.974485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.950756, 28.905664, 30.735634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466537, -0.375183, -0.800987,
		-0.669977, 0.741131, 0.043083,
		0.577472, 0.556743, -0.597129,
		39.123997, 29.072687, 30.556496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.290508, 28.914480, 30.481087>,  <38.719769, 28.682968, 30.974485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.290508, 28.914480, 30.481087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.654053, 28.942587, 30.316631>,  <38.872181, 28.959452, 30.217958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.654053, 28.942587, 30.316631>,  <38.290508, 28.914480, 30.481087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.654053, 28.942587, 30.316631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340632, -0.443824, -0.828849,
		-0.240715, 0.893355, -0.379438,
		0.908860, 0.070268, -0.411141,
		38.926712, 28.963667, 30.193289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152718, 29.248888, 29.894081>,  <38.290508, 28.914480, 30.481087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.152718, 29.248888, 29.894081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.483498, 29.027523, 29.854303>,  <38.681965, 28.894703, 29.830437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.483498, 29.027523, 29.854303>,  <38.152718, 29.248888, 29.894081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483498, 29.027523, 29.854303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371347, -0.404736, -0.835638,
		0.422206, 0.727957, -0.540204,
		0.826948, -0.553415, -0.099443,
		38.731583, 28.861498, 29.824471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196720, 29.184326, 29.180492>,  <38.152718, 29.248888, 29.894081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.196720, 29.184326, 29.180492> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.455925, 28.913837, 29.320669>,  <38.611446, 28.751543, 29.404776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.455925, 28.913837, 29.320669>,  <38.196720, 29.184326, 29.180492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455925, 28.913837, 29.320669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072224, -0.512601, -0.855584,
		0.758202, 0.529115, -0.381009,
		0.648008, -0.676223, 0.350440,
		38.650326, 28.710970, 29.425800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773067, 29.118467, 28.712559>,  <38.196720, 29.184326, 29.180492>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.773067, 29.118467, 28.712559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.747208, 28.780220, 28.924501>,  <38.731693, 28.577271, 29.051668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.747208, 28.780220, 28.924501>,  <38.773067, 29.118467, 28.712559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.747208, 28.780220, 28.924501> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003126, -0.531137, -0.847280,
		0.997903, -0.053116, 0.036979,
		-0.064645, -0.845619, 0.529857,
		38.727814, 28.526535, 29.083458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229153, 28.666428, 28.341614>,  <38.773067, 29.118467, 28.712559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.229153, 28.666428, 28.341614> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.968395, 28.445436, 28.549381>,  <38.811939, 28.312841, 28.674042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.968395, 28.445436, 28.549381>,  <39.229153, 28.666428, 28.341614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.968395, 28.445436, 28.549381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020131, -0.672122, -0.740167,
		0.758039, -0.492970, 0.427033,
		-0.651898, -0.552479, 0.519419,
		38.772827, 28.279694, 28.705206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454460, 27.979008, 28.138803>,  <39.229153, 28.666428, 28.341614>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.454460, 27.979008, 28.138803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.084682, 27.986971, 28.291126>,  <38.862816, 27.991749, 28.382521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.084682, 27.986971, 28.291126>,  <39.454460, 27.979008, 28.138803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.084682, 27.986971, 28.291126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306323, -0.633518, -0.710508,
		0.227105, -0.773472, 0.591748,
		-0.924441, 0.019906, 0.380807,
		38.807350, 27.992943, 28.405369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.339031, 27.288683, 28.155966>,  <39.454460, 27.979008, 28.138803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.339031, 27.288683, 28.155966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.994312, 27.490908, 28.172562>,  <38.787483, 27.612242, 28.182518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.994312, 27.490908, 28.172562>,  <39.339031, 27.288683, 28.155966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994312, 27.490908, 28.172562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358570, -0.549288, -0.754791,
		-0.358803, -0.665351, 0.654652,
		-0.861794, 0.505560, 0.041489,
		38.735775, 27.642576, 28.185007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.746254, 26.844492, 28.031855>,  <39.339031, 27.288683, 28.155966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.746254, 26.844492, 28.031855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.596523, 27.206884, 27.952776>,  <38.506687, 27.424320, 27.905329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.596523, 27.206884, 27.952776>,  <38.746254, 26.844492, 28.031855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596523, 27.206884, 27.952776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316409, -0.325192, -0.891143,
		-0.871647, -0.271021, 0.408386,
		-0.374322, 0.905979, -0.197699,
		38.484226, 27.478678, 27.893467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.184982, 26.728975, 27.616091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.252621, 27.119278, 27.560511>,  <38.293201, 27.353460, 27.527163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.252621, 27.119278, 27.560511>,  <38.184982, 26.728975, 27.616091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.252621, 27.119278, 27.560511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326956, -0.077463, -0.941860,
		-0.929789, 0.204692, 0.305931,
		0.169093, 0.975756, -0.138950,
		38.303349, 27.412004, 27.518826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.548389, 27.003645, 27.200569>,  <38.184982, 26.728975, 27.616091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.548389, 27.003645, 27.200569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.860832, 27.244093, 27.133015>,  <38.048298, 27.388363, 27.092482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.860832, 27.244093, 27.133015>,  <37.548389, 27.003645, 27.200569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.860832, 27.244093, 27.133015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067704, -0.187346, -0.979958,
		-0.620714, 0.776888, -0.105639,
		0.781108, 0.601121, -0.168886,
		38.095165, 27.424429, 27.082348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.260406, 27.467241, 26.728840>,  <37.548389, 27.003645, 27.200569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.260406, 27.467241, 26.728840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.655987, 27.454405, 26.670959>,  <37.893337, 27.446703, 26.636230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.655987, 27.454405, 26.670959>,  <37.260406, 27.467241, 26.728840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.655987, 27.454405, 26.670959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147529, -0.119077, -0.981863,
		0.014281, 0.992366, -0.122497,
		0.988955, -0.032093, -0.144702,
		37.952675, 27.444777, 26.627548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462074, 28.039108, 26.271591>,  <37.260406, 27.467241, 26.728840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462074, 28.039108, 26.271591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.778496, 27.798531, 26.226862>,  <37.968349, 27.654184, 26.200024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.778496, 27.798531, 26.226862>,  <37.462074, 28.039108, 26.271591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.778496, 27.798531, 26.226862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088477, 0.068393, -0.993728,
		0.605317, 0.795984, 0.000889,
		0.791052, -0.601442, -0.111825,
		38.015812, 27.618097, 26.193314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.898045, 28.390881, 25.837263>,  <37.462074, 28.039108, 26.271591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.898045, 28.390881, 25.837263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.069492, 28.029686, 25.825274>,  <38.172359, 27.812969, 25.818079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.069492, 28.029686, 25.825274>,  <37.898045, 28.390881, 25.837263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.069492, 28.029686, 25.825274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029015, 0.046916, -0.998477,
		0.903019, 0.427097, 0.046309,
		0.428620, -0.902988, -0.029974,
		38.198078, 27.758789, 25.816282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432304, 28.453939, 25.317327>,  <37.898045, 28.390881, 25.837263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.432304, 28.453939, 25.317327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.329975, 28.068581, 25.349367>,  <38.268578, 27.837364, 25.368591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.329975, 28.068581, 25.349367>,  <38.432304, 28.453939, 25.317327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.329975, 28.068581, 25.349367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045788, -0.094840, -0.994439,
		0.965638, -0.250737, 0.068375,
		-0.255827, -0.963398, 0.080101,
		38.253227, 27.779562, 25.373398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.652668, 28.239170, 24.717785>,  <38.432304, 28.453939, 25.317327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.652668, 28.239170, 24.717785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.450947, 27.918875, 24.847088>,  <38.329914, 27.726698, 24.924669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.450947, 27.918875, 24.847088>,  <38.652668, 28.239170, 24.717785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450947, 27.918875, 24.847088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039668, -0.352468, -0.934983,
		0.862613, -0.484342, 0.145988,
		-0.504307, -0.800737, 0.323256,
		38.299656, 27.678654, 24.944065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980381, 27.684252, 24.294819>,  <38.652668, 28.239170, 24.717785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.980381, 27.684252, 24.294819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.617748, 27.576866, 24.425068>,  <38.400169, 27.512436, 24.503218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.617748, 27.576866, 24.425068>,  <38.980381, 27.684252, 24.294819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.617748, 27.576866, 24.425068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153154, -0.509688, -0.846618,
		0.393252, -0.817402, 0.420959,
		-0.906585, -0.268463, 0.325624,
		38.345772, 27.496326, 24.522755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972359, 26.972359, 24.142628>,  <38.980381, 27.684252, 24.294819>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972359, 26.972359, 24.142628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.590302, 27.085209, 24.178656>,  <38.361069, 27.152920, 24.200272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.590302, 27.085209, 24.178656>,  <38.972359, 26.972359, 24.142628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.590302, 27.085209, 24.178656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209486, -0.428648, -0.878850,
		-0.209336, -0.858294, 0.468520,
		-0.955141, 0.282124, 0.090069,
		38.303761, 27.169846, 24.205677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628979, 26.398155, 24.009956>,  <38.972359, 26.972359, 24.142628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.628979, 26.398155, 24.009956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.388332, 26.710850, 23.944288>,  <38.243946, 26.898466, 23.904888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.388332, 26.710850, 23.944288>,  <38.628979, 26.398155, 24.009956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.388332, 26.710850, 23.944288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129373, -0.298169, -0.945705,
		-0.788243, -0.547707, 0.280518,
		-0.601611, 0.781737, -0.164171,
		38.207848, 26.945372, 23.895037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.100285, 26.096109, 23.622753>,  <38.628979, 26.398155, 24.009956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.100285, 26.096109, 23.622753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.044670, 26.488396, 23.567814>,  <38.011303, 26.723768, 23.534851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.044670, 26.488396, 23.567814>,  <38.100285, 26.096109, 23.622753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044670, 26.488396, 23.567814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268965, -0.170876, -0.947871,
		-0.953063, -0.094843, 0.287535,
		-0.139031, 0.980717, -0.137346,
		38.002960, 26.782610, 23.526609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431568, 26.226988, 23.399635>,  <38.100285, 26.096109, 23.622753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.431568, 26.226988, 23.399635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.627857, 26.553102, 23.276674>,  <37.745632, 26.748772, 23.202898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.627857, 26.553102, 23.276674>,  <37.431568, 26.226988, 23.399635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627857, 26.553102, 23.276674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248727, -0.207047, -0.946186,
		-0.835060, 0.540775, 0.101181,
		0.490724, 0.815288, -0.307401,
		37.775074, 26.797689, 23.184454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.042610, 26.547663, 22.923414>,  <37.431568, 26.226988, 23.399635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.042610, 26.547663, 22.923414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.391136, 26.729908, 22.850506>,  <37.600250, 26.839256, 22.806761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.391136, 26.729908, 22.850506>,  <37.042610, 26.547663, 22.923414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.391136, 26.729908, 22.850506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136743, -0.131298, -0.981867,
		-0.471285, 0.880440, -0.052100,
		0.871316, 0.455615, -0.182273,
		37.652531, 26.866592, 22.795824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971706, 27.087252, 22.371658>,  <37.042610, 26.547663, 22.923414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.971706, 27.087252, 22.371658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.361652, 26.998137, 22.371134>,  <37.595619, 26.944668, 22.370819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.361652, 26.998137, 22.371134>,  <36.971706, 27.087252, 22.371658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361652, 26.998137, 22.371134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046749, -0.198810, -0.978923,
		0.217832, 0.954380, -0.204228,
		0.974866, -0.222788, -0.001309,
		37.654114, 26.931299, 22.370741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220646, 27.450237, 21.786106>,  <36.971706, 27.087252, 22.371658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.220646, 27.450237, 21.786106> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.505287, 27.179539, 21.861610>,  <37.676071, 27.017118, 21.906912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.505287, 27.179539, 21.861610>,  <37.220646, 27.450237, 21.786106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.505287, 27.179539, 21.861610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163742, -0.101520, -0.981266,
		0.683232, 0.729182, 0.038570,
		0.711605, -0.676748, 0.188759,
		37.718769, 26.976515, 21.918238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652412, 27.655365, 21.323252>,  <37.220646, 27.450237, 21.786106>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652412, 27.655365, 21.323252> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.742107, 27.273485, 21.401495>,  <37.795925, 27.044357, 21.448441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.742107, 27.273485, 21.401495>,  <37.652412, 27.655365, 21.323252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742107, 27.273485, 21.401495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216691, -0.146847, -0.965133,
		0.950137, 0.258809, 0.173946,
		0.224242, -0.954701, 0.195606,
		37.809380, 26.987076, 21.460176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336834, 27.542059, 21.051043>,  <37.652412, 27.655365, 21.323252>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336834, 27.542059, 21.051043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.179893, 27.178272, 21.106073>,  <38.085728, 26.959999, 21.139091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.179893, 27.178272, 21.106073>,  <38.336834, 27.542059, 21.051043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.179893, 27.178272, 21.106073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031682, -0.162842, -0.986143,
		0.919269, -0.382557, 0.092705,
		-0.392353, -0.909468, 0.137575,
		38.062187, 26.905432, 21.147346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.763615, 27.078444, 20.665897>,  <38.336834, 27.542059, 21.051043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.763615, 27.078444, 20.665897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.407337, 26.905096, 20.720835>,  <38.193573, 26.801088, 20.753798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.407337, 26.905096, 20.720835>,  <38.763615, 27.078444, 20.665897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407337, 26.905096, 20.720835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101215, -0.105496, -0.989255,
		0.443202, -0.895021, 0.050101,
		-0.890689, -0.433369, 0.137345,
		38.140129, 26.775085, 20.762039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.850792, 26.500893, 20.278622>,  <38.763615, 27.078444, 20.665897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.850792, 26.500893, 20.278622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.455597, 26.545238, 20.321686>,  <38.218479, 26.571846, 20.347525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.455597, 26.545238, 20.321686>,  <38.850792, 26.500893, 20.278622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455597, 26.545238, 20.321686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129010, -0.208188, -0.969543,
		-0.085075, -0.971785, 0.219989,
		-0.987987, 0.110865, 0.107658,
		38.159203, 26.578499, 20.353983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.518570, 25.974384, 19.798994>,  <38.850792, 26.500893, 20.278622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.518570, 25.974384, 19.798994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.208797, 26.215380, 19.876211>,  <38.022934, 26.359976, 19.922541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.208797, 26.215380, 19.876211>,  <38.518570, 25.974384, 19.798994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.208797, 26.215380, 19.876211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221194, 0.028021, -0.974827,
		-0.592730, -0.797637, 0.111566,
		-0.774432, 0.602487, 0.193041,
		37.976467, 26.396126, 19.934124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927437, 25.777473, 19.280743>,  <38.518570, 25.974384, 19.798994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.927437, 25.777473, 19.280743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.830299, 26.149948, 19.389494>,  <37.772018, 26.373434, 19.454744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.830299, 26.149948, 19.389494>,  <37.927437, 25.777473, 19.280743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830299, 26.149948, 19.389494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374011, 0.168721, -0.911948,
		-0.895066, -0.323146, 0.307302,
		-0.242844, 0.931188, 0.271876,
		37.757446, 26.429304, 19.471056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140987, 25.937462, 19.088152>,  <37.927437, 25.777473, 19.280743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.140987, 25.937462, 19.088152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.371181, 26.264505, 19.080818>,  <37.509296, 26.460732, 19.076418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.371181, 26.264505, 19.080818>,  <37.140987, 25.937462, 19.088152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371181, 26.264505, 19.080818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338439, 0.217684, -0.915463,
		-0.744499, 0.533038, 0.401984,
		0.575482, 0.817609, -0.018336,
		37.543827, 26.509789, 19.075317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704075, 26.466217, 18.907686>,  <37.140987, 25.937462, 19.088152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704075, 26.466217, 18.907686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.063248, 26.613922, 18.811878>,  <37.278751, 26.702545, 18.754393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.063248, 26.613922, 18.811878>,  <36.704075, 26.466217, 18.907686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063248, 26.613922, 18.811878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367412, 0.329206, -0.869846,
		-0.242351, 0.869061, 0.431275,
		0.897928, 0.369264, -0.239520,
		37.332626, 26.724701, 18.740023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839916, 27.260429, 18.884043>,  <36.704075, 26.466217, 18.907686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839916, 27.260429, 18.884043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.026485, 27.042210, 18.605526>,  <37.138428, 26.911278, 18.438416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.026485, 27.042210, 18.605526>,  <36.839916, 27.260429, 18.884043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026485, 27.042210, 18.605526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496466, 0.490035, -0.716510,
		0.732099, 0.679885, -0.042281,
		0.466425, -0.545548, -0.696294,
		37.166412, 26.878546, 18.396637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271751, 27.690987, 19.224388>,  <36.839916, 27.260429, 18.884043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271751, 27.690987, 19.224388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.926178, 27.827860, 19.076593>,  <35.718834, 27.909985, 18.987917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.926178, 27.827860, 19.076593>,  <36.271751, 27.690987, 19.224388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.926178, 27.827860, 19.076593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462713, -0.249788, 0.850590,
		0.198765, 0.905824, 0.374134,
		-0.863938, 0.342184, -0.369488,
		35.666996, 27.930515, 18.965748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.031467, 28.206081, 19.673882>,  <36.271751, 27.690987, 19.224388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.031467, 28.206081, 19.673882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.705032, 28.105715, 19.465633>,  <35.509171, 28.045496, 19.340685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.705032, 28.105715, 19.465633>,  <36.031467, 28.206081, 19.673882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705032, 28.105715, 19.465633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502789, -0.135945, 0.853652,
		-0.284969, 0.958416, -0.015215,
		-0.816086, -0.250915, -0.520621,
		35.460205, 28.030441, 19.309446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570480, 28.493992, 20.050262>,  <36.031467, 28.206081, 19.673882>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570480, 28.493992, 20.050262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.385509, 28.209352, 19.838680>,  <35.274529, 28.038568, 19.711731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.385509, 28.209352, 19.838680>,  <35.570480, 28.493992, 20.050262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385509, 28.209352, 19.838680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679352, -0.099012, 0.727102,
		-0.569777, 0.695575, -0.437640,
		-0.462423, -0.711598, -0.528955,
		35.246784, 27.995872, 19.679995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835514, 28.618496, 20.090000>,  <35.570480, 28.493992, 20.050262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835514, 28.618496, 20.090000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.903271, 28.231720, 20.013752>,  <34.943924, 27.999655, 19.968004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.903271, 28.231720, 20.013752>,  <34.835514, 28.618496, 20.090000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903271, 28.231720, 20.013752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445295, -0.247638, 0.860458,
		-0.879214, -0.060877, -0.472522,
		0.169396, -0.966938, -0.190619,
		34.954090, 27.941639, 19.956566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184128, 28.196138, 20.255037>,  <34.835514, 28.618496, 20.090000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184128, 28.196138, 20.255037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.483875, 27.932259, 20.232279>,  <34.663723, 27.773930, 20.218624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.483875, 27.932259, 20.232279>,  <34.184128, 28.196138, 20.255037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.483875, 27.932259, 20.232279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205536, -0.313435, 0.927100,
		-0.629442, -0.683047, -0.370471,
		0.749371, -0.659701, -0.056899,
		34.708687, 27.734348, 20.215210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.937618, 27.700195, 20.622770>,  <34.184128, 28.196138, 20.255037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.937618, 27.700195, 20.622770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.322559, 27.595442, 20.593666>,  <34.553524, 27.532589, 20.576204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.322559, 27.595442, 20.593666>,  <33.937618, 27.700195, 20.622770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.322559, 27.595442, 20.593666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035618, -0.143881, 0.988954,
		-0.269462, -0.954314, -0.129136,
		0.962352, -0.261886, -0.072761,
		34.611263, 27.516876, 20.571838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.000549, 27.166079, 21.117537>,  <33.937618, 27.700195, 20.622770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.000549, 27.166079, 21.117537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.383118, 27.270430, 21.065071>,  <34.612659, 27.333040, 21.033592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.383118, 27.270430, 21.065071>,  <34.000549, 27.166079, 21.117537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.383118, 27.270430, 21.065071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206478, -0.286617, 0.935531,
		0.206463, -0.921843, -0.327992,
		0.956421, 0.260876, -0.131165,
		34.670044, 27.348692, 21.025723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487362, 26.677881, 21.556263>,  <34.000549, 27.166079, 21.117537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.487362, 26.677881, 21.556263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.700596, 27.011377, 21.498720>,  <34.828537, 27.211475, 21.464195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.700596, 27.011377, 21.498720>,  <34.487362, 26.677881, 21.556263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700596, 27.011377, 21.498720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300399, -0.027569, 0.953415,
		0.790935, -0.551467, -0.265152,
		0.533087, 0.833741, -0.143855,
		34.860523, 27.261499, 21.455564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094524, 26.573753, 21.938974>,  <34.487362, 26.677881, 21.556263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094524, 26.573753, 21.938974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.124180, 26.965883, 21.865797>,  <35.141972, 27.201160, 21.821892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.124180, 26.965883, 21.865797>,  <35.094524, 26.573753, 21.938974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124180, 26.965883, 21.865797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308870, 0.151855, 0.938904,
		0.948211, -0.126111, -0.291535,
		0.074135, 0.980325, -0.182942,
		35.146420, 27.259981, 21.810915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.746391, 26.832748, 22.303625>,  <35.094524, 26.573753, 21.938974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.746391, 26.832748, 22.303625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.490620, 27.136890, 22.258038>,  <35.337158, 27.319376, 22.230684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.490620, 27.136890, 22.258038>,  <35.746391, 26.832748, 22.303625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490620, 27.136890, 22.258038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267448, 0.358949, 0.894219,
		0.720834, 0.541308, -0.432878,
		-0.639429, 0.760356, -0.113971,
		35.298790, 27.364998, 22.223846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.208302, 27.464893, 22.397770>,  <35.746391, 26.832748, 22.303625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.208302, 27.464893, 22.397770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.822193, 27.549265, 22.459427>,  <35.590527, 27.599888, 22.496422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.822193, 27.549265, 22.459427>,  <36.208302, 27.464893, 22.397770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.822193, 27.549265, 22.459427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200411, 0.219349, 0.954841,
		0.167593, 0.952573, -0.254004,
		-0.965271, 0.210930, 0.154145,
		35.532612, 27.612543, 22.505671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.192142, 28.027279, 22.810474>,  <36.208302, 27.464893, 22.397770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.192142, 28.027279, 22.810474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.815323, 27.907255, 22.870476>,  <35.589230, 27.835241, 22.906477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.815323, 27.907255, 22.870476>,  <36.192142, 28.027279, 22.810474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815323, 27.907255, 22.870476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078596, 0.237286, 0.968255,
		-0.326129, 0.923937, -0.199953,
		-0.942052, -0.300060, 0.150004,
		35.532707, 27.817238, 22.915478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.039043, 28.395594, 23.413866>,  <36.192142, 28.027279, 22.810474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.039043, 28.395594, 23.413866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.744884, 28.127285, 23.375395>,  <35.568390, 27.966299, 23.352312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.744884, 28.127285, 23.375395>,  <36.039043, 28.395594, 23.413866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.744884, 28.127285, 23.375395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194205, 0.072648, 0.978267,
		-0.649208, 0.738096, -0.183693,
		-0.735400, -0.670773, -0.096178,
		35.524265, 27.926054, 23.346542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490120, 28.602673, 23.732042>,  <36.039043, 28.395594, 23.413866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.490120, 28.602673, 23.732042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.471241, 28.203997, 23.758511>,  <35.459915, 27.964790, 23.774391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.471241, 28.203997, 23.758511>,  <35.490120, 28.602673, 23.732042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.471241, 28.203997, 23.758511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200900, 0.074361, 0.976785,
		-0.978474, 0.032804, -0.203744,
		-0.047193, -0.996692, 0.066170,
		35.457085, 27.904989, 23.778362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.046368, 28.438810, 24.295649>,  <35.490120, 28.602673, 23.732042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.046368, 28.438810, 24.295649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.220531, 28.085279, 24.227221>,  <35.325031, 27.873161, 24.186165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.220531, 28.085279, 24.227221>,  <35.046368, 28.438810, 24.295649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220531, 28.085279, 24.227221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035358, -0.206670, 0.977772,
		-0.899537, -0.419685, -0.121237,
		0.435413, -0.883828, -0.171068,
		35.351154, 27.820131, 24.175900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.620132, 27.904228, 24.553104>,  <35.046368, 28.438810, 24.295649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.620132, 27.904228, 24.553104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.997070, 27.770613, 24.545067>,  <35.223232, 27.690443, 24.540245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.997070, 27.770613, 24.545067>,  <34.620132, 27.904228, 24.553104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.997070, 27.770613, 24.545067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035355, -0.159088, 0.986631,
		-0.332769, -0.929037, -0.161726,
		0.942345, -0.334038, -0.020093,
		35.279774, 27.670403, 24.539040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556988, 27.280380, 25.006159>,  <34.620132, 27.904228, 24.553104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556988, 27.280380, 25.006159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.944656, 27.374613, 24.977308>,  <35.177258, 27.431152, 24.959997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.944656, 27.374613, 24.977308>,  <34.556988, 27.280380, 25.006159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.944656, 27.374613, 24.977308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089260, -0.062879, 0.994022,
		0.229636, -0.969819, -0.081969,
		0.969175, 0.235580, -0.072127,
		35.235409, 27.445286, 24.955669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.894592, 26.875772, 25.516317>,  <34.556988, 27.280380, 25.006159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.894592, 26.875772, 25.516317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.161091, 27.168442, 25.458673>,  <35.320992, 27.344044, 25.424088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.161091, 27.168442, 25.458673>,  <34.894592, 26.875772, 25.516317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.161091, 27.168442, 25.458673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181684, 0.028165, 0.982953,
		0.723258, -0.681075, -0.114168,
		0.666250, 0.731672, -0.144111,
		35.360966, 27.387943, 25.415440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417484, 26.656008, 25.930487>,  <34.894592, 26.875772, 25.516317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417484, 26.656008, 25.930487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.471394, 27.049414, 25.882265>,  <35.503738, 27.285458, 25.853333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.471394, 27.049414, 25.882265>,  <35.417484, 26.656008, 25.930487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.471394, 27.049414, 25.882265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111826, 0.105789, 0.988081,
		0.984546, -0.146645, -0.095725,
		0.134771, 0.983516, -0.120553,
		35.511826, 27.344469, 25.846100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934101, 26.894964, 26.388353>,  <35.417484, 26.656008, 25.930487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934101, 26.894964, 26.388353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.716862, 27.218304, 26.297478>,  <35.586517, 27.412308, 26.242952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.716862, 27.218304, 26.297478>,  <35.934101, 26.894964, 26.388353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716862, 27.218304, 26.297478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169400, 0.159525, 0.972551,
		0.822405, 0.566675, 0.050297,
		-0.543097, 0.808351, -0.227188,
		35.553932, 27.460810, 26.229321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.876953, 28.279491, 29.776699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.526608, 28.472515, 29.776625>,  <39.316399, 28.588329, 29.776581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.526608, 28.472515, 29.776625>,  <39.876953, 28.279491, 29.776699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.526608, 28.472515, 29.776625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418328, 0.759472, 0.498202,
		0.240551, 0.436280, -0.867061,
		-0.875864, 0.482559, -0.000184,
		39.263847, 28.617283, 29.776569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002995, 28.961342, 29.548201>,  <39.876953, 28.279491, 29.776699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.002995, 28.961342, 29.548201> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.655712, 28.986753, 29.745049>,  <39.447342, 29.002001, 29.863157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.655712, 28.986753, 29.745049>,  <40.002995, 28.961342, 29.548201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.655712, 28.986753, 29.745049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374380, 0.734778, 0.565633,
		-0.325663, 0.675325, -0.661724,
		-0.868207, 0.063530, 0.492118,
		39.395248, 29.005812, 29.892683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821808, 29.784273, 29.723925>,  <40.002995, 28.961342, 29.548201>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.821808, 29.784273, 29.723925> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.620903, 29.553154, 29.981260>,  <39.500362, 29.414482, 30.135662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.620903, 29.553154, 29.981260>,  <39.821808, 29.784273, 29.723925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.620903, 29.553154, 29.981260> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221894, 0.632954, 0.741709,
		-0.835762, 0.515283, -0.189697,
		-0.502260, -0.577800, 0.643337,
		39.470226, 29.379814, 30.174261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786816, 30.192924, 30.186016>,  <39.821808, 29.784273, 29.723925>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.786816, 30.192924, 30.186016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.609364, 29.901640, 30.394976>,  <39.502892, 29.726870, 30.520351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.609364, 29.901640, 30.394976>,  <39.786816, 30.192924, 30.186016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.609364, 29.901640, 30.394976> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070252, 0.552845, 0.830317,
		-0.893452, 0.405054, -0.194101,
		-0.443631, -0.728212, 0.522397,
		39.476273, 29.683176, 30.551695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.048477, 30.369007, 30.459806>,  <39.786816, 30.192924, 30.186016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.048477, 30.369007, 30.459806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.242477, 30.104013, 30.688152>,  <39.358879, 29.945017, 30.825161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.242477, 30.104013, 30.688152>,  <39.048477, 30.369007, 30.459806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.242477, 30.104013, 30.688152> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017251, 0.659902, 0.751153,
		-0.874343, -0.354462, 0.331482,
		0.485001, -0.662484, 0.570866,
		39.387978, 29.905268, 30.859413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573582, 30.408831, 31.038864>,  <39.048477, 30.369007, 30.459806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573582, 30.408831, 31.038864> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.921520, 30.238424, 31.138371>,  <39.130283, 30.136181, 31.198074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.921520, 30.238424, 31.138371>,  <38.573582, 30.408831, 31.038864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.921520, 30.238424, 31.138371> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081010, 0.374072, 0.923854,
		-0.486632, -0.823761, 0.290873,
		0.869842, -0.426014, 0.248768,
		39.182472, 30.110620, 31.213001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528759, 30.122448, 31.736300>,  <38.573582, 30.408831, 31.038864>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.528759, 30.122448, 31.736300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.916809, 30.201666, 31.680256>,  <39.149639, 30.249197, 31.646629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.916809, 30.201666, 31.680256>,  <38.528759, 30.122448, 31.736300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916809, 30.201666, 31.680256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029199, 0.478031, 0.877857,
		0.240830, -0.855725, 0.457969,
		0.970128, 0.198042, -0.140111,
		39.207848, 30.261078, 31.638222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814274, 29.991982, 32.336334>,  <38.528759, 30.122448, 31.736300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.814274, 29.991982, 32.336334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.120193, 30.189915, 32.171303>,  <39.303745, 30.308674, 32.072285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.120193, 30.189915, 32.171303>,  <38.814274, 29.991982, 32.336334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120193, 30.189915, 32.171303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144248, 0.492606, 0.858214,
		0.627911, -0.715876, 0.305367,
		0.764801, 0.494834, -0.412577,
		39.349632, 30.338364, 32.047531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396000, 29.889395, 32.763634>,  <38.814274, 29.991982, 32.336334>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.396000, 29.889395, 32.763634> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.442013, 30.223791, 32.549011>,  <39.469620, 30.424429, 32.420238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.442013, 30.223791, 32.549011>,  <39.396000, 29.889395, 32.763634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.442013, 30.223791, 32.549011> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195036, 0.510618, 0.837395,
		0.974027, -0.200978, -0.104308,
		0.115036, 0.835989, -0.536553,
		39.476524, 30.474588, 32.388046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.946911, 30.182467, 33.032726>,  <39.396000, 29.889395, 32.763634>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.946911, 30.182467, 33.032726> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.775726, 30.486425, 32.837013>,  <39.673016, 30.668800, 32.719585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.775726, 30.486425, 32.837013>,  <39.946911, 30.182467, 33.032726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775726, 30.486425, 32.837013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000896, 0.541724, 0.840556,
		0.903795, 0.359290, -0.232520,
		-0.427965, 0.759898, -0.489285,
		39.647335, 30.714396, 32.690228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.356716, 30.741970, 33.178185>,  <39.946911, 30.182467, 33.032726>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.356716, 30.741970, 33.178185> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.008900, 30.901850, 33.062160>,  <39.800209, 30.997778, 32.992546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.008900, 30.901850, 33.062160>,  <40.356716, 30.741970, 33.178185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.008900, 30.901850, 33.062160> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044600, 0.648493, 0.759913,
		0.491841, 0.647839, -0.581719,
		-0.869542, 0.399701, -0.290062,
		39.748035, 31.021761, 32.975143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.527760, 31.413736, 33.113243>,  <40.356716, 30.741970, 33.178185>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.527760, 31.413736, 33.113243> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.132324, 31.366251, 33.150326>,  <39.895061, 31.337759, 33.172577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.132324, 31.366251, 33.150326>,  <40.527760, 31.413736, 33.113243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.132324, 31.366251, 33.150326> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024840, 0.735565, 0.676998,
		-0.148562, 0.666971, -0.730122,
		-0.988591, -0.118713, 0.092709,
		39.835747, 31.330637, 33.178139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.196404, 32.057346, 33.105339>,  <40.527760, 31.413736, 33.113243>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.196404, 32.057346, 33.105339> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.934738, 31.819620, 33.292469>,  <39.777740, 31.676985, 33.404747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.934738, 31.819620, 33.292469>,  <40.196404, 32.057346, 33.105339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.934738, 31.819620, 33.292469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001034, 0.619229, 0.785210,
		-0.756356, 0.513169, -0.405689,
		-0.654160, -0.594318, 0.467826,
		39.738491, 31.641325, 33.432816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470440, 32.351807, 33.263302>,  <40.196404, 32.057346, 33.105339>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.470440, 32.351807, 33.263302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.671574, 32.099468, 33.499668>,  <39.792255, 31.948065, 33.641487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.671574, 32.099468, 33.499668>,  <39.470440, 32.351807, 33.263302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.671574, 32.099468, 33.499668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150648, 0.737130, 0.658744,
		-0.851152, -0.242220, 0.465692,
		0.502837, -0.630848, 0.590920,
		39.822426, 31.910213, 33.676945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.329700, 33.062923, 33.480457>,  <39.470440, 32.351807, 33.263302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.329700, 33.062923, 33.480457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.231728, 33.450554, 33.492420>,  <39.172943, 33.683132, 33.499599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.231728, 33.450554, 33.492420>,  <39.329700, 33.062923, 33.480457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231728, 33.450554, 33.492420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486990, -0.096296, -0.868083,
		-0.838360, -0.227187, 0.495518,
		-0.244934, 0.969079, 0.029907,
		39.158249, 33.741276, 33.501392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613369, 33.178791, 33.292446>,  <39.329700, 33.062923, 33.480457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613369, 33.178791, 33.292446> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.824379, 33.508545, 33.210361>,  <38.950985, 33.706398, 33.161110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.824379, 33.508545, 33.210361>,  <38.613369, 33.178791, 33.292446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.824379, 33.508545, 33.210361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345036, -0.012832, -0.938502,
		-0.776316, 0.565891, 0.277671,
		0.527527, 0.824380, -0.205214,
		38.982635, 33.755859, 33.148796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132973, 33.730633, 32.925861>,  <38.613369, 33.178791, 33.292446>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.132973, 33.730633, 32.925861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.512024, 33.833241, 32.849751>,  <38.739452, 33.894806, 32.804085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.512024, 33.833241, 32.849751>,  <38.132973, 33.730633, 32.925861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512024, 33.833241, 32.849751> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193330, -0.013514, -0.981041,
		-0.254231, 0.966444, 0.036787,
		0.947623, 0.256523, -0.190278,
		38.796310, 33.910198, 32.792667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101105, 34.332500, 32.540024>,  <38.132973, 33.730633, 32.925861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.101105, 34.332500, 32.540024> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.469090, 34.202061, 32.453007>,  <38.689880, 34.123798, 32.400795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.469090, 34.202061, 32.453007>,  <38.101105, 34.332500, 32.540024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469090, 34.202061, 32.453007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185856, 0.125774, -0.974494,
		0.345140, 0.936932, 0.055101,
		0.919965, -0.326096, -0.217544,
		38.745079, 34.104233, 32.387745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.368649, 34.828686, 32.048752>,  <38.101105, 34.332500, 32.540024>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.368649, 34.828686, 32.048752> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.562698, 34.480083, 32.020107>,  <38.679131, 34.270924, 32.002922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.562698, 34.480083, 32.020107>,  <38.368649, 34.828686, 32.048752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.562698, 34.480083, 32.020107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231729, -0.049167, -0.971537,
		0.843180, 0.487913, -0.225805,
		0.485127, -0.871507, -0.071607,
		38.708237, 34.218632, 31.998625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916603, 34.784115, 31.455303>,  <38.368649, 34.828686, 32.048752>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.916603, 34.784115, 31.455303> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.822224, 34.398582, 31.504864>,  <38.765594, 34.167263, 31.534601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.822224, 34.398582, 31.504864>,  <38.916603, 34.784115, 31.455303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822224, 34.398582, 31.504864> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209793, -0.073973, -0.974943,
		0.948849, -0.256031, -0.184752,
		-0.235949, -0.963834, 0.123903,
		38.751438, 34.109432, 31.542034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183529, 34.504623, 30.924902>,  <38.916603, 34.784115, 31.455303>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.183529, 34.504623, 30.924902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.911961, 34.236767, 31.045330>,  <38.749020, 34.076054, 31.117586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.911961, 34.236767, 31.045330>,  <39.183529, 34.504623, 30.924902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.911961, 34.236767, 31.045330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255023, -0.169448, -0.951972,
		0.688498, -0.723094, -0.055733,
		-0.678922, -0.669643, 0.301070,
		38.708282, 34.035873, 31.135651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.323368, 33.965805, 30.498377>,  <39.183529, 34.504623, 30.924902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.323368, 33.965805, 30.498377> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.949036, 33.922356, 30.632488>,  <38.724434, 33.896286, 30.712955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.949036, 33.922356, 30.632488>,  <39.323368, 33.965805, 30.498377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.949036, 33.922356, 30.632488> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294805, -0.280051, -0.913598,
		0.193135, -0.953820, 0.230058,
		-0.935836, -0.108626, 0.335279,
		38.668285, 33.889767, 30.733072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.143917, 33.423649, 30.300529>,  <39.323368, 33.965805, 30.498377>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.143917, 33.423649, 30.300529> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.773746, 33.571678, 30.333088>,  <38.551643, 33.660496, 30.352623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.773746, 33.571678, 30.333088>,  <39.143917, 33.423649, 30.300529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773746, 33.571678, 30.333088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294414, -0.567023, -0.769288,
		-0.238542, -0.735886, 0.633695,
		-0.925429, 0.370076, 0.081396,
		38.496117, 33.682701, 30.357506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.675747, 32.908337, 30.166103>,  <39.143917, 33.423649, 30.300529>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.675747, 32.908337, 30.166103> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.453758, 33.237652, 30.118420>,  <38.320564, 33.435242, 30.089809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.453758, 33.237652, 30.118420>,  <38.675747, 32.908337, 30.166103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453758, 33.237652, 30.118420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281414, -0.320660, -0.904425,
		-0.782824, -0.468382, 0.409640,
		-0.554971, 0.823283, -0.119211,
		38.287266, 33.484638, 30.082657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118217, 32.671188, 29.853979>,  <38.675747, 32.908337, 30.166103>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.118217, 32.671188, 29.853979> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.114368, 33.066250, 29.791435>,  <38.112061, 33.303288, 29.753910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.114368, 33.066250, 29.791435>,  <38.118217, 32.671188, 29.853979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114368, 33.066250, 29.791435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124552, -0.156330, -0.979820,
		-0.992166, 0.010050, 0.124518,
		-0.009619, 0.987654, -0.156357,
		38.111485, 33.362545, 29.744528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599777, 32.735683, 29.430227>,  <38.118217, 32.671188, 29.853979>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.599777, 32.735683, 29.430227> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.757866, 33.098003, 29.369131>,  <37.852718, 33.315395, 29.332474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.757866, 33.098003, 29.369131>,  <37.599777, 32.735683, 29.430227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.757866, 33.098003, 29.369131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225220, -0.065654, -0.972093,
		-0.890549, 0.418590, 0.178056,
		0.395219, 0.905799, -0.152743,
		37.876431, 33.369743, 29.323309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154163, 33.121571, 29.025518>,  <37.599777, 32.735683, 29.430227>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154163, 33.121571, 29.025518> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.506420, 33.303806, 28.973507>,  <37.717773, 33.413147, 28.942301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.506420, 33.303806, 28.973507>,  <37.154163, 33.121571, 29.025518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.506420, 33.303806, 28.973507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125905, -0.039538, -0.991254,
		-0.456745, 0.889312, 0.022542,
		0.880643, 0.455589, -0.130027,
		37.770615, 33.440483, 28.934498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.070793, 33.599735, 28.311621>,  <37.154163, 33.121571, 29.025518>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.070793, 33.599735, 28.311621> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.458904, 33.574738, 28.405130>,  <37.691772, 33.559738, 28.461237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.458904, 33.574738, 28.405130>,  <37.070793, 33.599735, 28.311621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458904, 33.574738, 28.405130> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209097, -0.269728, -0.939960,
		0.121796, 0.960907, -0.248645,
		0.970280, -0.062492, 0.233774,
		37.749989, 33.555988, 28.475264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021286, 34.328613, 28.328262>,  <37.070793, 33.599735, 28.311621>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.021286, 34.328613, 28.328262> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.650478, 34.472103, 28.284536>,  <36.427994, 34.558197, 28.258301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.650478, 34.472103, 28.284536>,  <37.021286, 34.328613, 28.328262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650478, 34.472103, 28.284536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128720, -0.030592, 0.991209,
		0.352227, 0.932942, 0.074534,
		-0.927020, 0.358725, -0.109313,
		36.372372, 34.579720, 28.251743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.980709, 34.886486, 28.772747>,  <37.021286, 34.328613, 28.328262>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.980709, 34.886486, 28.772747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.592777, 34.809715, 28.712614>,  <36.360020, 34.763653, 28.676535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.592777, 34.809715, 28.712614>,  <36.980709, 34.886486, 28.772747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592777, 34.809715, 28.712614> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131681, -0.106572, 0.985547,
		-0.205177, 0.975605, 0.078083,
		-0.969826, -0.191929, -0.150335,
		36.301830, 34.752136, 28.667513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.602238, 35.376347, 29.252260>,  <36.980709, 34.886486, 28.772747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.602238, 35.376347, 29.252260> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.327221, 35.106216, 29.145512>,  <36.162212, 34.944138, 29.081463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.327221, 35.106216, 29.145512>,  <36.602238, 35.376347, 29.252260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.327221, 35.106216, 29.145512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303049, -0.067123, 0.950608,
		-0.659885, 0.734457, -0.158508,
		-0.687541, -0.675328, -0.266870,
		36.120960, 34.903618, 29.065451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094143, 35.657867, 29.661201>,  <36.602238, 35.376347, 29.252260>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094143, 35.657867, 29.661201> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.999126, 35.286800, 29.545956>,  <35.942116, 35.064159, 29.476809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.999126, 35.286800, 29.545956>,  <36.094143, 35.657867, 29.661201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.999126, 35.286800, 29.545956> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253961, -0.226980, 0.940204,
		-0.937591, 0.296511, -0.181672,
		-0.237545, -0.927664, -0.288116,
		35.927864, 35.008499, 29.459520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313606, 35.603382, 29.785238>,  <36.094143, 35.657867, 29.661201>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313606, 35.603382, 29.785238> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.498337, 35.251125, 29.827545>,  <35.609177, 35.039772, 29.852930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.498337, 35.251125, 29.827545>,  <35.313606, 35.603382, 29.785238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.498337, 35.251125, 29.827545> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444230, -0.126439, 0.886946,
		-0.767706, -0.456604, -0.449600,
		0.461830, -0.880640, 0.105769,
		35.636887, 34.986935, 29.859276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.821510, 35.228653, 30.147675>,  <35.313606, 35.603382, 29.785238>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.821510, 35.228653, 30.147675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.160423, 35.021133, 30.193203>,  <35.363773, 34.896622, 30.220520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.160423, 35.021133, 30.193203>,  <34.821510, 35.228653, 30.147675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.160423, 35.021133, 30.193203> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228556, -0.162683, 0.959842,
		-0.479447, -0.839275, -0.256414,
		0.847286, -0.518798, 0.113823,
		35.414608, 34.865494, 30.227350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582920, 34.643219, 30.485317>,  <34.821510, 35.228653, 30.147675>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582920, 34.643219, 30.485317> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.973236, 34.697254, 30.554121>,  <35.207424, 34.729675, 30.595404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.973236, 34.697254, 30.554121>,  <34.582920, 34.643219, 30.485317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973236, 34.697254, 30.554121> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153180, -0.139254, 0.978338,
		0.156117, -0.980999, -0.115189,
		0.975789, 0.135090, 0.172009,
		35.265972, 34.737782, 30.605724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723988, 33.967422, 30.814739>,  <34.582920, 34.643219, 30.485317>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723988, 33.967422, 30.814739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.009773, 34.232380, 30.904875>,  <35.181244, 34.391354, 30.958956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.009773, 34.232380, 30.904875>,  <34.723988, 33.967422, 30.814739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.009773, 34.232380, 30.904875> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247460, -0.062023, 0.966911,
		0.654453, -0.746584, 0.119603,
		0.714462, 0.662394, 0.225341,
		35.224113, 34.431099, 30.972477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.145260, 33.673599, 31.371906>,  <34.723988, 33.967422, 30.814739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.145260, 33.673599, 31.371906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.211681, 34.068001, 31.377790>,  <35.251534, 34.304642, 31.381321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.211681, 34.068001, 31.377790>,  <35.145260, 33.673599, 31.371906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.211681, 34.068001, 31.377790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390397, 0.052035, 0.919175,
		0.905548, -0.158374, 0.393574,
		0.166053, 0.986007, 0.014709,
		35.261497, 34.363804, 31.382204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520832, 33.702965, 32.043633>,  <35.145260, 33.673599, 31.371906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520832, 33.702965, 32.043633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.379642, 34.071793, 31.980127>,  <35.294930, 34.293087, 31.942024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.379642, 34.071793, 31.980127>,  <35.520832, 33.702965, 32.043633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379642, 34.071793, 31.980127> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359617, 0.022947, 0.932818,
		0.863763, 0.386352, 0.323491,
		-0.352973, 0.922066, -0.158759,
		35.273750, 34.348412, 31.932499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590332, 34.081558, 32.696465>,  <35.520832, 33.702965, 32.043633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590332, 34.081558, 32.696465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.317768, 34.305912, 32.508381>,  <35.154232, 34.440525, 32.395531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.317768, 34.305912, 32.508381>,  <35.590332, 34.081558, 32.696465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.317768, 34.305912, 32.508381> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443465, 0.194695, 0.874890,
		0.582259, 0.804676, 0.116066,
		-0.681405, 0.560884, -0.470209,
		35.113346, 34.474178, 32.367317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441925, 34.536739, 33.166191>,  <35.590332, 34.081558, 32.696465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441925, 34.536739, 33.166191> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.147003, 34.560993, 32.897060>,  <34.970051, 34.575546, 32.735580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.147003, 34.560993, 32.897060>,  <35.441925, 34.536739, 33.166191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147003, 34.560993, 32.897060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661593, 0.136642, 0.737308,
		0.136642, 0.988763, -0.060633,
		-0.737308, 0.060633, -0.672830,
		34.925812, 34.579182, 32.695210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.946194, 35.213665, 24.397074> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600975, 35.029320, 24.479784>,  <36.393845, 34.918713, 24.529409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600975, 35.029320, 24.479784>,  <36.946194, 35.213665, 24.397074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600975, 35.029320, 24.479784> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137253, 0.607907, 0.782055,
		-0.486124, 0.646568, -0.587906,
		-0.863044, -0.460868, 0.206775,
		36.342060, 34.891060, 24.541817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.448467, 35.774532, 24.576515>,  <36.946194, 35.213665, 24.397074>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.448467, 35.774532, 24.576515> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361229, 35.413139, 24.724110>,  <36.308884, 35.196304, 24.812666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361229, 35.413139, 24.724110>,  <36.448467, 35.774532, 24.576515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361229, 35.413139, 24.724110> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077032, 0.392844, 0.916373,
		-0.972882, 0.171436, -0.155276,
		-0.218098, -0.903484, 0.368985,
		36.295799, 35.142094, 24.834805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190533, 35.981541, 25.200644>,  <36.448467, 35.774532, 24.576515>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190533, 35.981541, 25.200644> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232143, 35.586651, 25.248934>,  <36.257111, 35.349716, 25.277908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232143, 35.586651, 25.248934>,  <36.190533, 35.981541, 25.200644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232143, 35.586651, 25.248934> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202318, 0.097843, 0.974420,
		-0.973779, -0.125792, -0.189554,
		0.104027, -0.987220, 0.120728,
		36.263351, 35.290485, 25.285152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714184, 35.795815, 25.688068>,  <36.190533, 35.981541, 25.200644>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714184, 35.795815, 25.688068> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974033, 35.495049, 25.732988>,  <36.129944, 35.314590, 25.759941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974033, 35.495049, 25.732988>,  <35.714184, 35.795815, 25.688068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.974033, 35.495049, 25.732988> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054086, 0.101630, 0.993351,
		-0.758327, -0.651381, 0.025353,
		0.649627, -0.751913, 0.112299,
		36.168922, 35.269474, 25.766678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443844, 35.377979, 26.250309>,  <35.714184, 35.795815, 25.688068>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443844, 35.377979, 26.250309> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826096, 35.261299, 26.233891>,  <36.055447, 35.191292, 26.224039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826096, 35.261299, 26.233891>,  <35.443844, 35.377979, 26.250309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.826096, 35.261299, 26.233891> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032025, -0.241391, 0.969899,
		-0.292837, -0.925546, -0.240021,
		0.955626, -0.291709, -0.041047,
		36.112785, 35.173786, 26.221577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422436, 34.778549, 26.568108>,  <35.443844, 35.377979, 26.250309>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.422436, 34.778549, 26.568108> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800449, 34.907230, 26.591501>,  <36.027256, 34.984440, 26.605537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800449, 34.907230, 26.591501>,  <35.422436, 34.778549, 26.568108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.800449, 34.907230, 26.591501> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051026, -0.321761, 0.945445,
		0.322974, -0.890491, -0.320490,
		0.945031, 0.321707, 0.058482,
		36.083958, 35.003742, 26.609045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763752, 34.216290, 26.807623>,  <35.422436, 34.778549, 26.568108>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763752, 34.216290, 26.807623> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.004662, 34.520405, 26.904976>,  <36.149208, 34.702873, 26.963387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.004662, 34.520405, 26.904976>,  <35.763752, 34.216290, 26.807623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.004662, 34.520405, 26.904976> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011237, -0.296774, 0.954882,
		0.798211, -0.577834, -0.170195,
		0.602273, 0.760285, 0.243381,
		36.185345, 34.748489, 26.977991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336185, 33.974316, 27.085447>,  <35.763752, 34.216290, 26.807623>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.336185, 33.974316, 27.085447> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279587, 34.340122, 27.237047>,  <36.245628, 34.559605, 27.328007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279587, 34.340122, 27.237047>,  <36.336185, 33.974316, 27.085447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.279587, 34.340122, 27.237047> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042027, -0.388055, 0.920678,
		0.989046, 0.114347, 0.093344,
		-0.141499, 0.914515, 0.378998,
		36.237137, 34.614475, 27.350746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770107, 33.923878, 27.686604>,  <36.336185, 33.974316, 27.085447>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.770107, 33.923878, 27.686604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533699, 34.243401, 27.731489>,  <36.391853, 34.435116, 27.758421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533699, 34.243401, 27.731489>,  <36.770107, 33.923878, 27.686604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533699, 34.243401, 27.731489> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004782, -0.142577, 0.989772,
		0.806639, 0.584443, 0.088086,
		-0.591025, 0.798810, 0.112213,
		36.356392, 34.483044, 27.765154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490124, 34.049313, 27.638977>,  <36.770107, 33.923878, 27.686604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490124, 34.049313, 27.638977> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770393, 33.831783, 27.823717>,  <37.938557, 33.701267, 27.934561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770393, 33.831783, 27.823717>,  <37.490124, 34.049313, 27.638977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.770393, 33.831783, 27.823717> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187185, -0.484535, -0.854510,
		0.688485, 0.685189, -0.237707,
		0.700678, -0.543822, 0.461852,
		37.980598, 33.668636, 27.962273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344509, 34.105995, 27.462015>,  <37.490124, 34.049313, 27.638977>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.344509, 34.105995, 27.462015> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267445, 33.739651, 27.602909>,  <38.221207, 33.519844, 27.687447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267445, 33.739651, 27.602909>,  <38.344509, 34.105995, 27.462015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.267445, 33.739651, 27.602909> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230898, -0.391196, -0.890871,
		0.953712, -0.090307, 0.286841,
		-0.192663, -0.915866, 0.352237,
		38.209644, 33.464890, 27.708580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833832, 33.772816, 27.115601>,  <38.344509, 34.105995, 27.462015>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.833832, 33.772816, 27.115601> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587528, 33.492226, 27.259140>,  <38.439747, 33.323872, 27.345264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587528, 33.492226, 27.259140>,  <38.833832, 33.772816, 27.115601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.587528, 33.492226, 27.259140> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219522, -0.590127, -0.776891,
		0.756735, -0.399605, 0.517367,
		-0.615762, -0.701474, 0.358848,
		38.402798, 33.281784, 27.366795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213215, 33.138184, 27.247143>,  <38.833832, 33.772816, 27.115601>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.213215, 33.138184, 27.247143> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827728, 33.071739, 27.163567>,  <38.596436, 33.031872, 27.113420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827728, 33.071739, 27.163567>,  <39.213215, 33.138184, 27.247143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.827728, 33.071739, 27.163567> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266239, -0.654300, -0.707819,
		-0.019133, -0.737766, 0.674785,
		-0.963717, -0.166111, -0.208941,
		38.538612, 33.021904, 27.100883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100109, 32.446026, 27.404327>,  <39.213215, 33.138184, 27.247143>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100109, 32.446026, 27.404327> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787102, 32.485096, 27.158361>,  <38.599297, 32.508537, 27.010782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787102, 32.485096, 27.158361>,  <39.100109, 32.446026, 27.404327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.787102, 32.485096, 27.158361> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323418, -0.780154, -0.535499,
		-0.532036, -0.617914, 0.578896,
		-0.782521, 0.097679, -0.614914,
		38.552345, 32.514400, 26.973886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925194, 31.836107, 27.338594>,  <39.100109, 32.446026, 27.404327>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.925194, 31.836107, 27.338594> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737049, 31.995766, 27.023775>,  <38.624161, 32.091560, 26.834885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737049, 31.995766, 27.023775>,  <38.925194, 31.836107, 27.338594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.737049, 31.995766, 27.023775> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188596, -0.825793, -0.531505,
		-0.862085, -0.398434, 0.313144,
		-0.470362, 0.399145, -0.787047,
		38.595940, 32.115509, 26.787661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473751, 31.420954, 27.058838>,  <38.925194, 31.836107, 27.338594>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473751, 31.420954, 27.058838> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502258, 31.656775, 26.737005>,  <38.519363, 31.798267, 26.543905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502258, 31.656775, 26.737005>,  <38.473751, 31.420954, 27.058838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.502258, 31.656775, 26.737005> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253558, -0.790843, -0.557024,
		-0.964692, -0.164311, -0.205845,
		0.071266, 0.589550, -0.804582,
		38.523640, 31.833639, 26.495630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288933, 30.978148, 26.468058>,  <38.473751, 31.420954, 27.058838>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288933, 30.978148, 26.468058> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452400, 31.296249, 26.288925>,  <38.550480, 31.487110, 26.181446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452400, 31.296249, 26.288925>,  <38.288933, 30.978148, 26.468058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.452400, 31.296249, 26.288925> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271784, -0.574457, -0.772096,
		-0.871275, 0.193821, -0.450903,
		0.408673, 0.795256, -0.447833,
		38.575001, 31.534826, 26.154575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223705, 30.786770, 25.829428>,  <38.288933, 30.978148, 26.468058>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.223705, 30.786770, 25.829428> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499928, 31.076035, 25.824209>,  <38.665661, 31.249594, 25.821077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499928, 31.076035, 25.824209>,  <38.223705, 30.786770, 25.829428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499928, 31.076035, 25.824209> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397525, -0.394550, -0.828435,
		-0.604238, 0.566896, -0.559933,
		0.690558, 0.723159, -0.013047,
		38.707096, 31.292982, 25.820295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.308323, 31.051805, 25.067556>,  <38.223705, 30.786770, 25.829428>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.308323, 31.051805, 25.067556> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.644161, 31.136652, 25.267590>,  <38.845665, 31.187559, 25.387609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.644161, 31.136652, 25.267590>,  <38.308323, 31.051805, 25.067556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.644161, 31.136652, 25.267590> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538642, -0.205937, -0.816979,
		-0.070309, 0.955299, -0.287159,
		0.839596, 0.212117, 0.500085,
		38.896042, 31.200287, 25.417616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662991, 31.556835, 24.720112>,  <38.308323, 31.051805, 25.067556>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.662991, 31.556835, 24.720112> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934792, 31.365835, 24.942919>,  <39.097874, 31.251236, 25.076603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934792, 31.365835, 24.942919>,  <38.662991, 31.556835, 24.720112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.934792, 31.365835, 24.942919> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399835, -0.395553, -0.826843,
		0.615146, 0.784559, -0.077860,
		0.679505, -0.477498, 0.557017,
		39.138641, 31.222586, 25.110023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250465, 31.561321, 24.349201>,  <38.662991, 31.556835, 24.720112>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.250465, 31.561321, 24.349201> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.339451, 31.257113, 24.593204>,  <39.392841, 31.074587, 24.739607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.339451, 31.257113, 24.593204>,  <39.250465, 31.561321, 24.349201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.339451, 31.257113, 24.593204> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334168, -0.528305, -0.780529,
		0.915882, 0.377488, 0.136613,
		0.222467, -0.760524, 0.610009,
		39.406193, 31.028955, 24.776207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.948261, 31.486710, 24.294910>,  <39.250465, 31.561321, 24.349201>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.948261, 31.486710, 24.294910> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.803558, 31.143869, 24.441612>,  <39.716736, 30.938166, 24.529633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.803558, 31.143869, 24.441612>,  <39.948261, 31.486710, 24.294910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.803558, 31.143869, 24.441612> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465220, -0.506885, -0.725698,
		0.807898, -0.091908, 0.582112,
		-0.361761, -0.857100, 0.366754,
		39.695030, 30.886740, 24.551638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.406658, 31.080669, 24.053917>,  <39.948261, 31.486710, 24.294910>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.406658, 31.080669, 24.053917> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121948, 30.831961, 24.184624>,  <39.951122, 30.682735, 24.263048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121948, 30.831961, 24.184624>,  <40.406658, 31.080669, 24.053917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.121948, 30.831961, 24.184624> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227130, -0.643952, -0.730573,
		0.664673, -0.445784, 0.599571,
		-0.711773, -0.621773, 0.326767,
		39.908417, 30.645430, 24.282654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.970768, 28.407009, 24.574339> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.135960, 28.770990, 24.559223>,  <33.235073, 28.989380, 24.550154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.135960, 28.770990, 24.559223>,  <32.970768, 28.407009, 24.574339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.135960, 28.770990, 24.559223> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023733, 0.052234, 0.998353,
		0.910431, -0.411403, 0.043167,
		0.412980, 0.909956, -0.037791,
		33.259853, 29.043978, 24.547886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.594772, 28.402903, 25.043221>,  <32.970768, 28.407009, 24.574339>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.594772, 28.402903, 25.043221> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.515583, 28.792311, 24.997501>,  <33.468067, 29.025955, 24.970070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.515583, 28.792311, 24.997501>,  <33.594772, 28.402903, 25.043221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.515583, 28.792311, 24.997501> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196161, 0.153598, 0.968467,
		0.960378, 0.169311, -0.221375,
		-0.197975, 0.973520, -0.114300,
		33.456192, 29.084366, 24.963211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.102936, 28.663839, 25.407780>,  <33.594772, 28.402903, 25.043221>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.102936, 28.663839, 25.407780> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.810040, 28.933134, 25.366653>,  <33.634300, 29.094711, 25.341978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.810040, 28.933134, 25.366653>,  <34.102936, 28.663839, 25.407780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810040, 28.933134, 25.366653> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054002, 0.207890, 0.976660,
		0.678900, 0.709600, -0.188582,
		-0.732242, 0.673238, -0.102816,
		33.590366, 29.135105, 25.335808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261051, 29.135839, 25.850100>,  <34.102936, 28.663839, 25.407780>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.261051, 29.135839, 25.850100> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.881123, 29.250713, 25.800526>,  <33.653164, 29.319637, 25.770781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.881123, 29.250713, 25.800526>,  <34.261051, 29.135839, 25.850100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.881123, 29.250713, 25.800526> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020081, 0.339427, 0.940418,
		0.312142, 0.895719, -0.316629,
		-0.949823, 0.287186, -0.123937,
		33.596176, 29.336868, 25.763344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.255642, 29.736355, 26.096050>,  <34.261051, 29.135839, 25.850100>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.255642, 29.736355, 26.096050> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.876629, 29.611343, 26.122925>,  <33.649223, 29.536337, 26.139050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.876629, 29.611343, 26.122925>,  <34.255642, 29.736355, 26.096050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.876629, 29.611343, 26.122925> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082366, 0.441764, 0.893342,
		-0.308874, 0.840935, -0.444326,
		-0.947530, -0.312528, 0.067184,
		33.592369, 29.517586, 26.143080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.986900, 30.266922, 26.437996>,  <34.255642, 29.736355, 26.096050>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.986900, 30.266922, 26.437996> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.717564, 29.976652, 26.494579>,  <33.555962, 29.802490, 26.528530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.717564, 29.976652, 26.494579>,  <33.986900, 30.266922, 26.437996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.717564, 29.976652, 26.494579> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293279, 0.437800, 0.849893,
		-0.678676, 0.530779, -0.507614,
		-0.673339, -0.725675, 0.141458,
		33.515560, 29.758949, 26.537016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.564251, 30.553986, 26.850178>,  <33.986900, 30.266922, 26.437996>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.564251, 30.553986, 26.850178> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.439110, 30.178312, 26.906834>,  <33.364025, 29.952909, 26.940828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.439110, 30.178312, 26.906834>,  <33.564251, 30.553986, 26.850178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439110, 30.178312, 26.906834> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116950, 0.186083, 0.975549,
		-0.942575, 0.288635, -0.168053,
		-0.312849, -0.939182, 0.141642,
		33.345257, 29.896557, 26.949326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.007244, 30.619343, 27.307957>,  <33.564251, 30.553986, 26.850178>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.007244, 30.619343, 27.307957> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.147949, 30.246510, 27.342575>,  <33.232372, 30.022810, 27.363346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.147949, 30.246510, 27.342575>,  <33.007244, 30.619343, 27.307957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.147949, 30.246510, 27.342575> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120183, 0.046719, 0.991652,
		-0.928343, -0.359225, -0.095586,
		0.351760, -0.932081, 0.086544,
		33.253479, 29.966885, 27.368538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575554, 30.310303, 27.744453>,  <33.007244, 30.619343, 27.307957>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575554, 30.310303, 27.744453> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.898560, 30.074404, 27.748846>,  <33.092361, 29.932865, 27.751482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.898560, 30.074404, 27.748846>,  <32.575554, 30.310303, 27.744453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.898560, 30.074404, 27.748846> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037796, 0.070316, 0.996809,
		-0.588638, -0.804520, 0.079071,
		0.807513, -0.589748, 0.010983,
		33.140812, 29.897480, 27.752140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.595203, 29.941422, 28.376207>,  <32.575554, 30.310303, 27.744453>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.595203, 29.941422, 28.376207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.984348, 29.912798, 28.288198>,  <33.217834, 29.895624, 28.235394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.984348, 29.912798, 28.288198>,  <32.595203, 29.941422, 28.376207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.984348, 29.912798, 28.288198> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224041, 0.053968, 0.973084,
		-0.057763, -0.995975, 0.068536,
		0.972866, -0.071564, -0.220022,
		33.276207, 29.891329, 28.222193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.823120, 29.365751, 28.737009>,  <32.595203, 29.941422, 28.376207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.823120, 29.365751, 28.737009> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.122707, 29.622173, 28.669968>,  <33.302460, 29.776026, 28.629742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.122707, 29.622173, 28.669968>,  <32.823120, 29.365751, 28.737009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122707, 29.622173, 28.669968> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254128, -0.044305, 0.966156,
		0.611931, -0.766217, -0.196092,
		0.748972, 0.641053, -0.167605,
		33.347401, 29.814489, 28.619686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.376945, 29.092075, 29.129251>,  <32.823120, 29.365751, 28.737009>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.376945, 29.092075, 29.129251> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.518631, 29.457535, 29.049469>,  <33.603642, 29.676811, 29.001600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.518631, 29.457535, 29.049469>,  <33.376945, 29.092075, 29.129251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518631, 29.457535, 29.049469> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389966, 0.049545, 0.919496,
		0.849977, -0.403476, -0.338742,
		0.354211, 0.913648, -0.199454,
		33.624893, 29.731628, 28.989634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.928490, 29.096731, 29.522690>,  <33.376945, 29.092075, 29.129251>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.928490, 29.096731, 29.522690> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.816277, 29.474356, 29.453354>,  <33.748947, 29.700932, 29.411753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.816277, 29.474356, 29.453354>,  <33.928490, 29.096731, 29.522690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816277, 29.474356, 29.453354> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187365, 0.230979, 0.954747,
		0.941379, 0.235361, -0.241682,
		-0.280533, 0.944062, -0.173340,
		33.732117, 29.757574, 29.401352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.405586, 29.442163, 29.974459>,  <33.928490, 29.096731, 29.522690>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.405586, 29.442163, 29.974459> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.123966, 29.709707, 29.879005>,  <33.954994, 29.870234, 29.821733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.123966, 29.709707, 29.879005>,  <34.405586, 29.442163, 29.974459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.123966, 29.709707, 29.879005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061523, 0.392213, 0.917815,
		0.707483, 0.631503, -0.317287,
		-0.704047, 0.668859, -0.238632,
		33.912750, 29.910364, 29.807415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154503, 29.622456, 29.838005>,  <34.405586, 29.442163, 29.974459>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.154503, 29.622456, 29.838005> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.433624, 29.346436, 29.914845>,  <35.601097, 29.180824, 29.960947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.433624, 29.346436, 29.914845>,  <35.154503, 29.622456, 29.838005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433624, 29.346436, 29.914845> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125674, -0.381971, -0.915590,
		0.705177, 0.614761, -0.353262,
		0.697804, -0.690049, 0.192098,
		35.642967, 29.139421, 29.972473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.640820, 29.610214, 29.319479>,  <35.154503, 29.622456, 29.838005>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.640820, 29.610214, 29.319479> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.644184, 29.246689, 29.486326>,  <35.646202, 29.028574, 29.586435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.644184, 29.246689, 29.486326>,  <35.640820, 29.610214, 29.319479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644184, 29.246689, 29.486326> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016101, -0.416955, -0.908784,
		0.999835, 0.014364, 0.011124,
		0.008416, -0.908813, 0.417118,
		35.646709, 28.974045, 29.611462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.220467, 29.264566, 28.968342>,  <35.640820, 29.610214, 29.319479>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.220467, 29.264566, 28.968342> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.975494, 28.984734, 29.115587>,  <35.828510, 28.816833, 29.203936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.975494, 28.984734, 29.115587>,  <36.220467, 29.264566, 28.968342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975494, 28.984734, 29.115587> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048977, -0.431187, -0.900932,
		0.789004, -0.569790, 0.229810,
		-0.612433, -0.699583, 0.368115,
		35.791763, 28.774858, 29.226021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.550255, 28.681450, 28.709835>,  <36.220467, 29.264566, 28.968342>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.550255, 28.681450, 28.709835> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.168434, 28.594851, 28.791777>,  <35.939342, 28.542891, 28.840940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.168434, 28.594851, 28.791777>,  <36.550255, 28.681450, 28.709835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.168434, 28.594851, 28.791777> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032789, -0.606852, -0.794138,
		0.296246, -0.764761, 0.572171,
		-0.954549, -0.216499, 0.204853,
		35.882069, 28.529902, 28.853233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457119, 28.110651, 28.362160>,  <36.550255, 28.681450, 28.709835>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457119, 28.110651, 28.362160> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.075672, 28.183987, 28.457655>,  <35.846802, 28.227989, 28.514952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.075672, 28.183987, 28.457655>,  <36.457119, 28.110651, 28.362160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.075672, 28.183987, 28.457655> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297301, -0.449457, -0.842378,
		-0.047139, -0.874285, 0.483118,
		-0.953620, 0.183340, 0.238739,
		35.789585, 28.238989, 28.529276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071342, 27.461338, 28.208839>,  <36.457119, 28.110651, 28.362160>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071342, 27.461338, 28.208839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.815521, 27.768833, 28.207506>,  <35.662029, 27.953331, 28.206707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.815521, 27.768833, 28.207506>,  <36.071342, 27.461338, 28.208839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815521, 27.768833, 28.207506> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326503, -0.275553, -0.904138,
		-0.695965, -0.577157, 0.427227,
		-0.639553, 0.768740, -0.003332,
		35.623653, 27.999454, 28.206507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532360, 27.172373, 27.844200>,  <36.071342, 27.461338, 28.208839>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532360, 27.172373, 27.844200> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.466015, 27.566822, 27.841267>,  <35.426208, 27.803492, 27.839506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.466015, 27.566822, 27.841267>,  <35.532360, 27.172373, 27.844200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.466015, 27.566822, 27.841267> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287991, -0.055546, -0.956021,
		-0.943161, -0.156453, 0.293207,
		-0.165859, 0.986122, -0.007332,
		35.416256, 27.862659, 27.839067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784740, 27.317423, 27.551172>,  <35.532360, 27.172373, 27.844200>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.784740, 27.317423, 27.551172> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.033215, 27.622839, 27.480595>,  <35.182301, 27.806089, 27.438248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.033215, 27.622839, 27.480595>,  <34.784740, 27.317423, 27.551172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033215, 27.622839, 27.480595> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075556, -0.165750, -0.983269,
		-0.780013, 0.624124, -0.045271,
		0.621186, 0.763542, -0.176443,
		35.219570, 27.851902, 27.427662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.533051, 27.556868, 26.881674>,  <34.784740, 27.317423, 27.551172>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.533051, 27.556868, 26.881674> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.855808, 27.791010, 26.913349>,  <35.049465, 27.931496, 26.932354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.855808, 27.791010, 26.913349>,  <34.533051, 27.556868, 26.881674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.855808, 27.791010, 26.913349> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089429, 0.011456, -0.995927,
		-0.583881, 0.810694, -0.043104,
		0.806899, 0.585358, 0.079189,
		35.097878, 27.966618, 26.937105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479458, 27.913221, 26.235023>,  <34.533051, 27.556868, 26.881674>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479458, 27.913221, 26.235023> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.852657, 27.964672, 26.369471>,  <35.076576, 27.995543, 26.450138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.852657, 27.964672, 26.369471>,  <34.479458, 27.913221, 26.235023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.852657, 27.964672, 26.369471> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336224, 0.021533, -0.941536,
		-0.128345, 0.991459, -0.023158,
		0.932996, 0.128627, 0.336116,
		35.132557, 28.003260, 26.470304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963234, 28.548695, 25.986998>,  <34.479458, 27.913221, 26.235023>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.963234, 28.548695, 25.986998> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.165962, 28.212215, 26.062384>,  <35.287598, 28.010328, 26.107615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.165962, 28.212215, 26.062384>,  <34.963234, 28.548695, 25.986998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165962, 28.212215, 26.062384> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259724, -0.059459, -0.963851,
		0.821995, 0.537448, 0.188344,
		0.506821, -0.841198, 0.188463,
		35.318008, 27.959856, 26.118923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.677944, 28.600323, 25.660917>,  <34.963234, 28.548695, 25.986998>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.677944, 28.600323, 25.660917> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.634991, 28.208097, 25.726606>,  <35.609219, 27.972763, 25.766020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.634991, 28.208097, 25.726606>,  <35.677944, 28.600323, 25.660917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634991, 28.208097, 25.726606> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261650, -0.187227, -0.946829,
		0.959171, -0.058702, 0.276668,
		-0.107380, -0.980561, 0.164223,
		35.602776, 27.913929, 25.775873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126198, 28.376434, 25.131426>,  <35.677944, 28.600323, 25.660917>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.126198, 28.376434, 25.131426> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.903465, 28.057047, 25.222977>,  <35.769825, 27.865414, 25.277906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.903465, 28.057047, 25.222977>,  <36.126198, 28.376434, 25.131426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903465, 28.057047, 25.222977> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057877, -0.312176, -0.948260,
		0.828606, -0.514776, 0.220043,
		-0.556833, -0.798469, 0.228877,
		35.736416, 27.817507, 25.291639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488701, 27.695341, 24.854033>,  <36.126198, 28.376434, 25.131426>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.488701, 27.695341, 24.854033> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.093937, 27.650429, 24.900333>,  <35.857079, 27.623482, 24.928114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.093937, 27.650429, 24.900333>,  <36.488701, 27.695341, 24.854033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.093937, 27.650429, 24.900333> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097992, -0.152525, -0.983430,
		0.128077, -0.981901, 0.139526,
		-0.986912, -0.112282, 0.115753,
		35.797863, 27.616745, 24.935059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085644, 27.198969, 24.910633>,  <36.488701, 27.695341, 24.854033>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.085644, 27.198969, 24.910633> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.465668, 27.278318, 24.814268>,  <37.693680, 27.325928, 24.756449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.465668, 27.278318, 24.814268>,  <37.085644, 27.198969, 24.910633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465668, 27.278318, 24.814268> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202802, 0.194296, 0.959750,
		0.237202, -0.960675, 0.144361,
		0.950056, 0.198378, -0.240914,
		37.750687, 27.337831, 24.741995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.475853, 26.734768, 25.241135>,  <37.085644, 27.198969, 24.910633>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.475853, 26.734768, 25.241135> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.719479, 27.042862, 25.165466>,  <37.865654, 27.227718, 25.120066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.719479, 27.042862, 25.165466>,  <37.475853, 26.734768, 25.241135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.719479, 27.042862, 25.165466> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222556, 0.062955, 0.972885,
		0.761259, -0.634646, -0.133077,
		0.609060, 0.770235, -0.189169,
		37.902195, 27.273932, 25.108715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065109, 26.516294, 25.566965>,  <37.475853, 26.734768, 25.241135>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.065109, 26.516294, 25.566965> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.106384, 26.910112, 25.510361>,  <38.131149, 27.146402, 25.476398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.106384, 26.910112, 25.510361>,  <38.065109, 26.516294, 25.566965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.106384, 26.910112, 25.510361> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300417, 0.104776, 0.948036,
		0.948210, -0.140341, -0.284962,
		0.103191, 0.984544, -0.141511,
		38.137341, 27.205475, 25.467907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753983, 26.615618, 25.792221>,  <38.065109, 26.516294, 25.566965>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753983, 26.615618, 25.792221> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.559128, 26.964020, 25.817671>,  <38.442215, 27.173061, 25.832941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.559128, 26.964020, 25.817671>,  <38.753983, 26.615618, 25.792221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559128, 26.964020, 25.817671> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242084, 0.064674, 0.968098,
		0.839103, 0.486998, -0.242361,
		-0.487136, 0.871005, 0.063626,
		38.412987, 27.225321, 25.836760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062271, 26.889095, 26.281399>,  <38.753983, 26.615618, 25.792221>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.062271, 26.889095, 26.281399> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.750320, 27.136702, 26.244261>,  <38.563152, 27.285265, 26.221977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.750320, 27.136702, 26.244261>,  <39.062271, 26.889095, 26.281399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750320, 27.136702, 26.244261> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119998, 0.293435, 0.948418,
		0.614329, 0.728503, -0.303122,
		-0.779872, 0.619014, -0.092847,
		38.516357, 27.322407, 26.216406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.247471, 27.523535, 26.611418>,  <39.062271, 26.889095, 26.281399>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.247471, 27.523535, 26.611418> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.848694, 27.543407, 26.587318>,  <38.609428, 27.555332, 26.572859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.848694, 27.543407, 26.587318>,  <39.247471, 27.523535, 26.611418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.848694, 27.543407, 26.587318> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037868, 0.367159, 0.929387,
		0.068296, 0.928831, -0.364156,
		-0.996946, 0.049684, -0.060249,
		38.549610, 27.558313, 26.569244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073742, 28.166403, 26.820587>,  <39.247471, 27.523535, 26.611418>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.073742, 28.166403, 26.820587> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.757114, 27.934786, 26.898691>,  <38.567139, 27.795816, 26.945553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.757114, 27.934786, 26.898691>,  <39.073742, 28.166403, 26.820587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.757114, 27.934786, 26.898691> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053101, 0.253146, 0.965970,
		-0.608765, 0.775003, -0.169636,
		-0.791572, -0.579041, 0.195260,
		38.519642, 27.761074, 26.957270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.644295, 28.607777, 27.244371>,  <39.073742, 28.166403, 26.820587>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.644295, 28.607777, 27.244371> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.543812, 28.230505, 27.331371>,  <38.483524, 28.004141, 27.383572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.543812, 28.230505, 27.331371>,  <38.644295, 28.607777, 27.244371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543812, 28.230505, 27.331371> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123370, 0.254073, 0.959285,
		-0.960040, 0.214142, -0.180184,
		-0.251203, -0.943181, 0.217501,
		38.468452, 27.947550, 27.396622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880230, 28.588646, 27.717911>,  <38.644295, 28.607777, 27.244371>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880230, 28.588646, 27.717911> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.105656, 28.262430, 27.770512>,  <38.240910, 28.066700, 27.802073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.105656, 28.262430, 27.770512>,  <37.880230, 28.588646, 27.717911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105656, 28.262430, 27.770512> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156864, 0.050641, 0.986321,
		-0.811044, -0.576481, -0.099390,
		0.563562, -0.815540, 0.131501,
		38.274723, 28.017769, 27.809961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.549915, 28.222565, 28.254942>,  <37.880230, 28.588646, 27.717911>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.549915, 28.222565, 28.254942> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.906834, 28.042355, 28.243324>,  <38.120983, 27.934229, 28.236353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.906834, 28.042355, 28.243324>,  <37.549915, 28.222565, 28.254942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906834, 28.042355, 28.243324> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168318, 0.272289, 0.947379,
		-0.418909, -0.850227, 0.318793,
		0.892292, -0.450524, -0.029044,
		38.174522, 27.907198, 28.234612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.620079, 27.905781, 28.898603>,  <37.549915, 28.222565, 28.254942>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.620079, 27.905781, 28.898603> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.991680, 27.933321, 28.753162>,  <38.214642, 27.949846, 28.665897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.991680, 27.933321, 28.753162>,  <37.620079, 27.905781, 28.898603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.991680, 27.933321, 28.753162> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353913, 0.121787, 0.927315,
		0.108118, -0.990166, 0.088778,
		0.929008, 0.068840, -0.363600,
		38.270382, 27.953978, 28.644083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029305, 27.546741, 29.455906>,  <37.620079, 27.905781, 28.898603>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029305, 27.546741, 29.455906> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.257786, 27.777214, 29.222071>,  <38.394875, 27.915497, 29.081768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.257786, 27.777214, 29.222071>,  <38.029305, 27.546741, 29.455906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.257786, 27.777214, 29.222071> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487866, 0.334433, 0.806313,
		0.660089, -0.745768, -0.090072,
		0.571200, 0.576181, -0.584590,
		38.429146, 27.950068, 29.046694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762390, 27.439199, 29.736015>,  <38.029305, 27.546741, 29.455906>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.762390, 27.439199, 29.736015> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.752327, 27.789276, 29.542767>,  <38.746288, 27.999323, 29.426817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.752327, 27.789276, 29.542767>,  <38.762390, 27.439199, 29.736015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752327, 27.789276, 29.542767> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560928, 0.412384, 0.717843,
		0.827482, -0.252938, -0.501294,
		-0.025156, 0.875192, -0.483120,
		38.744781, 28.051834, 29.397831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396935, 27.734045, 29.839109>,  <38.762390, 27.439199, 29.736015>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.396935, 27.734045, 29.839109> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.174568, 28.052717, 29.744234>,  <39.041149, 28.243921, 29.687309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.174568, 28.052717, 29.744234>,  <39.396935, 27.734045, 29.839109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.174568, 28.052717, 29.744234> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612168, 0.585416, 0.531543,
		0.562323, 0.150295, -0.813145,
		-0.555917, 0.796680, -0.237187,
		39.007793, 28.291721, 29.673079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.677395, 30.353470, 23.908646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.279446, 30.338097, 23.946058>,  <40.040676, 30.328873, 23.968506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.279446, 30.338097, 23.946058>,  <40.677395, 30.353470, 23.908646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.279446, 30.338097, 23.946058> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069441, -0.412724, -0.908205,
		0.073510, -0.910045, 0.407940,
		-0.994874, -0.038435, 0.093533,
		39.980984, 30.326567, 23.974117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.510735, 29.699764, 23.696190>,  <40.677395, 30.353470, 23.908646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.510735, 29.699764, 23.696190> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.165783, 29.898062, 23.655127>,  <39.958813, 30.017040, 23.630487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.165783, 29.898062, 23.655127>,  <40.510735, 29.699764, 23.696190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.165783, 29.898062, 23.655127> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160316, -0.459759, -0.873453,
		-0.480216, -0.736786, 0.475961,
		-0.862375, 0.495751, -0.102665,
		39.907070, 30.046783, 23.624329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.015411, 29.237030, 23.420315>,  <40.510735, 29.699764, 23.696190>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.015411, 29.237030, 23.420315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.848812, 29.587368, 23.322803>,  <39.748852, 29.797571, 23.264297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.848812, 29.587368, 23.322803>,  <40.015411, 29.237030, 23.420315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.848812, 29.587368, 23.322803> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180957, -0.342640, -0.921874,
		-0.890946, -0.339844, 0.301198,
		-0.416496, 0.875844, -0.243777,
		39.723862, 29.850121, 23.249670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451641, 29.074007, 23.008884>,  <40.015411, 29.237030, 23.420315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.451641, 29.074007, 23.008884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.530239, 29.454372, 22.913260>,  <39.577396, 29.682592, 22.855885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.530239, 29.454372, 22.913260>,  <39.451641, 29.074007, 23.008884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.530239, 29.454372, 22.913260> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317225, -0.169049, -0.933161,
		-0.927770, 0.259198, 0.268437,
		0.196495, 0.950915, -0.239063,
		39.589188, 29.739647, 22.841541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890724, 29.357735, 22.727097>,  <39.451641, 29.074007, 23.008884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890724, 29.357735, 22.727097> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.179344, 29.601860, 22.596327>,  <39.352516, 29.748335, 22.517866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.179344, 29.601860, 22.596327>,  <38.890724, 29.357735, 22.727097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.179344, 29.601860, 22.596327> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263736, -0.194301, -0.944823,
		-0.640159, 0.767962, 0.020763,
		0.721554, 0.610313, -0.326923,
		39.395809, 29.784954, 22.498251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623947, 29.835535, 22.291124>,  <38.890724, 29.357735, 22.727097>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623947, 29.835535, 22.291124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.004398, 29.838371, 22.167639>,  <39.232670, 29.840073, 22.093548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.004398, 29.838371, 22.167639>,  <38.623947, 29.835535, 22.291124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.004398, 29.838371, 22.167639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305870, -0.115629, -0.945026,
		-0.042397, 0.993267, -0.107809,
		0.951129, 0.007091, -0.308713,
		39.289738, 29.840498, 22.075026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622265, 30.315283, 21.770065>,  <38.623947, 29.835535, 22.291124>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622265, 30.315283, 21.770065> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.961876, 30.116598, 21.698030>,  <39.165642, 29.997387, 21.654810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.961876, 30.116598, 21.698030>,  <38.622265, 30.315283, 21.770065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.961876, 30.116598, 21.698030> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306818, -0.186030, -0.933411,
		0.430133, 0.847745, -0.310344,
		0.849028, -0.496710, -0.180086,
		39.216583, 29.967585, 21.644005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.648853, 30.411768, 21.087591>,  <38.622265, 30.315283, 21.770065>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.648853, 30.411768, 21.087591> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.903446, 30.112431, 21.162287>,  <39.056202, 29.932829, 21.207104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.903446, 30.112431, 21.162287>,  <38.648853, 30.411768, 21.087591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903446, 30.112431, 21.162287> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251934, -0.430549, -0.866693,
		0.728985, 0.504589, -0.462570,
		0.636483, -0.748343, 0.186741,
		39.094391, 29.887928, 21.218309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024357, 30.314154, 20.500210>,  <38.648853, 30.411768, 21.087591>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.024357, 30.314154, 20.500210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.032570, 29.962029, 20.689791>,  <39.037498, 29.750753, 20.803539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.032570, 29.962029, 20.689791>,  <39.024357, 30.314154, 20.500210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.032570, 29.962029, 20.689791> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359906, -0.448776, -0.817965,
		0.932763, -0.153785, -0.326043,
		0.020529, -0.880312, 0.473950,
		39.038727, 29.697935, 20.831976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.258129, 29.928867, 19.996290>,  <39.024357, 30.314154, 20.500210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.258129, 29.928867, 19.996290> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.071327, 29.668278, 20.235453>,  <38.959248, 29.511925, 20.378950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.071327, 29.668278, 20.235453>,  <39.258129, 29.928867, 19.996290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071327, 29.668278, 20.235453> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244569, -0.554630, -0.795343,
		0.849762, -0.517656, 0.099683,
		-0.467001, -0.651473, 0.597907,
		38.931229, 29.472836, 20.414825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.552784, 29.250736, 19.834442>,  <39.258129, 29.928867, 19.996290>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.552784, 29.250736, 19.834442> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.215084, 29.187283, 20.039215>,  <39.012463, 29.149210, 20.162079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.215084, 29.187283, 20.039215>,  <39.552784, 29.250736, 19.834442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.215084, 29.187283, 20.039215> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329397, -0.599902, -0.729119,
		0.422772, -0.784189, 0.454215,
		-0.844252, -0.158634, 0.511932,
		38.961807, 29.139692, 20.192795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428764, 28.496525, 19.849905>,  <39.552784, 29.250736, 19.834442>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.428764, 28.496525, 19.849905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.068104, 28.627699, 19.962675>,  <38.851707, 28.706404, 20.030336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.068104, 28.627699, 19.962675>,  <39.428764, 28.496525, 19.849905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.068104, 28.627699, 19.962675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432377, -0.670730, -0.602637,
		-0.008531, -0.665267, 0.746557,
		-0.901653, 0.327935, 0.281924,
		38.797607, 28.726080, 20.047253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907360, 28.170517, 19.388735>,  <39.428764, 28.496525, 19.849905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.907360, 28.170517, 19.388735> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.687557, 28.271637, 19.707264>,  <38.555676, 28.332310, 19.898382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.687557, 28.271637, 19.707264>,  <38.907360, 28.170517, 19.388735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687557, 28.271637, 19.707264> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797457, -0.442994, -0.409657,
		0.249205, -0.860144, 0.445026,
		-0.549508, 0.252801, 0.796324,
		38.522705, 28.347477, 19.946161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570892, 27.586231, 19.759907>,  <38.907360, 28.170517, 19.388735>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.570892, 27.586231, 19.759907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.352066, 27.919735, 19.789764>,  <38.220772, 28.119837, 19.807678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.352066, 27.919735, 19.789764>,  <38.570892, 27.586231, 19.759907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.352066, 27.919735, 19.789764> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780419, -0.475741, -0.405730,
		-0.302771, -0.280210, 0.910940,
		-0.547061, 0.833758, 0.074641,
		38.187946, 28.169863, 19.812157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.150101, 27.634438, 19.167999>,  <38.570892, 27.586231, 19.759907>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.150101, 27.634438, 19.167999> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.933975, 27.298040, 19.156717>,  <37.804302, 27.096203, 19.149948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.933975, 27.298040, 19.156717>,  <38.150101, 27.634438, 19.167999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933975, 27.298040, 19.156717> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261845, -0.199892, 0.944182,
		-0.799688, 0.502768, 0.328213,
		-0.540312, -0.840992, -0.028204,
		37.771881, 27.045742, 19.148256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636642, 27.640038, 19.772520>,  <38.150101, 27.634438, 19.167999>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636642, 27.640038, 19.772520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.674282, 27.249109, 19.696634>,  <37.696865, 27.014553, 19.651102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.674282, 27.249109, 19.696634>,  <37.636642, 27.640038, 19.772520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674282, 27.249109, 19.696634> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056812, -0.184980, 0.981099,
		-0.993941, -0.103098, 0.038117,
		0.094099, -0.977319, -0.189717,
		37.702511, 26.955914, 19.639719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021797, 27.280851, 20.131952>,  <37.636642, 27.640038, 19.772520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.021797, 27.280851, 20.131952> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.325726, 27.025959, 20.080399>,  <37.508083, 26.873024, 20.049467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.325726, 27.025959, 20.080399>,  <37.021797, 27.280851, 20.131952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325726, 27.025959, 20.080399> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030403, -0.163200, 0.986125,
		-0.649423, -0.753195, -0.104629,
		0.759819, -0.637231, -0.128885,
		37.553673, 26.834789, 20.041733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.861115, 26.749882, 20.645281>,  <37.021797, 27.280851, 20.131952>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.861115, 26.749882, 20.645281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.246128, 26.718958, 20.541323>,  <37.477139, 26.700403, 20.478949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.246128, 26.718958, 20.541323>,  <36.861115, 26.749882, 20.645281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246128, 26.718958, 20.541323> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243814, -0.172631, 0.954334,
		-0.118645, -0.981948, -0.147315,
		0.962537, -0.077309, -0.259895,
		37.534889, 26.695765, 20.463354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009117, 26.175844, 20.931753>,  <36.861115, 26.749882, 20.645281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009117, 26.175844, 20.931753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.369312, 26.343288, 20.884626>,  <37.585430, 26.443754, 20.856350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.369312, 26.343288, 20.884626>,  <37.009117, 26.175844, 20.931753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369312, 26.343288, 20.884626> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181405, -0.115362, 0.976619,
		0.395232, -0.900808, -0.179821,
		0.900491, 0.418612, -0.117816,
		37.639458, 26.468872, 20.849281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532349, 25.726175, 21.226387>,  <37.009117, 26.175844, 20.931753>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532349, 25.726175, 21.226387> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.667480, 26.102619, 21.220963>,  <37.748558, 26.328485, 21.217709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.667480, 26.102619, 21.220963>,  <37.532349, 25.726175, 21.226387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.667480, 26.102619, 21.220963> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239412, -0.071989, 0.968246,
		0.910249, -0.330349, -0.249634,
		0.337830, 0.941110, -0.013561,
		37.768829, 26.384953, 21.216894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289131, 25.745155, 21.520119>,  <37.532349, 25.726175, 21.226387>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.289131, 25.745155, 21.520119> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.130154, 26.112167, 21.525518>,  <38.034767, 26.332375, 21.528757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.130154, 26.112167, 21.525518>,  <38.289131, 25.745155, 21.520119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.130154, 26.112167, 21.525518> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268663, 0.102285, 0.957788,
		0.877418, 0.384289, -0.287158,
		-0.397439, 0.917529, 0.013497,
		38.010921, 26.387426, 21.529568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507313, 25.992409, 22.217932>,  <38.289131, 25.745155, 21.520119>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.507313, 25.992409, 22.217932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.277596, 26.305431, 22.121773>,  <38.139763, 26.493244, 22.064077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.277596, 26.305431, 22.121773>,  <38.507313, 25.992409, 22.217932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.277596, 26.305431, 22.121773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168572, 0.400399, 0.900702,
		0.801104, 0.476746, -0.361864,
		-0.574296, 0.782557, -0.240395,
		38.105309, 26.540199, 22.049654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908543, 26.577139, 22.362806>,  <38.507313, 25.992409, 22.217932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.908543, 26.577139, 22.362806> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.527134, 26.696856, 22.348879>,  <38.298286, 26.768686, 22.340523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.527134, 26.696856, 22.348879>,  <38.908543, 26.577139, 22.362806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527134, 26.696856, 22.348879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063481, 0.312505, 0.947793,
		0.294547, 0.901535, -0.316981,
		-0.953526, 0.299292, -0.034817,
		38.241077, 26.786644, 22.338434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.918304, 27.286743, 22.520639>,  <38.908543, 26.577139, 22.362806>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.918304, 27.286743, 22.520639> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.550018, 27.152819, 22.600821>,  <38.329044, 27.072464, 22.648930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.550018, 27.152819, 22.600821>,  <38.918304, 27.286743, 22.520639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.550018, 27.152819, 22.600821> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031625, 0.447966, 0.893491,
		-0.388945, 0.828993, -0.401861,
		-0.920718, -0.334810, 0.200451,
		38.273804, 27.052376, 22.660955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373425, 27.794502, 22.645952>,  <38.918304, 27.286743, 22.520639>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.373425, 27.794502, 22.645952> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.211445, 27.481401, 22.834978>,  <38.114258, 27.293541, 22.948395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.211445, 27.481401, 22.834978>,  <38.373425, 27.794502, 22.645952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211445, 27.481401, 22.834978> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059332, 0.538245, 0.840698,
		-0.912413, 0.312399, -0.264403,
		-0.404947, -0.782751, 0.472566,
		38.089962, 27.246576, 22.976748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885975, 28.041315, 23.178741>,  <38.373425, 27.794502, 22.645952>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885975, 28.041315, 23.178741> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.912029, 27.656374, 23.284292>,  <37.927662, 27.425409, 23.347622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.912029, 27.656374, 23.284292>,  <37.885975, 28.041315, 23.178741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.912029, 27.656374, 23.284292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017381, 0.265491, 0.963957,
		-0.997725, -0.058205, 0.034020,
		0.065139, -0.962355, 0.263875,
		37.931572, 27.367668, 23.363455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416138, 28.014194, 23.730375>,  <37.885975, 28.041315, 23.178741>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.416138, 28.014194, 23.730375> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.652390, 27.696527, 23.787582>,  <37.794140, 27.505928, 23.821907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.652390, 27.696527, 23.787582>,  <37.416138, 28.014194, 23.730375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.652390, 27.696527, 23.787582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109422, 0.096775, 0.989273,
		-0.799489, -0.599945, -0.029741,
		0.590631, -0.794167, 0.143018,
		37.829578, 27.458277, 23.830488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043659, 27.580851, 24.199333>,  <37.416138, 28.014194, 23.730375>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043659, 27.580851, 24.199333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.429577, 27.477873, 24.220829>,  <37.661129, 27.416086, 24.233727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.429577, 27.477873, 24.220829>,  <37.043659, 27.580851, 24.199333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.429577, 27.477873, 24.220829> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001011, 0.207973, 0.978134,
		-0.262993, -0.943647, 0.200912,
		0.964797, -0.257446, 0.053741,
		37.719017, 27.400639, 24.236952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473888, 27.161348, 24.372038>,  <37.043659, 27.580851, 24.199333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473888, 27.161348, 24.372038> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.101868, 27.288704, 24.445404>,  <35.878654, 27.365116, 24.489424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.101868, 27.288704, 24.445404>,  <36.473888, 27.161348, 24.372038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.101868, 27.288704, 24.445404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149618, 0.127763, -0.980454,
		-0.335598, -0.939311, -0.071189,
		-0.930047, 0.318388, 0.183415,
		35.822853, 27.384220, 24.500429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059452, 26.780035, 23.984285>,  <36.473888, 27.161348, 24.372038>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059452, 26.780035, 23.984285> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.815063, 27.089977, 24.049173>,  <35.668430, 27.275942, 24.088106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.815063, 27.089977, 24.049173>,  <36.059452, 26.780035, 23.984285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815063, 27.089977, 24.049173> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285220, -0.024298, -0.958154,
		-0.738490, -0.631671, 0.235850,
		-0.610969, 0.774856, 0.162221,
		35.631771, 27.322433, 24.097839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464718, 26.658136, 23.546646>,  <36.059452, 26.780035, 23.984285>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464718, 26.658136, 23.546646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.435944, 27.049170, 23.625797>,  <35.418678, 27.283789, 23.673288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.435944, 27.049170, 23.625797>,  <35.464718, 26.658136, 23.546646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435944, 27.049170, 23.625797> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324248, 0.164696, -0.931525,
		-0.943233, -0.131169, 0.305132,
		-0.071933, 0.977583, 0.197878,
		35.414364, 27.342445, 23.685162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749954, 26.893675, 23.514624>,  <35.464718, 26.658136, 23.546646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749954, 26.893675, 23.514624> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.011436, 27.185175, 23.433043>,  <35.168324, 27.360075, 23.384094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.011436, 27.185175, 23.433043>,  <34.749954, 26.893675, 23.514624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.011436, 27.185175, 23.433043> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387178, 0.090511, -0.917552,
		-0.650205, 0.678773, 0.341323,
		0.653703, 0.728749, -0.203955,
		35.207546, 27.403799, 23.371857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362293, 27.344254, 23.154448>,  <34.749954, 26.893675, 23.514624>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.362293, 27.344254, 23.154448> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.732414, 27.477720, 23.082361>,  <34.954487, 27.557800, 23.039110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.732414, 27.477720, 23.082361>,  <34.362293, 27.344254, 23.154448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732414, 27.477720, 23.082361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199908, 0.025345, -0.979487,
		-0.322256, 0.942350, 0.090155,
		0.925304, 0.333669, -0.180215,
		35.010006, 27.577822, 23.028297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307621, 27.909040, 22.651857>,  <34.362293, 27.344254, 23.154448>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.307621, 27.909040, 22.651857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.694561, 27.820621, 22.602270>,  <34.926727, 27.767570, 22.572517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.694561, 27.820621, 22.602270>,  <34.307621, 27.909040, 22.651857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.694561, 27.820621, 22.602270> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128208, -0.004891, -0.991735,
		0.218614, 0.975251, -0.033071,
		0.967352, -0.221048, -0.123966,
		34.984768, 27.754307, 22.565081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.551758, 28.349434, 22.175003>,  <34.307621, 27.909040, 22.651857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.551758, 28.349434, 22.175003> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.760082, 28.007965, 22.174929>,  <34.885075, 27.803083, 22.174885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.760082, 28.007965, 22.174929>,  <34.551758, 28.349434, 22.175003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760082, 28.007965, 22.174929> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201452, -0.122692, -0.971784,
		0.829563, 0.506151, -0.235873,
		0.520809, -0.853673, -0.000184,
		34.916325, 27.751863, 22.174873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.617798, 29.120817, 21.926769>,  <34.551758, 28.349434, 22.175003>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.617798, 29.120817, 21.926769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.240078, 29.241348, 21.873848>,  <34.013447, 29.313667, 21.842096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.240078, 29.241348, 21.873848>,  <34.617798, 29.120817, 21.926769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.240078, 29.241348, 21.873848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166883, -0.091959, 0.981679,
		0.283643, 0.949075, 0.137123,
		-0.944297, 0.301330, -0.132301,
		33.956787, 29.331747, 21.834158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469906, 29.697243, 22.417910>,  <34.617798, 29.120817, 21.926769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.469906, 29.697243, 22.417910> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.115402, 29.527857, 22.342833>,  <33.902702, 29.426226, 22.297787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.115402, 29.527857, 22.342833>,  <34.469906, 29.697243, 22.417910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115402, 29.527857, 22.342833> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264412, 0.129821, 0.955632,
		-0.380309, 0.896563, -0.227023,
		-0.886257, -0.423463, -0.187691,
		33.849525, 29.400818, 22.286526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.045979, 30.092791, 22.790794>,  <34.469906, 29.697243, 22.417910>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.045979, 30.092791, 22.790794> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.848999, 29.753901, 22.711096>,  <33.730812, 29.550566, 22.663277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.848999, 29.753901, 22.711096>,  <34.045979, 30.092791, 22.790794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848999, 29.753901, 22.711096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409261, 0.023378, 0.912117,
		-0.768112, 0.530717, -0.358250,
		-0.492452, -0.847226, -0.199245,
		33.701263, 29.499733, 22.651321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.404625, 30.257418, 23.004660>,  <34.045979, 30.092791, 22.790794>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.404625, 30.257418, 23.004660> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.452858, 29.860884, 23.025511>,  <33.481796, 29.622963, 23.038021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.452858, 29.860884, 23.025511>,  <33.404625, 30.257418, 23.004660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.452858, 29.860884, 23.025511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172889, 0.030739, 0.984462,
		-0.977533, -0.127720, -0.167684,
		0.120581, -0.991334, 0.052130,
		33.489033, 29.563484, 23.041149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.806389, 30.086632, 23.411062>,  <33.404625, 30.257418, 23.004660>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.806389, 30.086632, 23.411062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.053776, 29.772907, 23.391661>,  <33.202209, 29.584673, 23.380020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.053776, 29.772907, 23.391661>,  <32.806389, 30.086632, 23.411062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.053776, 29.772907, 23.391661> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128579, -0.161896, 0.978395,
		-0.775221, -0.598868, -0.200973,
		0.618466, -0.784313, -0.048504,
		33.239315, 29.537613, 23.377110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.496311, 29.455647, 23.777878>,  <32.806389, 30.086632, 23.411062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.496311, 29.455647, 23.777878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.891651, 29.398886, 23.755865>,  <33.128857, 29.364828, 23.742659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.891651, 29.398886, 23.755865>,  <32.496311, 29.455647, 23.777878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.891651, 29.398886, 23.755865> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021834, -0.225638, 0.973966,
		-0.150622, -0.963821, -0.219911,
		0.988350, -0.141899, -0.055030,
		33.188156, 29.356316, 23.739355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.702988, 28.742107, 23.947674>,  <32.496311, 29.455647, 23.777878>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.702988, 28.742107, 23.947674> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.993382, 29.007799, 24.018944>,  <33.167618, 29.167215, 24.061705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.993382, 29.007799, 24.018944>,  <32.702988, 28.742107, 23.947674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.993382, 29.007799, 24.018944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113900, -0.139371, 0.983668,
		0.678215, -0.734420, -0.025525,
		0.725983, 0.664231, 0.178174,
		33.211178, 29.207069, 24.072395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<35.983025, 30.612373, 19.135857> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.303120, 30.489912, 19.342112>,  <36.495178, 30.416435, 19.465864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.303120, 30.489912, 19.342112>,  <35.983025, 30.612373, 19.135857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303120, 30.489912, 19.342112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299266, 0.541249, 0.785805,
		-0.519668, -0.783146, 0.341508,
		0.800241, -0.306156, 0.515638,
		36.543194, 30.398066, 19.496803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788788, 30.656231, 19.786371>,  <35.983025, 30.612373, 19.135857>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788788, 30.656231, 19.786371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.176022, 30.594406, 19.865290>,  <36.408360, 30.557310, 19.912642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.176022, 30.594406, 19.865290>,  <35.788788, 30.656231, 19.786371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176022, 30.594406, 19.865290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089578, 0.521826, 0.848336,
		-0.234077, -0.838932, 0.491325,
		0.968083, -0.154564, 0.197297,
		36.466446, 30.548037, 19.924479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928402, 30.493534, 20.597717>,  <35.788788, 30.656231, 19.786371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.928402, 30.493534, 20.597717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.254608, 30.649807, 20.426928>,  <36.450333, 30.743570, 20.324453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.254608, 30.649807, 20.426928>,  <35.928402, 30.493534, 20.597717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.254608, 30.649807, 20.426928> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205227, 0.494600, 0.844543,
		0.541129, -0.776362, 0.323173,
		0.815512, 0.390683, -0.426973,
		36.499264, 30.767012, 20.298836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404957, 30.549971, 21.230186>,  <35.928402, 30.493534, 20.597717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404957, 30.549971, 21.230186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.535225, 30.775673, 20.926723>,  <36.613384, 30.911095, 20.744646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.535225, 30.775673, 20.926723>,  <36.404957, 30.549971, 21.230186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535225, 30.775673, 20.926723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245069, 0.724599, 0.644125,
		0.913172, -0.395693, 0.097696,
		0.325666, 0.564254, -0.758655,
		36.632923, 30.944950, 20.699127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107578, 30.770588, 21.465815>,  <36.404957, 30.549971, 21.230186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.107578, 30.770588, 21.465815> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.989735, 31.009346, 21.167307>,  <36.919029, 31.152601, 20.988201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.989735, 31.009346, 21.167307>,  <37.107578, 30.770588, 21.465815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989735, 31.009346, 21.167307> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411512, 0.784057, 0.464664,
		0.862475, -0.170206, -0.476620,
		-0.294609, 0.596896, -0.746271,
		36.901352, 31.188416, 20.943426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618954, 31.364433, 21.349226>,  <37.107578, 30.770588, 21.465815>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618954, 31.364433, 21.349226> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.289238, 31.516249, 21.181181>,  <37.091408, 31.607338, 21.080353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.289238, 31.516249, 21.181181>,  <37.618954, 31.364433, 21.349226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289238, 31.516249, 21.181181> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139686, 0.855427, 0.498732,
		0.548663, 0.352416, -0.758137,
		-0.824292, 0.379536, -0.420114,
		37.041950, 31.630110, 21.055147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742096, 32.152824, 21.089174>,  <37.618954, 31.364433, 21.349226>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742096, 32.152824, 21.089174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.347763, 32.099037, 21.129267>,  <37.111164, 32.066765, 21.153322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.347763, 32.099037, 21.129267>,  <37.742096, 32.152824, 21.089174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347763, 32.099037, 21.129267> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067225, 0.864352, 0.498373,
		-0.153647, 0.484577, -0.861149,
		-0.985836, -0.134464, 0.100229,
		37.052013, 32.058697, 21.159336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512512, 32.812847, 21.091446>,  <37.742096, 32.152824, 21.089174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.512512, 32.812847, 21.091446> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.217007, 32.596058, 21.251692>,  <37.039703, 32.465984, 21.347839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.217007, 32.596058, 21.251692>,  <37.512512, 32.812847, 21.091446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217007, 32.596058, 21.251692> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247190, 0.770887, 0.587052,
		-0.626992, 0.334667, -0.703476,
		-0.738768, -0.541969, 0.400614,
		36.995377, 32.433468, 21.371876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974392, 33.238968, 21.053503>,  <37.512512, 32.812847, 21.091446>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974392, 33.238968, 21.053503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.884163, 32.981106, 21.345676>,  <36.830025, 32.826389, 21.520981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.884163, 32.981106, 21.345676>,  <36.974392, 33.238968, 21.053503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884163, 32.981106, 21.345676> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253770, 0.762756, 0.594815,
		-0.940595, -0.051189, -0.335651,
		-0.225572, -0.644658, 0.730434,
		36.816490, 32.787708, 21.564806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321484, 33.584644, 21.403397>,  <36.974392, 33.238968, 21.053503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321484, 33.584644, 21.403397> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.425327, 33.306221, 21.671162>,  <36.487633, 33.139168, 21.831820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.425327, 33.306221, 21.671162>,  <36.321484, 33.584644, 21.403397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425327, 33.306221, 21.671162> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404979, 0.550811, 0.729794,
		-0.876695, -0.460559, -0.138891,
		0.259610, -0.696055, 0.669410,
		36.503212, 33.097404, 21.871984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756817, 33.501015, 21.796539>,  <36.321484, 33.584644, 21.403397>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.756817, 33.501015, 21.796539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.073349, 33.397732, 22.018217>,  <36.263268, 33.335762, 22.151222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.073349, 33.397732, 22.018217>,  <35.756817, 33.501015, 21.796539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.073349, 33.397732, 22.018217> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321804, 0.594818, 0.736637,
		-0.519848, -0.761263, 0.387605,
		0.791328, -0.258206, 0.554192,
		36.310749, 33.320271, 22.184475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453960, 33.699345, 22.374189>,  <35.756817, 33.501015, 21.796539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.453960, 33.699345, 22.374189> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.833046, 33.620026, 22.474207>,  <36.060497, 33.572433, 22.534218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.833046, 33.620026, 22.474207>,  <35.453960, 33.699345, 22.374189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833046, 33.620026, 22.474207> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068291, 0.639352, 0.765876,
		-0.311739, -0.742904, 0.592378,
		0.947710, -0.198299, 0.250044,
		36.117359, 33.560535, 22.549221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898426, 33.218086, 22.508598>,  <35.453960, 33.699345, 22.374189>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898426, 33.218086, 22.508598> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.500744, 33.187103, 22.538404>,  <34.262135, 33.168514, 22.556288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.500744, 33.187103, 22.538404>,  <34.898426, 33.218086, 22.508598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.500744, 33.187103, 22.538404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050703, -0.273309, -0.960589,
		0.094771, -0.958803, 0.267798,
		-0.994207, -0.077458, 0.074516,
		34.202480, 33.163868, 22.560759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701599, 32.568184, 22.271488>,  <34.898426, 33.218086, 22.508598>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701599, 32.568184, 22.271488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.385506, 32.805393, 22.209717>,  <34.195850, 32.947720, 22.172653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.385506, 32.805393, 22.209717>,  <34.701599, 32.568184, 22.271488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.385506, 32.805393, 22.209717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087894, -0.359083, -0.929158,
		-0.606470, -0.720678, 0.335883,
		-0.790233, 0.593028, -0.154429,
		34.148434, 32.983303, 22.163387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197342, 32.142021, 21.976727>,  <34.701599, 32.568184, 22.271488>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.197342, 32.142021, 21.976727> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.087231, 32.517677, 21.894524>,  <34.021164, 32.743073, 21.845201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.087231, 32.517677, 21.894524>,  <34.197342, 32.142021, 21.976727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.087231, 32.517677, 21.894524> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099878, -0.240547, -0.965485,
		-0.956162, -0.245251, 0.160018,
		-0.275278, 0.939143, -0.205507,
		34.004646, 32.799419, 21.832872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.574753, 32.124157, 21.635262>,  <34.197342, 32.142021, 21.976727>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.574753, 32.124157, 21.635262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.750080, 32.468510, 21.531902>,  <33.855274, 32.675121, 21.469887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.750080, 32.468510, 21.531902>,  <33.574753, 32.124157, 21.635262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750080, 32.468510, 21.531902> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076768, -0.250581, -0.965047,
		-0.895538, 0.442830, -0.043745,
		0.438314, 0.860878, -0.258400,
		33.881573, 32.726772, 21.454382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273380, 32.244770, 21.157682>,  <33.574753, 32.124157, 21.635262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.273380, 32.244770, 21.157682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.606209, 32.461334, 21.109472>,  <33.805908, 32.591274, 21.080545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.606209, 32.461334, 21.109472>,  <33.273380, 32.244770, 21.157682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.606209, 32.461334, 21.109472> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009153, -0.230670, -0.972989,
		-0.554587, 0.808497, -0.196890,
		0.832076, 0.541409, -0.120526,
		33.855831, 32.623756, 21.073315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.114677, 32.727673, 20.615093>,  <33.273380, 32.244770, 21.157682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.114677, 32.727673, 20.615093> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.512611, 32.695114, 20.639339>,  <33.751373, 32.675579, 20.653887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.512611, 32.695114, 20.639339>,  <33.114677, 32.727673, 20.615093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.512611, 32.695114, 20.639339> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028202, -0.352002, -0.935574,
		0.097488, 0.932453, -0.347889,
		0.994837, -0.081396, 0.060613,
		33.811062, 32.670696, 20.657524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.291058, 33.003284, 19.989578>,  <33.114677, 32.727673, 20.615093>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.291058, 33.003284, 19.989578> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.627621, 32.811596, 20.089485>,  <33.829559, 32.696583, 20.149429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.627621, 32.811596, 20.089485>,  <33.291058, 33.003284, 19.989578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.627621, 32.811596, 20.089485> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126055, -0.275389, -0.953033,
		0.525493, 0.833373, -0.171307,
		0.841408, -0.479218, 0.249766,
		33.880043, 32.667831, 20.164415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.741138, 33.227249, 19.527962>,  <33.291058, 33.003284, 19.989578>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.741138, 33.227249, 19.527962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.870281, 32.873844, 19.663704>,  <33.947765, 32.661800, 19.745150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.870281, 32.873844, 19.663704>,  <33.741138, 33.227249, 19.527962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870281, 32.873844, 19.663704> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316629, -0.237072, -0.918446,
		0.891915, 0.403974, 0.203208,
		0.322853, -0.883517, 0.339358,
		33.967136, 32.608788, 19.765511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516865, 33.058933, 19.381210>,  <33.741138, 33.227249, 19.527962>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516865, 33.058933, 19.381210> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.361561, 32.693436, 19.429087>,  <34.268379, 32.474136, 19.457813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.361561, 32.693436, 19.429087>,  <34.516865, 33.058933, 19.381210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.361561, 32.693436, 19.429087> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279912, -0.240676, -0.929368,
		0.878011, -0.327334, 0.349213,
		-0.388261, -0.913744, 0.119692,
		34.245083, 32.419312, 19.464994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834305, 32.590111, 19.026161>,  <34.516865, 33.058933, 19.381210>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.834305, 32.590111, 19.026161> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.512619, 32.362495, 19.094786>,  <34.319607, 32.225925, 19.135960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.512619, 32.362495, 19.094786>,  <34.834305, 32.590111, 19.026161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512619, 32.362495, 19.094786> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045161, -0.346328, -0.937026,
		0.592625, -0.745819, 0.304220,
		-0.804212, -0.569043, 0.171561,
		34.271355, 32.191784, 19.146254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960487, 32.001228, 18.651976>,  <34.834305, 32.590111, 19.026161>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960487, 32.001228, 18.651976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.565662, 31.951290, 18.692215>,  <34.328766, 31.921328, 18.716358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.565662, 31.951290, 18.692215>,  <34.960487, 32.001228, 18.651976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565662, 31.951290, 18.692215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020410, -0.524478, -0.851179,
		0.159028, -0.842221, 0.515145,
		-0.987063, -0.124848, 0.100597,
		34.269543, 31.913836, 18.722395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.847527, 31.296972, 18.539501>,  <34.960487, 32.001228, 18.651976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.847527, 31.296972, 18.539501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.497902, 31.481901, 18.479807>,  <34.288128, 31.592859, 18.443991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.497902, 31.481901, 18.479807>,  <34.847527, 31.296972, 18.539501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497902, 31.481901, 18.479807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158828, -0.562248, -0.811574,
		-0.459115, -0.685664, 0.564870,
		-0.874064, 0.462323, -0.149234,
		34.235683, 31.620598, 18.435036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355618, 30.811447, 18.300917>,  <34.847527, 31.296972, 18.539501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.355618, 30.811447, 18.300917> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.160130, 31.139608, 18.182199>,  <34.042835, 31.336506, 18.110970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.160130, 31.139608, 18.182199>,  <34.355618, 30.811447, 18.300917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.160130, 31.139608, 18.182199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063522, -0.372747, -0.925756,
		-0.870124, -0.433585, 0.234283,
		-0.488723, 0.820405, -0.296794,
		34.013512, 31.385729, 18.093161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076397, 30.858015, 18.973919>,  <34.355618, 30.811447, 18.300917>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076397, 30.858015, 18.973919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.022018, 30.500351, 18.803276>,  <33.989391, 30.285751, 18.700890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.022018, 30.500351, 18.803276>,  <34.076397, 30.858015, 18.973919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.022018, 30.500351, 18.803276> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339328, -0.362537, 0.868000,
		-0.930793, 0.262758, -0.254129,
		-0.135943, -0.894162, -0.426608,
		33.981236, 30.232103, 18.675293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.381851, 30.705070, 19.166399>,  <34.076397, 30.858015, 18.973919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.381851, 30.705070, 19.166399> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.591309, 30.371086, 19.098705>,  <33.716984, 30.170696, 19.058090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.591309, 30.371086, 19.098705>,  <33.381851, 30.705070, 19.166399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.591309, 30.371086, 19.098705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408256, -0.420282, 0.810364,
		-0.747749, -0.355249, -0.560955,
		0.523640, -0.834962, -0.169233,
		33.748402, 30.120598, 19.047935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.984211, 30.234842, 19.546465>,  <33.381851, 30.705070, 19.166399>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.984211, 30.234842, 19.546465> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.326435, 30.045647, 19.462275>,  <33.531769, 29.932129, 19.411760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.326435, 30.045647, 19.462275>,  <32.984211, 30.234842, 19.546465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326435, 30.045647, 19.462275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061324, -0.496285, 0.865991,
		-0.514070, -0.727994, -0.453604,
		0.855554, -0.472996, -0.210481,
		33.583103, 29.903749, 19.399132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.845772, 29.440573, 19.611252>,  <32.984211, 30.234842, 19.546465>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.845772, 29.440573, 19.611252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.236248, 29.507111, 19.666950>,  <33.470531, 29.547033, 19.700369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.236248, 29.507111, 19.666950>,  <32.845772, 29.440573, 19.611252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.236248, 29.507111, 19.666950> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076525, -0.336569, 0.938544,
		0.202988, -0.926850, -0.315825,
		0.976186, 0.166344, 0.139246,
		33.529102, 29.557014, 19.708725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.025002, 28.880793, 20.015165>,  <32.845772, 29.440573, 19.611252>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.025002, 28.880793, 20.015165> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.328983, 29.133711, 20.075386>,  <33.511372, 29.285461, 20.111519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.328983, 29.133711, 20.075386>,  <33.025002, 28.880793, 20.015165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.328983, 29.133711, 20.075386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043635, -0.181477, 0.982427,
		0.648508, -0.753171, -0.110324,
		0.759957, 0.632297, 0.150553,
		33.556969, 29.323400, 20.120552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455074, 28.517536, 20.288826>,  <33.025002, 28.880793, 20.015165>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.455074, 28.517536, 20.288826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.545235, 28.893145, 20.392696>,  <33.599331, 29.118509, 20.455019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.545235, 28.893145, 20.392696>,  <33.455074, 28.517536, 20.288826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.545235, 28.893145, 20.392696> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108472, -0.240689, 0.964522,
		0.968208, -0.245575, 0.047605,
		0.225405, 0.939021, 0.259675,
		33.612858, 29.174850, 20.470598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.705616, 28.400169, 20.914871>,  <33.455074, 28.517536, 20.288826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.705616, 28.400169, 20.914871> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.685280, 28.799572, 20.922876>,  <33.673077, 29.039213, 20.927679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.685280, 28.799572, 20.922876>,  <33.705616, 28.400169, 20.914871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.685280, 28.799572, 20.922876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012905, -0.019381, 0.999729,
		0.998623, 0.051086, -0.011900,
		-0.050841, 0.998506, 0.020014,
		33.670029, 29.099123, 20.928881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.323997, 28.689896, 21.279696>,  <33.705616, 28.400169, 20.914871>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.323997, 28.689896, 21.279696> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.097584, 29.016243, 21.326967>,  <33.961735, 29.212051, 21.355331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.097584, 29.016243, 21.326967>,  <34.323997, 28.689896, 21.279696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.097584, 29.016243, 21.326967> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155640, -0.035017, 0.987193,
		0.809556, 0.577179, -0.107161,
		-0.566035, 0.815866, 0.118180,
		33.927773, 29.261003, 21.362421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021061, 28.511940, 21.515118>,  <34.323997, 28.689896, 21.279696>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021061, 28.511940, 21.515118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.070900, 28.130383, 21.624342>,  <35.100803, 27.901447, 21.689877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.070900, 28.130383, 21.624342>,  <35.021061, 28.511940, 21.515118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070900, 28.130383, 21.624342> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034935, -0.270818, -0.961997,
		0.991592, 0.129400, -0.000419,
		0.124596, -0.953894, 0.273061,
		35.108280, 27.844213, 21.706261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581352, 28.260414, 21.125315>,  <35.021061, 28.511940, 21.515118>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581352, 28.260414, 21.125315> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.357616, 27.944036, 21.224545>,  <35.223373, 27.754210, 21.284082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.357616, 27.944036, 21.224545>,  <35.581352, 28.260414, 21.125315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.357616, 27.944036, 21.224545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000269, -0.299093, -0.954224,
		0.828937, -0.533805, 0.167082,
		-0.559342, -0.790946, 0.248073,
		35.189816, 27.706753, 21.298965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914303, 27.765841, 20.835634>,  <35.581352, 28.260414, 21.125315>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914303, 27.765841, 20.835634> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.543358, 27.627968, 20.893858>,  <35.320789, 27.545244, 20.928791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.543358, 27.627968, 20.893858>,  <35.914303, 27.765841, 20.835634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.543358, 27.627968, 20.893858> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045441, -0.282393, -0.958222,
		0.371385, -0.895237, 0.246219,
		-0.927366, -0.344680, 0.145557,
		35.265148, 27.524565, 20.937525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830475, 27.085760, 20.588158>,  <35.914303, 27.765841, 20.835634>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830475, 27.085760, 20.588158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.461189, 27.238922, 20.575148>,  <35.239616, 27.330820, 20.567341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.461189, 27.238922, 20.575148>,  <35.830475, 27.085760, 20.588158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461189, 27.238922, 20.575148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047554, 0.029848, -0.998422,
		-0.381332, -0.923305, -0.045765,
		-0.923214, 0.382906, -0.032525,
		35.184223, 27.353794, 20.565390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.544403, 26.827709, 19.964804>,  <35.830475, 27.085760, 20.588158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.544403, 26.827709, 19.964804> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.261292, 27.099804, 20.041044>,  <35.091427, 27.263062, 20.086788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.261292, 27.099804, 20.041044>,  <35.544403, 26.827709, 19.964804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.261292, 27.099804, 20.041044> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062714, 0.208240, -0.976065,
		-0.703647, -0.702790, -0.104727,
		-0.707777, 0.680237, 0.190602,
		35.048958, 27.303875, 20.098225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141247, 26.805717, 19.408592>,  <35.544403, 26.827709, 19.964804>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141247, 26.805717, 19.408592> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.062546, 27.153345, 19.590145>,  <35.015327, 27.361921, 19.699078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.062546, 27.153345, 19.590145>,  <35.141247, 26.805717, 19.408592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062546, 27.153345, 19.590145> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035927, 0.456231, -0.889136,
		-0.979795, -0.191245, -0.058541,
		-0.196751, 0.869068, 0.453883,
		35.003521, 27.414066, 19.726311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512222, 27.131319, 19.024487>,  <35.141247, 26.805717, 19.408592>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512222, 27.131319, 19.024487> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.708763, 27.425728, 19.210752>,  <34.826687, 27.602373, 19.322512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.708763, 27.425728, 19.210752>,  <34.512222, 27.131319, 19.024487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.708763, 27.425728, 19.210752> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134101, 0.464350, -0.875440,
		-0.860574, 0.492598, 0.129459,
		0.491355, 0.736020, 0.465665,
		34.856171, 27.646534, 19.350452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362694, 27.750338, 18.629311>,  <34.512222, 27.131319, 19.024487>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.362694, 27.750338, 18.629311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.689983, 27.858511, 18.832237>,  <34.886356, 27.923414, 18.953993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.689983, 27.858511, 18.832237>,  <34.362694, 27.750338, 18.629311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.689983, 27.858511, 18.832237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379706, 0.408372, -0.830094,
		-0.431659, 0.871836, 0.231456,
		0.818226, 0.270432, 0.507319,
		34.935452, 27.939640, 18.984432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575699, 28.431456, 18.422489>,  <34.362694, 27.750338, 18.629311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575699, 28.431456, 18.422489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.902275, 28.271801, 18.589399>,  <35.098221, 28.176008, 18.689545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.902275, 28.271801, 18.589399>,  <34.575699, 28.431456, 18.422489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.902275, 28.271801, 18.589399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565897, 0.409350, -0.715676,
		0.114840, 0.820441, 0.560079,
		0.816439, -0.399136, 0.417276,
		35.147205, 28.152060, 18.714582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.214897, 30.645302, 34.206299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.600571, 30.733719, 34.147659>,  <36.831974, 30.786770, 34.112476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.600571, 30.733719, 34.147659>,  <36.214897, 30.645302, 34.206299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600571, 30.733719, 34.147659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178363, 0.131291, -0.975166,
		-0.196306, 0.966386, 0.166015,
		0.964184, 0.221042, -0.146595,
		36.889824, 30.800032, 34.103680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190582, 31.218700, 33.673035>,  <36.214897, 30.645302, 34.206299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190582, 31.218700, 33.673035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.559776, 31.064785, 33.675514>,  <36.781292, 30.972435, 33.677002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.559776, 31.064785, 33.675514>,  <36.190582, 31.218700, 33.673035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559776, 31.064785, 33.675514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046618, -0.127786, -0.990706,
		0.382005, 0.914116, -0.135882,
		0.922984, -0.384789, 0.006201,
		36.836670, 30.949348, 33.677376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610050, 31.552166, 33.087509>,  <36.190582, 31.218700, 33.673035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610050, 31.552166, 33.087509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.743191, 31.189119, 33.189835>,  <36.823074, 30.971291, 33.251228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.743191, 31.189119, 33.189835>,  <36.610050, 31.552166, 33.087509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.743191, 31.189119, 33.189835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027086, -0.280373, -0.959509,
		0.942589, 0.312448, -0.117907,
		0.332855, -0.907616, 0.255814,
		36.843048, 30.916834, 33.266579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239742, 31.408524, 32.688267>,  <36.610050, 31.552166, 33.087509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.239742, 31.408524, 32.688267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.105854, 31.044355, 32.785503>,  <37.025520, 30.825853, 32.843845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.105854, 31.044355, 32.785503>,  <37.239742, 31.408524, 32.688267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105854, 31.044355, 32.785503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048685, -0.274336, -0.960401,
		0.941060, -0.309629, 0.136150,
		-0.334719, -0.910423, 0.243092,
		37.005440, 30.771229, 32.858433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630825, 30.947687, 32.223747>,  <37.239742, 31.408524, 32.688267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.630825, 30.947687, 32.223747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.325394, 30.728294, 32.360050>,  <37.142136, 30.596659, 32.441833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.325394, 30.728294, 32.360050>,  <37.630825, 30.947687, 32.223747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325394, 30.728294, 32.360050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021546, -0.549070, -0.835499,
		0.645355, -0.630628, 0.431076,
		-0.763579, -0.548481, 0.340757,
		37.096321, 30.563749, 32.462276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786697, 30.268223, 32.165562>,  <37.630825, 30.947687, 32.223747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.786697, 30.268223, 32.165562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.392719, 30.225773, 32.220154>,  <37.156334, 30.200304, 32.252907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.392719, 30.225773, 32.220154>,  <37.786697, 30.268223, 32.165562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392719, 30.225773, 32.220154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049815, -0.581722, -0.811861,
		0.165549, -0.806435, 0.567676,
		-0.984943, -0.106124, 0.136476,
		37.097237, 30.193935, 32.261097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637741, 29.588202, 32.003685>,  <37.786697, 30.268223, 32.165562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.637741, 29.588202, 32.003685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.281914, 29.767469, 31.968342>,  <37.068417, 29.875031, 31.947136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.281914, 29.767469, 31.968342>,  <37.637741, 29.588202, 32.003685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281914, 29.767469, 31.968342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209932, -0.572900, -0.792284,
		-0.405696, -0.686245, 0.603721,
		-0.889573, 0.448167, -0.088358,
		37.015041, 29.901920, 31.941833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085411, 29.020386, 31.900803>,  <37.637741, 29.588202, 32.003685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.085411, 29.020386, 31.900803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.870144, 29.347136, 31.817770>,  <36.740982, 29.543186, 31.767950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.870144, 29.347136, 31.817770>,  <37.085411, 29.020386, 31.900803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.870144, 29.347136, 31.817770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487713, -0.502689, -0.713751,
		-0.687395, -0.282876, 0.668931,
		-0.538167, 0.816875, -0.207584,
		36.708694, 29.592197, 31.755495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357975, 28.710125, 31.857307>,  <37.085411, 29.020386, 31.900803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357975, 28.710125, 31.857307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.377110, 29.056665, 31.658451>,  <36.388588, 29.264589, 31.539137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.377110, 29.056665, 31.658451>,  <36.357975, 28.710125, 31.857307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.377110, 29.056665, 31.658451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442845, -0.427729, -0.787995,
		-0.895321, 0.257848, 0.363200,
		0.047832, 0.866350, -0.497141,
		36.391460, 29.316570, 31.509308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.639767, 28.796682, 31.631775>,  <36.357975, 28.710125, 31.857307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.639767, 28.796682, 31.631775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.895123, 29.010141, 31.409899>,  <36.048336, 29.138216, 31.276773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.895123, 29.010141, 31.409899>,  <35.639767, 28.796682, 31.631775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895123, 29.010141, 31.409899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478108, -0.289842, -0.829098,
		-0.603218, 0.794489, 0.070109,
		0.638389, 0.533647, -0.554690,
		36.086639, 29.170235, 31.243492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225780, 29.191114, 31.162596>,  <35.639767, 28.796682, 31.631775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225780, 29.191114, 31.162596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.582108, 29.200876, 30.981113>,  <35.795902, 29.206734, 30.872225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.582108, 29.200876, 30.981113>,  <35.225780, 29.191114, 31.162596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582108, 29.200876, 30.981113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434346, -0.247381, -0.866110,
		-0.133375, 0.968611, -0.209771,
		0.890817, 0.024404, -0.453706,
		35.849354, 29.208197, 30.845001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.102776, 29.529341, 30.634024>,  <35.225780, 29.191114, 31.162596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.102776, 29.529341, 30.634024> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.424454, 29.307287, 30.549086>,  <35.617462, 29.174055, 30.498123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.424454, 29.307287, 30.549086>,  <35.102776, 29.529341, 30.634024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424454, 29.307287, 30.549086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427647, -0.292320, -0.855376,
		0.412776, 0.778700, -0.472485,
		0.804198, -0.555135, -0.212346,
		35.665714, 29.140747, 30.485382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.554482, 30.032150, 30.375738>,  <35.102776, 29.529341, 30.634024>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.554482, 30.032150, 30.375738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.183765, 30.141340, 30.272554>,  <33.961334, 30.206854, 30.210644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.183765, 30.141340, 30.272554>,  <34.554482, 30.032150, 30.375738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.183765, 30.141340, 30.272554> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109317, 0.461032, 0.880624,
		0.359317, 0.844354, -0.397439,
		-0.926791, 0.272977, -0.257959,
		33.905727, 30.223234, 30.195168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470108, 30.708445, 30.570072>,  <34.554482, 30.032150, 30.375738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470108, 30.708445, 30.570072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.098553, 30.565504, 30.531162>,  <33.875618, 30.479740, 30.507816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.098553, 30.565504, 30.531162>,  <34.470108, 30.708445, 30.570072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.098553, 30.565504, 30.531162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193211, 0.243502, 0.950461,
		-0.315961, 0.901669, -0.295231,
		-0.928891, -0.357351, -0.097275,
		33.819885, 30.458300, 30.501980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004154, 31.266542, 30.656986>,  <34.470108, 30.708445, 30.570072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004154, 31.266542, 30.656986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.808895, 30.929104, 30.746479>,  <33.691738, 30.726641, 30.800175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.808895, 30.929104, 30.746479>,  <34.004154, 31.266542, 30.656986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.808895, 30.929104, 30.746479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226337, 0.369944, 0.901062,
		-0.842902, 0.389212, -0.371524,
		-0.488147, -0.843597, 0.223734,
		33.662453, 30.676025, 30.813599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.365314, 31.349182, 30.782839>,  <34.004154, 31.266542, 30.656986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.365314, 31.349182, 30.782839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.428963, 30.999897, 30.967093>,  <33.467152, 30.790327, 31.077644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.428963, 30.999897, 30.967093>,  <33.365314, 31.349182, 30.782839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.428963, 30.999897, 30.967093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257403, 0.413749, 0.873244,
		-0.953114, -0.257517, -0.158933,
		0.159117, -0.873211, 0.460635,
		33.476700, 30.737934, 31.105284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.855888, 31.368469, 31.233067>,  <33.365314, 31.349182, 30.782839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.855888, 31.368469, 31.233067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.092518, 31.078178, 31.373558>,  <33.234497, 30.904005, 31.457853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.092518, 31.078178, 31.373558>,  <32.855888, 31.368469, 31.233067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.092518, 31.078178, 31.373558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213640, 0.278959, 0.936237,
		-0.777429, -0.628891, 0.009981,
		0.591576, -0.725726, 0.351227,
		33.269989, 30.860460, 31.478926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.462036, 30.886053, 31.664906>,  <32.855888, 31.368469, 31.233067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.462036, 30.886053, 31.664906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.850662, 30.869329, 31.758123>,  <33.083839, 30.859295, 31.814054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.850662, 30.869329, 31.758123>,  <32.462036, 30.886053, 31.664906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.850662, 30.869329, 31.758123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224394, 0.151376, 0.962670,
		-0.075527, -0.987592, 0.137690,
		0.971567, -0.041811, 0.233042,
		33.142132, 30.856787, 31.828035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.503021, 30.413080, 32.209484>,  <32.462036, 30.886053, 31.664906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.503021, 30.413080, 32.209484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.821629, 30.653379, 32.236782>,  <33.012794, 30.797558, 32.253162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.821629, 30.653379, 32.236782>,  <32.503021, 30.413080, 32.209484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.821629, 30.653379, 32.236782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227326, 0.192970, 0.954508,
		0.560247, -0.775801, 0.290270,
		0.796521, 0.600746, 0.068249,
		33.060585, 30.833603, 32.257256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.805492, 30.274664, 32.830456>,  <32.503021, 30.413080, 32.209484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.805492, 30.274664, 32.830456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.981518, 30.622967, 32.742706>,  <33.087132, 30.831949, 32.690056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.981518, 30.622967, 32.742706>,  <32.805492, 30.274664, 32.830456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.981518, 30.622967, 32.742706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074208, 0.278727, 0.957499,
		0.894895, -0.405082, 0.187275,
		0.440064, 0.870758, -0.219371,
		33.113537, 30.884193, 32.676895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.176498, 30.380108, 33.355782>,  <32.805492, 30.274664, 32.830456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.176498, 30.380108, 33.355782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.147621, 30.749865, 33.205963>,  <33.130295, 30.971720, 33.116074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.147621, 30.749865, 33.205963>,  <33.176498, 30.380108, 33.355782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.147621, 30.749865, 33.205963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049915, 0.371707, 0.927007,
		0.996141, 0.085619, 0.019307,
		-0.072193, 0.924394, -0.374546,
		33.125965, 31.027184, 33.093601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483368, 30.846685, 33.984035>,  <33.176498, 30.380108, 33.355782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.483368, 30.846685, 33.984035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.273857, 31.068949, 33.725765>,  <33.148151, 31.202307, 33.570805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.273857, 31.068949, 33.725765>,  <33.483368, 30.846685, 33.984035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.273857, 31.068949, 33.725765> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348037, 0.552229, 0.757571,
		0.777513, 0.621518, -0.095855,
		-0.523778, 0.555660, -0.645677,
		33.116722, 31.235647, 33.532063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.672405, 31.548521, 34.004398>,  <33.483368, 30.846685, 33.984035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.672405, 31.548521, 34.004398> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.304024, 31.547535, 33.848530>,  <33.082996, 31.546944, 33.755009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.304024, 31.547535, 33.848530>,  <33.672405, 31.548521, 34.004398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304024, 31.547535, 33.848530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304900, 0.627272, 0.716635,
		0.242661, 0.778797, -0.578439,
		-0.920952, -0.002466, -0.389669,
		33.027737, 31.546795, 33.731628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.418636, 32.185375, 34.172016>,  <33.672405, 31.548521, 34.004398>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.418636, 32.185375, 34.172016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.068863, 32.019112, 34.071949>,  <32.858997, 31.919353, 34.011909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.068863, 32.019112, 34.071949>,  <33.418636, 32.185375, 34.172016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.068863, 32.019112, 34.071949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484083, 0.713538, 0.506486,
		-0.032020, 0.563993, -0.825158,
		-0.874436, -0.415663, -0.250171,
		32.806534, 31.894413, 33.996899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.935486, 32.807632, 33.939667>,  <33.418636, 32.185375, 34.172016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.935486, 32.807632, 33.939667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.690079, 32.503117, 34.023605>,  <32.542835, 32.320408, 34.073967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.690079, 32.503117, 34.023605>,  <32.935486, 32.807632, 33.939667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.690079, 32.503117, 34.023605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732233, 0.647936, 0.209796,
		-0.295682, -0.024943, -0.954961,
		-0.613520, -0.761287, 0.209847,
		32.506023, 32.274731, 34.086559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.371510, 32.929153, 33.595173>,  <32.935486, 32.807632, 33.939667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.371510, 32.929153, 33.595173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.274323, 32.681591, 33.893948>,  <32.216011, 32.533054, 34.073212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.274323, 32.681591, 33.893948>,  <32.371510, 32.929153, 33.595173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.274323, 32.681591, 33.893948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524739, 0.731483, 0.435410,
		-0.815852, -0.286156, -0.502494,
		-0.242971, -0.618908, 0.746939,
		32.201431, 32.495918, 34.118031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.650219, 33.631073, 33.638718>,  <32.371510, 32.929153, 33.595173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.650219, 33.631073, 33.638718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.723743, 34.002338, 33.509274>,  <32.767857, 34.225098, 33.431606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.723743, 34.002338, 33.509274>,  <32.650219, 33.631073, 33.638718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.723743, 34.002338, 33.509274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517183, -0.188646, -0.834826,
		-0.835903, 0.320817, 0.445356,
		0.183812, 0.928164, -0.323611,
		32.778889, 34.280788, 33.412189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.005447, 33.628628, 33.321323>,  <32.650219, 33.631073, 33.638718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.005447, 33.628628, 33.321323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.281475, 33.888885, 33.194538>,  <32.447090, 34.045040, 33.118465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.281475, 33.888885, 33.194538>,  <32.005447, 33.628628, 33.321323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.281475, 33.888885, 33.194538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426726, 0.012045, -0.904301,
		-0.584564, 0.759284, 0.285960,
		0.690066, 0.650648, -0.316965,
		32.488495, 34.084080, 33.099449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.672518, 34.092014, 32.843357>,  <32.005447, 33.628628, 33.321323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.672518, 34.092014, 32.843357> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.065514, 34.062916, 32.774750>,  <32.301311, 34.045456, 32.733585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.065514, 34.062916, 32.774750>,  <31.672518, 34.092014, 32.843357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.065514, 34.062916, 32.774750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155486, 0.186988, -0.969979,
		0.102638, 0.979665, 0.172402,
		0.982491, -0.072751, -0.171516,
		32.360260, 34.041092, 32.723293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.770836, 34.598228, 32.510788>,  <31.672518, 34.092014, 32.843357>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.770836, 34.598228, 32.510788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.082520, 34.367405, 32.412941>,  <32.269531, 34.228912, 32.354233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.082520, 34.367405, 32.412941>,  <31.770836, 34.598228, 32.510788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.082520, 34.367405, 32.412941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095197, 0.276798, -0.956201,
		0.619490, 0.768369, 0.160750,
		0.779211, -0.577054, -0.244620,
		32.316284, 34.194290, 32.339554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.274879, 34.947514, 32.048981>,  <31.770836, 34.598228, 32.510788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.274879, 34.947514, 32.048981> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.392040, 34.567978, 32.001808>,  <32.462337, 34.340256, 31.973505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.392040, 34.567978, 32.001808>,  <32.274879, 34.947514, 32.048981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.392040, 34.567978, 32.001808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084632, 0.097128, -0.991667,
		0.952391, 0.300437, -0.051854,
		0.292897, -0.948843, -0.117930,
		32.479908, 34.283325, 31.966429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.954048, 34.863186, 31.710579>,  <32.274879, 34.947514, 32.048981>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.954048, 34.863186, 31.710579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.799042, 34.502708, 31.632935>,  <32.706039, 34.286423, 31.586348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.799042, 34.502708, 31.632935>,  <32.954048, 34.863186, 31.710579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.799042, 34.502708, 31.632935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236123, 0.106509, -0.965868,
		0.891112, -0.420120, 0.171519,
		-0.387513, -0.901196, -0.194112,
		32.682789, 34.232349, 31.574701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.424412, 34.569283, 31.188648>,  <32.954048, 34.863186, 31.710579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.424412, 34.569283, 31.188648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.103004, 34.331425, 31.177643>,  <32.910160, 34.188709, 31.171040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.103004, 34.331425, 31.177643>,  <33.424412, 34.569283, 31.188648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.103004, 34.331425, 31.177643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114650, -0.109236, -0.987382,
		0.584134, -0.796535, 0.155949,
		-0.803519, -0.594643, -0.027514,
		32.861950, 34.153030, 31.169388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.705933, 33.989319, 30.734989>,  <33.424412, 34.569283, 31.188648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.705933, 33.989319, 30.734989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.307140, 33.966763, 30.756376>,  <33.067867, 33.953228, 30.769209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.307140, 33.966763, 30.756376>,  <33.705933, 33.989319, 30.734989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307140, 33.966763, 30.756376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033100, -0.314356, -0.948728,
		0.070307, -0.947629, 0.311539,
		-0.996976, -0.056390, 0.053468,
		33.008049, 33.949844, 30.772417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419498, 33.290649, 30.370445>,  <33.705933, 33.989319, 30.734989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419498, 33.290649, 30.370445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.116852, 33.551502, 30.389460>,  <32.935265, 33.708015, 30.400867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.116852, 33.551502, 30.389460>,  <33.419498, 33.290649, 30.370445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116852, 33.551502, 30.389460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094277, -0.036867, -0.994863,
		-0.647031, -0.757208, 0.089375,
		-0.756613, 0.652133, 0.047534,
		32.889870, 33.747143, 30.403719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.896641, 33.013622, 30.088266>,  <33.419498, 33.290649, 30.370445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.896641, 33.013622, 30.088266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.812073, 33.401260, 30.037422>,  <32.761333, 33.633842, 30.006916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.812073, 33.401260, 30.037422>,  <32.896641, 33.013622, 30.088266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.812073, 33.401260, 30.037422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089081, -0.148612, -0.984875,
		-0.973328, -0.196895, 0.117747,
		-0.211416, 0.969096, -0.127109,
		32.748650, 33.691990, 29.999290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.488407, 33.018013, 29.524088>,  <32.896641, 33.013622, 30.088266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.488407, 33.018013, 29.524088> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.531849, 33.415203, 29.542873>,  <32.557915, 33.653519, 29.554144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.531849, 33.415203, 29.542873>,  <32.488407, 33.018013, 29.524088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.531849, 33.415203, 29.542873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006100, 0.046577, -0.998896,
		-0.994066, 0.108770, -0.000999,
		0.108603, 0.992975, 0.046964,
		32.564430, 33.713097, 29.556963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.885826, 33.363091, 29.065241>,  <32.488407, 33.018013, 29.524088>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.885826, 33.363091, 29.065241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.193562, 33.615742, 29.103540>,  <32.378204, 33.767330, 29.126520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.193562, 33.615742, 29.103540>,  <31.885826, 33.363091, 29.065241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.193562, 33.615742, 29.103540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020672, 0.125186, -0.991918,
		-0.638506, 0.765100, 0.083254,
		0.769339, 0.631625, 0.095748,
		32.424362, 33.805229, 29.132265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.730265, 33.928860, 28.729897>,  <31.885826, 33.363091, 29.065241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.730265, 33.928860, 28.729897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.129147, 33.955795, 28.742830>,  <32.368477, 33.971958, 28.750591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.129147, 33.955795, 28.742830>,  <31.730265, 33.928860, 28.729897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.129147, 33.955795, 28.742830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022524, 0.141653, -0.989660,
		-0.071225, 0.987623, 0.139740,
		0.997206, 0.067341, 0.032334,
		32.428307, 33.975998, 28.752531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.924456, 34.364048, 28.178789>,  <31.730265, 33.928860, 28.729897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.924456, 34.364048, 28.178789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.286560, 34.213490, 28.257608>,  <32.503822, 34.123154, 28.304899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.286560, 34.213490, 28.257608>,  <31.924456, 34.364048, 28.178789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.286560, 34.213490, 28.257608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301587, 0.242642, -0.922047,
		0.299241, 0.894121, 0.333171,
		0.905263, -0.376394, 0.197046,
		32.558140, 34.100571, 28.316723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.383324, 34.840546, 28.045004>,  <31.924456, 34.364048, 28.178789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.383324, 34.840546, 28.045004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.586098, 34.500019, 27.990929>,  <32.707764, 34.295704, 27.958483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.586098, 34.500019, 27.990929>,  <32.383324, 34.840546, 28.045004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.586098, 34.500019, 27.990929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319863, 0.331424, -0.887607,
		0.800438, 0.406719, 0.440316,
		0.506938, -0.851315, -0.135190,
		32.738178, 34.244625, 27.950371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012203, 34.996506, 27.711205>,  <32.383324, 34.840546, 28.045004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012203, 34.996506, 27.711205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.945827, 34.609196, 27.636465>,  <32.906002, 34.376812, 27.591621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.945827, 34.609196, 27.636465>,  <33.012203, 34.996506, 27.711205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.945827, 34.609196, 27.636465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324525, 0.125303, -0.937541,
		0.931207, -0.216215, 0.293435,
		-0.165942, -0.968272, -0.186850,
		32.896046, 34.318714, 27.580410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.633102, 34.721249, 27.367876>,  <33.012203, 34.996506, 27.711205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.633102, 34.721249, 27.367876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.341991, 34.462566, 27.276567>,  <33.167324, 34.307358, 27.221783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.341991, 34.462566, 27.276567>,  <33.633102, 34.721249, 27.367876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.341991, 34.462566, 27.276567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391940, -0.119070, -0.912253,
		0.562783, -0.753385, 0.340128,
		-0.727777, -0.646710, -0.228271,
		33.123657, 34.268555, 27.208086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.997429, 34.089565, 27.029905>,  <33.633102, 34.721249, 27.367876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.997429, 34.089565, 27.029905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.617764, 34.053871, 26.909155>,  <33.389965, 34.032455, 26.836704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.617764, 34.053871, 26.909155>,  <33.997429, 34.089565, 27.029905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.617764, 34.053871, 26.909155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314142, -0.207150, -0.926501,
		0.020142, -0.974231, 0.224650,
		-0.949163, -0.089233, -0.301874,
		33.333015, 34.027100, 26.818592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.147430, 33.550804, 26.735334>,  <33.997429, 34.089565, 27.029905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.147430, 33.550804, 26.735334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.801952, 33.702904, 26.603004>,  <33.594666, 33.794163, 26.523605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.801952, 33.702904, 26.603004>,  <34.147430, 33.550804, 26.735334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801952, 33.702904, 26.603004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209829, -0.325523, -0.921958,
		-0.458266, -0.865705, 0.201365,
		-0.863693, 0.380250, -0.330826,
		33.542843, 33.816978, 26.503757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.742504, 33.024837, 26.448233>,  <34.147430, 33.550804, 26.735334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.742504, 33.024837, 26.448233> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.581017, 33.352459, 26.285183>,  <33.484123, 33.549030, 26.187353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.581017, 33.352459, 26.285183>,  <33.742504, 33.024837, 26.448233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.581017, 33.352459, 26.285183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104559, -0.401321, -0.909950,
		-0.908887, -0.409988, 0.076383,
		-0.403723, 0.819055, -0.407624,
		33.459900, 33.598175, 26.162895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.424332, 32.874077, 25.825941>,  <33.742504, 33.024837, 26.448233>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.424332, 32.874077, 25.825941> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.445934, 33.270573, 25.777725>,  <33.458897, 33.508469, 25.748795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.445934, 33.270573, 25.777725>,  <33.424332, 32.874077, 25.825941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.445934, 33.270573, 25.777725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043402, -0.118273, -0.992032,
		-0.997597, 0.058804, 0.036635,
		0.054002, 0.991238, -0.120541,
		33.462135, 33.567944, 25.741564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.955643, 33.017509, 25.315338>,  <33.424332, 32.874077, 25.825941>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.955643, 33.017509, 25.315338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.170902, 33.354370, 25.301670>,  <33.300060, 33.556488, 25.293468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.170902, 33.354370, 25.301670>,  <32.955643, 33.017509, 25.315338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.170902, 33.354370, 25.301670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111370, -0.111236, -0.987534,
		-0.835458, 0.527637, -0.153653,
		0.538151, 0.842155, -0.034170,
		33.332348, 33.607018, 25.291420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.671341, 33.365696, 24.809202>,  <32.955643, 33.017509, 25.315338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.671341, 33.365696, 24.809202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.046539, 33.502285, 24.833054>,  <33.271660, 33.584240, 24.847364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.046539, 33.502285, 24.833054>,  <32.671341, 33.365696, 24.809202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.046539, 33.502285, 24.833054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109177, -0.127758, -0.985778,
		-0.328997, 0.931169, -0.157117,
		0.937999, 0.341472, 0.059630,
		33.327938, 33.604725, 24.850943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.756485, 33.920799, 24.356049>,  <32.671341, 33.365696, 24.809202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.756485, 33.920799, 24.356049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.123081, 33.763878, 24.387390>,  <33.343040, 33.669724, 24.406195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.123081, 33.763878, 24.387390>,  <32.756485, 33.920799, 24.356049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123081, 33.763878, 24.387390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109765, 0.058258, -0.992249,
		0.384697, 0.917989, 0.096455,
		0.916493, -0.392303, 0.078352,
		33.398029, 33.646187, 24.410896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037102, 34.156738, 23.804039>,  <32.756485, 33.920799, 24.356049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037102, 34.156738, 23.804039> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.310753, 33.890419, 23.923157>,  <33.474945, 33.730629, 23.994627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.310753, 33.890419, 23.923157>,  <33.037102, 34.156738, 23.804039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.310753, 33.890419, 23.923157> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307768, -0.106643, -0.945466,
		0.661247, 0.738472, 0.131953,
		0.684128, -0.665798, 0.297795,
		33.515991, 33.690681, 24.012495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.670334, 34.402863, 23.580860>,  <33.037102, 34.156738, 23.804039>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.670334, 34.402863, 23.580860> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.714787, 34.008801, 23.633204>,  <33.741459, 33.772366, 23.664610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.714787, 34.008801, 23.633204>,  <33.670334, 34.402863, 23.580860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.714787, 34.008801, 23.633204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387909, -0.078231, -0.918372,
		0.914974, 0.152820, 0.373456,
		0.111130, -0.985153, 0.130859,
		33.748127, 33.713253, 23.672461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269188, 34.211807, 23.274834>,  <33.670334, 34.402863, 23.580860>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269188, 34.211807, 23.274834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.070885, 33.866493, 23.312702>,  <33.951904, 33.659306, 23.335424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.070885, 33.866493, 23.312702>,  <34.269188, 34.211807, 23.274834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.070885, 33.866493, 23.312702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424962, -0.336210, -0.840459,
		0.757387, -0.376430, 0.533541,
		-0.495755, -0.863287, 0.094672,
		33.922157, 33.607506, 23.341105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.829586, 33.706181, 23.062279>,  <34.269188, 34.211807, 23.274834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.829586, 33.706181, 23.062279> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.463676, 33.551216, 23.016502>,  <34.244129, 33.458237, 22.989037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.463676, 33.551216, 23.016502>,  <34.829586, 33.706181, 23.062279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463676, 33.551216, 23.016502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280832, -0.406256, -0.869534,
		0.290373, -0.827569, 0.480430,
		-0.914777, -0.387409, -0.114442,
		34.189243, 33.434994, 22.982170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.481617, 33.313614, 23.218523>,  <34.829586, 33.706181, 23.062279>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.481617, 33.313614, 23.218523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.838764, 33.466000, 23.122484>,  <36.053055, 33.557430, 23.064861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.838764, 33.466000, 23.122484>,  <35.481617, 33.313614, 23.218523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.838764, 33.466000, 23.122484> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044867, 0.455270, 0.889222,
		0.448050, -0.804743, 0.389410,
		0.892882, 0.380944, -0.240090,
		36.106625, 33.580288, 23.050455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904987, 33.088226, 23.619846>,  <35.481617, 33.313614, 23.218523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.904987, 33.088226, 23.619846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.065388, 33.424427, 23.474108>,  <36.161629, 33.626148, 23.386663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.065388, 33.424427, 23.474108>,  <35.904987, 33.088226, 23.619846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.065388, 33.424427, 23.474108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028669, 0.409045, 0.912064,
		0.915630, -0.355290, 0.188123,
		0.400998, 0.840506, -0.364348,
		36.185688, 33.676579, 23.364803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523232, 33.181919, 23.984177>,  <35.904987, 33.088226, 23.619846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523232, 33.181919, 23.984177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.407391, 33.538448, 23.844645>,  <36.337887, 33.752365, 23.760925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.407391, 33.538448, 23.844645>,  <36.523232, 33.181919, 23.984177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407391, 33.538448, 23.844645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035012, 0.374066, 0.926741,
		0.956508, 0.256169, -0.139535,
		-0.289598, 0.891320, -0.348828,
		36.320511, 33.805843, 23.739996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929497, 33.609871, 24.377415>,  <36.523232, 33.181919, 23.984177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.929497, 33.609871, 24.377415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.652584, 33.855946, 24.226526>,  <36.486439, 34.003590, 24.135994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.652584, 33.855946, 24.226526>,  <36.929497, 33.609871, 24.377415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652584, 33.855946, 24.226526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015332, 0.510078, 0.859991,
		0.721467, 0.601137, -0.343684,
		-0.692279, 0.615186, -0.377221,
		36.444901, 34.040501, 24.113359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116241, 34.291725, 24.501705>,  <36.929497, 33.609871, 24.377415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116241, 34.291725, 24.501705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.726212, 34.303562, 24.413755>,  <36.492191, 34.310665, 24.360987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.726212, 34.303562, 24.413755>,  <37.116241, 34.291725, 24.501705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726212, 34.303562, 24.413755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167028, 0.554377, 0.815333,
		0.146019, 0.831739, -0.535620,
		-0.975080, 0.029591, -0.219873,
		36.433689, 34.312439, 24.347794>
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
