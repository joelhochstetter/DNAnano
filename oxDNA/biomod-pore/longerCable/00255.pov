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
	<24.515171, 34.726265, 35.002716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.162104, 34.907272, 35.053509>,  <23.950264, 35.015877, 35.083984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.162104, 34.907272, 35.053509>,  <24.515171, 34.726265, 35.002716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.162104, 34.907272, 35.053509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415958, 0.626349, 0.659292,
		0.218803, 0.634756, -0.741087,
		-0.882669, 0.452516, 0.126985,
		23.897303, 35.043026, 35.091606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.767059, 34.768951, 34.314152>,  <24.515171, 34.726265, 35.002716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.767059, 34.768951, 34.314152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.965937, 34.949863, 34.017979>,  <25.085262, 35.058411, 33.840275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.965937, 34.949863, 34.017979>,  <24.767059, 34.768951, 34.314152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.965937, 34.949863, 34.017979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137425, 0.883664, 0.447495,
		0.856687, -0.120737, 0.501507,
		0.497193, 0.452283, -0.740432,
		25.115095, 35.085548, 33.795849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.570990, 34.713333, 34.218239>,  <24.767059, 34.768951, 34.314152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.570990, 34.713333, 34.218239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.968531, 34.683941, 34.185120>,  <26.207056, 34.666306, 34.165249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.968531, 34.683941, 34.185120>,  <25.570990, 34.713333, 34.218239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.968531, 34.683941, 34.185120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104087, -0.365640, -0.924918,
		0.037687, 0.927851, -0.371040,
		0.993854, -0.073478, -0.082798,
		26.266687, 34.661896, 34.160282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.788637, 34.895508, 33.459316>,  <25.570990, 34.713333, 34.218239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.788637, 34.895508, 33.459316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.099020, 34.698643, 33.617134>,  <26.285250, 34.580524, 33.711826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.099020, 34.698643, 33.617134>,  <25.788637, 34.895508, 33.459316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.099020, 34.698643, 33.617134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030464, -0.595514, -0.802767,
		0.630049, 0.634933, -0.447100,
		0.775958, -0.492162, 0.394545,
		26.331808, 34.550995, 33.735497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.352734, 34.827042, 32.888222>,  <25.788637, 34.895508, 33.459316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.352734, 34.827042, 32.888222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.391348, 34.541706, 33.165878>,  <26.414516, 34.370506, 33.332474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.391348, 34.541706, 33.165878>,  <26.352734, 34.827042, 32.888222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.391348, 34.541706, 33.165878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043748, -0.693684, -0.718949,
		0.994368, 0.099771, -0.035757,
		0.096534, -0.713336, 0.694142,
		26.420309, 34.327705, 33.374123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.836294, 34.455387, 32.671486>,  <26.352734, 34.827042, 32.888222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.836294, 34.455387, 32.671486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.594069, 34.247601, 32.912632>,  <26.448734, 34.122929, 33.057320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.594069, 34.247601, 32.912632>,  <26.836294, 34.455387, 32.671486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.594069, 34.247601, 32.912632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141244, -0.675377, -0.723820,
		0.783163, -0.523469, 0.335611,
		-0.605562, -0.519467, 0.602867,
		26.412399, 34.091759, 33.093491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.034676, 33.762020, 32.768856>,  <26.836294, 34.455387, 32.671486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.034676, 33.762020, 32.768856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.641945, 33.837818, 32.772926>,  <26.406305, 33.883297, 32.775368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.641945, 33.837818, 32.772926>,  <27.034676, 33.762020, 32.768856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.641945, 33.837818, 32.772926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107627, -0.511865, -0.852298,
		-0.156296, -0.837906, 0.522958,
		-0.981829, 0.189495, 0.010179,
		26.347397, 33.894669, 32.775982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.610504, 33.128654, 32.657463>,  <27.034676, 33.762020, 32.768856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.610504, 33.128654, 32.657463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.328367, 33.402973, 32.585709>,  <26.159084, 33.567562, 32.542656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.328367, 33.402973, 32.585709>,  <26.610504, 33.128654, 32.657463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.328367, 33.402973, 32.585709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352279, -0.558721, -0.750820,
		-0.615136, -0.466389, 0.635680,
		-0.705341, 0.685794, -0.179390,
		26.116764, 33.608711, 32.531891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.874800, 32.833008, 32.663048>,  <26.610504, 33.128654, 32.657463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.874800, 32.833008, 32.663048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.913651, 33.156303, 32.430733>,  <25.936960, 33.350281, 32.291344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.913651, 33.156303, 32.430733>,  <25.874800, 32.833008, 32.663048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.913651, 33.156303, 32.430733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402941, -0.501649, -0.765497,
		-0.910058, 0.308372, 0.276951,
		0.097126, 0.808241, -0.580786,
		25.942789, 33.398777, 32.256496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.265863, 32.774590, 32.338348>,  <25.874800, 32.833008, 32.663048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.265863, 32.774590, 32.338348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.489601, 33.018501, 32.113743>,  <25.623844, 33.164848, 31.978979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.489601, 33.018501, 32.113743>,  <25.265863, 32.774590, 32.338348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.489601, 33.018501, 32.113743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298545, -0.483741, -0.822718,
		-0.773307, 0.627820, -0.088531,
		0.559345, 0.609784, -0.561513,
		25.657404, 33.201435, 31.945290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.832510, 33.028374, 31.700993>,  <25.265863, 32.774590, 32.338348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.832510, 33.028374, 31.700993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.208080, 33.111538, 31.591311>,  <25.433422, 33.161438, 31.525501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.208080, 33.111538, 31.591311>,  <24.832510, 33.028374, 31.700993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.208080, 33.111538, 31.591311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193401, -0.340246, -0.920233,
		-0.284624, 0.917063, -0.279256,
		0.938928, 0.207912, -0.274203,
		25.489759, 33.173912, 31.509050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.902306, 33.564964, 31.043198>,  <24.832510, 33.028374, 31.700993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.902306, 33.564964, 31.043198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.189415, 33.290730, 31.091810>,  <25.361681, 33.126190, 31.120977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.189415, 33.290730, 31.091810>,  <24.902306, 33.564964, 31.043198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.189415, 33.290730, 31.091810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329323, -0.488070, -0.808291,
		0.613469, 0.540148, -0.576104,
		0.717775, -0.685586, 0.121533,
		25.404747, 33.085052, 31.128269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.375185, 33.385769, 30.526445>,  <24.902306, 33.564964, 31.043198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.375185, 33.385769, 30.526445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.403959, 33.044819, 30.733627>,  <25.421223, 32.840248, 30.857937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.403959, 33.044819, 30.733627>,  <25.375185, 33.385769, 30.526445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.403959, 33.044819, 30.733627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008557, -0.518752, -0.854882,
		0.997373, 0.065927, -0.030022,
		0.071933, -0.852379, 0.517953,
		25.425539, 32.789104, 30.889013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.023024, 33.135521, 30.288450>,  <25.375185, 33.385769, 30.526445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.023024, 33.135521, 30.288450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.765661, 32.858036, 30.417936>,  <25.611244, 32.691544, 30.495628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.765661, 32.858036, 30.417936>,  <26.023024, 33.135521, 30.288450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.765661, 32.858036, 30.417936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382866, -0.657781, -0.648643,
		0.662907, -0.293401, 0.688818,
		-0.643404, -0.693715, 0.323714,
		25.572639, 32.649921, 30.515051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.160862, 32.532398, 30.643009>,  <26.023024, 33.135521, 30.288450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.160862, 32.532398, 30.643009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.523212, 32.639385, 30.511650>,  <26.740623, 32.703579, 30.432835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.523212, 32.639385, 30.511650>,  <26.160862, 32.532398, 30.643009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.523212, 32.639385, 30.511650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029142, 0.812894, 0.581682,
		0.422535, -0.517363, 0.744177,
		0.905878, 0.267468, -0.328399,
		26.794975, 32.719627, 30.413130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.673376, 32.747852, 31.265213>,  <26.160862, 32.532398, 30.643009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.673376, 32.747852, 31.265213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.310156, 32.873653, 31.154558>,  <26.092224, 32.949135, 31.088165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.310156, 32.873653, 31.154558>,  <26.673376, 32.747852, 31.265213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.310156, 32.873653, 31.154558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015025, 0.684490, 0.728868,
		0.418586, 0.657694, -0.626278,
		-0.908053, 0.314503, -0.276636,
		26.037741, 32.968006, 31.071568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.695469, 33.363289, 31.168091>,  <26.673376, 32.747852, 31.265213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.695469, 33.363289, 31.168091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.306654, 33.324371, 31.253580>,  <26.073364, 33.301022, 31.304873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.306654, 33.324371, 31.253580>,  <26.695469, 33.363289, 31.168091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.306654, 33.324371, 31.253580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087508, 0.694489, 0.714162,
		-0.217912, 0.712895, -0.666555,
		-0.972037, -0.097295, 0.213721,
		26.015043, 33.295181, 31.317696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.401642, 34.017300, 31.168783>,  <26.695469, 33.363289, 31.168091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.401642, 34.017300, 31.168783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.186970, 33.772636, 31.401283>,  <26.058167, 33.625839, 31.540783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.186970, 33.772636, 31.401283>,  <26.401642, 34.017300, 31.168783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.186970, 33.772636, 31.401283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007969, 0.692503, 0.721371,
		-0.843747, 0.382514, -0.376528,
		-0.536682, -0.611655, 0.581249,
		26.025965, 33.589138, 31.575659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.875061, 34.457569, 31.605227>,  <26.401642, 34.017300, 31.168783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.875061, 34.457569, 31.605227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.898880, 34.111900, 31.805088>,  <25.913172, 33.904499, 31.925005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.898880, 34.111900, 31.805088>,  <25.875061, 34.457569, 31.605227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.898880, 34.111900, 31.805088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140763, 0.488271, 0.861265,
		-0.988251, -0.121619, -0.092569,
		0.059547, -0.864176, 0.499653,
		25.916744, 33.852646, 31.954985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.297508, 34.546600, 32.131573>,  <25.875061, 34.457569, 31.605227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.297508, 34.546600, 32.131573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.570654, 34.272964, 32.234112>,  <25.734541, 34.108780, 32.295635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.570654, 34.272964, 32.234112>,  <25.297508, 34.546600, 32.131573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.570654, 34.272964, 32.234112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090612, 0.427496, 0.899465,
		-0.724904, -0.590984, 0.353908,
		0.682864, -0.684094, 0.256343,
		25.775513, 34.067738, 32.311016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.082500, 34.418892, 32.852848>,  <25.297508, 34.546600, 32.131573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.082500, 34.418892, 32.852848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.463312, 34.362473, 32.744221>,  <25.691799, 34.328621, 32.679043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.463312, 34.362473, 32.744221>,  <25.082500, 34.418892, 32.852848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.463312, 34.362473, 32.744221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300448, 0.599313, 0.741994,
		0.058100, -0.787991, 0.612939,
		0.952027, -0.141047, -0.271570,
		25.748920, 34.320160, 32.662750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.392689, 34.132481, 33.417549>,  <25.082500, 34.418892, 32.852848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.392689, 34.132481, 33.417549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.666601, 34.316109, 33.191158>,  <25.830950, 34.426285, 33.055325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.666601, 34.316109, 33.191158>,  <25.392689, 34.132481, 33.417549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.666601, 34.316109, 33.191158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378545, 0.439566, 0.814547,
		0.622718, -0.772033, 0.127228,
		0.684782, 0.459071, -0.565974,
		25.872036, 34.453831, 33.021366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.507025, 33.439659, 33.489521>,  <25.392689, 34.132481, 33.417549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.507025, 33.439659, 33.489521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.878727, 33.386818, 33.351513>,  <26.101748, 33.355114, 33.268707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.878727, 33.386818, 33.351513>,  <25.507025, 33.439659, 33.489521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.878727, 33.386818, 33.351513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331277, 0.711338, 0.619883,
		0.163533, -0.690324, 0.704776,
		0.929254, -0.132105, -0.345016,
		26.157503, 33.347187, 33.248009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.941822, 33.290684, 34.094593>,  <25.507025, 33.439659, 33.489521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.941822, 33.290684, 34.094593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.130894, 33.485790, 33.801018>,  <26.244337, 33.602852, 33.624874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.130894, 33.485790, 33.801018>,  <25.941822, 33.290684, 34.094593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.130894, 33.485790, 33.801018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343349, 0.665096, 0.663143,
		0.811594, -0.565450, 0.146904,
		0.472679, 0.487763, -0.733935,
		26.272697, 33.632118, 33.580837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.573486, 33.402153, 34.272209>,  <25.941822, 33.290684, 34.094593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.573486, 33.402153, 34.272209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.547329, 33.681892, 33.987495>,  <26.531635, 33.849735, 33.816669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.547329, 33.681892, 33.987495>,  <26.573486, 33.402153, 34.272209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.547329, 33.681892, 33.987495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385829, 0.675549, 0.628306,
		0.920250, -0.233540, -0.314006,
		-0.065392, 0.699351, -0.711780,
		26.527712, 33.891697, 33.773960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.252674, 33.838829, 34.234020>,  <26.573486, 33.402153, 34.272209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.252674, 33.838829, 34.234020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.954762, 34.048473, 34.068802>,  <26.776014, 34.174259, 33.969669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.954762, 34.048473, 34.068802>,  <27.252674, 33.838829, 34.234020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.954762, 34.048473, 34.068802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227411, 0.781271, 0.581292,
		0.627364, 0.339004, -0.701064,
		-0.744781, 0.524111, -0.413048,
		26.731327, 34.205708, 33.944889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.494553, 34.505360, 34.076862>,  <27.252674, 33.838829, 34.234020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.494553, 34.505360, 34.076862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.104568, 34.470215, 34.158581>,  <26.870579, 34.449127, 34.207611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.104568, 34.470215, 34.158581>,  <27.494553, 34.505360, 34.076862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.104568, 34.470215, 34.158581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104364, 0.630459, 0.769175,
		-0.196379, 0.771234, -0.605502,
		-0.974958, -0.087858, 0.204298,
		26.812080, 34.443859, 34.219872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.322590, 35.106739, 34.184658>,  <27.494553, 34.505360, 34.076862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.322590, 35.106739, 34.184658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.066931, 34.870243, 34.381401>,  <26.913534, 34.728344, 34.499447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.066931, 34.870243, 34.381401>,  <27.322590, 35.106739, 34.184658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.066931, 34.870243, 34.381401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101927, 0.568772, 0.816155,
		-0.762298, 0.571778, -0.303267,
		-0.639150, -0.591242, 0.491854,
		26.875185, 34.692871, 34.528957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.651423, 35.831459, 34.341412>,  <27.322590, 35.106739, 34.184658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.651423, 35.831459, 34.341412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.878954, 35.991959, 34.054237>,  <28.015472, 36.088257, 33.881931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.878954, 35.991959, 34.054237>,  <27.651423, 35.831459, 34.341412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.878954, 35.991959, 34.054237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072356, 0.893950, 0.442287,
		0.819267, -0.199638, 0.537537,
		0.568828, 0.401246, -0.717939,
		28.049603, 36.112331, 33.838856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.040676, 36.305542, 34.782188>,  <27.651423, 35.831459, 34.341412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.040676, 36.305542, 34.782188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.088709, 36.401119, 34.396755>,  <28.117529, 36.458466, 34.165497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.088709, 36.401119, 34.396755>,  <28.040676, 36.305542, 34.782188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.088709, 36.401119, 34.396755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183643, 0.948506, 0.258092,
		0.975631, -0.207947, 0.070018,
		0.120082, 0.238944, -0.963580,
		28.124733, 36.472801, 34.107681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.687866, 36.676483, 34.771942>,  <28.040676, 36.305542, 34.782188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.687866, 36.676483, 34.771942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.489273, 36.758614, 34.434578>,  <28.370117, 36.807892, 34.232159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.489273, 36.758614, 34.434578>,  <28.687866, 36.676483, 34.771942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.489273, 36.758614, 34.434578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184724, 0.974358, 0.128468,
		0.848163, -0.092016, -0.521682,
		-0.496484, 0.205329, -0.843412,
		28.340328, 36.820213, 34.181553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.071907, 37.174599, 34.362179>,  <28.687866, 36.676483, 34.771942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.071907, 37.174599, 34.362179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.693287, 37.196568, 34.235043>,  <28.466114, 37.209747, 34.158760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.693287, 37.196568, 34.235043>,  <29.071907, 37.174599, 34.362179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.693287, 37.196568, 34.235043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019565, 0.993358, 0.113385,
		0.321958, 0.101107, -0.941340,
		-0.946552, 0.054923, -0.317842,
		28.409321, 37.213043, 34.139690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.021076, 37.867283, 34.133041>,  <29.071907, 37.174599, 34.362179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.021076, 37.867283, 34.133041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.634645, 37.765480, 34.115505>,  <28.402786, 37.704399, 34.104984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.634645, 37.765480, 34.115505>,  <29.021076, 37.867283, 34.133041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.634645, 37.765480, 34.115505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258124, 0.946209, 0.195089,
		-0.008166, 0.199788, -0.979805,
		-0.966077, -0.254504, -0.043844,
		28.344822, 37.689129, 34.102352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.736919, 38.374630, 33.636806>,  <29.021076, 37.867283, 34.133041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.736919, 38.374630, 33.636806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.477629, 38.216888, 33.897358>,  <28.322054, 38.122246, 34.053688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.477629, 38.216888, 33.897358>,  <28.736919, 38.374630, 33.636806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.477629, 38.216888, 33.897358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382833, 0.908250, 0.168883,
		-0.658211, -0.139893, -0.739722,
		-0.648226, -0.394350, 0.651376,
		28.283161, 38.098583, 34.092770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.079348, 38.548237, 33.471485>,  <28.736919, 38.374630, 33.636806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.079348, 38.548237, 33.471485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.132483, 38.537399, 33.867790>,  <28.164364, 38.530895, 34.105576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.132483, 38.537399, 33.867790>,  <28.079348, 38.548237, 33.471485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.132483, 38.537399, 33.867790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290767, 0.954577, 0.065092,
		-0.947528, -0.296729, 0.118925,
		0.132837, -0.027097, 0.990768,
		28.172335, 38.529270, 34.165020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.106434, 39.212719, 33.272228>,  <28.079348, 38.548237, 33.471485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.106434, 39.212719, 33.272228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.036026, 39.605923, 33.251377>,  <27.993782, 39.841843, 33.238865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.036026, 39.605923, 33.251377>,  <28.106434, 39.212719, 33.272228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.036026, 39.605923, 33.251377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053279, 0.043365, 0.997638,
		0.982944, 0.178381, 0.044740,
		-0.176019, 0.983006, -0.052129,
		27.983221, 39.900826, 33.235737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.553328, 39.010677, 33.651985>,  <28.106434, 39.212719, 33.272228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.553328, 39.010677, 33.651985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.638348, 38.777241, 33.965481>,  <27.689360, 38.637180, 34.153576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.638348, 38.777241, 33.965481>,  <27.553328, 39.010677, 33.651985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.638348, 38.777241, 33.965481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338780, 0.708304, 0.619301,
		-0.916542, -0.397147, -0.047159,
		0.212551, -0.583592, 0.783736,
		27.702112, 38.602161, 34.200603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.020971, 39.076550, 34.115566>,  <27.553328, 39.010677, 33.651985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.020971, 39.076550, 34.115566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.345661, 38.963032, 34.319748>,  <27.540476, 38.894920, 34.442257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.345661, 38.963032, 34.319748>,  <27.020971, 39.076550, 34.115566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.345661, 38.963032, 34.319748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210529, 0.673065, 0.708986,
		-0.544775, -0.682967, 0.486597,
		0.811725, -0.283795, 0.510454,
		27.589178, 38.877892, 34.472885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.824133, 39.096897, 34.812561>,  <27.020971, 39.076550, 34.115566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.824133, 39.096897, 34.812561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.221235, 39.144825, 34.816048>,  <27.459497, 39.173580, 34.818142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.221235, 39.144825, 34.816048>,  <26.824133, 39.096897, 34.812561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.221235, 39.144825, 34.816048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100385, 0.787488, 0.608100,
		0.065996, -0.604571, 0.793813,
		0.992758, 0.119820, 0.008719,
		27.519062, 39.180771, 34.818665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.834782, 39.552467, 35.420815>,  <26.824133, 39.096897, 34.812561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.834782, 39.552467, 35.420815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.716969, 39.821011, 35.692852>,  <26.646280, 39.982136, 35.856075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.716969, 39.821011, 35.692852>,  <26.834782, 39.552467, 35.420815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.716969, 39.821011, 35.692852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780386, -0.241797, 0.576655,
		0.551585, 0.700585, -0.452697,
		-0.294535, 0.671353, 0.680098,
		26.628609, 40.022415, 35.896881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.227354, 40.293690, 35.273094>,  <26.834782, 39.552467, 35.420815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.227354, 40.293690, 35.273094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.598400, 40.230534, 35.408504>,  <27.821028, 40.192642, 35.489750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.598400, 40.230534, 35.408504>,  <27.227354, 40.293690, 35.273094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.598400, 40.230534, 35.408504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076661, -0.806520, -0.586216,
		0.365588, 0.569734, -0.736035,
		0.927614, -0.157888, 0.338530,
		27.876684, 40.183167, 35.510063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.800611, 40.278515, 34.711723>,  <27.227354, 40.293690, 35.273094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.800611, 40.278515, 34.711723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.906752, 40.055725, 35.026524>,  <27.970436, 39.922050, 35.215405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.906752, 40.055725, 35.026524>,  <27.800611, 40.278515, 34.711723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.906752, 40.055725, 35.026524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031046, -0.810904, -0.584355,
		0.963653, 0.179491, -0.197880,
		0.265348, -0.556972, 0.787002,
		27.986357, 39.888634, 35.262623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.495043, 39.957466, 34.515793>,  <27.800611, 40.278515, 34.711723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.495043, 39.957466, 34.515793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.261524, 39.754745, 34.769512>,  <28.121412, 39.633114, 34.921745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.261524, 39.754745, 34.769512>,  <28.495043, 39.957466, 34.515793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.261524, 39.754745, 34.769512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087464, -0.815963, -0.571450,
		0.807174, -0.278134, 0.520684,
		-0.583799, -0.506800, 0.634297,
		28.086384, 39.602707, 34.959801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.782299, 39.284451, 34.877987>,  <28.495043, 39.957466, 34.515793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.782299, 39.284451, 34.877987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.385008, 39.250362, 34.846409>,  <28.146633, 39.229908, 34.827461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.385008, 39.250362, 34.846409>,  <28.782299, 39.284451, 34.877987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.385008, 39.250362, 34.846409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109923, -0.909287, -0.401390,
		-0.037574, -0.407350, 0.912499,
		-0.993230, -0.085223, -0.078943,
		28.087038, 39.224796, 34.822727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.547394, 38.578400, 35.230602>,  <28.782299, 39.284451, 34.877987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.547394, 38.578400, 35.230602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.245747, 38.668049, 34.983677>,  <28.064758, 38.721836, 34.835522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.245747, 38.668049, 34.983677>,  <28.547394, 38.578400, 35.230602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.245747, 38.668049, 34.983677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165916, -0.974493, -0.151113,
		-0.635435, -0.011535, 0.772068,
		-0.754118, 0.224121, -0.617313,
		28.019510, 38.735287, 34.798485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.094086, 38.009117, 35.278931>,  <28.547394, 38.578400, 35.230602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.094086, 38.009117, 35.278931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.993635, 38.176456, 34.929779>,  <27.933365, 38.276859, 34.720287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.993635, 38.176456, 34.929779>,  <28.094086, 38.009117, 35.278931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.993635, 38.176456, 34.929779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003968, -0.902218, -0.431262,
		-0.967947, -0.104837, 0.228228,
		-0.251124, 0.418345, -0.872883,
		27.918297, 38.301960, 34.667915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.498840, 37.708942, 34.974861>,  <28.094086, 38.009117, 35.278931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.498840, 37.708942, 34.974861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.709236, 37.848053, 34.664406>,  <27.835474, 37.931519, 34.478134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.709236, 37.848053, 34.664406>,  <27.498840, 37.708942, 34.974861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.709236, 37.848053, 34.664406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082517, -0.887399, -0.453557,
		-0.846478, 0.302611, -0.438066,
		0.525991, 0.347778, -0.776134,
		27.867033, 37.952385, 34.431564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.140352, 37.377853, 34.357582>,  <27.498840, 37.708942, 34.974861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.140352, 37.377853, 34.357582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.510275, 37.491394, 34.256264>,  <27.732229, 37.559517, 34.195473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.510275, 37.491394, 34.256264>,  <27.140352, 37.377853, 34.357582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.510275, 37.491394, 34.256264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085837, -0.804324, -0.587959,
		-0.370624, 0.522007, -0.768210,
		0.924808, 0.283853, -0.253294,
		27.787718, 37.576550, 34.180275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.156424, 37.293690, 33.643188>,  <27.140352, 37.377853, 34.357582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.156424, 37.293690, 33.643188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.532766, 37.282623, 33.778255>,  <27.758572, 37.275982, 33.859295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.532766, 37.282623, 33.778255>,  <27.156424, 37.293690, 33.643188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.532766, 37.282623, 33.778255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203375, -0.750998, -0.628204,
		0.270968, 0.659725, -0.700956,
		0.940858, -0.027666, 0.337668,
		27.815023, 37.274323, 33.879555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.609600, 37.233658, 33.058819>,  <27.156424, 37.293690, 33.643188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.609600, 37.233658, 33.058819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.806303, 37.078632, 33.370708>,  <27.924324, 36.985619, 33.557842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.806303, 37.078632, 33.370708>,  <27.609600, 37.233658, 33.058819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.806303, 37.078632, 33.370708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075334, -0.873185, -0.481531,
		0.867467, 0.295537, -0.400199,
		0.491758, -0.387564, 0.779723,
		27.953831, 36.962364, 33.604626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.012192, 36.785557, 32.814747>,  <27.609600, 37.233658, 33.058819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.012192, 36.785557, 32.814747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.061836, 36.703575, 33.203094>,  <28.091623, 36.654385, 33.436104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.061836, 36.703575, 33.203094>,  <28.012192, 36.785557, 32.814747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.061836, 36.703575, 33.203094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048568, -0.976008, -0.212250,
		0.991079, 0.073495, -0.111177,
		0.124109, -0.204957, 0.970870,
		28.099070, 36.642090, 33.494354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.609770, 36.220577, 32.861206>,  <28.012192, 36.785557, 32.814747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.609770, 36.220577, 32.861206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.574541, 36.523708, 33.119801>,  <28.553404, 36.705585, 33.274956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.574541, 36.523708, 33.119801>,  <28.609770, 36.220577, 32.861206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.574541, 36.523708, 33.119801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903979, 0.333414, -0.267690,
		-0.418409, 0.560831, -0.714424,
		-0.088070, 0.757828, 0.646483,
		28.548120, 36.751057, 33.313744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.705696, 36.881577, 32.488544>,  <28.609770, 36.220577, 32.861206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.705696, 36.881577, 32.488544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.816076, 36.897205, 32.872696>,  <28.882305, 36.906582, 33.103188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.816076, 36.897205, 32.872696>,  <28.705696, 36.881577, 32.488544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.816076, 36.897205, 32.872696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942514, 0.184917, -0.278341,
		-0.188466, 0.981977, 0.014199,
		0.275950, 0.039075, 0.960377,
		28.898861, 36.908928, 33.160809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.024075, 37.518696, 32.673767>,  <28.705696, 36.881577, 32.488544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.024075, 37.518696, 32.673767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.163433, 37.238815, 32.923260>,  <29.247047, 37.070889, 33.072956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.163433, 37.238815, 32.923260>,  <29.024075, 37.518696, 32.673767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.163433, 37.238815, 32.923260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937115, 0.245168, -0.248411,
		0.020892, 0.671056, 0.741112,
		0.348394, -0.699697, 0.623735,
		29.267952, 37.028908, 33.110382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.523500, 37.794773, 33.284714>,  <29.024075, 37.518696, 32.673767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.523500, 37.794773, 33.284714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.587128, 37.442963, 33.105324>,  <29.625303, 37.231876, 32.997688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.587128, 37.442963, 33.105324>,  <29.523500, 37.794773, 33.284714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.587128, 37.442963, 33.105324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865058, 0.343086, -0.366014,
		0.475785, -0.329738, 0.815415,
		0.159069, -0.879525, -0.448478,
		29.634848, 37.179104, 32.970779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.137970, 37.564930, 33.472828>,  <29.523500, 37.794773, 33.284714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.137970, 37.564930, 33.472828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.088583, 37.368999, 33.127613>,  <30.058950, 37.251442, 32.920486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.088583, 37.368999, 33.127613>,  <30.137970, 37.564930, 33.472828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.088583, 37.368999, 33.127613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844246, 0.405225, -0.350772,
		0.521540, -0.771921, 0.363503,
		-0.123468, -0.489827, -0.863032,
		30.051542, 37.222050, 32.868702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.881855, 37.473404, 33.127201>,  <30.137970, 37.564930, 33.472828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.881855, 37.473404, 33.127201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.637020, 37.383114, 32.824043>,  <30.490120, 37.328938, 32.642151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.637020, 37.383114, 32.824043>,  <30.881855, 37.473404, 33.127201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.637020, 37.383114, 32.824043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694018, 0.306067, -0.651661,
		0.379064, -0.924862, -0.030679,
		-0.612086, -0.225729, -0.757890,
		30.453394, 37.315395, 32.596676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.176996, 36.952026, 32.681335>,  <30.881855, 37.473404, 33.127201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.176996, 36.952026, 32.681335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.934166, 37.217411, 32.506393>,  <30.788467, 37.376644, 32.401428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.934166, 37.217411, 32.506393>,  <31.176996, 36.952026, 32.681335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.934166, 37.217411, 32.506393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784611, 0.413268, -0.462164,
		-0.125885, -0.623720, -0.771445,
		-0.607074, 0.663463, -0.437353,
		30.752045, 37.416451, 32.375187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.232336, 36.893757, 31.881348>,  <31.176996, 36.952026, 32.681335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.232336, 36.893757, 31.881348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.167267, 37.250610, 32.049938>,  <31.128225, 37.464722, 32.151093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.167267, 37.250610, 32.049938>,  <31.232336, 36.893757, 31.881348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.167267, 37.250610, 32.049938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594139, 0.429607, -0.680028,
		-0.787741, 0.139792, -0.599935,
		-0.162673, 0.892130, 0.421475,
		31.118465, 37.518250, 32.176380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.991394, 37.533016, 31.321493>,  <31.232336, 36.893757, 31.881348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.991394, 37.533016, 31.321493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.189510, 37.637161, 31.653009>,  <31.308380, 37.699650, 31.851919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.189510, 37.637161, 31.653009>,  <30.991394, 37.533016, 31.321493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.189510, 37.637161, 31.653009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623927, 0.557227, -0.547917,
		-0.604484, 0.788484, 0.113540,
		0.495291, 0.260366, 0.828792,
		31.338099, 37.715271, 31.901648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.152279, 38.267456, 31.394390>,  <30.991394, 37.533016, 31.321493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.152279, 38.267456, 31.394390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.441593, 38.086765, 31.603313>,  <31.615181, 37.978352, 31.728666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.441593, 38.086765, 31.603313>,  <31.152279, 38.267456, 31.394390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.441593, 38.086765, 31.603313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690512, 0.480931, -0.540277,
		-0.007138, 0.751433, 0.659770,
		0.723286, -0.451723, 0.522306,
		31.658579, 37.951248, 31.760006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.454237, 38.381256, 31.469566>,  <31.152279, 38.267456, 31.394390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.454237, 38.381256, 31.469566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.586487, 38.045456, 31.642046>,  <30.665836, 37.843975, 31.745533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.586487, 38.045456, 31.642046>,  <30.454237, 38.381256, 31.469566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.586487, 38.045456, 31.642046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936787, -0.236477, 0.257892,
		-0.114531, -0.489208, -0.864615,
		0.330625, -0.839497, 0.431199,
		30.685675, 37.793606, 31.771406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.896332, 38.007225, 31.652700>,  <30.454237, 38.381256, 31.469566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.896332, 38.007225, 31.652700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.150938, 37.733086, 31.794207>,  <30.303701, 37.568604, 31.879110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.150938, 37.733086, 31.794207>,  <29.896332, 38.007225, 31.652700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.150938, 37.733086, 31.794207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768397, -0.603010, 0.214347,
		0.066422, -0.408268, -0.910442,
		0.636517, -0.685344, 0.353766,
		30.341892, 37.527481, 31.900337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.729488, 37.236046, 31.552977>,  <29.896332, 38.007225, 31.652700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.729488, 37.236046, 31.552977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.937361, 37.237354, 31.894718>,  <30.062084, 37.238140, 32.099762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.937361, 37.237354, 31.894718>,  <29.729488, 37.236046, 31.552977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.937361, 37.237354, 31.894718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652933, -0.643412, 0.399623,
		0.551009, -0.765513, -0.332234,
		0.519680, 0.003269, 0.854355,
		30.093266, 37.238335, 32.151024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.673359, 36.576797, 31.765734>,  <29.729488, 37.236046, 31.552977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.673359, 36.576797, 31.765734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.779816, 36.782932, 32.091579>,  <29.843691, 36.906612, 32.287086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.779816, 36.782932, 32.091579>,  <29.673359, 36.576797, 31.765734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.779816, 36.782932, 32.091579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644561, -0.533226, 0.547915,
		0.716735, -0.670891, 0.190253,
		0.266143, 0.515340, 0.814612,
		29.859659, 36.937534, 32.335964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.900528, 36.095478, 32.274456>,  <29.673359, 36.576797, 31.765734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.900528, 36.095478, 32.274456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.822031, 36.432652, 32.474834>,  <29.774933, 36.634956, 32.595062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.822031, 36.432652, 32.474834>,  <29.900528, 36.095478, 32.274456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.822031, 36.432652, 32.474834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579928, -0.511725, 0.633893,
		0.790678, -0.166115, 0.589266,
		-0.196243, 0.842937, 0.500944,
		29.763159, 36.685532, 32.625118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.926558, 35.925560, 33.037083>,  <29.900528, 36.095478, 32.274456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.926558, 35.925560, 33.037083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.709377, 36.260464, 33.011169>,  <29.579069, 36.461407, 32.995621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.709377, 36.260464, 33.011169>,  <29.926558, 35.925560, 33.037083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.709377, 36.260464, 33.011169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738793, -0.439570, 0.510846,
		0.399236, 0.325224, 0.857228,
		-0.542951, 0.837262, -0.064781,
		29.546492, 36.511642, 32.991734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.689703, 35.762436, 33.056538>,  <29.926558, 35.925560, 33.037083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.689703, 35.762436, 33.056538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.060202, 35.904503, 33.006065>,  <31.282501, 35.989742, 32.975780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.060202, 35.904503, 33.006065>,  <30.689703, 35.762436, 33.056538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.060202, 35.904503, 33.006065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118784, -0.592785, -0.796553,
		-0.357706, 0.722817, -0.591254,
		0.926249, 0.355164, -0.126183,
		31.338076, 36.011051, 32.968212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.812853, 35.707333, 32.398003>,  <30.689703, 35.762436, 33.056538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.812853, 35.707333, 32.398003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.195738, 35.743385, 32.507999>,  <31.425468, 35.765018, 32.573997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.195738, 35.743385, 32.507999>,  <30.812853, 35.707333, 32.398003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.195738, 35.743385, 32.507999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265423, -0.652071, -0.710179,
		0.115303, 0.752781, -0.648094,
		0.957213, 0.090133, 0.274992,
		31.482903, 35.770424, 32.590496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.289991, 35.995125, 31.806818>,  <30.812853, 35.707333, 32.398003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.289991, 35.995125, 31.806818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.540491, 35.817463, 32.063110>,  <31.690792, 35.710865, 32.216885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.540491, 35.817463, 32.063110>,  <31.289991, 35.995125, 31.806818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.540491, 35.817463, 32.063110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397724, -0.524847, -0.752563,
		0.670541, 0.726127, -0.152035,
		0.626251, -0.444156, 0.640730,
		31.728367, 35.684216, 32.255329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.819283, 35.942856, 31.445118>,  <31.289991, 35.995125, 31.806818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.819283, 35.942856, 31.445118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.923454, 35.691345, 31.738188>,  <31.985958, 35.540440, 31.914030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.923454, 35.691345, 31.738188>,  <31.819283, 35.942856, 31.445118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.923454, 35.691345, 31.738188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520685, -0.547582, -0.655013,
		0.813058, 0.552078, 0.184789,
		0.260431, -0.628780, 0.732674,
		32.001583, 35.502712, 31.957991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.594734, 35.955292, 31.435455>,  <31.819283, 35.942856, 31.445118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.594734, 35.955292, 31.435455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.489754, 35.627899, 31.639891>,  <32.426765, 35.431465, 31.762552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.489754, 35.627899, 31.639891>,  <32.594734, 35.955292, 31.435455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.489754, 35.627899, 31.639891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756454, -0.503350, -0.417632,
		0.599078, 0.277004, 0.751248,
		-0.262455, -0.818479, 0.511087,
		32.411018, 35.382355, 31.793217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.232262, 35.752285, 31.736994>,  <32.594734, 35.955292, 31.435455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.232262, 35.752285, 31.736994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.994793, 35.430531, 31.746090>,  <32.852310, 35.237480, 31.751547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.994793, 35.430531, 31.746090>,  <33.232262, 35.752285, 31.736994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.994793, 35.430531, 31.746090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759070, -0.569164, -0.316015,
		0.267139, -0.170349, 0.948482,
		-0.593675, -0.804384, 0.022739,
		32.816692, 35.189217, 31.752913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.583164, 35.167770, 32.072147>,  <33.232262, 35.752285, 31.736994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.583164, 35.167770, 32.072147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305470, 34.995087, 31.841785>,  <33.138851, 34.891476, 31.703568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305470, 34.995087, 31.841785>,  <33.583164, 35.167770, 32.072147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.305470, 34.995087, 31.841785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697982, -0.599099, -0.392303,
		-0.175664, -0.674321, 0.717240,
		-0.694236, -0.431707, -0.575904,
		33.097198, 34.865574, 31.669014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719540, 34.381813, 32.109341>,  <33.583164, 35.167770, 32.072147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719540, 34.381813, 32.109341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.478249, 34.443451, 31.796324>,  <33.333473, 34.480434, 31.608513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.478249, 34.443451, 31.796324>,  <33.719540, 34.381813, 32.109341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.478249, 34.443451, 31.796324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567632, -0.606303, -0.556948,
		-0.560277, -0.780163, 0.278272,
		-0.603227, 0.154089, -0.782543,
		33.297279, 34.489677, 31.561562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726589, 33.684593, 31.859259>,  <33.719540, 34.381813, 32.109341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726589, 33.684593, 31.859259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598515, 33.931877, 31.572124>,  <33.521667, 34.080250, 31.399843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598515, 33.931877, 31.572124>,  <33.726589, 33.684593, 31.859259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.598515, 33.931877, 31.572124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495490, -0.536542, -0.683090,
		-0.807445, -0.574400, -0.134524,
		-0.320190, 0.618213, -0.717838,
		33.502457, 34.117340, 31.356773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.403046, 33.216492, 31.305347>,  <33.726589, 33.684593, 31.859259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.403046, 33.216492, 31.305347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.487850, 33.572998, 31.145000>,  <33.538734, 33.786903, 31.048792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.487850, 33.572998, 31.145000>,  <33.403046, 33.216492, 31.305347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.487850, 33.572998, 31.145000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580855, -0.444800, -0.681733,
		-0.785912, -0.088309, -0.612000,
		0.212014, 0.891266, -0.400868,
		33.551453, 33.840378, 31.024740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.337826, 33.125454, 30.545488>,  <33.403046, 33.216492, 31.305347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.337826, 33.125454, 30.545488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.592396, 33.429790, 30.596214>,  <33.745140, 33.612392, 30.626650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.592396, 33.429790, 30.596214>,  <33.337826, 33.125454, 30.545488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.592396, 33.429790, 30.596214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601326, -0.386433, -0.699340,
		-0.483082, 0.521335, -0.703450,
		0.636427, 0.760841, 0.126814,
		33.783325, 33.658043, 30.634258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.456829, 33.394913, 29.867008>,  <33.337826, 33.125454, 30.545488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.456829, 33.394913, 29.867008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.770378, 33.533054, 30.073414>,  <33.958508, 33.615940, 30.197258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.770378, 33.533054, 30.073414>,  <33.456829, 33.394913, 29.867008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.770378, 33.533054, 30.073414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608071, -0.258772, -0.750524,
		-0.125669, 0.902089, -0.412847,
		0.783873, 0.345357, 0.516014,
		34.005539, 33.636662, 30.228218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933434, 33.783432, 29.275280>,  <33.456829, 33.394913, 29.867008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933434, 33.783432, 29.275280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.151329, 33.743683, 29.608358>,  <34.282066, 33.719833, 29.808205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.151329, 33.743683, 29.608358>,  <33.933434, 33.783432, 29.275280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.151329, 33.743683, 29.608358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823502, -0.124211, -0.553549,
		0.158439, 0.987267, 0.014173,
		0.544740, -0.099375, 0.832696,
		34.314751, 33.713871, 29.858168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450451, 34.231228, 29.109787>,  <33.933434, 33.783432, 29.275280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450451, 34.231228, 29.109787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.558727, 33.955082, 29.378153>,  <34.623695, 33.789394, 29.539173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.558727, 33.955082, 29.378153>,  <34.450451, 34.231228, 29.109787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.558727, 33.955082, 29.378153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916157, -0.029259, -0.399750,
		0.295602, 0.722873, 0.624559,
		0.270695, -0.690361, 0.670914,
		34.639935, 33.747974, 29.579428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099262, 34.447487, 29.414787>,  <34.450451, 34.231228, 29.109787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099262, 34.447487, 29.414787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.051060, 34.052357, 29.454138>,  <35.022137, 33.815277, 29.477747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.051060, 34.052357, 29.454138>,  <35.099262, 34.447487, 29.414787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.051060, 34.052357, 29.454138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978810, -0.134763, -0.154173,
		0.165553, 0.077711, 0.983134,
		-0.120509, -0.987826, 0.098374,
		35.014908, 33.756008, 29.483650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642548, 34.200733, 29.772310>,  <35.099262, 34.447487, 29.414787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642548, 34.200733, 29.772310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.516006, 33.879295, 29.570652>,  <35.440083, 33.686432, 29.449657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.516006, 33.879295, 29.570652>,  <35.642548, 34.200733, 29.772310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516006, 33.879295, 29.570652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938081, -0.185913, -0.292301,
		0.141164, -0.565397, 0.812649,
		-0.316348, -0.803594, -0.504144,
		35.421101, 33.638218, 29.419409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296436, 33.701492, 29.732098>,  <35.642548, 34.200733, 29.772310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.296436, 33.701492, 29.732098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.016808, 33.564785, 29.480864>,  <35.849030, 33.482761, 29.330124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.016808, 33.564785, 29.480864>,  <36.296436, 33.701492, 29.732098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.016808, 33.564785, 29.480864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714982, -0.346184, -0.607418,
		-0.009835, -0.873698, 0.486368,
		-0.699074, -0.341771, -0.628084,
		35.807087, 33.462254, 29.292439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532673, 33.066868, 29.452728>,  <36.296436, 33.701492, 29.732098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.532673, 33.066868, 29.452728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.267300, 33.154621, 29.166590>,  <36.108074, 33.207275, 28.994907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.267300, 33.154621, 29.166590>,  <36.532673, 33.066868, 29.452728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.267300, 33.154621, 29.166590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677405, -0.229911, -0.698759,
		-0.317766, -0.948161, 0.003917,
		-0.663436, 0.219388, -0.715347,
		36.068268, 33.220436, 28.951986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589931, 32.521252, 28.981750>,  <36.532673, 33.066868, 29.452728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589931, 32.521252, 28.981750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.403015, 32.810459, 28.778233>,  <36.290863, 32.983986, 28.656122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.403015, 32.810459, 28.778233>,  <36.589931, 32.521252, 28.981750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.403015, 32.810459, 28.778233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621574, -0.140576, -0.770639,
		-0.628714, -0.676369, -0.383722,
		-0.467294, 0.723023, -0.508796,
		36.262825, 33.027367, 28.625593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532070, 32.277912, 28.319559>,  <36.589931, 32.521252, 28.981750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.532070, 32.277912, 28.319559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.468735, 32.666443, 28.248619>,  <36.430733, 32.899563, 28.206055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.468735, 32.666443, 28.248619>,  <36.532070, 32.277912, 28.319559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468735, 32.666443, 28.248619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656298, -0.030663, -0.753879,
		-0.737700, -0.235764, -0.632624,
		-0.158339, 0.971326, -0.177352,
		36.421234, 32.957840, 28.195414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310623, 32.430653, 27.589775>,  <36.532070, 32.277912, 28.319559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.310623, 32.430653, 27.589775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490025, 32.755333, 27.739431>,  <36.597668, 32.950142, 27.829226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490025, 32.755333, 27.739431>,  <36.310623, 32.430653, 27.589775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490025, 32.755333, 27.739431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637745, 0.002644, -0.770243,
		-0.626198, 0.584064, -0.516473,
		0.448506, 0.811703, 0.374140,
		36.624577, 32.998844, 27.851673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264286, 32.876175, 27.082874>,  <36.310623, 32.430653, 27.589775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264286, 32.876175, 27.082874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572460, 32.977947, 27.316692>,  <36.757366, 33.039009, 27.456984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572460, 32.977947, 27.316692>,  <36.264286, 32.876175, 27.082874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572460, 32.977947, 27.316692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624688, -0.118264, -0.771867,
		-0.127253, 0.959834, -0.250052,
		0.770436, 0.254427, 0.584547,
		36.803593, 33.054276, 27.492056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663994, 33.442322, 26.703722>,  <36.264286, 32.876175, 27.082874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.663994, 33.442322, 26.703722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.910301, 33.326550, 26.996861>,  <37.058086, 33.257088, 27.172743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.910301, 33.326550, 26.996861>,  <36.663994, 33.442322, 26.703722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.910301, 33.326550, 26.996861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781188, 0.102848, -0.615766,
		0.102848, 0.951659, 0.289427,
		0.615766, -0.289427, 0.732846,
		37.095032, 33.239723, 27.216715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191132, 33.821194, 26.591845>,  <36.663994, 33.442322, 26.703722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191132, 33.821194, 26.591845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.331795, 33.497910, 26.780796>,  <37.416191, 33.303940, 26.894167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.331795, 33.497910, 26.780796>,  <37.191132, 33.821194, 26.591845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.331795, 33.497910, 26.780796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792521, -0.011544, -0.609736,
		0.498246, 0.588785, 0.636461,
		0.351656, -0.808207, 0.472377,
		37.437290, 33.255447, 26.922508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940071, 33.876579, 26.531042>,  <37.191132, 33.821194, 26.591845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940071, 33.876579, 26.531042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.896671, 33.499584, 26.657503>,  <37.870632, 33.273388, 26.733379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.896671, 33.499584, 26.657503>,  <37.940071, 33.876579, 26.531042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.896671, 33.499584, 26.657503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864424, -0.246504, -0.438187,
		0.490916, 0.225743, 0.841452,
		-0.108504, -0.942484, 0.316151,
		37.864120, 33.216839, 26.752348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595551, 33.643742, 26.846947>,  <37.940071, 33.876579, 26.531042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.595551, 33.643742, 26.846947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.404099, 33.307896, 26.744211>,  <38.289227, 33.106388, 26.682570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.404099, 33.307896, 26.744211>,  <38.595551, 33.643742, 26.846947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.404099, 33.307896, 26.744211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846908, -0.364300, -0.387340,
		0.231650, -0.402909, 0.885439,
		-0.478628, -0.839613, -0.256837,
		38.260509, 33.056011, 26.667160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927029, 33.088482, 27.182159>,  <38.595551, 33.643742, 26.846947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.927029, 33.088482, 27.182159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.756809, 32.945534, 26.849609>,  <38.654678, 32.859764, 26.650080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.756809, 32.945534, 26.849609>,  <38.927029, 33.088482, 27.182159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756809, 32.945534, 26.849609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904021, -0.126638, -0.408300,
		0.040632, -0.925336, 0.376966,
		-0.425552, -0.357375, -0.831377,
		38.629143, 32.838322, 26.600197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482693, 32.543491, 26.837929>,  <38.927029, 33.088482, 27.182159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482693, 32.543491, 26.837929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.201317, 32.613079, 26.562273>,  <39.032494, 32.654831, 26.396879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.201317, 32.613079, 26.562273>,  <39.482693, 32.543491, 26.837929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.201317, 32.613079, 26.562273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662939, -0.189032, -0.724416,
		-0.256298, -0.966437, 0.017639,
		-0.703436, 0.173973, -0.689138,
		38.990284, 32.665272, 26.355532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.572510, 31.975033, 26.419600>,  <39.482693, 32.543491, 26.837929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.572510, 31.975033, 26.419600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.363647, 32.265839, 26.241251>,  <39.238331, 32.440323, 26.134241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.363647, 32.265839, 26.241251>,  <39.572510, 31.975033, 26.419600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.363647, 32.265839, 26.241251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393237, -0.258677, -0.882299,
		-0.756782, -0.636031, -0.150820,
		-0.522156, 0.727015, -0.445873,
		39.207001, 32.483944, 26.107489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402519, 31.787228, 25.759634>,  <39.572510, 31.975033, 26.419600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.402519, 31.787228, 25.759634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.373821, 32.185154, 25.730806>,  <39.356602, 32.423908, 25.713511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.373821, 32.185154, 25.730806>,  <39.402519, 31.787228, 25.759634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.373821, 32.185154, 25.730806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542647, -0.021695, -0.839681,
		-0.836891, -0.099348, -0.538277,
		-0.071743, 0.994816, -0.072067,
		39.352299, 32.483601, 25.709187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195553, 31.949188, 25.118614>,  <39.402519, 31.787228, 25.759634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.195553, 31.949188, 25.118614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.350777, 32.288155, 25.263554>,  <39.443913, 32.491535, 25.350517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.350777, 32.288155, 25.263554>,  <39.195553, 31.949188, 25.118614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.350777, 32.288155, 25.263554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675464, 0.005976, -0.737369,
		-0.627022, 0.530898, -0.570079,
		0.388061, 0.847415, 0.362349,
		39.467194, 32.542377, 25.372259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256283, 32.405468, 24.565376>,  <39.195553, 31.949188, 25.118614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.256283, 32.405468, 24.565376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.505566, 32.578766, 24.825811>,  <39.655136, 32.682743, 24.982073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.505566, 32.578766, 24.825811>,  <39.256283, 32.405468, 24.565376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.505566, 32.578766, 24.825811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720225, 0.006500, -0.693710,
		-0.304778, 0.901253, -0.307983,
		0.623207, 0.433245, 0.651085,
		39.692528, 32.708740, 25.021137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646744, 32.934982, 24.217419>,  <39.256283, 32.405468, 24.565376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646744, 32.934982, 24.217419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.853886, 32.848629, 24.548531>,  <39.978172, 32.796818, 24.747198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.853886, 32.848629, 24.548531>,  <39.646744, 32.934982, 24.217419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.853886, 32.848629, 24.548531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841401, -0.046212, -0.538432,
		0.154492, 0.975325, 0.157715,
		0.517857, -0.215885, 0.827779,
		40.009243, 32.783863, 24.796864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.116459, 33.511482, 24.330177>,  <39.646744, 32.934982, 24.217419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.116459, 33.511482, 24.330177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.267227, 33.195179, 24.523108>,  <40.357689, 33.005398, 24.638865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.267227, 33.195179, 24.523108>,  <40.116459, 33.511482, 24.330177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.267227, 33.195179, 24.523108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869401, 0.122423, -0.478700,
		0.319488, 0.599765, 0.733628,
		0.376921, -0.790756, 0.482323,
		40.380302, 32.957951, 24.667805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.707447, 33.775158, 24.627018>,  <40.116459, 33.511482, 24.330177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.707447, 33.775158, 24.627018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.726089, 33.376637, 24.598152>,  <40.737274, 33.137524, 24.580833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.726089, 33.376637, 24.598152>,  <40.707447, 33.775158, 24.627018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.726089, 33.376637, 24.598152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904700, 0.072724, -0.419797,
		0.423494, -0.045723, 0.904745,
		0.046602, -0.996304, -0.072163,
		40.740070, 33.077744, 24.576504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.410793, 33.596146, 24.798634>,  <40.707447, 33.775158, 24.627018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.410793, 33.596146, 24.798634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.279213, 33.263412, 24.619820>,  <41.200264, 33.063774, 24.512531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.279213, 33.263412, 24.619820>,  <41.410793, 33.596146, 24.798634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.279213, 33.263412, 24.619820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909862, -0.152425, -0.385898,
		0.252864, -0.533683, 0.806996,
		-0.328953, -0.831835, -0.447036,
		41.180527, 33.013863, 24.485708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.969944, 33.171387, 24.934814>,  <41.410793, 33.596146, 24.798634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.969944, 33.171387, 24.934814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.764557, 33.021770, 24.625896>,  <41.641323, 32.931999, 24.440546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.764557, 33.021770, 24.625896>,  <41.969944, 33.171387, 24.934814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.764557, 33.021770, 24.625896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844016, -0.057704, -0.533204,
		0.154877, -0.925614, 0.345328,
		-0.513469, -0.374044, -0.772296,
		41.610516, 32.909557, 24.394207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.365746, 32.633850, 24.547943>,  <41.969944, 33.171387, 24.934814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.365746, 32.633850, 24.547943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.084469, 32.732254, 24.281109>,  <41.915703, 32.791294, 24.121008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.084469, 32.732254, 24.281109>,  <42.365746, 32.633850, 24.547943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.084469, 32.732254, 24.281109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695413, 0.042572, -0.717348,
		-0.148074, -0.968332, -0.201014,
		-0.703189, 0.246008, -0.667087,
		41.873512, 32.806057, 24.080982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.544121, 32.245762, 23.908794>,  <42.365746, 32.633850, 24.547943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.544121, 32.245762, 23.908794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.310566, 32.551495, 23.799337>,  <42.170433, 32.734932, 23.733664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.310566, 32.551495, 23.799337>,  <42.544121, 32.245762, 23.908794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.310566, 32.551495, 23.799337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676661, 0.271946, -0.684233,
		-0.448562, -0.584678, -0.675976,
		-0.583885, 0.764328, -0.273644,
		42.135399, 32.780792, 23.717243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.553596, 32.223728, 23.209650>,  <42.544121, 32.245762, 23.908794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.553596, 32.223728, 23.209650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.435196, 32.603283, 23.253452>,  <42.364155, 32.831017, 23.279734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.435196, 32.603283, 23.253452>,  <42.553596, 32.223728, 23.209650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.435196, 32.603283, 23.253452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546768, 0.262324, -0.795129,
		-0.783215, -0.175490, -0.596471,
		-0.296006, 0.948889, 0.109504,
		42.346394, 32.887951, 23.286303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.335838, 32.529339, 22.515291>,  <42.553596, 32.223728, 23.209650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.335838, 32.529339, 22.515291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.432434, 32.841656, 22.745789>,  <42.490391, 33.029045, 22.884087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.432434, 32.841656, 22.745789>,  <42.335838, 32.529339, 22.515291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.432434, 32.841656, 22.745789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549738, 0.379268, -0.744274,
		-0.799670, 0.496514, -0.337641,
		0.241486, 0.780788, 0.576242,
		42.504879, 33.075893, 22.918661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.187786, 33.091347, 22.099457>,  <42.335838, 32.529339, 22.515291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.187786, 33.091347, 22.099457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.434673, 33.231651, 22.381168>,  <42.582806, 33.315834, 22.550196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.434673, 33.231651, 22.381168>,  <42.187786, 33.091347, 22.099457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.434673, 33.231651, 22.381168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473702, 0.549044, -0.688591,
		-0.628213, 0.758627, 0.172721,
		0.617215, 0.350764, 0.704280,
		42.619839, 33.336880, 22.592453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.203808, 33.816944, 21.963474>,  <42.187786, 33.091347, 22.099457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.203808, 33.816944, 21.963474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.519905, 33.739178, 22.195927>,  <42.709564, 33.692516, 22.335398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.519905, 33.739178, 22.195927>,  <42.203808, 33.816944, 21.963474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.519905, 33.739178, 22.195927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549987, 0.643228, -0.532703,
		-0.270231, 0.740581, 0.615236,
		0.790246, -0.194419, 0.581130,
		42.756981, 33.680851, 22.370266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.871918, 34.074993, 21.993208>,  <42.203808, 33.816944, 21.963474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.871918, 34.074993, 21.993208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.799011, 34.417091, 21.799166>,  <42.755268, 34.622353, 21.682741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.799011, 34.417091, 21.799166>,  <42.871918, 34.074993, 21.993208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.799011, 34.417091, 21.799166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224570, -0.444118, -0.867368,
		-0.957260, -0.267032, -0.111115,
		-0.182267, 0.855250, -0.485104,
		42.744331, 34.673668, 21.653635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.625149, 33.798473, 21.363861>,  <42.871918, 34.074993, 21.993208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.625149, 33.798473, 21.363861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.681854, 34.186028, 21.282713>,  <42.715878, 34.418560, 21.234024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.681854, 34.186028, 21.282713>,  <42.625149, 33.798473, 21.363861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.681854, 34.186028, 21.282713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033770, -0.200088, -0.979196,
		-0.989325, 0.145662, 0.004355,
		0.141760, 0.968890, -0.202871,
		42.724380, 34.476696, 21.221851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.171757, 33.930016, 20.825871>,  <42.625149, 33.798473, 21.363861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.171757, 33.930016, 20.825871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.472969, 34.192997, 20.815344>,  <42.653698, 34.350788, 20.809029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.472969, 34.192997, 20.815344>,  <42.171757, 33.930016, 20.825871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.472969, 34.192997, 20.815344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050651, -0.097799, -0.993917,
		-0.656030, 0.747120, -0.106946,
		0.753034, 0.657456, -0.026317,
		42.698879, 34.390232, 20.807449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.111115, 34.676796, 20.356699>,  <42.171757, 33.930016, 20.825871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.111115, 34.676796, 20.356699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.453846, 34.475601, 20.402039>,  <42.659485, 34.354885, 20.429243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.453846, 34.475601, 20.402039>,  <42.111115, 34.676796, 20.356699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.453846, 34.475601, 20.402039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079045, -0.089097, -0.992881,
		0.509504, 0.859690, -0.036582,
		0.856830, -0.502985, 0.113350,
		42.710896, 34.324707, 20.436043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.650795, 35.039013, 20.078230>,  <42.111115, 34.676796, 20.356699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.650795, 35.039013, 20.078230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.695728, 34.641548, 20.076769>,  <42.722687, 34.403069, 20.075891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.695728, 34.641548, 20.076769>,  <42.650795, 35.039013, 20.078230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.695728, 34.641548, 20.076769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179439, -0.016670, -0.983628,
		0.977335, 0.111149, -0.180174,
		0.112333, -0.993664, -0.003652,
		42.729427, 34.343449, 20.075674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.167091, 34.802830, 19.541708>,  <42.650795, 35.039013, 20.078230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.167091, 34.802830, 19.541708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.854824, 34.552914, 19.547314>,  <42.667465, 34.402966, 19.550678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.854824, 34.552914, 19.547314>,  <43.167091, 34.802830, 19.541708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.854824, 34.552914, 19.547314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083180, 0.081651, -0.993184,
		0.619387, -0.776512, -0.115712,
		-0.780667, -0.624790, 0.014017,
		42.620625, 34.365479, 19.551519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.749561, 35.147690, 19.896069>,  <43.167091, 34.802830, 19.541708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.749561, 35.147690, 19.896069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.678020, 34.762135, 19.974997>,  <43.635094, 34.530804, 20.022354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.678020, 34.762135, 19.974997>,  <43.749561, 35.147690, 19.896069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.678020, 34.762135, 19.974997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515526, -0.079007, -0.853224,
		0.838000, -0.254328, -0.482777,
		-0.178856, -0.963885, 0.197320,
		43.624363, 34.472969, 20.034193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.920033, 34.715816, 20.482920>,  <43.749561, 35.147690, 19.896069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.920033, 34.715816, 20.482920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.045712, 35.088581, 20.410444>,  <44.121117, 35.312241, 20.366959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.045712, 35.088581, 20.410444>,  <43.920033, 34.715816, 20.482920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.045712, 35.088581, 20.410444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359489, -0.059855, -0.931228,
		-0.878663, 0.357724, 0.316204,
		0.314196, 0.931907, -0.181190,
		44.139969, 35.368153, 20.356087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.702290, 35.152477, 21.040047>,  <43.920033, 34.715816, 20.482920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.702290, 35.152477, 21.040047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.379257, 34.939713, 20.938154>,  <43.185440, 34.812054, 20.877020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.379257, 34.939713, 20.938154>,  <43.702290, 35.152477, 21.040047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.379257, 34.939713, 20.938154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487818, 0.359734, 0.795378,
		-0.331435, 0.766592, -0.549989,
		-0.807579, -0.531911, -0.254729,
		43.136982, 34.780140, 20.861736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.208061, 35.625145, 21.046841>,  <43.702290, 35.152477, 21.040047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.208061, 35.625145, 21.046841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.033886, 35.267860, 21.091682>,  <42.929379, 35.053490, 21.118587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.033886, 35.267860, 21.091682>,  <43.208061, 35.625145, 21.046841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.033886, 35.267860, 21.091682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467793, 0.330909, 0.819554,
		-0.769129, 0.304427, -0.561929,
		-0.435442, -0.893209, 0.112103,
		42.903252, 34.999897, 21.125313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.464634, 35.791256, 21.115170>,  <43.208061, 35.625145, 21.046841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.464634, 35.791256, 21.115170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.542908, 35.435856, 21.281195>,  <42.589874, 35.222614, 21.380810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.542908, 35.435856, 21.281195>,  <42.464634, 35.791256, 21.115170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.542908, 35.435856, 21.281195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387372, 0.318791, 0.865052,
		-0.900915, -0.330064, -0.281796,
		0.195689, -0.888499, 0.415061,
		42.601616, 35.169308, 21.405712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.809006, 35.503056, 21.384628>,  <42.464634, 35.791256, 21.115170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.809006, 35.503056, 21.384628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.099670, 35.326145, 21.594908>,  <42.274071, 35.220001, 21.721075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.099670, 35.326145, 21.594908>,  <41.809006, 35.503056, 21.384628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.099670, 35.326145, 21.594908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430541, 0.303121, 0.850148,
		-0.535348, -0.844104, 0.029849,
		0.726661, -0.442274, 0.525697,
		42.317669, 35.193462, 21.752617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.507511, 35.077408, 21.817635>,  <41.809006, 35.503056, 21.384628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.507511, 35.077408, 21.817635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.858650, 35.141853, 21.998047>,  <42.069332, 35.180519, 22.106295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.858650, 35.141853, 21.998047>,  <41.507511, 35.077408, 21.817635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.858650, 35.141853, 21.998047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478545, 0.256557, 0.839746,
		0.019579, -0.953006, 0.302318,
		0.877845, 0.161114, 0.451033,
		42.122005, 35.190189, 22.133356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.541946, 34.666904, 22.440495>,  <41.507511, 35.077408, 21.817635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.541946, 34.666904, 22.440495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.804634, 34.964016, 22.492651>,  <41.962246, 35.142281, 22.523945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.804634, 34.964016, 22.492651>,  <41.541946, 34.666904, 22.440495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.804634, 34.964016, 22.492651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275858, 0.075685, 0.958214,
		0.701871, -0.665247, 0.254605,
		0.656719, 0.742777, 0.130393,
		42.001648, 35.186848, 22.531769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.889339, 34.572495, 23.069418>,  <41.541946, 34.666904, 22.440495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.889339, 34.572495, 23.069418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.927593, 34.964874, 23.001789>,  <41.950546, 35.200302, 22.961212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.927593, 34.964874, 23.001789>,  <41.889339, 34.572495, 23.069418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.927593, 34.964874, 23.001789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156059, 0.182526, 0.970737,
		0.983107, -0.066450, 0.170542,
		0.095634, 0.980953, -0.169072,
		41.956284, 35.259159, 22.951067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.049717, 34.778431, 23.782135>,  <41.889339, 34.572495, 23.069418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.049717, 34.778431, 23.782135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.997841, 35.108669, 23.562471>,  <41.966717, 35.306812, 23.430674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.997841, 35.108669, 23.562471>,  <42.049717, 34.778431, 23.782135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.997841, 35.108669, 23.562471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006292, 0.553141, 0.833064,
		0.991535, 0.111492, -0.066541,
		-0.129687, 0.825593, -0.549160,
		41.958935, 35.356346, 23.397724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.415344, 35.304394, 24.108681>,  <42.049717, 34.778431, 23.782135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.415344, 35.304394, 24.108681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.117863, 35.485809, 23.912233>,  <41.939373, 35.594658, 23.794365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.117863, 35.485809, 23.912233>,  <42.415344, 35.304394, 24.108681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.117863, 35.485809, 23.912233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215565, 0.532711, 0.818383,
		0.632797, 0.714505, -0.298413,
		-0.743706, 0.453543, -0.491120,
		41.894753, 35.621872, 23.764896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.399540, 35.954876, 24.475060>,  <42.415344, 35.304394, 24.108681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.399540, 35.954876, 24.475060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.059765, 35.932987, 24.265121>,  <41.855900, 35.919853, 24.139158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.059765, 35.932987, 24.265121>,  <42.399540, 35.954876, 24.475060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.059765, 35.932987, 24.265121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464691, 0.548852, 0.694856,
		0.250035, 0.834126, -0.491646,
		-0.849438, -0.054725, -0.524843,
		41.804932, 35.916569, 24.107668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.023403, 36.580593, 24.687757>,  <42.399540, 35.954876, 24.475060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.023403, 36.580593, 24.687757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.732689, 36.367828, 24.513933>,  <41.558258, 36.240170, 24.409639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.732689, 36.367828, 24.513933>,  <42.023403, 36.580593, 24.687757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.732689, 36.367828, 24.513933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679467, 0.464204, 0.568189,
		-0.100505, 0.708223, -0.698799,
		-0.726790, -0.531916, -0.434559,
		41.514652, 36.208252, 24.383566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.374008, 37.087391, 24.621861>,  <42.023403, 36.580593, 24.687757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.374008, 37.087391, 24.621861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.245152, 36.708717, 24.623251>,  <41.167839, 36.481514, 24.624084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.245152, 36.708717, 24.623251>,  <41.374008, 37.087391, 24.621861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.245152, 36.708717, 24.623251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722332, 0.248164, 0.645485,
		-0.611935, 0.205424, -0.763765,
		-0.322137, -0.946687, 0.003476,
		41.148510, 36.424713, 24.624294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.581863, 37.090000, 24.502499>,  <41.374008, 37.087391, 24.621861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.581863, 37.090000, 24.502499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.657684, 36.749004, 24.697363>,  <40.703178, 36.544407, 24.814281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.657684, 36.749004, 24.697363>,  <40.581863, 37.090000, 24.502499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.657684, 36.749004, 24.697363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770462, 0.178421, 0.612009,
		-0.608653, -0.491348, -0.622993,
		0.189554, -0.852493, 0.487161,
		40.714550, 36.493256, 24.843512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.967529, 36.773067, 24.593000>,  <40.581863, 37.090000, 24.502499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.967529, 36.773067, 24.593000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.205139, 36.613319, 24.872326>,  <40.347706, 36.517471, 25.039921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.205139, 36.613319, 24.872326>,  <39.967529, 36.773067, 24.593000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.205139, 36.613319, 24.872326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750586, 0.037142, 0.659728,
		-0.289415, -0.916035, -0.277702,
		0.594020, -0.399374, 0.698312,
		40.383347, 36.493507, 25.081820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.544594, 36.326122, 24.805952>,  <39.967529, 36.773067, 24.593000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.544594, 36.326122, 24.805952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.824608, 36.396000, 25.082916>,  <39.992615, 36.437927, 25.249094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.824608, 36.396000, 25.082916>,  <39.544594, 36.326122, 24.805952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.824608, 36.396000, 25.082916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678555, -0.139400, 0.721201,
		0.222515, -0.974704, 0.020958,
		0.700036, 0.174700, 0.692409,
		40.034618, 36.448410, 25.290640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.502316, 35.795525, 25.336451>,  <39.544594, 36.326122, 24.805952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.502316, 35.795525, 25.336451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.722099, 36.072388, 25.523647>,  <39.853970, 36.238506, 25.635965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.722099, 36.072388, 25.523647>,  <39.502316, 35.795525, 25.336451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.722099, 36.072388, 25.523647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558839, -0.111946, 0.821685,
		0.621125, -0.713012, 0.325296,
		0.549456, 0.692157, 0.467992,
		39.886936, 36.280033, 25.664045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630886, 35.493954, 26.021841>,  <39.502316, 35.795525, 25.336451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.630886, 35.493954, 26.021841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.695423, 35.886696, 26.061703>,  <39.734146, 36.122341, 26.085619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.695423, 35.886696, 26.061703>,  <39.630886, 35.493954, 26.021841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.695423, 35.886696, 26.061703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649330, 0.029573, 0.759931,
		0.743194, -0.187320, 0.642319,
		0.161346, 0.981854, 0.099654,
		39.743828, 36.181252, 26.091599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673782, 35.539940, 26.736864>,  <39.630886, 35.493954, 26.021841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.673782, 35.539940, 26.736864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.589676, 35.901749, 26.588467>,  <39.539211, 36.118832, 26.499428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.589676, 35.901749, 26.588467>,  <39.673782, 35.539940, 26.736864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.589676, 35.901749, 26.588467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639032, 0.160030, 0.752349,
		0.739882, 0.395271, 0.544367,
		-0.210267, 0.904517, -0.370994,
		39.526596, 36.173103, 26.477169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707127, 35.962662, 27.240206>,  <39.673782, 35.539940, 26.736864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.707127, 35.962662, 27.240206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.486362, 36.198574, 27.004391>,  <39.353905, 36.340122, 26.862902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.486362, 36.198574, 27.004391>,  <39.707127, 35.962662, 27.240206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.486362, 36.198574, 27.004391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615962, 0.188235, 0.764957,
		0.562127, 0.785321, 0.259393,
		-0.551909, 0.589779, -0.589540,
		39.320789, 36.375507, 26.827528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.461067, 36.492550, 27.680540>,  <39.707127, 35.962662, 27.240206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.461067, 36.492550, 27.680540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.203850, 36.474472, 27.374743>,  <39.049519, 36.463627, 27.191265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.203850, 36.474472, 27.374743>,  <39.461067, 36.492550, 27.680540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.203850, 36.474472, 27.374743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744925, 0.268545, 0.610713,
		0.177701, 0.962207, -0.206351,
		-0.643046, -0.045192, -0.764493,
		39.010937, 36.460915, 27.145395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.231335, 37.181511, 27.656033>,  <39.461067, 36.492550, 27.680540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.231335, 37.181511, 27.656033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.925850, 36.980148, 27.494377>,  <38.742561, 36.859329, 27.397385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.925850, 36.980148, 27.494377>,  <39.231335, 37.181511, 27.656033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.925850, 36.980148, 27.494377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631473, 0.452470, 0.629693,
		-0.134134, 0.736104, -0.663445,
		-0.763709, -0.503411, -0.404138,
		38.696739, 36.829124, 27.373137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776367, 37.544804, 27.904869>,  <39.231335, 37.181511, 27.656033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.776367, 37.544804, 27.904869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.568077, 37.246933, 27.737871>,  <38.443104, 37.068211, 27.637672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.568077, 37.246933, 27.737871>,  <38.776367, 37.544804, 27.904869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568077, 37.246933, 27.737871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792278, 0.239343, 0.561258,
		-0.318032, 0.623033, -0.714623,
		-0.520722, -0.744678, -0.417496,
		38.411861, 37.023529, 27.612623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221870, 37.864704, 27.561489>,  <38.776367, 37.544804, 27.904869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.221870, 37.864704, 27.561489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.111065, 37.489002, 27.642540>,  <38.044582, 37.263580, 27.691170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.111065, 37.489002, 27.642540>,  <38.221870, 37.864704, 27.561489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111065, 37.489002, 27.642540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870358, 0.334623, 0.361255,
		-0.407115, -0.076285, -0.910186,
		-0.277011, -0.939259, 0.202625,
		38.027962, 37.207226, 27.703327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525963, 37.807007, 27.384975>,  <38.221870, 37.864704, 27.561489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525963, 37.807007, 27.384975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.579205, 37.517296, 27.655590>,  <37.611149, 37.343468, 27.817959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.579205, 37.517296, 27.655590>,  <37.525963, 37.807007, 27.384975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.579205, 37.517296, 27.655590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860881, 0.253740, 0.441021,
		-0.491087, -0.641120, -0.589744,
		0.133106, -0.724279, 0.676537,
		37.619137, 37.300011, 27.858551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881393, 37.563923, 27.472025>,  <37.525963, 37.807007, 27.384975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881393, 37.563923, 27.472025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.068871, 37.391575, 27.780485>,  <37.181358, 37.288166, 27.965561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.068871, 37.391575, 27.780485>,  <36.881393, 37.563923, 27.472025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068871, 37.391575, 27.780485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855178, -0.002571, 0.518328,
		-0.221350, -0.902410, -0.369676,
		0.468694, -0.430871, 0.771152,
		37.209480, 37.262314, 28.011831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.429626, 36.928413, 27.703651>,  <36.881393, 37.563923, 27.472025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.429626, 36.928413, 27.703651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.683769, 37.039558, 27.991852>,  <36.836254, 37.106243, 28.164772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.683769, 37.039558, 27.991852>,  <36.429626, 36.928413, 27.703651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.683769, 37.039558, 27.991852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733225, -0.075686, 0.675762,
		0.242299, -0.957635, 0.155647,
		0.635353, 0.277861, 0.720500,
		36.874374, 37.122917, 28.208002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360443, 36.478371, 28.258566>,  <36.429626, 36.928413, 27.703651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.360443, 36.478371, 28.258566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.546467, 36.776127, 28.450230>,  <36.658081, 36.954781, 28.565228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.546467, 36.776127, 28.450230>,  <36.360443, 36.478371, 28.258566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.546467, 36.776127, 28.450230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686691, -0.038267, 0.725941,
		0.558722, -0.666643, 0.493373,
		0.465064, 0.744394, 0.479158,
		36.685986, 36.999447, 28.593977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.359161, 36.260262, 28.935200>,  <36.360443, 36.478371, 28.258566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.359161, 36.260262, 28.935200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.384987, 36.659428, 28.934324>,  <36.400482, 36.898926, 28.933800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.384987, 36.659428, 28.934324>,  <36.359161, 36.260262, 28.935200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.384987, 36.659428, 28.934324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722785, 0.048278, 0.689385,
		0.688050, -0.042930, 0.724392,
		0.064568, 0.997911, -0.002189,
		36.404358, 36.958801, 28.933668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369343, 36.454174, 29.570005>,  <36.359161, 36.260262, 28.935200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.369343, 36.454174, 29.570005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.254360, 36.799335, 29.403742>,  <36.185371, 37.006432, 29.303984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.254360, 36.799335, 29.403742>,  <36.369343, 36.454174, 29.570005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.254360, 36.799335, 29.403742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692477, 0.112580, 0.712602,
		0.661700, 0.492674, 0.565178,
		-0.287453, 0.862901, -0.415659,
		36.168125, 37.058205, 29.279043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304180, 36.995403, 30.108210>,  <36.369343, 36.454174, 29.570005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304180, 36.995403, 30.108210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.095215, 37.190090, 29.828156>,  <35.969833, 37.306904, 29.660124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.095215, 37.190090, 29.828156>,  <36.304180, 36.995403, 30.108210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095215, 37.190090, 29.828156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616914, 0.351081, 0.704386,
		0.588640, 0.799905, 0.116851,
		-0.522418, 0.486717, -0.700133,
		35.938488, 37.336105, 29.618116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115379, 37.604836, 30.438051>,  <36.304180, 36.995403, 30.108210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.115379, 37.604836, 30.438051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.875286, 37.571716, 30.119839>,  <35.731232, 37.551846, 29.928911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.875286, 37.571716, 30.119839>,  <36.115379, 37.604836, 30.438051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875286, 37.571716, 30.119839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798562, 0.117975, 0.590237,
		0.044981, 0.989558, -0.136934,
		-0.600229, -0.082801, -0.795531,
		35.695217, 37.546875, 29.881180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663338, 38.162994, 30.481817>,  <36.115379, 37.604836, 30.438051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663338, 38.162994, 30.481817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.483414, 37.869648, 30.277916>,  <35.375458, 37.693642, 30.155575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.483414, 37.869648, 30.277916>,  <35.663338, 38.162994, 30.481817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.483414, 37.869648, 30.277916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841844, 0.157527, 0.516221,
		-0.298279, 0.661332, -0.688236,
		-0.449810, -0.733365, -0.509752,
		35.348473, 37.649639, 30.124990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983788, 38.414684, 30.444118>,  <35.663338, 38.162994, 30.481817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983788, 38.414684, 30.444118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.949009, 38.021549, 30.379030>,  <34.928143, 37.785667, 30.339977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.949009, 38.021549, 30.379030>,  <34.983788, 38.414684, 30.444118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949009, 38.021549, 30.379030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816488, -0.023280, 0.576894,
		-0.570778, 0.183020, -0.800447,
		-0.086949, -0.982833, -0.162722,
		34.922924, 37.726700, 30.330214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246044, 38.333549, 30.477732>,  <34.983788, 38.414684, 30.444118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246044, 38.333549, 30.477732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.417095, 37.972832, 30.502724>,  <34.519726, 37.756401, 30.517719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.417095, 37.972832, 30.502724>,  <34.246044, 38.333549, 30.477732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417095, 37.972832, 30.502724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725065, -0.300904, 0.619466,
		-0.539829, -0.310205, -0.782533,
		0.427629, -0.901792, 0.062482,
		34.545383, 37.702293, 30.521469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.739384, 37.928288, 30.364946>,  <34.246044, 38.333549, 30.477732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.739384, 37.928288, 30.364946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.025009, 37.719986, 30.552109>,  <34.196384, 37.595005, 30.664406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.025009, 37.719986, 30.552109>,  <33.739384, 37.928288, 30.364946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.025009, 37.719986, 30.552109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647166, -0.236086, 0.724872,
		-0.267014, -0.820414, -0.505593,
		0.714059, -0.520753, 0.467906,
		34.239227, 37.563759, 30.692480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.441273, 37.371677, 30.587011>,  <33.739384, 37.928288, 30.364946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.441273, 37.371677, 30.587011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.763885, 37.352245, 30.822685>,  <33.957455, 37.340588, 30.964090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.763885, 37.352245, 30.822685>,  <33.441273, 37.371677, 30.587011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.763885, 37.352245, 30.822685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558218, -0.390740, 0.731926,
		0.194662, -0.919218, -0.342263,
		0.806535, -0.048579, 0.589187,
		34.005848, 37.337673, 30.999441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.423981, 36.807697, 30.939543>,  <33.441273, 37.371677, 30.587011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.423981, 36.807697, 30.939543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.655045, 37.039028, 31.169966>,  <33.793682, 37.177826, 31.308220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.655045, 37.039028, 31.169966>,  <33.423981, 36.807697, 30.939543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655045, 37.039028, 31.169966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587985, -0.194702, 0.785089,
		0.566200, -0.792228, 0.227578,
		0.577660, 0.578330, 0.576059,
		33.828342, 37.212528, 31.342783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.507046, 36.515587, 31.673574>,  <33.423981, 36.807697, 30.939543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.507046, 36.515587, 31.673574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603172, 36.903053, 31.698662>,  <33.660847, 37.135532, 31.713715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603172, 36.903053, 31.698662>,  <33.507046, 36.515587, 31.673574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.603172, 36.903053, 31.698662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521639, 0.074381, 0.849918,
		0.818623, -0.236963, 0.523169,
		0.240313, 0.968667, 0.062719,
		33.675266, 37.193653, 31.717478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410122, 36.638336, 32.423119>,  <33.507046, 36.515587, 31.673574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410122, 36.638336, 32.423119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433601, 37.018688, 32.301544>,  <33.447689, 37.246899, 32.228600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433601, 37.018688, 32.301544>,  <33.410122, 36.638336, 32.423119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.433601, 37.018688, 32.301544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535835, 0.286899, 0.794084,
		0.842279, 0.116245, 0.526358,
		0.058703, 0.950882, -0.303938,
		33.451214, 37.303951, 32.210361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233379, 37.082104, 33.065609>,  <33.410122, 36.638336, 32.423119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233379, 37.082104, 33.065609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.229317, 37.372833, 32.790909>,  <33.226879, 37.547272, 32.626087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.229317, 37.372833, 32.790909>,  <33.233379, 37.082104, 33.065609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.229317, 37.372833, 32.790909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609921, 0.539730, 0.580248,
		0.792397, 0.424758, 0.437822,
		-0.010159, 0.726823, -0.686749,
		33.226269, 37.590881, 32.584885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.493534, 37.686432, 33.369301>,  <33.233379, 37.082104, 33.065609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.493534, 37.686432, 33.369301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.222298, 37.721481, 33.077404>,  <33.059555, 37.742512, 32.902267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.222298, 37.721481, 33.077404>,  <33.493534, 37.686432, 33.369301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.222298, 37.721481, 33.077404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655204, 0.377811, 0.654191,
		0.333026, 0.921727, -0.198778,
		-0.678086, 0.087623, -0.729740,
		33.018871, 37.747768, 32.858482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037189, 37.583355, 33.764450>,  <33.493534, 37.686432, 33.369301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037189, 37.583355, 33.764450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240025, 37.389587, 34.049603>,  <34.361725, 37.273327, 34.220692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240025, 37.389587, 34.049603>,  <34.037189, 37.583355, 33.764450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.240025, 37.389587, 34.049603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831321, 0.056563, -0.552907,
		0.227516, 0.873005, 0.431391,
		0.507092, -0.484420, 0.712879,
		34.392151, 37.244263, 34.263466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.642029, 38.006439, 33.997448>,  <34.037189, 37.583355, 33.764450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.642029, 38.006439, 33.997448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.710957, 37.614426, 34.037121>,  <34.752312, 37.379215, 34.060925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.710957, 37.614426, 34.037121>,  <34.642029, 38.006439, 33.997448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.710957, 37.614426, 34.037121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774681, 0.072637, -0.628166,
		0.608421, 0.185078, 0.771732,
		0.172316, -0.980036, 0.099183,
		34.762653, 37.320415, 34.066875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.364826, 37.897659, 33.959961>,  <34.642029, 38.006439, 33.997448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.364826, 37.897659, 33.959961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.241920, 37.518650, 33.924648>,  <35.168175, 37.291245, 33.903461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.241920, 37.518650, 33.924648>,  <35.364826, 37.897659, 33.959961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.241920, 37.518650, 33.924648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778267, -0.196824, -0.596289,
		0.547619, -0.251927, 0.797901,
		-0.307267, -0.947519, -0.088281,
		35.149742, 37.234394, 33.898163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911041, 37.572948, 34.226616>,  <35.364826, 37.897659, 33.959961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911041, 37.572948, 34.226616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.702190, 37.323818, 33.993561>,  <35.576878, 37.174339, 33.853729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.702190, 37.323818, 33.993561>,  <35.911041, 37.572948, 34.226616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702190, 37.323818, 33.993561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828862, -0.209633, -0.518692,
		0.200916, -0.753751, 0.625694,
		-0.522130, -0.622828, -0.582637,
		35.545551, 37.136971, 33.818771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.140461, 36.889915, 34.201004>,  <35.911041, 37.572948, 34.226616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.140461, 36.889915, 34.201004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.939442, 36.871925, 33.855652>,  <35.818829, 36.861130, 33.648441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.939442, 36.871925, 33.855652>,  <36.140461, 36.889915, 34.201004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.939442, 36.871925, 33.855652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790228, -0.428979, -0.437626,
		-0.350687, -0.902194, 0.251127,
		-0.502552, -0.044978, -0.863376,
		35.788677, 36.858433, 33.596638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393234, 36.344536, 33.843899>,  <36.140461, 36.889915, 34.201004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393234, 36.344536, 33.843899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.217941, 36.573822, 33.566952>,  <36.112766, 36.711395, 33.400784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.217941, 36.573822, 33.566952>,  <36.393234, 36.344536, 33.843899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.217941, 36.573822, 33.566952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659559, -0.318248, -0.680955,
		-0.610680, -0.755074, -0.238605,
		-0.438236, 0.573220, -0.692364,
		36.086472, 36.745789, 33.359241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538395, 35.950314, 33.133831>,  <36.393234, 36.344536, 33.843899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538395, 35.950314, 33.133831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.447533, 36.322643, 33.019314>,  <36.393017, 36.546043, 32.950603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.447533, 36.322643, 33.019314>,  <36.538395, 35.950314, 33.133831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.447533, 36.322643, 33.019314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779518, -0.002424, -0.626374,
		-0.583740, -0.365452, -0.725046,
		-0.227152, 0.930827, -0.286292,
		36.379387, 36.601891, 32.933426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381016, 35.986012, 32.422001>,  <36.538395, 35.950314, 33.133831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381016, 35.986012, 32.422001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.475060, 36.363476, 32.515152>,  <36.531487, 36.589954, 32.571045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.475060, 36.363476, 32.515152>,  <36.381016, 35.986012, 32.422001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475060, 36.363476, 32.515152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732896, -0.014737, -0.680181,
		-0.638427, 0.330591, -0.695069,
		0.235105, 0.943659, 0.232880,
		36.545589, 36.646572, 32.585014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515186, 36.289104, 31.763065>,  <36.381016, 35.986012, 32.422001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515186, 36.289104, 31.763065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.669910, 36.555637, 32.018059>,  <36.762745, 36.715557, 32.171055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.669910, 36.555637, 32.018059>,  <36.515186, 36.289104, 31.763065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.669910, 36.555637, 32.018059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740962, 0.186943, -0.645002,
		-0.548956, 0.721844, -0.421412,
		0.386811, 0.666328, 0.637483,
		36.785954, 36.755535, 32.209305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531326, 36.969799, 31.455421>,  <36.515186, 36.289104, 31.763065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.531326, 36.969799, 31.455421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.823483, 36.946186, 31.727610>,  <36.998775, 36.932018, 31.890923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.823483, 36.946186, 31.727610>,  <36.531326, 36.969799, 31.455421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.823483, 36.946186, 31.727610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653685, 0.349285, -0.671339,
		-0.198045, 0.935155, 0.293706,
		0.730393, -0.059036, 0.680471,
		37.042599, 36.928474, 31.931751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950058, 37.593685, 31.427763>,  <36.531326, 36.969799, 31.455421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950058, 37.593685, 31.427763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.209568, 37.341671, 31.598480>,  <37.365273, 37.190464, 31.700911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.209568, 37.341671, 31.598480>,  <36.950058, 37.593685, 31.427763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.209568, 37.341671, 31.598480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737289, 0.381560, -0.557509,
		0.188401, 0.676368, 0.712062,
		0.648776, -0.630031, 0.426792,
		37.404202, 37.152660, 31.726519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517471, 38.018917, 31.481848>,  <36.950058, 37.593685, 31.427763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517471, 38.018917, 31.481848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.668480, 37.653217, 31.540670>,  <37.759083, 37.433796, 31.575964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.668480, 37.653217, 31.540670>,  <37.517471, 38.018917, 31.481848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.668480, 37.653217, 31.540670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847625, 0.277239, -0.452406,
		0.372842, 0.295440, 0.879604,
		0.377519, -0.914250, 0.147056,
		37.781734, 37.378941, 31.584787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.249035, 38.073231, 31.480848>,  <37.517471, 38.018917, 31.481848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.249035, 38.073231, 31.480848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214226, 37.675766, 31.452400>,  <38.193340, 37.437286, 31.435331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214226, 37.675766, 31.452400>,  <38.249035, 38.073231, 31.480848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214226, 37.675766, 31.452400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935362, -0.056929, -0.349079,
		0.342819, -0.096901, 0.934390,
		-0.087020, -0.993665, -0.071121,
		38.188122, 37.377666, 31.431065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920368, 37.783890, 31.683378>,  <38.249035, 38.073231, 31.480848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920368, 37.783890, 31.683378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.725258, 37.537941, 31.435505>,  <38.608192, 37.390373, 31.286781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.725258, 37.537941, 31.435505>,  <38.920368, 37.783890, 31.683378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.725258, 37.537941, 31.435505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861791, -0.225918, -0.454178,
		0.139263, -0.755574, 0.640088,
		-0.487773, -0.614872, -0.619685,
		38.578926, 37.353477, 31.249599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395832, 37.308884, 31.588051>,  <38.920368, 37.783890, 31.683378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.395832, 37.308884, 31.588051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.139687, 37.241169, 31.288378>,  <38.986000, 37.200539, 31.108574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.139687, 37.241169, 31.288378>,  <39.395832, 37.308884, 31.588051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139687, 37.241169, 31.288378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754266, -0.322692, -0.571797,
		-0.144956, -0.931242, 0.334330,
		-0.640367, -0.169289, -0.749180,
		38.947575, 37.190384, 31.063623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646698, 36.697086, 31.289219>,  <39.395832, 37.308884, 31.588051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646698, 36.697086, 31.289219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.400082, 36.849457, 31.013605>,  <39.252113, 36.940880, 30.848236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.400082, 36.849457, 31.013605>,  <39.646698, 36.697086, 31.289219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.400082, 36.849457, 31.013605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641093, -0.265121, -0.720216,
		-0.457030, -0.885778, -0.080753,
		-0.616542, 0.380930, -0.689034,
		39.215118, 36.963734, 30.806894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.524223, 36.215530, 30.909410>,  <39.646698, 36.697086, 31.289219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.524223, 36.215530, 30.909410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.444637, 36.526253, 30.670420>,  <39.396885, 36.712688, 30.527025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.444637, 36.526253, 30.670420>,  <39.524223, 36.215530, 30.909410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444637, 36.526253, 30.670420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582346, -0.396638, -0.709613,
		-0.788217, -0.489127, -0.373455,
		-0.198965, 0.776809, -0.597478,
		39.384949, 36.759296, 30.491177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368404, 36.018246, 30.114296>,  <39.524223, 36.215530, 30.909410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.368404, 36.018246, 30.114296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.483936, 36.401142, 30.120811>,  <39.553253, 36.630882, 30.124722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.483936, 36.401142, 30.120811>,  <39.368404, 36.018246, 30.114296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483936, 36.401142, 30.120811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537473, -0.148044, -0.830184,
		-0.792276, 0.248534, -0.557251,
		0.288827, 0.957243, 0.016289,
		39.570583, 36.688316, 30.125698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.236435, 36.336449, 29.472601>,  <39.368404, 36.018246, 30.114296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.236435, 36.336449, 29.472601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.496288, 36.598728, 29.626507>,  <39.652199, 36.756096, 29.718849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.496288, 36.598728, 29.626507>,  <39.236435, 36.336449, 29.472601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.496288, 36.598728, 29.626507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552550, -0.059604, -0.831346,
		-0.522177, 0.752668, -0.401026,
		0.649630, 0.655697, 0.384763,
		39.691177, 36.795437, 29.741936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445141, 36.909496, 28.873909>,  <39.236435, 36.336449, 29.472601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445141, 36.909496, 28.873909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.737633, 36.899265, 29.146568>,  <39.913128, 36.893127, 29.310163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.737633, 36.899265, 29.146568>,  <39.445141, 36.909496, 28.873909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.737633, 36.899265, 29.146568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681203, -0.024655, -0.731680,
		0.035521, 0.999369, -0.000604,
		0.731233, -0.025579, 0.681649,
		39.957001, 36.891590, 29.351063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.884556, 37.330090, 28.590708>,  <39.445141, 36.909496, 28.873909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.884556, 37.330090, 28.590708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.130878, 37.146828, 28.847107>,  <40.278671, 37.036873, 29.000946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.130878, 37.146828, 28.847107>,  <39.884556, 37.330090, 28.590708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.130878, 37.146828, 28.847107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753656, 0.105284, -0.648782,
		0.229754, 0.882616, 0.410124,
		0.615805, -0.458153, 0.641000,
		40.315620, 37.009380, 29.039408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.514427, 37.828743, 28.701597>,  <39.884556, 37.330090, 28.590708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.514427, 37.828743, 28.701597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.565331, 37.433529, 28.736435>,  <40.595871, 37.196400, 28.757338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.565331, 37.433529, 28.736435>,  <40.514427, 37.828743, 28.701597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.565331, 37.433529, 28.736435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729138, 0.033659, -0.683538,
		0.672430, 0.150491, 0.724700,
		0.127259, -0.988038, 0.087095,
		40.603508, 37.137115, 28.762564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.024776, 37.742683, 28.244785>,  <40.514427, 37.828743, 28.701597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.024776, 37.742683, 28.244785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.954411, 37.365810, 28.358866>,  <40.912189, 37.139687, 28.427313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.954411, 37.365810, 28.358866>,  <41.024776, 37.742683, 28.244785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.954411, 37.365810, 28.358866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610644, -0.331683, -0.719097,
		0.772119, 0.047656, 0.633688,
		-0.175914, -0.942187, 0.285199,
		40.901638, 37.083153, 28.444426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.655209, 37.415226, 28.404415>,  <41.024776, 37.742683, 28.244785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.655209, 37.415226, 28.404415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.385750, 37.149002, 28.275892>,  <41.224075, 36.989269, 28.198778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.385750, 37.149002, 28.275892>,  <41.655209, 37.415226, 28.404415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.385750, 37.149002, 28.275892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662290, -0.350702, -0.662103,
		0.327984, -0.658820, 0.677040,
		-0.673646, -0.665556, -0.321305,
		41.183655, 36.949337, 28.179501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.138748, 36.872990, 28.265524>,  <41.655209, 37.415226, 28.404415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.138748, 36.872990, 28.265524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.796429, 36.767910, 28.087265>,  <41.591038, 36.704865, 27.980310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.796429, 36.767910, 28.087265>,  <42.138748, 36.872990, 28.265524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.796429, 36.767910, 28.087265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515746, -0.366330, -0.774473,
		0.040196, -0.892633, 0.448989,
		-0.855798, -0.262695, -0.445647,
		41.539688, 36.689102, 27.953571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.214973, 36.138340, 28.071884>,  <42.138748, 36.872990, 28.265524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.214973, 36.138340, 28.071884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.921696, 36.268295, 27.832932>,  <41.745728, 36.346268, 27.689560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.921696, 36.268295, 27.832932>,  <42.214973, 36.138340, 28.071884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.921696, 36.268295, 27.832932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473868, -0.385957, -0.791509,
		-0.487719, -0.863413, 0.129027,
		-0.733198, 0.324892, -0.597382,
		41.701736, 36.365761, 27.653717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.022362, 35.656120, 27.685688>,  <42.214973, 36.138340, 28.071884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.022362, 35.656120, 27.685688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.914616, 35.972206, 27.465506>,  <41.849968, 36.161858, 27.333395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.914616, 35.972206, 27.465506>,  <42.022362, 35.656120, 27.685688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.914616, 35.972206, 27.465506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518979, -0.362377, -0.774173,
		-0.811236, -0.494210, -0.312494,
		-0.269363, 0.790215, -0.550458,
		41.833805, 36.209270, 27.300367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.707706, 35.358082, 27.116789>,  <42.022362, 35.656120, 27.685688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.707706, 35.358082, 27.116789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.816666, 35.728092, 27.010859>,  <41.882042, 35.950096, 26.947300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.816666, 35.728092, 27.010859>,  <41.707706, 35.358082, 27.116789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.816666, 35.728092, 27.010859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395191, -0.358503, -0.845754,
		-0.877283, 0.125721, -0.463215,
		0.272394, 0.925024, -0.264825,
		41.898384, 36.005600, 26.931412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.793285, 35.220493, 26.433292>,  <41.707706, 35.358082, 27.116789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.793285, 35.220493, 26.433292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.954895, 35.584743, 26.468002>,  <42.051861, 35.803291, 26.488829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.954895, 35.584743, 26.468002>,  <41.793285, 35.220493, 26.433292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.954895, 35.584743, 26.468002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655503, -0.222050, -0.721810,
		-0.638028, 0.348510, -0.686630,
		0.404025, 0.910623, 0.086775,
		42.076103, 35.857929, 26.494036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.896034, 35.401535, 25.761747>,  <41.793285, 35.220493, 26.433292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.896034, 35.401535, 25.761747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.136616, 35.631302, 25.983847>,  <42.280964, 35.769161, 26.117107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.136616, 35.631302, 25.983847>,  <41.896034, 35.401535, 25.761747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.136616, 35.631302, 25.983847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759188, -0.194522, -0.621125,
		-0.248774, 0.795116, -0.553084,
		0.601453, 0.574414, 0.555250,
		42.317051, 35.803627, 26.150421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.287617, 35.712734, 25.262468>,  <41.896034, 35.401535, 25.761747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.287617, 35.712734, 25.262468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.497040, 35.746990, 25.601538>,  <42.622692, 35.767544, 25.804979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.497040, 35.746990, 25.601538>,  <42.287617, 35.712734, 25.262468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.497040, 35.746990, 25.601538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846204, -0.168026, -0.505673,
		0.099126, 0.982055, -0.160440,
		0.523557, 0.085640, 0.847676,
		42.654106, 35.772682, 25.855841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.760574, 36.084576, 25.106216>,  <42.287617, 35.712734, 25.262468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.760574, 36.084576, 25.106216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.901768, 35.931000, 25.447508>,  <42.986485, 35.838856, 25.652283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.901768, 35.931000, 25.447508>,  <42.760574, 36.084576, 25.106216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.901768, 35.931000, 25.447508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844615, -0.261578, -0.467121,
		0.402530, 0.885534, 0.231946,
		0.352979, -0.383936, 0.853229,
		43.007660, 35.815819, 25.703476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.488327, 36.371819, 25.140205>,  <42.760574, 36.084576, 25.106216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.488327, 36.371819, 25.140205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.443935, 36.061218, 25.388311>,  <43.417301, 35.874859, 25.537174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.443935, 36.061218, 25.388311>,  <43.488327, 36.371819, 25.140205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.443935, 36.061218, 25.388311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856532, -0.391255, -0.336560,
		0.504021, 0.493926, 0.708520,
		-0.110976, -0.776503, 0.620264,
		43.410641, 35.828266, 25.574390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.142849, 36.283348, 25.467148>,  <43.488327, 36.371819, 25.140205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.142849, 36.283348, 25.467148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.988522, 35.915081, 25.490829>,  <43.895924, 35.694118, 25.505037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.988522, 35.915081, 25.490829>,  <44.142849, 36.283348, 25.467148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.988522, 35.915081, 25.490829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867861, -0.383964, -0.315259,
		0.312982, -0.070254, 0.947157,
		-0.385823, -0.920671, 0.059203,
		43.872776, 35.638878, 25.508591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.685184, 35.770073, 25.718317>,  <44.142849, 36.283348, 25.467148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.685184, 35.770073, 25.718317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.399994, 35.562622, 25.529552>,  <44.228882, 35.438152, 25.416294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.399994, 35.562622, 25.529552>,  <44.685184, 35.770073, 25.718317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.399994, 35.562622, 25.529552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701163, -0.521215, -0.486524,
		0.006358, -0.677763, 0.735252,
		-0.712973, -0.518625, -0.471909,
		44.186104, 35.407036, 25.387980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.891636, 35.118805, 25.914316>,  <44.685184, 35.770073, 25.718317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.891636, 35.118805, 25.914316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.651993, 35.085052, 25.595833>,  <44.508205, 35.064800, 25.404743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.651993, 35.085052, 25.595833>,  <44.891636, 35.118805, 25.914316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.651993, 35.085052, 25.595833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712824, -0.509082, -0.482409,
		-0.364628, -0.856572, 0.365146,
		-0.599107, -0.084385, -0.796210,
		44.472260, 35.059738, 25.356970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.150330, 34.517323, 25.519361>,  <44.891636, 35.118805, 25.914316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.150330, 34.517323, 25.519361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.925968, 34.697758, 25.241684>,  <44.791351, 34.806019, 25.075077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.925968, 34.697758, 25.241684>,  <45.150330, 34.517323, 25.519361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.925968, 34.697758, 25.241684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594018, -0.364773, -0.716996,
		-0.576649, -0.814532, -0.063349,
		-0.560908, 0.451085, -0.694193,
		44.757694, 34.833084, 25.033426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.949100, 33.991585, 25.019560>,  <45.150330, 34.517323, 25.519361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.949100, 33.991585, 25.019560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.923973, 34.351574, 24.847000>,  <44.908897, 34.567566, 24.743464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.923973, 34.351574, 24.847000>,  <44.949100, 33.991585, 25.019560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.923973, 34.351574, 24.847000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691184, -0.272583, -0.669300,
		-0.719943, -0.340220, -0.604923,
		-0.062818, 0.899971, -0.431399,
		44.905128, 34.621567, 24.717581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.282063, 33.353977, 24.880995>,  <44.949100, 33.991585, 25.019560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.282063, 33.353977, 24.880995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.372028, 32.965073, 24.906679>,  <45.426006, 32.731731, 24.922089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.372028, 32.965073, 24.906679>,  <45.282063, 33.353977, 24.880995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.372028, 32.965073, 24.906679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756128, -0.132590, 0.640851,
		-0.614562, -0.192684, -0.764975,
		0.224910, -0.972261, 0.064209,
		45.439503, 32.673393, 24.925941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.680561, 32.998623, 24.739796>,  <45.282063, 33.353977, 24.880995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.680561, 32.998623, 24.739796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.918522, 32.788342, 24.983017>,  <45.061298, 32.662174, 25.128950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.918522, 32.788342, 24.983017>,  <44.680561, 32.998623, 24.739796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.918522, 32.788342, 24.983017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756425, -0.110292, 0.644715,
		-0.271865, -0.843488, -0.463268,
		0.594904, -0.525703, 0.608051,
		45.096992, 32.630630, 25.165432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.318676, 32.376579, 24.939434>,  <44.680561, 32.998623, 24.739796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.318676, 32.376579, 24.939434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.604034, 32.457104, 25.207922>,  <44.775249, 32.505417, 25.369015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.604034, 32.457104, 25.207922>,  <44.318676, 32.376579, 24.939434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.604034, 32.457104, 25.207922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667864, -0.094712, 0.738233,
		0.212187, -0.974938, 0.066880,
		0.713397, 0.201310, 0.671222,
		44.818054, 32.517498, 25.409288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.304161, 31.884333, 25.554325>,  <44.318676, 32.376579, 24.939434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.304161, 31.884333, 25.554325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.514599, 32.196217, 25.690136>,  <44.640862, 32.383347, 25.771622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.514599, 32.196217, 25.690136>,  <44.304161, 31.884333, 25.554325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.514599, 32.196217, 25.690136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605012, 0.062578, 0.793753,
		0.597650, -0.623006, 0.504656,
		0.526094, 0.779709, 0.339527,
		44.672428, 32.430130, 25.791994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.237457, 31.804504, 26.250763>,  <44.304161, 31.884333, 25.554325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.237457, 31.804504, 26.250763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.363476, 32.179554, 26.191965>,  <44.439087, 32.404583, 26.156687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.363476, 32.179554, 26.191965>,  <44.237457, 31.804504, 26.250763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.363476, 32.179554, 26.191965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408026, 0.273647, 0.870995,
		0.856890, -0.214427, 0.468787,
		0.315047, 0.937624, -0.146994,
		44.457989, 32.460842, 26.147867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.557690, 32.005520, 26.926813>,  <44.237457, 31.804504, 26.250763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.557690, 32.005520, 26.926813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.443985, 32.330891, 26.723824>,  <44.375763, 32.526115, 26.602030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.443985, 32.330891, 26.723824>,  <44.557690, 32.005520, 26.926813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.443985, 32.330891, 26.723824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489631, 0.331910, 0.806286,
		0.824293, 0.477668, 0.303933,
		-0.284258, 0.813430, -0.507472,
		44.358707, 32.574921, 26.571583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.646915, 32.583427, 27.372953>,  <44.557690, 32.005520, 26.926813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.646915, 32.583427, 27.372953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.399067, 32.747330, 27.105169>,  <44.250359, 32.845669, 26.944500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.399067, 32.747330, 27.105169>,  <44.646915, 32.583427, 27.372953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.399067, 32.747330, 27.105169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561963, 0.363861, 0.742834,
		0.547967, 0.836486, 0.004810,
		-0.619620, 0.409752, -0.669458,
		44.213181, 32.870255, 26.904331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.370552, 33.241035, 27.582590>,  <44.646915, 32.583427, 27.372953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.370552, 33.241035, 27.582590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.091000, 33.136951, 27.316099>,  <43.923267, 33.074501, 27.156204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.091000, 33.136951, 27.316099>,  <44.370552, 33.241035, 27.582590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.091000, 33.136951, 27.316099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709359, 0.371391, 0.599065,
		0.091546, 0.891267, -0.444142,
		-0.698877, -0.260214, -0.666228,
		43.881336, 33.058887, 27.116230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.886967, 33.748383, 27.731714>,  <44.370552, 33.241035, 27.582590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.886967, 33.748383, 27.731714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.680637, 33.497517, 27.498274>,  <43.556839, 33.346996, 27.358210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.680637, 33.497517, 27.498274>,  <43.886967, 33.748383, 27.731714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.680637, 33.497517, 27.498274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834555, 0.213979, 0.507672,
		-0.193517, 0.748916, -0.633780,
		-0.515819, -0.627167, -0.583603,
		43.525890, 33.309368, 27.323193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.464062, 34.109985, 27.389687>,  <43.886967, 33.748383, 27.731714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.464062, 34.109985, 27.389687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.281513, 33.754189, 27.380478>,  <43.171982, 33.540710, 27.374952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.281513, 33.754189, 27.380478>,  <43.464062, 34.109985, 27.389687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.281513, 33.754189, 27.380478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788258, 0.392163, 0.474191,
		-0.412760, 0.234556, -0.880121,
		-0.456375, -0.889490, -0.023021,
		43.144600, 33.487343, 27.373571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.732777, 34.197308, 27.174988>,  <43.464062, 34.109985, 27.389687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.732777, 34.197308, 27.174988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.754433, 33.841122, 27.355713>,  <42.767426, 33.627411, 27.464148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.754433, 33.841122, 27.355713>,  <42.732777, 34.197308, 27.174988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.754433, 33.841122, 27.355713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839587, 0.204340, 0.503328,
		-0.540521, -0.406586, -0.736563,
		0.054137, -0.890468, 0.451814,
		42.770672, 33.573982, 27.491257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.065575, 33.840126, 27.085953>,  <42.732777, 34.197308, 27.174988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.065575, 33.840126, 27.085953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.255871, 33.723736, 27.417978>,  <42.370049, 33.653904, 27.617193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.255871, 33.723736, 27.417978>,  <42.065575, 33.840126, 27.085953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.255871, 33.723736, 27.417978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743532, 0.371145, 0.556248,
		-0.469927, -0.881808, -0.039779,
		0.475740, -0.290973, 0.830064,
		42.398594, 33.636444, 27.666998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.612152, 33.483974, 27.493582>,  <42.065575, 33.840126, 27.085953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.612152, 33.483974, 27.493582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.880581, 33.610512, 27.761787>,  <42.041637, 33.686436, 27.922710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.880581, 33.610512, 27.761787>,  <41.612152, 33.483974, 27.493582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.880581, 33.610512, 27.761787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732092, 0.425573, 0.531911,
		-0.117085, -0.847828, 0.517183,
		0.671068, 0.316347, 0.670516,
		42.081902, 33.705418, 27.962942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.315449, 33.339634, 28.181007>,  <41.612152, 33.483974, 27.493582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.315449, 33.339634, 28.181007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.604755, 33.592445, 28.292309>,  <41.778339, 33.744133, 28.359089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.604755, 33.592445, 28.292309>,  <41.315449, 33.339634, 28.181007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.604755, 33.592445, 28.292309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475150, 0.163073, 0.864662,
		0.501113, -0.757596, 0.418252,
		0.723270, 0.632026, 0.278254,
		41.821735, 33.782055, 28.375784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.511448, 33.181221, 28.908363>,  <41.315449, 33.339634, 28.181007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.511448, 33.181221, 28.908363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.614307, 33.561283, 28.837839>,  <41.676025, 33.789318, 28.795525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.614307, 33.561283, 28.837839>,  <41.511448, 33.181221, 28.908363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.614307, 33.561283, 28.837839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435614, 0.276828, 0.856509,
		0.862620, -0.143451, 0.485086,
		0.257153, 0.950152, -0.176308,
		41.691452, 33.846329, 28.784946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.839958, 33.395828, 29.536930>,  <41.511448, 33.181221, 28.908363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.839958, 33.395828, 29.536930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.730148, 33.719002, 29.328363>,  <41.664261, 33.912907, 29.203224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.730148, 33.719002, 29.328363>,  <41.839958, 33.395828, 29.536930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.730148, 33.719002, 29.328363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424908, 0.384510, 0.819515,
		0.862606, 0.446532, 0.237741,
		-0.274526, 0.807936, -0.521415,
		41.647789, 33.961384, 29.171938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.925350, 33.901722, 30.018726>,  <41.839958, 33.395828, 29.536930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.925350, 33.901722, 30.018726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.671467, 34.054230, 29.749868>,  <41.519138, 34.145737, 29.588552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.671467, 34.054230, 29.749868>,  <41.925350, 33.901722, 30.018726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.671467, 34.054230, 29.749868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540418, 0.402724, 0.738757,
		0.552358, 0.832132, -0.049564,
		-0.634704, 0.381273, -0.672147,
		41.481056, 34.168613, 29.548223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.460270, 34.265759, 30.514879>,  <41.925350, 33.901722, 30.018726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.460270, 34.265759, 30.514879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.289906, 34.354301, 30.163971>,  <41.187687, 34.407425, 29.953426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.289906, 34.354301, 30.163971>,  <41.460270, 34.265759, 30.514879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.289906, 34.354301, 30.163971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851546, 0.229571, 0.471346,
		0.305730, 0.947787, 0.090716,
		-0.425910, 0.221353, -0.877271,
		41.162132, 34.420708, 29.900789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.121330, 34.839127, 30.588814>,  <41.460270, 34.265759, 30.514879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.121330, 34.839127, 30.588814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.932827, 34.629223, 30.305252>,  <40.819725, 34.503281, 30.135115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.932827, 34.629223, 30.305252>,  <41.121330, 34.839127, 30.588814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.932827, 34.629223, 30.305252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846489, 0.043338, 0.530639,
		-0.247733, 0.850150, -0.464623,
		-0.471258, -0.524755, -0.708906,
		40.791451, 34.471798, 30.092581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.555061, 35.275280, 30.400438>,  <41.121330, 34.839127, 30.588814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.555061, 35.275280, 30.400438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.459412, 34.899910, 30.300692>,  <40.402020, 34.674690, 30.240843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.459412, 34.899910, 30.300692>,  <40.555061, 35.275280, 30.400438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.459412, 34.899910, 30.300692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891322, 0.110269, 0.439757,
		-0.385180, 0.327424, -0.862804,
		-0.239127, -0.938421, -0.249367,
		40.387672, 34.618385, 30.225882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.797810, 35.304623, 30.183077>,  <40.555061, 35.275280, 30.400438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.797810, 35.304623, 30.183077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.861721, 34.915173, 30.248220>,  <39.900066, 34.681503, 30.287306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.861721, 34.915173, 30.248220>,  <39.797810, 35.304623, 30.183077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.861721, 34.915173, 30.248220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856619, -0.054758, 0.513036,
		-0.490588, -0.221477, -0.842776,
		0.159774, -0.973627, 0.162858,
		39.909653, 34.623085, 30.297077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162018, 34.959602, 29.870586>,  <39.797810, 35.304623, 30.183077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.162018, 34.959602, 29.870586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.317009, 34.693264, 30.125618>,  <39.410004, 34.533459, 30.278637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.317009, 34.693264, 30.125618>,  <39.162018, 34.959602, 29.870586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.317009, 34.693264, 30.125618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873489, -0.044047, 0.484848,
		-0.294752, -0.744785, -0.598678,
		0.387477, -0.665849, 0.637579,
		39.433250, 34.493511, 30.316893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.715698, 34.358578, 29.902340>,  <39.162018, 34.959602, 29.870586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.715698, 34.358578, 29.902340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.921799, 34.363842, 30.245115>,  <39.045460, 34.367001, 30.450781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.921799, 34.363842, 30.245115>,  <38.715698, 34.358578, 29.902340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.921799, 34.363842, 30.245115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857001, -0.001797, 0.515311,
		0.008317, -0.999912, 0.010346,
		0.515247, 0.013153, 0.856941,
		39.076374, 34.367790, 30.502197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234051, 34.004597, 30.451431>,  <38.715698, 34.358578, 29.902340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234051, 34.004597, 30.451431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529118, 34.176395, 30.659809>,  <38.706158, 34.279472, 30.784836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529118, 34.176395, 30.659809>,  <38.234051, 34.004597, 30.451431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529118, 34.176395, 30.659809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580601, 0.009723, 0.814130,
		0.344598, -0.903018, 0.256536,
		0.737669, 0.429493, 0.520942,
		38.750420, 34.305244, 30.816092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133045, 33.714302, 31.159485>,  <38.234051, 34.004597, 30.451431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.133045, 33.714302, 31.159485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.363178, 34.035416, 31.222141>,  <38.501259, 34.228085, 31.259735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.363178, 34.035416, 31.222141>,  <38.133045, 33.714302, 31.159485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363178, 34.035416, 31.222141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398707, 0.108042, 0.910692,
		0.714164, -0.586401, 0.382235,
		0.575328, 0.802783, 0.156643,
		38.535778, 34.276249, 31.269135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309299, 33.720692, 31.817791>,  <38.133045, 33.714302, 31.159485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.309299, 33.720692, 31.817791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.393898, 34.095989, 31.708265>,  <38.444656, 34.321167, 31.642550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.393898, 34.095989, 31.708265>,  <38.309299, 33.720692, 31.817791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.393898, 34.095989, 31.708265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200650, 0.315865, 0.927345,
		0.956560, -0.141193, 0.255063,
		0.211500, 0.938240, -0.273814,
		38.457348, 34.377460, 31.626122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926586, 33.886681, 32.161610>,  <38.309299, 33.720692, 31.817791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.926586, 33.886681, 32.161610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.699699, 34.202442, 32.067719>,  <38.563568, 34.391899, 32.011383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.699699, 34.202442, 32.067719>,  <38.926586, 33.886681, 32.161610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.699699, 34.202442, 32.067719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153182, 0.178915, 0.971867,
		0.809195, 0.587219, 0.019438,
		-0.567221, 0.789407, -0.234729,
		38.529533, 34.439262, 31.997299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196999, 34.435390, 32.680843>,  <38.926586, 33.886681, 32.161610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.196999, 34.435390, 32.680843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.857635, 34.585655, 32.531670>,  <38.654018, 34.675816, 32.442165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.857635, 34.585655, 32.531670>,  <39.196999, 34.435390, 32.680843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.857635, 34.585655, 32.531670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167210, 0.478261, 0.862152,
		0.502239, 0.793816, -0.342946,
		-0.848408, 0.375663, -0.372936,
		38.603111, 34.698353, 32.419788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.265087, 35.115814, 32.917603>,  <39.196999, 34.435390, 32.680843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.265087, 35.115814, 32.917603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.887947, 35.003567, 32.845734>,  <38.661663, 34.936218, 32.802612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.887947, 35.003567, 32.845734>,  <39.265087, 35.115814, 32.917603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.887947, 35.003567, 32.845734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290154, 0.426322, 0.856773,
		-0.163833, 0.859942, -0.483382,
		-0.942852, -0.280623, -0.179670,
		38.605091, 34.919380, 32.791832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.825451, 35.629211, 33.012737>,  <39.265087, 35.115814, 32.917603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.825451, 35.629211, 33.012737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.584354, 35.318104, 33.084045>,  <38.439697, 35.131439, 33.126831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.584354, 35.318104, 33.084045>,  <38.825451, 35.629211, 33.012737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584354, 35.318104, 33.084045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179429, 0.349800, 0.919481,
		-0.777500, 0.522224, -0.350394,
		-0.602743, -0.777767, 0.178268,
		38.403530, 35.084774, 33.137527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.369396, 35.900761, 33.382954>,  <38.825451, 35.629211, 33.012737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.369396, 35.900761, 33.382954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.282288, 35.519489, 33.466881>,  <38.230022, 35.290726, 33.517235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.282288, 35.519489, 33.466881>,  <38.369396, 35.900761, 33.382954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.282288, 35.519489, 33.466881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020492, 0.219392, 0.975422,
		-0.975785, 0.208117, -0.067309,
		-0.217769, -0.953181, 0.209815,
		38.216957, 35.233536, 33.529827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709961, 35.889053, 33.740894>,  <38.369396, 35.900761, 33.382954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.709961, 35.889053, 33.740894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.914532, 35.559479, 33.838516>,  <38.037273, 35.361732, 33.897091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.914532, 35.559479, 33.838516>,  <37.709961, 35.889053, 33.740894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914532, 35.559479, 33.838516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222732, 0.147201, 0.963702,
		-0.829957, -0.547226, -0.108234,
		0.511431, -0.823939, 0.244056,
		38.067963, 35.312298, 33.911732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.233856, 35.610157, 34.234715>,  <37.709961, 35.889053, 33.740894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.233856, 35.610157, 34.234715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.570881, 35.400089, 34.282536>,  <37.773094, 35.274048, 34.311226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.570881, 35.400089, 34.282536>,  <37.233856, 35.610157, 34.234715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570881, 35.400089, 34.282536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248671, -0.182409, 0.951257,
		-0.477767, -0.831217, -0.284285,
		0.842557, -0.525172, 0.119550,
		37.823647, 35.242538, 34.318401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056183, 34.979633, 34.578453>,  <37.233856, 35.610157, 34.234715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056183, 34.979633, 34.578453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.435188, 35.056572, 34.680603>,  <37.662594, 35.102734, 34.741894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.435188, 35.056572, 34.680603>,  <37.056183, 34.979633, 34.578453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435188, 35.056572, 34.680603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258555, -0.008816, 0.965957,
		0.188047, -0.981288, 0.041378,
		0.947517, 0.192343, 0.255375,
		37.719444, 35.114273, 34.757214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068855, 34.701973, 35.210728>,  <37.056183, 34.979633, 34.578453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.068855, 34.701973, 35.210728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.435169, 34.862625, 35.208668>,  <37.654957, 34.959019, 35.207432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.435169, 34.862625, 35.208668>,  <37.068855, 34.701973, 35.210728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435169, 34.862625, 35.208668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005006, 0.024237, 0.999694,
		0.401635, -0.915480, 0.024207,
		0.915786, 0.401633, -0.005151,
		37.709904, 34.983116, 35.207123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517395, 34.255058, 35.484016>,  <37.068855, 34.701973, 35.210728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517395, 34.255058, 35.484016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.624172, 34.636417, 35.540276>,  <37.688240, 34.865231, 35.574032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.624172, 34.636417, 35.540276>,  <37.517395, 34.255058, 35.484016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.624172, 34.636417, 35.540276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183928, -0.092856, 0.978544,
		0.945998, -0.287084, 0.150568,
		0.266943, 0.953394, 0.140644,
		37.704254, 34.922436, 35.582470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.067905, 34.271511, 35.963833>,  <37.517395, 34.255058, 35.484016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.067905, 34.271511, 35.963833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.928864, 34.644802, 36.000183>,  <37.845436, 34.868778, 36.021992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.928864, 34.644802, 36.000183>,  <38.067905, 34.271511, 35.963833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928864, 34.644802, 36.000183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281283, -0.196245, 0.939344,
		0.894455, 0.300960, 0.330716,
		-0.347607, 0.933226, 0.090877,
		37.824581, 34.924770, 36.027447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432915, 34.597382, 36.577259>,  <38.067905, 34.271511, 35.963833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.432915, 34.597382, 36.577259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.095314, 34.807449, 36.533695>,  <37.892754, 34.933491, 36.507557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.095314, 34.807449, 36.533695>,  <38.432915, 34.597382, 36.577259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.095314, 34.807449, 36.533695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113113, 0.024208, 0.993287,
		0.524276, 0.850656, 0.038971,
		-0.844002, 0.525165, -0.108911,
		37.842113, 34.965000, 36.501022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.462811, 35.107693, 36.992443>,  <38.432915, 34.597382, 36.577259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.462811, 35.107693, 36.992443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070885, 35.054726, 36.932537>,  <37.835728, 35.022945, 36.896595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070885, 35.054726, 36.932537>,  <38.462811, 35.107693, 36.992443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070885, 35.054726, 36.932537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128421, -0.157206, 0.979181,
		-0.153203, 0.978648, 0.137028,
		-0.979815, -0.132416, -0.149763,
		37.776939, 35.014999, 36.887608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226299, 35.431358, 37.567444>,  <38.462811, 35.107693, 36.992443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226299, 35.431358, 37.567444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.910198, 35.230621, 37.426785>,  <37.720535, 35.110180, 37.342388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.910198, 35.230621, 37.426785>,  <38.226299, 35.431358, 37.567444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.910198, 35.230621, 37.426785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189558, -0.345503, 0.919073,
		-0.582722, 0.792959, 0.177907,
		-0.790255, -0.501841, -0.351644,
		37.673122, 35.080070, 37.321293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686104, 35.626583, 37.975071>,  <38.226299, 35.431358, 37.567444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.686104, 35.626583, 37.975071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.633083, 35.255581, 37.835262>,  <37.601273, 35.032982, 37.751377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.633083, 35.255581, 37.835262>,  <37.686104, 35.626583, 37.975071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633083, 35.255581, 37.835262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123252, -0.334476, 0.934310,
		-0.983484, 0.166920, -0.069983,
		-0.132547, -0.927504, -0.349525,
		37.593319, 34.977329, 37.730404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.003536, 35.382587, 38.144112>,  <37.686104, 35.626583, 37.975071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.003536, 35.382587, 38.144112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.265579, 35.081139, 38.122623>,  <37.422806, 34.900269, 38.109730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.265579, 35.081139, 38.122623>,  <37.003536, 35.382587, 38.144112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265579, 35.081139, 38.122623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259464, -0.291178, 0.920811,
		-0.709590, -0.589289, -0.386291,
		0.655104, -0.753627, -0.053718,
		37.462109, 34.855049, 38.106506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745857, 34.983543, 38.729942>,  <37.003536, 35.382587, 38.144112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745857, 34.983543, 38.729942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.115978, 34.855659, 38.648354>,  <37.338051, 34.778931, 38.599400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.115978, 34.855659, 38.648354>,  <36.745857, 34.983543, 38.729942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.115978, 34.855659, 38.648354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034260, -0.465193, 0.884546,
		-0.377681, -0.825460, -0.419490,
		0.925301, -0.319705, -0.203975,
		37.393570, 34.759747, 38.587162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788624, 34.353497, 39.029732>,  <36.745857, 34.983543, 38.729942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788624, 34.353497, 39.029732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.170811, 34.443268, 38.953083>,  <37.400124, 34.497131, 38.907093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.170811, 34.443268, 38.953083>,  <36.788624, 34.353497, 39.029732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170811, 34.443268, 38.953083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255554, -0.304497, 0.917591,
		0.147589, -0.925695, -0.348290,
		0.955463, 0.224433, -0.191624,
		37.457451, 34.510597, 38.895596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114510, 33.818470, 39.269642>,  <36.788624, 34.353497, 39.029732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.114510, 33.818470, 39.269642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.399364, 34.098969, 39.256283>,  <37.570278, 34.267269, 39.248268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.399364, 34.098969, 39.256283>,  <37.114510, 33.818470, 39.269642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.399364, 34.098969, 39.256283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327137, -0.289365, 0.899583,
		0.621167, -0.651549, -0.435471,
		0.712133, 0.701250, -0.033402,
		37.613003, 34.309345, 39.246262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589256, 33.448879, 39.591152>,  <37.114510, 33.818470, 39.269642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589256, 33.448879, 39.591152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.719032, 33.826916, 39.606838>,  <37.796898, 34.053738, 39.616249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.719032, 33.826916, 39.606838>,  <37.589256, 33.448879, 39.591152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.719032, 33.826916, 39.606838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399998, -0.174646, 0.899722,
		0.857170, -0.276219, -0.434698,
		0.324439, 0.945094, 0.039214,
		37.816364, 34.110443, 39.618603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282417, 33.439789, 39.839745>,  <37.589256, 33.448879, 39.591152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282417, 33.439789, 39.839745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.115566, 33.794518, 39.919300>,  <38.015457, 34.007355, 39.967033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.115566, 33.794518, 39.919300>,  <38.282417, 33.439789, 39.839745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.115566, 33.794518, 39.919300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208845, -0.119448, 0.970627,
		0.884529, 0.446408, -0.135383,
		-0.417125, 0.886821, 0.198885,
		37.990429, 34.060562, 39.978966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.729633, 33.801941, 40.337524>,  <38.282417, 33.439789, 39.839745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.729633, 33.801941, 40.337524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.370518, 33.976765, 40.359280>,  <38.155048, 34.081657, 40.372334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.370518, 33.976765, 40.359280>,  <38.729633, 33.801941, 40.337524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370518, 33.976765, 40.359280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090686, 0.062594, 0.993910,
		0.430989, 0.897254, -0.095831,
		-0.897788, 0.437055, 0.054391,
		38.101181, 34.107880, 40.375595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797577, 34.363045, 40.825878>,  <38.729633, 33.801941, 40.337524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.797577, 34.363045, 40.825878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.417065, 34.239773, 40.822033>,  <38.188759, 34.165810, 40.819725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.417065, 34.239773, 40.822033>,  <38.797577, 34.363045, 40.825878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.417065, 34.239773, 40.822033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033091, -0.133030, 0.990560,
		-0.306545, 0.941982, 0.136747,
		-0.951281, -0.308176, -0.009609,
		38.131680, 34.147320, 40.819149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489479, 34.695202, 41.466099>,  <38.797577, 34.363045, 40.825878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489479, 34.695202, 41.466099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219761, 34.419003, 41.361382>,  <38.057930, 34.253284, 41.298550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219761, 34.419003, 41.361382>,  <38.489479, 34.695202, 41.466099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219761, 34.419003, 41.361382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300169, -0.067619, 0.951486,
		-0.674703, 0.720166, -0.161671,
		-0.674296, -0.690499, -0.261794,
		38.017471, 34.211853, 41.282845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.970058, 34.810589, 42.038212>,  <38.489479, 34.695202, 41.466099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.970058, 34.810589, 42.038212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.839027, 34.480286, 41.854557>,  <37.760406, 34.282104, 41.744362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.839027, 34.480286, 41.854557>,  <37.970058, 34.810589, 42.038212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839027, 34.480286, 41.854557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346678, -0.347007, 0.871436,
		-0.878922, 0.444640, -0.172600,
		-0.327581, -0.825761, -0.459139,
		37.740753, 34.232555, 41.716816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157017, 34.743832, 42.058655>,  <37.970058, 34.810589, 42.038212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157017, 34.743832, 42.058655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.313835, 34.379242, 42.008823>,  <37.407925, 34.160488, 41.978924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.313835, 34.379242, 42.008823>,  <37.157017, 34.743832, 42.058655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.313835, 34.379242, 42.008823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447544, -0.307284, 0.839810,
		-0.803744, -0.273489, -0.528393,
		0.392046, -0.911471, -0.124579,
		37.431450, 34.105801, 41.971451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519249, 34.220051, 41.994892>,  <37.157017, 34.743832, 42.058655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519249, 34.220051, 41.994892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.848755, 34.042347, 42.135769>,  <37.046459, 33.935726, 42.220295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.848755, 34.042347, 42.135769>,  <36.519249, 34.220051, 41.994892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.848755, 34.042347, 42.135769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467005, -0.179549, 0.865834,
		-0.321421, -0.877721, -0.355379,
		0.823768, -0.444262, 0.352190,
		37.095886, 33.909069, 42.241425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.349258, 33.538158, 42.370922>,  <36.519249, 34.220051, 41.994892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.349258, 33.538158, 42.370922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.681755, 33.700172, 42.523228>,  <36.881252, 33.797382, 42.614609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.681755, 33.700172, 42.523228>,  <36.349258, 33.538158, 42.370922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681755, 33.700172, 42.523228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323396, -0.204774, 0.923841,
		0.452162, -0.891073, -0.039229,
		0.831243, 0.405039, 0.380760,
		36.931129, 33.821686, 42.637455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.535450, 33.104633, 42.829361>,  <36.349258, 33.538158, 42.370922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.535450, 33.104633, 42.829361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.717354, 33.441700, 42.944668>,  <36.826496, 33.643940, 43.013851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.717354, 33.441700, 42.944668>,  <36.535450, 33.104633, 42.829361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717354, 33.441700, 42.944668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197164, -0.220391, 0.955277,
		0.868515, -0.491260, 0.065919,
		0.454761, 0.842670, 0.288271,
		36.853783, 33.694500, 43.031151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.146660, 32.993038, 43.184074>,  <36.535450, 33.104633, 42.829361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.146660, 32.993038, 43.184074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.022362, 33.346962, 43.322952>,  <36.947781, 33.559319, 43.406281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.022362, 33.346962, 43.322952>,  <37.146660, 32.993038, 43.184074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.022362, 33.346962, 43.322952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049332, -0.349772, 0.935535,
		0.949211, 0.307844, 0.065042,
		-0.310748, 0.884812, 0.347194,
		36.929138, 33.612404, 43.427109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670792, 33.148945, 43.714497>,  <37.146660, 32.993038, 43.184074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.670792, 33.148945, 43.714497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.346733, 33.369183, 43.795002>,  <37.152298, 33.501324, 43.843307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.346733, 33.369183, 43.795002>,  <37.670792, 33.148945, 43.714497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.346733, 33.369183, 43.795002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066511, -0.427435, 0.901596,
		0.582442, 0.717039, 0.382905,
		-0.810147, 0.550595, 0.201265,
		37.103687, 33.534363, 43.855381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788212, 33.283669, 44.395054>,  <37.670792, 33.148945, 43.714497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.788212, 33.283669, 44.395054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.405563, 33.376835, 44.325058>,  <37.175972, 33.432735, 44.283062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.405563, 33.376835, 44.325058>,  <37.788212, 33.283669, 44.395054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405563, 33.376835, 44.325058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219466, -0.181164, 0.958652,
		0.191580, 0.955474, 0.224422,
		-0.956625, 0.232912, -0.174987,
		37.118576, 33.446709, 44.272560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592697, 33.774670, 44.912922>,  <37.788212, 33.283669, 44.395054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592697, 33.774670, 44.912922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.241554, 33.623676, 44.795021>,  <37.030869, 33.533081, 44.724281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.241554, 33.623676, 44.795021>,  <37.592697, 33.774670, 44.912922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.241554, 33.623676, 44.795021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234562, -0.197695, 0.951786,
		-0.417552, 0.904668, 0.085005,
		-0.877856, -0.377482, -0.294749,
		36.978199, 33.510433, 44.706596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120926, 34.151783, 45.328590>,  <37.592697, 33.774670, 44.912922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.120926, 34.151783, 45.328590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.972008, 33.781429, 45.302891>,  <36.882656, 33.559216, 45.287472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.972008, 33.781429, 45.302891>,  <37.120926, 34.151783, 45.328590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972008, 33.781429, 45.302891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141001, -0.124846, 0.982106,
		-0.917342, 0.356573, 0.177031,
		-0.372294, -0.925888, -0.064249,
		36.860321, 33.503662, 45.283615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320786, 34.158848, 46.089622>,  <37.120926, 34.151783, 45.328590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.320786, 34.158848, 46.089622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.627998, 34.107357, 46.340557>,  <37.812328, 34.076462, 46.491119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.627998, 34.107357, 46.340557>,  <37.320786, 34.158848, 46.089622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627998, 34.107357, 46.340557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243457, 0.964732, -0.100107,
		-0.592326, 0.229616, 0.772286,
		0.768035, -0.128723, 0.627338,
		37.858410, 34.068741, 46.528759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644520, 33.561996, 45.975376>,  <37.320786, 34.158848, 46.089622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644520, 33.561996, 45.975376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347664, 33.363792, 46.155907>,  <37.169548, 33.244869, 46.264225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347664, 33.363792, 46.155907>,  <37.644520, 33.561996, 45.975376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347664, 33.363792, 46.155907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402247, -0.209339, -0.891277,
		0.536115, -0.843000, -0.043957,
		-0.742144, -0.495508, 0.451324,
		37.125019, 33.215141, 46.291306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652431, 32.746803, 45.845303>,  <37.644520, 33.561996, 45.975376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652431, 32.746803, 45.845303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.287014, 32.890339, 45.921906>,  <37.067764, 32.976460, 45.967865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.287014, 32.890339, 45.921906>,  <37.652431, 32.746803, 45.845303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287014, 32.890339, 45.921906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206729, -0.004152, -0.978390,
		-0.350287, -0.933391, 0.077975,
		-0.913544, 0.358836, 0.191505,
		37.012951, 32.997990, 45.979359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232590, 32.488323, 45.421349>,  <37.652431, 32.746803, 45.845303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232590, 32.488323, 45.421349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.948383, 32.750683, 45.523300>,  <36.777859, 32.908100, 45.584469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.948383, 32.750683, 45.523300>,  <37.232590, 32.488323, 45.421349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948383, 32.750683, 45.523300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229937, 0.125915, -0.965025,
		-0.665052, -0.744273, 0.061351,
		-0.710517, 0.655899, 0.254876,
		36.735229, 32.947453, 45.599762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539864, 32.245510, 45.196075>,  <37.232590, 32.488323, 45.421349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539864, 32.245510, 45.196075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.593956, 32.641315, 45.216347>,  <36.626411, 32.878799, 45.228508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.593956, 32.641315, 45.216347>,  <36.539864, 32.245510, 45.196075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.593956, 32.641315, 45.216347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140720, 0.069812, -0.987585,
		-0.980770, 0.126420, 0.148685,
		0.135231, 0.989517, 0.050680,
		36.634525, 32.938171, 45.231552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381737, 32.354755, 44.569546>,  <36.539864, 32.245510, 45.196075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381737, 32.354755, 44.569546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.462994, 32.714172, 44.725159>,  <36.511749, 32.929825, 44.818527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.462994, 32.714172, 44.725159>,  <36.381737, 32.354755, 44.569546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.462994, 32.714172, 44.725159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079405, 0.380893, -0.921203,
		-0.975924, 0.218029, 0.006027,
		0.203145, 0.898546, 0.389035,
		36.523937, 32.983734, 44.841869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966167, 32.923588, 44.165943>,  <36.381737, 32.354755, 44.569546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.966167, 32.923588, 44.165943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.286667, 33.087265, 44.340557>,  <36.478966, 33.185471, 44.445328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.286667, 33.087265, 44.340557>,  <35.966167, 32.923588, 44.165943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.286667, 33.087265, 44.340557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196076, 0.509734, -0.837691,
		-0.565299, 0.756790, 0.328188,
		0.801244, 0.409196, 0.436540,
		36.527039, 33.210022, 44.471519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841076, 33.679840, 44.150513>,  <35.966167, 32.923588, 44.165943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841076, 33.679840, 44.150513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.233273, 33.602528, 44.164783>,  <36.468590, 33.556141, 44.173347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.233273, 33.602528, 44.164783>,  <35.841076, 33.679840, 44.150513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.233273, 33.602528, 44.164783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137461, 0.544577, -0.827370,
		0.140487, 0.816136, 0.560523,
		0.980494, -0.193284, 0.035681,
		36.527420, 33.544544, 44.175488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177830, 34.321468, 44.130634>,  <35.841076, 33.679840, 44.150513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177830, 34.321468, 44.130634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.449467, 34.050659, 44.017170>,  <36.612450, 33.888172, 43.949093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.449467, 34.050659, 44.017170>,  <36.177830, 34.321468, 44.130634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449467, 34.050659, 44.017170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189176, 0.534798, -0.823531,
		0.709255, 0.505594, 0.491256,
		0.679095, -0.677028, -0.283662,
		36.653194, 33.847549, 43.932072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.798504, 34.706928, 44.012230>,  <36.177830, 34.321468, 44.130634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.798504, 34.706928, 44.012230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.819839, 34.375957, 43.788616>,  <36.832642, 34.177376, 43.654449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.819839, 34.375957, 43.788616>,  <36.798504, 34.706928, 44.012230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.819839, 34.375957, 43.788616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349497, 0.539888, -0.765750,
		0.935418, -0.154536, 0.317982,
		0.053339, -0.827430, -0.559030,
		36.835842, 34.127728, 43.620907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303757, 34.853226, 43.470894>,  <36.798504, 34.706928, 44.012230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303757, 34.853226, 43.470894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.197010, 34.491966, 43.336372>,  <37.132961, 34.275211, 43.255657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.197010, 34.491966, 43.336372>,  <37.303757, 34.853226, 43.470894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197010, 34.491966, 43.336372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501611, 0.167801, -0.848663,
		0.822904, -0.395171, 0.408251,
		-0.266862, -0.903152, -0.336306,
		37.116951, 34.221020, 43.235481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.897465, 34.527458, 43.131729>,  <37.303757, 34.853226, 43.470894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.897465, 34.527458, 43.131729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.600372, 34.303646, 42.984612>,  <37.422115, 34.169357, 42.896343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.600372, 34.303646, 42.984612>,  <37.897465, 34.527458, 43.131729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600372, 34.303646, 42.984612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448408, -0.007714, -0.893796,
		0.497273, -0.828771, 0.256629,
		-0.742731, -0.559535, -0.367792,
		37.377552, 34.135784, 42.874275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232204, 33.874191, 42.818764>,  <37.897465, 34.527458, 43.131729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.232204, 33.874191, 42.818764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.836025, 33.822094, 42.800636>,  <37.598320, 33.790836, 42.789761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.836025, 33.822094, 42.800636>,  <38.232204, 33.874191, 42.818764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.836025, 33.822094, 42.800636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026209, 0.144876, -0.989103,
		0.135370, -0.980843, -0.140079,
		-0.990448, -0.130223, -0.045318,
		37.538891, 33.783024, 42.787041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.126152, 33.185612, 42.509712>,  <38.232204, 33.874191, 42.818764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.126152, 33.185612, 42.509712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.803486, 33.414425, 42.450283>,  <37.609886, 33.551712, 42.414627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.803486, 33.414425, 42.450283>,  <38.126152, 33.185612, 42.509712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803486, 33.414425, 42.450283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216538, 0.052158, -0.974880,
		-0.549911, -0.818573, -0.165940,
		-0.806666, 0.572029, -0.148569,
		37.561485, 33.586033, 42.405712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842934, 32.961346, 41.851303>,  <38.126152, 33.185612, 42.509712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842934, 32.961346, 41.851303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.759960, 33.341270, 41.944962>,  <37.710175, 33.569225, 42.001156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.759960, 33.341270, 41.944962>,  <37.842934, 32.961346, 41.851303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.759960, 33.341270, 41.944962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224930, 0.279253, -0.933501,
		-0.952038, -0.140975, -0.271568,
		-0.207436, 0.949813, 0.234150,
		37.697731, 33.626213, 42.015205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391464, 33.045937, 41.293163>,  <37.842934, 32.961346, 41.851303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.391464, 33.045937, 41.293163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.517075, 33.400528, 41.429127>,  <37.592442, 33.613281, 41.510704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.517075, 33.400528, 41.429127>,  <37.391464, 33.045937, 41.293163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.517075, 33.400528, 41.429127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143830, 0.309470, -0.939968,
		-0.938455, 0.344068, -0.030320,
		0.314030, 0.886479, 0.339912,
		37.611282, 33.666473, 41.531101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016190, 33.507210, 40.899662>,  <37.391464, 33.045937, 41.293163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016190, 33.507210, 40.899662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.334286, 33.704456, 41.040764>,  <37.525143, 33.822803, 41.125423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.334286, 33.704456, 41.040764>,  <37.016190, 33.507210, 40.899662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334286, 33.704456, 41.040764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142582, 0.413394, -0.899320,
		-0.589294, 0.765470, 0.258437,
		0.795238, 0.493115, 0.352752,
		37.572857, 33.852390, 41.146591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.848747, 34.230278, 40.987705>,  <37.016190, 33.507210, 40.899662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.848747, 34.230278, 40.987705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.235569, 34.165218, 40.909363>,  <37.467663, 34.126183, 40.862358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.235569, 34.165218, 40.909363>,  <36.848747, 34.230278, 40.987705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.235569, 34.165218, 40.909363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131526, 0.339518, -0.931359,
		0.217981, 0.926431, 0.306938,
		0.967050, -0.162648, -0.195858,
		37.525684, 34.116425, 40.850605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.944782, 34.636822, 40.388382>,  <36.848747, 34.230278, 40.987705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.944782, 34.636822, 40.388382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.308445, 34.470490, 40.397541>,  <37.526642, 34.370689, 40.403038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.308445, 34.470490, 40.397541>,  <36.944782, 34.636822, 40.388382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308445, 34.470490, 40.397541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195317, 0.377167, -0.905316,
		0.367823, 0.827543, 0.424121,
		0.909152, -0.415834, 0.022902,
		37.581192, 34.345737, 40.404411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365089, 35.171318, 40.176411>,  <36.944782, 34.636822, 40.388382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.365089, 35.171318, 40.176411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.539165, 34.818069, 40.106319>,  <37.643612, 34.606121, 40.064266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.539165, 34.818069, 40.106319>,  <37.365089, 35.171318, 40.176411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.539165, 34.818069, 40.106319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088572, 0.235676, -0.967787,
		0.895969, 0.405656, 0.180785,
		0.435195, -0.883120, -0.175228,
		37.669724, 34.553135, 40.053749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881874, 35.439976, 39.669640>,  <37.365089, 35.171318, 40.176411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.881874, 35.439976, 39.669640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.910362, 35.044003, 39.620720>,  <37.927456, 34.806419, 39.591370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.910362, 35.044003, 39.620720>,  <37.881874, 35.439976, 39.669640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.910362, 35.044003, 39.620720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174570, 0.133085, -0.975609,
		0.982066, 0.048132, 0.182291,
		0.071218, -0.989935, -0.122295,
		37.931728, 34.747021, 39.584030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.460400, 35.302689, 39.277805>,  <37.881874, 35.439976, 39.669640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.460400, 35.302689, 39.277805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.224293, 34.981796, 39.241997>,  <38.082630, 34.789261, 39.220512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.224293, 34.981796, 39.241997>,  <38.460400, 35.302689, 39.277805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.224293, 34.981796, 39.241997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173977, 0.234726, -0.956366,
		0.788237, -0.548937, -0.278120,
		-0.590266, -0.802230, -0.089518,
		38.047215, 34.741127, 39.215141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672649, 34.904850, 38.764168>,  <38.460400, 35.302689, 39.277805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.672649, 34.904850, 38.764168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.281963, 34.820934, 38.782101>,  <38.047550, 34.770584, 38.792862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.281963, 34.820934, 38.782101>,  <38.672649, 34.904850, 38.764168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.281963, 34.820934, 38.782101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059016, 0.061831, -0.996340,
		0.206253, -0.975789, -0.072773,
		-0.976717, -0.209793, 0.044834,
		37.988949, 34.757996, 38.795551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565636, 34.351978, 38.402016>,  <38.672649, 34.904850, 38.764168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.565636, 34.351978, 38.402016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.218170, 34.550072, 38.407265>,  <38.009693, 34.668926, 38.410412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.218170, 34.550072, 38.407265>,  <38.565636, 34.351978, 38.402016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.218170, 34.550072, 38.407265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044969, -0.052447, -0.997611,
		-0.493363, -0.867175, 0.067829,
		-0.868660, 0.495234, 0.013120,
		37.957573, 34.698643, 38.411201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412277, 34.396900, 38.547050>,  <38.565636, 34.351978, 38.402016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.412277, 34.396900, 38.547050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.662392, 34.580925, 38.799198>,  <39.812462, 34.691341, 38.950485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.662392, 34.580925, 38.799198>,  <39.412277, 34.396900, 38.547050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.662392, 34.580925, 38.799198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775661, -0.277550, -0.566847,
		-0.085826, 0.843392, -0.530400,
		0.625287, 0.460061, 0.630365,
		39.849979, 34.718945, 38.988308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.848167, 34.848877, 38.134964>,  <39.412277, 34.396900, 38.547050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.848167, 34.848877, 38.134964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.013893, 34.741058, 38.482685>,  <40.113327, 34.676369, 38.691319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.013893, 34.741058, 38.482685>,  <39.848167, 34.848877, 38.134964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.013893, 34.741058, 38.482685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791523, -0.364767, -0.490343,
		0.449262, 0.891231, 0.062221,
		0.414313, -0.269542, 0.869306,
		40.138187, 34.660194, 38.743477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.493290, 35.242821, 38.255779>,  <39.848167, 34.848877, 38.134964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.493290, 35.242821, 38.255779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.480320, 34.881615, 38.427135>,  <40.472538, 34.664890, 38.529949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.480320, 34.881615, 38.427135>,  <40.493290, 35.242821, 38.255779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.480320, 34.881615, 38.427135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751867, -0.304440, -0.584818,
		0.658517, 0.303129, 0.688816,
		-0.032428, -0.903011, 0.428392,
		40.470592, 34.610710, 38.555653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.043724, 35.043495, 38.648582>,  <40.493290, 35.242821, 38.255779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.043724, 35.043495, 38.648582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.899799, 34.714352, 38.472656>,  <40.813446, 34.516865, 38.367100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.899799, 34.714352, 38.472656>,  <41.043724, 35.043495, 38.648582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.899799, 34.714352, 38.472656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858059, -0.106700, -0.502345,
		0.366432, -0.558135, 0.744455,
		-0.359809, -0.822861, -0.439814,
		40.791855, 34.467495, 38.340714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.667080, 34.624763, 38.541901>,  <41.043724, 35.043495, 38.648582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.667080, 34.624763, 38.541901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.370533, 34.493355, 38.307827>,  <41.192604, 34.414509, 38.167381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.370533, 34.493355, 38.307827>,  <41.667080, 34.624763, 38.541901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.370533, 34.493355, 38.307827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663058, -0.224011, -0.714264,
		0.103565, -0.917546, 0.383906,
		-0.741369, -0.328525, -0.585187,
		41.148121, 34.394798, 38.132271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.750103, 33.966045, 38.382580>,  <41.667080, 34.624763, 38.541901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.750103, 33.966045, 38.382580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.557018, 34.130791, 38.073425>,  <41.441166, 34.229637, 37.887932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.557018, 34.130791, 38.073425>,  <41.750103, 33.966045, 38.382580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.557018, 34.130791, 38.073425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773388, -0.213617, -0.596857,
		-0.410926, -0.885854, -0.215413,
		-0.482712, 0.411862, -0.772890,
		41.412205, 34.254349, 37.841557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.642796, 33.507324, 37.833923>,  <41.750103, 33.966045, 38.382580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.642796, 33.507324, 37.833923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.653873, 33.865692, 37.656578>,  <41.660519, 34.080711, 37.550171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.653873, 33.865692, 37.656578>,  <41.642796, 33.507324, 37.833923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.653873, 33.865692, 37.656578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705457, -0.331752, -0.626315,
		-0.708211, -0.295425, -0.641218,
		0.027696, 0.895916, -0.443360,
		41.662182, 34.134468, 37.523571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.519913, 33.504524, 37.049816>,  <41.642796, 33.507324, 37.833923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.519913, 33.504524, 37.049816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.746868, 33.822067, 37.137318>,  <41.883041, 34.012592, 37.189819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.746868, 33.822067, 37.137318>,  <41.519913, 33.504524, 37.049816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.746868, 33.822067, 37.137318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696707, -0.321205, -0.641425,
		-0.438936, 0.516348, -0.735337,
		0.567393, 0.793859, 0.218755,
		41.917088, 34.060226, 37.202946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.896164, 33.788990, 36.433804>,  <41.519913, 33.504524, 37.049816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.896164, 33.788990, 36.433804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.092812, 33.911415, 36.759903>,  <42.210800, 33.984871, 36.955563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.092812, 33.911415, 36.759903>,  <41.896164, 33.788990, 36.433804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.092812, 33.911415, 36.759903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827235, -0.456581, -0.327437,
		0.272010, 0.835378, -0.477654,
		0.491622, 0.306067, 0.815249,
		42.240299, 34.003235, 37.004478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.774273, 34.470642, 36.247864>,  <41.896164, 33.788990, 36.433804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.774273, 34.470642, 36.247864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.167164, 34.496799, 36.177479>,  <42.402897, 34.512493, 36.135250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.167164, 34.496799, 36.177479>,  <41.774273, 34.470642, 36.247864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.167164, 34.496799, 36.177479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018473, -0.966481, -0.256072,
		-0.186806, 0.248269, -0.950508,
		0.982223, 0.065395, -0.175958,
		42.461830, 34.516418, 36.124691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.889893, 34.272842, 35.608776>,  <41.774273, 34.470642, 36.247864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.889893, 34.272842, 35.608776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.237167, 34.207241, 35.796120>,  <42.445534, 34.167881, 35.908524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.237167, 34.207241, 35.796120>,  <41.889893, 34.272842, 35.608776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.237167, 34.207241, 35.796120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015426, -0.952270, -0.304867,
		0.496000, 0.257456, -0.829277,
		0.868185, -0.164007, 0.468354,
		42.497623, 34.158039, 35.936626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.405422, 33.767315, 35.231056>,  <41.889893, 34.272842, 35.608776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.405422, 33.767315, 35.231056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.415245, 33.717350, 35.627800>,  <42.421139, 33.687370, 35.865849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.415245, 33.717350, 35.627800>,  <42.405422, 33.767315, 35.231056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.415245, 33.717350, 35.627800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032351, -0.991742, -0.124098,
		0.999175, -0.029040, -0.028398,
		0.024560, -0.124915, 0.991863,
		42.422611, 33.679874, 35.925358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.019547, 33.327984, 35.411575>,  <42.405422, 33.767315, 35.231056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.019547, 33.327984, 35.411575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.720695, 33.300526, 35.676029>,  <42.541386, 33.284050, 35.834702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.720695, 33.300526, 35.676029>,  <43.019547, 33.327984, 35.411575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.720695, 33.300526, 35.676029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017139, -0.996311, -0.084084,
		0.664464, -0.051490, 0.745544,
		-0.747124, -0.068649, 0.661130,
		42.496559, 33.279930, 35.874367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.813618, 33.486816, 35.501144>,  <43.019547, 33.327984, 35.411575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.813618, 33.486816, 35.501144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.817966, 33.884624, 35.459541>,  <43.820576, 34.123310, 35.434578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.817966, 33.884624, 35.459541>,  <43.813618, 33.486816, 35.501144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.817966, 33.884624, 35.459541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850634, 0.045475, 0.523788,
		0.525646, -0.094169, -0.845475,
		0.010876, 0.994517, -0.104007,
		43.821228, 34.182980, 35.428341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.486046, 33.710152, 35.369251>,  <43.813618, 33.486816, 35.501144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.486046, 33.710152, 35.369251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.365631, 34.024307, 35.585598>,  <44.293381, 34.212799, 35.715408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.365631, 34.024307, 35.585598>,  <44.486046, 33.710152, 35.369251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.365631, 34.024307, 35.585598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944674, 0.168136, 0.281641,
		0.130258, 0.595732, -0.792551,
		-0.301039, 0.785388, 0.540871,
		44.275318, 34.259922, 35.747860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.992001, 34.256077, 35.307674>,  <44.486046, 33.710152, 35.369251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.992001, 34.256077, 35.307674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.779819, 34.264553, 35.646652>,  <44.652512, 34.269638, 35.850040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.779819, 34.264553, 35.646652>,  <44.992001, 34.256077, 35.307674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.779819, 34.264553, 35.646652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837531, 0.167572, 0.520059,
		-0.130990, 0.985632, -0.106634,
		-0.530455, 0.021187, 0.847448,
		44.620682, 34.270908, 35.900887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.408314, 34.182583, 35.925598>,  <44.992001, 34.256077, 35.307674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.408314, 34.182583, 35.925598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.678535, 33.926773, 36.072365>,  <45.840668, 33.773285, 36.160427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.678535, 33.926773, 36.072365>,  <45.408314, 34.182583, 35.925598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.678535, 33.926773, 36.072365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691853, 0.721870, -0.015611,
		-0.254885, 0.264401, 0.930121,
		0.675554, -0.639528, 0.366920,
		45.881203, 33.734913, 36.182442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.822922, 34.529205, 36.299244>,  <45.408314, 34.182583, 35.925598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.822922, 34.529205, 36.299244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.065559, 34.227837, 36.197739>,  <46.211143, 34.047016, 36.136833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.065559, 34.227837, 36.197739>,  <45.822922, 34.529205, 36.299244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.065559, 34.227837, 36.197739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679362, 0.657032, -0.326765,
		0.412925, 0.025815, 0.910399,
		0.606597, -0.753420, -0.253767,
		46.247540, 34.001812, 36.121609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.374325, 34.613407, 36.689896>,  <45.822922, 34.529205, 36.299244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.374325, 34.613407, 36.689896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.492195, 34.390762, 36.379192>,  <46.562916, 34.257175, 36.192772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.492195, 34.390762, 36.379192>,  <46.374325, 34.613407, 36.689896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.492195, 34.390762, 36.379192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730900, 0.654913, -0.192026,
		0.615591, -0.511145, 0.599816,
		0.294673, -0.556615, -0.776754,
		46.580597, 34.223778, 36.146168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.035931, 34.205376, 36.816097>,  <46.374325, 34.613407, 36.689896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.035931, 34.205376, 36.816097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.964901, 34.275986, 36.428841>,  <46.922283, 34.318352, 36.196487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.964901, 34.275986, 36.428841>,  <47.035931, 34.205376, 36.816097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.964901, 34.275986, 36.428841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711197, 0.702990, -0.002263,
		0.680197, -0.688944, -0.250378,
		-0.177572, 0.176529, -0.968146,
		46.911629, 34.328945, 36.138397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.596329, 34.664322, 36.514252>,  <47.035931, 34.205376, 36.816097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.596329, 34.664322, 36.514252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.370033, 34.684460, 36.185032>,  <47.234257, 34.696541, 35.987499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.370033, 34.684460, 36.185032>,  <47.596329, 34.664322, 36.514252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.370033, 34.684460, 36.185032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592044, 0.719552, -0.362944,
		0.573953, -0.692611, -0.436884,
		-0.565740, 0.050342, -0.823045,
		47.200310, 34.699562, 35.938118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.981720, 34.583374, 35.834099>,  <47.596329, 34.664322, 36.514252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.981720, 34.583374, 35.834099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.654434, 34.813328, 35.836613>,  <47.458065, 34.951302, 35.838120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.654434, 34.813328, 35.836613>,  <47.981720, 34.583374, 35.834099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.654434, 34.813328, 35.836613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558225, 0.797018, -0.230535,
		-0.137539, -0.185119, -0.973044,
		-0.818210, 0.574885, 0.006282,
		47.408970, 34.985794, 35.838497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.958260, 34.946095, 35.127193>,  <47.981720, 34.583374, 35.834099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.958260, 34.946095, 35.127193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.778923, 35.146999, 35.422958>,  <47.671322, 35.267544, 35.600418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.778923, 35.146999, 35.422958>,  <47.958260, 34.946095, 35.127193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.778923, 35.146999, 35.422958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441523, 0.843684, -0.305376,
		-0.777206, 0.189554, -0.600016,
		-0.448339, 0.502261, 0.739409,
		47.644421, 35.297676, 35.644779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.013725, 30.148258, 28.974413> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.810246, 30.260767, 28.648933>,  <38.688156, 30.328272, 28.453646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.810246, 30.260767, 28.648933>,  <39.013725, 30.148258, 28.974413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.810246, 30.260767, 28.648933> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838226, 0.053863, 0.542656,
		0.196463, 0.958115, 0.208371,
		-0.508703, 0.281274, -0.813699,
		38.657635, 30.345150, 28.404823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795723, 30.818142, 29.079473>,  <39.013725, 30.148258, 28.974413>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.795723, 30.818142, 29.079473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.551243, 30.669142, 28.800137>,  <38.404556, 30.579742, 28.632534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.551243, 30.669142, 28.800137>,  <38.795723, 30.818142, 29.079473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551243, 30.669142, 28.800137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786624, 0.383457, 0.483926,
		0.087522, 0.845107, -0.527385,
		-0.611198, -0.372499, -0.698342,
		38.367882, 30.557392, 28.590633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304413, 31.298880, 29.129982>,  <38.795723, 30.818142, 29.079473>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304413, 31.298880, 29.129982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.156399, 30.985241, 28.930676>,  <38.067589, 30.797058, 28.811092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.156399, 30.985241, 28.930676>,  <38.304413, 31.298880, 29.129982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156399, 30.985241, 28.930676> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915149, 0.215323, 0.340789,
		-0.159924, 0.582091, -0.797242,
		-0.370035, -0.784096, -0.498265,
		38.045387, 30.750011, 28.781197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.703690, 31.540751, 28.672644>,  <38.304413, 31.298880, 29.129982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.703690, 31.540751, 28.672644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.639458, 31.149111, 28.722563>,  <37.600918, 30.914127, 28.752514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.639458, 31.149111, 28.722563>,  <37.703690, 31.540751, 28.672644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639458, 31.149111, 28.722563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881771, 0.199121, 0.427588,
		-0.443501, -0.041378, -0.895318,
		-0.160584, -0.979101, 0.124797,
		37.591282, 30.855381, 28.760002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973503, 31.367928, 28.367199>,  <37.703690, 31.540751, 28.672644>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973503, 31.367928, 28.367199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.085587, 31.103748, 28.645851>,  <37.152836, 30.945242, 28.813042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.085587, 31.103748, 28.645851>,  <36.973503, 31.367928, 28.367199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.085587, 31.103748, 28.645851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753846, 0.297892, 0.585643,
		-0.594306, -0.689254, -0.414403,
		0.280209, -0.660447, 0.696629,
		37.169651, 30.905615, 28.854839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.359108, 31.299313, 28.662188>,  <36.973503, 31.367928, 28.367199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.359108, 31.299313, 28.662188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.616325, 31.115887, 28.907534>,  <36.770657, 31.005831, 29.054741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.616325, 31.115887, 28.907534>,  <36.359108, 31.299313, 28.662188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.616325, 31.115887, 28.907534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653631, 0.088732, 0.751594,
		-0.399080, -0.884220, -0.242675,
		0.643041, -0.458565, 0.613365,
		36.809238, 30.978317, 29.091543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943920, 30.874619, 29.012104>,  <36.359108, 31.299313, 28.662188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.943920, 30.874619, 29.012104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.261799, 30.962858, 29.238302>,  <36.452526, 31.015802, 29.374022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.261799, 30.962858, 29.238302>,  <35.943920, 30.874619, 29.012104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261799, 30.962858, 29.238302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592738, 0.081265, 0.801285,
		0.130811, -0.971973, 0.195341,
		0.794701, 0.220603, 0.565495,
		36.500210, 31.029039, 29.407951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732918, 30.624346, 29.654613>,  <35.943920, 30.874619, 29.012104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.732918, 30.624346, 29.654613> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.038792, 30.863310, 29.751245>,  <36.222317, 31.006689, 29.809225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.038792, 30.863310, 29.751245>,  <35.732918, 30.624346, 29.654613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.038792, 30.863310, 29.751245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469808, 0.260246, 0.843536,
		0.441069, -0.758532, 0.479674,
		0.764682, 0.597412, 0.241578,
		36.268196, 31.042534, 29.823719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.058971, 30.439468, 30.350691>,  <35.732918, 30.624346, 29.654613>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.058971, 30.439468, 30.350691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.166710, 30.817425, 30.276251>,  <36.231354, 31.044199, 30.231586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.166710, 30.817425, 30.276251>,  <36.058971, 30.439468, 30.350691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166710, 30.817425, 30.276251> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286070, 0.263019, 0.921404,
		0.919573, -0.194944, 0.341149,
		0.269350, 0.944890, -0.186098,
		36.247517, 31.100891, 30.220421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337036, 30.707102, 30.983982>,  <36.058971, 30.439468, 30.350691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.337036, 30.707102, 30.983982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.222103, 31.037153, 30.789413>,  <36.153145, 31.235184, 30.672672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.222103, 31.037153, 30.789413>,  <36.337036, 30.707102, 30.983982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222103, 31.037153, 30.789413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310298, 0.400260, 0.862268,
		0.906176, 0.398691, 0.141029,
		-0.287331, 0.825129, -0.486419,
		36.135902, 31.284693, 30.643488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731152, 31.202799, 31.291969>,  <36.337036, 30.707102, 30.983982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731152, 31.202799, 31.291969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.428860, 31.399340, 31.118790>,  <36.247486, 31.517263, 31.014881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.428860, 31.399340, 31.118790>,  <36.731152, 31.202799, 31.291969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428860, 31.399340, 31.118790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148854, 0.514926, 0.844212,
		0.637742, 0.702443, -0.316005,
		-0.755730, 0.491351, -0.432951,
		36.202141, 31.546745, 30.988905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661308, 31.871296, 31.677975>,  <36.731152, 31.202799, 31.291969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.661308, 31.871296, 31.677975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.313522, 31.859013, 31.480761>,  <36.104851, 31.851643, 31.362432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.313522, 31.859013, 31.480761>,  <36.661308, 31.871296, 31.677975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313522, 31.859013, 31.480761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456554, 0.431088, 0.778281,
		0.188644, 0.901787, -0.388836,
		-0.869467, -0.030707, -0.493036,
		36.052681, 31.849800, 31.332850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355762, 32.546421, 31.751169>,  <36.661308, 31.871296, 31.677975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355762, 32.546421, 31.751169> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.068958, 32.276142, 31.682663>,  <35.896877, 32.113976, 31.641560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.068958, 32.276142, 31.682663>,  <36.355762, 32.546421, 31.751169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068958, 32.276142, 31.682663> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513996, 0.346539, 0.784677,
		-0.470852, 0.650652, -0.595777,
		-0.717012, -0.675694, -0.171265,
		35.853855, 32.073433, 31.631283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735043, 32.976364, 31.741154>,  <36.355762, 32.546421, 31.751169>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735043, 32.976364, 31.741154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.627293, 32.597977, 31.813349>,  <35.562645, 32.370945, 31.856667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.627293, 32.597977, 31.813349>,  <35.735043, 32.976364, 31.741154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627293, 32.597977, 31.813349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407526, 0.281777, 0.868634,
		-0.872560, 0.160432, -0.461411,
		-0.269372, -0.945972, 0.180487,
		35.546482, 32.314186, 31.867495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044376, 33.040287, 31.895882>,  <35.735043, 32.976364, 31.741154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.044376, 33.040287, 31.895882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.153927, 32.692898, 32.061169>,  <35.219658, 32.484467, 32.160343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.153927, 32.692898, 32.061169>,  <35.044376, 33.040287, 31.895882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153927, 32.692898, 32.061169> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363908, 0.304128, 0.880385,
		-0.890259, -0.391492, -0.232750,
		0.273878, -0.868470, 0.413219,
		35.236092, 32.432358, 32.185135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.456978, 32.803276, 32.268467>,  <35.044376, 33.040287, 31.895882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.456978, 32.803276, 32.268467> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.756706, 32.593250, 32.429871>,  <34.936543, 32.467236, 32.526714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.756706, 32.593250, 32.429871>,  <34.456978, 32.803276, 32.268467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756706, 32.593250, 32.429871> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357731, 0.191818, 0.913912,
		-0.557267, -0.829162, -0.044100,
		0.749322, -0.525068, 0.403510,
		34.981503, 32.435730, 32.550922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121044, 32.326050, 32.842400>,  <34.456978, 32.803276, 32.268467>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.121044, 32.326050, 32.842400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.507050, 32.358086, 32.942268>,  <34.738651, 32.377308, 33.002190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.507050, 32.358086, 32.942268>,  <34.121044, 32.326050, 32.842400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.507050, 32.358086, 32.942268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256471, 0.090282, 0.962326,
		0.054527, -0.992691, 0.107663,
		0.965012, 0.080085, 0.249674,
		34.796555, 32.382114, 33.017170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.198784, 31.898317, 33.414074>,  <34.121044, 32.326050, 32.842400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.198784, 31.898317, 33.414074> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.526310, 32.125713, 33.445965>,  <34.722828, 32.262150, 33.465099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.526310, 32.125713, 33.445965>,  <34.198784, 31.898317, 33.414074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526310, 32.125713, 33.445965> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147478, 0.074099, 0.986286,
		0.554784, -0.819348, 0.144513,
		0.818819, 0.568488, 0.079727,
		34.771957, 32.296261, 33.469883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.524681, 31.590212, 33.977634>,  <34.198784, 31.898317, 33.414074>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.524681, 31.590212, 33.977634> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.674232, 31.957495, 33.925308>,  <34.763962, 32.177864, 33.893913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.674232, 31.957495, 33.925308>,  <34.524681, 31.590212, 33.977634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.674232, 31.957495, 33.925308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242713, 0.232988, 0.941704,
		0.895158, -0.320328, 0.309969,
		0.373874, 0.918208, -0.130813,
		34.786396, 32.232956, 33.886063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032696, 31.767450, 34.576519>,  <34.524681, 31.590212, 33.977634>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032696, 31.767450, 34.576519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.932781, 32.124516, 34.426445>,  <34.872833, 32.338753, 34.336399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.932781, 32.124516, 34.426445>,  <35.032696, 31.767450, 34.576519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932781, 32.124516, 34.426445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179179, 0.338165, 0.923872,
		0.951579, 0.297995, 0.075477,
		-0.249785, 0.892661, -0.375185,
		34.857845, 32.392315, 34.313889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414509, 32.357510, 34.925743>,  <35.032696, 31.767450, 34.576519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414509, 32.357510, 34.925743> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.090469, 32.533150, 34.770348>,  <34.896046, 32.638535, 34.677109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.090469, 32.533150, 34.770348>,  <35.414509, 32.357510, 34.925743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.090469, 32.533150, 34.770348> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242989, 0.351577, 0.904074,
		0.533565, 0.826791, -0.178116,
		-0.810102, 0.439102, -0.388491,
		34.847439, 32.664879, 34.653801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.497002, 33.117767, 35.090775>,  <35.414509, 32.357510, 34.925743>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.497002, 33.117767, 35.090775> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.117558, 33.024281, 35.005447>,  <34.889889, 32.968189, 34.954250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.117558, 33.024281, 35.005447>,  <35.497002, 33.117767, 35.090775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117558, 33.024281, 35.005447> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316096, 0.668828, 0.672869,
		-0.014592, 0.705722, -0.708339,
		-0.948615, -0.233722, -0.213317,
		34.832973, 32.954163, 34.941452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.476036, 32.786106, 35.724606>,  <35.497002, 33.117767, 35.090775>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.476036, 32.786106, 35.724606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.753769, 32.759682, 36.011253>,  <35.920406, 32.743828, 36.183243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.753769, 32.759682, 36.011253>,  <35.476036, 32.786106, 35.724606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753769, 32.759682, 36.011253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711570, -0.085849, -0.697351,
		0.107587, 0.994116, -0.012602,
		0.694330, -0.066059, 0.716619,
		35.962067, 32.739864, 36.226238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.069527, 33.289345, 35.495609>,  <35.476036, 32.786106, 35.724606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.069527, 33.289345, 35.495609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.218548, 33.028320, 35.759537>,  <36.307961, 32.871704, 35.917892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.218548, 33.028320, 35.759537>,  <36.069527, 33.289345, 35.495609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218548, 33.028320, 35.759537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750193, -0.206757, -0.628062,
		0.546273, 0.728981, 0.412519,
		0.372555, -0.652562, 0.659822,
		36.330315, 32.832550, 35.957485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775326, 33.437550, 35.524033>,  <36.069527, 33.289345, 35.495609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775326, 33.437550, 35.524033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.746120, 33.049278, 35.615635>,  <36.728596, 32.816315, 35.670597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.746120, 33.049278, 35.615635>,  <36.775326, 33.437550, 35.524033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.746120, 33.049278, 35.615635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746898, -0.205385, -0.632424,
		0.660918, 0.124871, 0.739997,
		-0.073013, -0.970683, 0.229008,
		36.724216, 32.758072, 35.684338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.443195, 33.237175, 35.601929>,  <36.775326, 33.437550, 35.524033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.443195, 33.237175, 35.601929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.269157, 32.877335, 35.586922>,  <37.164734, 32.661430, 35.577919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.269157, 32.877335, 35.586922>,  <37.443195, 33.237175, 35.601929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269157, 32.877335, 35.586922> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805936, -0.370542, -0.461699,
		0.401444, -0.231118, 0.886243,
		-0.435097, -0.899602, -0.037514,
		37.138630, 32.607452, 35.575668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959667, 32.604691, 35.809555>,  <37.443195, 33.237175, 35.601929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.959667, 32.604691, 35.809555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.660000, 32.454350, 35.591389>,  <37.480198, 32.364143, 35.460487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.660000, 32.454350, 35.591389>,  <37.959667, 32.604691, 35.809555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660000, 32.454350, 35.591389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661975, -0.453649, -0.596650,
		-0.023177, -0.808046, 0.588664,
		-0.749167, -0.375852, -0.545420,
		37.435249, 32.341595, 35.427761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195808, 31.939688, 35.593700>,  <37.959667, 32.604691, 35.809555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195808, 31.939688, 35.593700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.887321, 32.009266, 35.348763>,  <37.702229, 32.051014, 35.201797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.887321, 32.009266, 35.348763>,  <38.195808, 31.939688, 35.593700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.887321, 32.009266, 35.348763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500793, -0.428056, -0.752313,
		-0.392980, -0.886855, 0.243012,
		-0.771215, 0.173946, -0.612348,
		37.655956, 32.061451, 35.165058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136425, 31.242102, 35.213657>,  <38.195808, 31.939688, 35.593700>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.136425, 31.242102, 35.213657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.951080, 31.532118, 35.009846>,  <37.839874, 31.706127, 34.887558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.951080, 31.532118, 35.009846>,  <38.136425, 31.242102, 35.213657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.951080, 31.532118, 35.009846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406076, -0.337333, -0.849299,
		-0.787655, -0.600437, -0.138114,
		-0.463360, 0.725039, -0.509524,
		37.812073, 31.749630, 34.856987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932167, 30.935188, 34.584560>,  <38.136425, 31.242102, 35.213657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932167, 30.935188, 34.584560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.934620, 31.328516, 34.511845>,  <37.936092, 31.564512, 34.468216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.934620, 31.328516, 34.511845>,  <37.932167, 30.935188, 34.584560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934620, 31.328516, 34.511845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424647, -0.167150, -0.889795,
		-0.905338, -0.071746, -0.418587,
		0.006128, 0.983318, -0.181794,
		37.936459, 31.623510, 34.457306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729942, 30.977051, 33.990940>,  <37.932167, 30.935188, 34.584560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729942, 30.977051, 33.990940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.936737, 31.316717, 34.034107>,  <38.060814, 31.520517, 34.060009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.936737, 31.316717, 34.034107>,  <37.729942, 30.977051, 33.990940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.936737, 31.316717, 34.034107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488341, -0.189036, -0.851932,
		-0.703030, 0.493136, -0.512411,
		0.516983, 0.849165, 0.107920,
		38.091831, 31.571466, 34.066483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704559, 31.276127, 33.308094>,  <37.729942, 30.977051, 33.990940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.704559, 31.276127, 33.308094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.989273, 31.478621, 33.502857>,  <38.160103, 31.600117, 33.619717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.989273, 31.478621, 33.502857>,  <37.704559, 31.276127, 33.308094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989273, 31.478621, 33.502857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588288, -0.050919, -0.807046,
		-0.383762, 0.860891, -0.334056,
		0.711789, 0.506235, 0.486912,
		38.202808, 31.630491, 33.648930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995270, 31.803764, 32.863098>,  <37.704559, 31.276127, 33.308094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995270, 31.803764, 32.863098> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.286457, 31.757038, 33.133335>,  <38.461170, 31.729002, 33.295475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.286457, 31.757038, 33.133335>,  <37.995270, 31.803764, 32.863098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.286457, 31.757038, 33.133335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685252, 0.091946, -0.722479,
		0.022278, 0.988889, 0.146980,
		0.727965, -0.116814, 0.675590,
		38.504845, 31.721994, 33.336014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528824, 32.206116, 32.660610>,  <37.995270, 31.803764, 32.863098>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.528824, 32.206116, 32.660610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.690819, 31.932762, 32.903584>,  <38.788017, 31.768749, 33.049366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.690819, 31.932762, 32.903584>,  <38.528824, 32.206116, 32.660610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.690819, 31.932762, 32.903584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677385, -0.221961, -0.701343,
		0.614113, 0.695499, 0.373023,
		0.404987, -0.683384, 0.607430,
		38.812313, 31.727747, 33.085812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.193054, 32.457058, 32.473236>,  <38.528824, 32.206116, 32.660610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.193054, 32.457058, 32.473236> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.173630, 32.081413, 32.609303>,  <39.161976, 31.856026, 32.690941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.173630, 32.081413, 32.609303>,  <39.193054, 32.457058, 32.473236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173630, 32.081413, 32.609303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467793, -0.322288, -0.822982,
		0.882503, 0.119166, 0.454959,
		-0.048557, -0.939111, 0.340165,
		39.159061, 31.799681, 32.711353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.889835, 32.143127, 32.664494>,  <39.193054, 32.457058, 32.473236>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.889835, 32.143127, 32.664494> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.640724, 31.843142, 32.575325>,  <39.491257, 31.663149, 32.521824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.640724, 31.843142, 32.575325>,  <39.889835, 32.143127, 32.664494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.640724, 31.843142, 32.575325> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611750, -0.289134, -0.736317,
		0.487760, -0.594936, 0.638860,
		-0.622778, -0.749968, -0.222924,
		39.453892, 31.618151, 32.508450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.345192, 31.551901, 32.717430>,  <39.889835, 32.143127, 32.664494>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.345192, 31.551901, 32.717430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.018703, 31.494524, 32.493572>,  <39.822811, 31.460098, 32.359257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.018703, 31.494524, 32.493572>,  <40.345192, 31.551901, 32.717430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.018703, 31.494524, 32.493572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577731, -0.206619, -0.789643,
		-0.002363, -0.967849, 0.251520,
		-0.816224, -0.143445, -0.559644,
		39.773838, 31.451490, 32.325680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.548195, 30.911804, 32.458145>,  <40.345192, 31.551901, 32.717430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.548195, 30.911804, 32.458145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.241676, 31.029495, 32.229683>,  <40.057766, 31.100109, 32.092606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.241676, 31.029495, 32.229683>,  <40.548195, 30.911804, 32.458145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.241676, 31.029495, 32.229683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512045, -0.257285, -0.819521,
		-0.388077, -0.920453, 0.046497,
		-0.766294, 0.294229, -0.571160,
		40.011787, 31.117764, 32.058334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.450722, 30.373709, 31.969580>,  <40.548195, 30.911804, 32.458145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.450722, 30.373709, 31.969580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.258156, 30.683910, 31.806200>,  <40.142616, 30.870031, 31.708172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.258156, 30.683910, 31.806200>,  <40.450722, 30.373709, 31.969580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.258156, 30.683910, 31.806200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267000, -0.314105, -0.911071,
		-0.834836, -0.547658, -0.055845,
		-0.481414, 0.775505, -0.408451,
		40.113731, 30.916561, 31.683664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.228310, 30.175411, 31.360043>,  <40.450722, 30.373709, 31.969580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.228310, 30.175411, 31.360043> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.152584, 30.562387, 31.292856>,  <40.107147, 30.794573, 31.252544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.152584, 30.562387, 31.292856>,  <40.228310, 30.175411, 31.360043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.152584, 30.562387, 31.292856> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170094, -0.136164, -0.975975,
		-0.967071, -0.213339, -0.138778,
		-0.189317, 0.967443, -0.167968,
		40.095787, 30.852621, 31.242466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.737640, 30.193735, 30.843731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.934917, 30.541397, 30.829142>,  <40.053284, 30.749994, 30.820389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.934917, 30.541397, 30.829142>,  <39.737640, 30.193735, 30.843731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.934917, 30.541397, 30.829142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132764, -0.116638, -0.984261,
		-0.859731, 0.480585, -0.172918,
		0.493190, 0.869157, -0.036473,
		40.082874, 30.802145, 30.818199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.519176, 30.522158, 30.218580>,  <39.737640, 30.193735, 30.843731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.519176, 30.522158, 30.218580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.875881, 30.677176, 30.312023>,  <40.089905, 30.770185, 30.368090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.875881, 30.677176, 30.312023>,  <39.519176, 30.522158, 30.218580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.875881, 30.677176, 30.312023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289816, -0.092669, -0.952586,
		-0.347519, 0.917182, -0.194954,
		0.891761, 0.387542, 0.233610,
		40.143410, 30.793438, 30.382107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.701553, 30.990660, 29.667467>,  <39.519176, 30.522158, 30.218580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.701553, 30.990660, 29.667467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.051914, 30.931335, 29.851116>,  <40.262131, 30.895741, 29.961306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.051914, 30.931335, 29.851116>,  <39.701553, 30.990660, 29.667467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.051914, 30.931335, 29.851116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394568, -0.327478, -0.858531,
		0.277683, 0.933147, -0.228320,
		0.875904, -0.148311, 0.459124,
		40.314686, 30.886843, 29.988853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.291294, 31.321991, 29.284996>,  <39.701553, 30.990660, 29.667467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.291294, 31.321991, 29.284996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.507320, 31.060013, 29.496418>,  <40.636936, 30.902826, 29.623272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.507320, 31.060013, 29.496418>,  <40.291294, 31.321991, 29.284996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.507320, 31.060013, 29.496418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558471, -0.190953, -0.807247,
		0.629633, 0.731152, 0.262641,
		0.540068, -0.654946, 0.528557,
		40.669342, 30.863529, 29.654985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.940292, 31.384716, 28.976345>,  <40.291294, 31.321991, 29.284996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.940292, 31.384716, 28.976345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.921078, 31.025785, 29.151842>,  <40.909550, 30.810427, 29.257141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.921078, 31.025785, 29.151842>,  <40.940292, 31.384716, 28.976345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.921078, 31.025785, 29.151842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643538, -0.363739, -0.673463,
		0.763905, 0.249996, 0.594938,
		-0.048039, -0.897327, 0.438744,
		40.906666, 30.756588, 29.283464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.552185, 31.222115, 28.876514>,  <40.940292, 31.384716, 28.976345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.552185, 31.222115, 28.876514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.371078, 30.881472, 28.982166>,  <41.262413, 30.677086, 29.045557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.371078, 30.881472, 28.982166>,  <41.552185, 31.222115, 28.876514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.371078, 30.881472, 28.982166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626219, -0.514592, -0.585701,
		0.634707, -0.099783, 0.766283,
		-0.452766, -0.851609, 0.264129,
		41.235249, 30.625988, 29.061405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.102657, 30.713938, 29.035069>,  <41.552185, 31.222115, 28.876514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.102657, 30.713938, 29.035069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.774956, 30.504126, 28.942377>,  <41.578335, 30.378239, 28.886763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.774956, 30.504126, 28.942377>,  <42.102657, 30.713938, 29.035069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.774956, 30.504126, 28.942377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530496, -0.539825, -0.653577,
		0.217727, -0.658374, 0.720512,
		-0.819249, -0.524530, -0.231730,
		41.529182, 30.346767, 28.872858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.259262, 29.949621, 29.073103>,  <42.102657, 30.713938, 29.035069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.259262, 29.949621, 29.073103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.970428, 30.043020, 28.812622>,  <41.797127, 30.099060, 28.656334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.970428, 30.043020, 28.812622>,  <42.259262, 29.949621, 29.073103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.970428, 30.043020, 28.812622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549710, -0.377834, -0.745024,
		-0.420010, -0.895947, 0.144472,
		-0.722088, 0.233499, -0.651205,
		41.753803, 30.113070, 28.617260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.112553, 29.245701, 28.808941>,  <42.259262, 29.949621, 29.073103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.112553, 29.245701, 28.808941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.927731, 29.500673, 28.562302>,  <41.816837, 29.653656, 28.414318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.927731, 29.500673, 28.562302>,  <42.112553, 29.245701, 28.808941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.927731, 29.500673, 28.562302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538497, -0.350768, -0.766148,
		-0.704648, -0.686035, -0.181182,
		-0.462051, 0.637431, -0.616596,
		41.789116, 29.691902, 28.377323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.051086, 28.800385, 28.154676>,  <42.112553, 29.245701, 28.808941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.051086, 28.800385, 28.154676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.002979, 29.186829, 28.063313>,  <41.974113, 29.418695, 28.008495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.002979, 29.186829, 28.063313>,  <42.051086, 28.800385, 28.154676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.002979, 29.186829, 28.063313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497387, -0.140476, -0.856080,
		-0.859151, -0.216569, -0.463635,
		-0.120271, 0.966108, -0.228409,
		41.966900, 29.476662, 27.994789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.707680, 28.747389, 27.577562>,  <42.051086, 28.800385, 28.154676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.707680, 28.747389, 27.577562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.856052, 29.118837, 27.581009>,  <41.945076, 29.341705, 27.583076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.856052, 29.118837, 27.581009>,  <41.707680, 28.747389, 27.577562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.856052, 29.118837, 27.581009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455206, -0.173726, -0.873274,
		-0.809443, 0.327848, -0.487154,
		0.370932, 0.928620, 0.008617,
		41.967331, 29.397423, 27.583593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.505810, 29.036713, 26.902899>,  <41.707680, 28.747389, 27.577562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.505810, 29.036713, 26.902899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.822525, 29.235989, 27.044250>,  <42.012554, 29.355555, 27.129063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.822525, 29.235989, 27.044250>,  <41.505810, 29.036713, 26.902899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.822525, 29.235989, 27.044250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518666, -0.242853, -0.819761,
		-0.322577, 0.832364, -0.450682,
		0.791789, 0.498189, 0.353380,
		42.060062, 29.385445, 27.150265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.721199, 29.487642, 26.530085>,  <41.505810, 29.036713, 26.902899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.721199, 29.487642, 26.530085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.074013, 29.453693, 26.715479>,  <42.285702, 29.433325, 26.826715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.074013, 29.453693, 26.715479>,  <41.721199, 29.487642, 26.530085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.074013, 29.453693, 26.715479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450867, -0.133760, -0.882512,
		0.136897, 0.987373, -0.079714,
		0.882031, -0.084873, 0.463485,
		42.338623, 29.428232, 26.854525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.125851, 29.869545, 26.141382>,  <41.721199, 29.487642, 26.530085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.125851, 29.869545, 26.141382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.405144, 29.688345, 26.363108>,  <42.572720, 29.579624, 26.496143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.405144, 29.688345, 26.363108>,  <42.125851, 29.869545, 26.141382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.405144, 29.688345, 26.363108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599980, -0.052082, -0.798318,
		0.390508, 0.889988, 0.235426,
		0.698232, -0.453000, 0.554313,
		42.614613, 29.552444, 26.529402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.789303, 30.300413, 26.007050>,  <42.125851, 29.869545, 26.141382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.789303, 30.300413, 26.007050> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.888050, 29.936922, 26.141672>,  <42.947300, 29.718828, 26.222446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.888050, 29.936922, 26.141672>,  <42.789303, 30.300413, 26.007050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.888050, 29.936922, 26.141672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811588, 0.004107, -0.584215,
		0.529510, 0.417371, 0.738526,
		0.246868, -0.908727, 0.336559,
		42.962109, 29.664305, 26.242640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.454006, 30.259857, 26.000116>,  <42.789303, 30.300413, 26.007050>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.454006, 30.259857, 26.000116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.388050, 29.865511, 26.011990>,  <43.348476, 29.628902, 26.019114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.388050, 29.865511, 26.011990>,  <43.454006, 30.259857, 26.000116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.388050, 29.865511, 26.011990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847247, -0.156988, -0.507472,
		0.504958, -0.058529, 0.861157,
		-0.164893, -0.985865, 0.029684,
		43.338581, 29.569752, 26.020895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.062981, 30.148668, 26.217287>,  <43.454006, 30.259857, 26.000116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.062981, 30.148668, 26.217287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.891167, 29.844154, 26.022987>,  <43.788078, 29.661446, 25.906408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.891167, 29.844154, 26.022987>,  <44.062981, 30.148668, 26.217287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.891167, 29.844154, 26.022987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794442, -0.062794, -0.604084,
		0.429377, -0.645373, 0.631767,
		-0.429531, -0.761283, -0.485749,
		43.762306, 29.615770, 25.877262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.544144, 29.669786, 26.239447>,  <44.062981, 30.148668, 26.217287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.544144, 29.669786, 26.239447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.300255, 29.552322, 25.944963>,  <44.153923, 29.481844, 25.768274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.300255, 29.552322, 25.944963>,  <44.544144, 29.669786, 26.239447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.300255, 29.552322, 25.944963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785551, -0.100149, -0.610638,
		0.105591, -0.950648, 0.291750,
		-0.609721, -0.293662, -0.736208,
		44.117340, 29.464224, 25.724100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.805931, 29.070364, 25.827927>,  <44.544144, 29.669786, 26.239447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.805931, 29.070364, 25.827927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.542194, 29.227047, 25.571232>,  <44.383953, 29.321056, 25.417215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.542194, 29.227047, 25.571232>,  <44.805931, 29.070364, 25.827927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.542194, 29.227047, 25.571232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677146, -0.061516, -0.733272,
		-0.326706, -0.918031, -0.224683,
		-0.659345, 0.391708, -0.641739,
		44.344391, 29.344559, 25.378710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.922535, 28.755579, 25.149273>,  <44.805931, 29.070364, 25.827927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.922535, 28.755579, 25.149273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.689537, 29.052898, 25.017693>,  <44.549740, 29.231289, 24.938744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.689537, 29.052898, 25.017693>,  <44.922535, 28.755579, 25.149273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.689537, 29.052898, 25.017693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539346, 0.050668, -0.840558,
		-0.608118, -0.667039, -0.430408,
		-0.582494, 0.743297, -0.328953,
		44.514790, 29.275888, 24.919006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.848343, 28.520668, 24.532213>,  <44.922535, 28.755579, 25.149273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.848343, 28.520668, 24.532213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.770222, 28.912777, 24.520088>,  <44.723351, 29.148043, 24.512814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.770222, 28.912777, 24.520088>,  <44.848343, 28.520668, 24.532213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.770222, 28.912777, 24.520088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373147, 0.045691, -0.926646,
		-0.906983, -0.192288, -0.374710,
		-0.195303, 0.980274, -0.030311,
		44.711632, 29.206860, 24.510996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.531055, 28.707716, 23.881397>,  <44.848343, 28.520668, 24.532213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.531055, 28.707716, 23.881397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.678505, 29.055462, 24.013048>,  <44.766975, 29.264109, 24.092039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.678505, 29.055462, 24.013048>,  <44.531055, 28.707716, 23.881397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.678505, 29.055462, 24.013048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333975, 0.206563, -0.919670,
		-0.867514, 0.448929, -0.214203,
		0.368620, 0.869365, 0.329128,
		44.789089, 29.316271, 24.111786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.201641, 29.321093, 23.665348>,  <44.531055, 28.707716, 23.881397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.201641, 29.321093, 23.665348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.593323, 29.391785, 23.705191>,  <44.828331, 29.434200, 23.729097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.593323, 29.391785, 23.705191>,  <44.201641, 29.321093, 23.665348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.593323, 29.391785, 23.705191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074715, 0.142317, -0.986997,
		-0.188608, 0.973916, 0.126154,
		0.979206, 0.176730, 0.099608,
		44.887085, 29.444803, 23.735073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.405109, 29.884956, 23.215641>,  <44.201641, 29.321093, 23.665348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.405109, 29.884956, 23.215641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.693600, 29.613241, 23.269911>,  <44.866692, 29.450212, 23.302473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.693600, 29.613241, 23.269911>,  <44.405109, 29.884956, 23.215641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.693600, 29.613241, 23.269911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285112, 0.112600, -0.951857,
		0.631306, 0.725184, 0.274882,
		0.721223, -0.679286, 0.135674,
		44.909966, 29.409456, 23.310614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.152779, 30.287918, 22.544512>,  <44.405109, 29.884956, 23.215641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.152779, 30.287918, 22.544512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.907696, 30.316637, 22.229694>,  <43.760647, 30.333868, 22.040804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.907696, 30.316637, 22.229694>,  <44.152779, 30.287918, 22.544512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.907696, 30.316637, 22.229694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774118, 0.146044, 0.615965,
		0.159169, 0.986669, -0.033901,
		-0.612704, 0.071799, -0.787044,
		43.723885, 30.338177, 21.993582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.654072, 30.687309, 22.787619>,  <44.152779, 30.287918, 22.544512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.654072, 30.687309, 22.787619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.473759, 30.511688, 22.476742>,  <43.365570, 30.406315, 22.290216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.473759, 30.511688, 22.476742>,  <43.654072, 30.687309, 22.787619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.473759, 30.511688, 22.476742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870708, 0.024482, 0.491190,
		-0.196631, 0.898127, -0.393324,
		-0.450781, -0.439054, -0.777193,
		43.338524, 30.379972, 22.243584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.044788, 31.080812, 22.752422>,  <43.654072, 30.687309, 22.787619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.044788, 31.080812, 22.752422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.975704, 30.724337, 22.584635>,  <42.934254, 30.510450, 22.483963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.975704, 30.724337, 22.584635>,  <43.044788, 31.080812, 22.752422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.975704, 30.724337, 22.584635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854598, -0.076158, 0.513674,
		-0.489727, 0.447193, -0.748455,
		-0.172711, -0.891189, -0.419467,
		42.923889, 30.456980, 22.458796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.451775, 31.159893, 22.487068>,  <43.044788, 31.080812, 22.752422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.451775, 31.159893, 22.487068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.487644, 30.761719, 22.500113>,  <42.509167, 30.522814, 22.507940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.487644, 30.761719, 22.500113>,  <42.451775, 31.159893, 22.487068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.487644, 30.761719, 22.500113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927640, -0.071556, 0.366558,
		-0.362551, -0.063122, -0.929824,
		0.089672, -0.995437, 0.032612,
		42.514545, 30.463087, 22.509895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.750004, 30.986450, 22.512217>,  <42.451775, 31.159893, 22.487068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.750004, 30.986450, 22.512217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.948936, 30.652697, 22.607265>,  <42.068295, 30.452444, 22.664295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.948936, 30.652697, 22.607265>,  <41.750004, 30.986450, 22.512217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.948936, 30.652697, 22.607265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649459, -0.176467, 0.739637,
		-0.575209, -0.522171, -0.629661,
		0.497331, -0.834384, 0.237623,
		42.098137, 30.402382, 22.678553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.276936, 30.418308, 22.398354>,  <41.750004, 30.986450, 22.512217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.276936, 30.418308, 22.398354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.569874, 30.363760, 22.665209>,  <41.745636, 30.331032, 22.825321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.569874, 30.363760, 22.665209>,  <41.276936, 30.418308, 22.398354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.569874, 30.363760, 22.665209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659790, 0.100126, 0.744749,
		-0.168361, -0.985585, -0.016651,
		0.732347, -0.136372, 0.667137,
		41.789577, 30.322849, 22.865349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.972496, 30.017508, 22.929766>,  <41.276936, 30.418308, 22.398354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.972496, 30.017508, 22.929766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.303204, 30.147781, 23.113237>,  <41.501629, 30.225946, 23.223320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.303204, 30.147781, 23.113237>,  <40.972496, 30.017508, 22.929766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.303204, 30.147781, 23.113237> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481217, -0.012838, 0.876507,
		0.291355, -0.945391, 0.146112,
		0.826766, 0.325687, 0.458679,
		41.551235, 30.245487, 23.250841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.116611, 29.484209, 23.392605>,  <40.972496, 30.017508, 22.929766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.116611, 29.484209, 23.392605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.278316, 29.823475, 23.529539>,  <41.375340, 30.027035, 23.611700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.278316, 29.823475, 23.529539>,  <41.116611, 29.484209, 23.392605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.278316, 29.823475, 23.529539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453052, -0.139452, 0.880510,
		0.794554, -0.511052, 0.327887,
		0.404261, 0.848162, 0.342335,
		41.399593, 30.077923, 23.632240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.217953, 29.366390, 24.146055>,  <41.116611, 29.484209, 23.392605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.217953, 29.366390, 24.146055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.244232, 29.764723, 24.120756>,  <41.260002, 30.003723, 24.105576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.244232, 29.764723, 24.120756>,  <41.217953, 29.366390, 24.146055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.244232, 29.764723, 24.120756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378951, 0.083538, 0.921639,
		0.923082, -0.036584, 0.382860,
		0.065701, 0.995833, -0.063249,
		41.263943, 30.063473, 24.101782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.696175, 29.589954, 24.718555>,  <41.217953, 29.366390, 24.146055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.696175, 29.589954, 24.718555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.457294, 29.894463, 24.617508>,  <41.313965, 30.077168, 24.556879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.457294, 29.894463, 24.617508>,  <41.696175, 29.589954, 24.718555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.457294, 29.894463, 24.617508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280498, 0.096848, 0.954956,
		0.751446, 0.641161, 0.155697,
		-0.597202, 0.761271, -0.252621,
		41.278133, 30.122845, 24.541721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.706779, 30.070877, 25.290108>,  <41.696175, 29.589954, 24.718555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.706779, 30.070877, 25.290108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.384636, 30.218420, 25.104488>,  <41.191349, 30.306946, 24.993116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.384636, 30.218420, 25.104488>,  <41.706779, 30.070877, 25.290108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.384636, 30.218420, 25.104488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411377, 0.215863, 0.885535,
		0.426807, 0.904073, -0.022108,
		-0.805360, 0.368858, -0.464046,
		41.143028, 30.329077, 24.965275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.476307, 30.679543, 25.584723>,  <41.706779, 30.070877, 25.290108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.476307, 30.679543, 25.584723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.136662, 30.564114, 25.407759>,  <40.932873, 30.494856, 25.301580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.136662, 30.564114, 25.407759>,  <41.476307, 30.679543, 25.584723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.136662, 30.564114, 25.407759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483539, 0.087579, 0.870931,
		-0.212581, 0.953444, -0.213901,
		-0.849117, -0.288573, -0.442410,
		40.881927, 30.477541, 25.275036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.881332, 31.190914, 25.737274>,  <41.476307, 30.679543, 25.584723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.881332, 31.190914, 25.737274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.699234, 30.847616, 25.642477>,  <40.589977, 30.641638, 25.585598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.699234, 30.847616, 25.642477>,  <40.881332, 31.190914, 25.737274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.699234, 30.847616, 25.642477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532422, 0.049064, 0.845056,
		-0.713639, 0.510887, -0.479285,
		-0.455244, -0.858246, -0.236993,
		40.562660, 30.590141, 25.571379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.212749, 31.388811, 25.867548>,  <40.881332, 31.190914, 25.737274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.212749, 31.388811, 25.867548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.255684, 30.991123, 25.868645>,  <40.281445, 30.752510, 25.869303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.255684, 30.991123, 25.868645>,  <40.212749, 31.388811, 25.867548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.255684, 30.991123, 25.868645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673734, -0.070709, 0.735584,
		-0.731137, -0.080804, -0.677428,
		0.107338, -0.994219, 0.002742,
		40.287884, 30.692858, 25.869467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427628, 31.055492, 25.899540>,  <40.212749, 31.388811, 25.867548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.427628, 31.055492, 25.899540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.692070, 30.788607, 26.036802>,  <39.850735, 30.628475, 26.119160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.692070, 30.788607, 26.036802>,  <39.427628, 31.055492, 25.899540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.692070, 30.788607, 26.036802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584662, -0.171494, 0.792944,
		-0.470216, -0.724853, -0.503473,
		0.661111, -0.667217, 0.343155,
		39.890404, 30.588442, 26.139750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991520, 30.596663, 26.107878>,  <39.427628, 31.055492, 25.899540>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991520, 30.596663, 26.107878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.335114, 30.489141, 26.282183>,  <39.541271, 30.424629, 26.386766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.335114, 30.489141, 26.282183>,  <38.991520, 30.596663, 26.107878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.335114, 30.489141, 26.282183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511621, -0.417794, 0.750795,
		-0.019758, -0.867867, -0.496404,
		0.858984, -0.268804, 0.435764,
		39.592808, 30.408501, 26.412912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.824749, 29.968636, 26.394224>,  <38.991520, 30.596663, 26.107878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.824749, 29.968636, 26.394224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.161846, 30.073555, 26.582258>,  <39.364105, 30.136507, 26.695078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.161846, 30.073555, 26.582258>,  <38.824749, 29.968636, 26.394224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161846, 30.073555, 26.582258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389487, -0.305694, 0.868822,
		0.371593, -0.915287, -0.155460,
		0.842745, 0.262299, 0.470086,
		39.414669, 30.152245, 26.723284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962502, 29.442064, 26.864496>,  <38.824749, 29.968636, 26.394224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.962502, 29.442064, 26.864496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.135086, 29.768497, 27.018303>,  <39.238636, 29.964357, 27.110586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.135086, 29.768497, 27.018303>,  <38.962502, 29.442064, 26.864496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.135086, 29.768497, 27.018303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462372, -0.165945, 0.871019,
		0.774632, -0.553598, 0.305735,
		0.431459, 0.816083, 0.384514,
		39.264523, 30.013323, 27.133657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090912, 29.303280, 27.620241>,  <38.962502, 29.442064, 26.864496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090912, 29.303280, 27.620241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.096218, 29.701721, 27.585373>,  <39.099403, 29.940786, 27.564451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.096218, 29.701721, 27.585373>,  <39.090912, 29.303280, 27.620241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.096218, 29.701721, 27.585373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555785, 0.079819, 0.827485,
		0.831220, 0.037470, 0.554679,
		0.013268, 0.996105, -0.087173,
		39.100197, 30.000553, 27.559221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.209469, 29.547247, 28.372431>,  <39.090912, 29.303280, 27.620241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.209469, 29.547247, 28.372431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.063854, 29.863792, 28.175974>,  <38.976486, 30.053719, 28.058100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.063854, 29.863792, 28.175974>,  <39.209469, 29.547247, 28.372431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.063854, 29.863792, 28.175974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668005, 0.145622, 0.729769,
		0.649033, 0.593751, 0.475622,
		-0.364040, 0.791363, -0.491142,
		38.954643, 30.101202, 28.028631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.527779, 30.861139, 33.719852> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.299545, 31.132875, 33.535275>,  <39.162605, 31.295918, 33.424526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.299545, 31.132875, 33.535275>,  <39.527779, 30.861139, 33.719852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.299545, 31.132875, 33.535275> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407804, 0.253338, 0.877221,
		0.712831, 0.688708, 0.132486,
		-0.570585, 0.679339, -0.461445,
		39.128368, 31.336678, 33.396839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453999, 31.547125, 34.201912>,  <39.527779, 30.861139, 33.719852>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.453999, 31.547125, 34.201912> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.167892, 31.665903, 33.948860>,  <38.996227, 31.737169, 33.797031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.167892, 31.665903, 33.948860>,  <39.453999, 31.547125, 34.201912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.167892, 31.665903, 33.948860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548936, 0.321508, 0.771558,
		0.432503, 0.899142, -0.066962,
		-0.715269, 0.296943, -0.632625,
		38.953312, 31.754986, 33.759071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086437, 32.112045, 34.437866>,  <39.453999, 31.547125, 34.201912>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.086437, 32.112045, 34.437866> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.812664, 32.007637, 34.165565>,  <38.648399, 31.944992, 34.002186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.812664, 32.007637, 34.165565>,  <39.086437, 32.112045, 34.437866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.812664, 32.007637, 34.165565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715054, 0.422544, 0.556914,
		0.142282, 0.867944, -0.475846,
		-0.684436, -0.261017, -0.680747,
		38.607334, 31.929333, 33.961342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694462, 32.721680, 34.367794>,  <39.086437, 32.112045, 34.437866>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694462, 32.721680, 34.367794> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.493599, 32.393021, 34.259918>,  <38.373081, 32.195827, 34.195194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.493599, 32.393021, 34.259918>,  <38.694462, 32.721680, 34.367794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493599, 32.393021, 34.259918> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766297, 0.278252, 0.579107,
		-0.400778, 0.497468, -0.769352,
		-0.502161, -0.821646, -0.269690,
		38.342949, 32.146526, 34.179012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028168, 32.929199, 34.250778>,  <38.694462, 32.721680, 34.367794>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028168, 32.929199, 34.250778> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.005417, 32.535042, 34.314976>,  <37.991764, 32.298546, 34.353497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.005417, 32.535042, 34.314976>,  <38.028168, 32.929199, 34.250778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.005417, 32.535042, 34.314976> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618376, 0.160981, 0.769218,
		-0.783821, -0.055496, -0.618501,
		-0.056879, -0.985396, 0.160498,
		37.988354, 32.239422, 34.363125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393482, 32.826012, 34.209625>,  <38.028168, 32.929199, 34.250778>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.393482, 32.826012, 34.209625> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.522552, 32.505646, 34.411385>,  <37.599995, 32.313427, 34.532440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.522552, 32.505646, 34.411385>,  <37.393482, 32.826012, 34.209625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522552, 32.505646, 34.411385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733403, 0.125307, 0.668145,
		-0.598332, -0.585518, -0.546962,
		0.322673, -0.800916, 0.504396,
		37.619354, 32.265369, 34.562702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774849, 32.310074, 34.254658>,  <37.393482, 32.826012, 34.209625>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.774849, 32.310074, 34.254658> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.055008, 32.270500, 34.537403>,  <37.223103, 32.246758, 34.707050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.055008, 32.270500, 34.537403>,  <36.774849, 32.310074, 34.254658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055008, 32.270500, 34.537403> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689852, 0.160304, 0.705980,
		-0.183159, -0.982097, 0.044026,
		0.700398, -0.098935, 0.706863,
		37.265129, 32.240822, 34.749462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476864, 31.920076, 34.697712>,  <36.774849, 32.310074, 34.254658>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.476864, 31.920076, 34.697712> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.781170, 32.058678, 34.917229>,  <36.963753, 32.141838, 35.048939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.781170, 32.058678, 34.917229>,  <36.476864, 31.920076, 34.697712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.781170, 32.058678, 34.917229> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618012, 0.128485, 0.775598,
		0.198234, -0.929209, 0.311889,
		0.760766, 0.346501, 0.548792,
		37.009399, 32.162628, 35.081867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419930, 31.560074, 35.397545>,  <36.476864, 31.920076, 34.697712>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.419930, 31.560074, 35.397545> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.652203, 31.881260, 35.451290>,  <36.791569, 32.073971, 35.483536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.652203, 31.881260, 35.451290>,  <36.419930, 31.560074, 35.397545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652203, 31.881260, 35.451290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437611, 0.168679, 0.883201,
		0.686515, -0.571660, 0.449336,
		0.580684, 0.802965, 0.134364,
		36.826408, 32.122150, 35.491600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549923, 31.554630, 36.161438>,  <36.419930, 31.560074, 35.397545>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.549923, 31.554630, 36.161438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.615711, 31.917437, 36.006382>,  <36.655186, 32.135120, 35.913349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.615711, 31.917437, 36.006382>,  <36.549923, 31.554630, 36.161438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.615711, 31.917437, 36.006382> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283905, 0.419895, 0.862024,
		0.944641, -0.031727, 0.326569,
		0.164474, 0.907018, -0.387643,
		36.665054, 32.189541, 35.890091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776039, 31.874723, 36.689335>,  <36.549923, 31.554630, 36.161438>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.776039, 31.874723, 36.689335> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.659000, 32.182755, 36.462578>,  <36.588776, 32.367573, 36.326523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.659000, 32.182755, 36.462578>,  <36.776039, 31.874723, 36.689335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659000, 32.182755, 36.462578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429054, 0.424079, 0.797539,
		0.854575, 0.476585, 0.206321,
		-0.292599, 0.770080, -0.566889,
		36.571220, 32.413780, 36.292511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902409, 32.487949, 37.083126>,  <36.776039, 31.874723, 36.689335>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902409, 32.487949, 37.083126> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.601051, 32.563309, 36.831127>,  <36.420235, 32.608524, 36.679928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.601051, 32.563309, 36.831127>,  <36.902409, 32.487949, 37.083126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.601051, 32.563309, 36.831127> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571148, 0.287293, 0.768930,
		0.325859, 0.939132, -0.108842,
		-0.753396, 0.188398, -0.630000,
		36.375034, 32.619827, 36.642128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.581200, 33.304321, 37.069202>,  <36.902409, 32.487949, 37.083126>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.581200, 33.304321, 37.069202> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.343185, 32.993645, 36.986561>,  <36.200375, 32.807240, 36.936977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.343185, 32.993645, 36.986561>,  <36.581200, 33.304321, 37.069202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343185, 32.993645, 36.986561> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631949, 0.293330, 0.717355,
		-0.496558, 0.557416, -0.665370,
		-0.595038, -0.776689, -0.206603,
		36.164673, 32.760639, 36.924580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988930, 34.072254, 37.229774>,  <36.581200, 33.304321, 37.069202>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.988930, 34.072254, 37.229774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.050331, 34.429947, 37.397961>,  <37.087173, 34.644562, 37.498871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.050331, 34.429947, 37.397961>,  <36.988930, 34.072254, 37.229774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.050331, 34.429947, 37.397961> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060784, 0.416158, -0.907258,
		-0.986276, 0.164827, 0.009528,
		0.153506, 0.894229, 0.420465,
		37.096382, 34.698215, 37.524101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587204, 34.531513, 36.852863>,  <36.988930, 34.072254, 37.229774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587204, 34.531513, 36.852863> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.878571, 34.740715, 37.029896>,  <37.053391, 34.866238, 37.136116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.878571, 34.740715, 37.029896>,  <36.587204, 34.531513, 36.852863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.878571, 34.740715, 37.029896> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234269, 0.416914, -0.878237,
		-0.643842, 0.743403, 0.181162,
		0.728413, 0.523005, 0.442583,
		37.097095, 34.897617, 37.162670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515255, 35.315731, 36.776886>,  <36.587204, 34.531513, 36.852863>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515255, 35.315731, 36.776886> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.900589, 35.211578, 36.802769>,  <37.131790, 35.149086, 36.818298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.900589, 35.211578, 36.802769>,  <36.515255, 35.315731, 36.776886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.900589, 35.211578, 36.802769> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184825, 0.469198, -0.863535,
		0.194491, 0.843832, 0.500120,
		0.963334, -0.260384, 0.064707,
		37.189590, 35.133465, 36.822182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790611, 35.789436, 36.332138>,  <36.515255, 35.315731, 36.776886>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.790611, 35.789436, 36.332138> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.103992, 35.547749, 36.390255>,  <37.292023, 35.402737, 36.425125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.103992, 35.547749, 36.390255>,  <36.790611, 35.789436, 36.332138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103992, 35.547749, 36.390255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325215, 0.199405, -0.924377,
		0.529557, 0.771461, 0.352728,
		0.783457, -0.604223, 0.145295,
		37.339031, 35.366482, 36.433842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359287, 36.116989, 36.030468>,  <36.790611, 35.789436, 36.332138>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.359287, 36.116989, 36.030468> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.492130, 35.740227, 36.050560>,  <37.571838, 35.514172, 36.062614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.492130, 35.740227, 36.050560>,  <37.359287, 36.116989, 36.030468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.492130, 35.740227, 36.050560> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369038, 0.080743, -0.925900,
		0.868052, 0.326037, 0.374414,
		0.332109, -0.941902, 0.050231,
		37.591763, 35.457657, 36.065628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151287, 36.099812, 35.827339>,  <37.359287, 36.116989, 36.030468>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.151287, 36.099812, 35.827339> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.986813, 35.744423, 35.745811>,  <37.888126, 35.531189, 35.696896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.986813, 35.744423, 35.745811>,  <38.151287, 36.099812, 35.827339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986813, 35.744423, 35.745811> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298989, 0.079768, -0.950917,
		0.861123, -0.451941, 0.232844,
		-0.411185, -0.888474, -0.203815,
		37.863457, 35.477882, 35.684666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710789, 35.782585, 35.327354>,  <38.151287, 36.099812, 35.827339>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710789, 35.782585, 35.327354> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.408600, 35.522411, 35.295876>,  <38.227287, 35.366306, 35.276989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.408600, 35.522411, 35.295876>,  <38.710789, 35.782585, 35.327354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408600, 35.522411, 35.295876> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298504, -0.234786, -0.925079,
		0.583224, -0.722367, 0.371532,
		-0.755477, -0.650432, -0.078696,
		38.181957, 35.327282, 35.272266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.941067, 35.244217, 35.078938>,  <38.710789, 35.782585, 35.327354>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.941067, 35.244217, 35.078938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.557110, 35.214108, 34.970913>,  <38.326736, 35.196041, 34.906097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.557110, 35.214108, 34.970913>,  <38.941067, 35.244217, 35.078938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.557110, 35.214108, 34.970913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279708, -0.191604, -0.940772,
		0.019074, -0.978581, 0.204975,
		-0.959896, -0.075278, -0.270063,
		38.269142, 35.191525, 34.889893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935642, 34.683399, 34.621410>,  <38.941067, 35.244217, 35.078938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.935642, 34.683399, 34.621410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.597885, 34.866409, 34.509926>,  <38.395233, 34.976215, 34.443035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.597885, 34.866409, 34.509926>,  <38.935642, 34.683399, 34.621410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.597885, 34.866409, 34.509926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133147, -0.324695, -0.936400,
		-0.518921, -0.827795, 0.213251,
		-0.844389, 0.457524, -0.278710,
		38.344570, 35.003666, 34.426311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738129, 34.258083, 34.133984>,  <38.935642, 34.683399, 34.621410>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.738129, 34.258083, 34.133984> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.514523, 34.581944, 34.062454>,  <38.380360, 34.776260, 34.019535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.514523, 34.581944, 34.062454>,  <38.738129, 34.258083, 34.133984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.514523, 34.581944, 34.062454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017319, -0.204224, -0.978771,
		-0.828979, -0.550241, 0.100141,
		-0.559012, 0.809646, -0.178827,
		38.346821, 34.824837, 34.008808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.126648, 33.981636, 33.761307>,  <38.738129, 34.258083, 34.133984>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.126648, 33.981636, 33.761307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.118847, 34.376244, 33.696323>,  <38.114166, 34.613010, 33.657333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.118847, 34.376244, 33.696323>,  <38.126648, 33.981636, 33.761307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118847, 34.376244, 33.696323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016950, -0.162790, -0.986515,
		-0.999666, -0.016487, 0.019896,
		-0.019504, 0.986523, -0.162456,
		38.112995, 34.672199, 33.647587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641315, 34.080677, 33.165867>,  <38.126648, 33.981636, 33.761307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.641315, 34.080677, 33.165867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.856918, 34.417534, 33.172401>,  <37.986279, 34.619648, 33.176323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.856918, 34.417534, 33.172401>,  <37.641315, 34.080677, 33.165867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.856918, 34.417534, 33.172401> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065078, -0.022302, -0.997631,
		-0.839784, 0.538793, -0.066826,
		0.539007, 0.842143, 0.016335,
		38.018620, 34.670177, 33.177303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386189, 34.486088, 32.596420>,  <37.641315, 34.080677, 33.165867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.386189, 34.486088, 32.596420> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.751003, 34.633751, 32.667877>,  <37.969891, 34.722347, 32.710751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.751003, 34.633751, 32.667877>,  <37.386189, 34.486088, 32.596420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751003, 34.633751, 32.667877> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141939, 0.124535, -0.982010,
		-0.384760, 0.920987, 0.061183,
		0.912038, 0.369154, 0.178640,
		38.024616, 34.744495, 32.721470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437401, 35.040073, 32.114437>,  <37.386189, 34.486088, 32.596420>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437401, 35.040073, 32.114437> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.812229, 34.944439, 32.216206>,  <38.037128, 34.887058, 32.277267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.812229, 34.944439, 32.216206>,  <37.437401, 35.040073, 32.114437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812229, 34.944439, 32.216206> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254017, -0.033026, -0.966636,
		0.239512, 0.970437, 0.029784,
		0.937075, -0.239086, 0.254418,
		38.093353, 34.872711, 32.292530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923912, 35.547020, 31.775198>,  <37.437401, 35.040073, 32.114437>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923912, 35.547020, 31.775198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.118713, 35.201622, 31.827662>,  <38.235596, 34.994385, 31.859140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.118713, 35.201622, 31.827662>,  <37.923912, 35.547020, 31.775198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118713, 35.201622, 31.827662> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332610, 0.044503, -0.942014,
		0.807588, 0.502388, 0.308881,
		0.487003, -0.863496, 0.131159,
		38.264812, 34.942574, 31.867010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.327621, 36.256958, 31.966017>,  <37.923912, 35.547020, 31.775198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.327621, 36.256958, 31.966017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.164864, 36.598381, 31.835857>,  <38.067207, 36.803234, 31.757763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.164864, 36.598381, 31.835857>,  <38.327621, 36.256958, 31.966017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.164864, 36.598381, 31.835857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654467, -0.023890, 0.755713,
		0.637267, 0.520457, 0.568344,
		-0.406894, 0.853553, -0.325397,
		38.042797, 36.854446, 31.738237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336147, 36.601955, 32.500137>,  <38.327621, 36.256958, 31.966017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336147, 36.601955, 32.500137> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.055576, 36.767132, 32.267765>,  <37.887234, 36.866238, 32.128342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.055576, 36.767132, 32.267765>,  <38.336147, 36.601955, 32.500137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.055576, 36.767132, 32.267765> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662464, -0.077019, 0.745124,
		0.262952, 0.907494, 0.327583,
		-0.701426, 0.412944, -0.580930,
		37.845150, 36.891014, 32.093487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936241, 36.972118, 32.959110>,  <38.336147, 36.601955, 32.500137>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936241, 36.972118, 32.959110> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.687283, 36.986454, 32.646358>,  <37.537907, 36.995056, 32.458706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.687283, 36.986454, 32.646358>,  <37.936241, 36.972118, 32.959110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.687283, 36.986454, 32.646358> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779844, 0.056880, 0.623384,
		0.066817, 0.997738, -0.007450,
		-0.622398, 0.035843, -0.781880,
		37.500565, 36.997208, 32.411793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487030, 37.472229, 33.039474>,  <37.936241, 36.972118, 32.959110>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.487030, 37.472229, 33.039474> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.260109, 37.271526, 32.778275>,  <37.123955, 37.151104, 32.621555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.260109, 37.271526, 32.778275>,  <37.487030, 37.472229, 33.039474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.260109, 37.271526, 32.778275> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811662, 0.206669, 0.546345,
		-0.139177, 0.839958, -0.524500,
		-0.567305, -0.501755, -0.652999,
		37.089916, 37.120998, 32.582375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.734856, 37.892952, 32.844765>,  <37.487030, 37.472229, 33.039474>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.734856, 37.892952, 32.844765> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.676723, 37.504333, 32.769951>,  <36.641846, 37.271164, 32.725063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.676723, 37.504333, 32.769951>,  <36.734856, 37.892952, 32.844765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676723, 37.504333, 32.769951> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904628, 0.053929, 0.422777,
		-0.400659, 0.230638, -0.886723,
		-0.145328, -0.971544, -0.187034,
		36.633125, 37.212872, 32.713840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125301, 37.752674, 32.453529>,  <36.734856, 37.892952, 32.844765>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.125301, 37.752674, 32.453529> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.183113, 37.385143, 32.600422>,  <36.217800, 37.164623, 32.688557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.183113, 37.385143, 32.600422>,  <36.125301, 37.752674, 32.453529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183113, 37.385143, 32.600422> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826412, 0.092022, 0.555495,
		-0.544199, -0.383773, -0.746033,
		0.144532, -0.918831, 0.367233,
		36.226475, 37.109493, 32.710590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531147, 37.253227, 32.328545>,  <36.125301, 37.752674, 32.453529>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531147, 37.253227, 32.328545> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.704422, 37.092453, 32.651234>,  <35.808388, 36.995991, 32.844845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.704422, 37.092453, 32.651234>,  <35.531147, 37.253227, 32.328545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.704422, 37.092453, 32.651234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883068, -0.010140, 0.469135,
		-0.180381, -0.915613, -0.359327,
		0.433190, -0.401933, 0.806720,
		35.834377, 36.971874, 32.893250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121071, 36.712063, 32.518745>,  <35.531147, 37.253227, 32.328545>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.121071, 36.712063, 32.518745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.331833, 36.763081, 32.854866>,  <35.458290, 36.793690, 33.056538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.331833, 36.763081, 32.854866>,  <35.121071, 36.712063, 32.518745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331833, 36.763081, 32.854866> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842318, -0.053623, 0.536307,
		0.113463, -0.990382, 0.079179,
		0.526902, 0.127545, 0.840301,
		35.489902, 36.801342, 33.106956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750957, 36.327320, 33.025787>,  <35.121071, 36.712063, 32.518745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750957, 36.327320, 33.025787> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.988266, 36.551601, 33.256832>,  <35.130653, 36.686172, 33.395458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.988266, 36.551601, 33.256832>,  <34.750957, 36.327320, 33.025787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988266, 36.551601, 33.256832> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674722, -0.044996, 0.736699,
		0.439063, -0.826790, 0.351627,
		0.593274, 0.560707, 0.577609,
		35.166248, 36.719814, 33.430115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793770, 36.026085, 33.754372>,  <34.750957, 36.327320, 33.025787>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.793770, 36.026085, 33.754372> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.904217, 36.409103, 33.787498>,  <34.970486, 36.638916, 33.807373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.904217, 36.409103, 33.787498>,  <34.793770, 36.026085, 33.754372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.904217, 36.409103, 33.787498> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490900, 0.066426, 0.868680,
		0.826302, -0.280513, 0.488402,
		0.276119, 0.957549, 0.082816,
		34.987053, 36.696369, 33.812344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099976, 36.113247, 34.478081>,  <34.793770, 36.026085, 33.754372>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099976, 36.113247, 34.478081> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.973877, 36.469852, 34.347954>,  <34.898216, 36.683815, 34.269878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.973877, 36.469852, 34.347954>,  <35.099976, 36.113247, 34.478081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973877, 36.469852, 34.347954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542120, 0.112186, 0.832779,
		0.778926, 0.438890, 0.447939,
		-0.315246, 0.891510, -0.325316,
		34.879303, 36.737305, 34.250359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900085, 36.424198, 35.071144>,  <35.099976, 36.113247, 34.478081>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900085, 36.424198, 35.071144> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.763489, 36.692112, 34.807392>,  <34.681530, 36.852859, 34.649143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.763489, 36.692112, 34.807392>,  <34.900085, 36.424198, 35.071144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.763489, 36.692112, 34.807392> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622873, 0.364101, 0.692431,
		0.703858, 0.647164, 0.292854,
		-0.341487, 0.669784, -0.659376,
		34.661041, 36.893047, 34.609581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.047146, 36.260826, 29.732903> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.831936, 36.538162, 29.541145>,  <40.702812, 36.704563, 29.426092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.831936, 36.538162, 29.541145>,  <41.047146, 36.260826, 29.732903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.831936, 36.538162, 29.541145> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708937, -0.064528, 0.702313,
		0.456006, 0.717718, 0.526250,
		-0.538021, 0.693338, -0.479392,
		40.670528, 36.746162, 29.397327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.909927, 36.888046, 30.190628>,  <41.047146, 36.260826, 29.732903>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.909927, 36.888046, 30.190628> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.606621, 36.895325, 29.929951>,  <40.424637, 36.899693, 29.773544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.606621, 36.895325, 29.929951>,  <40.909927, 36.888046, 30.190628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.606621, 36.895325, 29.929951> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632484, 0.221905, 0.742107,
		0.158116, 0.974899, -0.156755,
		-0.758263, 0.018194, -0.651695,
		40.379143, 36.900784, 29.734442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.573708, 37.583828, 30.258625>,  <40.909927, 36.888046, 30.190628>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.573708, 37.583828, 30.258625> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316891, 37.325123, 30.093952>,  <40.162800, 37.169899, 29.995148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316891, 37.325123, 30.093952>,  <40.573708, 37.583828, 30.258625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.316891, 37.325123, 30.093952> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719207, 0.322090, 0.615630,
		-0.265569, 0.691343, -0.671951,
		-0.642040, -0.646764, -0.411681,
		40.124279, 37.131092, 29.970448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933273, 37.976692, 30.088226>,  <40.573708, 37.583828, 30.258625>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.933273, 37.976692, 30.088226> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821129, 37.592999, 30.073967>,  <39.753841, 37.362782, 30.065411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821129, 37.592999, 30.073967>,  <39.933273, 37.976692, 30.088226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.821129, 37.592999, 30.073967> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924338, 0.259778, 0.279492,
		-0.258836, 0.111312, -0.959486,
		-0.280364, -0.959231, -0.035650,
		39.737019, 37.305229, 30.063272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194389, 37.830360, 29.782942>,  <39.933273, 37.976692, 30.088226>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.194389, 37.830360, 29.782942> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241959, 37.498386, 30.000954>,  <39.270500, 37.299202, 30.131762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241959, 37.498386, 30.000954>,  <39.194389, 37.830360, 29.782942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.241959, 37.498386, 30.000954> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929096, 0.100585, 0.355898,
		-0.350196, -0.548710, -0.759131,
		0.118928, -0.829940, 0.545029,
		39.277637, 37.249405, 30.164463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481228, 37.617168, 29.940226>,  <39.194389, 37.830360, 29.782942>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481228, 37.617168, 29.940226> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700127, 37.404816, 30.199049>,  <38.831467, 37.277405, 30.354343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700127, 37.404816, 30.199049>,  <38.481228, 37.617168, 29.940226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700127, 37.404816, 30.199049> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799989, -0.104513, 0.590842,
		-0.246041, -0.840977, -0.481894,
		0.547249, -0.530882, 0.647057,
		38.864300, 37.245552, 30.393166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083870, 37.048851, 30.093939>,  <38.481228, 37.617168, 29.940226>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083870, 37.048851, 30.093939> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349022, 37.093044, 30.390150>,  <38.508114, 37.119560, 30.567877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349022, 37.093044, 30.390150>,  <38.083870, 37.048851, 30.093939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.349022, 37.093044, 30.390150> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692182, -0.286625, 0.662367,
		0.285433, -0.951651, -0.113525,
		0.662881, 0.110482, 0.740528,
		38.547886, 37.126190, 30.612309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059486, 36.430046, 30.509216>,  <38.083870, 37.048851, 30.093939>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.059486, 36.430046, 30.509216> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196323, 36.735676, 30.728003>,  <38.278423, 36.919052, 30.859274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196323, 36.735676, 30.728003>,  <38.059486, 36.430046, 30.509216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196323, 36.735676, 30.728003> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680576, -0.199890, 0.704884,
		0.647913, -0.613385, 0.451627,
		0.342089, 0.764070, 0.546966,
		38.298950, 36.964897, 30.892092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141842, 36.122219, 31.169989>,  <38.059486, 36.430046, 30.509216>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.141842, 36.122219, 31.169989> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143684, 36.514763, 31.246838>,  <38.144791, 36.750290, 31.292948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143684, 36.514763, 31.246838>,  <38.141842, 36.122219, 31.169989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.143684, 36.514763, 31.246838> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603684, -0.150435, 0.782902,
		0.797210, -0.119591, 0.591738,
		0.004610, 0.981360, 0.192124,
		38.145069, 36.809170, 31.304474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592422, 35.635029, 31.514626>,  <38.141842, 36.122219, 31.169989>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.592422, 35.635029, 31.514626> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561050, 35.238121, 31.553080>,  <38.542225, 34.999977, 31.576153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561050, 35.238121, 31.553080>,  <38.592422, 35.635029, 31.514626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.561050, 35.238121, 31.553080> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652982, -0.124001, -0.747154,
		0.753302, 0.004173, 0.657662,
		-0.078433, -0.992273, 0.096135,
		38.537521, 34.940437, 31.581921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289047, 35.326313, 31.489758>,  <38.592422, 35.635029, 31.514626>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.289047, 35.326313, 31.489758> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056259, 35.010456, 31.412010>,  <38.916584, 34.820942, 31.365362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056259, 35.010456, 31.412010>,  <39.289047, 35.326313, 31.489758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.056259, 35.010456, 31.412010> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530499, -0.187496, -0.826690,
		0.616343, -0.584222, 0.528020,
		-0.581972, -0.789639, -0.194367,
		38.881668, 34.773563, 31.353701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.635113, 34.742809, 31.583479>,  <39.289047, 35.326313, 31.489758>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.635113, 34.742809, 31.583479> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.343334, 34.638718, 31.330435>,  <39.168266, 34.576263, 31.178608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.343334, 34.638718, 31.330435>,  <39.635113, 34.742809, 31.583479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.343334, 34.638718, 31.330435> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683451, -0.315726, -0.658188,
		-0.028448, -0.912467, 0.408161,
		-0.729442, -0.260233, -0.632608,
		39.124500, 34.560646, 31.140652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.837948, 34.030640, 31.512747>,  <39.635113, 34.742809, 31.583479>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.837948, 34.030640, 31.512747> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.608971, 34.158298, 31.210634>,  <39.471584, 34.234894, 31.029366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.608971, 34.158298, 31.210634>,  <39.837948, 34.030640, 31.512747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.608971, 34.158298, 31.210634> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663607, -0.360701, -0.655378,
		-0.481592, -0.876379, -0.005305,
		-0.572446, 0.319145, -0.755282,
		39.437237, 34.254044, 30.984049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929375, 33.550415, 31.070694>,  <39.837948, 34.030640, 31.512747>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.929375, 33.550415, 31.070694> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775482, 33.840485, 30.842272>,  <39.683147, 34.014526, 30.705217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775482, 33.840485, 30.842272>,  <39.929375, 33.550415, 31.070694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775482, 33.840485, 30.842272> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683436, -0.192032, -0.704300,
		-0.620401, -0.661246, -0.421730,
		-0.384730, 0.725174, -0.571056,
		39.660065, 34.058037, 30.670956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.969833, 33.299068, 30.422756>,  <39.929375, 33.550415, 31.070694>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.969833, 33.299068, 30.422756> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.935837, 33.695858, 30.385302>,  <39.915440, 33.933933, 30.362829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.935837, 33.695858, 30.385302>,  <39.969833, 33.299068, 30.422756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.935837, 33.695858, 30.385302> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518772, -0.036181, -0.854147,
		-0.850678, -0.121168, -0.511533,
		-0.084988, 0.991972, -0.093638,
		39.910339, 33.993450, 30.357210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.921436, 33.476295, 29.721891>,  <39.969833, 33.299068, 30.422756>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.921436, 33.476295, 29.721891> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.077972, 33.800426, 29.896347>,  <40.171894, 33.994907, 30.001020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.077972, 33.800426, 29.896347>,  <39.921436, 33.476295, 29.721891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.077972, 33.800426, 29.896347> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653559, 0.088921, -0.751634,
		-0.647854, 0.579186, -0.494802,
		0.391337, 0.810331, 0.436140,
		40.195374, 34.043526, 30.027189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.234600, 33.755417, 29.190773>,  <39.921436, 33.476295, 29.721891>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.234600, 33.755417, 29.190773> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.391453, 33.987301, 29.476477>,  <40.485565, 34.126431, 29.647900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.391453, 33.987301, 29.476477>,  <40.234600, 33.755417, 29.190773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.391453, 33.987301, 29.476477> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783084, 0.197069, -0.589867,
		-0.482710, 0.790633, -0.376684,
		0.392136, 0.579710, 0.714259,
		40.509094, 34.161213, 29.690754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.326420, 34.364445, 28.800745>,  <40.234600, 33.755417, 29.190773>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.326420, 34.364445, 28.800745> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.583279, 34.395523, 29.105797>,  <40.737396, 34.414169, 29.288828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.583279, 34.395523, 29.105797>,  <40.326420, 34.364445, 28.800745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.583279, 34.395523, 29.105797> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743151, 0.180972, -0.644186,
		-0.188062, 0.980415, 0.058475,
		0.642152, 0.077692, 0.762631,
		40.775925, 34.418831, 29.334585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.674053, 34.951183, 28.728867>,  <40.326420, 34.364445, 28.800745>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.674053, 34.951183, 28.728867> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.915607, 34.736771, 28.964830>,  <41.060539, 34.608124, 29.106409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.915607, 34.736771, 28.964830>,  <40.674053, 34.951183, 28.728867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.915607, 34.736771, 28.964830> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786881, 0.282952, -0.548413,
		0.127049, 0.795367, 0.592663,
		0.603885, -0.536031, 0.589910,
		41.096771, 34.575962, 29.141804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.353592, 35.200161, 28.678932>,  <40.674053, 34.951183, 28.728867>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.353592, 35.200161, 28.678932> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.415340, 34.826706, 28.808235>,  <41.452389, 34.602634, 28.885817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.415340, 34.826706, 28.808235>,  <41.353592, 35.200161, 28.678932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.415340, 34.826706, 28.808235> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800932, -0.073319, -0.594250,
		0.578513, 0.350641, 0.736460,
		0.154372, -0.933635, 0.323256,
		41.461651, 34.546616, 28.905212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.984562, 35.121597, 28.644320>,  <41.353592, 35.200161, 28.678932>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.984562, 35.121597, 28.644320> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.895199, 34.731876, 28.655809>,  <41.841579, 34.498043, 28.662703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.895199, 34.731876, 28.655809>,  <41.984562, 35.121597, 28.644320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.895199, 34.731876, 28.655809> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798023, -0.199751, -0.568558,
		0.559685, -0.104097, 0.822141,
		-0.223409, -0.974302, 0.028726,
		41.828175, 34.439587, 28.664427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.549175, 34.791840, 28.672876>,  <41.984562, 35.121597, 28.644320>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.549175, 34.791840, 28.672876> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.324997, 34.473400, 28.581551>,  <42.190491, 34.282337, 28.526754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.324997, 34.473400, 28.581551>,  <42.549175, 34.791840, 28.672876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.324997, 34.473400, 28.581551> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742334, -0.360653, -0.564686,
		0.367202, -0.485964, 0.793096,
		-0.560449, -0.796096, -0.228315,
		42.156860, 34.234570, 28.513056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.964245, 34.262810, 28.748833>,  <42.549175, 34.791840, 28.672876>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.964245, 34.262810, 28.748833> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.697365, 34.119579, 28.487570>,  <42.537235, 34.033638, 28.330812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.697365, 34.119579, 28.487570>,  <42.964245, 34.262810, 28.748833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.697365, 34.119579, 28.487570> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744152, -0.281800, -0.605663,
		0.032816, -0.890150, 0.454485,
		-0.667204, -0.358081, -0.653159,
		42.497204, 34.012154, 28.291622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.114838, 32.831032, 25.448545> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.379387, 32.759201, 25.739843>,  <38.538116, 32.716103, 25.914623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.379387, 32.759201, 25.739843>,  <38.114838, 32.831032, 25.448545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379387, 32.759201, 25.739843> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746477, -0.252386, 0.615689,
		0.073234, -0.950816, -0.300973,
		0.661369, -0.179580, 0.728246,
		38.577797, 32.705326, 25.958317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951824, 32.139198, 25.725513>,  <38.114838, 32.831032, 25.448545>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.951824, 32.139198, 25.725513> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.157532, 32.374817, 25.974848>,  <38.280956, 32.516190, 26.124449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.157532, 32.374817, 25.974848>,  <37.951824, 32.139198, 25.725513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.157532, 32.374817, 25.974848> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738974, -0.064514, 0.670638,
		0.435252, -0.805519, 0.402114,
		0.514270, 0.589048, 0.623337,
		38.311813, 32.551533, 26.161848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692337, 31.968395, 26.361923>,  <37.951824, 32.139198, 25.725513>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692337, 31.968395, 26.361923> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.884609, 32.306778, 26.454275>,  <37.999973, 32.509808, 26.509686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.884609, 32.306778, 26.454275>,  <37.692337, 31.968395, 26.361923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.884609, 32.306778, 26.454275> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640543, 0.158915, 0.751300,
		0.598878, -0.509019, 0.618259,
		0.480676, 0.845958, 0.230878,
		38.028812, 32.560566, 26.523539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803776, 31.947561, 27.075315>,  <37.692337, 31.968395, 26.361923>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803776, 31.947561, 27.075315> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.829887, 32.335201, 26.980169>,  <37.845554, 32.567787, 26.923080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.829887, 32.335201, 26.980169>,  <37.803776, 31.947561, 27.075315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829887, 32.335201, 26.980169> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573007, 0.231558, 0.786158,
		0.816947, 0.084983, 0.570417,
		0.065274, 0.969102, -0.237867,
		37.849468, 32.625931, 26.908810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928417, 32.285717, 27.740658>,  <37.803776, 31.947561, 27.075315>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928417, 32.285717, 27.740658> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.796883, 32.581066, 27.505140>,  <37.717960, 32.758274, 27.363831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.796883, 32.581066, 27.505140>,  <37.928417, 32.285717, 27.740658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796883, 32.581066, 27.505140> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564991, 0.345771, 0.749151,
		0.756738, 0.579011, 0.303470,
		-0.328835, 0.738369, -0.588794,
		37.698231, 32.802578, 27.328503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.002594, 32.990311, 28.086603>,  <37.928417, 32.285717, 27.740658>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.002594, 32.990311, 28.086603> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.725307, 33.092819, 27.817152>,  <37.558933, 33.154324, 27.655481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.725307, 33.092819, 27.817152>,  <38.002594, 32.990311, 28.086603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725307, 33.092819, 27.817152> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533768, 0.445486, 0.718773,
		0.484293, 0.857826, -0.172028,
		-0.693219, 0.256274, -0.673626,
		37.517342, 33.169701, 27.615065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781052, 33.704002, 28.126572>,  <38.002594, 32.990311, 28.086603>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.781052, 33.704002, 28.126572> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.487183, 33.476238, 27.979046>,  <37.310860, 33.339581, 27.890530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.487183, 33.476238, 27.979046>,  <37.781052, 33.704002, 28.126572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.487183, 33.476238, 27.979046> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608619, 0.313008, 0.729115,
		-0.299721, 0.760132, -0.576512,
		-0.734677, -0.569408, -0.368816,
		37.266781, 33.305416, 27.868401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119755, 34.083538, 28.326523>,  <37.781052, 33.704002, 28.126572>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.119755, 34.083538, 28.326523> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.948318, 33.755238, 28.175434>,  <36.845455, 33.558258, 28.084782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.948318, 33.755238, 28.175434>,  <37.119755, 34.083538, 28.326523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948318, 33.755238, 28.175434> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788147, 0.135228, 0.600448,
		-0.441742, 0.555046, -0.704832,
		-0.428589, -0.820754, -0.377722,
		36.819740, 33.509010, 28.062117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.456451, 34.177059, 28.066624>,  <37.119755, 34.083538, 28.326523>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.456451, 34.177059, 28.066624> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.442375, 33.784256, 28.140829>,  <36.433929, 33.548573, 28.185352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.442375, 33.784256, 28.140829>,  <36.456451, 34.177059, 28.066624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.442375, 33.784256, 28.140829> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798724, 0.139204, 0.585374,
		-0.600668, -0.127575, -0.789254,
		-0.035188, -0.982012, 0.185512,
		36.431820, 33.489651, 28.196484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765583, 33.977058, 27.947548>,  <36.456451, 34.177059, 28.066624>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765583, 33.977058, 27.947548> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.926491, 33.689342, 28.174107>,  <36.023037, 33.516712, 28.310041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.926491, 33.689342, 28.174107>,  <35.765583, 33.977058, 27.947548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.926491, 33.689342, 28.174107> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811845, 0.005705, 0.583845,
		-0.423183, -0.694690, -0.581654,
		0.402273, -0.719286, 0.566395,
		36.047173, 33.473557, 28.344025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.238174, 33.479961, 28.024534>,  <35.765583, 33.977058, 27.947548>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.238174, 33.479961, 28.024534> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.501381, 33.423988, 28.320488>,  <35.659306, 33.390404, 28.498060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.501381, 33.423988, 28.320488>,  <35.238174, 33.479961, 28.024534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501381, 33.423988, 28.320488> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752935, -0.109029, 0.649000,
		-0.010149, -0.984140, -0.177105,
		0.658016, -0.139935, 0.739887,
		35.698788, 33.382008, 28.542454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949459, 32.969826, 28.449764>,  <35.238174, 33.479961, 28.024534>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.949459, 32.969826, 28.449764> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.209259, 33.133564, 28.706074>,  <35.365139, 33.231808, 28.859859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.209259, 33.133564, 28.706074>,  <34.949459, 32.969826, 28.449764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.209259, 33.133564, 28.706074> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604912, -0.232412, 0.761621,
		0.460687, -0.882283, 0.096665,
		0.649499, 0.409343, 0.640773,
		35.404110, 33.256367, 28.898306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884239, 32.512680, 29.030397>,  <34.949459, 32.969826, 28.449764>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884239, 32.512680, 29.030397> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.067524, 32.848602, 29.146860>,  <35.177494, 33.050156, 29.216738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.067524, 32.848602, 29.146860>,  <34.884239, 32.512680, 29.030397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.067524, 32.848602, 29.146860> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646402, 0.090007, 0.757669,
		0.610086, -0.535379, 0.584092,
		0.458213, 0.839802, 0.291158,
		35.204987, 33.100544, 29.234207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971474, 32.471523, 29.725992>,  <34.884239, 32.512680, 29.030397>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.971474, 32.471523, 29.725992> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.976883, 32.859955, 29.630648>,  <34.980129, 33.093014, 29.573441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.976883, 32.859955, 29.630648>,  <34.971474, 32.471523, 29.725992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.976883, 32.859955, 29.630648> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667961, 0.186164, 0.720536,
		0.744074, 0.149474, 0.651162,
		0.013521, 0.971082, -0.238363,
		34.980938, 33.151279, 29.559139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774883, 32.323196, 29.987614>,  <34.971474, 32.471523, 29.725992>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.774883, 32.323196, 29.987614> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.902924, 32.004436, 30.192547>,  <35.979748, 31.813179, 30.315506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.902924, 32.004436, 30.192547>,  <35.774883, 32.323196, 29.987614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902924, 32.004436, 30.192547> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612997, -0.238106, -0.753353,
		0.722338, 0.555203, 0.412282,
		0.320097, -0.796903, 0.512331,
		35.998951, 31.765366, 30.346247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.527798, 32.350918, 30.007004>,  <35.774883, 32.323196, 29.987614>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.527798, 32.350918, 30.007004> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.454288, 31.964191, 30.077993>,  <36.410183, 31.732157, 30.120588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.454288, 31.964191, 30.077993>,  <36.527798, 32.350918, 30.007004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454288, 31.964191, 30.077993> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594025, -0.253085, -0.763598,
		0.783174, -0.034905, 0.620822,
		-0.183774, -0.966814, 0.177475,
		36.399155, 31.674147, 30.131235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132019, 31.962236, 30.043262>,  <36.527798, 32.350918, 30.007004>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.132019, 31.962236, 30.043262> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.892426, 31.648628, 29.978113>,  <36.748669, 31.460463, 29.939024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.892426, 31.648628, 29.978113>,  <37.132019, 31.962236, 30.043262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.892426, 31.648628, 29.978113> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606958, -0.311849, -0.730994,
		0.522323, -0.536711, 0.662661,
		-0.598983, -0.784022, -0.162875,
		36.712730, 31.413422, 29.929251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496346, 31.336973, 30.198624>,  <37.132019, 31.962236, 30.043262>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496346, 31.336973, 30.198624> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.206478, 31.247013, 29.938078>,  <37.032558, 31.193037, 29.781752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.206478, 31.247013, 29.938078>,  <37.496346, 31.336973, 30.198624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206478, 31.247013, 29.938078> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681678, -0.372291, -0.629853,
		-0.100842, -0.900455, 0.423097,
		-0.724670, -0.224900, -0.651363,
		36.989079, 31.179543, 29.742668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670013, 30.643171, 30.048742>,  <37.496346, 31.336973, 30.198624>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.670013, 30.643171, 30.048742> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.422474, 30.745728, 29.751747>,  <37.273949, 30.807262, 29.573549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.422474, 30.745728, 29.751747>,  <37.670013, 30.643171, 30.048742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.422474, 30.745728, 29.751747> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591806, -0.469366, -0.655333,
		-0.516523, -0.844961, 0.138731,
		-0.618846, 0.256393, -0.742490,
		37.236820, 30.822645, 29.528999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622471, 30.041403, 29.692129>,  <37.670013, 30.643171, 30.048742>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.622471, 30.041403, 29.692129> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.472374, 30.321630, 29.449347>,  <37.382317, 30.489767, 29.303677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.472374, 30.321630, 29.449347>,  <37.622471, 30.041403, 29.692129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.472374, 30.321630, 29.449347> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473505, -0.418045, -0.775262,
		-0.796859, -0.578309, -0.174854,
		-0.375244, 0.700569, -0.606955,
		37.359802, 30.531801, 29.267260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411713, 29.642614, 29.170212>,  <37.622471, 30.041403, 29.692129>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.411713, 29.642614, 29.170212> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.468319, 30.013172, 29.030632>,  <37.502285, 30.235506, 28.946884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.468319, 30.013172, 29.030632>,  <37.411713, 29.642614, 29.170212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.468319, 30.013172, 29.030632> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582975, -0.362881, -0.726951,
		-0.800070, -0.100552, -0.591419,
		0.141518, 0.926395, -0.348950,
		37.510773, 30.291090, 28.925947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.475830, 29.678822, 28.359352>,  <37.411713, 29.642614, 29.170212>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.475830, 29.678822, 28.359352> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.647373, 30.030310, 28.443186>,  <37.750301, 30.241203, 28.493486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.647373, 30.030310, 28.443186>,  <37.475830, 29.678822, 28.359352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.647373, 30.030310, 28.443186> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671166, -0.154646, -0.724997,
		-0.604660, 0.451589, -0.656090,
		0.428862, 0.878722, 0.209583,
		37.776031, 30.293926, 28.506062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563591, 30.129686, 27.732586>,  <37.475830, 29.678822, 28.359352>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.563591, 30.129686, 27.732586> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.816349, 30.286203, 28.000196>,  <37.968006, 30.380114, 28.160763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.816349, 30.286203, 28.000196>,  <37.563591, 30.129686, 27.732586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816349, 30.286203, 28.000196> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712445, 0.046623, -0.700177,
		-0.305167, 0.919084, -0.249315,
		0.631898, 0.391294, 0.669025,
		38.005917, 30.403591, 28.200903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.966362, 30.562424, 27.337694>,  <37.563591, 30.129686, 27.732586>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.966362, 30.562424, 27.337694> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.194244, 30.523890, 27.664167>,  <38.330975, 30.500769, 27.860052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.194244, 30.523890, 27.664167>,  <37.966362, 30.562424, 27.337694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.194244, 30.523890, 27.664167> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805764, -0.130043, -0.577784,
		0.161798, 0.986817, 0.003535,
		0.569707, -0.096333, 0.816182,
		38.365158, 30.494989, 27.909021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.465950, 31.089006, 27.390549>,  <37.966362, 30.562424, 27.337694>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.465950, 31.089006, 27.390549> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.617447, 30.781034, 27.595980>,  <38.708347, 30.596252, 27.719238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.617447, 30.781034, 27.595980>,  <38.465950, 31.089006, 27.390549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.617447, 30.781034, 27.595980> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794214, -0.014514, -0.607464,
		0.475158, 0.637965, 0.605991,
		0.378746, -0.769929, 0.513578,
		38.731071, 30.550056, 27.750053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161320, 31.299063, 27.489302>,  <38.465950, 31.089006, 27.390549>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161320, 31.299063, 27.489302> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.120522, 30.901163, 27.485907>,  <39.096043, 30.662424, 27.483870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.120522, 30.901163, 27.485907>,  <39.161320, 31.299063, 27.489302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120522, 30.901163, 27.485907> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782037, -0.074907, -0.618714,
		0.614829, -0.069747, 0.785571,
		-0.101998, -0.994748, -0.008490,
		39.089924, 30.602739, 27.483360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.944698, 31.086466, 27.512304>,  <39.161320, 31.299063, 27.489302>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.944698, 31.086466, 27.512304> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.719212, 30.776733, 27.397318>,  <39.583920, 30.590895, 27.328325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.719212, 30.776733, 27.397318>,  <39.944698, 31.086466, 27.512304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.719212, 30.776733, 27.397318> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694920, -0.256512, -0.671779,
		0.446440, -0.578460, 0.682697,
		-0.563717, -0.774329, -0.287467,
		39.550095, 30.544436, 27.311077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.422970, 30.578924, 27.489851>,  <39.944698, 31.086466, 27.512304>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.422970, 30.578924, 27.489851> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.130413, 30.455063, 27.246811>,  <39.954880, 30.380745, 27.100986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.130413, 30.455063, 27.246811>,  <40.422970, 30.578924, 27.489851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.130413, 30.455063, 27.246811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646523, -0.031387, -0.762248,
		0.216963, -0.950331, 0.223155,
		-0.731392, -0.309655, -0.607601,
		39.910995, 30.362165, 27.064531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.655205, 30.047520, 27.952278>,  <40.422970, 30.578924, 27.489851>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.655205, 30.047520, 27.952278> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.997604, 30.020557, 28.157303>,  <41.203045, 30.004381, 28.280317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.997604, 30.020557, 28.157303>,  <40.655205, 30.047520, 27.952278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.997604, 30.020557, 28.157303> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478086, 0.274042, 0.834467,
		-0.196710, -0.959353, 0.202355,
		0.856002, -0.067405, 0.512560,
		41.254406, 30.000336, 28.311071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.445992, 29.714600, 28.584923>,  <40.655205, 30.047520, 27.952278>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.445992, 29.714600, 28.584923> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.790447, 29.903278, 28.660746>,  <40.997120, 30.016485, 28.706240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.790447, 29.903278, 28.660746>,  <40.445992, 29.714600, 28.584923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.790447, 29.903278, 28.660746> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363853, 0.311489, 0.877830,
		0.355030, -0.824907, 0.439867,
		0.861142, 0.471703, 0.189557,
		41.048790, 30.044788, 28.717613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.653324, 29.469488, 29.316229>,  <40.445992, 29.714600, 28.584923>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.653324, 29.469488, 29.316229> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.834393, 29.818405, 29.242260>,  <40.943031, 30.027756, 29.197878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.834393, 29.818405, 29.242260>,  <40.653324, 29.469488, 29.316229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.834393, 29.818405, 29.242260> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333283, 0.357872, 0.872267,
		0.827051, -0.333216, 0.452718,
		0.452668, 0.872293, -0.184924,
		40.970192, 30.080093, 29.186783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.910179, 29.638931, 29.968313>,  <40.653324, 29.469488, 29.316229>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.910179, 29.638931, 29.968313> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.893951, 29.973335, 29.749428>,  <40.884216, 30.173977, 29.618097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.893951, 29.973335, 29.749428>,  <40.910179, 29.638931, 29.968313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.893951, 29.973335, 29.749428> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338069, 0.503879, 0.794868,
		0.940246, 0.217243, 0.262187,
		-0.040569, 0.836009, -0.547213,
		40.881783, 30.224138, 29.585264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.321583, 30.080561, 30.410910>,  <40.910179, 29.638931, 29.968313>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.321583, 30.080561, 30.410910> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.115475, 30.340725, 30.187675>,  <40.991810, 30.496824, 30.053736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.115475, 30.340725, 30.187675>,  <41.321583, 30.080561, 30.410910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.115475, 30.340725, 30.187675> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243362, 0.513338, 0.822958,
		0.821747, 0.559865, -0.106224,
		-0.515274, 0.650412, -0.558083,
		40.960892, 30.535849, 30.020250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.465591, 30.746500, 30.591000>,  <41.321583, 30.080561, 30.410910>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.465591, 30.746500, 30.591000> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.119312, 30.799980, 30.398045>,  <40.911545, 30.832067, 30.282272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.119312, 30.799980, 30.398045>,  <41.465591, 30.746500, 30.591000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.119312, 30.799980, 30.398045> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415455, 0.345654, 0.841380,
		0.279231, 0.928788, -0.243685,
		-0.865695, 0.133700, -0.482387,
		40.859604, 30.840090, 30.253328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.333145, 31.468309, 30.618242>,  <41.465591, 30.746500, 30.591000>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.333145, 31.468309, 30.618242> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.999516, 31.253691, 30.566969>,  <40.799335, 31.124920, 30.536205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.999516, 31.253691, 30.566969>,  <41.333145, 31.468309, 30.618242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.999516, 31.253691, 30.566969> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366428, 0.365172, 0.855792,
		-0.412365, 0.760766, -0.501188,
		-0.834078, -0.536548, -0.128182,
		40.749290, 31.092726, 30.528515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.728764, 31.878986, 30.830954>,  <41.333145, 31.468309, 30.618242>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.728764, 31.878986, 30.830954> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.532040, 31.531055, 30.815315>,  <40.414005, 31.322298, 30.805931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.532040, 31.531055, 30.815315>,  <40.728764, 31.878986, 30.830954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.532040, 31.531055, 30.815315> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567470, 0.286148, 0.772073,
		-0.660382, 0.401898, -0.634330,
		-0.491806, -0.869826, -0.039098,
		40.384499, 31.270107, 30.803585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064693, 32.113487, 30.922024>,  <40.728764, 31.878986, 30.830954>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.064693, 32.113487, 30.922024> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.079773, 31.724888, 31.015631>,  <40.088821, 31.491728, 31.071795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.079773, 31.724888, 31.015631>,  <40.064693, 32.113487, 30.922024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.079773, 31.724888, 31.015631> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536042, 0.177979, 0.825216,
		-0.843349, -0.156552, -0.514056,
		0.037698, -0.971501, 0.234017,
		40.091084, 31.433437, 31.085836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436085, 31.981489, 31.210382>,  <40.064693, 32.113487, 30.922024>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.436085, 31.981489, 31.210382> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.644356, 31.664772, 31.338106>,  <39.769318, 31.474741, 31.414740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.644356, 31.664772, 31.338106>,  <39.436085, 31.981489, 31.210382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.644356, 31.664772, 31.338106> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540439, -0.016145, 0.841229,
		-0.660924, -0.610576, -0.436321,
		0.520678, -0.791793, 0.319308,
		39.800560, 31.427235, 31.433899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933582, 31.503046, 31.401684>,  <39.436085, 31.981489, 31.210382>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933582, 31.503046, 31.401684> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.263870, 31.396185, 31.600403>,  <39.462044, 31.332067, 31.719635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.263870, 31.396185, 31.600403>,  <38.933582, 31.503046, 31.401684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263870, 31.396185, 31.600403> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498561, 0.066317, 0.864314,
		-0.263851, -0.961369, -0.078433,
		0.825724, -0.267154, 0.496798,
		39.511589, 31.316038, 31.749443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651630, 30.977142, 31.773457>,  <38.933582, 31.503046, 31.401684>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651630, 30.977142, 31.773457> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.984737, 31.119967, 31.942690>,  <39.184601, 31.205662, 32.044231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.984737, 31.119967, 31.942690>,  <38.651630, 30.977142, 31.773457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984737, 31.119967, 31.942690> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477407, 0.076228, 0.875370,
		0.280312, -0.930965, 0.233945,
		0.832771, 0.357063, 0.423081,
		39.234570, 31.227085, 32.069614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679920, 30.616114, 32.346577>,  <38.651630, 30.977142, 31.773457>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.679920, 30.616114, 32.346577> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.913139, 30.937632, 32.393856>,  <39.053070, 31.130543, 32.422226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.913139, 30.937632, 32.393856>,  <38.679920, 30.616114, 32.346577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913139, 30.937632, 32.393856> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313280, 0.088192, 0.945557,
		0.749610, -0.588331, 0.303233,
		0.583044, 0.803796, 0.118203,
		39.088051, 31.178770, 32.429317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927456, 30.591803, 33.131355>,  <38.679920, 30.616114, 32.346577>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.927456, 30.591803, 33.131355> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.991219, 30.966309, 33.006134>,  <39.029476, 31.191011, 32.931004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.991219, 30.966309, 33.006134>,  <38.927456, 30.591803, 33.131355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.991219, 30.966309, 33.006134> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172367, 0.338629, 0.924997,
		0.972049, -0.093493, 0.215361,
		0.159409, 0.936264, -0.313049,
		39.039040, 31.247189, 32.912220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.295895, 32.936489, 28.397430> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.967529, 33.111397, 28.250513>,  <42.770512, 33.216343, 28.162363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.967529, 33.111397, 28.250513>,  <43.295895, 32.936489, 28.397430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.967529, 33.111397, 28.250513> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114859, -0.503603, -0.856266,
		-0.559389, -0.745103, 0.363188,
		-0.820908, 0.437270, -0.367292,
		42.721256, 33.242577, 28.140326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.895126, 32.421642, 28.072462>,  <43.295895, 32.936489, 28.397430>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.895126, 32.421642, 28.072462> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.852833, 32.784477, 27.909481>,  <42.827457, 33.002178, 27.811693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.852833, 32.784477, 27.909481>,  <42.895126, 32.421642, 28.072462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.852833, 32.784477, 27.909481> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346173, -0.350541, -0.870221,
		-0.932194, -0.233058, -0.276946,
		-0.105731, 0.907086, -0.407451,
		42.821114, 33.056602, 27.787247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.850071, 32.249138, 27.378670>,  <42.895126, 32.421642, 28.072462>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.850071, 32.249138, 27.378670> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.910961, 32.644444, 27.373474>,  <42.947495, 32.881626, 27.370358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.910961, 32.644444, 27.373474>,  <42.850071, 32.249138, 27.378670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.910961, 32.644444, 27.373474> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529262, -0.092610, -0.843389,
		-0.834690, 0.121514, -0.537147,
		0.152229, 0.988260, -0.012988,
		42.956631, 32.940922, 27.369577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.768639, 32.468746, 26.697729>,  <42.850071, 32.249138, 27.378670>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.768639, 32.468746, 26.697729> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.001266, 32.736633, 26.882444>,  <43.140842, 32.897366, 26.993273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.001266, 32.736633, 26.882444>,  <42.768639, 32.468746, 26.697729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.001266, 32.736633, 26.882444> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666183, -0.066299, -0.742836,
		-0.466875, 0.739650, -0.484712,
		0.581574, 0.669719, 0.461789,
		43.175739, 32.937550, 27.020981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.038799, 32.853783, 26.171968>,  <42.768639, 32.468746, 26.697729>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.038799, 32.853783, 26.171968> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.292744, 32.904942, 26.476755>,  <43.445110, 32.935638, 26.659626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.292744, 32.904942, 26.476755>,  <43.038799, 32.853783, 26.171968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.292744, 32.904942, 26.476755> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772331, -0.132287, -0.621294,
		0.021334, 0.982925, -0.182766,
		0.634863, 0.127901, 0.761965,
		43.483204, 32.943314, 26.705345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.430321, 33.499008, 26.065123>,  <43.038799, 32.853783, 26.171968>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.430321, 33.499008, 26.065123> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.674572, 33.308861, 26.318468>,  <43.821125, 33.194771, 26.470476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.674572, 33.308861, 26.318468>,  <43.430321, 33.499008, 26.065123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.674572, 33.308861, 26.318468> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761769, 0.134024, -0.633834,
		0.216421, 0.869516, 0.443963,
		0.610631, -0.475372, 0.633365,
		43.857761, 33.166248, 26.508478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.132908, 33.734585, 25.919153>,  <43.430321, 33.499008, 26.065123>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.132908, 33.734585, 25.919153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.194424, 33.392651, 26.117384>,  <44.231335, 33.187489, 26.236322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.194424, 33.392651, 26.117384>,  <44.132908, 33.734585, 25.919153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.194424, 33.392651, 26.117384> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798459, -0.187938, -0.571963,
		0.582075, 0.483662, 0.653651,
		0.153790, -0.854839, 0.495579,
		44.240562, 33.136200, 26.266058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.808659, 33.719265, 26.090044>,  <44.132908, 33.734585, 25.919153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.808659, 33.719265, 26.090044> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.699406, 33.335709, 26.120840>,  <44.633854, 33.105576, 26.139318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.699406, 33.335709, 26.120840>,  <44.808659, 33.719265, 26.090044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.699406, 33.335709, 26.120840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765727, -0.265159, -0.585964,
		0.582290, -0.101091, 0.806672,
		-0.273132, -0.958891, 0.076991,
		44.617466, 33.048042, 26.143938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.518894, 33.333870, 26.221643>,  <44.808659, 33.719265, 26.090044>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.518894, 33.333870, 26.221643> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.248333, 33.071926, 26.086802>,  <45.085999, 32.914761, 26.005896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.248333, 33.071926, 26.086802>,  <45.518894, 33.333870, 26.221643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.248333, 33.071926, 26.086802> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589399, -0.206782, -0.780929,
		0.441692, -0.726911, 0.525841,
		-0.676400, -0.654860, -0.337107,
		45.045414, 32.875469, 25.985670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.882492, 32.757324, 26.189390>,  <45.518894, 33.333870, 26.221643>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.882492, 32.757324, 26.189390> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.568871, 32.683968, 25.952196>,  <45.380699, 32.639954, 25.809879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.568871, 32.683968, 25.952196>,  <45.882492, 32.757324, 26.189390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.568871, 32.683968, 25.952196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620410, -0.260616, -0.739710,
		-0.018889, -0.947865, 0.318111,
		-0.784050, -0.183387, -0.592987,
		45.333656, 32.628952, 25.774300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.917530, 31.935581, 25.929867>,  <45.882492, 32.757324, 26.189390>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.917530, 31.935581, 25.929867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.671341, 32.150059, 25.698805>,  <45.523628, 32.278744, 25.560167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.671341, 32.150059, 25.698805>,  <45.917530, 31.935581, 25.929867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.671341, 32.150059, 25.698805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674216, -0.021402, -0.738223,
		-0.408194, -0.843823, -0.348338,
		-0.615475, 0.536194, -0.577656,
		45.486698, 32.310917, 25.525509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.751629, 31.508211, 25.314875>,  <45.917530, 31.935581, 25.929867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.751629, 31.508211, 25.314875> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.710331, 31.892931, 25.213461>,  <45.685555, 32.123764, 25.152613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.710331, 31.892931, 25.213461>,  <45.751629, 31.508211, 25.314875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.710331, 31.892931, 25.213461> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625688, -0.135351, -0.768241,
		-0.773211, -0.237948, -0.587814,
		-0.103240, 0.961801, -0.253536,
		45.679359, 32.181473, 25.137400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.401966, 31.051632, 25.909447>,  <45.751629, 31.508211, 25.314875>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.401966, 31.051632, 25.909447> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.709732, 30.820183, 25.801228>,  <45.894390, 30.681313, 25.736296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.709732, 30.820183, 25.801228>,  <45.401966, 31.051632, 25.909447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.709732, 30.820183, 25.801228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634167, -0.641350, -0.431860,
		0.076369, 0.503851, -0.860408,
		0.769416, -0.578623, -0.270546,
		45.940556, 30.646597, 25.720064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.362865, 30.731949, 25.184425>,  <45.401966, 31.051632, 25.909447>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.362865, 30.731949, 25.184425> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.589371, 30.499189, 25.417919>,  <45.725273, 30.359533, 25.558016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.589371, 30.499189, 25.417919>,  <45.362865, 30.731949, 25.184425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.589371, 30.499189, 25.417919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335982, -0.809669, -0.481199,
		0.752639, 0.076360, -0.653991,
		0.566260, -0.581898, 0.583732,
		45.759251, 30.324619, 25.593039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.215092, 30.489544, 24.492018>,  <45.362865, 30.731949, 25.184425>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.215092, 30.489544, 24.492018> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.080952, 30.126646, 24.390472>,  <45.000465, 29.908907, 24.329546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.080952, 30.126646, 24.390472>,  <45.215092, 30.489544, 24.492018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.080952, 30.126646, 24.390472> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492460, -0.060905, 0.868202,
		-0.803133, 0.416171, -0.426357,
		-0.335353, -0.907245, -0.253862,
		44.980347, 29.854473, 24.314314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.411686, 30.440331, 24.514486>,  <45.215092, 30.489544, 24.492018>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.411686, 30.440331, 24.514486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.467720, 30.044989, 24.490723>,  <44.501339, 29.807783, 24.476463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.467720, 30.044989, 24.490723>,  <44.411686, 30.440331, 24.514486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.467720, 30.044989, 24.490723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680566, -0.139694, 0.719247,
		-0.719171, -0.060322, -0.692210,
		0.140084, -0.988356, -0.059411,
		44.509747, 29.748482, 24.472900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.797703, 30.269049, 24.636528>,  <44.411686, 30.440331, 24.514486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.797703, 30.269049, 24.636528> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.027603, 29.947393, 24.697218>,  <44.165543, 29.754400, 24.733633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.027603, 29.947393, 24.697218>,  <43.797703, 30.269049, 24.636528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.027603, 29.947393, 24.697218> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577989, -0.267661, 0.770900,
		-0.579298, -0.530774, -0.618622,
		0.574755, -0.804137, 0.151726,
		44.200031, 29.706152, 24.742735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.249722, 29.802641, 24.807798>,  <43.797703, 30.269049, 24.636528>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.249722, 29.802641, 24.807798> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.599701, 29.659952, 24.938774>,  <43.809689, 29.574339, 25.017359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.599701, 29.659952, 24.938774>,  <43.249722, 29.802641, 24.807798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.599701, 29.659952, 24.938774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446914, -0.334638, 0.829630,
		-0.186372, -0.872220, -0.452214,
		0.874948, -0.356720, 0.327440,
		43.862186, 29.552937, 25.037006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.145164, 29.038973, 24.953918>,  <43.249722, 29.802641, 24.807798>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.145164, 29.038973, 24.953918> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.447231, 29.192223, 25.166689>,  <43.628471, 29.284172, 25.294352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.447231, 29.192223, 25.166689>,  <43.145164, 29.038973, 24.953918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.447231, 29.192223, 25.166689> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478316, -0.232834, 0.846760,
		0.448263, -0.893871, 0.007426,
		0.755165, 0.383123, 0.531924,
		43.673782, 29.307159, 25.326265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.166348, 28.581713, 25.368494>,  <43.145164, 29.038973, 24.953918>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.166348, 28.581713, 25.368494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.365845, 28.884672, 25.537066>,  <43.485542, 29.066448, 25.638208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.365845, 28.884672, 25.537066>,  <43.166348, 28.581713, 25.368494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.365845, 28.884672, 25.537066> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584743, -0.064880, 0.808620,
		0.639789, -0.649723, 0.410525,
		0.498744, 0.757398, 0.421430,
		43.515469, 29.111891, 25.663494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.289833, 28.305193, 26.012255>,  <43.166348, 28.581713, 25.368494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.289833, 28.305193, 26.012255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.293438, 28.705086, 26.020800>,  <43.295601, 28.945021, 26.025927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.293438, 28.705086, 26.020800>,  <43.289833, 28.305193, 26.012255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.293438, 28.705086, 26.020800> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539844, -0.013118, 0.841663,
		0.841717, -0.019121, 0.539581,
		0.009015, 0.999731, 0.021364,
		43.296143, 29.005005, 26.027208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.160393, 28.440369, 26.661077>,  <43.289833, 28.305193, 26.012255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.160393, 28.440369, 26.661077> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.109077, 28.816412, 26.534754>,  <43.078289, 29.042038, 26.458960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.109077, 28.816412, 26.534754>,  <43.160393, 28.440369, 26.661077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.109077, 28.816412, 26.534754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508385, 0.211080, 0.834859,
		0.851520, 0.267655, 0.450859,
		-0.128287, 0.940110, -0.315811,
		43.070591, 29.098444, 26.440010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.499512, 28.857147, 27.172663>,  <43.160393, 28.440369, 26.661077>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.499512, 28.857147, 27.172663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.233067, 29.071758, 26.965424>,  <43.073196, 29.200525, 26.841080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.233067, 29.071758, 26.965424>,  <43.499512, 28.857147, 27.172663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.233067, 29.071758, 26.965424> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492497, 0.205256, 0.845764,
		0.560120, 0.818539, 0.127514,
		-0.666118, 0.536530, -0.518096,
		43.033230, 29.232718, 26.809996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.399776, 29.436003, 27.581421>,  <43.499512, 28.857147, 27.172663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.399776, 29.436003, 27.581421> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.076942, 29.423779, 27.345562>,  <42.883244, 29.416445, 27.204046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.076942, 29.423779, 27.345562>,  <43.399776, 29.436003, 27.581421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.076942, 29.423779, 27.345562> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566667, 0.320612, 0.759010,
		0.165853, 0.946718, -0.276077,
		-0.807082, -0.030560, -0.589649,
		42.834820, 29.414610, 27.168667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.060623, 30.013741, 27.747257>,  <43.399776, 29.436003, 27.581421>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.060623, 30.013741, 27.747257> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.771313, 29.817574, 27.552788>,  <42.597729, 29.699873, 27.436106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.771313, 29.817574, 27.552788>,  <43.060623, 30.013741, 27.747257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.771313, 29.817574, 27.552788> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668875, 0.322474, 0.669788,
		-0.171699, 0.809629, -0.561266,
		-0.723274, -0.490419, -0.486172,
		42.554329, 29.670448, 27.406937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.587585, 30.547508, 27.507519>,  <43.060623, 30.013741, 27.747257>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.587585, 30.547508, 27.507519> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.401432, 30.195631, 27.546631>,  <42.289742, 29.984505, 27.570099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.401432, 30.195631, 27.546631>,  <42.587585, 30.547508, 27.507519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.401432, 30.195631, 27.546631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549605, 0.373806, 0.747130,
		-0.693795, 0.293961, -0.657446,
		-0.465384, -0.879691, 0.097782,
		42.261818, 29.931725, 27.575966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.873383, 30.712210, 27.567364>,  <42.587585, 30.547508, 27.507519>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.873383, 30.712210, 27.567364> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.914589, 30.340870, 27.710220>,  <41.939312, 30.118065, 27.795935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.914589, 30.340870, 27.710220>,  <41.873383, 30.712210, 27.567364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.914589, 30.340870, 27.710220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732690, 0.172011, 0.658466,
		-0.672720, -0.329509, -0.662474,
		0.103017, -0.928351, 0.357143,
		41.945496, 30.062365, 27.817364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.179276, 30.448004, 27.518837>,  <41.873383, 30.712210, 27.567364>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.179276, 30.448004, 27.518837> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.389420, 30.244387, 27.791563>,  <41.515507, 30.122217, 27.955198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.389420, 30.244387, 27.791563>,  <41.179276, 30.448004, 27.518837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.389420, 30.244387, 27.791563> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722119, 0.157082, 0.673698,
		-0.450042, -0.846286, -0.285065,
		0.525362, -0.509043, 0.681813,
		41.547028, 30.091673, 27.996107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.710064, 30.124607, 27.006191>,  <41.179276, 30.448004, 27.518837>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.710064, 30.124607, 27.006191> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.360264, 30.182936, 26.821159>,  <40.150383, 30.217932, 26.710140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.360264, 30.182936, 26.821159>,  <40.710064, 30.124607, 27.006191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.360264, 30.182936, 26.821159> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472868, 0.044188, -0.880024,
		-0.107886, -0.988324, -0.107597,
		-0.874503, 0.145822, -0.462580,
		40.097912, 30.226683, 26.682384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.671440, 29.591761, 26.543322>,  <40.710064, 30.124607, 27.006191>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.671440, 29.591761, 26.543322> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.425266, 29.880527, 26.416782>,  <40.277561, 30.053787, 26.340858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.425266, 29.880527, 26.416782>,  <40.671440, 29.591761, 26.543322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.425266, 29.880527, 26.416782> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419581, -0.039698, -0.906849,
		-0.667230, -0.690838, -0.278472,
		-0.615431, 0.721919, -0.316350,
		40.240635, 30.097103, 26.321877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.320374, 29.382971, 25.947201>,  <40.671440, 29.591761, 26.543322>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.320374, 29.382971, 25.947201> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.308197, 29.782537, 25.933100>,  <40.300892, 30.022278, 25.924639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.308197, 29.782537, 25.933100>,  <40.320374, 29.382971, 25.947201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.308197, 29.782537, 25.933100> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445858, -0.017993, -0.894923,
		-0.894586, -0.042963, -0.444826,
		-0.030444, 0.998915, -0.035252,
		40.299065, 30.082212, 25.922523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.050663, 29.471203, 25.175562>,  <40.320374, 29.382971, 25.947201>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.050663, 29.471203, 25.175562> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.197350, 29.822683, 25.297808>,  <40.285362, 30.033571, 25.371155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.197350, 29.822683, 25.297808>,  <40.050663, 29.471203, 25.175562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.197350, 29.822683, 25.297808> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403119, 0.145977, -0.903430,
		-0.838459, 0.454502, -0.300690,
		0.366717, 0.878703, 0.305614,
		40.307365, 30.086294, 25.389492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861313, 30.037832, 24.668884>,  <40.050663, 29.471203, 25.175562>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.861313, 30.037832, 24.668884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.171658, 30.178307, 24.878532>,  <40.357864, 30.262592, 25.004322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.171658, 30.178307, 24.878532>,  <39.861313, 30.037832, 24.668884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.171658, 30.178307, 24.878532> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474567, 0.222546, -0.851622,
		-0.415720, 0.909473, 0.006003,
		0.775863, 0.351187, 0.524122,
		40.404415, 30.283663, 25.035769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026970, 30.672920, 24.311247>,  <39.861313, 30.037832, 24.668884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026970, 30.672920, 24.311247> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.352711, 30.545187, 24.505098>,  <40.548153, 30.468548, 24.621408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.352711, 30.545187, 24.505098>,  <40.026970, 30.672920, 24.311247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.352711, 30.545187, 24.505098> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550854, 0.162343, -0.818661,
		0.182750, 0.933633, 0.308110,
		0.814348, -0.319334, 0.484627,
		40.597015, 30.449387, 24.650486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.572258, 31.183735, 24.140207>,  <40.026970, 30.672920, 24.311247>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.572258, 31.183735, 24.140207> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.753807, 30.853243, 24.273682>,  <40.862736, 30.654947, 24.353765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.753807, 30.853243, 24.273682>,  <40.572258, 31.183735, 24.140207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.753807, 30.853243, 24.273682> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620728, 0.024497, -0.783643,
		0.639294, 0.562803, 0.523981,
		0.453873, -0.826228, 0.333687,
		40.889969, 30.605375, 24.373787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.855019, 31.710283, 24.679222>,  <40.572258, 31.183735, 24.140207>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.855019, 31.710283, 24.679222> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.847618, 32.109375, 24.653326>,  <40.843178, 32.348831, 24.637789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.847618, 32.109375, 24.653326>,  <40.855019, 31.710283, 24.679222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.847618, 32.109375, 24.653326> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728889, 0.030860, 0.683936,
		0.684382, 0.059846, 0.726663,
		-0.018506, 0.997730, -0.064741,
		40.842068, 32.408695, 24.633904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.901375, 32.006275, 25.402489>,  <40.855019, 31.710283, 24.679222>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.901375, 32.006275, 25.402489> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.730553, 32.294315, 25.183737>,  <40.628059, 32.467140, 25.052486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.730553, 32.294315, 25.183737>,  <40.901375, 32.006275, 25.402489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.730553, 32.294315, 25.183737> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706301, 0.111980, 0.698999,
		0.564589, 0.684773, 0.460787,
		-0.427057, 0.720101, -0.546879,
		40.602436, 32.510345, 25.019672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.781124, 32.576057, 25.822788>,  <40.901375, 32.006275, 25.402489>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.781124, 32.576057, 25.822788> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.538498, 32.646309, 25.512632>,  <40.392921, 32.688461, 25.326540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.538498, 32.646309, 25.512632>,  <40.781124, 32.576057, 25.822788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.538498, 32.646309, 25.512632> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718996, 0.295038, 0.629283,
		0.339289, 0.939205, -0.052684,
		-0.606570, 0.175629, -0.775388,
		40.356525, 32.698997, 25.280016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.485744, 33.088985, 25.999393>,  <40.781124, 32.576057, 25.822788>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.485744, 33.088985, 25.999393> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.248333, 32.983284, 25.695316>,  <40.105885, 32.919865, 25.512869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.248333, 32.983284, 25.695316>,  <40.485744, 33.088985, 25.999393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.248333, 32.983284, 25.695316> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803060, 0.256784, 0.537734,
		0.053107, 0.929641, -0.364620,
		-0.593528, -0.264254, -0.760194,
		40.070274, 32.904007, 25.467258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.987461, 33.643433, 25.820192>,  <40.485744, 33.088985, 25.999393>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.987461, 33.643433, 25.820192> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.825584, 33.298943, 25.697222>,  <39.728458, 33.092247, 25.623440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.825584, 33.298943, 25.697222>,  <39.987461, 33.643433, 25.820192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.825584, 33.298943, 25.697222> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830464, 0.205392, 0.517825,
		-0.382822, 0.464867, -0.798340,
		-0.404692, -0.861228, -0.307427,
		39.704178, 33.040573, 25.604994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232857, 33.778870, 25.691278>,  <39.987461, 33.643433, 25.820192>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.232857, 33.778870, 25.691278> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.258766, 33.379906, 25.678719>,  <39.274311, 33.140530, 25.671183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.258766, 33.379906, 25.678719>,  <39.232857, 33.778870, 25.691278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.258766, 33.379906, 25.678719> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855079, -0.071696, 0.513518,
		-0.514437, -0.006411, -0.857504,
		0.064772, -0.997406, -0.031401,
		39.278198, 33.080685, 25.669298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608402, 33.522354, 25.516104>,  <39.232857, 33.778870, 25.691278>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608402, 33.522354, 25.516104> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.779701, 33.197849, 25.675329>,  <38.882481, 33.003147, 25.770864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.779701, 33.197849, 25.675329>,  <38.608402, 33.522354, 25.516104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.779701, 33.197849, 25.675329> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785847, -0.116853, 0.607280,
		-0.446150, -0.572882, -0.687572,
		0.428245, -0.811265, 0.398064,
		38.908176, 32.954468, 25.794748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<44.654892, 35.696812, 24.025930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.740891, 35.359631, 24.223198>,  <44.792488, 35.157322, 24.341558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.740891, 35.359631, 24.223198>,  <44.654892, 35.696812, 24.025930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.740891, 35.359631, 24.223198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763115, 0.170125, 0.623469,
		-0.609452, -0.510388, -0.606690,
		0.214998, -0.842948, 0.493168,
		44.805389, 35.106747, 24.371149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.051357, 35.339806, 24.120773>,  <44.654892, 35.696812, 24.025930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.051357, 35.339806, 24.120773> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.288937, 35.207020, 24.413900>,  <44.431484, 35.127346, 24.589777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.288937, 35.207020, 24.413900>,  <44.051357, 35.339806, 24.120773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.288937, 35.207020, 24.413900> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738562, 0.136164, 0.660292,
		-0.318978, -0.933412, -0.164303,
		0.593952, -0.331966, 0.732816,
		44.467121, 35.107430, 24.633745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.536900, 34.951710, 24.455225>,  <44.051357, 35.339806, 24.120773>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.536900, 34.951710, 24.455225> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.844536, 34.969376, 24.710270>,  <44.029118, 34.979977, 24.863297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.844536, 34.969376, 24.710270>,  <43.536900, 34.951710, 24.455225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.844536, 34.969376, 24.710270> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628723, 0.231643, 0.742327,
		-0.114913, -0.971798, 0.205922,
		0.769092, 0.044165, 0.637611,
		44.075264, 34.982624, 24.901554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.365383, 34.549171, 24.998074>,  <43.536900, 34.951710, 24.455225>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.365383, 34.549171, 24.998074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.624180, 34.827148, 25.123590>,  <43.779457, 34.993935, 25.198900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.624180, 34.827148, 25.123590>,  <43.365383, 34.549171, 24.998074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.624180, 34.827148, 25.123590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667111, 0.316591, 0.674338,
		0.369285, -0.645618, 0.668435,
		0.646986, 0.694944, 0.313787,
		43.818275, 35.035629, 25.217728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.138512, 34.575859, 25.625040>,  <43.365383, 34.549171, 24.998074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.138512, 34.575859, 25.625040> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.383175, 34.889858, 25.585762>,  <43.529972, 35.078259, 25.562195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.383175, 34.889858, 25.585762>,  <43.138512, 34.575859, 25.625040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.383175, 34.889858, 25.585762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527119, 0.496951, 0.689336,
		0.589929, -0.369879, 0.717755,
		0.611660, 0.785003, -0.098196,
		43.566673, 35.125359, 25.556303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.224628, 34.768024, 26.304171>,  <43.138512, 34.575859, 25.625040>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.224628, 34.768024, 26.304171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.306992, 35.088791, 26.079836>,  <43.356411, 35.281250, 25.945234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.306992, 35.088791, 26.079836>,  <43.224628, 34.768024, 26.304171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.306992, 35.088791, 26.079836> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542769, 0.570473, 0.616411,
		0.814250, 0.177479, 0.552719,
		0.205911, 0.801911, -0.560837,
		43.368767, 35.329365, 25.911585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.424252, 35.192993, 26.757362>,  <43.224628, 34.768024, 26.304171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.424252, 35.192993, 26.757362> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.307373, 35.419727, 26.449253>,  <43.237244, 35.555767, 26.264387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.307373, 35.419727, 26.449253>,  <43.424252, 35.192993, 26.757362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.307373, 35.419727, 26.449253> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591937, 0.525409, 0.611191,
		0.751152, 0.634543, 0.182004,
		-0.292201, 0.566833, -0.770272,
		43.219711, 35.589779, 26.218172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.317436, 35.828766, 26.978680>,  <43.424252, 35.192993, 26.757362>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.317436, 35.828766, 26.978680> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.122601, 35.839550, 26.629505>,  <43.005699, 35.846020, 26.420000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.122601, 35.839550, 26.629505>,  <43.317436, 35.828766, 26.978680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.122601, 35.839550, 26.629505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734402, 0.528286, 0.426108,
		0.472647, 0.848638, -0.237523,
		-0.487092, 0.026962, -0.872934,
		42.976475, 35.847637, 26.367624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.103516, 36.467285, 26.910591>,  <43.317436, 35.828766, 26.978680>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.103516, 36.467285, 26.910591> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.859566, 36.261532, 26.669439>,  <42.713196, 36.138081, 26.524748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.859566, 36.261532, 26.669439>,  <43.103516, 36.467285, 26.910591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.859566, 36.261532, 26.669439> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791962, 0.423629, 0.439699,
		0.029224, 0.745618, -0.665733,
		-0.609871, -0.514385, -0.602881,
		42.676605, 36.107216, 26.488575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.722622, 36.980495, 26.543581>,  <43.103516, 36.467285, 26.910591>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.722622, 36.980495, 26.543581> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.524166, 36.633308, 26.552336>,  <42.405094, 36.424995, 26.557589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.524166, 36.633308, 26.552336>,  <42.722622, 36.980495, 26.543581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.524166, 36.633308, 26.552336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758150, 0.445373, 0.476288,
		-0.423151, 0.219711, -0.879017,
		-0.496136, -0.867969, 0.021886,
		42.375324, 36.372917, 26.558901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.099251, 37.130924, 26.343758>,  <42.722622, 36.980495, 26.543581>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.099251, 37.130924, 26.343758> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.035549, 36.782185, 26.529022>,  <41.997326, 36.572941, 26.640181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.035549, 36.782185, 26.529022>,  <42.099251, 37.130924, 26.343758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.035549, 36.782185, 26.529022> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766258, 0.404976, 0.498842,
		-0.622484, -0.275458, -0.732555,
		-0.159257, -0.871847, 0.463163,
		41.987774, 36.520630, 26.667971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.437122, 37.163094, 26.557646>,  <42.099251, 37.130924, 26.343758>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.437122, 37.163094, 26.557646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.553642, 36.863495, 26.795689>,  <41.623554, 36.683735, 26.938515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.553642, 36.863495, 26.795689>,  <41.437122, 37.163094, 26.557646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.553642, 36.863495, 26.795689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704392, 0.252985, 0.663197,
		-0.647283, -0.612379, -0.453890,
		0.291301, -0.748993, 0.595108,
		41.641033, 36.638798, 26.974220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.114910, 36.653637, 26.076288>,  <41.437122, 37.163094, 26.557646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.114910, 36.653637, 26.076288> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.785500, 36.544983, 25.877083>,  <40.587852, 36.479790, 25.757559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.785500, 36.544983, 25.877083>,  <41.114910, 36.653637, 26.076288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.785500, 36.544983, 25.877083> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565945, -0.333293, -0.754070,
		0.038844, -0.902847, 0.428204,
		-0.823527, -0.271631, -0.498015,
		40.538441, 36.463493, 25.727678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.173607, 35.887657, 25.882378>,  <41.114910, 36.653637, 26.076288>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.173607, 35.887657, 25.882378> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.907497, 36.066738, 25.643389>,  <40.747829, 36.174187, 25.499996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.907497, 36.066738, 25.643389>,  <41.173607, 35.887657, 25.882378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.907497, 36.066738, 25.643389> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496558, -0.332271, -0.801889,
		-0.557528, -0.830157, -0.001256,
		-0.665277, 0.447699, -0.597472,
		40.707912, 36.201046, 25.464148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.936508, 35.381298, 25.418995>,  <41.173607, 35.887657, 25.882378>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.936508, 35.381298, 25.418995> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.851971, 35.724960, 25.232586>,  <40.801247, 35.931160, 25.120741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.851971, 35.724960, 25.232586>,  <40.936508, 35.381298, 25.418995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.851971, 35.724960, 25.232586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514438, -0.307629, -0.800448,
		-0.831075, -0.408911, -0.376969,
		-0.211345, 0.859160, -0.466022,
		40.788567, 35.982708, 25.092779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.664635, 35.311138, 24.774746>,  <40.936508, 35.381298, 25.418995>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.664635, 35.311138, 24.774746> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.866425, 35.656288, 24.762362>,  <40.987499, 35.863377, 24.754930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.866425, 35.656288, 24.762362>,  <40.664635, 35.311138, 24.774746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.866425, 35.656288, 24.762362> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600087, -0.376170, -0.705969,
		-0.620806, 0.337565, -0.707566,
		0.504475, 0.862871, -0.030960,
		41.017769, 35.915150, 24.753073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.614296, 35.384560, 24.048882>,  <40.664635, 35.311138, 24.774746>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.614296, 35.384560, 24.048882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.890179, 35.667519, 24.110723>,  <41.055706, 35.837292, 24.147829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.890179, 35.667519, 24.110723>,  <40.614296, 35.384560, 24.048882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.890179, 35.667519, 24.110723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333653, -0.120981, -0.934900,
		-0.642638, 0.696389, -0.319466,
		0.689704, 0.707394, 0.154605,
		41.097092, 35.879738, 24.157104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.619171, 35.855667, 23.421432>,  <40.614296, 35.384560, 24.048882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.619171, 35.855667, 23.421432> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.965454, 35.874977, 23.620718>,  <41.173225, 35.886562, 23.740290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.965454, 35.874977, 23.620718>,  <40.619171, 35.855667, 23.421432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.965454, 35.874977, 23.620718> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500324, -0.053848, -0.864162,
		-0.014886, 0.997382, -0.070768,
		0.865710, 0.048271, 0.498213,
		41.225166, 35.889458, 23.770182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.985050, 36.195301, 23.002441>,  <40.619171, 35.855667, 23.421432>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.985050, 36.195301, 23.002441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.263557, 36.038719, 23.243095>,  <41.430664, 35.944771, 23.387487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.263557, 36.038719, 23.243095>,  <40.985050, 36.195301, 23.002441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.263557, 36.038719, 23.243095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568063, -0.211840, -0.795253,
		0.438758, 0.895480, 0.074875,
		0.696272, -0.391457, 0.601636,
		41.472439, 35.921284, 23.423586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.569859, 36.470249, 22.838030>,  <40.985050, 36.195301, 23.002441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.569859, 36.470249, 22.838030> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.686981, 36.124699, 23.001970>,  <41.757256, 35.917370, 23.100334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.686981, 36.124699, 23.001970>,  <41.569859, 36.470249, 22.838030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.686981, 36.124699, 23.001970> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601954, -0.166492, -0.780982,
		0.742909, 0.475392, 0.471263,
		0.292811, -0.863876, 0.409853,
		41.774826, 35.865536, 23.124926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.354748, 36.441158, 22.860863>,  <41.569859, 36.470249, 22.838030>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.354748, 36.441158, 22.860863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.216110, 36.067108, 22.890305>,  <42.132927, 35.842678, 22.907970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.216110, 36.067108, 22.890305>,  <42.354748, 36.441158, 22.860863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.216110, 36.067108, 22.890305> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693728, -0.308355, -0.650891,
		0.631359, -0.174534, 0.755595,
		-0.346594, -0.935123, 0.073604,
		42.112133, 35.786572, 22.912386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.942726, 36.069923, 22.742270>,  <42.354748, 36.441158, 22.860863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.942726, 36.069923, 22.742270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.648293, 35.809139, 22.669462>,  <42.471634, 35.652668, 22.625778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.648293, 35.809139, 22.669462>,  <42.942726, 36.069923, 22.742270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.648293, 35.809139, 22.669462> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484992, -0.320391, -0.813715,
		0.472194, -0.687238, 0.552030,
		-0.736081, -0.651962, -0.182018,
		42.427467, 35.613552, 22.614857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.282230, 35.395878, 22.654940>,  <42.942726, 36.069923, 22.742270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.282230, 35.395878, 22.654940> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.917942, 35.372612, 22.491381>,  <42.699368, 35.358654, 22.393246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.917942, 35.372612, 22.491381>,  <43.282230, 35.395878, 22.654940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.917942, 35.372612, 22.491381> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393652, -0.421820, -0.816765,
		-0.124977, -0.904812, 0.407058,
		-0.910724, -0.058163, -0.408899,
		42.644726, 35.355164, 22.368711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.292107, 34.701561, 22.431143>,  <43.282230, 35.395878, 22.654940>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.292107, 34.701561, 22.431143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.987564, 34.849926, 22.218441>,  <42.804840, 34.938946, 22.090820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.987564, 34.849926, 22.218441>,  <43.292107, 34.701561, 22.431143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.987564, 34.849926, 22.218441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356390, -0.445718, -0.821171,
		-0.541592, -0.814716, 0.207162,
		-0.761357, 0.370909, -0.531753,
		42.759155, 34.961201, 22.058914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.703167, 33.985699, 22.693325>,  <43.292107, 34.701561, 22.431143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.703167, 33.985699, 22.693325> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.012402, 34.227509, 22.616505>,  <44.197945, 34.372593, 22.570412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.012402, 34.227509, 22.616505>,  <43.703167, 33.985699, 22.693325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.012402, 34.227509, 22.616505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594540, 0.796127, 0.112712,
		0.221035, 0.027046, 0.974891,
		0.773089, 0.604525, -0.192052,
		44.244328, 34.408867, 22.558889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.773300, 33.524712, 23.167702>,  <43.703167, 33.985699, 22.693325>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.773300, 33.524712, 23.167702> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.454010, 33.577869, 22.932695>,  <43.262436, 33.609764, 22.791691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.454010, 33.577869, 22.932695>,  <43.773300, 33.524712, 23.167702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.454010, 33.577869, 22.932695> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596933, -0.305162, 0.741989,
		-0.080678, 0.942981, 0.322920,
		-0.798224, 0.132899, -0.587516,
		43.214542, 33.617741, 22.756441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.314053, 33.878567, 23.569136>,  <43.773300, 33.524712, 23.167702>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.314053, 33.878567, 23.569136> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.099098, 33.711033, 23.276344>,  <42.970127, 33.610512, 23.100670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.099098, 33.711033, 23.276344>,  <43.314053, 33.878567, 23.569136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.099098, 33.711033, 23.276344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716774, -0.230491, 0.658111,
		-0.444356, 0.878322, -0.176350,
		-0.537385, -0.418838, -0.731978,
		42.937881, 33.585381, 23.056751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.649601, 34.130810, 23.581409>,  <43.314053, 33.878567, 23.569136>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.649601, 34.130810, 23.581409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.636982, 33.774189, 23.400679>,  <42.629410, 33.560219, 23.292240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.636982, 33.774189, 23.400679>,  <42.649601, 34.130810, 23.581409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.636982, 33.774189, 23.400679> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712369, -0.297032, 0.635848,
		-0.701096, 0.341925, -0.625741,
		-0.031548, -0.891549, -0.451825,
		42.627518, 33.506725, 23.265131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.926567, 34.056614, 23.615261>,  <42.649601, 34.130810, 23.581409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.926567, 34.056614, 23.615261> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.039127, 33.688633, 23.506079>,  <42.106663, 33.467846, 23.440569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.039127, 33.688633, 23.506079>,  <41.926567, 34.056614, 23.615261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.039127, 33.688633, 23.506079> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827062, -0.376762, 0.417155,
		-0.486602, 0.108365, -0.866877,
		0.281402, -0.919949, -0.272957,
		42.123547, 33.412647, 23.424191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.392021, 33.723618, 23.247812>,  <41.926567, 34.056614, 23.615261>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.392021, 33.723618, 23.247812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.617001, 33.431854, 23.403561>,  <41.751991, 33.256798, 23.497009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.617001, 33.431854, 23.403561>,  <41.392021, 33.723618, 23.247812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.617001, 33.431854, 23.403561> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800913, -0.363652, 0.475704,
		-0.205386, -0.579415, -0.788730,
		0.562453, -0.729407, 0.389372,
		41.785736, 33.213032, 23.520372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.003502, 33.060219, 23.173517>,  <41.392021, 33.723618, 23.247812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.003502, 33.060219, 23.173517> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.281254, 33.007919, 23.456570>,  <41.447906, 32.976540, 23.626402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.281254, 33.007919, 23.456570>,  <41.003502, 33.060219, 23.173517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.281254, 33.007919, 23.456570> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710692, -0.278907, 0.645854,
		0.112922, -0.951376, -0.286587,
		0.694381, -0.130744, 0.707630,
		41.489567, 32.968697, 23.668859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.907730, 32.410694, 23.326862>,  <41.003502, 33.060219, 23.173517>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.907730, 32.410694, 23.326862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.096497, 32.590748, 23.630093>,  <41.209755, 32.698780, 23.812031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.096497, 32.590748, 23.630093>,  <40.907730, 32.410694, 23.326862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.096497, 32.590748, 23.630093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802796, -0.136033, 0.580529,
		0.364440, -0.882538, 0.297171,
		0.471914, 0.450135, 0.758073,
		41.238071, 32.725788, 23.857515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.824059, 31.986803, 23.762857>,  <40.907730, 32.410694, 23.326862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.824059, 31.986803, 23.762857> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.924198, 32.310604, 23.975283>,  <40.984283, 32.504887, 24.102737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.924198, 32.310604, 23.975283>,  <40.824059, 31.986803, 23.762857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.924198, 32.310604, 23.975283> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790222, -0.146056, 0.595161,
		0.559350, -0.568657, 0.603122,
		0.250353, 0.809504, 0.531062,
		40.999306, 32.553455, 24.134602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.282974, 31.324339, 23.949984>,  <40.824059, 31.986803, 23.762857>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.282974, 31.324339, 23.949984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.311665, 30.934584, 24.035233>,  <41.328876, 30.700729, 24.086382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.311665, 30.934584, 24.035233>,  <41.282974, 31.324339, 23.949984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.311665, 30.934584, 24.035233> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597968, -0.129009, -0.791069,
		0.798305, 0.184176, 0.573401,
		0.071722, -0.974390, 0.213120,
		41.333179, 30.642267, 24.099169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.009483, 31.164846, 23.991623>,  <41.282974, 31.324339, 23.949984>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.009483, 31.164846, 23.991623> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.821743, 30.822941, 23.902998>,  <41.709099, 30.617798, 23.849823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.821743, 30.822941, 23.902998>,  <42.009483, 31.164846, 23.991623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.821743, 30.822941, 23.902998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706397, -0.212905, -0.675037,
		0.529824, -0.473341, 0.703729,
		-0.469350, -0.854763, -0.221564,
		41.680939, 30.566511, 23.836529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.528309, 30.667791, 23.963404>,  <42.009483, 31.164846, 23.991623>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.528309, 30.667791, 23.963404> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.229942, 30.520264, 23.741564>,  <42.050922, 30.431747, 23.608459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.229942, 30.520264, 23.741564>,  <42.528309, 30.667791, 23.963404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.229942, 30.520264, 23.741564> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646624, -0.201434, -0.735732,
		0.159638, -0.907412, 0.388741,
		-0.745918, -0.368820, -0.554598,
		42.006168, 30.409618, 23.575184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.652935, 29.945984, 23.723671>,  <42.528309, 30.667791, 23.963404>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.652935, 29.945984, 23.723671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.392265, 30.096006, 23.459957>,  <42.235863, 30.186020, 23.301729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.392265, 30.096006, 23.459957>,  <42.652935, 29.945984, 23.723671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.392265, 30.096006, 23.459957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578393, -0.316592, -0.751818,
		-0.490698, -0.871265, -0.010615,
		-0.651672, 0.375055, -0.659285,
		42.196762, 30.208523, 23.262171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.671078, 29.476257, 23.262388>,  <42.652935, 29.945984, 23.723671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.671078, 29.476257, 23.262388> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.515442, 29.786386, 23.063398>,  <42.422058, 29.972464, 22.944004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.515442, 29.786386, 23.063398>,  <42.671078, 29.476257, 23.262388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.515442, 29.786386, 23.063398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568046, -0.223201, -0.792152,
		-0.725210, -0.590810, -0.353573,
		-0.389093, 0.775323, -0.497475,
		42.398712, 30.018984, 22.914156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.607727, 29.179419, 22.547739>,  <42.671078, 29.476257, 23.262388>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.607727, 29.179419, 22.547739> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.617146, 29.578711, 22.569574>,  <42.622795, 29.818287, 22.582676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.617146, 29.578711, 22.569574>,  <42.607727, 29.179419, 22.547739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.617146, 29.578711, 22.569574> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592454, 0.030053, -0.805044,
		-0.805261, 0.051295, -0.590698,
		0.023543, 0.998231, 0.054591,
		42.624207, 29.878180, 22.585951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.803661, 29.284464, 21.845957>,  <42.607727, 29.179419, 22.547739>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.803661, 29.284464, 21.845957> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.825249, 29.633661, 22.039852>,  <42.838203, 29.843180, 22.156189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.825249, 29.633661, 22.039852>,  <42.803661, 29.284464, 21.845957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.825249, 29.633661, 22.039852> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699894, 0.313168, -0.641930,
		-0.712205, 0.373912, -0.594100,
		0.053972, 0.872992, 0.484739,
		42.841442, 29.895559, 22.185274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.740780, 29.775387, 21.293095>,  <42.803661, 29.284464, 21.845957>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.740780, 29.775387, 21.293095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.922565, 29.962179, 21.596512>,  <43.031635, 30.074255, 21.778563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.922565, 29.962179, 21.596512>,  <42.740780, 29.775387, 21.293095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.922565, 29.962179, 21.596512> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814886, 0.125968, -0.565768,
		-0.359756, 0.875248, -0.323289,
		0.454463, 0.466982, 0.758545,
		43.058903, 30.102274, 21.824076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.862995, 30.484720, 21.029438>,  <42.740780, 29.775387, 21.293095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.862995, 30.484720, 21.029438> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.131844, 30.380260, 21.306583>,  <43.293152, 30.317585, 21.472870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.131844, 30.380260, 21.306583>,  <42.862995, 30.484720, 21.029438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.131844, 30.380260, 21.306583> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737702, 0.155720, -0.656922,
		0.063661, 0.952656, 0.297311,
		0.672118, -0.261147, 0.692863,
		43.333481, 30.301916, 21.514442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.580673, 32.639450, 34.539989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.922253, 32.791489, 34.682144>,  <34.127201, 32.882710, 34.767437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.922253, 32.791489, 34.682144>,  <33.580673, 32.639450, 34.539989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.922253, 32.791489, 34.682144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386718, -0.006589, -0.922175,
		-0.348171, 0.924925, -0.152615,
		0.853947, 0.380093, 0.355391,
		34.178436, 32.905518, 34.788761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836205, 33.259274, 34.101017>,  <33.580673, 32.639450, 34.539989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.836205, 33.259274, 34.101017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.128284, 33.054630, 34.282154>,  <34.303532, 32.931847, 34.390835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.128284, 33.054630, 34.282154>,  <33.836205, 33.259274, 34.101017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.128284, 33.054630, 34.282154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461453, -0.119493, -0.879081,
		0.503853, 0.850872, 0.148827,
		0.730201, -0.511604, 0.452844,
		34.347343, 32.901150, 34.418007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531292, 33.572178, 33.852203>,  <33.836205, 33.259274, 34.101017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531292, 33.572178, 33.852203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.619972, 33.203419, 33.979298>,  <34.673180, 32.982162, 34.055553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.619972, 33.203419, 33.979298>,  <34.531292, 33.572178, 33.852203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619972, 33.203419, 33.979298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523517, -0.162377, -0.836399,
		0.822666, 0.351770, 0.446630,
		0.221698, -0.921896, 0.317740,
		34.686481, 32.926849, 34.074619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176216, 33.497864, 33.661087>,  <34.531292, 33.572178, 33.852203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.176216, 33.497864, 33.661087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.063141, 33.118160, 33.716228>,  <34.995296, 32.890339, 33.749313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.063141, 33.118160, 33.716228>,  <35.176216, 33.497864, 33.661087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.063141, 33.118160, 33.716228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601756, -0.287421, -0.745170,
		0.746979, -0.127693, 0.652469,
		-0.282687, -0.949254, 0.137858,
		34.978336, 32.833385, 33.757587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769897, 33.128788, 33.565113>,  <35.176216, 33.497864, 33.661087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769897, 33.128788, 33.565113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.476662, 32.857651, 33.542831>,  <35.300720, 32.694969, 33.529461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.476662, 32.857651, 33.542831>,  <35.769897, 33.128788, 33.565113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476662, 32.857651, 33.542831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425375, -0.393055, -0.815208,
		0.530688, -0.621319, 0.576483,
		-0.733094, -0.677842, -0.055704,
		35.256733, 32.654297, 33.526119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038509, 32.491150, 33.385906>,  <35.769897, 33.128788, 33.565113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038509, 32.491150, 33.385906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.661358, 32.462994, 33.255665>,  <35.435066, 32.446102, 33.177521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.661358, 32.462994, 33.255665>,  <36.038509, 32.491150, 33.385906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.661358, 32.462994, 33.255665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322909, -0.433365, -0.841383,
		-0.081884, -0.898466, 0.431340,
		-0.942881, -0.070387, -0.325608,
		35.378494, 32.441879, 33.157982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.049862, 31.873789, 32.996357>,  <36.038509, 32.491150, 33.385906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.049862, 31.873789, 32.996357> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.715069, 32.061790, 32.884251>,  <35.514191, 32.174591, 32.816986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.715069, 32.061790, 32.884251>,  <36.049862, 31.873789, 32.996357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715069, 32.061790, 32.884251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086025, -0.392790, -0.915596,
		-0.540420, -0.790452, 0.288328,
		-0.836986, 0.470002, -0.280270,
		35.463974, 32.202789, 32.800171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686794, 31.297981, 32.709656>,  <36.049862, 31.873789, 32.996357>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.686794, 31.297981, 32.709656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.546822, 31.641392, 32.559734>,  <35.462837, 31.847439, 32.469780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.546822, 31.641392, 32.559734>,  <35.686794, 31.297981, 32.709656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.546822, 31.641392, 32.559734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122043, -0.354914, -0.926899,
		-0.928792, -0.370092, 0.019417,
		-0.349929, 0.858527, -0.374808,
		35.441841, 31.898951, 32.447292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178299, 31.096376, 32.085957>,  <35.686794, 31.297981, 32.709656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178299, 31.096376, 32.085957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.293694, 31.474564, 32.025475>,  <35.362930, 31.701477, 31.989185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.293694, 31.474564, 32.025475>,  <35.178299, 31.096376, 32.085957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.293694, 31.474564, 32.025475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257078, -0.228607, -0.938962,
		-0.922328, 0.232002, -0.309009,
		0.288483, 0.945470, -0.151208,
		35.380238, 31.758205, 31.980112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.912994, 31.247442, 31.413145>,  <35.178299, 31.096376, 32.085957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.912994, 31.247442, 31.413145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.208488, 31.512075, 31.464645>,  <35.385784, 31.670855, 31.495546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.208488, 31.512075, 31.464645>,  <34.912994, 31.247442, 31.413145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.208488, 31.512075, 31.464645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368881, -0.236989, -0.898757,
		-0.564090, 0.711438, -0.419118,
		0.738735, 0.661584, 0.128752,
		35.430111, 31.710550, 31.503271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.893265, 31.681637, 30.873253>,  <34.912994, 31.247442, 31.413145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.893265, 31.681637, 30.873253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.268257, 31.736221, 31.001318>,  <35.493252, 31.768972, 31.078157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.268257, 31.736221, 31.001318>,  <34.893265, 31.681637, 30.873253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.268257, 31.736221, 31.001318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344982, -0.242894, -0.906637,
		-0.045955, 0.960407, -0.274786,
		0.937484, 0.136461, 0.320160,
		35.549503, 31.777159, 31.097366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.150051, 32.032578, 30.368607>,  <34.893265, 31.681637, 30.873253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.150051, 32.032578, 30.368607> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.479183, 31.909254, 30.559561>,  <35.676662, 31.835258, 30.674133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.479183, 31.909254, 30.559561>,  <35.150051, 32.032578, 30.368607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.479183, 31.909254, 30.559561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426153, -0.220987, -0.877245,
		0.375961, 0.925261, -0.050447,
		0.822829, -0.308312, 0.477385,
		35.726032, 31.816761, 30.702776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070011, 32.831665, 30.405857>,  <35.150051, 32.032578, 30.368607>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070011, 32.831665, 30.405857> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.941898, 33.110348, 30.149101>,  <34.865032, 33.277557, 29.995047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.941898, 33.110348, 30.149101>,  <35.070011, 32.831665, 30.405857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.941898, 33.110348, 30.149101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734626, 0.245149, 0.632634,
		0.598118, 0.674170, 0.433300,
		-0.320280, 0.696704, -0.641891,
		34.845814, 33.319359, 29.956533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.941261, 33.333305, 30.934534>,  <35.070011, 32.831665, 30.405857>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.941261, 33.333305, 30.934534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.764481, 33.469807, 30.602697>,  <34.658413, 33.551708, 30.403595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.764481, 33.469807, 30.602697>,  <34.941261, 33.333305, 30.934534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.764481, 33.469807, 30.602697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660867, 0.501492, 0.558356,
		0.606573, 0.795018, 0.003885,
		-0.441955, 0.341251, -0.829593,
		34.631893, 33.572182, 30.353819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.982933, 34.146088, 30.844242>,  <34.941261, 33.333305, 30.934534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.982933, 34.146088, 30.844242> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.669399, 33.991852, 30.649542>,  <34.481277, 33.899311, 30.532722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.669399, 33.991852, 30.649542>,  <34.982933, 34.146088, 30.844242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669399, 33.991852, 30.649542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605996, 0.646076, 0.464062,
		0.135540, 0.658716, -0.740082,
		-0.783835, -0.385588, -0.486749,
		34.434250, 33.876175, 30.503517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.508709, 34.710869, 30.612400>,  <34.982933, 34.146088, 30.844242>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.508709, 34.710869, 30.612400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.284027, 34.380165, 30.624722>,  <34.149216, 34.181744, 30.632114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.284027, 34.380165, 30.624722>,  <34.508709, 34.710869, 30.612400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.284027, 34.380165, 30.624722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710666, 0.501227, 0.493686,
		-0.423601, 0.255416, -0.869095,
		-0.561709, -0.826761, 0.030805,
		34.115513, 34.132137, 30.633963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.821877, 34.976776, 30.463596>,  <34.508709, 34.710869, 30.612400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.821877, 34.976776, 30.463596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.754539, 34.622082, 30.635809>,  <33.714138, 34.409264, 30.739138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.754539, 34.622082, 30.635809>,  <33.821877, 34.976776, 30.463596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.754539, 34.622082, 30.635809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773851, 0.389433, 0.499496,
		-0.610585, -0.249080, -0.751761,
		-0.168346, -0.886736, 0.430533,
		33.704037, 34.356060, 30.764969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.110054, 34.908554, 30.365129>,  <33.821877, 34.976776, 30.463596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.110054, 34.908554, 30.365129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.213310, 34.672615, 30.671185>,  <33.275265, 34.531052, 30.854818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.213310, 34.672615, 30.671185>,  <33.110054, 34.908554, 30.365129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.213310, 34.672615, 30.671185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796090, 0.318838, 0.514376,
		-0.547362, -0.741901, -0.387270,
		0.258139, -0.589852, 0.765140,
		33.290752, 34.495659, 30.900726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514076, 34.523716, 30.528641>,  <33.110054, 34.908554, 30.365129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.514076, 34.523716, 30.528641> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.760681, 34.540546, 30.843128>,  <32.908646, 34.550644, 31.031820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.760681, 34.540546, 30.843128>,  <32.514076, 34.523716, 30.528641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760681, 34.540546, 30.843128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743369, 0.360155, 0.563641,
		-0.259446, -0.931943, 0.253317,
		0.616515, 0.042074, 0.786219,
		32.945637, 34.553169, 31.078993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.083515, 34.174572, 31.062752>,  <32.514076, 34.523716, 30.528641>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.083515, 34.174572, 31.062752> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.382458, 34.376987, 31.234976>,  <32.561825, 34.498436, 31.338310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.382458, 34.376987, 31.234976>,  <32.083515, 34.174572, 31.062752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.382458, 34.376987, 31.234976> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648892, 0.416616, 0.636687,
		0.142810, -0.755219, 0.639725,
		0.747359, 0.506038, 0.430559,
		32.606667, 34.528797, 31.364143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.947939, 34.159336, 31.767881>,  <32.083515, 34.174572, 31.062752>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.947939, 34.159336, 31.767881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.214073, 34.457817, 31.776894>,  <32.373753, 34.636906, 31.782301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.214073, 34.457817, 31.776894>,  <31.947939, 34.159336, 31.767881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.214073, 34.457817, 31.776894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584171, 0.501598, 0.638078,
		0.464834, -0.437699, 0.769642,
		0.665337, 0.746203, 0.022531,
		32.413673, 34.681679, 31.783653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.117798, 34.318348, 32.455605>,  <31.947939, 34.159336, 31.767881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.117798, 34.318348, 32.455605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.202274, 34.647781, 32.245041>,  <32.252960, 34.845444, 32.118702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.202274, 34.647781, 32.245041>,  <32.117798, 34.318348, 32.455605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.202274, 34.647781, 32.245041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556782, 0.544003, 0.627738,
		0.803362, 0.160519, 0.573448,
		0.211194, 0.823587, -0.526405,
		32.265633, 34.894855, 32.087120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.241417, 34.694355, 32.935814>,  <32.117798, 34.318348, 32.455605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.241417, 34.694355, 32.935814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.155399, 34.933197, 32.626694>,  <32.103790, 35.076504, 32.441219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.155399, 34.933197, 32.626694>,  <32.241417, 34.694355, 32.935814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.155399, 34.933197, 32.626694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351435, 0.690991, 0.631684,
		0.911180, 0.407429, 0.061251,
		-0.215043, 0.597104, -0.772802,
		32.090885, 35.112328, 32.394852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.616875, 35.227516, 33.057365>,  <32.241417, 34.694355, 32.935814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.616875, 35.227516, 33.057365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.321583, 35.350456, 32.817181>,  <32.144405, 35.424221, 32.673069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.321583, 35.350456, 32.817181>,  <32.616875, 35.227516, 33.057365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.321583, 35.350456, 32.817181> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267755, 0.683517, 0.679052,
		0.619127, 0.662075, -0.422302,
		-0.738234, 0.307346, -0.600458,
		32.100113, 35.442661, 32.637043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613964, 35.962349, 33.129211>,  <32.616875, 35.227516, 33.057365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613964, 35.962349, 33.129211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.259701, 35.891193, 32.957649>,  <32.047142, 35.848499, 32.854710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.259701, 35.891193, 32.957649>,  <32.613964, 35.962349, 33.129211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.259701, 35.891193, 32.957649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412588, 0.725243, 0.551174,
		0.213018, 0.665116, -0.715713,
		-0.885660, -0.177884, -0.428909,
		31.994003, 35.837830, 32.828976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.549934, 36.473545, 32.722691>,  <32.613964, 35.962349, 33.129211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.549934, 36.473545, 32.722691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.192375, 36.329922, 32.830040>,  <31.977840, 36.243748, 32.894451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.192375, 36.329922, 32.830040>,  <32.549934, 36.473545, 32.722691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.192375, 36.329922, 32.830040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088464, 0.728213, 0.679617,
		-0.439460, 0.583765, -0.682711,
		-0.893896, -0.359060, 0.268378,
		31.924206, 36.222202, 32.910553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.930901, 36.958687, 32.659527>,  <32.549934, 36.473545, 32.722691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.930901, 36.958687, 32.659527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.897175, 36.691715, 32.955482>,  <31.876940, 36.531532, 33.133057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.897175, 36.691715, 32.955482>,  <31.930901, 36.958687, 32.659527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.897175, 36.691715, 32.955482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105883, 0.732327, 0.672670,
		-0.990798, 0.135057, 0.008924,
		-0.084314, -0.667425, 0.739889,
		31.871881, 36.491489, 33.177448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.133335, 37.279598, 32.052780>,  <31.930901, 36.958687, 32.659527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.133335, 37.279598, 32.052780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.224701, 37.543854, 32.338825>,  <32.279518, 37.702408, 32.510452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.224701, 37.543854, 32.338825>,  <32.133335, 37.279598, 32.052780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224701, 37.543854, 32.338825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892488, 0.151379, -0.424911,
		-0.388964, 0.735287, -0.555032,
		0.228411, 0.660635, 0.715115,
		32.293224, 37.742043, 32.553360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.251484, 37.949917, 31.829636>,  <32.133335, 37.279598, 32.052780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.251484, 37.949917, 31.829636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.469357, 37.880779, 32.157890>,  <32.600082, 37.839298, 32.354843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.469357, 37.880779, 32.157890>,  <32.251484, 37.949917, 31.829636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.469357, 37.880779, 32.157890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835847, 0.032080, -0.548024,
		0.068396, 0.984427, 0.161945,
		0.544685, -0.172844, 0.820636,
		32.632763, 37.828926, 32.404079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886581, 38.328156, 31.592457>,  <32.251484, 37.949917, 31.829636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886581, 38.328156, 31.592457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.995220, 38.107746, 31.908077>,  <33.060402, 37.975498, 32.097450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.995220, 38.107746, 31.908077>,  <32.886581, 38.328156, 31.592457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.995220, 38.107746, 31.908077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880745, -0.188208, -0.434587,
		0.387975, 0.812986, 0.434200,
		0.271593, -0.551028, 0.789053,
		33.076698, 37.942436, 32.144794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.500221, 38.526619, 31.760284>,  <32.886581, 38.328156, 31.592457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.500221, 38.526619, 31.760284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.472565, 38.148178, 31.886841>,  <33.455971, 37.921112, 31.962774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.472565, 38.148178, 31.886841>,  <33.500221, 38.526619, 31.760284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.472565, 38.148178, 31.886841> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886366, -0.203801, -0.415717,
		0.457793, 0.251694, 0.852687,
		-0.069145, -0.946105, 0.316392,
		33.451820, 37.864346, 31.981758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178131, 38.343155, 31.792418>,  <33.500221, 38.526619, 31.760284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.178131, 38.343155, 31.792418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.018463, 37.976437, 31.787640>,  <33.922661, 37.756405, 31.784773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.018463, 37.976437, 31.787640>,  <34.178131, 38.343155, 31.792418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.018463, 37.976437, 31.787640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706945, -0.299456, -0.640746,
		0.583857, -0.264212, 0.767661,
		-0.399174, -0.916798, -0.011944,
		33.898712, 37.701397, 31.784056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681938, 37.912788, 31.941389>,  <34.178131, 38.343155, 31.792418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681938, 37.912788, 31.941389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.411942, 37.693611, 31.743748>,  <34.249943, 37.562103, 31.625162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.411942, 37.693611, 31.743748>,  <34.681938, 37.912788, 31.941389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.411942, 37.693611, 31.743748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720721, -0.346326, -0.600516,
		0.157927, -0.761457, 0.628682,
		-0.674996, -0.547943, -0.494104,
		34.209442, 37.529228, 31.595516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972584, 37.192471, 31.878700>,  <34.681938, 37.912788, 31.941389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972584, 37.192471, 31.878700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.690853, 37.236652, 31.598207>,  <34.521816, 37.263161, 31.429911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.690853, 37.236652, 31.598207>,  <34.972584, 37.192471, 31.878700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690853, 37.236652, 31.598207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683999, -0.158704, -0.712010,
		-0.189935, -0.981128, 0.036226,
		-0.704323, 0.110457, -0.701234,
		34.479557, 37.269791, 31.387836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134308, 36.868542, 31.354055>,  <34.972584, 37.192471, 31.878700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134308, 36.868542, 31.354055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.859898, 37.072701, 31.146646>,  <34.695251, 37.195194, 31.022202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.859898, 37.072701, 31.146646>,  <35.134308, 36.868542, 31.354055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859898, 37.072701, 31.146646> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515474, -0.161997, -0.841453,
		-0.513472, -0.844544, -0.151962,
		-0.686027, 0.510395, -0.518521,
		34.654091, 37.225819, 30.991091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992805, 36.474205, 30.742506>,  <35.134308, 36.868542, 31.354055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992805, 36.474205, 30.742506> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.889320, 36.852554, 30.664141>,  <34.827229, 37.079563, 30.617121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.889320, 36.852554, 30.664141>,  <34.992805, 36.474205, 30.742506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.889320, 36.852554, 30.664141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397852, -0.080473, -0.913914,
		-0.880216, -0.314389, -0.355499,
		-0.258716, 0.945877, -0.195914,
		34.811707, 37.136318, 30.605366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860596, 36.473347, 30.071810>,  <34.992805, 36.474205, 30.742506>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.860596, 36.473347, 30.071810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.890862, 36.862659, 30.158533>,  <34.909019, 37.096245, 30.210567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.890862, 36.862659, 30.158533>,  <34.860596, 36.473347, 30.071810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.890862, 36.862659, 30.158533> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583887, 0.133010, -0.800865,
		-0.808302, 0.187187, -0.558220,
		0.075663, 0.973278, 0.216808,
		34.913559, 37.154644, 30.223576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699715, 36.857883, 29.412024>,  <34.860596, 36.473347, 30.071810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.699715, 36.857883, 29.412024> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.906288, 37.123512, 29.628283>,  <35.030231, 37.282890, 29.758038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.906288, 37.123512, 29.628283>,  <34.699715, 36.857883, 29.412024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906288, 37.123512, 29.628283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642086, 0.117444, -0.757584,
		-0.566587, 0.738386, -0.365739,
		0.516435, 0.664073, 0.540649,
		35.061218, 37.322735, 29.790478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877632, 37.269962, 28.898003>,  <34.699715, 36.857883, 29.412024>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877632, 37.269962, 28.898003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.128674, 37.372337, 29.192106>,  <35.279301, 37.433762, 29.368568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.128674, 37.372337, 29.192106>,  <34.877632, 37.269962, 28.898003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.128674, 37.372337, 29.192106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750133, 0.053952, -0.659082,
		-0.208354, 0.965186, -0.158128,
		0.627606, 0.255940, 0.735259,
		35.316956, 37.449120, 29.412683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245548, 37.813782, 28.606834>,  <34.877632, 37.269962, 28.898003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245548, 37.813782, 28.606834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.441177, 37.658421, 28.919231>,  <35.558556, 37.565205, 29.106670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.441177, 37.658421, 28.919231>,  <35.245548, 37.813782, 28.606834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441177, 37.658421, 28.919231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862774, 0.083854, -0.498588,
		0.128163, 0.917668, 0.376113,
		0.489076, -0.388400, 0.780993,
		35.587902, 37.541901, 29.153530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831276, 38.203541, 28.684370>,  <35.245548, 37.813782, 28.606834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831276, 38.203541, 28.684370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.935452, 37.867752, 28.875143>,  <35.997955, 37.666279, 28.989607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.935452, 37.867752, 28.875143>,  <35.831276, 38.203541, 28.684370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935452, 37.867752, 28.875143> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854569, -0.029462, -0.518501,
		0.449316, 0.542609, 0.709711,
		0.260434, -0.839468, 0.476935,
		36.013580, 37.615913, 29.018223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381622, 38.308651, 29.005112>,  <35.831276, 38.203541, 28.684370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381622, 38.308651, 29.005112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.383583, 37.911579, 28.956844>,  <36.384758, 37.673336, 28.927883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.383583, 37.911579, 28.956844>,  <36.381622, 38.308651, 29.005112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383583, 37.911579, 28.956844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873151, 0.063066, -0.483354,
		0.487426, -0.102992, 0.867069,
		0.004901, -0.992681, -0.120668,
		36.385052, 37.613773, 28.920645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151527, 38.104450, 29.048958>,  <36.381622, 38.308651, 29.005112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151527, 38.104450, 29.048958> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.000244, 37.757462, 28.919682>,  <36.909473, 37.549267, 28.842115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.000244, 37.757462, 28.919682>,  <37.151527, 38.104450, 29.048958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.000244, 37.757462, 28.919682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842495, -0.177869, -0.508493,
		0.383618, -0.464602, 0.798112,
		-0.378206, -0.867472, -0.323191,
		36.886784, 37.497219, 28.822723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608284, 37.557125, 29.218319>,  <37.151527, 38.104450, 29.048958>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608284, 37.557125, 29.218319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.383144, 37.451237, 28.905109>,  <37.248062, 37.387703, 28.717182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.383144, 37.451237, 28.905109>,  <37.608284, 37.557125, 29.218319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.383144, 37.451237, 28.905109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796786, -0.425748, -0.428802,
		-0.219860, -0.865253, 0.450554,
		-0.562845, -0.264719, -0.783026,
		37.214291, 37.371822, 28.670202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769367, 36.849262, 29.096132>,  <37.608284, 37.557125, 29.218319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769367, 36.849262, 29.096132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.598228, 36.953178, 28.749847>,  <37.495544, 37.015530, 28.542076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.598228, 36.953178, 28.749847>,  <37.769367, 36.849262, 29.096132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598228, 36.953178, 28.749847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797447, -0.342372, -0.496850,
		-0.425472, -0.902934, -0.060686,
		-0.427846, 0.259790, -0.865712,
		37.469875, 37.031116, 28.490133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.887497, 36.308170, 28.681772>,  <37.769367, 36.849262, 29.096132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.887497, 36.308170, 28.681772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.791889, 36.605347, 28.431683>,  <37.734524, 36.783653, 28.281630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.791889, 36.605347, 28.431683>,  <37.887497, 36.308170, 28.681772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.791889, 36.605347, 28.431683> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751436, -0.266282, -0.603686,
		-0.614991, -0.614109, -0.494628,
		-0.239018, 0.742943, -0.625224,
		37.720184, 36.828228, 28.244116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745926, 35.987640, 28.031748>,  <37.887497, 36.308170, 28.681772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745926, 35.987640, 28.031748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.826263, 36.367008, 27.933638>,  <37.874466, 36.594631, 27.874771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.826263, 36.367008, 27.933638>,  <37.745926, 35.987640, 28.031748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.826263, 36.367008, 27.933638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768627, -0.307793, -0.560781,
		-0.607350, -0.075897, -0.790800,
		0.200842, 0.948421, -0.245275,
		37.886517, 36.651535, 27.860056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805271, 35.933193, 27.353931>,  <37.745926, 35.987640, 28.031748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.805271, 35.933193, 27.353931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.992531, 36.278507, 27.429369>,  <38.104889, 36.485695, 27.474630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.992531, 36.278507, 27.429369>,  <37.805271, 35.933193, 27.353931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992531, 36.278507, 27.429369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641205, -0.185028, -0.744729,
		-0.608020, 0.469574, -0.640166,
		0.468154, 0.863287, 0.188592,
		38.132977, 36.537495, 27.485947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781780, 36.245419, 26.669842>,  <37.805271, 35.933193, 27.353931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.781780, 36.245419, 26.669842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.071804, 36.407406, 26.892654>,  <38.245819, 36.504597, 27.026342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.071804, 36.407406, 26.892654>,  <37.781780, 36.245419, 26.669842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.071804, 36.407406, 26.892654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665915, -0.205997, -0.717024,
		-0.175626, 0.890822, -0.419036,
		0.725061, 0.404970, 0.557033,
		38.289322, 36.528896, 27.059765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093090, 36.556293, 26.185551>,  <37.781780, 36.245419, 26.669842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.093090, 36.556293, 26.185551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.368523, 36.558792, 26.475605>,  <38.533783, 36.560291, 26.649637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.368523, 36.558792, 26.475605>,  <38.093090, 36.556293, 26.185551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.368523, 36.558792, 26.475605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720556, -0.118422, -0.683209,
		0.081606, 0.992944, -0.086041,
		0.688577, 0.006243, 0.725136,
		38.575096, 36.560665, 26.693146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583393, 37.062809, 25.973419>,  <38.093090, 36.556293, 26.185551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.583393, 37.062809, 25.973419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.798859, 36.856552, 26.239939>,  <38.928139, 36.732800, 26.399851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.798859, 36.856552, 26.239939>,  <38.583393, 37.062809, 25.973419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798859, 36.856552, 26.239939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780758, 0.008294, -0.624779,
		0.316635, 0.856765, 0.407058,
		0.538664, -0.515641, 0.666299,
		38.960457, 36.701859, 26.439829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240524, 37.329021, 25.875347>,  <38.583393, 37.062809, 25.973419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240524, 37.329021, 25.875347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.336708, 37.006615, 26.091688>,  <39.394417, 36.813171, 26.221493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.336708, 37.006615, 26.091688>,  <39.240524, 37.329021, 25.875347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.336708, 37.006615, 26.091688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897639, -0.027378, -0.439881,
		0.369358, 0.591263, 0.716926,
		0.240457, -0.806014, 0.540853,
		39.408844, 36.764809, 26.253944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960075, 37.446663, 26.161381>,  <39.240524, 37.329021, 25.875347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.960075, 37.446663, 26.161381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.884521, 37.054012, 26.150591>,  <39.839188, 36.818420, 26.144117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.884521, 37.054012, 26.150591>,  <39.960075, 37.446663, 26.161381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.884521, 37.054012, 26.150591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840471, -0.147397, -0.521425,
		0.507869, -0.121160, 0.852871,
		-0.188887, -0.981628, -0.026973,
		39.827854, 36.759525, 26.142498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.623978, 37.172104, 26.221365>,  <39.960075, 37.446663, 26.161381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.623978, 37.172104, 26.221365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.384464, 36.916233, 26.028585>,  <40.240757, 36.762711, 25.912918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.384464, 36.916233, 26.028585>,  <40.623978, 37.172104, 26.221365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.384464, 36.916233, 26.028585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782533, -0.339092, -0.522167,
		0.170591, -0.689807, 0.703609,
		-0.598783, -0.639675, -0.481950,
		40.204830, 36.724331, 25.884001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.838474, 36.941448, 26.916704>,  <40.623978, 37.172104, 26.221365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.838474, 36.941448, 26.916704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.114914, 36.777096, 27.154547>,  <41.280777, 36.678482, 27.297253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.114914, 36.777096, 27.154547>,  <40.838474, 36.941448, 26.916704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.114914, 36.777096, 27.154547> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673500, -0.067582, 0.736091,
		-0.262263, -0.909179, -0.323437,
		0.691097, -0.410884, 0.594608,
		41.322243, 36.653831, 27.332930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.548378, 36.341484, 27.268238>,  <40.838474, 36.941448, 26.916704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.548378, 36.341484, 27.268238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.853863, 36.462624, 27.496283>,  <41.037155, 36.535305, 27.633110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.853863, 36.462624, 27.496283>,  <40.548378, 36.341484, 27.268238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.853863, 36.462624, 27.496283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618624, 0.090897, 0.780411,
		0.184522, -0.948695, 0.256766,
		0.763712, 0.302845, 0.570113,
		41.082977, 36.553478, 27.667316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.407597, 35.990883, 27.919069>,  <40.548378, 36.341484, 27.268238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.407597, 35.990883, 27.919069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.672573, 36.278347, 28.003628>,  <40.831558, 36.450825, 28.054363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.672573, 36.278347, 28.003628>,  <40.407597, 35.990883, 27.919069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.672573, 36.278347, 28.003628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258877, -0.045191, 0.964853,
		0.702959, -0.693887, 0.156109,
		0.662444, 0.718664, 0.211398,
		40.871307, 36.493946, 28.067047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.517616, 35.860302, 28.488026>,  <40.407597, 35.990883, 27.919069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.517616, 35.860302, 28.488026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.614681, 36.248142, 28.475420>,  <40.672920, 36.480846, 28.467857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.614681, 36.248142, 28.475420>,  <40.517616, 35.860302, 28.488026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.614681, 36.248142, 28.475420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203009, 0.082519, 0.975694,
		0.948632, -0.230368, 0.216861,
		0.242664, 0.969598, -0.031513,
		40.687481, 36.539021, 28.465965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.912003, 35.896893, 29.051651>,  <40.517616, 35.860302, 28.488026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.912003, 35.896893, 29.051651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.808529, 36.271236, 28.955942>,  <40.746445, 36.495842, 28.898518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.808529, 36.271236, 28.955942>,  <40.912003, 35.896893, 29.051651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.808529, 36.271236, 28.955942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324308, 0.149183, 0.934114,
		0.909894, 0.319237, 0.264916,
		-0.258683, 0.935859, -0.239272,
		40.730923, 36.551994, 28.884161>
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
