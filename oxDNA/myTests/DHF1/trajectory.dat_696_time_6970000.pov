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
	<4.462519, 1.788545, 2.160920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.605230, 1.823219, 1.788857>,  <4.690857, 1.844024, 1.565618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.605230, 1.823219, 1.788857>,  <4.462519, 1.788545, 2.160920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.605230, 1.823219, 1.788857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851179, 0.440479, -0.285434,
		0.384972, 0.893568, 0.230938,
		0.356778, 0.086686, -0.930159,
		4.712264, 1.849225, 1.509809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.442498, 2.488358, 1.822164>,  <4.462519, 1.788545, 2.160920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.442498, 2.488358, 1.822164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.418362, 2.218889, 1.527538>,  <4.403880, 2.057208, 1.350763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.418362, 2.218889, 1.527538>,  <4.442498, 2.488358, 1.822164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.418362, 2.218889, 1.527538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848460, 0.423323, -0.317669,
		0.525808, 0.605776, -0.597127,
		-0.060342, -0.673672, -0.736563,
		4.400259, 2.016788, 1.306569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.301146, 2.867983, 1.153401>,  <4.442498, 2.488358, 1.822164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.301146, 2.867983, 1.153401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.160322, 2.493696, 1.162256>,  <4.075828, 2.269124, 1.167570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.160322, 2.493696, 1.162256>,  <4.301146, 2.867983, 1.153401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.160322, 2.493696, 1.162256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869007, 0.317989, -0.379091,
		0.347681, -0.152703, -0.925094,
		-0.352059, -0.935716, 0.022141,
		4.054705, 2.212981, 1.168898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.073732, 2.540791, 0.458361>,  <4.301146, 2.867983, 1.153401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.073732, 2.540791, 0.458361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.860357, 2.467573, 0.788679>,  <3.732332, 2.423642, 0.986870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.860357, 2.467573, 0.788679>,  <4.073732, 2.540791, 0.458361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.860357, 2.467573, 0.788679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818834, 0.356483, -0.449923,
		-0.212027, -0.916196, -0.340044,
		-0.533438, -0.183043, 0.825796,
		3.700326, 2.412660, 1.036418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.554358, 1.994667, 0.393780>,  <4.073732, 2.540791, 0.458361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.554358, 1.994667, 0.393780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.454729, 2.271841, 0.664425>,  <3.394952, 2.438145, 0.826812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.454729, 2.271841, 0.664425>,  <3.554358, 1.994667, 0.393780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.454729, 2.271841, 0.664425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789809, 0.258997, -0.555988,
		-0.560504, -0.672875, 0.482778,
		-0.249072, 0.692935, 0.676612,
		3.380007, 2.479722, 0.867408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.900200, 1.915041, 0.517187>,  <3.554358, 1.994667, 0.393780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.900200, 1.915041, 0.517187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.983400, 2.299675, 0.588840>,  <3.033320, 2.530456, 0.631833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.983400, 2.299675, 0.588840>,  <2.900200, 1.915041, 0.517187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.983400, 2.299675, 0.588840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738829, 0.274471, -0.615466,
		-0.640990, -0.004333, 0.767537,
		0.208000, 0.961585, 0.179134,
		3.045800, 2.588151, 0.642581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.163190, 2.280400, 0.559093>,  <2.900200, 1.915041, 0.517187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.163190, 2.280400, 0.559093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.438969, 2.565741, 0.508825>,  <2.604436, 2.736945, 0.478665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.438969, 2.565741, 0.508825>,  <2.163190, 2.280400, 0.559093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.438969, 2.565741, 0.508825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600376, 0.465728, -0.650112,
		-0.405231, 0.523666, 0.749374,
		0.689446, 0.713352, -0.125669,
		2.645802, 2.779746, 0.471125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.779632, 2.848931, 0.593043>,  <2.163190, 2.280400, 0.559093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.779632, 2.848931, 0.593043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.121147, 2.960419, 0.417150>,  <2.326056, 3.027311, 0.311615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.121147, 2.960419, 0.417150>,  <1.779632, 2.848931, 0.593043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.121147, 2.960419, 0.417150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520212, 0.423220, -0.741798,
		-0.020650, 0.862091, 0.506332,
		0.853788, 0.278718, -0.439730,
		2.377284, 3.044034, 0.285231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.752784, 3.064500, -0.507009> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.952229, 3.352117, -0.700654>,  <2.071895, 3.524687, -0.816840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.952229, 3.352117, -0.700654>,  <1.752784, 3.064500, -0.507009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.952229, 3.352117, -0.700654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825958, -0.224642, 0.517040,
		0.263021, -0.657658, -0.705908,
		0.498612, 0.719042, -0.484112,
		2.101812, 3.567829, -0.845887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.354252, 2.723007, -0.673620>,  <1.752784, 3.064500, -0.507009>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.354252, 2.723007, -0.673620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.387611, 3.118876, -0.626983>,  <2.407627, 3.356397, -0.599000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.387611, 3.118876, -0.626983>,  <2.354252, 2.723007, -0.673620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.387611, 3.118876, -0.626983> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836542, -0.133110, 0.531487,
		0.541518, 0.053209, -0.839004,
		0.083400, 0.989672, 0.116593,
		2.412631, 3.415777, -0.592005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.036927, 3.096026, -0.846311>,  <2.354252, 2.723007, -0.673620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.036927, 3.096026, -0.846311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.831905, 3.206087, -0.520961>,  <2.708893, 3.272124, -0.325750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.831905, 3.206087, -0.520961>,  <3.036927, 3.096026, -0.846311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.831905, 3.206087, -0.520961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785171, -0.233236, 0.573679,
		0.347558, 0.932680, -0.096496,
		-0.512553, 0.275152, 0.813376,
		2.678140, 3.288633, -0.276948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.514335, 3.298088, -0.266591>,  <3.036927, 3.096026, -0.846311>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.514335, 3.298088, -0.266591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.157024, 3.255072, -0.092009>,  <2.942638, 3.229262, 0.012740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.157024, 3.255072, -0.092009>,  <3.514335, 3.298088, -0.266591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.157024, 3.255072, -0.092009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439153, -0.415985, 0.796304,
		0.095924, 0.902990, 0.418816,
		-0.893276, -0.107540, 0.436454,
		2.889041, 3.222810, 0.038927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.506640, 3.750235, 0.455492>,  <3.514335, 3.298088, -0.266591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.506640, 3.750235, 0.455492> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.242256, 3.450149, 0.462529>,  <3.083626, 3.270097, 0.466751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.242256, 3.450149, 0.462529>,  <3.506640, 3.750235, 0.455492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.242256, 3.450149, 0.462529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356538, -0.293319, 0.887043,
		-0.660312, 0.592572, 0.461352,
		-0.660960, -0.750215, 0.017593,
		3.043968, 3.225084, 0.467807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.291269, 3.748841, 1.075874>,  <3.506640, 3.750235, 0.455492>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.291269, 3.748841, 1.075874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.173031, 3.385507, 0.957521>,  <3.102088, 3.167506, 0.886509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.173031, 3.385507, 0.957521>,  <3.291269, 3.748841, 1.075874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.173031, 3.385507, 0.957521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397807, -0.398631, 0.826343,
		-0.868546, 0.126559, 0.479177,
		-0.295596, -0.908337, -0.295884,
		3.084352, 3.113006, 0.868756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.051437, 3.359756, 1.734535>,  <3.291269, 3.748841, 1.075874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.051437, 3.359756, 1.734535> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.161247, 3.091846, 1.458554>,  <3.227134, 2.931099, 1.292965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.161247, 3.091846, 1.458554>,  <3.051437, 3.359756, 1.734535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.161247, 3.091846, 1.458554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643788, -0.404953, 0.649268,
		-0.714263, -0.622425, 0.320024,
		0.274526, -0.669776, -0.689953,
		3.243605, 2.890913, 1.251568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.019704, 2.722880, 1.998252>,  <3.051437, 3.359756, 1.734535>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.019704, 2.722880, 1.998252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.294876, 2.739446, 1.708414>,  <3.459979, 2.749385, 1.534511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.294876, 2.739446, 1.708414>,  <3.019704, 2.722880, 1.998252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.294876, 2.739446, 1.708414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661616, -0.446200, 0.602635,
		-0.298356, -0.893974, -0.334355,
		0.687930, 0.041415, -0.724595,
		3.501255, 2.751870, 1.491036>
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
