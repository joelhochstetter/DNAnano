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
	<24.368603, 34.989681, 35.375019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.347927, 35.070683, 34.983852>,  <24.335522, 35.119282, 34.749153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.347927, 35.070683, 34.983852>,  <24.368603, 34.989681, 35.375019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.347927, 35.070683, 34.983852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450650, 0.878587, 0.158115,
		0.891203, -0.432525, -0.136674,
		-0.051691, 0.202504, -0.977916,
		24.332420, 35.131435, 34.690479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.952208, 35.065228, 35.103065>,  <24.368603, 34.989681, 35.375019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.952208, 35.065228, 35.103065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.734377, 35.284920, 34.849518>,  <24.603678, 35.416737, 34.697392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.734377, 35.284920, 34.849518>,  <24.952208, 35.065228, 35.103065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.734377, 35.284920, 34.849518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529391, 0.811279, 0.248136,
		0.650524, -0.200433, -0.732560,
		-0.544576, 0.549229, -0.633865,
		24.571005, 35.449688, 34.659359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.415419, 35.521873, 34.798847>,  <24.952208, 35.065228, 35.103065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.415419, 35.521873, 34.798847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.059931, 35.704994, 34.789120>,  <24.846638, 35.814865, 34.783283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.059931, 35.704994, 34.789120>,  <25.415419, 35.521873, 34.798847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.059931, 35.704994, 34.789120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445967, 0.875604, 0.185554,
		0.106239, 0.154061, -0.982333,
		-0.888722, 0.457801, -0.024317,
		24.793314, 35.842335, 34.781826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.430061, 36.116592, 34.367603>,  <25.415419, 35.521873, 34.798847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.430061, 36.116592, 34.367603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.145920, 36.201008, 34.636189>,  <24.975435, 36.251656, 34.797340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.145920, 36.201008, 34.636189>,  <25.430061, 36.116592, 34.367603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.145920, 36.201008, 34.636189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499504, 0.823265, 0.269686,
		-0.495874, 0.526970, -0.690225,
		-0.710355, 0.211040, 0.671459,
		24.932814, 36.264320, 34.837627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.116394, 36.177460, 34.654690>,  <25.430061, 36.116592, 34.367603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.116394, 36.177460, 34.654690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.431477, 36.183952, 34.901024>,  <26.620525, 36.187847, 35.048824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.431477, 36.183952, 34.901024>,  <26.116394, 36.177460, 34.654690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.431477, 36.183952, 34.901024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105863, -0.981215, 0.161276,
		0.606887, -0.192232, -0.771190,
		0.787706, 0.016236, 0.615837,
		26.667788, 36.188824, 35.085773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.661112, 35.721027, 34.417896>,  <26.116394, 36.177460, 34.654690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.661112, 35.721027, 34.417896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.696154, 35.766304, 34.813778>,  <26.717178, 35.793468, 35.051308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.696154, 35.766304, 34.813778>,  <26.661112, 35.721027, 34.417896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.696154, 35.766304, 34.813778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073879, -0.990049, 0.119766,
		0.993412, -0.083611, -0.078372,
		0.087605, 0.113187, 0.989704,
		26.722435, 35.800259, 35.110687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.221918, 35.207027, 34.606873>,  <26.661112, 35.721027, 34.417896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.221918, 35.207027, 34.606873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.988953, 35.290562, 34.921116>,  <26.849173, 35.340683, 35.109661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.988953, 35.290562, 34.921116>,  <27.221918, 35.207027, 34.606873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.988953, 35.290562, 34.921116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075581, -0.976162, 0.203460,
		0.809370, 0.059121, 0.584315,
		-0.582415, 0.208838, 0.785608,
		26.814228, 35.353214, 35.156799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.674698, 34.962162, 35.134357>,  <27.221918, 35.207027, 34.606873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.674698, 34.962162, 35.134357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.291739, 34.984585, 35.247673>,  <27.061964, 34.998039, 35.315662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.291739, 34.984585, 35.247673>,  <27.674698, 34.962162, 35.134357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.291739, 34.984585, 35.247673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034805, -0.996227, 0.079495,
		0.286672, 0.066248, 0.955736,
		-0.957396, 0.056054, 0.283285,
		27.004520, 35.001400, 35.332657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.537340, 34.416004, 35.735199>,  <27.674698, 34.962162, 35.134357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.537340, 34.416004, 35.735199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.160961, 34.482731, 35.617359>,  <26.935133, 34.522766, 35.546658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.160961, 34.482731, 35.617359>,  <27.537340, 34.416004, 35.735199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.160961, 34.482731, 35.617359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188757, -0.980876, 0.047475,
		-0.281043, 0.100278, 0.954442,
		-0.940949, 0.166815, -0.294596,
		26.878675, 34.532776, 35.528980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.036625, 34.169254, 36.272018>,  <27.537340, 34.416004, 35.735199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.036625, 34.169254, 36.272018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.809267, 34.194748, 35.943905>,  <26.672852, 34.210045, 35.747036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.809267, 34.194748, 35.943905>,  <27.036625, 34.169254, 36.272018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.809267, 34.194748, 35.943905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325533, -0.933057, 0.153076,
		-0.755616, 0.354037, 0.551093,
		-0.568396, 0.063732, -0.820283,
		26.638748, 34.213867, 35.697819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.380465, 33.815228, 36.376209>,  <27.036625, 34.169254, 36.272018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.380465, 33.815228, 36.376209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.415892, 33.809860, 35.977818>,  <26.437147, 33.806641, 35.738781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.415892, 33.809860, 35.977818>,  <26.380465, 33.815228, 36.376209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.415892, 33.809860, 35.977818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296592, -0.954909, -0.013512,
		-0.950888, 0.296596, -0.088553,
		0.088567, -0.013416, -0.995980,
		26.442461, 33.805836, 35.679024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.812178, 33.517242, 36.166176>,  <26.380465, 33.815228, 36.376209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.812178, 33.517242, 36.166176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.041857, 33.462818, 35.843243>,  <26.179665, 33.430164, 35.649483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.041857, 33.462818, 35.843243>,  <25.812178, 33.517242, 36.166176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.041857, 33.462818, 35.843243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240787, -0.970547, -0.007683,
		-0.782508, 0.198806, -0.590049,
		0.574198, -0.136064, -0.807331,
		26.214115, 33.421997, 35.601044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.526136, 32.980896, 35.869171>,  <25.812178, 33.517242, 36.166176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.526136, 32.980896, 35.869171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.884415, 32.994560, 35.691830>,  <26.099380, 33.002758, 35.585423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.884415, 32.994560, 35.691830>,  <25.526136, 32.980896, 35.869171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.884415, 32.994560, 35.691830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042985, -0.999027, 0.009864,
		-0.442588, -0.027893, -0.896292,
		0.895694, 0.034161, -0.443356,
		26.153124, 33.004810, 35.558823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.551264, 32.444294, 35.424942>,  <25.526136, 32.980896, 35.869171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.551264, 32.444294, 35.424942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.941486, 32.527588, 35.453014>,  <26.175621, 32.577564, 35.469856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.941486, 32.527588, 35.453014>,  <25.551264, 32.444294, 35.424942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.941486, 32.527588, 35.453014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196848, -0.970090, 0.142044,
		0.097657, -0.124758, -0.987370,
		0.975558, 0.208233, 0.070178,
		26.234154, 32.590057, 35.474068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.883568, 31.972881, 34.988964>,  <25.551264, 32.444294, 35.424942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.883568, 31.972881, 34.988964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.124084, 32.103237, 35.280785>,  <26.268394, 32.181450, 35.455875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.124084, 32.103237, 35.280785>,  <25.883568, 31.972881, 34.988964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.124084, 32.103237, 35.280785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303533, -0.937763, 0.168726,
		0.739131, 0.119989, -0.662788,
		0.601293, 0.325888, 0.729550,
		26.304472, 32.201004, 35.499649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.357082, 31.448826, 35.036636>,  <25.883568, 31.972881, 34.988964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.357082, 31.448826, 35.036636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.463789, 31.664133, 35.356411>,  <26.527813, 31.793318, 35.548275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.463789, 31.664133, 35.356411>,  <26.357082, 31.448826, 35.036636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.463789, 31.664133, 35.356411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427472, -0.809524, 0.402417,
		0.863773, 0.234386, -0.446048,
		0.266766, 0.538270, 0.799438,
		26.543819, 31.825615, 35.596241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.164492, 31.345814, 35.142357>,  <26.357082, 31.448826, 35.036636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.164492, 31.345814, 35.142357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.970425, 31.447506, 35.477016>,  <26.853985, 31.508520, 35.677811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.970425, 31.447506, 35.477016>,  <27.164492, 31.345814, 35.142357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.970425, 31.447506, 35.477016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293943, -0.853705, 0.429867,
		0.823535, 0.454484, 0.339461,
		-0.485167, 0.254228, 0.836649,
		26.824875, 31.523775, 35.728012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.615362, 31.122377, 35.694809>,  <27.164492, 31.345814, 35.142357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.615362, 31.122377, 35.694809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.253757, 31.170372, 35.858940>,  <27.036795, 31.199169, 35.957417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.253757, 31.170372, 35.858940>,  <27.615362, 31.122377, 35.694809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.253757, 31.170372, 35.858940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093553, -0.881018, 0.463740,
		0.417147, 0.457613, 0.785225,
		-0.904011, 0.119988, 0.410326,
		26.982553, 31.206367, 35.982037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.724516, 30.992676, 36.427353>,  <27.615362, 31.122377, 35.694809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.724516, 30.992676, 36.427353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.329714, 30.957619, 36.373486>,  <27.092833, 30.936584, 36.341167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.329714, 30.957619, 36.373486>,  <27.724516, 30.992676, 36.427353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.329714, 30.957619, 36.373486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010161, -0.802398, 0.596703,
		-0.160352, 0.590319, 0.791082,
		-0.987008, -0.087644, -0.134665,
		27.033611, 30.931326, 36.333088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.472193, 30.949125, 37.038361>,  <27.724516, 30.992676, 36.427353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.472193, 30.949125, 37.038361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.183941, 30.785801, 36.814228>,  <27.010990, 30.687807, 36.679749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.183941, 30.785801, 36.814228>,  <27.472193, 30.949125, 37.038361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.183941, 30.785801, 36.814228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058509, -0.841123, 0.537669,
		-0.690847, 0.354675, 0.630028,
		-0.720630, -0.408310, -0.560336,
		26.967752, 30.663307, 36.646126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.150583, 30.533163, 37.517395>,  <27.472193, 30.949125, 37.038361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.150583, 30.533163, 37.517395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.061844, 30.406128, 37.148632>,  <27.008600, 30.329906, 36.927372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.061844, 30.406128, 37.148632>,  <27.150583, 30.533163, 37.517395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.061844, 30.406128, 37.148632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169057, -0.943681, 0.284404,
		-0.960314, -0.092761, 0.263045,
		-0.221849, -0.317587, -0.921912,
		26.995289, 30.310852, 36.872059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.532171, 30.028500, 37.510971>,  <27.150583, 30.533163, 37.517395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.532171, 30.028500, 37.510971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.759151, 29.938379, 37.194176>,  <26.895340, 29.884306, 37.004101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.759151, 29.938379, 37.194176>,  <26.532171, 30.028500, 37.510971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.759151, 29.938379, 37.194176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012037, -0.964004, 0.265614,
		-0.823321, -0.141189, -0.549735,
		0.567449, -0.225303, -0.791985,
		26.929386, 29.870789, 36.956581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.172569, 29.415897, 37.240154>,  <26.532171, 30.028500, 37.510971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.172569, 29.415897, 37.240154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.542789, 29.431774, 37.089539>,  <26.764921, 29.441299, 36.999168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.542789, 29.431774, 37.089539>,  <26.172569, 29.415897, 37.240154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.542789, 29.431774, 37.089539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114260, -0.977405, 0.177831,
		-0.360970, -0.207615, -0.909174,
		0.925552, 0.039690, -0.376536,
		26.820456, 29.443682, 36.976578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.211485, 28.772701, 36.938900>,  <26.172569, 29.415897, 37.240154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.211485, 28.772701, 36.938900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.592239, 28.891861, 36.967670>,  <26.820692, 28.963356, 36.984932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.592239, 28.891861, 36.967670>,  <26.211485, 28.772701, 36.938900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.592239, 28.891861, 36.967670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274176, -0.932678, 0.234391,
		0.136911, -0.203392, -0.969478,
		0.951884, 0.297898, 0.071929,
		26.877804, 28.981230, 36.989250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.680655, 28.479076, 36.417915>,  <26.211485, 28.772701, 36.938900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.680655, 28.479076, 36.417915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.896385, 28.544405, 36.748360>,  <27.025824, 28.583603, 36.946625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.896385, 28.544405, 36.748360>,  <26.680655, 28.479076, 36.417915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.896385, 28.544405, 36.748360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202399, -0.977396, 0.061094,
		0.817411, 0.134253, -0.560193,
		0.539328, 0.163321, 0.826106,
		27.058184, 28.593401, 36.996193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.327324, 28.027534, 36.439686>,  <26.680655, 28.479076, 36.417915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.327324, 28.027534, 36.439686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.189079, 28.075558, 36.811951>,  <27.106133, 28.104372, 37.035309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.189079, 28.075558, 36.811951>,  <27.327324, 28.027534, 36.439686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.189079, 28.075558, 36.811951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146316, -0.972756, 0.179825,
		0.926901, 0.198321, 0.318628,
		-0.345610, 0.120060, 0.930666,
		27.085396, 28.111576, 37.091152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.850225, 27.678652, 36.928131>,  <27.327324, 28.027534, 36.439686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.850225, 27.678652, 36.928131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.477726, 27.699129, 37.072441>,  <27.254227, 27.711416, 37.159027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.477726, 27.699129, 37.072441>,  <27.850225, 27.678652, 36.928131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.477726, 27.699129, 37.072441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009650, -0.993199, 0.116024,
		0.364259, 0.104565, 0.925409,
		-0.931247, 0.051193, 0.360773,
		27.198351, 27.714487, 37.180672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.958487, 27.389168, 37.603878>,  <27.850225, 27.678652, 36.928131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.958487, 27.389168, 37.603878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.592861, 27.378023, 37.442032>,  <27.373486, 27.371336, 37.344925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.592861, 27.378023, 37.442032>,  <27.958487, 27.389168, 37.603878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.592861, 27.378023, 37.442032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132168, -0.922716, 0.362115,
		-0.383436, 0.384473, 0.839736,
		-0.914062, -0.027862, -0.404617,
		27.318644, 27.369665, 37.320648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.424528, 27.321516, 38.123169>,  <27.958487, 27.389168, 37.603878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.424528, 27.321516, 38.123169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.305971, 27.138435, 37.787868>,  <27.234837, 27.028587, 37.586689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.305971, 27.138435, 37.787868>,  <27.424528, 27.321516, 38.123169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.305971, 27.138435, 37.787868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113788, -0.854512, 0.506814,
		-0.948263, 0.245599, 0.201192,
		-0.296394, -0.457700, -0.838249,
		27.217052, 27.001125, 37.536392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.811665, 26.924294, 38.328163>,  <27.424528, 27.321516, 38.123169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.811665, 26.924294, 38.328163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.033382, 26.788183, 38.024330>,  <27.166412, 26.706516, 37.842030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.033382, 26.788183, 38.024330>,  <26.811665, 26.924294, 38.328163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.033382, 26.788183, 38.024330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200645, -0.831070, 0.518714,
		-0.807774, -0.439928, -0.392383,
		0.554294, -0.340274, -0.759586,
		27.199671, 26.686100, 37.796455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.512199, 26.253124, 38.272728>,  <26.811665, 26.924294, 38.328163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.512199, 26.253124, 38.272728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.219381, 26.265743, 38.544937>,  <26.043692, 26.273315, 38.708263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.219381, 26.265743, 38.544937>,  <26.512199, 26.253124, 38.272728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.219381, 26.265743, 38.544937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108947, 0.991492, 0.071228,
		-0.672490, 0.126284, -0.729252,
		-0.732043, 0.031550, 0.680527,
		25.999769, 26.275208, 38.749096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.033665, 26.885147, 38.228386>,  <26.512199, 26.253124, 38.272728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.033665, 26.885147, 38.228386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.006233, 26.756395, 38.606102>,  <25.989775, 26.679144, 38.832733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.006233, 26.756395, 38.606102>,  <26.033665, 26.885147, 38.228386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.006233, 26.756395, 38.606102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144563, 0.933326, 0.328640,
		-0.987116, 0.159047, -0.017474,
		-0.068578, -0.321880, 0.944294,
		25.985661, 26.659832, 38.889389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.522535, 27.323952, 38.425354>,  <26.033665, 26.885147, 38.228386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.522535, 27.323952, 38.425354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.844145, 27.186884, 38.619724>,  <26.037111, 27.104643, 38.736347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.844145, 27.186884, 38.619724>,  <25.522535, 27.323952, 38.425354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.844145, 27.186884, 38.619724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287404, 0.939397, 0.186904,
		-0.520524, -0.010618, 0.853781,
		0.804024, -0.342668, 0.485927,
		26.085352, 27.084084, 38.765503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.466522, 27.616365, 39.148994>,  <25.522535, 27.323952, 38.425354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.466522, 27.616365, 39.148994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.814487, 27.545773, 38.964775>,  <26.023266, 27.503416, 38.854244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.814487, 27.545773, 38.964775>,  <25.466522, 27.616365, 39.148994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.814487, 27.545773, 38.964775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299638, 0.930816, 0.209283,
		0.391752, -0.320056, 0.862609,
		0.869913, -0.176484, -0.460550,
		26.075460, 27.492828, 38.826611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.969728, 27.691105, 39.586502>,  <25.466522, 27.616365, 39.148994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.969728, 27.691105, 39.586502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.132456, 27.787626, 39.234077>,  <26.230091, 27.845539, 39.022621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.132456, 27.787626, 39.234077>,  <25.969728, 27.691105, 39.586502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.132456, 27.787626, 39.234077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016787, 0.962344, 0.271317,
		0.913355, -0.125167, 0.387447,
		0.406817, 0.241305, -0.881063,
		26.254501, 27.860018, 38.969757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.425819, 28.120493, 39.852028>,  <25.969728, 27.691105, 39.586502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.425819, 28.120493, 39.852028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.328749, 28.156546, 39.465664>,  <26.270506, 28.178177, 39.233845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.328749, 28.156546, 39.465664>,  <26.425819, 28.120493, 39.852028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.328749, 28.156546, 39.465664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224598, 0.973843, 0.034445,
		0.943749, -0.208582, -0.256575,
		-0.242679, 0.090134, -0.965910,
		26.255945, 28.183586, 39.175892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.852758, 28.551559, 39.529594>,  <26.425819, 28.120493, 39.852028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.852758, 28.551559, 39.529594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.541389, 28.567942, 39.279034>,  <26.354568, 28.577772, 39.128696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.541389, 28.567942, 39.279034>,  <26.852758, 28.551559, 39.529594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.541389, 28.567942, 39.279034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015567, 0.996303, 0.084488,
		0.627547, 0.075518, -0.774908,
		-0.778423, 0.040957, -0.626402,
		26.307863, 28.580229, 39.091114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.032883, 28.992027, 38.958908>,  <26.852758, 28.551559, 39.529594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.032883, 28.992027, 38.958908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.634674, 29.019228, 38.985188>,  <26.395750, 29.035549, 39.000954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.634674, 29.019228, 38.985188>,  <27.032883, 28.992027, 38.958908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.634674, 29.019228, 38.985188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062108, 0.994186, -0.087957,
		-0.071293, -0.083483, -0.993956,
		-0.995520, 0.068004, 0.065694,
		26.336018, 29.039629, 39.004894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.907707, 29.529909, 38.499283>,  <27.032883, 28.992027, 38.958908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.907707, 29.529909, 38.499283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.564684, 29.496178, 38.702251>,  <26.358870, 29.475939, 38.824032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.564684, 29.496178, 38.702251>,  <26.907707, 29.529909, 38.499283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.564684, 29.496178, 38.702251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052194, 0.995645, 0.077253,
		-0.511730, 0.039765, -0.858226,
		-0.857560, -0.084327, 0.507425,
		26.307417, 29.470881, 38.854481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.482870, 30.027750, 38.215412>,  <26.907707, 29.529909, 38.499283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.482870, 30.027750, 38.215412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.277571, 29.977846, 38.555061>,  <26.154390, 29.947905, 38.758850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.277571, 29.977846, 38.555061>,  <26.482870, 30.027750, 38.215412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.277571, 29.977846, 38.555061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122852, 0.989869, 0.071180,
		-0.849401, -0.067783, -0.523377,
		-0.513250, -0.124758, 0.849123,
		26.123596, 29.940418, 38.809799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.770443, 30.386024, 38.175022>,  <26.482870, 30.027750, 38.215412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.770443, 30.386024, 38.175022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.889734, 30.339678, 38.553997>,  <25.961309, 30.311871, 38.781384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.889734, 30.339678, 38.553997>,  <25.770443, 30.386024, 38.175022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.889734, 30.339678, 38.553997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170113, 0.970262, 0.172203,
		-0.939213, -0.212527, 0.269649,
		0.298228, -0.115865, 0.947436,
		25.979202, 30.304918, 38.838226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.438135, 30.917595, 38.416080>,  <25.770443, 30.386024, 38.175022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.438135, 30.917595, 38.416080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.755432, 30.837040, 38.645939>,  <25.945810, 30.788706, 38.783852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.755432, 30.837040, 38.645939>,  <25.438135, 30.917595, 38.416080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.755432, 30.837040, 38.645939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121522, 0.977097, 0.174683,
		-0.596659, -0.068734, 0.799546,
		0.793240, -0.201389, 0.574641,
		25.993404, 30.776623, 38.818333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.414476, 31.394865, 39.006481>,  <25.438135, 30.917595, 38.416080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.414476, 31.394865, 39.006481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.789717, 31.256716, 39.016914>,  <26.014862, 31.173826, 39.023174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.789717, 31.256716, 39.016914>,  <25.414476, 31.394865, 39.006481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.789717, 31.256716, 39.016914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340621, 0.933598, 0.111233,
		-0.062769, -0.095463, 0.993452,
		0.938103, -0.345373, 0.026084,
		26.071148, 31.153105, 39.024738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.712225, 31.791782, 39.505306>,  <25.414476, 31.394865, 39.006481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.712225, 31.791782, 39.505306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.029680, 31.635653, 39.318638>,  <26.220154, 31.541975, 39.206638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.029680, 31.635653, 39.318638>,  <25.712225, 31.791782, 39.505306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.029680, 31.635653, 39.318638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509985, 0.845082, 0.160473,
		0.331738, -0.365353, 0.869751,
		0.793640, -0.390325, -0.466670,
		26.267773, 31.518555, 39.178638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.227285, 31.934654, 39.917057>,  <25.712225, 31.791782, 39.505306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.227285, 31.934654, 39.917057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.368095, 31.896925, 39.544567>,  <26.452581, 31.874287, 39.321072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.368095, 31.896925, 39.544567>,  <26.227285, 31.934654, 39.917057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.368095, 31.896925, 39.544567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504408, 0.857197, 0.103853,
		0.788448, -0.506277, 0.349333,
		0.352026, -0.094324, -0.931226,
		26.473703, 31.868628, 39.265198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.850721, 32.261879, 39.889835>,  <26.227285, 31.934654, 39.917057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.850721, 32.261879, 39.889835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.802851, 32.264912, 39.492722>,  <26.774128, 32.266731, 39.254452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.802851, 32.264912, 39.492722>,  <26.850721, 32.261879, 39.889835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.802851, 32.264912, 39.492722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516032, 0.854758, -0.055676,
		0.848168, -0.518971, -0.106210,
		-0.119678, 0.007586, -0.992784,
		26.766947, 32.267189, 39.194885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.359509, 32.616428, 39.709755>,  <26.850721, 32.261879, 39.889835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.359509, 32.616428, 39.709755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.165138, 32.620399, 39.360176>,  <27.048517, 32.622784, 39.150429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.165138, 32.620399, 39.360176>,  <27.359509, 32.616428, 39.709755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.165138, 32.620399, 39.360176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465539, 0.849220, -0.249195,
		0.739696, -0.527946, -0.417280,
		-0.485924, 0.009932, -0.873944,
		27.019361, 32.623379, 39.097992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.852093, 32.831688, 39.245590>,  <27.359509, 32.616428, 39.709755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.852093, 32.831688, 39.245590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.501572, 32.908581, 39.068890>,  <27.291260, 32.954716, 38.962868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.501572, 32.908581, 39.068890>,  <27.852093, 32.831688, 39.245590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.501572, 32.908581, 39.068890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404961, 0.790610, -0.459285,
		0.260966, -0.581364, -0.770658,
		-0.876301, 0.192229, -0.441752,
		27.238682, 32.966248, 38.936363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.913258, 32.923851, 38.447701>,  <27.852093, 32.831688, 39.245590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.913258, 32.923851, 38.447701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.589121, 33.123081, 38.571163>,  <27.394640, 33.242619, 38.645241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.589121, 33.123081, 38.571163>,  <27.913258, 32.923851, 38.447701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.589121, 33.123081, 38.571163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308043, 0.810198, -0.498688,
		-0.498456, -0.309028, -0.809965,
		-0.810340, 0.498078, 0.308654,
		27.346020, 33.272503, 38.663761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.805431, 33.374245, 37.892044>,  <27.913258, 32.923851, 38.447701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.805431, 33.374245, 37.892044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.559221, 33.494438, 38.183479>,  <27.411495, 33.566555, 38.358341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.559221, 33.494438, 38.183479>,  <27.805431, 33.374245, 37.892044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.559221, 33.494438, 38.183479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046240, 0.909101, -0.414002,
		-0.786758, -0.288519, -0.545681,
		-0.615527, 0.300488, 0.728584,
		27.374563, 33.584583, 38.402054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.243027, 33.732746, 37.579823>,  <27.805431, 33.374245, 37.892044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.243027, 33.732746, 37.579823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.227417, 33.831932, 37.967014>,  <27.218052, 33.891441, 38.199329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.227417, 33.831932, 37.967014>,  <27.243027, 33.732746, 37.579823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.227417, 33.831932, 37.967014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011935, 0.968536, -0.248586,
		-0.999167, -0.021253, -0.034835,
		-0.039022, 0.247963, 0.967983,
		27.215710, 33.906322, 38.257408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.613256, 34.153397, 37.600838>,  <27.243027, 33.732746, 37.579823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.613256, 34.153397, 37.600838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.866901, 34.234818, 37.899227>,  <27.019089, 34.283669, 38.078259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.866901, 34.234818, 37.899227>,  <26.613256, 34.153397, 37.600838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.866901, 34.234818, 37.899227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067405, 0.975608, -0.208915,
		-0.770299, 0.082193, 0.632364,
		0.634110, 0.203551, 0.745970,
		27.057135, 34.295883, 38.123016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.498671, 34.885887, 37.577435>,  <26.613256, 34.153397, 37.600838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.498671, 34.885887, 37.577435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.803118, 34.814369, 37.826828>,  <26.985786, 34.771458, 37.976463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.803118, 34.814369, 37.826828>,  <26.498671, 34.885887, 37.577435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.803118, 34.814369, 37.826828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238853, 0.970967, -0.013141,
		-0.603036, 0.158924, 0.781723,
		0.761116, -0.178792, 0.623487,
		27.031452, 34.760731, 38.013874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.323284, 35.308975, 38.171375>,  <26.498671, 34.885887, 37.577435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.323284, 35.308975, 38.171375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.720823, 35.270794, 38.148891>,  <26.959347, 35.247887, 38.135403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.720823, 35.270794, 38.148891>,  <26.323284, 35.308975, 38.171375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.720823, 35.270794, 38.148891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098296, 0.993891, 0.050174,
		0.051073, -0.055390, 0.997158,
		0.993846, -0.095454, -0.056205,
		27.018976, 35.242157, 38.132030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.496540, 35.776394, 38.625011>,  <26.323284, 35.308975, 38.171375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.496540, 35.776394, 38.625011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.816818, 35.677292, 38.406834>,  <27.008986, 35.617828, 38.275928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.816818, 35.677292, 38.406834>,  <26.496540, 35.776394, 38.625011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.816818, 35.677292, 38.406834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138060, 0.962279, -0.234434,
		0.582949, 0.112406, 0.804696,
		0.800693, -0.247759, -0.545441,
		27.057026, 35.602962, 38.243202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.969687, 36.140102, 38.890659>,  <26.496540, 35.776394, 38.625011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.969687, 36.140102, 38.890659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.104212, 36.046455, 38.525787>,  <27.184927, 35.990265, 38.306862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.104212, 36.046455, 38.525787>,  <26.969687, 36.140102, 38.890659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.104212, 36.046455, 38.525787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093721, 0.972118, -0.214949,
		0.937075, -0.013200, 0.348879,
		0.336314, -0.234121, -0.912184,
		27.205107, 35.976219, 38.252132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.625814, 36.459671, 38.844009>,  <26.969687, 36.140102, 38.890659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.625814, 36.459671, 38.844009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.499897, 36.416473, 38.466812>,  <27.424347, 36.390556, 38.240494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.499897, 36.416473, 38.466812>,  <27.625814, 36.459671, 38.844009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.499897, 36.416473, 38.466812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157906, 0.973703, -0.164219,
		0.935933, -0.200600, -0.289463,
		-0.314793, -0.107990, -0.942997,
		27.405458, 36.384075, 38.183914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.305277, 36.761261, 39.100498>,  <27.625814, 36.459671, 38.844009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.305277, 36.761261, 39.100498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.300058, 36.607769, 39.469841>,  <28.296926, 36.515675, 39.691444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.300058, 36.607769, 39.469841>,  <28.305277, 36.761261, 39.100498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.300058, 36.607769, 39.469841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723171, -0.641347, -0.256315,
		0.690545, 0.664398, 0.285871,
		-0.013048, -0.383731, 0.923353,
		28.296144, 36.492649, 39.746845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.054722, 36.686092, 39.236797>,  <28.305277, 36.761261, 39.100498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.054722, 36.686092, 39.236797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.807779, 36.444622, 39.438564>,  <28.659613, 36.299740, 39.559624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.807779, 36.444622, 39.438564>,  <29.054722, 36.686092, 39.236797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.807779, 36.444622, 39.438564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690225, -0.723294, -0.020861,
		0.377436, 0.335284, 0.863207,
		-0.617358, -0.603680, 0.504419,
		28.622572, 36.263519, 39.589890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.763189, 37.006203, 39.067875>,  <29.054722, 36.686092, 39.236797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.763189, 37.006203, 39.067875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.075962, 37.255547, 39.066879>,  <30.263626, 37.405151, 39.066284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.075962, 37.255547, 39.066879>,  <29.763189, 37.006203, 39.067875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.075962, 37.255547, 39.066879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479852, -0.599368, 0.640703,
		0.397897, -0.502180, -0.767785,
		0.781934, 0.623357, -0.002485,
		30.310543, 37.442554, 39.066135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.414106, 36.654831, 38.986942>,  <29.763189, 37.006203, 39.067875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.414106, 36.654831, 38.986942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.492300, 37.007111, 39.159523>,  <30.539217, 37.218479, 39.263073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.492300, 37.007111, 39.159523>,  <30.414106, 36.654831, 38.986942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.492300, 37.007111, 39.159523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463943, -0.470645, 0.750499,
		0.864026, 0.053457, -0.500600,
		0.195486, 0.880701, 0.431451,
		30.550945, 37.271320, 39.288960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.092228, 36.521725, 39.114651>,  <30.414106, 36.654831, 38.986942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.092228, 36.521725, 39.114651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.999350, 36.830528, 39.351322>,  <30.943623, 37.015812, 39.493324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.999350, 36.830528, 39.351322>,  <31.092228, 36.521725, 39.114651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.999350, 36.830528, 39.351322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673146, -0.311559, 0.670675,
		0.702112, 0.554015, -0.447333,
		-0.232194, 0.772009, 0.591683,
		30.929691, 37.062130, 39.528828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.644070, 36.866642, 39.421673>,  <31.092228, 36.521725, 39.114651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.644070, 36.866642, 39.421673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.354370, 36.908600, 39.694279>,  <31.180550, 36.933773, 39.857841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.354370, 36.908600, 39.694279>,  <31.644070, 36.866642, 39.421673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.354370, 36.908600, 39.694279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619927, -0.333710, 0.710160,
		0.301919, 0.936822, 0.176663,
		-0.724248, 0.104892, 0.681515,
		31.137096, 36.940067, 39.898731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.691990, 37.368565, 40.105511>,  <31.644070, 36.866642, 39.421673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.691990, 37.368565, 40.105511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.460655, 37.049271, 40.172852>,  <31.321854, 36.857693, 40.213257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.460655, 37.049271, 40.172852>,  <31.691990, 37.368565, 40.105511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.460655, 37.049271, 40.172852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675777, -0.353157, 0.646998,
		-0.457003, 0.487952, 0.743674,
		-0.578337, -0.798238, 0.168353,
		31.287153, 36.809799, 40.223358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.507994, 37.380596, 40.837570>,  <31.691990, 37.368565, 40.105511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.507994, 37.380596, 40.837570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.525839, 37.014576, 40.677227>,  <31.536547, 36.794964, 40.581020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.525839, 37.014576, 40.677227>,  <31.507994, 37.380596, 40.837570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.525839, 37.014576, 40.677227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617696, -0.290092, 0.730957,
		-0.785150, -0.280218, 0.552283,
		0.044614, -0.915054, -0.400855,
		31.539223, 36.740059, 40.556969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.354671, 36.859234, 41.318432>,  <31.507994, 37.380596, 40.837570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.354671, 36.859234, 41.318432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.584831, 36.694527, 41.035770>,  <31.722927, 36.595703, 40.866173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.584831, 36.694527, 41.035770>,  <31.354671, 36.859234, 41.318432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.584831, 36.694527, 41.035770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599218, -0.375805, 0.706901,
		-0.556645, -0.830191, 0.030501,
		0.575400, -0.411769, -0.706655,
		31.757452, 36.570995, 40.823772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.337147, 36.128979, 41.404423>,  <31.354671, 36.859234, 41.318432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.337147, 36.128979, 41.404423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.675877, 36.226082, 41.215126>,  <31.879114, 36.284344, 41.101547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.675877, 36.226082, 41.215126>,  <31.337147, 36.128979, 41.404423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.675877, 36.226082, 41.215126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523613, -0.536712, 0.661642,
		-0.093380, -0.808091, -0.581609,
		0.846823, 0.242755, -0.473245,
		31.929924, 36.298908, 41.073151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.689157, 35.526005, 41.459221>,  <31.337147, 36.128979, 41.404423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.689157, 35.526005, 41.459221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967630, 35.795235, 41.359379>,  <32.134716, 35.956772, 41.299473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967630, 35.795235, 41.359379>,  <31.689157, 35.526005, 41.459221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.967630, 35.795235, 41.359379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630026, -0.406218, 0.661857,
		0.344086, -0.618030, -0.706856,
		0.696184, 0.673073, -0.249601,
		32.176487, 35.997158, 41.284500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.232422, 35.158581, 41.289227>,  <31.689157, 35.526005, 41.459221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.232422, 35.158581, 41.289227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.352005, 35.517731, 41.418499>,  <32.423756, 35.733219, 41.496063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.352005, 35.517731, 41.418499>,  <32.232422, 35.158581, 41.289227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.352005, 35.517731, 41.418499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654439, -0.439389, 0.615343,
		0.694503, 0.027541, -0.718963,
		0.298958, 0.897875, 0.323181,
		32.441692, 35.787094, 41.515453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.936142, 35.194805, 41.221478>,  <32.232422, 35.158581, 41.289227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.936142, 35.194805, 41.221478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.895615, 35.470905, 41.508057>,  <32.871300, 35.636566, 41.680004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.895615, 35.470905, 41.508057>,  <32.936142, 35.194805, 41.221478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.895615, 35.470905, 41.508057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647778, -0.500800, 0.574093,
		0.755062, 0.522262, -0.396389,
		-0.101315, 0.690248, 0.716445,
		32.865219, 35.677979, 41.722988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625248, 35.361259, 41.380093>,  <32.936142, 35.194805, 41.221478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625248, 35.361259, 41.380093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.406342, 35.495453, 41.686806>,  <33.274998, 35.575970, 41.870834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.406342, 35.495453, 41.686806>,  <33.625248, 35.361259, 41.380093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.406342, 35.495453, 41.686806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645374, -0.414182, 0.641830,
		0.532912, 0.846110, 0.010152,
		-0.547263, 0.335487, 0.766780,
		33.242161, 35.596100, 41.916840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078915, 35.734924, 41.816929>,  <33.625248, 35.361259, 41.380093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.078915, 35.734924, 41.816929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.780239, 35.622910, 42.058270>,  <33.601036, 35.555698, 42.203075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.780239, 35.622910, 42.058270>,  <34.078915, 35.734924, 41.816929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.780239, 35.622910, 42.058270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653961, -0.474923, 0.588883,
		0.121637, 0.834281, 0.537754,
		-0.746686, -0.280040, 0.603356,
		33.556232, 35.538898, 42.239277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170116, 35.908520, 42.543468>,  <34.078915, 35.734924, 41.816929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170116, 35.908520, 42.543468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871296, 35.646297, 42.587574>,  <33.692005, 35.488964, 42.614037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871296, 35.646297, 42.587574>,  <34.170116, 35.908520, 42.543468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871296, 35.646297, 42.587574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511105, -0.460353, 0.725842,
		-0.425074, 0.598594, 0.678967,
		-0.747050, -0.655560, 0.110260,
		33.647182, 35.449631, 42.620651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.099899, 35.810333, 43.188320>,  <34.170116, 35.908520, 42.543468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.099899, 35.810333, 43.188320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926350, 35.484741, 43.033817>,  <33.822220, 35.289387, 42.941116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926350, 35.484741, 43.033817>,  <34.099899, 35.810333, 43.188320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926350, 35.484741, 43.033817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310927, -0.537639, 0.783753,
		-0.845625, 0.219950, 0.486355,
		-0.433870, -0.813981, -0.386253,
		33.796188, 35.240547, 42.917942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740849, 35.501144, 43.770870>,  <34.099899, 35.810333, 43.188320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740849, 35.501144, 43.770870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.764698, 35.212978, 43.494480>,  <33.779007, 35.040081, 43.328644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.764698, 35.212978, 43.494480>,  <33.740849, 35.501144, 43.770870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.764698, 35.212978, 43.494480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203721, -0.668859, 0.714930,
		-0.977212, -0.183393, 0.106885,
		0.059622, -0.720413, -0.690978,
		33.782585, 34.996853, 43.287186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.377674, 34.903011, 43.971855>,  <33.740849, 35.501144, 43.770870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.377674, 34.903011, 43.971855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.570942, 34.707485, 43.681309>,  <33.686901, 34.590168, 43.506981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.570942, 34.707485, 43.681309>,  <33.377674, 34.903011, 43.971855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570942, 34.707485, 43.681309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020297, -0.823155, 0.567454,
		-0.875295, -0.288916, -0.387797,
		0.483164, -0.488819, -0.726367,
		33.715893, 34.560841, 43.463398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.063259, 34.267384, 43.825176>,  <33.377674, 34.903011, 43.971855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.063259, 34.267384, 43.825176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437313, 34.189529, 43.706757>,  <33.661743, 34.142818, 43.635704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437313, 34.189529, 43.706757>,  <33.063259, 34.267384, 43.825176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437313, 34.189529, 43.706757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035741, -0.779510, 0.625369,
		-0.352493, -0.595384, -0.721988,
		0.935131, -0.194634, -0.296052,
		33.717854, 34.131138, 43.617943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.063221, 33.598423, 43.632381>,  <33.063259, 34.267384, 43.825176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.063221, 33.598423, 43.632381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450626, 33.679279, 43.690521>,  <33.683067, 33.727795, 43.725403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450626, 33.679279, 43.690521>,  <33.063221, 33.598423, 43.632381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.450626, 33.679279, 43.690521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135254, -0.917305, 0.374510,
		0.209031, -0.343059, -0.915760,
		0.968510, 0.202145, 0.145345,
		33.741180, 33.739922, 43.734123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316540, 32.996330, 43.445267>,  <33.063221, 33.598423, 43.632381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.316540, 32.996330, 43.445267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552971, 33.212852, 43.684471>,  <33.694828, 33.342766, 43.827995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552971, 33.212852, 43.684471>,  <33.316540, 32.996330, 43.445267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552971, 33.212852, 43.684471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143042, -0.799976, 0.582732,
		0.793831, -0.258898, -0.550276,
		0.591076, 0.541304, 0.598013,
		33.730293, 33.375244, 43.863876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.722321, 32.561451, 43.782806>,  <33.316540, 32.996330, 43.445267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.722321, 32.561451, 43.782806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.847141, 32.845371, 44.035412>,  <33.922035, 33.015724, 44.186974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.847141, 32.845371, 44.035412>,  <33.722321, 32.561451, 43.782806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847141, 32.845371, 44.035412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120721, -0.688937, 0.714697,
		0.942364, -0.146787, -0.300673,
		0.312053, 0.709803, 0.631509,
		33.940758, 33.058311, 44.224865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.343540, 32.324516, 44.159977>,  <33.722321, 32.561451, 43.782806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.343540, 32.324516, 44.159977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.205498, 32.616814, 44.395576>,  <34.122673, 32.792191, 44.536934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.205498, 32.616814, 44.395576>,  <34.343540, 32.324516, 44.159977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.205498, 32.616814, 44.395576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083754, -0.601070, 0.794796,
		0.934818, 0.323623, 0.146232,
		-0.345109, 0.730742, 0.588996,
		34.101963, 32.836037, 44.572273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709164, 32.245575, 44.839844>,  <34.343540, 32.324516, 44.159977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.709164, 32.245575, 44.839844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.395561, 32.476334, 44.931522>,  <34.207401, 32.614788, 44.986530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.395561, 32.476334, 44.931522>,  <34.709164, 32.245575, 44.839844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.395561, 32.476334, 44.931522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006471, -0.361612, 0.932306,
		0.620723, 0.732415, 0.279772,
		-0.784004, 0.576893, 0.229200,
		34.160358, 32.649403, 45.000282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880783, 32.696259, 45.494038>,  <34.709164, 32.245575, 44.839844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880783, 32.696259, 45.494038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.483421, 32.710114, 45.450325>,  <34.245003, 32.718426, 45.424099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.483421, 32.710114, 45.450325>,  <34.880783, 32.696259, 45.494038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.483421, 32.710114, 45.450325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112779, -0.124293, 0.985816,
		0.020559, 0.991641, 0.127379,
		-0.993407, 0.034633, -0.109281,
		34.185398, 32.720505, 45.417542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608162, 33.056545, 46.119324>,  <34.880783, 32.696259, 45.494038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608162, 33.056545, 46.119324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300831, 32.873932, 45.939884>,  <34.116432, 32.764362, 45.832218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300831, 32.873932, 45.939884>,  <34.608162, 33.056545, 46.119324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300831, 32.873932, 45.939884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376419, -0.244560, 0.893588,
		-0.517666, 0.855432, 0.016053,
		-0.768330, -0.456537, -0.448601,
		34.070332, 32.736969, 45.805305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.962524, 33.307842, 46.451191>,  <34.608162, 33.056545, 46.119324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.962524, 33.307842, 46.451191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927143, 32.933620, 46.314423>,  <33.905914, 32.709087, 46.232361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927143, 32.933620, 46.314423>,  <33.962524, 33.307842, 46.451191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927143, 32.933620, 46.314423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383717, -0.284773, 0.878445,
		-0.919205, 0.208902, -0.333800,
		-0.088452, -0.935555, -0.341924,
		33.900608, 32.652954, 46.211845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.341217, 33.071545, 46.705612>,  <33.962524, 33.307842, 46.451191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.341217, 33.071545, 46.705612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521851, 32.731976, 46.595783>,  <33.630230, 32.528233, 46.529884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521851, 32.731976, 46.595783>,  <33.341217, 33.071545, 46.705612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.521851, 32.731976, 46.595783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270797, -0.423634, 0.864409,
		-0.850140, -0.316002, -0.421195,
		0.451587, -0.848927, -0.274576,
		33.657326, 32.477299, 46.513412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.775139, 32.535271, 46.597542>,  <33.341217, 33.071545, 46.705612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.775139, 32.535271, 46.597542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.130962, 32.365528, 46.665207>,  <33.344456, 32.263683, 46.705807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.130962, 32.365528, 46.665207>,  <32.775139, 32.535271, 46.597542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.130962, 32.365528, 46.665207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383938, -0.493816, 0.780217,
		-0.247554, -0.758993, -0.602202,
		0.889555, -0.424354, 0.169160,
		33.397827, 32.238220, 46.715954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613842, 31.877960, 46.905544>,  <32.775139, 32.535271, 46.597542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613842, 31.877960, 46.905544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.001041, 31.914742, 46.998947>,  <33.233360, 31.936810, 47.054989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.001041, 31.914742, 46.998947>,  <32.613842, 31.877960, 46.905544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.001041, 31.914742, 46.998947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159767, -0.491752, 0.855952,
		0.193536, -0.865866, -0.461323,
		0.967997, 0.091953, 0.233508,
		33.291439, 31.942327, 47.069000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.763817, 31.161501, 47.125580>,  <32.613842, 31.877960, 46.905544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.763817, 31.161501, 47.125580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.065319, 31.389959, 47.255592>,  <33.246220, 31.527035, 47.333599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.065319, 31.389959, 47.255592>,  <32.763817, 31.161501, 47.125580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.065319, 31.389959, 47.255592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181356, -0.656186, 0.732482,
		0.631639, -0.493162, -0.598183,
		0.753752, 0.571148, 0.325035,
		33.291443, 31.561304, 47.353104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.281139, 30.736561, 47.309406>,  <32.763817, 31.161501, 47.125580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.281139, 30.736561, 47.309406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.390579, 31.064280, 47.510960>,  <33.456245, 31.260910, 47.631889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.390579, 31.064280, 47.510960>,  <33.281139, 30.736561, 47.309406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.390579, 31.064280, 47.510960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239137, -0.565363, 0.789417,
		0.931641, -0.095491, -0.350609,
		0.273604, 0.819296, 0.503880,
		33.472660, 31.310068, 47.662125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972725, 30.572388, 47.486267>,  <33.281139, 30.736561, 47.309406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972725, 30.572388, 47.486267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851501, 30.865879, 47.729511>,  <33.778767, 31.041973, 47.875458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851501, 30.865879, 47.729511>,  <33.972725, 30.572388, 47.486267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.851501, 30.865879, 47.729511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405880, -0.477973, 0.778976,
		0.862217, 0.482895, -0.152952,
		-0.303056, 0.733727, 0.608113,
		33.760586, 31.085997, 47.911945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.565784, 30.808218, 47.871304>,  <33.972725, 30.572388, 47.486267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.565784, 30.808218, 47.871304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.266369, 30.918238, 48.112648>,  <34.086720, 30.984249, 48.257454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.266369, 30.918238, 48.112648>,  <34.565784, 30.808218, 47.871304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266369, 30.918238, 48.112648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524623, -0.310846, 0.792557,
		0.405545, 0.909792, 0.088381,
		-0.748535, 0.275051, 0.603360,
		34.041809, 31.000753, 48.293655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749653, 31.270653, 48.415607>,  <34.565784, 30.808218, 47.871304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749653, 31.270653, 48.415607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.431911, 31.078913, 48.564861>,  <34.241268, 30.963869, 48.654415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.431911, 31.078913, 48.564861>,  <34.749653, 31.270653, 48.415607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431911, 31.078913, 48.564861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568835, -0.371441, 0.733797,
		-0.213146, 0.795146, 0.567725,
		-0.794352, -0.479348, 0.373136,
		34.193607, 30.935108, 48.676804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.889500, 31.294800, 49.089127>,  <34.749653, 31.270653, 48.415607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.889500, 31.294800, 49.089127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607178, 31.014572, 49.047108>,  <34.437782, 30.846436, 49.021896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607178, 31.014572, 49.047108>,  <34.889500, 31.294800, 49.089127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.607178, 31.014572, 49.047108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391596, -0.509417, 0.766255,
		-0.590327, 0.499695, 0.633892,
		-0.705809, -0.700570, -0.105044,
		34.395435, 30.804401, 49.015594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.623550, 31.118324, 49.775871>,  <34.889500, 31.294800, 49.089127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.623550, 31.118324, 49.775871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.546967, 30.808567, 49.534657>,  <34.501015, 30.622713, 49.389927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.546967, 30.808567, 49.534657>,  <34.623550, 31.118324, 49.775871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.546967, 30.808567, 49.534657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239763, -0.632695, 0.736350,
		-0.951764, -0.003603, 0.306809,
		-0.191464, -0.774393, -0.603040,
		34.489529, 30.576250, 49.353745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.086365, 30.747559, 50.168743>,  <34.623550, 31.118324, 49.775871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.086365, 30.747559, 50.168743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.160435, 30.461470, 49.899174>,  <34.204876, 30.289816, 49.737431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.160435, 30.461470, 49.899174>,  <34.086365, 30.747559, 50.168743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.160435, 30.461470, 49.899174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073218, -0.673835, 0.735246,
		-0.979975, -0.185491, -0.072409,
		0.185173, -0.715220, -0.673922,
		34.215988, 30.246904, 49.696999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.668640, 30.177486, 50.416866>,  <34.086365, 30.747559, 50.168743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.668640, 30.177486, 50.416866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.953983, 30.022839, 50.183064>,  <34.125191, 29.930050, 50.042782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.953983, 30.022839, 50.183064>,  <33.668640, 30.177486, 50.416866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.953983, 30.022839, 50.183064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117228, -0.756468, 0.643439,
		-0.690923, -0.527524, -0.494312,
		0.713360, -0.386620, -0.584502,
		34.167992, 29.906853, 50.007713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470928, 29.506384, 50.268429>,  <33.668640, 30.177486, 50.416866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470928, 29.506384, 50.268429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.863708, 29.511347, 50.192932>,  <34.099377, 29.514324, 50.147633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.863708, 29.511347, 50.192932>,  <33.470928, 29.506384, 50.268429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.863708, 29.511347, 50.192932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114841, -0.831999, 0.542761,
		-0.150301, -0.554639, -0.818404,
		0.981948, 0.012409, -0.188746,
		34.158295, 29.515070, 50.136307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.652515, 28.881710, 50.124741>,  <33.470928, 29.506384, 50.268429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.652515, 28.881710, 50.124741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.004883, 29.041368, 50.226463>,  <34.216301, 29.137163, 50.287498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.004883, 29.041368, 50.226463>,  <33.652515, 28.881710, 50.124741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.004883, 29.041368, 50.226463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220407, -0.821500, 0.525888,
		0.418820, -0.407211, -0.811646,
		0.880915, 0.399145, 0.254308,
		34.269157, 29.161112, 50.302757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.105938, 28.346142, 49.864697>,  <33.652515, 28.881710, 50.124741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.105938, 28.346142, 49.864697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.217506, 28.588406, 50.162792>,  <34.284447, 28.733763, 50.341648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.217506, 28.588406, 50.162792>,  <34.105938, 28.346142, 49.864697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.217506, 28.588406, 50.162792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009876, -0.774187, 0.632880,
		0.960264, -0.183882, -0.209953,
		0.278918, 0.605659, 0.745240,
		34.301182, 28.770103, 50.386364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.583122, 27.965221, 50.147617>,  <34.105938, 28.346142, 49.864697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.583122, 27.965221, 50.147617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491268, 28.221457, 50.440716>,  <34.436153, 28.375198, 50.616573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491268, 28.221457, 50.440716>,  <34.583122, 27.965221, 50.147617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491268, 28.221457, 50.440716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188190, -0.767880, 0.612327,
		0.954908, 0.002719, 0.296888,
		-0.229640, 0.640587, 0.732744,
		34.422375, 28.413633, 50.660538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938377, 27.698311, 50.801506>,  <34.583122, 27.965221, 50.147617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938377, 27.698311, 50.801506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.676003, 27.963949, 50.945023>,  <34.518578, 28.123331, 51.031132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.676003, 27.963949, 50.945023>,  <34.938377, 27.698311, 50.801506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.676003, 27.963949, 50.945023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117704, -0.559506, 0.820426,
		0.745583, 0.495916, 0.445166,
		-0.655936, 0.664094, 0.358787,
		34.479221, 28.163177, 51.052658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035698, 27.755295, 51.546558>,  <34.938377, 27.698311, 50.801506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035698, 27.755295, 51.546558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.670216, 27.899916, 51.472347>,  <34.450928, 27.986689, 51.427818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.670216, 27.899916, 51.472347>,  <35.035698, 27.755295, 51.546558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670216, 27.899916, 51.472347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347788, -0.459568, 0.817215,
		0.210202, 0.811219, 0.545654,
		-0.913706, 0.361552, -0.185530,
		34.396103, 28.008381, 51.416687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741756, 27.784430, 52.285519>,  <35.035698, 27.755295, 51.546558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.741756, 27.784430, 52.285519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.431404, 27.795387, 52.033405>,  <34.245193, 27.801962, 51.882137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.431404, 27.795387, 52.033405>,  <34.741756, 27.784430, 52.285519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431404, 27.795387, 52.033405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503332, -0.629204, 0.592249,
		-0.380354, 0.776757, 0.501976,
		-0.775879, 0.027397, -0.630287,
		34.198639, 27.803606, 51.844318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.148930, 27.737616, 52.757435>,  <34.741756, 27.784430, 52.285519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.148930, 27.737616, 52.757435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996944, 27.668699, 52.393909>,  <33.905754, 27.627350, 52.175793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996944, 27.668699, 52.393909>,  <34.148930, 27.737616, 52.757435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996944, 27.668699, 52.393909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657741, -0.640494, 0.396414,
		-0.650388, 0.748387, 0.130042,
		-0.379962, -0.172289, -0.908815,
		33.882957, 27.617012, 52.121265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408936, 27.815748, 52.770802>,  <34.148930, 27.737616, 52.757435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408936, 27.815748, 52.770802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.537659, 27.554543, 52.496571>,  <33.614891, 27.397820, 52.332031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.537659, 27.554543, 52.496571>,  <33.408936, 27.815748, 52.770802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.537659, 27.554543, 52.496571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593496, -0.703302, 0.391316,
		-0.737701, 0.280957, -0.613889,
		0.321807, -0.653015, -0.685574,
		33.634201, 27.358639, 52.290897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.857201, 27.444357, 52.473942>,  <33.408936, 27.815748, 52.770802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.857201, 27.444357, 52.473942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.176144, 27.203070, 52.466404>,  <33.367508, 27.058296, 52.461880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.176144, 27.203070, 52.466404>,  <32.857201, 27.444357, 52.473942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.176144, 27.203070, 52.466404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555142, -0.745336, 0.369176,
		-0.236739, -0.283903, -0.929169,
		0.797353, -0.603219, -0.018844,
		33.415348, 27.022104, 52.460751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.057438, 26.861351, 52.871487>,  <32.857201, 27.444357, 52.473942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.057438, 26.861351, 52.871487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977409, 26.469448, 52.868595>,  <32.929394, 26.234306, 52.866859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977409, 26.469448, 52.868595>,  <33.057438, 26.861351, 52.871487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.977409, 26.469448, 52.868595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974296, 0.198163, 0.107141,
		-0.103538, 0.028481, -0.994218,
		-0.200069, -0.979755, -0.007232,
		32.917389, 26.175522, 52.866425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.439415, 26.827200, 52.377220>,  <33.057438, 26.861351, 52.871487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.439415, 26.827200, 52.377220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.464226, 26.550016, 52.664543>,  <32.479111, 26.383707, 52.836937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.464226, 26.550016, 52.664543>,  <32.439415, 26.827200, 52.377220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.464226, 26.550016, 52.664543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885161, 0.294321, 0.360367,
		-0.461132, -0.658166, -0.595126,
		0.062023, -0.692959, 0.718304,
		32.482834, 26.342129, 52.880035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.896879, 26.365829, 52.330376>,  <32.439415, 26.827200, 52.377220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.896879, 26.365829, 52.330376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.027462, 26.379797, 52.708202>,  <32.105812, 26.388178, 52.934898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.027462, 26.379797, 52.708202>,  <31.896879, 26.365829, 52.330376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.027462, 26.379797, 52.708202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915689, 0.259490, 0.306886,
		-0.234389, -0.965114, 0.116688,
		0.326459, 0.034919, 0.944566,
		32.125401, 26.390272, 52.991573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.520350, 25.915436, 52.781799>,  <31.896879, 26.365829, 52.330376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.520350, 25.915436, 52.781799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.669174, 26.260878, 52.917896>,  <31.758469, 26.468142, 52.999554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.669174, 26.260878, 52.917896>,  <31.520350, 25.915436, 52.781799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.669174, 26.260878, 52.917896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917600, 0.286948, 0.275082,
		0.139930, -0.414551, 0.899203,
		0.372060, 0.863602, 0.340240,
		31.780792, 26.519958, 53.019966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.007565, 25.298395, 52.473904>,  <31.520350, 25.915436, 52.781799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.007565, 25.298395, 52.473904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.141071, 25.050793, 52.758278>,  <32.221176, 24.902231, 52.928902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.141071, 25.050793, 52.758278>,  <32.007565, 25.298395, 52.473904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.141071, 25.050793, 52.758278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048846, -0.764530, -0.642735,
		0.941390, 0.179796, -0.285410,
		0.333766, -0.619005, 0.710938,
		32.241199, 24.865091, 52.971558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.772350, 24.896557, 52.387558>,  <32.007565, 25.298395, 52.473904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.772350, 24.896557, 52.387558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.523827, 24.683666, 52.617588>,  <32.374714, 24.555933, 52.755608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.523827, 24.683666, 52.617588>,  <32.772350, 24.896557, 52.387558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.523827, 24.683666, 52.617588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134965, -0.795641, -0.590542,
		0.771854, -0.289295, 0.566172,
		-0.621310, -0.532225, 0.575074,
		32.337433, 24.523998, 52.790112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.158997, 24.975286, 51.699142>,  <32.772350, 24.896557, 52.387558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.158997, 24.975286, 51.699142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835800, 25.180086, 51.582523>,  <32.641880, 25.302967, 51.512550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835800, 25.180086, 51.582523>,  <33.158997, 24.975286, 51.699142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.835800, 25.180086, 51.582523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547017, 0.468028, -0.694062,
		-0.218906, -0.720281, -0.658236,
		-0.807993, 0.512001, -0.291551,
		32.593403, 25.333687, 51.495056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.064362, 24.857042, 50.944977>,  <33.158997, 24.975286, 51.699142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.064362, 24.857042, 50.944977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.930477, 25.198641, 51.104305>,  <32.850147, 25.403601, 51.199902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.930477, 25.198641, 51.104305>,  <33.064362, 24.857042, 50.944977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.930477, 25.198641, 51.104305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518048, 0.519856, -0.679247,
		-0.787142, -0.021004, -0.616414,
		-0.334714, 0.853996, 0.398320,
		32.830063, 25.454840, 51.223801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.703766, 25.303984, 50.468292>,  <33.064362, 24.857042, 50.944977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.703766, 25.303984, 50.468292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.863548, 25.539740, 50.749165>,  <32.959415, 25.681194, 50.917686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.863548, 25.539740, 50.749165>,  <32.703766, 25.303984, 50.468292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.863548, 25.539740, 50.749165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492671, 0.507923, -0.706604,
		-0.773120, 0.628198, -0.087485,
		0.399451, 0.589391, 0.702180,
		32.983383, 25.716557, 50.959820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.626183, 25.944979, 50.252750>,  <32.703766, 25.303984, 50.468292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.626183, 25.944979, 50.252750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933685, 25.988400, 50.504852>,  <33.118187, 26.014452, 50.656113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933685, 25.988400, 50.504852>,  <32.626183, 25.944979, 50.252750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.933685, 25.988400, 50.504852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504122, 0.503554, -0.701637,
		-0.393531, 0.857117, 0.332390,
		0.768761, 0.108551, 0.630256,
		33.164314, 26.020966, 50.693928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.767803, 26.676783, 50.413357>,  <32.626183, 25.944979, 50.252750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.767803, 26.676783, 50.413357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.101604, 26.457350, 50.433960>,  <33.301888, 26.325689, 50.446320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.101604, 26.457350, 50.433960>,  <32.767803, 26.676783, 50.413357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.101604, 26.457350, 50.433960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449742, 0.624169, -0.638862,
		0.318322, 0.556298, 0.767596,
		0.834508, -0.548584, 0.051504,
		33.351955, 26.292774, 50.449409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.255154, 27.132658, 50.327576>,  <32.767803, 26.676783, 50.413357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.255154, 27.132658, 50.327576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.422878, 26.776524, 50.256611>,  <33.523514, 26.562843, 50.214031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.422878, 26.776524, 50.256611>,  <33.255154, 27.132658, 50.327576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.422878, 26.776524, 50.256611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518909, 0.395405, -0.757884,
		0.744922, 0.225731, 0.627803,
		0.419314, -0.890337, -0.177412,
		33.548672, 26.509422, 50.203388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.984497, 27.263481, 50.271965>,  <33.255154, 27.132658, 50.327576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.984497, 27.263481, 50.271965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.928215, 26.912872, 50.087830>,  <33.894444, 26.702507, 49.977348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.928215, 26.912872, 50.087830>,  <33.984497, 27.263481, 50.271965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.928215, 26.912872, 50.087830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563675, 0.311322, -0.765080,
		0.813923, -0.367133, 0.450269,
		-0.140707, -0.876523, -0.460336,
		33.886002, 26.649916, 49.949730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613621, 26.942572, 50.146992>,  <33.984497, 27.263481, 50.271965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.613621, 26.942572, 50.146992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.390598, 26.777805, 49.858696>,  <34.256786, 26.678946, 49.685719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.390598, 26.777805, 49.858696>,  <34.613621, 26.942572, 50.146992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.390598, 26.777805, 49.858696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720894, 0.190264, -0.666417,
		0.411637, -0.891137, 0.190865,
		-0.557554, -0.411915, -0.720735,
		34.223331, 26.654230, 49.642475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.063725, 26.478746, 49.792061>,  <34.613621, 26.942572, 50.146992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.063725, 26.478746, 49.792061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.752728, 26.571411, 49.558189>,  <34.566132, 26.627010, 49.417866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.752728, 26.571411, 49.558189>,  <35.063725, 26.478746, 49.792061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.752728, 26.571411, 49.558189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617147, 0.102182, -0.780185,
		-0.120996, -0.967415, -0.222414,
		-0.777489, 0.231662, -0.584674,
		34.519482, 26.640909, 49.382786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.306431, 26.361345, 49.167156>,  <35.063725, 26.478746, 49.792061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.306431, 26.361345, 49.167156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.961197, 26.508696, 49.028946>,  <34.754059, 26.597105, 48.946018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.961197, 26.508696, 49.028946>,  <35.306431, 26.361345, 49.167156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.961197, 26.508696, 49.028946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397098, 0.072202, -0.914932,
		-0.312091, -0.926869, -0.208598,
		-0.863083, 0.368376, -0.345524,
		34.702271, 26.619207, 48.925289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.279560, 26.191715, 48.385475>,  <35.306431, 26.361345, 49.167156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.279560, 26.191715, 48.385475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.994049, 26.468071, 48.431408>,  <34.822742, 26.633884, 48.458969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.994049, 26.468071, 48.431408>,  <35.279560, 26.191715, 48.385475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994049, 26.468071, 48.431408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162248, 0.322616, -0.932520,
		-0.681317, -0.646984, -0.342373,
		-0.713781, 0.690891, 0.114832,
		34.779915, 26.675339, 48.465858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757919, 26.161514, 47.828068>,  <35.279560, 26.191715, 48.385475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.757919, 26.161514, 47.828068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.771481, 26.531307, 47.979954>,  <34.779617, 26.753183, 48.071083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.771481, 26.531307, 47.979954>,  <34.757919, 26.161514, 47.828068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.771481, 26.531307, 47.979954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161508, 0.369870, -0.914938,
		-0.986289, 0.092347, -0.136772,
		0.033904, 0.924483, 0.379713,
		34.781651, 26.808653, 48.093868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.374226, 26.684389, 47.354038>,  <34.757919, 26.161514, 47.828068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.374226, 26.684389, 47.354038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607048, 26.932844, 47.563953>,  <34.746742, 27.081917, 47.689903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607048, 26.932844, 47.563953>,  <34.374226, 26.684389, 47.354038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.607048, 26.932844, 47.563953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220260, 0.500812, -0.837062,
		-0.782747, 0.602808, 0.154691,
		0.582059, 0.621136, 0.524784,
		34.781666, 27.119184, 47.721390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.236870, 27.317228, 47.065350>,  <34.374226, 26.684389, 47.354038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.236870, 27.317228, 47.065350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.573330, 27.389297, 47.269310>,  <34.775208, 27.432539, 47.391685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.573330, 27.389297, 47.269310>,  <34.236870, 27.317228, 47.065350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.573330, 27.389297, 47.269310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259231, 0.693152, -0.672562,
		-0.474618, 0.697909, 0.536340,
		0.841152, 0.180174, 0.509902,
		34.825676, 27.443350, 47.422279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.392387, 27.978109, 46.930233>,  <34.236870, 27.317228, 47.065350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.392387, 27.978109, 46.930233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756401, 27.899750, 47.076363>,  <34.974808, 27.852734, 47.164040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756401, 27.899750, 47.076363>,  <34.392387, 27.978109, 46.930233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756401, 27.899750, 47.076363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408163, 0.577392, -0.707122,
		-0.072411, 0.792617, 0.605405,
		0.910033, -0.195901, 0.365327,
		35.029411, 27.840979, 47.185959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785027, 28.588617, 46.903564>,  <34.392387, 27.978109, 46.930233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.785027, 28.588617, 46.903564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.074619, 28.312872, 46.893501>,  <35.248375, 28.147425, 46.887463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.074619, 28.312872, 46.893501>,  <34.785027, 28.588617, 46.903564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.074619, 28.312872, 46.893501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462327, 0.511966, -0.723978,
		0.511966, 0.512511, 0.689364,
		0.723978, -0.689364, -0.025161,
		35.291813, 28.106062, 46.885952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502819, 28.878956, 47.064594>,  <34.785027, 28.588617, 46.903564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502819, 28.878956, 47.064594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.560871, 28.549335, 46.845551>,  <35.595703, 28.351562, 46.714123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.560871, 28.549335, 46.845551>,  <35.502819, 28.878956, 47.064594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.560871, 28.549335, 46.845551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553254, 0.526446, -0.645573,
		0.820273, -0.209275, 0.532313,
		0.145131, -0.824050, -0.547611,
		35.604412, 28.302120, 46.681267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.141022, 28.856026, 46.893917>,  <35.502819, 28.878956, 47.064594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.141022, 28.856026, 46.893917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992832, 28.617823, 46.608788>,  <35.903919, 28.474901, 46.437710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992832, 28.617823, 46.608788>,  <36.141022, 28.856026, 46.893917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992832, 28.617823, 46.608788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529388, 0.495212, -0.688849,
		0.763213, -0.632564, 0.131788,
		-0.370478, -0.595506, -0.712824,
		35.881687, 28.439171, 46.394939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.730740, 28.819530, 46.482388>,  <36.141022, 28.856026, 46.893917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.730740, 28.819530, 46.482388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.425392, 28.690041, 46.258793>,  <36.242184, 28.612347, 46.124634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.425392, 28.690041, 46.258793>,  <36.730740, 28.819530, 46.482388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425392, 28.690041, 46.258793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398433, 0.445171, -0.801919,
		0.508445, -0.834881, -0.210849,
		-0.763370, -0.323723, -0.558989,
		36.196381, 28.592924, 46.091095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088737, 28.549837, 45.875301>,  <36.730740, 28.819530, 46.482388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.088737, 28.549837, 45.875301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.702484, 28.608244, 45.789295>,  <36.470734, 28.643288, 45.737690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.702484, 28.608244, 45.789295>,  <37.088737, 28.549837, 45.875301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702484, 28.608244, 45.789295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249399, 0.287669, -0.924688,
		-0.073167, -0.946534, -0.314199,
		-0.965633, 0.146017, -0.215016,
		36.412796, 28.652048, 45.724789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045738, 28.362881, 45.196568>,  <37.088737, 28.549837, 45.875301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045738, 28.362881, 45.196568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.716904, 28.580271, 45.264465>,  <36.519604, 28.710705, 45.305202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.716904, 28.580271, 45.264465>,  <37.045738, 28.362881, 45.196568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716904, 28.580271, 45.264465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144256, 0.487209, -0.861288,
		-0.550791, -0.683564, -0.478926,
		-0.822083, 0.543477, 0.169742,
		36.470280, 28.743315, 45.315388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.848694, 28.556538, 44.458908>,  <37.045738, 28.362881, 45.196568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.848694, 28.556538, 44.458908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.627052, 28.809713, 44.675186>,  <36.494068, 28.961618, 44.804955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.627052, 28.809713, 44.675186>,  <36.848694, 28.556538, 44.458908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.627052, 28.809713, 44.675186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204862, 0.733237, -0.648379,
		-0.806844, -0.248502, -0.535956,
		-0.554107, 0.632938, 0.540699,
		36.460819, 28.999596, 44.837395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312576, 28.846180, 44.034515>,  <36.848694, 28.556538, 44.458908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312576, 28.846180, 44.034515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352131, 29.117432, 44.325821>,  <36.375862, 29.280182, 44.500603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352131, 29.117432, 44.325821>,  <36.312576, 28.846180, 44.034515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352131, 29.117432, 44.325821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110383, 0.719855, -0.685291,
		-0.988958, 0.148152, -0.003672,
		0.098884, 0.678129, 0.728260,
		36.381798, 29.320871, 44.544300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778240, 29.296391, 44.007488>,  <36.312576, 28.846180, 44.034515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778240, 29.296391, 44.007488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057709, 29.496664, 44.211910>,  <36.225391, 29.616827, 44.334564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057709, 29.496664, 44.211910>,  <35.778240, 29.296391, 44.007488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057709, 29.496664, 44.211910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101489, 0.776454, -0.621948,
		-0.708209, 0.382670, 0.593299,
		0.698670, 0.500682, 0.511055,
		36.267311, 29.646870, 44.365227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423100, 29.883604, 44.128559>,  <35.778240, 29.296391, 44.007488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423100, 29.883604, 44.128559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.803196, 29.988695, 44.195511>,  <36.031254, 30.051750, 44.235683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.803196, 29.988695, 44.195511>,  <35.423100, 29.883604, 44.128559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.803196, 29.988695, 44.195511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160476, 0.873376, -0.459849,
		-0.267000, 0.410107, 0.872080,
		0.950241, 0.262727, 0.167379,
		36.088268, 30.067513, 44.245724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312767, 30.562321, 44.174568>,  <35.423100, 29.883604, 44.128559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.312767, 30.562321, 44.174568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708721, 30.533363, 44.125774>,  <35.946293, 30.515989, 44.096497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708721, 30.533363, 44.125774>,  <35.312767, 30.562321, 44.174568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708721, 30.533363, 44.125774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022056, 0.770951, -0.636513,
		0.140122, 0.632767, 0.761559,
		0.989889, -0.072393, -0.121983,
		36.005688, 30.511646, 44.089180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.421383, 31.218037, 44.019779>,  <35.312767, 30.562321, 44.174568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.421383, 31.218037, 44.019779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.758327, 31.058229, 43.875107>,  <35.960495, 30.962345, 43.788303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.758327, 31.058229, 43.875107>,  <35.421383, 31.218037, 44.019779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758327, 31.058229, 43.875107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062315, 0.594419, -0.801738,
		0.535298, 0.697891, 0.475820,
		0.842362, -0.399518, -0.361680,
		36.011036, 30.938374, 43.766602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.969723, 31.788336, 43.956795>,  <35.421383, 31.218037, 44.019779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.969723, 31.788336, 43.956795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.037727, 31.499084, 43.689011>,  <36.078529, 31.325535, 43.528339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.037727, 31.499084, 43.689011>,  <35.969723, 31.788336, 43.956795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.037727, 31.499084, 43.689011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084444, 0.687547, -0.721214,
		0.981817, 0.066086, 0.177957,
		0.170016, -0.723127, -0.669464,
		36.088734, 31.282146, 43.488171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494217, 31.938402, 43.629910>,  <35.969723, 31.788336, 43.956795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.494217, 31.938402, 43.629910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.346119, 31.662401, 43.381130>,  <36.257259, 31.496801, 43.231861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.346119, 31.662401, 43.381130>,  <36.494217, 31.938402, 43.629910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.346119, 31.662401, 43.381130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155823, 0.613909, -0.773844,
		0.915772, -0.383426, -0.119779,
		-0.370245, -0.690000, -0.621947,
		36.235046, 31.455400, 43.194546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.938015, 31.793167, 43.044380>,  <36.494217, 31.938402, 43.629910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.938015, 31.793167, 43.044380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561256, 31.709291, 42.939415>,  <36.335201, 31.658966, 42.876434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561256, 31.709291, 42.939415>,  <36.938015, 31.793167, 43.044380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561256, 31.709291, 42.939415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132601, 0.485663, -0.864030,
		0.308624, -0.848624, -0.429639,
		-0.941896, -0.209690, -0.262416,
		36.278687, 31.646385, 42.860691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907791, 31.895504, 42.362869>,  <36.938015, 31.793167, 43.044380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.907791, 31.895504, 42.362869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.511387, 31.862297, 42.404842>,  <36.273544, 31.842373, 42.430027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.511387, 31.862297, 42.404842>,  <36.907791, 31.895504, 42.362869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.511387, 31.862297, 42.404842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133436, 0.670893, -0.729450,
		-0.009841, -0.736892, -0.675938,
		-0.991009, -0.083016, 0.104930,
		36.214085, 31.837393, 42.436321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.604935, 31.734867, 41.662266>,  <36.907791, 31.895504, 42.362869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.604935, 31.734867, 41.662266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.299767, 31.874844, 41.879704>,  <36.116665, 31.958830, 42.010166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.299767, 31.874844, 41.879704>,  <36.604935, 31.734867, 41.662266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.299767, 31.874844, 41.879704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204428, 0.667110, -0.716361,
		-0.613324, -0.657651, -0.437412,
		-0.762917, 0.349943, 0.543596,
		36.070892, 31.979826, 42.042782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928844, 31.593872, 41.265549>,  <36.604935, 31.734867, 41.662266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.928844, 31.593872, 41.265549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.894840, 31.909655, 41.508705>,  <35.874439, 32.099125, 41.654598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.894840, 31.909655, 41.508705>,  <35.928844, 31.593872, 41.265549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894840, 31.909655, 41.508705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309584, 0.558974, -0.769225,
		-0.947065, -0.253583, 0.196886,
		-0.085008, 0.789458, 0.607889,
		35.869339, 32.146492, 41.691071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.228275, 31.906544, 41.077904>,  <35.928844, 31.593872, 41.265549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.228275, 31.906544, 41.077904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.464542, 32.177826, 41.252785>,  <35.606300, 32.340595, 41.357716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.464542, 32.177826, 41.252785>,  <35.228275, 31.906544, 41.077904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464542, 32.177826, 41.252785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375830, 0.710692, -0.594700,
		-0.714049, 0.186953, 0.674672,
		0.590665, 0.678207, 0.437207,
		35.641743, 32.381287, 41.383945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.800388, 32.507446, 41.148155>,  <35.228275, 31.906544, 41.077904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.800388, 32.507446, 41.148155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175941, 32.636974, 41.194866>,  <35.401276, 32.714691, 41.222893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175941, 32.636974, 41.194866>,  <34.800388, 32.507446, 41.148155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175941, 32.636974, 41.194866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151537, 0.693410, -0.704429,
		-0.309081, 0.643681, 0.700102,
		0.938885, 0.323817, 0.116778,
		35.457607, 32.734119, 41.229900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740993, 33.258331, 41.259731>,  <34.800388, 32.507446, 41.148155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.740993, 33.258331, 41.259731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.113022, 33.197083, 41.126152>,  <35.336239, 33.160332, 41.046005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.113022, 33.197083, 41.126152>,  <34.740993, 33.258331, 41.259731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113022, 33.197083, 41.126152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102023, 0.765595, -0.635181,
		0.352930, 0.624834, 0.696436,
		0.930071, -0.153122, -0.333949,
		35.392044, 33.151146, 41.025967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012344, 33.947491, 41.173340>,  <34.740993, 33.258331, 41.259731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.012344, 33.947491, 41.173340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.242073, 33.702843, 40.955688>,  <35.379910, 33.556053, 40.825096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.242073, 33.702843, 40.955688>,  <35.012344, 33.947491, 41.173340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.242073, 33.702843, 40.955688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067699, 0.626921, -0.776136,
		0.815828, 0.482586, 0.318646,
		0.574318, -0.611621, -0.544131,
		35.414368, 33.519356, 40.792450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490368, 34.426735, 40.892517>,  <35.012344, 33.947491, 41.173340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.490368, 34.426735, 40.892517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.488895, 34.093857, 40.670727>,  <35.488010, 33.894131, 40.537651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.488895, 34.093857, 40.670727>,  <35.490368, 34.426735, 40.892517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.488895, 34.093857, 40.670727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077112, 0.552592, -0.829877,
		0.997016, -0.045814, 0.062136,
		-0.003684, -0.832192, -0.554475,
		35.487789, 33.844200, 40.504383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.746712, 34.656643, 40.334801>,  <35.490368, 34.426735, 40.892517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.746712, 34.656643, 40.334801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.597008, 34.317089, 40.185493>,  <35.507187, 34.113358, 40.095909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.597008, 34.317089, 40.185493>,  <35.746712, 34.656643, 40.334801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.597008, 34.317089, 40.185493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098790, 0.436727, -0.894153,
		0.922046, -0.297772, -0.247311,
		-0.374261, -0.848882, -0.373265,
		35.484730, 34.062424, 40.073513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175743, 34.518585, 39.768486>,  <35.746712, 34.656643, 40.334801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175743, 34.518585, 39.768486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.853638, 34.286541, 39.719460>,  <35.660374, 34.147316, 39.690044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.853638, 34.286541, 39.719460>,  <36.175743, 34.518585, 39.768486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.853638, 34.286541, 39.719460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121618, 0.363932, -0.923452,
		0.580309, -0.728716, -0.363613,
		-0.805265, -0.580109, -0.122568,
		35.612057, 34.112507, 39.682690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315903, 33.987328, 39.161083>,  <36.175743, 34.518585, 39.768486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315903, 33.987328, 39.161083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.936115, 34.098145, 39.220093>,  <35.708244, 34.164635, 39.255501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.936115, 34.098145, 39.220093>,  <36.315903, 33.987328, 39.161083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936115, 34.098145, 39.220093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070477, 0.269845, -0.960321,
		-0.305861, -0.922187, -0.236683,
		-0.949464, 0.277044, 0.147528,
		35.651276, 34.181259, 39.264351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056168, 33.460297, 38.726845>,  <36.315903, 33.987328, 39.161083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.056168, 33.460297, 38.726845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.787472, 33.749710, 38.790421>,  <35.626255, 33.923359, 38.828568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.787472, 33.749710, 38.790421>,  <36.056168, 33.460297, 38.726845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787472, 33.749710, 38.790421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047194, 0.255921, -0.965545,
		-0.739278, -0.641098, -0.206059,
		-0.671744, 0.723531, 0.158941,
		35.585949, 33.966770, 38.838104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554604, 33.308365, 39.288715>,  <36.056168, 33.460297, 38.726845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.554604, 33.308365, 39.288715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.797165, 33.161667, 39.006504>,  <36.942703, 33.073647, 38.837177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.797165, 33.161667, 39.006504>,  <36.554604, 33.308365, 39.288715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797165, 33.161667, 39.006504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034524, -0.874304, 0.484149,
		-0.794405, -0.317949, -0.517523,
		0.606407, -0.366744, -0.705528,
		36.979088, 33.051643, 38.794846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397068, 32.614616, 39.064941>,  <36.554604, 33.308365, 39.288715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.397068, 32.614616, 39.064941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.783283, 32.663284, 38.972912>,  <37.015011, 32.692486, 38.917694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.783283, 32.663284, 38.972912>,  <36.397068, 32.614616, 39.064941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783283, 32.663284, 38.972912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226232, -0.829385, 0.510822,
		-0.128669, -0.545268, -0.828328,
		0.965538, 0.121668, -0.230074,
		37.072945, 32.699783, 38.903889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.609943, 31.886889, 38.884533>,  <36.397068, 32.614616, 39.064941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.609943, 31.886889, 38.884533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.937244, 32.093220, 38.986031>,  <37.133625, 32.217018, 39.046928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.937244, 32.093220, 38.986031>,  <36.609943, 31.886889, 38.884533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937244, 32.093220, 38.986031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226067, -0.694580, 0.682973,
		0.528544, -0.501479, -0.684952,
		0.818251, 0.515826, 0.253749,
		37.182720, 32.247967, 39.062157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232502, 31.481070, 38.776924>,  <36.609943, 31.886889, 38.884533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232502, 31.481070, 38.776924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.355595, 31.770687, 39.023846>,  <37.429451, 31.944458, 39.171997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.355595, 31.770687, 39.023846>,  <37.232502, 31.481070, 38.776924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355595, 31.770687, 39.023846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443944, -0.683097, 0.579907,
		0.841556, 0.095594, -0.531644,
		0.307729, 0.724044, 0.617303,
		37.447914, 31.987900, 39.209038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878365, 31.221384, 38.972820>,  <37.232502, 31.481070, 38.776924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.878365, 31.221384, 38.972820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.768978, 31.494900, 39.243420>,  <37.703346, 31.659010, 39.405777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.768978, 31.494900, 39.243420>,  <37.878365, 31.221384, 38.972820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768978, 31.494900, 39.243420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395081, -0.561393, 0.727152,
		0.876999, 0.466122, -0.116631,
		-0.273466, 0.683790, 0.676497,
		37.686939, 31.700037, 39.446369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422253, 31.084425, 39.463280>,  <37.878365, 31.221384, 38.972820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.422253, 31.084425, 39.463280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.149891, 31.302998, 39.658333>,  <37.986473, 31.434141, 39.775364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.149891, 31.302998, 39.658333>,  <38.422253, 31.084425, 39.463280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.149891, 31.302998, 39.658333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324026, -0.372345, 0.869693,
		0.656794, 0.750182, 0.076473,
		-0.680902, 0.546431, 0.487633,
		37.945621, 31.466927, 39.804623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.744331, 31.293900, 40.110233>,  <38.422253, 31.084425, 39.463280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.744331, 31.293900, 40.110233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.351013, 31.308620, 40.181530>,  <38.115021, 31.317453, 40.224308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.351013, 31.308620, 40.181530>,  <38.744331, 31.293900, 40.110233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.351013, 31.308620, 40.181530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135092, -0.508699, 0.850280,
		0.121963, 0.860158, 0.495231,
		-0.983298, 0.036801, 0.178243,
		38.056023, 31.319660, 40.235004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657764, 31.462505, 40.815048>,  <38.744331, 31.293900, 40.110233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.657764, 31.462505, 40.815048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.308735, 31.296642, 40.711761>,  <38.099316, 31.197124, 40.649792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.308735, 31.296642, 40.711761>,  <38.657764, 31.462505, 40.815048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308735, 31.296642, 40.711761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010288, -0.544084, 0.838968,
		-0.488374, 0.729405, 0.479020,
		-0.872574, -0.414658, -0.258212,
		38.046963, 31.172245, 40.634296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.357479, 31.377447, 41.478745>,  <38.657764, 31.462505, 40.815048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.357479, 31.377447, 41.478745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.133194, 31.151581, 41.236504>,  <37.998623, 31.016062, 41.091160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.133194, 31.151581, 41.236504>,  <38.357479, 31.377447, 41.478745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.133194, 31.151581, 41.236504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152405, -0.648520, 0.745785,
		-0.813866, 0.510465, 0.277573,
		-0.560709, -0.564665, -0.605606,
		37.964981, 30.982182, 41.054821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752716, 31.222288, 41.923576>,  <38.357479, 31.377447, 41.478745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752716, 31.222288, 41.923576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802681, 30.962397, 41.623646>,  <37.832661, 30.806461, 41.443687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802681, 30.962397, 41.623646>,  <37.752716, 31.222288, 41.923576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802681, 30.962397, 41.623646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124791, -0.760037, 0.637786,
		-0.984289, 0.013904, -0.176019,
		0.124913, -0.649731, -0.749831,
		37.840157, 30.767477, 41.398697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396259, 30.570990, 42.089565>,  <37.752716, 31.222288, 41.923576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396259, 30.570990, 42.089565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.654179, 30.457708, 41.805584>,  <37.808929, 30.389740, 41.635197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.654179, 30.457708, 41.805584>,  <37.396259, 30.570990, 42.089565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654179, 30.457708, 41.805584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333743, -0.731296, 0.594829,
		-0.687644, -0.620485, -0.377020,
		0.644796, -0.283202, -0.709954,
		37.847618, 30.372747, 41.592598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247643, 29.870256, 41.997402>,  <37.396259, 30.570990, 42.089565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247643, 29.870256, 41.997402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.631752, 29.934692, 41.906261>,  <37.862217, 29.973354, 41.851578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.631752, 29.934692, 41.906261>,  <37.247643, 29.870256, 41.997402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631752, 29.934692, 41.906261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238673, -0.897205, 0.371561,
		-0.144577, -0.411184, -0.900014,
		0.960277, 0.161090, -0.227854,
		37.919834, 29.983019, 41.837906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471848, 29.363230, 41.556992>,  <37.247643, 29.870256, 41.997402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.471848, 29.363230, 41.556992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.804577, 29.488079, 41.740578>,  <38.004215, 29.562988, 41.850731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.804577, 29.488079, 41.740578>,  <37.471848, 29.363230, 41.556992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.804577, 29.488079, 41.740578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231181, -0.946595, 0.224750,
		0.504609, -0.080847, -0.859554,
		0.831820, 0.312124, 0.458970,
		38.054123, 29.581717, 41.878269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903641, 28.763721, 41.431171>,  <37.471848, 29.363230, 41.556992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.903641, 28.763721, 41.431171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.099289, 28.990042, 41.696690>,  <38.216679, 29.125834, 41.856003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.099289, 28.990042, 41.696690>,  <37.903641, 28.763721, 41.431171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.099289, 28.990042, 41.696690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235583, -0.818462, 0.524043,
		0.839798, -0.099941, -0.533621,
		0.489122, 0.565802, 0.663798,
		38.246025, 29.159782, 41.895828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589191, 28.468292, 41.648739>,  <37.903641, 28.763721, 41.431171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.589191, 28.468292, 41.648739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.527973, 28.715799, 41.956947>,  <38.491241, 28.864304, 42.141872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.527973, 28.715799, 41.956947>,  <38.589191, 28.468292, 41.648739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527973, 28.715799, 41.956947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016428, -0.778007, 0.628041,
		0.988083, 0.108774, 0.108902,
		-0.153041, 0.618768, 0.770522,
		38.482059, 28.901430, 42.188103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994610, 28.154158, 42.211529>,  <38.589191, 28.468292, 41.648739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994610, 28.154158, 42.211529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.745827, 28.399569, 42.406158>,  <38.596558, 28.546814, 42.522938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.745827, 28.399569, 42.406158>,  <38.994610, 28.154158, 42.211529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.745827, 28.399569, 42.406158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054053, -0.653540, 0.754959,
		0.781185, 0.443250, 0.439636,
		-0.621955, 0.613526, 0.486577,
		38.559238, 28.583626, 42.552132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241547, 28.220741, 42.884953>,  <38.994610, 28.154158, 42.211529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.241547, 28.220741, 42.884953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.855244, 28.316116, 42.925877>,  <38.623463, 28.373343, 42.950432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.855244, 28.316116, 42.925877>,  <39.241547, 28.220741, 42.884953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.855244, 28.316116, 42.925877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029681, -0.493248, 0.869382,
		0.257759, 0.836572, 0.483433,
		-0.965753, 0.238439, 0.102309,
		38.565517, 28.387648, 42.956570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157909, 28.519630, 43.514004>,  <39.241547, 28.220741, 42.884953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.157909, 28.519630, 43.514004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.788082, 28.384336, 43.443848>,  <38.566185, 28.303160, 43.401752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.788082, 28.384336, 43.443848>,  <39.157909, 28.519630, 43.514004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.788082, 28.384336, 43.443848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074828, -0.290183, 0.954041,
		-0.373586, 0.895205, 0.242986,
		-0.924573, -0.338234, -0.175395,
		38.510712, 28.282866, 43.391228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890678, 28.526327, 44.070507>,  <39.157909, 28.519630, 43.514004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890678, 28.526327, 44.070507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.609093, 28.296831, 43.903049>,  <38.440144, 28.159134, 43.802574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.609093, 28.296831, 43.903049>,  <38.890678, 28.526327, 44.070507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.609093, 28.296831, 43.903049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168791, -0.437404, 0.883282,
		-0.689891, 0.692458, 0.211072,
		-0.703960, -0.573742, -0.418642,
		38.397903, 28.124708, 43.777458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263424, 28.685591, 44.458656>,  <38.890678, 28.526327, 44.070507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263424, 28.685591, 44.458656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.189751, 28.330826, 44.289204>,  <38.145546, 28.117968, 44.187531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.189751, 28.330826, 44.289204>,  <38.263424, 28.685591, 44.458656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.189751, 28.330826, 44.289204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364837, -0.338527, 0.867348,
		-0.912673, 0.314306, -0.261228,
		-0.184180, -0.886911, -0.423635,
		38.134495, 28.064753, 44.162113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578056, 28.493582, 44.408363>,  <38.263424, 28.685591, 44.458656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.578056, 28.493582, 44.408363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.764759, 28.139908, 44.400871>,  <37.876781, 27.927704, 44.396374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.764759, 28.139908, 44.400871>,  <37.578056, 28.493582, 44.408363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.764759, 28.139908, 44.400871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507319, -0.285043, 0.813251,
		-0.724407, -0.370086, -0.581611,
		0.466757, -0.884187, -0.018735,
		37.904785, 27.874651, 44.395252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111286, 27.914680, 44.318867>,  <37.578056, 28.493582, 44.408363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.111286, 27.914680, 44.318867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.436489, 27.786171, 44.513103>,  <37.631611, 27.709066, 44.629646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.436489, 27.786171, 44.513103>,  <37.111286, 27.914680, 44.318867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.436489, 27.786171, 44.513103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581183, -0.498265, 0.643396,
		0.035248, -0.805305, -0.591812,
		0.813010, -0.321272, 0.485592,
		37.680393, 27.689789, 44.658779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907860, 27.186098, 44.526337>,  <37.111286, 27.914680, 44.318867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.907860, 27.186098, 44.526337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.233150, 27.267395, 44.744461>,  <37.428326, 27.316174, 44.875336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.233150, 27.267395, 44.744461>,  <36.907860, 27.186098, 44.526337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.233150, 27.267395, 44.744461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321495, -0.624167, 0.712079,
		0.485088, -0.754393, -0.442246,
		0.813222, 0.203241, 0.545310,
		37.477116, 27.328367, 44.908054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.148624, 26.501534, 44.826954>,  <36.907860, 27.186098, 44.526337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.148624, 26.501534, 44.826954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.318901, 26.787298, 45.049091>,  <37.421066, 26.958757, 45.182373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.318901, 26.787298, 45.049091>,  <37.148624, 26.501534, 44.826954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.318901, 26.787298, 45.049091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127856, -0.560084, 0.818510,
		0.895791, -0.419435, -0.147080,
		0.425689, 0.714410, 0.555345,
		37.446609, 27.001621, 45.215694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.713482, 26.209070, 45.191338>,  <37.148624, 26.501534, 44.826954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.713482, 26.209070, 45.191338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.598309, 26.532846, 45.396046>,  <37.529205, 26.727112, 45.518871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.598309, 26.532846, 45.396046>,  <37.713482, 26.209070, 45.191338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598309, 26.532846, 45.396046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150108, -0.565938, 0.810668,
		0.945814, 0.156596, 0.284454,
		-0.287931, 0.809439, 0.511766,
		37.511929, 26.775679, 45.549576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209774, 26.257187, 45.784855>,  <37.713482, 26.209070, 45.191338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.209774, 26.257187, 45.784855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.885151, 26.471928, 45.877075>,  <37.690376, 26.600773, 45.932407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.885151, 26.471928, 45.877075>,  <38.209774, 26.257187, 45.784855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.885151, 26.471928, 45.877075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012827, -0.410880, 0.911599,
		0.584126, 0.736862, 0.340341,
		-0.811562, 0.536854, 0.230554,
		37.641682, 26.632984, 45.946243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270252, 26.384964, 46.470345>,  <38.209774, 26.257187, 45.784855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.270252, 26.384964, 46.470345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.877743, 26.440474, 46.416912>,  <37.642239, 26.473780, 46.384853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.877743, 26.440474, 46.416912>,  <38.270252, 26.384964, 46.470345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877743, 26.440474, 46.416912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172106, -0.320269, 0.931562,
		0.086496, 0.937107, 0.338155,
		-0.981274, 0.138775, -0.133580,
		37.583359, 26.482105, 46.376839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.018814, 26.751440, 47.096226>,  <38.270252, 26.384964, 46.470345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.018814, 26.751440, 47.096226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702888, 26.583290, 46.917572>,  <37.513332, 26.482401, 46.810379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702888, 26.583290, 46.917572>,  <38.018814, 26.751440, 47.096226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702888, 26.583290, 46.917572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342041, -0.302573, 0.889639,
		-0.509119, 0.855416, 0.095192,
		-0.789814, -0.420373, -0.446633,
		37.465946, 26.457178, 46.783581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544853, 26.931692, 47.548561>,  <38.018814, 26.751440, 47.096226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544853, 26.931692, 47.548561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.365669, 26.643995, 47.336140>,  <37.258160, 26.471376, 47.208687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.365669, 26.643995, 47.336140>,  <37.544853, 26.931692, 47.548561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365669, 26.643995, 47.336140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442963, -0.337412, 0.830624,
		-0.776606, 0.607324, -0.167452,
		-0.447958, -0.719243, -0.531058,
		37.231281, 26.428223, 47.176823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818729, 26.770607, 47.872810>,  <37.544853, 26.931692, 47.548561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818729, 26.770607, 47.872810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.897179, 26.445124, 47.653934>,  <36.944248, 26.249834, 47.522610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.897179, 26.445124, 47.653934>,  <36.818729, 26.770607, 47.872810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.897179, 26.445124, 47.653934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380334, -0.577466, 0.722412,
		-0.903814, 0.066430, -0.422737,
		0.196127, -0.813707, -0.547188,
		36.956017, 26.201012, 47.489777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.226189, 26.411482, 47.989731>,  <36.818729, 26.770607, 47.872810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.226189, 26.411482, 47.989731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.540741, 26.182144, 47.897755>,  <36.729473, 26.044540, 47.842567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.540741, 26.182144, 47.897755>,  <36.226189, 26.411482, 47.989731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.540741, 26.182144, 47.897755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217879, -0.605743, 0.765248,
		-0.578034, -0.551682, -0.601268,
		0.786388, -0.573343, -0.229940,
		36.776657, 26.010139, 47.828773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.982750, 25.767508, 48.204094>,  <36.226189, 26.411482, 47.989731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.982750, 25.767508, 48.204094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.378567, 25.734461, 48.156807>,  <36.616058, 25.714634, 48.128437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.378567, 25.734461, 48.156807>,  <35.982750, 25.767508, 48.204094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378567, 25.734461, 48.156807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074438, -0.409479, 0.909278,
		-0.123525, -0.908571, -0.399049,
		0.989546, -0.082614, -0.118213,
		36.675430, 25.709677, 48.121342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115360, 25.108807, 48.483528>,  <35.982750, 25.767508, 48.204094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.115360, 25.108807, 48.483528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.453083, 25.323143, 48.485424>,  <36.655716, 25.451746, 48.486561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.453083, 25.323143, 48.485424>,  <36.115360, 25.108807, 48.483528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453083, 25.323143, 48.485424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177530, -0.288050, 0.941016,
		0.505602, -0.793662, -0.338330,
		0.844304, 0.535843, 0.004740,
		36.706375, 25.483896, 48.486847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751362, 24.691895, 48.586750>,  <36.115360, 25.108807, 48.483528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751362, 24.691895, 48.586750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.846081, 25.057232, 48.719254>,  <36.902912, 25.276434, 48.798756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.846081, 25.057232, 48.719254>,  <36.751362, 24.691895, 48.586750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.846081, 25.057232, 48.719254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193623, -0.378477, 0.905133,
		0.952069, -0.150197, -0.266468,
		0.236800, 0.913343, 0.331254,
		36.917122, 25.331234, 48.818630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302044, 24.601578, 49.108665>,  <36.751362, 24.691895, 48.586750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.302044, 24.601578, 49.108665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.183193, 24.973852, 49.194031>,  <37.111885, 25.197216, 49.245251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.183193, 24.973852, 49.194031>,  <37.302044, 24.601578, 49.108665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183193, 24.973852, 49.194031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119686, -0.185442, 0.975339,
		0.947308, 0.315340, -0.056291,
		-0.297124, 0.930684, 0.213412,
		37.094055, 25.253057, 49.258053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788399, 24.864925, 49.587349>,  <37.302044, 24.601578, 49.108665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.788399, 24.864925, 49.587349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.450302, 25.076048, 49.620792>,  <37.247444, 25.202721, 49.640858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.450302, 25.076048, 49.620792>,  <37.788399, 24.864925, 49.587349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.450302, 25.076048, 49.620792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079354, -0.030745, 0.996372,
		0.528460, 0.848809, -0.015896,
		-0.845241, 0.527804, 0.083604,
		37.196732, 25.234388, 49.645874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891323, 25.302061, 50.054607>,  <37.788399, 24.864925, 49.587349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.891323, 25.302061, 50.054607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.491718, 25.317924, 50.046604>,  <37.251957, 25.327442, 50.041801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.491718, 25.317924, 50.046604>,  <37.891323, 25.302061, 50.054607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.491718, 25.317924, 50.046604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024839, -0.125261, 0.991813,
		0.036826, 0.991331, 0.126123,
		-0.999013, 0.039658, -0.020011,
		37.192013, 25.329823, 50.040600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647316, 25.492954, 50.041527>,  <37.891323, 25.302061, 50.054607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647316, 25.492954, 50.041527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.670422, 25.757446, 50.340710>,  <38.684284, 25.916142, 50.520218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.670422, 25.757446, 50.340710>,  <38.647316, 25.492954, 50.041527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.670422, 25.757446, 50.340710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100672, 0.749248, -0.654593,
		-0.993242, -0.037489, 0.109844,
		0.057761, 0.661228, 0.747958,
		38.687752, 25.955814, 50.565098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122501, 26.010635, 49.910431>,  <38.647316, 25.492954, 50.041527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.122501, 26.010635, 49.910431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.389050, 26.181875, 50.154621>,  <38.548981, 26.284618, 50.301136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.389050, 26.181875, 50.154621>,  <38.122501, 26.010635, 49.910431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389050, 26.181875, 50.154621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089932, 0.766622, -0.635769,
		-0.740174, 0.478561, 0.472357,
		0.666374, 0.428100, 0.610472,
		38.588963, 26.310305, 50.337761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985970, 26.757565, 49.965057>,  <38.122501, 26.010635, 49.910431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.985970, 26.757565, 49.965057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.374100, 26.706299, 50.047066>,  <38.606979, 26.675539, 50.096272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.374100, 26.706299, 50.047066>,  <37.985970, 26.757565, 49.965057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.374100, 26.706299, 50.047066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237357, 0.666504, -0.706706,
		-0.046073, 0.734401, 0.677150,
		0.970329, -0.128166, 0.205023,
		38.665199, 26.667849, 50.108574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302917, 27.471804, 49.982323>,  <37.985970, 26.757565, 49.965057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302917, 27.471804, 49.982323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.617970, 27.231792, 49.926319>,  <38.807003, 27.087786, 49.892719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.617970, 27.231792, 49.926319>,  <38.302917, 27.471804, 49.982323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.617970, 27.231792, 49.926319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436681, 0.703922, -0.560181,
		0.434678, 0.380078, 0.816453,
		0.787632, -0.600028, -0.140007,
		38.854259, 27.051785, 49.884315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.764961, 27.918982, 49.816425>,  <38.302917, 27.471804, 49.982323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.764961, 27.918982, 49.816425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.919270, 27.580864, 49.668556>,  <39.011856, 27.377993, 49.579834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.919270, 27.580864, 49.668556>,  <38.764961, 27.918982, 49.816425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.919270, 27.580864, 49.668556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473955, 0.525347, -0.706666,
		0.791547, 0.097404, 0.603296,
		0.385772, -0.845294, -0.369672,
		39.035000, 27.327276, 49.557655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508076, 27.960445, 49.932011>,  <38.764961, 27.918982, 49.816425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.508076, 27.960445, 49.932011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.447666, 27.682444, 49.650826>,  <39.411419, 27.515642, 49.482113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.447666, 27.682444, 49.650826>,  <39.508076, 27.960445, 49.932011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.447666, 27.682444, 49.650826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748669, 0.383945, -0.540444,
		0.645511, -0.607910, 0.462342,
		-0.151028, -0.695004, -0.702965,
		39.402359, 27.473942, 49.439938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.219181, 27.838417, 49.703232>,  <39.508076, 27.960445, 49.932011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.219181, 27.838417, 49.703232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.977863, 27.675919, 49.428715>,  <39.833073, 27.578419, 49.264004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.977863, 27.675919, 49.428715>,  <40.219181, 27.838417, 49.703232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.977863, 27.675919, 49.428715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571074, 0.380624, -0.727324,
		0.556691, -0.830716, 0.002367,
		-0.603298, -0.406247, -0.686290,
		39.796875, 27.554045, 49.222828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.585861, 27.405380, 49.213539>,  <40.219181, 27.838417, 49.703232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.585861, 27.405380, 49.213539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.271481, 27.498463, 48.984409>,  <40.082851, 27.554312, 48.846931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.271481, 27.498463, 48.984409>,  <40.585861, 27.405380, 49.213539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.271481, 27.498463, 48.984409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609948, 0.140183, -0.779944,
		-0.101197, -0.962391, -0.252115,
		-0.785954, 0.232705, -0.572822,
		40.035694, 27.568274, 48.812561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.756172, 26.912737, 48.684341>,  <40.585861, 27.405380, 49.213539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.756172, 26.912737, 48.684341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.506416, 27.210251, 48.588909>,  <40.356564, 27.388760, 48.531651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.506416, 27.210251, 48.588909>,  <40.756172, 26.912737, 48.684341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.506416, 27.210251, 48.588909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405958, 0.048058, -0.912627,
		-0.667335, -0.666687, -0.331953,
		-0.624389, 0.743787, -0.238576,
		40.319099, 27.433388, 48.517338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.445396, 26.695908, 48.071545>,  <40.756172, 26.912737, 48.684341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.445396, 26.695908, 48.071545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.429466, 27.095257, 48.087864>,  <40.419910, 27.334866, 48.097656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.429466, 27.095257, 48.087864>,  <40.445396, 26.695908, 48.071545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.429466, 27.095257, 48.087864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386883, 0.053052, -0.920602,
		-0.921269, -0.020878, -0.388366,
		-0.039823, 0.998374, 0.040797,
		40.417519, 27.394770, 48.100101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.336674, 26.906385, 47.351082>,  <40.445396, 26.695908, 48.071545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.336674, 26.906385, 47.351082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.428387, 27.246836, 47.539978>,  <40.483414, 27.451105, 47.653316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.428387, 27.246836, 47.539978>,  <40.336674, 26.906385, 47.351082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.428387, 27.246836, 47.539978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369556, 0.372719, -0.851181,
		-0.900476, 0.369681, -0.229081,
		0.229283, 0.851126, 0.472243,
		40.497173, 27.502174, 47.681652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.967644, 27.477047, 46.946980>,  <40.336674, 26.906385, 47.351082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.967644, 27.477047, 46.946980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.275143, 27.629726, 47.152241>,  <40.459644, 27.721334, 47.275398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.275143, 27.629726, 47.152241>,  <39.967644, 27.477047, 46.946980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.275143, 27.629726, 47.152241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200703, 0.617855, -0.760246,
		-0.607239, 0.687432, 0.398369,
		0.768751, 0.381697, 0.513156,
		40.505768, 27.744236, 47.306187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.986858, 28.293016, 46.952110>,  <39.967644, 27.477047, 46.946980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.986858, 28.293016, 46.952110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.367039, 28.194218, 47.027618>,  <40.595146, 28.134939, 47.072926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.367039, 28.194218, 47.027618>,  <39.986858, 28.293016, 46.952110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.367039, 28.194218, 47.027618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310151, 0.711983, -0.629989,
		0.021201, 0.657322, 0.753311,
		0.950451, -0.246997, 0.188774,
		40.652176, 28.120119, 47.084251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.194820, 28.846695, 47.195679>,  <39.986858, 28.293016, 46.952110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.194820, 28.846695, 47.195679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.505371, 28.635220, 47.058434>,  <40.691700, 28.508335, 46.976086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.505371, 28.635220, 47.058434>,  <40.194820, 28.846695, 47.195679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.505371, 28.635220, 47.058434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233262, 0.746765, -0.622841,
		0.585515, 0.403524, 0.703094,
		0.776377, -0.528688, -0.343116,
		40.738285, 28.476614, 46.955498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.500065, 29.351307, 46.862343>,  <40.194820, 28.846695, 47.195679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.500065, 29.351307, 46.862343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.702503, 29.032061, 46.731575>,  <40.823967, 28.840513, 46.653114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.702503, 29.032061, 46.731575>,  <40.500065, 29.351307, 46.862343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.702503, 29.032061, 46.731575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184708, 0.470555, -0.862822,
		0.842465, 0.376287, 0.385565,
		0.506098, -0.798114, -0.326923,
		40.854332, 28.792627, 46.633499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.034512, 29.688665, 46.724186>,  <40.500065, 29.351307, 46.862343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.034512, 29.688665, 46.724186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.014320, 29.344872, 46.520721>,  <41.002205, 29.138596, 46.398643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.014320, 29.344872, 46.520721>,  <41.034512, 29.688665, 46.724186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.014320, 29.344872, 46.520721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105938, 0.501831, -0.858454,
		0.993091, -0.097223, 0.065719,
		-0.050482, -0.859484, -0.508663,
		40.999176, 29.087027, 46.368122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.519409, 29.846275, 46.209160>,  <41.034512, 29.688665, 46.724186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.519409, 29.846275, 46.209160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.313332, 29.534447, 46.066700>,  <41.189686, 29.347349, 45.981224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.313332, 29.534447, 46.066700>,  <41.519409, 29.846275, 46.209160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.313332, 29.534447, 46.066700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268166, 0.248052, -0.930891,
		0.814038, -0.575099, 0.081259,
		-0.515198, -0.779572, -0.356146,
		41.158772, 29.300575, 45.959858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.914825, 29.520052, 45.688545>,  <41.519409, 29.846275, 46.209160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.914825, 29.520052, 45.688545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.538769, 29.415367, 45.601246>,  <41.313133, 29.352556, 45.548866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.538769, 29.415367, 45.601246>,  <41.914825, 29.520052, 45.688545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.538769, 29.415367, 45.601246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150253, 0.256475, -0.954801,
		0.305863, -0.930443, -0.201800,
		-0.940145, -0.261717, -0.218248,
		41.256725, 29.336853, 45.535770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.968372, 29.170780, 44.936600>,  <41.914825, 29.520052, 45.688545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.968372, 29.170780, 44.936600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.589828, 29.276535, 45.010899>,  <41.362701, 29.339987, 45.055477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.589828, 29.276535, 45.010899>,  <41.968372, 29.170780, 44.936600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.589828, 29.276535, 45.010899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165103, 0.098483, -0.981347,
		-0.277748, -0.959375, -0.049549,
		-0.946360, 0.264386, 0.185749,
		41.305920, 29.355850, 45.066624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.553116, 28.815527, 44.410000>,  <41.968372, 29.170780, 44.936600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.553116, 28.815527, 44.410000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.357910, 29.139946, 44.539021>,  <41.240788, 29.334599, 44.616432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.357910, 29.139946, 44.539021>,  <41.553116, 28.815527, 44.410000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.357910, 29.139946, 44.539021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052419, 0.341648, -0.938365,
		-0.871261, -0.474843, -0.124214,
		-0.488013, 0.811049, 0.322555,
		41.211506, 29.383261, 44.635788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.931122, 28.920702, 43.931862>,  <41.553116, 28.815527, 44.410000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.931122, 28.920702, 43.931862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.981216, 29.272564, 44.115395>,  <41.011272, 29.483681, 44.225513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.981216, 29.272564, 44.115395>,  <40.931122, 28.920702, 43.931862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.981216, 29.272564, 44.115395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343377, 0.472320, -0.811792,
		-0.930810, -0.055884, 0.361205,
		0.125238, 0.879654, 0.458830,
		41.018787, 29.536461, 44.253044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.389278, 29.213947, 43.693996>,  <40.931122, 28.920702, 43.931862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.389278, 29.213947, 43.693996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.599724, 29.521614, 43.839096>,  <40.725990, 29.706215, 43.926155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.599724, 29.521614, 43.839096>,  <40.389278, 29.213947, 43.693996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.599724, 29.521614, 43.839096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483753, 0.621502, -0.616214,
		-0.699420, 0.148718, 0.699067,
		0.526113, 0.769168, 0.362748,
		40.757557, 29.752365, 43.947922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923191, 29.718439, 43.686939>,  <40.389278, 29.213947, 43.693996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.923191, 29.718439, 43.686939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.267265, 29.921398, 43.666420>,  <40.473709, 30.043173, 43.654110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.267265, 29.921398, 43.666420>,  <39.923191, 29.718439, 43.686939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.267265, 29.921398, 43.666420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389635, 0.588964, -0.708030,
		-0.329042, 0.629022, 0.704318,
		0.860184, 0.507398, -0.051295,
		40.525322, 30.073618, 43.651031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.683392, 30.366653, 43.612808>,  <39.923191, 29.718439, 43.686939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.683392, 30.366653, 43.612808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.063332, 30.407669, 43.494640>,  <40.291294, 30.432278, 43.423740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.063332, 30.407669, 43.494640>,  <39.683392, 30.366653, 43.612808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.063332, 30.407669, 43.494640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283294, 0.682173, -0.674081,
		0.132408, 0.723965, 0.677010,
		0.949849, 0.102539, -0.295420,
		40.348286, 30.438431, 43.406013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.906071, 31.044161, 43.724262>,  <39.683392, 30.366653, 43.612808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.906071, 31.044161, 43.724262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.113407, 30.882629, 43.422733>,  <40.237808, 30.785709, 43.241817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.113407, 30.882629, 43.422733>,  <39.906071, 31.044161, 43.724262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.113407, 30.882629, 43.422733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155177, 0.822433, -0.547289,
		0.840978, 0.400657, 0.363634,
		0.518339, -0.403830, -0.753821,
		40.268909, 30.761480, 43.196587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.312180, 31.646219, 43.365150>,  <39.906071, 31.044161, 43.724262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.312180, 31.646219, 43.365150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.326244, 31.336721, 43.112141>,  <40.334682, 31.151022, 42.960335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.326244, 31.336721, 43.112141>,  <40.312180, 31.646219, 43.365150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.326244, 31.336721, 43.112141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012031, 0.632539, -0.774435,
		0.999309, 0.034840, 0.012932,
		0.035162, -0.773744, -0.632522,
		40.336792, 31.104599, 42.922382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.575710, 31.996601, 42.779659>,  <40.312180, 31.646219, 43.365150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.575710, 31.996601, 42.779659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.521812, 31.637783, 42.611301>,  <40.489471, 31.422493, 42.510284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.521812, 31.637783, 42.611301>,  <40.575710, 31.996601, 42.779659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.521812, 31.637783, 42.611301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156396, 0.438701, -0.884919,
		0.978460, -0.053414, -0.199408,
		-0.134748, -0.897044, -0.420898,
		40.481388, 31.368670, 42.485031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.952206, 31.898027, 42.153481>,  <40.575710, 31.996601, 42.779659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.952206, 31.898027, 42.153481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.687016, 31.607605, 42.080471>,  <40.527901, 31.433352, 42.036667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.687016, 31.607605, 42.080471>,  <40.952206, 31.898027, 42.153481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.687016, 31.607605, 42.080471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144205, 0.363086, -0.920529,
		0.734626, -0.583963, -0.345416,
		-0.662971, -0.726055, -0.182522,
		40.488125, 31.389790, 42.025715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.198719, 31.425835, 41.630219>,  <40.952206, 31.898027, 42.153481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.198719, 31.425835, 41.630219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.803070, 31.367159, 41.625938>,  <40.565681, 31.331953, 41.623371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.803070, 31.367159, 41.625938>,  <41.198719, 31.425835, 41.630219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.803070, 31.367159, 41.625938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028870, 0.264954, -0.963829,
		0.144217, -0.953038, -0.266307,
		-0.989125, -0.146689, -0.010696,
		40.506332, 31.323153, 41.622730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.066605, 31.029985, 41.065838>,  <41.198719, 31.425835, 41.630219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.066605, 31.029985, 41.065838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.726364, 31.221523, 41.152725>,  <40.522221, 31.336447, 41.204857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.726364, 31.221523, 41.152725>,  <41.066605, 31.029985, 41.065838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.726364, 31.221523, 41.152725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049807, 0.337884, -0.939869,
		-0.523450, -0.810272, -0.263554,
		-0.850600, 0.478847, 0.217223,
		40.471184, 31.365177, 41.217892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.618450, 30.876568, 40.486931>,  <41.066605, 31.029985, 41.065838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.618450, 30.876568, 40.486931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.488895, 31.217352, 40.651493>,  <40.411163, 31.421822, 40.750233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.488895, 31.217352, 40.651493>,  <40.618450, 30.876568, 40.486931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.488895, 31.217352, 40.651493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049991, 0.449655, -0.891802,
		-0.944773, -0.268280, -0.188229,
		-0.323891, 0.851960, 0.411410,
		40.391727, 31.472940, 40.774918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.169338, 31.164148, 39.963070>,  <40.618450, 30.876568, 40.486931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.169338, 31.164148, 39.963070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.255001, 31.467056, 40.209866>,  <40.306400, 31.648802, 40.357944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.255001, 31.467056, 40.209866>,  <40.169338, 31.164148, 39.963070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.255001, 31.467056, 40.209866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075760, 0.616868, -0.783412,
		-0.973857, 0.214517, 0.074735,
		0.214157, 0.757270, 0.616993,
		40.319248, 31.694237, 40.394962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.651340, 31.727125, 39.721741>,  <40.169338, 31.164148, 39.963070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.651340, 31.727125, 39.721741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.944691, 31.895992, 39.934879>,  <40.120701, 31.997313, 40.062763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.944691, 31.895992, 39.934879>,  <39.651340, 31.727125, 39.721741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.944691, 31.895992, 39.934879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074276, 0.729356, -0.680090,
		-0.675750, 0.538342, 0.503537,
		0.733379, 0.422170, 0.532849,
		40.164703, 32.022644, 40.094734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454262, 32.393505, 39.951183>,  <39.651340, 31.727125, 39.721741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.454262, 32.393505, 39.951183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.852863, 32.421684, 39.969124>,  <40.092026, 32.438591, 39.979889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.852863, 32.421684, 39.969124>,  <39.454262, 32.393505, 39.951183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.852863, 32.421684, 39.969124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024523, 0.760236, -0.649184,
		-0.079833, 0.645816, 0.759308,
		0.996507, 0.070447, 0.044854,
		40.151814, 32.442818, 39.982578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.544231, 33.059559, 39.921120>,  <39.454262, 32.393505, 39.951183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.544231, 33.059559, 39.921120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.915787, 32.931831, 39.846066>,  <40.138718, 32.855194, 39.801033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.915787, 32.931831, 39.846066>,  <39.544231, 33.059559, 39.921120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.915787, 32.931831, 39.846066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146280, 0.781738, -0.606207,
		0.340252, 0.535651, 0.772856,
		0.928887, -0.319317, -0.187633,
		40.194454, 32.836037, 39.789776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.998051, 33.672676, 39.977901>,  <39.544231, 33.059559, 39.921120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.998051, 33.672676, 39.977901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.207203, 33.408142, 39.762783>,  <40.332695, 33.249420, 39.633713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.207203, 33.408142, 39.762783>,  <39.998051, 33.672676, 39.977901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.207203, 33.408142, 39.762783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145137, 0.690780, -0.708350,
		0.839956, 0.292332, 0.457182,
		0.522885, -0.661336, -0.537797,
		40.364067, 33.209740, 39.601444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.722088, 34.043373, 39.882698>,  <39.998051, 33.672676, 39.977901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.722088, 34.043373, 39.882698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.699677, 33.786018, 39.577305>,  <40.686230, 33.631603, 39.394070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.699677, 33.786018, 39.577305>,  <40.722088, 34.043373, 39.882698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.699677, 33.786018, 39.577305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426648, 0.675927, -0.600911,
		0.902681, -0.359405, 0.236633,
		-0.056024, -0.643390, -0.763486,
		40.682869, 33.593002, 39.348259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.342957, 33.981560, 39.591919>,  <40.722088, 34.043373, 39.882698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.342957, 33.981560, 39.591919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.138943, 33.804726, 39.296776>,  <41.016537, 33.698627, 39.119690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.138943, 33.804726, 39.296776>,  <41.342957, 33.981560, 39.591919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.138943, 33.804726, 39.296776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520431, 0.524387, -0.673921,
		0.684851, -0.727724, -0.037379,
		-0.510030, -0.442082, -0.737857,
		40.985935, 33.672100, 39.075420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.831795, 33.819088, 39.137543>,  <41.342957, 33.981560, 39.591919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.831795, 33.819088, 39.137543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.507629, 33.792599, 38.904701>,  <41.313129, 33.776707, 38.764996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.507629, 33.792599, 38.904701>,  <41.831795, 33.819088, 39.137543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.507629, 33.792599, 38.904701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378674, 0.698935, -0.606709,
		0.447029, -0.712113, -0.541350,
		-0.810414, -0.066221, -0.582103,
		41.264503, 33.772732, 38.730072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.009296, 33.681034, 38.506985>,  <41.831795, 33.819088, 39.137543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.009296, 33.681034, 38.506985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.645779, 33.836010, 38.445030>,  <41.427670, 33.928993, 38.407856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.645779, 33.836010, 38.445030>,  <42.009296, 33.681034, 38.506985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.645779, 33.836010, 38.445030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385358, 0.637028, -0.667604,
		-0.159987, -0.666400, -0.728228,
		-0.908792, 0.387436, -0.154887,
		41.373142, 33.952240, 38.398563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.892509, 33.711781, 37.780495>,  <42.009296, 33.681034, 38.506985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.892509, 33.711781, 37.780495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.629360, 33.976582, 37.924133>,  <41.471470, 34.135464, 38.010315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.629360, 33.976582, 37.924133>,  <41.892509, 33.711781, 37.780495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.629360, 33.976582, 37.924133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332115, 0.682952, -0.650596,
		-0.675942, -0.308751, -0.669160,
		-0.657876, 0.662004, 0.359096,
		41.431995, 34.175182, 38.031860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.617069, 34.207188, 37.270741>,  <41.892509, 33.711781, 37.780495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.617069, 34.207188, 37.270741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.594162, 34.389690, 37.625942>,  <41.580418, 34.499191, 37.839062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.594162, 34.389690, 37.625942>,  <41.617069, 34.207188, 37.270741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.594162, 34.389690, 37.625942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289361, 0.858868, -0.422630,
		-0.955506, 0.232750, -0.181207,
		-0.057266, 0.456260, 0.888002,
		41.576981, 34.526569, 37.892342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.233742, 34.849854, 37.318420>,  <41.617069, 34.207188, 37.270741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.233742, 34.849854, 37.318420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.519955, 34.903675, 37.592621>,  <41.691681, 34.935966, 37.757141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.519955, 34.903675, 37.592621>,  <41.233742, 34.849854, 37.318420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.519955, 34.903675, 37.592621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316765, 0.812109, -0.490040,
		-0.622637, 0.567781, 0.538468,
		0.715530, 0.134550, 0.685502,
		41.734615, 34.944038, 37.798271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.142056, 35.413280, 37.876488>,  <41.233742, 34.849854, 37.318420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.142056, 35.413280, 37.876488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.526489, 35.372185, 37.773907>,  <41.757149, 35.347527, 37.712357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.526489, 35.372185, 37.773907>,  <41.142056, 35.413280, 37.876488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.526489, 35.372185, 37.773907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019892, 0.900138, -0.435150,
		0.275551, 0.423316, 0.863062,
		0.961081, -0.102738, -0.256455,
		41.814812, 35.341362, 37.696972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.615650, 35.955101, 38.110023>,  <41.142056, 35.413280, 37.876488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.615650, 35.955101, 38.110023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.796917, 35.788353, 37.794846>,  <41.905678, 35.688305, 37.605740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.796917, 35.788353, 37.794846>,  <41.615650, 35.955101, 38.110023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.796917, 35.788353, 37.794846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092495, 0.901136, -0.423555,
		0.886615, 0.119059, 0.446921,
		0.453165, -0.416869, -0.787948,
		41.932865, 35.663292, 37.558460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.281418, 36.439194, 37.837502>,  <41.615650, 35.955101, 38.110023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.281418, 36.439194, 37.837502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.152317, 36.179829, 37.561707>,  <42.074856, 36.024208, 37.396229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.152317, 36.179829, 37.561707>,  <42.281418, 36.439194, 37.837502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.152317, 36.179829, 37.561707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192890, 0.668123, -0.718613,
		0.926621, -0.364927, -0.090564,
		-0.322750, -0.648413, -0.689488,
		42.055492, 35.985306, 37.354858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.777626, 36.457844, 37.188988>,  <42.281418, 36.439194, 37.837502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.777626, 36.457844, 37.188988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.431465, 36.304550, 37.059860>,  <42.223770, 36.212574, 36.982384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.431465, 36.304550, 37.059860>,  <42.777626, 36.457844, 37.188988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.431465, 36.304550, 37.059860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022637, 0.613684, -0.789227,
		0.500563, -0.690308, -0.522409,
		-0.865404, -0.383232, -0.322814,
		42.171844, 36.189579, 36.963017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.190533, 36.863674, 36.752583>,  <42.777626, 36.457844, 37.188988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.190533, 36.863674, 36.752583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.319946, 36.822857, 36.376305>,  <43.397594, 36.798367, 36.150536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.319946, 36.822857, 36.376305>,  <43.190533, 36.863674, 36.752583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.319946, 36.822857, 36.376305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843319, -0.481955, -0.237766,
		-0.429112, 0.870234, -0.241986,
		0.323538, -0.102043, -0.940697,
		43.417007, 36.792244, 36.094097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.687702, 37.114399, 36.092594>,  <43.190533, 36.863674, 36.752583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.687702, 37.114399, 36.092594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.929878, 36.814785, 35.984982>,  <43.075184, 36.635017, 35.920414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.929878, 36.814785, 35.984982>,  <42.687702, 37.114399, 36.092594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.929878, 36.814785, 35.984982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793173, -0.539964, -0.281628,
		0.065681, 0.383901, -0.921035,
		0.605444, -0.749038, -0.269035,
		43.111511, 36.590073, 35.904270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.231632, 36.774021, 35.625824>,  <42.687702, 37.114399, 36.092594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.231632, 36.774021, 35.625824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.516991, 36.505985, 35.707840>,  <42.688206, 36.345165, 35.757050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.516991, 36.505985, 35.707840>,  <42.231632, 36.774021, 35.625824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.516991, 36.505985, 35.707840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643562, -0.742278, -0.186685,
		0.277291, 0.001227, -0.960785,
		0.713399, -0.670091, 0.205037,
		42.731010, 36.304958, 35.769352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.169247, 36.310593, 35.135612>,  <42.231632, 36.774021, 35.625824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.169247, 36.310593, 35.135612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.334381, 36.138935, 35.456959>,  <42.433460, 36.035938, 35.649769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.334381, 36.138935, 35.456959>,  <42.169247, 36.310593, 35.135612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.334381, 36.138935, 35.456959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432622, -0.868582, -0.241667,
		0.801503, -0.247787, -0.544238,
		0.412834, -0.429147, 0.803369,
		42.458233, 36.010193, 35.697968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.340809, 35.716141, 34.886909>,  <42.169247, 36.310593, 35.135612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.340809, 35.716141, 34.886909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.344028, 35.668373, 35.284035>,  <42.345959, 35.639713, 35.522308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.344028, 35.668373, 35.284035>,  <42.340809, 35.716141, 34.886909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.344028, 35.668373, 35.284035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471554, -0.875971, -0.101544,
		0.881800, -0.467347, -0.063365,
		0.008049, -0.119422, 0.992811,
		42.346443, 35.632545, 35.581879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.441399, 35.024368, 34.899395>,  <42.340809, 35.716141, 34.886909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.441399, 35.024368, 34.899395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.259392, 35.154804, 35.230846>,  <42.150188, 35.233067, 35.429718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.259392, 35.154804, 35.230846>,  <42.441399, 35.024368, 34.899395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.259392, 35.154804, 35.230846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694115, -0.712794, -0.100641,
		0.557823, -0.620956, 0.550678,
		-0.455014, 0.326094, 0.828628,
		42.122887, 35.252632, 35.479435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.209377, 34.380962, 35.306187>,  <42.441399, 35.024368, 34.899395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.209377, 34.380962, 35.306187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.028671, 34.700169, 35.465721>,  <41.920246, 34.891693, 35.561443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.028671, 34.700169, 35.465721>,  <42.209377, 34.380962, 35.306187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.028671, 34.700169, 35.465721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841522, -0.529622, 0.106492,
		0.296217, -0.287522, 0.910816,
		-0.451770, 0.798017, 0.398839,
		41.893139, 34.939575, 35.585373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.914341, 34.080902, 35.952805>,  <42.209377, 34.380962, 35.306187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.914341, 34.080902, 35.952805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.699104, 34.389973, 35.818089>,  <41.569962, 34.575417, 35.737259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.699104, 34.389973, 35.818089>,  <41.914341, 34.080902, 35.952805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.699104, 34.389973, 35.818089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842422, -0.479743, 0.245299,
		0.027966, 0.415709, 0.909067,
		-0.538092, 0.772679, -0.336786,
		41.537678, 34.621777, 35.717052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.486073, 34.310688, 36.524426>,  <41.914341, 34.080902, 35.952805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.486073, 34.310688, 36.524426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.305447, 34.458450, 36.199554>,  <41.197071, 34.547108, 36.004631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.305447, 34.458450, 36.199554>,  <41.486073, 34.310688, 36.524426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.305447, 34.458450, 36.199554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805687, -0.559915, 0.193295,
		-0.383345, 0.741644, 0.550464,
		-0.451569, 0.369403, -0.812174,
		41.169975, 34.569271, 35.955902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.801987, 34.561043, 36.733894>,  <41.486073, 34.310688, 36.524426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.801987, 34.561043, 36.733894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.775921, 34.510632, 36.337940>,  <40.760281, 34.480385, 36.100368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.775921, 34.510632, 36.337940>,  <40.801987, 34.561043, 36.733894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.775921, 34.510632, 36.337940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825650, -0.550295, 0.124413,
		-0.560408, 0.825405, -0.068195,
		-0.065164, -0.126027, -0.989884,
		40.756371, 34.472824, 36.040974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189903, 34.337212, 36.745068>,  <40.801987, 34.561043, 36.733894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.189903, 34.337212, 36.745068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.299706, 34.284054, 36.364124>,  <40.365589, 34.252159, 36.135559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.299706, 34.284054, 36.364124>,  <40.189903, 34.337212, 36.745068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.299706, 34.284054, 36.364124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707404, -0.698755, -0.106399,
		-0.651325, 0.702909, -0.285822,
		0.274509, -0.132891, -0.952358,
		40.382057, 34.244186, 36.078419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.653652, 34.528313, 36.339596>,  <40.189903, 34.337212, 36.745068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.653652, 34.528313, 36.339596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.861393, 34.250340, 36.140659>,  <39.986038, 34.083557, 36.021297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.861393, 34.250340, 36.140659>,  <39.653652, 34.528313, 36.339596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.861393, 34.250340, 36.140659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731261, -0.662545, 0.162145,
		-0.442191, 0.279478, -0.852267,
		0.519349, -0.694929, -0.497343,
		40.017197, 34.041862, 35.991455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.287239, 34.261295, 35.739857>,  <39.653652, 34.528313, 36.339596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.287239, 34.261295, 35.739857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.550159, 33.969715, 35.816360>,  <39.707912, 33.794765, 35.862263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.550159, 33.969715, 35.816360>,  <39.287239, 34.261295, 35.739857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.550159, 33.969715, 35.816360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749782, -0.658142, 0.068380,
		0.076030, -0.188349, -0.979155,
		0.657302, -0.728954, 0.191260,
		39.747349, 33.751030, 35.873737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132790, 33.732441, 35.343040>,  <39.287239, 34.261295, 35.739857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.132790, 33.732441, 35.343040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.349987, 33.547729, 35.623589>,  <39.480305, 33.436905, 35.791916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.349987, 33.547729, 35.623589>,  <39.132790, 33.732441, 35.343040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.349987, 33.547729, 35.623589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693011, -0.718104, 0.063730,
		0.474228, -0.520662, -0.709943,
		0.542995, -0.461776, 0.701370,
		39.512886, 33.409195, 35.834000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990128, 33.011868, 35.153687>,  <39.132790, 33.732441, 35.343040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.990128, 33.011868, 35.153687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.123962, 33.023403, 35.530457>,  <39.204262, 33.030323, 35.756519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.123962, 33.023403, 35.530457>,  <38.990128, 33.011868, 35.153687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123962, 33.023403, 35.530457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513160, -0.832763, 0.207779,
		0.790391, -0.552878, -0.263834,
		0.334588, 0.028838, 0.941923,
		39.224339, 33.032055, 35.813034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854244, 32.345985, 35.378014>,  <38.990128, 33.011868, 35.153687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.854244, 32.345985, 35.378014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.934120, 32.528595, 35.724819>,  <38.982044, 32.638161, 35.932903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.934120, 32.528595, 35.724819>,  <38.854244, 32.345985, 35.378014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.934120, 32.528595, 35.724819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461813, -0.736546, 0.494194,
		0.864206, -0.499083, 0.063748,
		0.199691, 0.456525, 0.867011,
		38.994026, 32.665554, 35.984924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074886, 31.855867, 35.810368>,  <38.854244, 32.345985, 35.378014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.074886, 31.855867, 35.810368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962490, 32.160820, 36.043541>,  <38.895050, 32.343792, 36.183445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962490, 32.160820, 36.043541>,  <39.074886, 31.855867, 35.810368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962490, 32.160820, 36.043541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569624, -0.621337, 0.538023,
		0.772380, -0.180873, 0.608863,
		-0.280995, 0.762381, 0.582938,
		38.878193, 32.389534, 36.218422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275219, 31.660282, 36.395802>,  <39.074886, 31.855867, 35.810368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.275219, 31.660282, 36.395802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.973373, 31.916470, 36.452877>,  <38.792267, 32.070183, 36.487122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.973373, 31.916470, 36.452877>,  <39.275219, 31.660282, 36.395802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.973373, 31.916470, 36.452877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564705, -0.744629, 0.355859,
		0.334167, 0.187958, 0.923582,
		-0.754613, 0.640468, 0.142689,
		38.746990, 32.108608, 36.495686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037331, 31.653154, 37.126339>,  <39.275219, 31.660282, 36.395802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.037331, 31.653154, 37.126339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.729500, 31.796984, 36.915264>,  <38.544800, 31.883282, 36.788620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.729500, 31.796984, 36.915264>,  <39.037331, 31.653154, 37.126339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729500, 31.796984, 36.915264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605240, -0.674173, 0.423291,
		-0.203550, 0.645134, 0.736457,
		-0.769579, 0.359573, -0.527689,
		38.498627, 31.904856, 36.756958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498398, 31.560787, 37.583591>,  <39.037331, 31.653154, 37.126339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498398, 31.560787, 37.583591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.300213, 31.599094, 37.238258>,  <38.181301, 31.622078, 37.031059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.300213, 31.599094, 37.238258>,  <38.498398, 31.560787, 37.583591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.300213, 31.599094, 37.238258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682977, -0.657069, 0.319065,
		-0.536715, 0.747723, 0.390958,
		-0.495458, 0.095768, -0.863336,
		38.151577, 31.627825, 36.979256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.762604, 31.607153, 37.758450>,  <38.498398, 31.560787, 37.583591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.762604, 31.607153, 37.758450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.756901, 31.492874, 37.375164>,  <37.753479, 31.424307, 37.145191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.756901, 31.492874, 37.375164>,  <37.762604, 31.607153, 37.758450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.756901, 31.492874, 37.375164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535177, -0.807311, 0.248665,
		-0.844620, 0.516359, -0.141389,
		-0.014256, -0.285696, -0.958214,
		37.752625, 31.407166, 37.087700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127121, 31.425535, 37.600697>,  <37.762604, 31.607153, 37.758450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127121, 31.425535, 37.600697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.294846, 31.213692, 37.305756>,  <37.395481, 31.086586, 37.128792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.294846, 31.213692, 37.305756>,  <37.127121, 31.425535, 37.600697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.294846, 31.213692, 37.305756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482357, -0.818045, 0.313264,
		-0.769096, 0.224311, -0.598479,
		0.419314, -0.529610, -0.737353,
		37.420639, 31.054810, 37.084549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818108, 30.791824, 37.862797>,  <37.127121, 31.425535, 37.600697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818108, 30.791824, 37.862797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.627823, 30.707239, 37.521275>,  <36.513653, 30.656488, 37.316360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.627823, 30.707239, 37.521275>,  <36.818108, 30.791824, 37.862797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.627823, 30.707239, 37.521275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448806, -0.893163, -0.028849,
		-0.756486, -0.396916, 0.519794,
		-0.475712, -0.211462, -0.853804,
		36.485111, 30.643801, 37.265133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700382, 30.115589, 37.746616>,  <36.818108, 30.791824, 37.862797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700382, 30.115589, 37.746616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.574348, 30.176960, 37.371983>,  <36.498730, 30.213781, 37.147202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.574348, 30.176960, 37.371983>,  <36.700382, 30.115589, 37.746616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.574348, 30.176960, 37.371983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412334, -0.866713, -0.280695,
		-0.854812, -0.474627, 0.209824,
		-0.315083, 0.153424, -0.936581,
		36.479824, 30.222988, 37.091007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248745, 29.546858, 37.403885>,  <36.700382, 30.115589, 37.746616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.248745, 29.546858, 37.403885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.448887, 29.752354, 37.125111>,  <36.568970, 29.875650, 36.957848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.448887, 29.752354, 37.125111>,  <36.248745, 29.546858, 37.403885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448887, 29.752354, 37.125111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427064, -0.846648, -0.317495,
		-0.753170, -0.138777, -0.643021,
		0.500352, 0.513739, -0.696936,
		36.598991, 29.906475, 36.916031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302853, 29.023455, 36.943260>,  <36.248745, 29.546858, 37.403885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302853, 29.023455, 36.943260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.556442, 29.321182, 36.859287>,  <36.708595, 29.499819, 36.808903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.556442, 29.321182, 36.859287>,  <36.302853, 29.023455, 36.943260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.556442, 29.321182, 36.859287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607654, -0.647343, -0.460112,
		-0.478369, 0.164129, -0.862684,
		0.633971, 0.744317, -0.209935,
		36.746632, 29.544477, 36.796307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402691, 28.926922, 36.179676>,  <36.302853, 29.023455, 36.943260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.402691, 28.926922, 36.179676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.705147, 29.097111, 36.378563>,  <36.886620, 29.199224, 36.497894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.705147, 29.097111, 36.378563>,  <36.402691, 28.926922, 36.179676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705147, 29.097111, 36.378563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647240, -0.598392, -0.472237,
		0.096607, 0.678896, -0.727851,
		0.756140, 0.425473, 0.497218,
		36.931988, 29.224752, 36.527729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850098, 28.972361, 35.720295>,  <36.402691, 28.926922, 36.179676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850098, 28.972361, 35.720295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.049133, 28.929453, 36.064598>,  <37.168556, 28.903708, 36.271179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.049133, 28.929453, 36.064598>,  <36.850098, 28.972361, 35.720295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.049133, 28.929453, 36.064598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632022, -0.634814, -0.444476,
		0.594097, 0.765182, -0.248082,
		0.497591, -0.107269, 0.860753,
		37.198410, 28.897272, 36.322823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573936, 29.034527, 35.601624>,  <36.850098, 28.972361, 35.720295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.573936, 29.034527, 35.601624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.530567, 28.826296, 35.940384>,  <37.504547, 28.701357, 36.143639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.530567, 28.826296, 35.940384>,  <37.573936, 29.034527, 35.601624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530567, 28.826296, 35.940384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512795, -0.759120, -0.400972,
		0.851637, 0.390814, 0.349254,
		-0.108420, -0.520579, 0.846902,
		37.498039, 28.670122, 36.194454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080830, 29.645164, 35.365898>,  <37.573936, 29.034527, 35.601624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080830, 29.645164, 35.365898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.250744, 29.574984, 35.010647>,  <38.352692, 29.532875, 34.797497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.250744, 29.574984, 35.010647>,  <38.080830, 29.645164, 35.365898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.250744, 29.574984, 35.010647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165036, -0.979608, 0.114589,
		-0.890124, 0.097898, -0.445079,
		0.424785, -0.175452, -0.888129,
		38.378178, 29.522348, 34.744209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834743, 29.611404, 35.310062>,  <38.080830, 29.645164, 35.365898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.834743, 29.611404, 35.310062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.767654, 29.707607, 34.927643>,  <38.727402, 29.765329, 34.698193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.767654, 29.707607, 34.927643>,  <38.834743, 29.611404, 35.310062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.767654, 29.707607, 34.927643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855146, 0.518013, -0.019707,
		0.490505, -0.820864, -0.292552,
		-0.167723, 0.240508, -0.956046,
		38.717339, 29.779760, 34.640827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.382019, 29.498098, 34.838505>,  <38.834743, 29.611404, 35.310062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.382019, 29.498098, 34.838505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.213684, 29.772095, 34.600620>,  <39.112682, 29.936493, 34.457890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.213684, 29.772095, 34.600620>,  <39.382019, 29.498098, 34.838505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.213684, 29.772095, 34.600620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897180, 0.411149, -0.161319,
		0.134013, -0.601453, -0.787588,
		-0.420842, 0.684990, -0.594711,
		39.087433, 29.977592, 34.422207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.797119, 29.653811, 34.190948>,  <39.382019, 29.498098, 34.838505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.797119, 29.653811, 34.190948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.580391, 29.978495, 34.278179>,  <39.450356, 30.173306, 34.330517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.580391, 29.978495, 34.278179>,  <39.797119, 29.653811, 34.190948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580391, 29.978495, 34.278179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791267, 0.580111, -0.193309,
		-0.283421, 0.067821, -0.956594,
		-0.541821, 0.811709, 0.218080,
		39.417843, 30.222008, 34.343605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.999054, 30.203550, 33.722618>,  <39.797119, 29.653811, 34.190948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.999054, 30.203550, 33.722618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.854992, 30.379671, 34.051598>,  <39.768555, 30.485344, 34.248985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.854992, 30.379671, 34.051598>,  <39.999054, 30.203550, 33.722618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.854992, 30.379671, 34.051598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812087, 0.581867, 0.044109,
		-0.459136, 0.683787, -0.567124,
		-0.360151, 0.440302, 0.822451,
		39.746948, 30.511763, 34.298332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975414, 30.922037, 33.491661>,  <39.999054, 30.203550, 33.722618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975414, 30.922037, 33.491661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.983521, 30.918787, 33.891567>,  <39.988384, 30.916838, 34.131512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.983521, 30.918787, 33.891567>,  <39.975414, 30.922037, 33.491661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.983521, 30.918787, 33.891567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801988, 0.597231, -0.011401,
		-0.596996, 0.802028, 0.018616,
		0.020262, -0.008124, 0.999762,
		39.989597, 30.916349, 34.191494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118744, 31.594160, 33.616070>,  <39.975414, 30.922037, 33.491661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.118744, 31.594160, 33.616070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.202362, 31.388008, 33.948498>,  <40.252533, 31.264317, 34.147957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.202362, 31.388008, 33.948498>,  <40.118744, 31.594160, 33.616070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.202362, 31.388008, 33.948498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755121, 0.625068, 0.197690,
		-0.621364, 0.586236, 0.519841,
		0.209043, -0.515380, 0.831074,
		40.265076, 31.233395, 34.197819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.277256, 32.116028, 34.137955>,  <40.118744, 31.594160, 33.616070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.277256, 32.116028, 34.137955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.442287, 31.777216, 34.272011>,  <40.541306, 31.573929, 34.352444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.442287, 31.777216, 34.272011>,  <40.277256, 32.116028, 34.137955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.442287, 31.777216, 34.272011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746291, 0.525273, 0.408825,
		-0.522327, 0.081439, 0.848848,
		0.412582, -0.847028, 0.335141,
		40.566063, 31.523108, 34.372555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.701702, 32.376282, 34.600002>,  <40.277256, 32.116028, 34.137955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.701702, 32.376282, 34.600002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.831291, 32.000038, 34.559410>,  <40.909042, 31.774292, 34.535053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.831291, 32.000038, 34.559410>,  <40.701702, 32.376282, 34.600002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.831291, 32.000038, 34.559410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932504, 0.299385, 0.202004,
		-0.159624, -0.160076, 0.974113,
		0.323971, -0.940608, -0.101482,
		40.928482, 31.717855, 34.528965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.000839, 32.125633, 35.277260>,  <40.701702, 32.376282, 34.600002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.000839, 32.125633, 35.277260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.167633, 31.941324, 34.963875>,  <41.267712, 31.830740, 34.775845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.167633, 31.941324, 34.963875>,  <41.000839, 32.125633, 35.277260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.167633, 31.941324, 34.963875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897526, 0.344750, 0.274944,
		0.143412, -0.817825, 0.557310,
		0.416989, -0.460770, -0.783461,
		41.292728, 31.803093, 34.728836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.680721, 31.777411, 35.559761>,  <41.000839, 32.125633, 35.277260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.680721, 31.777411, 35.559761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.716206, 31.780025, 35.161346>,  <41.737495, 31.781593, 34.922298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.716206, 31.780025, 35.161346>,  <41.680721, 31.777411, 35.559761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.716206, 31.780025, 35.161346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965284, 0.246080, 0.087591,
		0.245677, -0.969228, 0.015522,
		0.088715, 0.006536, -0.996035,
		41.742821, 31.781986, 34.862537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.304138, 31.407263, 35.408875>,  <41.680721, 31.777411, 35.559761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.304138, 31.407263, 35.408875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.238468, 31.642612, 35.092175>,  <42.199066, 31.783821, 34.902157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.238468, 31.642612, 35.092175>,  <42.304138, 31.407263, 35.408875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.238468, 31.642612, 35.092175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986407, 0.103498, -0.127629,
		0.006851, -0.801939, -0.597367,
		-0.164178, 0.588372, -0.791747,
		42.189217, 31.819124, 34.854649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.918709, 31.395855, 35.007584>,  <42.304138, 31.407263, 35.408875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.918709, 31.395855, 35.007584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.711056, 31.698635, 34.848820>,  <42.586464, 31.880302, 34.753563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.711056, 31.698635, 34.848820>,  <42.918709, 31.395855, 35.007584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.711056, 31.698635, 34.848820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848995, 0.403145, -0.341586,
		-0.098553, -0.514298, -0.851930,
		-0.519129, 0.756949, -0.396906,
		42.555317, 31.925720, 34.729748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.205494, 31.523586, 34.380981>,  <42.918709, 31.395855, 35.007584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.205494, 31.523586, 34.380981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.019997, 31.871502, 34.448395>,  <42.908699, 32.080250, 34.488842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.019997, 31.871502, 34.448395>,  <43.205494, 31.523586, 34.380981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.019997, 31.871502, 34.448395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742370, 0.485313, -0.461906,
		-0.483554, -0.089092, -0.870769,
		-0.463747, 0.869790, 0.168536,
		42.880871, 32.132439, 34.498955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.295776, 31.863081, 33.791904>,  <43.205494, 31.523586, 34.380981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.295776, 31.863081, 33.791904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.212444, 32.134953, 34.073227>,  <43.162445, 32.298077, 34.242020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.212444, 32.134953, 34.073227>,  <43.295776, 31.863081, 33.791904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.212444, 32.134953, 34.073227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758951, 0.565910, -0.322085,
		-0.616920, 0.466672, -0.633740,
		-0.208332, 0.679679, 0.703303,
		43.149944, 32.338856, 34.284218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.311218, 32.469532, 33.553104>,  <43.295776, 31.863081, 33.791904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.311218, 32.469532, 33.553104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.316120, 32.580212, 33.937458>,  <43.319061, 32.646618, 34.168068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.316120, 32.580212, 33.937458>,  <43.311218, 32.469532, 33.553104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.316120, 32.580212, 33.937458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599224, 0.767256, -0.228580,
		-0.800488, 0.578582, -0.156402,
		0.012252, 0.276695, 0.960880,
		43.319794, 32.663219, 34.225723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.285107, 33.239887, 33.588413>,  <43.311218, 32.469532, 33.553104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.285107, 33.239887, 33.588413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.426987, 33.129009, 33.945591>,  <43.512115, 33.062481, 34.159897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.426987, 33.129009, 33.945591>,  <43.285107, 33.239887, 33.588413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.426987, 33.129009, 33.945591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451098, 0.887269, 0.096245,
		-0.818961, 0.368667, 0.439759,
		0.354703, -0.277196, 0.892944,
		43.533398, 33.045849, 34.213474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.181156, 33.803417, 34.100868>,  <43.285107, 33.239887, 33.588413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.181156, 33.803417, 34.100868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.459919, 33.574707, 34.274025>,  <43.627178, 33.437481, 34.377918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.459919, 33.574707, 34.274025>,  <43.181156, 33.803417, 34.100868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.459919, 33.574707, 34.274025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554526, 0.812397, 0.180311,
		-0.454775, 0.114387, 0.883230,
		0.696908, -0.571775, 0.432888,
		43.668991, 33.403175, 34.403893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.314064, 34.057190, 34.766525>,  <43.181156, 33.803417, 34.100868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.314064, 34.057190, 34.766525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.634663, 33.840828, 34.664528>,  <43.827023, 33.711010, 34.603329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.634663, 33.840828, 34.664528>,  <43.314064, 34.057190, 34.766525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.634663, 33.840828, 34.664528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597326, 0.704019, 0.384135,
		-0.028259, -0.460199, 0.887366,
		0.801501, -0.540902, -0.254994,
		43.875114, 33.678558, 34.588028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.644028, 34.184994, 35.302452>,  <43.314064, 34.057190, 34.766525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.644028, 34.184994, 35.302452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.916073, 34.051247, 35.041489>,  <44.079300, 33.970997, 34.884911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.916073, 34.051247, 35.041489>,  <43.644028, 34.184994, 35.302452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.916073, 34.051247, 35.041489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572909, 0.797665, 0.188428,
		0.457400, -0.501925, 0.734068,
		0.680118, -0.334368, -0.652410,
		44.120110, 33.950935, 34.845764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.305115, 34.334064, 35.647747>,  <43.644028, 34.184994, 35.302452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.305115, 34.334064, 35.647747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.364536, 34.309914, 35.252922>,  <44.400188, 34.295422, 35.016029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.364536, 34.309914, 35.252922>,  <44.305115, 34.334064, 35.647747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.364536, 34.309914, 35.252922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675104, 0.735547, 0.056611,
		0.722610, -0.674777, 0.150033,
		0.148557, -0.060380, -0.987059,
		44.409103, 34.291801, 34.956806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.032120, 34.286636, 35.607246>,  <44.305115, 34.334064, 35.647747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.032120, 34.286636, 35.607246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.896580, 34.430264, 35.259396>,  <44.815254, 34.516441, 35.050686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.896580, 34.430264, 35.259396>,  <45.032120, 34.286636, 35.607246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.896580, 34.430264, 35.259396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627013, 0.775311, 0.075814,
		0.701453, -0.519577, -0.487857,
		-0.338850, 0.359072, -0.869625,
		44.794926, 34.537987, 34.998508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.641537, 34.588470, 35.428028>,  <45.032120, 34.286636, 35.607246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.641537, 34.588470, 35.428028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.366592, 34.720913, 35.169445>,  <45.201626, 34.800377, 35.014297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.366592, 34.720913, 35.169445>,  <45.641537, 34.588470, 35.428028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.366592, 34.720913, 35.169445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545034, 0.823435, -0.157776,
		0.480071, -0.460789, -0.746462,
		-0.687364, 0.331104, -0.646453,
		45.160385, 34.820244, 34.975510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.022968, 35.030525, 34.813332>,  <45.641537, 34.588470, 35.428028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.022968, 35.030525, 34.813332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.639297, 35.143642, 34.812248>,  <45.409096, 35.211514, 34.811600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.639297, 35.143642, 34.812248>,  <46.022968, 35.030525, 34.813332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.639297, 35.143642, 34.812248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272517, 0.921681, -0.276113,
		-0.075590, -0.265578, -0.961121,
		-0.959177, 0.282793, -0.002704,
		45.351543, 35.228481, 34.811436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.179035, 35.705746, 34.763908>,  <46.022968, 35.030525, 34.813332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.179035, 35.705746, 34.763908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.329876, 35.468937, 35.048809>,  <46.420380, 35.326851, 35.219749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.329876, 35.468937, 35.048809>,  <46.179035, 35.705746, 34.763908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.329876, 35.468937, 35.048809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649363, -0.379337, -0.659114,
		0.660393, 0.711065, 0.241386,
		0.377106, -0.592022, 0.712251,
		46.443008, 35.291332, 35.262486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.008755, 35.850121, 34.833660>,  <46.179035, 35.705746, 34.763908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.008755, 35.850121, 34.833660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.866482, 35.496365, 34.954552>,  <46.781116, 35.284111, 35.027088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.866482, 35.496365, 34.954552>,  <47.008755, 35.850121, 34.833660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.866482, 35.496365, 34.954552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826276, -0.448683, -0.340517,
		0.436756, 0.128610, 0.890339,
		-0.355686, -0.884388, 0.302232,
		46.759777, 35.231049, 35.045223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.555599, 35.464691, 35.136234>,  <47.008755, 35.850121, 34.833660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.555599, 35.464691, 35.136234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.279655, 35.213879, 34.991505>,  <47.114090, 35.063389, 34.904667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.279655, 35.213879, 34.991505>,  <47.555599, 35.464691, 35.136234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.279655, 35.213879, 34.991505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695065, -0.433929, -0.573228,
		0.202426, -0.646942, 0.735180,
		-0.689861, -0.627034, -0.361828,
		47.072697, 35.025768, 34.882957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.022121, 35.004375, 34.961071>,  <47.555599, 35.464691, 35.136234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.022121, 35.004375, 34.961071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.678635, 34.900387, 34.784428>,  <47.472542, 34.837994, 34.678440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.678635, 34.900387, 34.784428>,  <48.022121, 35.004375, 34.961071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.678635, 34.900387, 34.784428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507774, -0.315500, -0.801639,
		0.069078, -0.912619, 0.402933,
		-0.858716, -0.259974, -0.441610,
		47.421021, 34.822395, 34.651943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.952042, 33.860657, 47.723454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.563721, 33.777237, 47.676022>,  <37.330730, 33.727184, 47.647564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.563721, 33.777237, 47.676022>,  <37.952042, 33.860657, 47.723454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.563721, 33.777237, 47.676022> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049032, 0.311365, -0.949025,
		0.234832, -0.927126, -0.292047,
		-0.970798, -0.208542, -0.118577,
		37.272480, 33.714672, 47.640450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942379, 33.663887, 47.003498>,  <37.952042, 33.860657, 47.723454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942379, 33.663887, 47.003498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.560249, 33.690247, 47.118740>,  <37.330971, 33.706062, 47.187885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.560249, 33.690247, 47.118740>,  <37.942379, 33.663887, 47.003498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560249, 33.690247, 47.118740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278683, 0.123746, -0.952377,
		-0.098412, -0.990123, -0.099853,
		-0.955327, 0.065898, 0.288109,
		37.273651, 33.710014, 47.205173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650692, 33.216774, 46.543079>,  <37.942379, 33.663887, 47.003498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650692, 33.216774, 46.543079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.365715, 33.468277, 46.667721>,  <37.194729, 33.619179, 46.742504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.365715, 33.468277, 46.667721>,  <37.650692, 33.216774, 46.543079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365715, 33.468277, 46.667721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362695, 0.050200, -0.930555,
		-0.600737, -0.775978, 0.192283,
		-0.712438, 0.628759, 0.311600,
		37.151985, 33.656906, 46.761200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028095, 33.141853, 46.122185>,  <37.650692, 33.216774, 46.543079>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028095, 33.141853, 46.122185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.983459, 33.514244, 46.261227>,  <36.956680, 33.737679, 46.344650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.983459, 33.514244, 46.261227>,  <37.028095, 33.141853, 46.122185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983459, 33.514244, 46.261227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420560, 0.272678, -0.865318,
		-0.900377, -0.242744, 0.361105,
		-0.111585, 0.930979, 0.347602,
		36.949986, 33.793537, 46.365509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256458, 33.316463, 45.950607>,  <37.028095, 33.141853, 46.122185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256458, 33.316463, 45.950607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.471413, 33.651257, 45.991936>,  <36.600388, 33.852131, 46.016731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.471413, 33.651257, 45.991936>,  <36.256458, 33.316463, 45.950607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471413, 33.651257, 45.991936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427335, 0.375874, -0.822255,
		-0.727048, 0.397718, 0.559662,
		0.537388, 0.836982, 0.103320,
		36.632629, 33.902351, 46.022930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750191, 33.750229, 45.734356>,  <36.256458, 33.316463, 45.950607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.750191, 33.750229, 45.734356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.080696, 33.975037, 45.719265>,  <36.278999, 34.109921, 45.710213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.080696, 33.975037, 45.719265>,  <35.750191, 33.750229, 45.734356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.080696, 33.975037, 45.719265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351741, 0.462485, -0.813871,
		-0.439967, 0.685739, 0.579820,
		0.826261, 0.562023, -0.037724,
		36.328575, 34.143642, 45.707947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552322, 34.436066, 45.582886>,  <35.750191, 33.750229, 45.734356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552322, 34.436066, 45.582886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.930733, 34.404789, 45.457085>,  <36.157780, 34.386021, 45.381603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.930733, 34.404789, 45.457085>,  <35.552322, 34.436066, 45.582886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930733, 34.404789, 45.457085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252362, 0.431097, -0.866296,
		0.203322, 0.898911, 0.388097,
		0.946030, -0.078196, -0.314502,
		36.214542, 34.381329, 45.362736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586384, 34.989010, 45.177135>,  <35.552322, 34.436066, 45.582886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586384, 34.989010, 45.177135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.889252, 34.755203, 45.060490>,  <36.070972, 34.614918, 44.990501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.889252, 34.755203, 45.060490>,  <35.586384, 34.989010, 45.177135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.889252, 34.755203, 45.060490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121162, 0.313013, -0.941989,
		0.641888, 0.748574, 0.166181,
		0.757165, -0.584517, -0.291618,
		36.116402, 34.579849, 44.973003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103340, 35.400455, 44.807938>,  <35.586384, 34.989010, 45.177135>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103340, 35.400455, 44.807938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.177704, 35.024361, 44.693821>,  <36.222321, 34.798702, 44.625351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.177704, 35.024361, 44.693821>,  <36.103340, 35.400455, 44.807938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177704, 35.024361, 44.693821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029802, 0.284829, -0.958115,
		0.982115, 0.186624, 0.024931,
		0.185908, -0.940236, -0.285296,
		36.233475, 34.742290, 44.608231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476032, 35.537071, 44.263023>,  <36.103340, 35.400455, 44.807938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.476032, 35.537071, 44.263023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.315758, 35.173958, 44.213413>,  <36.219593, 34.956089, 44.183647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.315758, 35.173958, 44.213413>,  <36.476032, 35.537071, 44.263023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.315758, 35.173958, 44.213413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058667, 0.160506, -0.985290,
		0.914334, -0.387518, -0.117569,
		-0.400688, -0.907782, -0.124022,
		36.195553, 34.901623, 44.176208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.883907, 35.116119, 43.857132>,  <36.476032, 35.537071, 44.263023>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.883907, 35.116119, 43.857132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.511097, 34.983734, 43.798077>,  <36.287411, 34.904305, 43.762642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.511097, 34.983734, 43.798077>,  <36.883907, 35.116119, 43.857132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.511097, 34.983734, 43.798077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085799, 0.194290, -0.977185,
		0.352099, -0.923425, -0.152686,
		-0.932022, -0.330966, -0.147638,
		36.231491, 34.884445, 43.753784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941948, 34.672741, 43.306236>,  <36.883907, 35.116119, 43.857132>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.941948, 34.672741, 43.306236> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.564507, 34.800808, 43.339977>,  <36.338043, 34.877647, 43.360222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.564507, 34.800808, 43.339977>,  <36.941948, 34.672741, 43.306236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564507, 34.800808, 43.339977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030492, 0.169644, -0.985034,
		-0.329684, -0.932048, -0.150313,
		-0.943599, 0.320166, 0.084348,
		36.281425, 34.896858, 43.365280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571339, 34.295486, 42.822132>,  <36.941948, 34.672741, 43.306236>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.571339, 34.295486, 42.822132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.364628, 34.631947, 42.885887>,  <36.240601, 34.833824, 42.924141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.364628, 34.631947, 42.885887>,  <36.571339, 34.295486, 42.822132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.364628, 34.631947, 42.885887> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059752, 0.150279, -0.986836,
		-0.854030, -0.519502, -0.027401,
		-0.516781, 0.841151, 0.159384,
		36.209595, 34.884293, 42.933701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061653, 34.218277, 42.333042>,  <36.571339, 34.295486, 42.822132>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.061653, 34.218277, 42.333042> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.100395, 34.606964, 42.419182>,  <36.123642, 34.840176, 42.470867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.100395, 34.606964, 42.419182>,  <36.061653, 34.218277, 42.333042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100395, 34.606964, 42.419182> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047489, 0.220635, -0.974200,
		-0.994165, 0.084129, 0.067516,
		0.096855, 0.971721, 0.215353,
		36.129452, 34.898479, 42.483788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649837, 34.582958, 41.987297>,  <36.061653, 34.218277, 42.333042>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649837, 34.582958, 41.987297> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.901897, 34.881168, 42.074112>,  <36.053135, 35.060093, 42.126202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.901897, 34.881168, 42.074112>,  <35.649837, 34.582958, 41.987297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901897, 34.881168, 42.074112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151243, 0.156312, -0.976060,
		-0.761600, 0.647890, -0.014255,
		0.630151, 0.745523, 0.217036,
		36.090942, 35.104824, 42.139221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537224, 35.007301, 41.488583>,  <35.649837, 34.582958, 41.987297>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.537224, 35.007301, 41.488583> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.879322, 35.145916, 41.642708>,  <36.084579, 35.229084, 41.735184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.879322, 35.145916, 41.642708>,  <35.537224, 35.007301, 41.488583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879322, 35.145916, 41.642708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343331, 0.178047, -0.922184,
		-0.388174, 0.920985, 0.033297,
		0.855245, 0.346535, 0.385316,
		36.135895, 35.249878, 41.758301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.715321, 35.543728, 41.053650>,  <35.537224, 35.007301, 41.488583>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.715321, 35.543728, 41.053650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.065201, 35.479362, 41.236515>,  <36.275131, 35.440742, 41.346233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.065201, 35.479362, 41.236515>,  <35.715321, 35.543728, 41.053650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.065201, 35.479362, 41.236515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482067, 0.386317, -0.786365,
		-0.050072, 0.908221, 0.415486,
		0.874702, -0.160917, 0.457167,
		36.327610, 35.431087, 41.373665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955147, 36.146717, 41.010544>,  <35.715321, 35.543728, 41.053650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955147, 36.146717, 41.010544> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.277126, 35.915146, 41.062553>,  <36.470314, 35.776203, 41.093758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.277126, 35.915146, 41.062553>,  <35.955147, 36.146717, 41.010544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277126, 35.915146, 41.062553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506062, 0.555435, -0.659844,
		0.309784, 0.596937, 0.740068,
		0.804944, -0.578929, 0.130022,
		36.518608, 35.741467, 41.101559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474377, 36.588902, 40.933968>,  <35.955147, 36.146717, 41.010544>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474377, 36.588902, 40.933968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.663223, 36.239529, 40.886269>,  <36.776531, 36.029903, 40.857647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.663223, 36.239529, 40.886269>,  <36.474377, 36.588902, 40.933968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663223, 36.239529, 40.886269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456312, 0.357877, -0.814680,
		0.754247, 0.330206, 0.567517,
		0.472114, -0.873435, -0.119251,
		36.804859, 35.977497, 40.850494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.112343, 36.812782, 40.889149>,  <36.474377, 36.588902, 40.933968>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.112343, 36.812782, 40.889149> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.103920, 36.454060, 40.712383>,  <37.098866, 36.238827, 40.606323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.103920, 36.454060, 40.712383>,  <37.112343, 36.812782, 40.889149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103920, 36.454060, 40.712383> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608088, 0.339367, -0.717676,
		0.793590, -0.283837, 0.538193,
		-0.021058, -0.896809, -0.441916,
		37.097603, 36.185017, 40.579807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.664600, 36.635677, 40.678017>,  <37.112343, 36.812782, 40.889149>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.664600, 36.635677, 40.678017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.455963, 36.384201, 40.447296>,  <37.330780, 36.233315, 40.308865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.455963, 36.384201, 40.447296>,  <37.664600, 36.635677, 40.678017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.455963, 36.384201, 40.447296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565785, 0.251147, -0.785374,
		0.638616, -0.735988, 0.224705,
		-0.521592, -0.628687, -0.576797,
		37.299484, 36.195595, 40.274258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121387, 36.304504, 40.160812>,  <37.664600, 36.635677, 40.678017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121387, 36.304504, 40.160812> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.775993, 36.284481, 39.960060>,  <37.568756, 36.272469, 39.839607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.775993, 36.284481, 39.960060>,  <38.121387, 36.304504, 40.160812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775993, 36.284481, 39.960060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485240, 0.189018, -0.853707,
		0.137592, -0.980697, -0.138928,
		-0.863488, -0.050050, -0.501880,
		37.516949, 36.269466, 39.809494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469444, 35.853989, 39.708355>,  <38.121387, 36.304504, 40.160812>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469444, 35.853989, 39.708355> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.840454, 35.716873, 39.648758>,  <39.063061, 35.634605, 39.612999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.840454, 35.716873, 39.648758>,  <38.469444, 35.853989, 39.708355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.840454, 35.716873, 39.648758> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156832, -0.004903, 0.987613,
		-0.339275, -0.939399, 0.049213,
		0.927521, -0.342791, -0.148992,
		39.118710, 35.614037, 39.604061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536854, 35.264153, 40.049240>,  <38.469444, 35.853989, 39.708355>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.536854, 35.264153, 40.049240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.920528, 35.374153, 40.022919>,  <39.150734, 35.440151, 40.007126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.920528, 35.374153, 40.022919>,  <38.536854, 35.264153, 40.049240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920528, 35.374153, 40.022919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141896, -0.266822, 0.953243,
		0.244581, -0.923678, -0.294954,
		0.959190, 0.274998, -0.065806,
		39.208286, 35.456654, 40.003178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952663, 34.705647, 40.313080>,  <38.536854, 35.264153, 40.049240>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952663, 34.705647, 40.313080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.167919, 35.038948, 40.363819>,  <39.297073, 35.238930, 40.394260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.167919, 35.038948, 40.363819>,  <38.952663, 34.705647, 40.313080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.167919, 35.038948, 40.363819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284662, -0.321330, 0.903169,
		0.793330, -0.449925, -0.410117,
		0.538141, 0.833256, 0.126844,
		39.329361, 35.288925, 40.401871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.582756, 34.456486, 40.480949>,  <38.952663, 34.705647, 40.313080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.582756, 34.456486, 40.480949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.600567, 34.833515, 40.613361>,  <39.611252, 35.059731, 40.692810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.600567, 34.833515, 40.613361>,  <39.582756, 34.456486, 40.480949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600567, 34.833515, 40.613361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351562, -0.324945, 0.877961,
		0.935105, 0.077288, -0.345839,
		0.044523, 0.942570, 0.331029,
		39.613922, 35.116287, 40.712669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.188335, 34.495876, 40.973606>,  <39.582756, 34.456486, 40.480949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.188335, 34.495876, 40.973606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.937298, 34.799294, 41.043736>,  <39.786674, 34.981346, 41.085812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.937298, 34.799294, 41.043736>,  <40.188335, 34.495876, 40.973606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.937298, 34.799294, 41.043736> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141130, -0.110614, 0.983792,
		0.765643, 0.642164, -0.037633,
		-0.627593, 0.758545, 0.175320,
		39.749020, 35.026855, 41.096333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.595165, 34.889717, 41.432812>,  <40.188335, 34.495876, 40.973606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.595165, 34.889717, 41.432812> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.214630, 34.996624, 41.494167>,  <39.986309, 35.060768, 41.530979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.214630, 34.996624, 41.494167>,  <40.595165, 34.889717, 41.432812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.214630, 34.996624, 41.494167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136844, -0.079570, 0.987392,
		0.276100, 0.960332, 0.039125,
		-0.951337, 0.267264, 0.153385,
		39.929230, 35.076805, 41.540184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.606922, 35.317650, 41.904095>,  <40.595165, 34.889717, 41.432812>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.606922, 35.317650, 41.904095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.220375, 35.216038, 41.920105>,  <39.988445, 35.155071, 41.929710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.220375, 35.216038, 41.920105>,  <40.606922, 35.317650, 41.904095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.220375, 35.216038, 41.920105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119223, -0.304635, 0.944978,
		-0.227860, 0.917968, 0.324676,
		-0.966367, -0.254031, 0.040028,
		39.930466, 35.139828, 41.932114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.295223, 35.555767, 42.620361>,  <40.606922, 35.317650, 41.904095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.295223, 35.555767, 42.620361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.068035, 35.264877, 42.466187>,  <39.931725, 35.090343, 42.373680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.068035, 35.264877, 42.466187>,  <40.295223, 35.555767, 42.620361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.068035, 35.264877, 42.466187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015258, -0.458923, 0.888345,
		-0.822910, 0.510431, 0.249557,
		-0.567966, -0.727221, -0.385441,
		39.897644, 35.046711, 42.350555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.694515, 35.622025, 43.026810>,  <40.295223, 35.555767, 42.620361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.694515, 35.622025, 43.026810> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.702690, 35.245689, 42.891514>,  <39.707596, 35.019886, 42.810337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.702690, 35.245689, 42.891514>,  <39.694515, 35.622025, 43.026810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.702690, 35.245689, 42.891514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086913, -0.338698, 0.936873,
		-0.996006, 0.010252, -0.088692,
		0.020435, -0.940840, -0.338236,
		39.708820, 34.963436, 42.790043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197304, 35.410252, 43.329243>,  <39.694515, 35.622025, 43.026810>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.197304, 35.410252, 43.329243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.378796, 35.069313, 43.225216>,  <39.487690, 34.864750, 43.162800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.378796, 35.069313, 43.225216>,  <39.197304, 35.410252, 43.329243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378796, 35.069313, 43.225216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238436, -0.397310, 0.886168,
		-0.858648, -0.340074, -0.383502,
		0.453732, -0.852347, -0.260063,
		39.514915, 34.813610, 43.147198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749321, 34.909901, 43.441574>,  <39.197304, 35.410252, 43.329243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.749321, 34.909901, 43.441574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.105160, 34.727333, 43.434750>,  <39.318665, 34.617794, 43.430656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.105160, 34.727333, 43.434750>,  <38.749321, 34.909901, 43.441574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.105160, 34.727333, 43.434750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230027, -0.479989, 0.846580,
		-0.394582, -0.749195, -0.531987,
		0.889602, -0.456417, -0.017060,
		39.372040, 34.590408, 43.429630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561081, 34.272427, 43.571171>,  <38.749321, 34.909901, 43.441574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.561081, 34.272427, 43.571171> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.955170, 34.285999, 43.638336>,  <39.191624, 34.294144, 43.678635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.955170, 34.285999, 43.638336>,  <38.561081, 34.272427, 43.571171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955170, 34.285999, 43.638336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114857, -0.596409, 0.794421,
		0.127102, -0.801963, -0.583695,
		0.985217, 0.033931, 0.167916,
		39.250736, 34.296177, 43.688709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.764431, 33.559296, 43.424625>,  <38.561081, 34.272427, 43.571171>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.764431, 33.559296, 43.424625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.035110, 33.754333, 43.645290>,  <39.197517, 33.871357, 43.777691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.035110, 33.754333, 43.645290>,  <38.764431, 33.559296, 43.424625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035110, 33.754333, 43.645290> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064271, -0.707297, 0.703989,
		0.733452, -0.511843, -0.447286,
		0.676696, 0.487595, 0.551665,
		39.238121, 33.900612, 43.810791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093746, 33.009583, 43.848137>,  <38.764431, 33.559296, 43.424625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.093746, 33.009583, 43.848137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.207161, 33.354473, 44.016026>,  <39.275208, 33.561409, 44.116760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.207161, 33.354473, 44.016026>,  <39.093746, 33.009583, 43.848137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207161, 33.354473, 44.016026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139408, -0.470094, 0.871537,
		0.948775, -0.188598, -0.253490,
		0.283534, 0.862231, 0.419722,
		39.292221, 33.613144, 44.141941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714661, 32.818256, 44.275524>,  <39.093746, 33.009583, 43.848137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.714661, 32.818256, 44.275524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.527737, 33.151215, 44.394684>,  <39.415585, 33.350990, 44.466179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.527737, 33.151215, 44.394684>,  <39.714661, 32.818256, 44.275524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.527737, 33.151215, 44.394684> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002936, -0.338412, 0.940993,
		0.884090, 0.438859, 0.160586,
		-0.467308, 0.832394, 0.297899,
		39.387543, 33.400932, 44.484055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.109272, 32.959579, 44.884556>,  <39.714661, 32.818256, 44.275524>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.109272, 32.959579, 44.884556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.757195, 33.147583, 44.910908>,  <39.545948, 33.260387, 44.926720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.757195, 33.147583, 44.910908>,  <40.109272, 32.959579, 44.884556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757195, 33.147583, 44.910908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080016, -0.283787, 0.955543,
		0.467814, 0.835795, 0.287398,
		-0.880198, 0.470012, 0.065883,
		39.493134, 33.288586, 44.930672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.248222, 33.399975, 45.494652>,  <40.109272, 32.959579, 44.884556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.248222, 33.399975, 45.494652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.858376, 33.326595, 45.443310>,  <39.624470, 33.282566, 45.412502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.858376, 33.326595, 45.443310>,  <40.248222, 33.399975, 45.494652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.858376, 33.326595, 45.443310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048521, -0.386612, 0.920965,
		-0.218574, 0.903813, 0.367896,
		-0.974613, -0.183448, -0.128357,
		39.565990, 33.271561, 45.404804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.925034, 33.691505, 45.987305>,  <40.248222, 33.399975, 45.494652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.925034, 33.691505, 45.987305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.628445, 33.449368, 45.871521>,  <39.450493, 33.304085, 45.802052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.628445, 33.449368, 45.871521>,  <39.925034, 33.691505, 45.987305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.628445, 33.449368, 45.871521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153615, -0.266786, 0.951434,
		-0.653168, 0.749923, 0.104824,
		-0.741468, -0.605344, -0.289456,
		39.406006, 33.267765, 45.784683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.406757, 33.858482, 46.491020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.303741, 33.509933, 46.323978>,  <39.241932, 33.300804, 46.223755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.303741, 33.509933, 46.323978>,  <39.406757, 33.858482, 46.491020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.303741, 33.509933, 46.323978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181909, -0.380731, 0.906616,
		-0.948991, 0.309454, -0.060457,
		-0.257538, -0.871368, -0.417603,
		39.226479, 33.248524, 46.198696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.652309, 33.574360, 46.749943>,  <39.406757, 33.858482, 46.491020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.652309, 33.574360, 46.749943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.859612, 33.262936, 46.608379>,  <38.983994, 33.076080, 46.523441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.859612, 33.262936, 46.608379>,  <38.652309, 33.574360, 46.749943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.859612, 33.262936, 46.608379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163569, -0.496414, 0.852536,
		-0.839438, -0.383944, -0.384619,
		0.518256, -0.778563, -0.353907,
		39.015087, 33.029366, 46.502209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295982, 33.007114, 47.006725>,  <38.652309, 33.574360, 46.749943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.295982, 33.007114, 47.006725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.643318, 32.842651, 46.895771>,  <38.851719, 32.743973, 46.829197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.643318, 32.842651, 46.895771>,  <38.295982, 33.007114, 47.006725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.643318, 32.842651, 46.895771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069814, -0.655032, 0.752369,
		-0.491035, -0.633945, -0.597493,
		0.868337, -0.411153, -0.277385,
		38.903820, 32.719307, 46.812553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.274498, 32.302269, 47.132896>,  <38.295982, 33.007114, 47.006725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.274498, 32.302269, 47.132896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.673016, 32.328159, 47.155533>,  <38.912128, 32.343693, 47.169113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.673016, 32.328159, 47.155533>,  <38.274498, 32.302269, 47.132896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.673016, 32.328159, 47.155533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007215, -0.592933, 0.805219,
		0.085673, -0.802646, -0.590271,
		0.996297, 0.064726, 0.056590,
		38.971905, 32.347576, 47.172508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453911, 31.547544, 47.255959>,  <38.274498, 32.302269, 47.132896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453911, 31.547544, 47.255959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.763386, 31.782360, 47.351280>,  <38.949070, 31.923248, 47.408474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.763386, 31.782360, 47.351280>,  <38.453911, 31.547544, 47.255959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.763386, 31.782360, 47.351280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122495, -0.507634, 0.852820,
		0.621607, -0.630629, -0.464662,
		0.773692, 0.587038, 0.238300,
		38.995495, 31.958471, 47.422771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.928349, 31.131752, 47.477386>,  <38.453911, 31.547544, 47.255959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.928349, 31.131752, 47.477386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.051544, 31.470299, 47.651196>,  <39.125462, 31.673428, 47.755482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.051544, 31.470299, 47.651196>,  <38.928349, 31.131752, 47.477386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051544, 31.470299, 47.651196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123811, -0.417179, 0.900351,
		0.943300, -0.331095, -0.023696,
		0.307987, 0.846367, 0.434518,
		39.143940, 31.724209, 47.781551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.339024, 30.913343, 48.015545>,  <38.928349, 31.131752, 47.477386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.339024, 30.913343, 48.015545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.316956, 31.292137, 48.142147>,  <39.303715, 31.519413, 48.218109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.316956, 31.292137, 48.142147>,  <39.339024, 30.913343, 48.015545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.316956, 31.292137, 48.142147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041454, -0.314544, 0.948337,
		0.997616, 0.065443, -0.021902,
		-0.055173, 0.946984, 0.316507,
		39.300404, 31.576233, 48.237099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974899, 31.054531, 48.414082>,  <39.339024, 30.913343, 48.015545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.974899, 31.054531, 48.414082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.681461, 31.300472, 48.529873>,  <39.505398, 31.448038, 48.599346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.681461, 31.300472, 48.529873>,  <39.974899, 31.054531, 48.414082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.681461, 31.300472, 48.529873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229508, -0.176789, 0.957117,
		0.639664, 0.768569, -0.011423,
		-0.733591, 0.614855, 0.289478,
		39.461384, 31.484928, 48.616714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.236317, 31.495775, 48.946712>,  <39.974899, 31.054531, 48.414082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.236317, 31.495775, 48.946712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.840225, 31.501125, 49.002239>,  <39.602570, 31.504335, 49.035553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.840225, 31.501125, 49.002239>,  <40.236317, 31.495775, 48.946712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.840225, 31.501125, 49.002239> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127758, -0.312047, 0.941437,
		0.055908, 0.949972, 0.307289,
		-0.990228, 0.013376, 0.138813,
		39.543156, 31.505138, 49.043884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.129883, 31.571550, 49.692738>,  <40.236317, 31.495775, 48.946712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.129883, 31.571550, 49.692738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.773472, 31.448383, 49.559322>,  <39.559624, 31.374483, 49.479275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.773472, 31.448383, 49.559322>,  <40.129883, 31.571550, 49.692738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.773472, 31.448383, 49.559322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177076, -0.440784, 0.879974,
		-0.417978, 0.843147, 0.338227,
		-0.891032, -0.307918, -0.333539,
		39.506161, 31.356009, 49.459259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624634, 31.683216, 50.292198>,  <40.129883, 31.571550, 49.692738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.624634, 31.683216, 50.292198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.493267, 31.404369, 50.037273>,  <39.414448, 31.237061, 49.884319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.493267, 31.404369, 50.037273>,  <39.624634, 31.683216, 50.292198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.493267, 31.404369, 50.037273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091446, -0.648101, 0.756044,
		-0.940094, 0.306580, 0.149102,
		-0.328421, -0.697118, -0.637311,
		39.394741, 31.195234, 49.846081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.151672, 31.322041, 50.696175>,  <39.624634, 31.683216, 50.292198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.151672, 31.322041, 50.696175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.208096, 31.086336, 50.377960>,  <39.241951, 30.944914, 50.187031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.208096, 31.086336, 50.377960>,  <39.151672, 31.322041, 50.696175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208096, 31.086336, 50.377960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260802, -0.797301, 0.544328,
		-0.955031, 0.130692, -0.266150,
		0.141062, -0.589263, -0.795532,
		39.250416, 30.909557, 50.139301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564301, 30.850756, 50.721943>,  <39.151672, 31.322041, 50.696175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.564301, 30.850756, 50.721943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.866993, 30.668810, 50.534130>,  <39.048607, 30.559643, 50.421444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.866993, 30.668810, 50.534130>,  <38.564301, 30.850756, 50.721943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.866993, 30.668810, 50.534130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285365, -0.876034, 0.388756,
		-0.588157, -0.160196, -0.792722,
		0.756729, -0.454865, -0.469531,
		39.094013, 30.532351, 50.393272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326416, 30.196735, 50.379417>,  <38.564301, 30.850756, 50.721943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.326416, 30.196735, 50.379417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.718346, 30.164574, 50.452599>,  <38.953503, 30.145277, 50.496506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.718346, 30.164574, 50.452599>,  <38.326416, 30.196735, 50.379417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.718346, 30.164574, 50.452599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137241, -0.936198, 0.323571,
		0.145264, -0.342153, -0.928348,
		0.979828, -0.080404, 0.182954,
		39.012295, 30.140453, 50.507484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451706, 29.554165, 50.076904>,  <38.326416, 30.196735, 50.379417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.451706, 29.554165, 50.076904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.756889, 29.637812, 50.321579>,  <38.939999, 29.688000, 50.468384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.756889, 29.637812, 50.321579>,  <38.451706, 29.554165, 50.076904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756889, 29.637812, 50.321579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134779, -0.873979, 0.466900,
		0.632238, -0.438669, -0.638627,
		0.762961, 0.209118, 0.611687,
		38.985779, 29.700546, 50.505085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.918461, 28.955492, 50.061703>,  <38.451706, 29.554165, 50.076904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.918461, 28.955492, 50.061703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.017433, 29.164648, 50.387981>,  <39.076817, 29.290142, 50.583748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.017433, 29.164648, 50.387981>,  <38.918461, 28.955492, 50.061703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.017433, 29.164648, 50.387981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038679, -0.846535, 0.530926,
		0.968133, -0.099817, -0.229684,
		0.247432, 0.522891, 0.815698,
		39.091663, 29.321516, 50.632690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452206, 28.563848, 50.453087>,  <38.918461, 28.955492, 50.061703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.452206, 28.563848, 50.453087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.333294, 28.827530, 50.729370>,  <39.261948, 28.985739, 50.895142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.333294, 28.827530, 50.729370>,  <39.452206, 28.563848, 50.453087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333294, 28.827530, 50.729370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008553, -0.725223, 0.688461,
		0.954753, 0.198757, 0.221231,
		-0.297278, 0.659202, 0.690709,
		39.244110, 29.025291, 50.936584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.770168, 28.425266, 51.071045>,  <39.452206, 28.563848, 50.453087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.770168, 28.425266, 51.071045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.440834, 28.611097, 51.201454>,  <39.243233, 28.722595, 51.279701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.440834, 28.611097, 51.201454>,  <39.770168, 28.425266, 51.071045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.440834, 28.611097, 51.201454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117045, -0.701070, 0.703421,
		0.555360, 0.540990, 0.631590,
		-0.823332, 0.464577, 0.326026,
		39.193836, 28.750471, 51.299263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746105, 28.225473, 51.756096>,  <39.770168, 28.425266, 51.071045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.746105, 28.225473, 51.756096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.377098, 28.377302, 51.728119>,  <39.155693, 28.468399, 51.711334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.377098, 28.377302, 51.728119>,  <39.746105, 28.225473, 51.756096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377098, 28.377302, 51.728119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299207, -0.588844, 0.750825,
		0.243805, 0.713575, 0.656787,
		-0.922515, 0.379570, -0.069944,
		39.100342, 28.491173, 51.707134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.578884, 28.533834, 52.437881>,  <39.746105, 28.225473, 51.756096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.578884, 28.533834, 52.437881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.233616, 28.454100, 52.252323>,  <39.026455, 28.406258, 52.140987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.233616, 28.454100, 52.252323>,  <39.578884, 28.533834, 52.437881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233616, 28.454100, 52.252323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278036, -0.579258, 0.766261,
		-0.421458, 0.790395, 0.444577,
		-0.863174, -0.199338, -0.463891,
		38.974663, 28.394299, 52.113155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.108826, 28.422907, 52.988407>,  <39.578884, 28.533834, 52.437881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.108826, 28.422907, 52.988407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.912121, 28.301163, 52.662086>,  <38.794098, 28.228117, 52.466293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.912121, 28.301163, 52.662086>,  <39.108826, 28.422907, 52.988407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.912121, 28.301163, 52.662086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541830, -0.626458, 0.560331,
		-0.681609, 0.717576, 0.143157,
		-0.491762, -0.304360, -0.815803,
		38.764591, 28.209854, 52.417347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.390095, 28.439020, 53.165440>,  <39.108826, 28.422907, 52.988407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.390095, 28.439020, 53.165440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.464386, 28.168812, 52.880013>,  <38.508961, 28.006687, 52.708755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.464386, 28.168812, 52.880013>,  <38.390095, 28.439020, 53.165440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.464386, 28.168812, 52.880013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541043, -0.676507, 0.499611,
		-0.820230, 0.293277, -0.491134,
		0.185731, -0.675520, -0.713566,
		38.520107, 27.966156, 52.665943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.711792, 28.187944, 52.930168>,  <38.390095, 28.439020, 53.165440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.711792, 28.187944, 52.930168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.016525, 27.934397, 52.876762>,  <38.199364, 27.782269, 52.844719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.016525, 27.934397, 52.876762>,  <37.711792, 28.187944, 52.930168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016525, 27.934397, 52.876762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477070, -0.688449, 0.546298,
		-0.438198, -0.352491, -0.826881,
		0.761831, -0.633867, -0.133514,
		38.245075, 27.744236, 52.836708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.141491, 28.529062, 52.877483>,  <37.711792, 28.187944, 52.930168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.141491, 28.529062, 52.877483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.335304, 28.341194, 52.582287>,  <37.451591, 28.228474, 52.405167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.335304, 28.341194, 52.582287>,  <37.141491, 28.529062, 52.877483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335304, 28.341194, 52.582287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758308, -0.195076, 0.622024,
		-0.436111, -0.861020, 0.261633,
		0.484537, -0.469670, -0.737993,
		37.480667, 28.200293, 52.360889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900284, 28.817373, 53.500038>,  <37.141491, 28.529062, 52.877483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900284, 28.817373, 53.500038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.528927, 28.828033, 53.648296>,  <36.306114, 28.834431, 53.737251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.528927, 28.828033, 53.648296>,  <36.900284, 28.817373, 53.500038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.528927, 28.828033, 53.648296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360737, 0.174812, -0.916139,
		-0.089211, -0.984241, -0.152679,
		-0.928392, 0.026653, 0.370647,
		36.250408, 28.836029, 53.759491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477074, 28.414745, 53.086376>,  <36.900284, 28.817373, 53.500038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.477074, 28.414745, 53.086376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.247772, 28.685196, 53.271519>,  <36.110191, 28.847466, 53.382603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.247772, 28.685196, 53.271519>,  <36.477074, 28.414745, 53.086376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247772, 28.685196, 53.271519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272397, 0.375504, -0.885888,
		-0.772775, -0.633918, -0.031085,
		-0.573252, 0.676124, 0.462857,
		36.075798, 28.888033, 53.410378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904938, 28.379189, 52.715511>,  <36.477074, 28.414745, 53.086376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.904938, 28.379189, 52.715511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.895290, 28.730076, 52.907303>,  <35.889503, 28.940609, 53.022377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.895290, 28.730076, 52.907303>,  <35.904938, 28.379189, 52.715511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895290, 28.730076, 52.907303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075629, 0.476647, -0.875835,
		-0.996844, -0.057386, 0.054848,
		-0.024118, 0.877220, 0.479483,
		35.888054, 28.993242, 53.051147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581936, 28.677092, 52.274639>,  <35.904938, 28.379189, 52.715511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581936, 28.677092, 52.274639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.673798, 28.998762, 52.493931>,  <35.728916, 29.191765, 52.625507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.673798, 28.998762, 52.493931>,  <35.581936, 28.677092, 52.274639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.673798, 28.998762, 52.493931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123310, 0.582788, -0.803214,
		-0.965428, 0.116862, 0.233005,
		0.229658, 0.804177, 0.548230,
		35.742695, 29.240015, 52.658401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080349, 29.284519, 52.179478>,  <35.581936, 28.677092, 52.274639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080349, 29.284519, 52.179478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.422245, 29.459278, 52.291576>,  <35.627384, 29.564133, 52.358837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.422245, 29.459278, 52.291576>,  <35.080349, 29.284519, 52.179478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.422245, 29.459278, 52.291576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061676, 0.621582, -0.780917,
		-0.515377, 0.650198, 0.558238,
		0.854742, 0.436896, 0.280247,
		35.678669, 29.590347, 52.375652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.013760, 30.062548, 52.079769>,  <35.080349, 29.284519, 52.179478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.013760, 30.062548, 52.079769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.411476, 30.022701, 52.095024>,  <35.650108, 29.998793, 52.104176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.411476, 30.022701, 52.095024>,  <35.013760, 30.062548, 52.079769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411476, 30.022701, 52.095024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093430, 0.640870, -0.761943,
		0.051464, 0.761159, 0.646521,
		0.994295, -0.099617, 0.038133,
		35.709766, 29.992817, 52.106464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426498, 30.775446, 51.991993>,  <35.013760, 30.062548, 52.079769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426498, 30.775446, 51.991993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.688835, 30.500225, 51.867764>,  <35.846237, 30.335093, 51.793224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.688835, 30.500225, 51.867764>,  <35.426498, 30.775446, 51.991993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.688835, 30.500225, 51.867764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259258, 0.591685, -0.763345,
		0.708985, 0.420112, 0.566433,
		0.655840, -0.688052, -0.310578,
		35.885586, 30.293810, 51.774590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.995594, 31.260818, 51.759716>,  <35.426498, 30.775446, 51.991993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.995594, 31.260818, 51.759716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.079094, 30.894911, 51.621368>,  <36.129192, 30.675365, 51.538361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.079094, 30.894911, 51.621368>,  <35.995594, 31.260818, 51.759716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079094, 30.894911, 51.621368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460764, 0.403939, -0.790272,
		0.862624, 0.005604, 0.505814,
		0.208747, -0.914769, -0.345865,
		36.141720, 30.620480, 51.517609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669952, 31.359875, 51.453461>,  <35.995594, 31.260818, 51.759716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669952, 31.359875, 51.453461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.501320, 31.044516, 51.274261>,  <36.400139, 30.855301, 51.166744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.501320, 31.044516, 51.274261>,  <36.669952, 31.359875, 51.453461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501320, 31.044516, 51.274261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246861, 0.375599, -0.893300,
		0.872541, -0.487191, 0.036278,
		-0.421582, -0.788397, -0.447994,
		36.374844, 30.807997, 51.139862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.110985, 31.207464, 50.916672>,  <36.669952, 31.359875, 51.453461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.110985, 31.207464, 50.916672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.789051, 31.007500, 50.788712>,  <36.595890, 30.887520, 50.711937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.789051, 31.007500, 50.788712>,  <37.110985, 31.207464, 50.916672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.789051, 31.007500, 50.788712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165324, 0.328833, -0.929805,
		0.570016, -0.801221, -0.182007,
		-0.804829, -0.499913, -0.319901,
		36.547604, 30.857527, 50.692741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279140, 30.773434, 50.376663>,  <37.110985, 31.207464, 50.916672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279140, 30.773434, 50.376663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.888199, 30.850990, 50.342743>,  <36.653633, 30.897524, 50.322392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.888199, 30.850990, 50.342743>,  <37.279140, 30.773434, 50.376663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.888199, 30.850990, 50.342743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158951, 0.408002, -0.899037,
		-0.139716, -0.892154, -0.429581,
		-0.977350, 0.193893, -0.084804,
		36.594994, 30.909159, 50.317303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.260002, 30.535460, 49.667362>,  <37.279140, 30.773434, 50.376663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.260002, 30.535460, 49.667362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.922794, 30.724598, 49.769924>,  <36.720470, 30.838081, 49.831459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.922794, 30.724598, 49.769924>,  <37.260002, 30.535460, 49.667362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922794, 30.724598, 49.769924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021909, 0.446102, -0.894714,
		-0.537443, -0.759875, -0.365711,
		-0.843015, 0.472846, 0.256403,
		36.669891, 30.866451, 49.846844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879215, 30.608232, 49.054363>,  <37.260002, 30.535460, 49.667362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.879215, 30.608232, 49.054363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.720898, 30.880684, 49.300747>,  <36.625908, 31.044155, 49.448578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.720898, 30.880684, 49.300747>,  <36.879215, 30.608232, 49.054363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.720898, 30.880684, 49.300747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014242, 0.666101, -0.745726,
		-0.918229, -0.303925, -0.253938,
		-0.395793, 0.681131, 0.615962,
		36.602161, 31.085024, 49.485535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.226685, 30.848022, 48.686024>,  <36.879215, 30.608232, 49.054363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.226685, 30.848022, 48.686024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.379463, 31.093847, 48.962120>,  <36.471130, 31.241343, 49.127777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.379463, 31.093847, 48.962120>,  <36.226685, 30.848022, 48.686024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379463, 31.093847, 48.962120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061043, 0.728455, -0.682368,
		-0.922167, 0.302761, 0.240714,
		0.381944, 0.614564, 0.690239,
		36.494045, 31.278217, 49.169193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005371, 31.383972, 48.406494>,  <36.226685, 30.848022, 48.686024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005371, 31.383972, 48.406494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.252548, 31.525879, 48.687149>,  <36.400856, 31.611023, 48.855541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.252548, 31.525879, 48.687149>,  <36.005371, 31.383972, 48.406494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.252548, 31.525879, 48.687149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219474, 0.779098, -0.587229,
		-0.754969, 0.516864, 0.403576,
		0.617943, 0.354765, 0.701633,
		36.437931, 31.632309, 48.897640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.883087, 32.177795, 48.477386>,  <36.005371, 31.383972, 48.406494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.883087, 32.177795, 48.477386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.245274, 32.132713, 48.641056>,  <36.462585, 32.105663, 48.739258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.245274, 32.132713, 48.641056>,  <35.883087, 32.177795, 48.477386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.245274, 32.132713, 48.641056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237869, 0.933212, -0.269320,
		-0.351495, 0.341191, 0.871802,
		0.905467, -0.112710, 0.409178,
		36.516914, 32.098900, 48.763809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000023, 32.726208, 49.106087>,  <35.883087, 32.177795, 48.477386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000023, 32.726208, 49.106087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.354588, 32.639095, 48.942699>,  <36.567326, 32.586826, 48.844666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.354588, 32.639095, 48.942699>,  <36.000023, 32.726208, 49.106087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354588, 32.639095, 48.942699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102839, 0.953013, -0.284938,
		0.451333, 0.210565, 0.867157,
		0.886410, -0.217780, -0.408472,
		36.620510, 32.573761, 48.820156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.353535, 33.424965, 49.129032>,  <36.000023, 32.726208, 49.106087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.353535, 33.424965, 49.129032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.589317, 33.191013, 48.906158>,  <36.730785, 33.050640, 48.772434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.589317, 33.191013, 48.906158>,  <36.353535, 33.424965, 49.129032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.589317, 33.191013, 48.906158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175824, 0.766115, -0.618186,
		0.788435, 0.266426, 0.554426,
		0.589455, -0.584881, -0.557187,
		36.766155, 33.015549, 48.739002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996284, 33.766006, 48.999378>,  <36.353535, 33.424965, 49.129032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996284, 33.766006, 48.999378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.969151, 33.488281, 48.712791>,  <36.952869, 33.321644, 48.540840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.969151, 33.488281, 48.712791>,  <36.996284, 33.766006, 48.999378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969151, 33.488281, 48.712791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185312, 0.696855, -0.692858,
		0.980335, -0.179770, 0.081395,
		-0.067835, -0.694317, -0.716465,
		36.948799, 33.279987, 48.497852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584034, 33.985283, 48.396744>,  <36.996284, 33.766006, 48.999378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584034, 33.985283, 48.396744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.355991, 33.716938, 48.207043>,  <37.219166, 33.555931, 48.093220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.355991, 33.716938, 48.207043>,  <37.584034, 33.985283, 48.396744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355991, 33.716938, 48.207043> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158339, 0.476712, -0.864682,
		0.806169, -0.568053, -0.165552,
		-0.570106, -0.670866, -0.474256,
		37.184959, 33.515678, 48.064766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.049950, 30.627735, 36.122086> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.743294, 30.787527, 36.323154>,  <37.559299, 30.883402, 36.443794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.743294, 30.787527, 36.323154>,  <38.049950, 30.627735, 36.122086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743294, 30.787527, 36.323154> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386233, 0.912323, -0.135978,
		-0.512917, 0.089901, -0.853718,
		-0.766642, 0.399479, 0.502669,
		37.513302, 30.907372, 36.473957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783195, 31.185987, 35.795681>,  <38.049950, 30.627735, 36.122086>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.783195, 31.185987, 35.795681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.755375, 31.251707, 36.189262>,  <37.738682, 31.291138, 36.425411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.755375, 31.251707, 36.189262>,  <37.783195, 31.185987, 35.795681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755375, 31.251707, 36.189262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589023, 0.802815, -0.092417,
		-0.805118, 0.573145, -0.152610,
		-0.069549, 0.164297, 0.983956,
		37.734509, 31.300997, 36.484447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582729, 31.815928, 35.792469>,  <37.783195, 31.185987, 35.795681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582729, 31.815928, 35.792469> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.762154, 31.775999, 36.147732>,  <37.869808, 31.752041, 36.360889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.762154, 31.775999, 36.147732>,  <37.582729, 31.815928, 35.792469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762154, 31.775999, 36.147732> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592810, 0.776916, -0.212080,
		-0.668854, 0.621641, 0.407673,
		0.448565, -0.099822, 0.888158,
		37.896725, 31.746052, 36.414181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453705, 32.439884, 36.119904>,  <37.582729, 31.815928, 35.792469>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.453705, 32.439884, 36.119904> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.775753, 32.268524, 36.283981>,  <37.968983, 32.165710, 36.382427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.775753, 32.268524, 36.283981>,  <37.453705, 32.439884, 36.119904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775753, 32.268524, 36.283981> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509955, 0.853148, -0.109925,
		-0.302864, 0.297683, 0.905350,
		0.805121, -0.428396, 0.410193,
		38.017288, 32.140007, 36.407040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695324, 32.987797, 36.434761>,  <37.453705, 32.439884, 36.119904>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695324, 32.987797, 36.434761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.002323, 32.731457, 36.441074>,  <38.186523, 32.577652, 36.444862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.002323, 32.731457, 36.441074>,  <37.695324, 32.987797, 36.434761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002323, 32.731457, 36.441074> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602121, 0.712228, -0.360808,
		0.219982, 0.286425, 0.932507,
		0.767501, -0.640853, 0.015785,
		38.232574, 32.539200, 36.445808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225769, 33.317223, 36.748001>,  <37.695324, 32.987797, 36.434761>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.225769, 33.317223, 36.748001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.437180, 33.036678, 36.556686>,  <38.564026, 32.868351, 36.441898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.437180, 33.036678, 36.556686>,  <38.225769, 33.317223, 36.748001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.437180, 33.036678, 36.556686> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753077, 0.647414, -0.117180,
		0.391834, -0.298253, 0.870351,
		0.528528, -0.701356, -0.478287,
		38.595737, 32.826271, 36.413200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873459, 33.469494, 36.904728>,  <38.225769, 33.317223, 36.748001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873459, 33.469494, 36.904728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.963177, 33.163979, 36.662628>,  <39.017006, 32.980671, 36.517368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.963177, 33.163979, 36.662628>,  <38.873459, 33.469494, 36.904728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.963177, 33.163979, 36.662628> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916622, 0.376232, -0.135103,
		0.330902, -0.524479, 0.784491,
		0.224292, -0.763787, -0.605245,
		39.030464, 32.934841, 36.481056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536167, 33.089138, 37.108242>,  <38.873459, 33.469494, 36.904728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.536167, 33.089138, 37.108242> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.462349, 33.069183, 36.715618>,  <39.418056, 33.057213, 36.480045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.462349, 33.069183, 36.715618>,  <39.536167, 33.089138, 37.108242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.462349, 33.069183, 36.715618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911630, 0.364501, -0.189922,
		0.367252, -0.929866, -0.021798,
		-0.184547, -0.049878, -0.981557,
		39.406986, 33.054218, 36.421150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.138050, 32.794060, 36.787132>,  <39.536167, 33.089138, 37.108242>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.138050, 32.794060, 36.787132> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.938648, 32.976173, 36.492050>,  <39.819008, 33.085442, 36.315002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.938648, 32.976173, 36.492050>,  <40.138050, 32.794060, 36.787132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.938648, 32.976173, 36.492050> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853015, 0.409253, -0.323847,
		0.154466, -0.790713, -0.592379,
		-0.498503, 0.455285, -0.737706,
		39.789097, 33.112759, 36.270737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.632042, 32.871563, 36.139908>,  <40.138050, 32.794060, 36.787132>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.632042, 32.871563, 36.139908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.344021, 33.139549, 36.067596>,  <40.171207, 33.300339, 36.024208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.344021, 33.139549, 36.067596>,  <40.632042, 32.871563, 36.139908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.344021, 33.139549, 36.067596> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674712, 0.615059, -0.408004,
		-0.162157, -0.415757, -0.894903,
		-0.720048, 0.669962, -0.180780,
		40.128006, 33.340538, 36.013363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.752476, 33.126217, 35.476772>,  <40.632042, 32.871563, 36.139908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.752476, 33.126217, 35.476772> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.541271, 33.415779, 35.654388>,  <40.414551, 33.589516, 35.760956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.541271, 33.415779, 35.654388>,  <40.752476, 33.126217, 35.476772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.541271, 33.415779, 35.654388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635324, 0.683670, -0.359109,
		-0.563536, 0.092495, -0.820897,
		-0.528007, 0.723906, 0.444037,
		40.382870, 33.632950, 35.787598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.706394, 33.722630, 34.978909>,  <40.752476, 33.126217, 35.476772>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.706394, 33.722630, 34.978909> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.647652, 33.887127, 35.338757>,  <40.612408, 33.985825, 35.554665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.647652, 33.887127, 35.338757>,  <40.706394, 33.722630, 34.978909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.647652, 33.887127, 35.338757> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606016, 0.756211, -0.246757,
		-0.781779, 0.508946, -0.360273,
		-0.146856, 0.411240, 0.899619,
		40.603596, 34.010498, 35.608643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.665077, 34.436234, 34.758640>,  <40.706394, 33.722630, 34.978909>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.665077, 34.436234, 34.758640> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.704407, 34.433861, 35.156696>,  <40.728004, 34.432438, 35.395531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.704407, 34.433861, 35.156696>,  <40.665077, 34.436234, 34.758640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.704407, 34.433861, 35.156696> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687601, 0.723295, -0.063631,
		-0.719400, 0.690513, 0.075195,
		0.098326, -0.005928, 0.995137,
		40.733906, 34.432083, 35.455238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.693604, 35.131069, 34.880463>,  <40.665077, 34.436234, 34.758640>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.693604, 35.131069, 34.880463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.836414, 34.971355, 35.218243>,  <40.922100, 34.875526, 35.420910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.836414, 34.971355, 35.218243>,  <40.693604, 35.131069, 34.880463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.836414, 34.971355, 35.218243> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737679, 0.675112, 0.007330,
		-0.573027, 0.620318, 0.535580,
		0.357029, -0.399286, 0.844453,
		40.943523, 34.851570, 35.471577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.760880, 35.602631, 35.522652>,  <40.693604, 35.131069, 34.880463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.760880, 35.602631, 35.522652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.019226, 35.298756, 35.552940>,  <41.174232, 35.116432, 35.571114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.019226, 35.298756, 35.552940>,  <40.760880, 35.602631, 35.522652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.019226, 35.298756, 35.552940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741269, 0.647744, 0.175923,
		-0.182695, -0.057492, 0.981487,
		0.645867, -0.759686, 0.075722,
		41.212986, 35.070850, 35.575657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.174728, 35.851162, 36.130188>,  <40.760880, 35.602631, 35.522652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.174728, 35.851162, 36.130188> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.389050, 35.556858, 35.964500>,  <41.517643, 35.380276, 35.865089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.389050, 35.556858, 35.964500>,  <41.174728, 35.851162, 36.130188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.389050, 35.556858, 35.964500> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837186, 0.399182, 0.373863,
		-0.109725, -0.547093, 0.829849,
		0.535799, -0.735760, -0.414218,
		41.549789, 35.336128, 35.840237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.612877, 35.649757, 36.577606>,  <41.174728, 35.851162, 36.130188>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.612877, 35.649757, 36.577606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.774670, 35.513329, 36.238178>,  <41.871746, 35.431473, 36.034523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.774670, 35.513329, 36.238178>,  <41.612877, 35.649757, 36.577606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.774670, 35.513329, 36.238178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837479, 0.510937, 0.193836,
		0.367453, -0.789060, 0.492303,
		0.404484, -0.341068, -0.848566,
		41.896015, 35.411007, 35.983608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.321968, 35.695229, 36.768833>,  <41.612877, 35.649757, 36.577606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.321968, 35.695229, 36.768833> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.357075, 35.596893, 36.382702>,  <42.378139, 35.537891, 36.151024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.357075, 35.596893, 36.382702>,  <42.321968, 35.695229, 36.768833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.357075, 35.596893, 36.382702> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896412, 0.442130, -0.031096,
		0.434446, -0.862603, 0.259178,
		0.087767, -0.245840, -0.965329,
		42.383404, 35.523140, 36.093102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.994102, 35.280624, 36.678322>,  <42.321968, 35.695229, 36.768833>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.994102, 35.280624, 36.678322> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.864704, 35.502556, 36.371723>,  <42.787067, 35.635715, 36.187763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.864704, 35.502556, 36.371723>,  <42.994102, 35.280624, 36.678322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.864704, 35.502556, 36.371723> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847816, 0.529672, 0.025590,
		0.420189, -0.641569, -0.641740,
		-0.323494, 0.554830, -0.766495,
		42.767654, 35.669006, 36.141773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.518475, 35.430996, 36.254471>,  <42.994102, 35.280624, 36.678322>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.518475, 35.430996, 36.254471> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.289883, 35.698383, 36.064075>,  <43.152729, 35.858814, 35.949837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.289883, 35.698383, 36.064075>,  <43.518475, 35.430996, 36.254471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.289883, 35.698383, 36.064075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778211, 0.625513, -0.055873,
		0.260389, -0.402351, -0.877674,
		-0.571477, 0.668467, -0.475990,
		43.118439, 35.898922, 35.921280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.840115, 35.626163, 35.535011>,  <43.518475, 35.430996, 36.254471>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.840115, 35.626163, 35.535011> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.618340, 35.925575, 35.680508>,  <43.485275, 36.105221, 35.767807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.618340, 35.925575, 35.680508>,  <43.840115, 35.626163, 35.535011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.618340, 35.925575, 35.680508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791709, 0.609111, -0.046701,
		-0.256515, 0.262083, -0.930329,
		-0.554434, 0.748530, 0.363739,
		43.452011, 36.150135, 35.789631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.207355, 35.764706, 34.972134>,  <43.840115, 35.626163, 35.535011>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.207355, 35.764706, 34.972134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.572666, 35.610825, 34.918560>,  <44.791851, 35.518497, 34.886417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.572666, 35.610825, 34.918560>,  <44.207355, 35.764706, 34.972134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.572666, 35.610825, 34.918560> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406122, -0.885410, -0.226084,
		-0.031613, 0.260870, -0.964856,
		0.913272, -0.384702, -0.133936,
		44.846649, 35.495415, 34.878380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.269535, 35.509029, 34.326176>,  <44.207355, 35.764706, 34.972134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.269535, 35.509029, 34.326176> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.552326, 35.285278, 34.499275>,  <44.722000, 35.151028, 34.603134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.552326, 35.285278, 34.499275>,  <44.269535, 35.509029, 34.326176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.552326, 35.285278, 34.499275> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406621, -0.822145, -0.398419,
		0.578652, 0.105708, -0.808695,
		0.706981, -0.559378, 0.432752,
		44.764420, 35.117466, 34.629101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.435806, 34.996830, 33.863503>,  <44.269535, 35.509029, 34.326176>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.435806, 34.996830, 33.863503> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.555729, 34.855354, 34.217907>,  <44.627682, 34.770470, 34.430550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.555729, 34.855354, 34.217907>,  <44.435806, 34.996830, 33.863503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.555729, 34.855354, 34.217907> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395103, -0.891376, -0.222132,
		0.868336, -0.283469, -0.406987,
		0.299811, -0.353687, 0.886013,
		44.645672, 34.749249, 34.483711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.731251, 34.327183, 33.738419>,  <44.435806, 34.996830, 33.863503>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.731251, 34.327183, 33.738419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.635178, 34.290802, 34.125000>,  <44.577534, 34.268974, 34.356949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.635178, 34.290802, 34.125000>,  <44.731251, 34.327183, 33.738419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.635178, 34.290802, 34.125000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207956, -0.967666, -0.142746,
		0.948191, -0.235266, 0.213502,
		-0.240182, -0.090951, 0.966457,
		44.563122, 34.263515, 34.414936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.952938, 33.658840, 33.820999>,  <44.731251, 34.327183, 33.738419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.952938, 33.658840, 33.820999> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.703583, 33.748558, 34.120621>,  <44.553970, 33.802391, 34.300392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.703583, 33.748558, 34.120621>,  <44.952938, 33.658840, 33.820999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.703583, 33.748558, 34.120621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332896, -0.942949, 0.005311,
		0.707507, -0.246045, 0.662492,
		-0.623389, 0.224299, 0.749050,
		44.516567, 33.815849, 34.345337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.865547, 32.951366, 34.135536>,  <44.952938, 33.658840, 33.820999>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.865547, 32.951366, 34.135536> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.587082, 33.180119, 34.309116>,  <44.420002, 33.317371, 34.413265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.587082, 33.180119, 34.309116>,  <44.865547, 32.951366, 34.135536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.587082, 33.180119, 34.309116> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629492, -0.776881, 0.013958,
		0.345110, -0.263451, 0.900829,
		-0.696160, 0.571882, 0.433950,
		44.378235, 33.351685, 34.439301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.638672, 32.611729, 34.847076>,  <44.865547, 32.951366, 34.135536>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.638672, 32.611729, 34.847076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.343494, 32.840996, 34.704578>,  <44.166386, 32.978558, 34.619080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.343494, 32.840996, 34.704578>,  <44.638672, 32.611729, 34.847076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.343494, 32.840996, 34.704578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649581, -0.746400, 0.144678,
		-0.182973, 0.338173, 0.923125,
		-0.737947, 0.573172, -0.356242,
		44.122112, 33.012947, 34.597706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.070992, 32.620865, 35.332123>,  <44.638672, 32.611729, 34.847076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.070992, 32.620865, 35.332123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.903034, 32.785698, 35.008671>,  <43.802261, 32.884598, 34.814598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.903034, 32.785698, 35.008671>,  <44.070992, 32.620865, 35.332123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.903034, 32.785698, 35.008671> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849808, -0.491307, 0.190904,
		-0.318617, 0.767338, 0.556485,
		-0.419893, 0.412080, -0.808628,
		43.777065, 32.909321, 34.766083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.424160, 32.842056, 35.501446>,  <44.070992, 32.620865, 35.332123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.424160, 32.842056, 35.501446> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.404949, 32.822239, 35.102398>,  <43.393421, 32.810349, 34.862968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.404949, 32.822239, 35.102398>,  <43.424160, 32.842056, 35.501446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.404949, 32.822239, 35.102398> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948253, -0.311577, 0.061127,
		-0.313863, 0.948928, -0.032018,
		-0.048029, -0.049547, -0.997616,
		43.390541, 32.807373, 34.803112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.894478, 33.293247, 35.217487>,  <43.424160, 32.842056, 35.501446>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.894478, 33.293247, 35.217487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.965305, 33.012665, 34.941341>,  <43.007801, 32.844315, 34.775654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.965305, 33.012665, 34.941341>,  <42.894478, 33.293247, 35.217487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.965305, 33.012665, 34.941341> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979460, -0.194342, -0.053748,
		-0.096466, 0.685704, -0.721459,
		0.177065, -0.701456, -0.690367,
		43.018425, 32.802227, 34.734230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.223423, 33.220497, 34.844994>,  <42.894478, 33.293247, 35.217487>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.223423, 33.220497, 34.844994> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.432793, 32.901173, 34.725853>,  <42.558414, 32.709576, 34.654369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.432793, 32.901173, 34.725853>,  <42.223423, 33.220497, 34.844994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.432793, 32.901173, 34.725853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841707, -0.538795, -0.035064,
		-0.132489, 0.269058, -0.953968,
		0.523427, -0.798316, -0.297852,
		42.589821, 32.661678, 34.636497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.880909, 32.993954, 34.375252>,  <42.223423, 33.220497, 34.844994>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.880909, 32.993954, 34.375252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.112694, 32.680531, 34.464924>,  <42.251766, 32.492477, 34.518726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.112694, 32.680531, 34.464924>,  <41.880909, 32.993954, 34.375252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.112694, 32.680531, 34.464924> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798464, -0.600934, -0.036510,
		0.163324, -0.157842, -0.973864,
		0.579465, -0.783559, 0.224178,
		42.286533, 32.445461, 34.532177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.814651, 32.530998, 33.872360>,  <41.880909, 32.993954, 34.375252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.814651, 32.530998, 33.872360> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.952545, 32.310497, 34.176277>,  <42.035282, 32.178196, 34.358627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.952545, 32.310497, 34.176277>,  <41.814651, 32.530998, 33.872360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.952545, 32.310497, 34.176277> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721930, -0.673035, -0.160748,
		0.599977, -0.493098, -0.629986,
		0.344738, -0.551250, 0.759788,
		42.055965, 32.145123, 34.404213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.858959, 31.813917, 33.581345>,  <41.814651, 32.530998, 33.872360>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.858959, 31.813917, 33.581345> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.827564, 31.806744, 33.980045>,  <41.808727, 31.802441, 34.219265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.827564, 31.806744, 33.980045>,  <41.858959, 31.813917, 33.581345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.827564, 31.806744, 33.980045> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655682, -0.752220, -0.065162,
		0.750947, -0.658668, 0.047280,
		-0.078485, -0.017933, 0.996754,
		41.804020, 31.801363, 34.279072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.612270, 31.113262, 33.701385>,  <41.858959, 31.813917, 33.581345>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.612270, 31.113262, 33.701385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.546429, 31.321648, 34.036407>,  <41.506924, 31.446678, 34.237423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.546429, 31.321648, 34.036407>,  <41.612270, 31.113262, 33.701385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.546429, 31.321648, 34.036407> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833661, -0.527316, 0.164156,
		0.527177, -0.671219, 0.521104,
		-0.164601, 0.520963, 0.837558,
		41.497047, 31.477936, 34.287674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.532860, 30.680454, 34.195927>,  <41.612270, 31.113262, 33.701385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.532860, 30.680454, 34.195927> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.328949, 31.005949, 34.307613>,  <41.206604, 31.201246, 34.374626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.328949, 31.005949, 34.307613>,  <41.532860, 30.680454, 34.195927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.328949, 31.005949, 34.307613> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812736, -0.561946, 0.153875,
		0.282119, -0.148488, 0.947819,
		-0.509774, 0.813737, 0.279217,
		41.176018, 31.250071, 34.391380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.140587, 30.496641, 34.845730>,  <41.532860, 30.680454, 34.195927>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.140587, 30.496641, 34.845730> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.952026, 30.812294, 34.688221>,  <40.838890, 31.001686, 34.593716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.952026, 30.812294, 34.688221>,  <41.140587, 30.496641, 34.845730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.952026, 30.812294, 34.688221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877808, -0.462905, 0.123178,
		-0.085076, 0.403723, 0.910917,
		-0.471397, 0.789131, -0.393773,
		40.810608, 31.049034, 34.570087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.569519, 30.522739, 35.267639>,  <41.140587, 30.496641, 34.845730>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.569519, 30.522739, 35.267639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.469139, 30.762310, 34.963451>,  <40.408913, 30.906052, 34.780937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.469139, 30.762310, 34.963451>,  <40.569519, 30.522739, 35.267639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.469139, 30.762310, 34.963451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944212, -0.324546, 0.055978,
		-0.213280, 0.732090, 0.646958,
		-0.250949, 0.598927, -0.760468,
		40.393856, 30.941988, 34.735310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.934883, 30.793249, 35.465347>,  <40.569519, 30.522739, 35.267639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.934883, 30.793249, 35.465347> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.968254, 30.866875, 35.073601>,  <39.988277, 30.911051, 34.838554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.968254, 30.866875, 35.073601>,  <39.934883, 30.793249, 35.465347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.968254, 30.866875, 35.073601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983915, -0.140568, -0.110234,
		-0.157958, 0.972811, 0.169377,
		0.083428, 0.184065, -0.979367,
		39.993282, 30.922094, 34.779789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346626, 31.258606, 35.253933>,  <39.934883, 30.793249, 35.465347>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346626, 31.258606, 35.253933> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.471226, 31.020655, 34.957531>,  <39.545986, 30.877884, 34.779690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.471226, 31.020655, 34.957531>,  <39.346626, 31.258606, 35.253933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.471226, 31.020655, 34.957531> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928502, -0.356413, -0.104186,
		-0.202126, 0.720479, -0.663367,
		0.311497, -0.594878, -0.741006,
		39.564674, 30.842192, 34.735229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.813629, 31.263525, 34.868130>,  <39.346626, 31.258606, 35.253933>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.813629, 31.263525, 34.868130> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.018166, 30.933241, 34.772861>,  <39.140888, 30.735069, 34.715702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.018166, 30.933241, 34.772861>,  <38.813629, 31.263525, 34.868130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.018166, 30.933241, 34.772861> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841082, -0.537736, 0.058497,
		-0.176375, 0.170409, -0.969460,
		0.511345, -0.825712, -0.238171,
		39.171570, 30.685528, 34.701408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.496441, 34.378426, 43.994820> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.110054, 34.347939, 43.895954>,  <39.878220, 34.329647, 43.836636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.110054, 34.347939, 43.895954>,  <40.496441, 34.378426, 43.994820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.110054, 34.347939, 43.895954> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226501, 0.212128, -0.950631,
		0.124881, -0.974266, -0.187648,
		-0.965972, -0.076213, -0.247163,
		39.820263, 34.325073, 43.821804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.474075, 33.904366, 43.359741>,  <40.496441, 34.378426, 43.994820>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.474075, 33.904366, 43.359741> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131413, 34.109455, 43.382523>,  <39.925816, 34.232510, 43.396191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131413, 34.109455, 43.382523>,  <40.474075, 33.904366, 43.359741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.131413, 34.109455, 43.382523> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002009, 0.107085, -0.994248,
		-0.515876, -0.851848, -0.090706,
		-0.856661, 0.512726, 0.056954,
		39.874413, 34.263271, 43.399609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.146030, 33.783497, 42.734921>,  <40.474075, 33.904366, 43.359741>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.146030, 33.783497, 42.734921> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.913326, 34.080173, 42.868462>,  <39.773705, 34.258179, 42.948586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.913326, 34.080173, 42.868462>,  <40.146030, 33.783497, 42.734921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.913326, 34.080173, 42.868462> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135470, 0.316368, -0.938914,
		-0.802001, -0.591448, -0.083574,
		-0.581758, 0.741688, 0.333851,
		39.738800, 34.302681, 42.968616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.661774, 33.805882, 42.279602>,  <40.146030, 33.783497, 42.734921>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.661774, 33.805882, 42.279602> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648830, 34.171341, 42.441689>,  <39.641064, 34.390617, 42.538940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648830, 34.171341, 42.441689>,  <39.661774, 33.805882, 42.279602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.648830, 34.171341, 42.441689> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261185, 0.383610, -0.885791,
		-0.964746, -0.134502, 0.226217,
		-0.032362, 0.913648, 0.405217,
		39.639122, 34.445435, 42.563255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094662, 34.086384, 42.007679>,  <39.661774, 33.805882, 42.279602>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.094662, 34.086384, 42.007679> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340965, 34.381172, 42.119194>,  <39.488747, 34.558044, 42.186104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340965, 34.381172, 42.119194>,  <39.094662, 34.086384, 42.007679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340965, 34.381172, 42.119194> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171342, 0.470594, -0.865553,
		-0.769080, 0.485203, 0.416045,
		0.615758, 0.736966, 0.278789,
		39.525692, 34.602261, 42.202831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720005, 34.711414, 41.889996>,  <39.094662, 34.086384, 42.007679>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720005, 34.711414, 41.889996> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.096294, 34.844597, 41.915874>,  <39.322067, 34.924507, 41.931400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.096294, 34.844597, 41.915874>,  <38.720005, 34.711414, 41.889996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.096294, 34.844597, 41.915874> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071695, 0.381621, -0.921534,
		-0.331516, 0.862269, 0.382870,
		0.940721, 0.332953, 0.064693,
		39.378510, 34.944481, 41.935284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.754311, 35.490864, 41.807472>,  <38.720005, 34.711414, 41.889996>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.754311, 35.490864, 41.807472> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125603, 35.371109, 41.719143>,  <39.348377, 35.299255, 41.666145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125603, 35.371109, 41.719143>,  <38.754311, 35.490864, 41.807472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125603, 35.371109, 41.719143> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080326, 0.418295, -0.904753,
		0.363239, 0.857554, 0.364224,
		0.928227, -0.299385, -0.220825,
		39.404072, 35.281292, 41.652897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103100, 36.088341, 41.436092>,  <38.754311, 35.490864, 41.807472>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.103100, 36.088341, 41.436092> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305786, 35.757401, 41.339161>,  <39.427399, 35.558834, 41.281002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305786, 35.757401, 41.339161>,  <39.103100, 36.088341, 41.436092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305786, 35.757401, 41.339161> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126028, 0.349157, -0.928551,
		0.852852, 0.439971, 0.281193,
		0.506716, -0.827354, -0.242330,
		39.457802, 35.509193, 41.266460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.677017, 36.369370, 41.037731>,  <39.103100, 36.088341, 41.436092>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.677017, 36.369370, 41.037731> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615292, 35.982361, 40.957649>,  <39.578255, 35.750156, 40.909599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615292, 35.982361, 40.957649>,  <39.677017, 36.369370, 41.037731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.615292, 35.982361, 40.957649> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041582, 0.208810, -0.977072,
		0.987146, -0.142452, -0.072454,
		-0.154315, -0.967526, -0.200203,
		39.568996, 35.692104, 40.897587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.060822, 36.330513, 40.450665>,  <39.677017, 36.369370, 41.037731>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.060822, 36.330513, 40.450665> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876450, 35.975719, 40.439369>,  <39.765827, 35.762844, 40.432590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876450, 35.975719, 40.439369>,  <40.060822, 36.330513, 40.450665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.876450, 35.975719, 40.439369> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045285, 0.055289, -0.997443,
		0.886278, -0.458476, -0.065651,
		-0.460934, -0.886985, -0.028240,
		39.738171, 35.709625, 40.430897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.418350, 35.871574, 39.925961>,  <40.060822, 36.330513, 40.450665>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.418350, 35.871574, 39.925961> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.046715, 35.725845, 39.951450>,  <39.823734, 35.638409, 39.966743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.046715, 35.725845, 39.951450>,  <40.418350, 35.871574, 39.925961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.046715, 35.725845, 39.951450> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077334, 0.022879, -0.996743,
		0.361680, -0.930991, -0.049432,
		-0.929090, -0.364325, 0.063722,
		39.767986, 35.616547, 39.970566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.401276, 35.346600, 39.501595>,  <40.418350, 35.871574, 39.925961>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.401276, 35.346600, 39.501595> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.015724, 35.450787, 39.523834>,  <39.784393, 35.513298, 39.537178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.015724, 35.450787, 39.523834>,  <40.401276, 35.346600, 39.501595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.015724, 35.450787, 39.523834> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078287, -0.077548, -0.993910,
		-0.254567, -0.962364, 0.095138,
		-0.963881, 0.260465, 0.055599,
		39.726559, 35.528927, 39.540516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.067307, 35.356571, 39.397362>,  <40.401276, 35.346600, 39.501595>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.067307, 35.356571, 39.397362> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.309555, 35.096825, 39.581337>,  <41.454903, 34.940975, 39.691723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.309555, 35.096825, 39.581337>,  <41.067307, 35.356571, 39.397362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.309555, 35.096825, 39.581337> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702772, -0.707592, -0.073658,
		0.373281, -0.278624, -0.884890,
		0.605618, -0.649371, 0.459940,
		41.491241, 34.902012, 39.719318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.336243, 35.251858, 38.635670>,  <41.067307, 35.356571, 39.397362>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.336243, 35.251858, 38.635670> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.283566, 35.019733, 38.314198>,  <41.251957, 34.880459, 38.121315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.283566, 35.019733, 38.314198>,  <41.336243, 35.251858, 38.635670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.283566, 35.019733, 38.314198> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448266, -0.688246, 0.570416,
		-0.884145, 0.435384, -0.169492,
		-0.131698, -0.580309, -0.803678,
		41.244057, 34.845642, 38.073093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.573975, 35.051544, 38.570667>,  <41.336243, 35.251858, 38.635670>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.573975, 35.051544, 38.570667> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.838768, 34.794796, 38.415867>,  <40.997646, 34.640747, 38.322987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.838768, 34.794796, 38.415867>,  <40.573975, 35.051544, 38.570667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.838768, 34.794796, 38.415867> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482756, -0.760117, 0.434934,
		-0.573339, -0.101094, -0.813057,
		0.661988, -0.641873, -0.387001,
		41.037365, 34.602234, 38.299767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.201447, 34.508949, 38.312782>,  <40.573975, 35.051544, 38.570667>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.201447, 34.508949, 38.312782> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.564472, 34.347103, 38.357697>,  <40.782288, 34.249996, 38.384644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.564472, 34.347103, 38.357697>,  <40.201447, 34.508949, 38.312782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.564472, 34.347103, 38.357697> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415385, -0.825965, 0.381100,
		-0.061459, -0.392514, -0.917690,
		0.907567, -0.404617, 0.112281,
		40.836742, 34.225719, 38.391380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.056843, 33.849319, 38.155750>,  <40.201447, 34.508949, 38.312782>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.056843, 33.849319, 38.155750> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.418205, 33.838135, 38.326897>,  <40.635025, 33.831425, 38.429585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.418205, 33.838135, 38.326897>,  <40.056843, 33.849319, 38.155750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.418205, 33.838135, 38.326897> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243904, -0.854216, 0.459158,
		0.352648, -0.519166, -0.778528,
		0.903411, -0.027965, 0.427864,
		40.689228, 33.829746, 38.455257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.179905, 33.173347, 38.194115>,  <40.056843, 33.849319, 38.155750>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.179905, 33.173347, 38.194115> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.443058, 33.330517, 38.451115>,  <40.600948, 33.424816, 38.605316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.443058, 33.330517, 38.451115>,  <40.179905, 33.173347, 38.194115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.443058, 33.330517, 38.451115> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080972, -0.811269, 0.579039,
		0.748757, -0.432963, -0.501903,
		0.657881, 0.392919, 0.642501,
		40.640423, 33.448391, 38.643864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.570492, 32.626179, 38.456284>,  <40.179905, 33.173347, 38.194115>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.570492, 32.626179, 38.456284> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.623306, 32.924091, 38.717930>,  <40.654995, 33.102840, 38.874916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.623306, 32.924091, 38.717930>,  <40.570492, 32.626179, 38.456284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.623306, 32.924091, 38.717930> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102916, -0.646023, 0.756348,
		0.985888, -0.167185, -0.008649,
		0.132037, 0.744784, 0.654112,
		40.662918, 33.147526, 38.914162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.115070, 32.440788, 38.918858>,  <40.570492, 32.626179, 38.456284>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.115070, 32.440788, 38.918858> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.872250, 32.679050, 39.129261>,  <40.726559, 32.822006, 39.255505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.872250, 32.679050, 39.129261>,  <41.115070, 32.440788, 38.918858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.872250, 32.679050, 39.129261> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049204, -0.632484, 0.773009,
		0.793140, 0.495135, 0.354640,
		-0.607048, 0.595655, 0.526011,
		40.690136, 32.857746, 39.287064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.368973, 32.377064, 39.519123>,  <41.115070, 32.440788, 38.918858>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.368973, 32.377064, 39.519123> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.003613, 32.516983, 39.602390>,  <40.784397, 32.600933, 39.652351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.003613, 32.516983, 39.602390>,  <41.368973, 32.377064, 39.519123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.003613, 32.516983, 39.602390> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011579, -0.488866, 0.872282,
		0.406888, 0.799157, 0.442483,
		-0.913405, 0.349797, 0.208167,
		40.729591, 32.621922, 39.664841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.416302, 32.586163, 40.250641>,  <41.368973, 32.377064, 39.519123>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.416302, 32.586163, 40.250641> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.027630, 32.547073, 40.164585>,  <40.794426, 32.523621, 40.112949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.027630, 32.547073, 40.164585>,  <41.416302, 32.586163, 40.250641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.027630, 32.547073, 40.164585> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155087, -0.423203, 0.892663,
		-0.178282, 0.900749, 0.396063,
		-0.971681, -0.097721, -0.215144,
		40.736126, 32.517757, 40.100040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.124329, 32.679092, 40.831051>,  <41.416302, 32.586163, 40.250641>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.124329, 32.679092, 40.831051> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.837696, 32.496700, 40.619919>,  <40.665718, 32.387264, 40.493240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.837696, 32.496700, 40.619919>,  <41.124329, 32.679092, 40.831051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.837696, 32.496700, 40.619919> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275032, -0.510712, 0.814574,
		-0.640996, 0.728874, 0.240556,
		-0.716577, -0.455978, -0.527828,
		40.622723, 32.359905, 40.461571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.492077, 32.769089, 41.110367>,  <41.124329, 32.679092, 40.831051>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.492077, 32.769089, 41.110367> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.455227, 32.429115, 40.902859>,  <40.433117, 32.225132, 40.778355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.455227, 32.429115, 40.902859>,  <40.492077, 32.769089, 41.110367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.455227, 32.429115, 40.902859> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076469, -0.513405, 0.854732,
		-0.992807, 0.118412, -0.017696,
		-0.092125, -0.849937, -0.518767,
		40.427589, 32.174133, 40.747227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.849056, 32.519535, 41.371758>,  <40.492077, 32.769089, 41.110367>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.849056, 32.519535, 41.371758> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.000484, 32.200840, 41.183331>,  <40.091339, 32.009624, 41.070274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.000484, 32.200840, 41.183331>,  <39.849056, 32.519535, 41.371758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.000484, 32.200840, 41.183331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243741, -0.576795, 0.779678,
		-0.892904, -0.180342, -0.412552,
		0.378567, -0.796733, -0.471066,
		40.114056, 31.961821, 41.042011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.345016, 32.018063, 41.392662>,  <39.849056, 32.519535, 41.371758>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.345016, 32.018063, 41.392662> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691246, 31.823549, 41.344830>,  <39.898983, 31.706841, 41.316132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691246, 31.823549, 41.344830>,  <39.345016, 32.018063, 41.392662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.691246, 31.823549, 41.344830> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173507, -0.515227, 0.839307,
		-0.469751, -0.705741, -0.530344,
		0.865581, -0.486283, -0.119577,
		39.950920, 31.677664, 41.308956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227207, 31.371511, 41.720985>,  <39.345016, 32.018063, 41.392662>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227207, 31.371511, 41.720985> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624470, 31.347364, 41.680984>,  <39.862827, 31.332876, 41.656982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624470, 31.347364, 41.680984>,  <39.227207, 31.371511, 41.720985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.624470, 31.347364, 41.680984> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054354, -0.518945, 0.853078,
		-0.103394, -0.852673, -0.512111,
		0.993154, -0.060368, -0.100002,
		39.922417, 31.329254, 41.650982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.447857, 30.616444, 41.893421>,  <39.227207, 31.371511, 41.720985>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.447857, 30.616444, 41.893421> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.769608, 30.849133, 41.941708>,  <39.962658, 30.988747, 41.970680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.769608, 30.849133, 41.941708>,  <39.447857, 30.616444, 41.893421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.769608, 30.849133, 41.941708> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203547, -0.460723, 0.863888,
		0.558162, -0.670321, -0.489004,
		0.804378, 0.581724, 0.120716,
		40.010921, 31.023649, 41.977924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155277, 30.112997, 41.422188>,  <39.447857, 30.616444, 41.893421>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155277, 30.112997, 41.422188> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769337, 30.066153, 41.516296>,  <38.537773, 30.038046, 41.572762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769337, 30.066153, 41.516296>,  <39.155277, 30.112997, 41.422188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.769337, 30.066153, 41.516296> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248130, 0.700925, -0.668682,
		-0.086596, -0.703555, -0.705345,
		-0.964849, -0.117112, 0.235270,
		38.479881, 30.031019, 41.586876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792267, 30.031698, 40.822788>,  <39.155277, 30.112997, 41.422188>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.792267, 30.031698, 40.822788> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492691, 30.140980, 41.064266>,  <38.312946, 30.206549, 41.209152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492691, 30.140980, 41.064266>,  <38.792267, 30.031698, 40.822788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.492691, 30.140980, 41.064266> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253301, 0.723825, -0.641807,
		-0.612316, -0.633591, -0.472897,
		-0.748938, 0.273203, 0.603699,
		38.268009, 30.222940, 41.245377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080627, 29.895782, 40.452385>,  <38.792267, 30.031698, 40.822788>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080627, 29.895782, 40.452385> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964359, 30.142839, 40.744694>,  <37.894600, 30.291073, 40.920078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964359, 30.142839, 40.744694>,  <38.080627, 29.895782, 40.452385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964359, 30.142839, 40.744694> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220885, 0.699804, -0.679326,
		-0.930979, -0.358876, -0.066984,
		-0.290669, 0.617642, 0.730773,
		37.877159, 30.328133, 40.963924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374950, 30.129091, 40.301655>,  <38.080627, 29.895782, 40.452385>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.374950, 30.129091, 40.301655> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553406, 30.406586, 40.527821>,  <37.660480, 30.573082, 40.663521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553406, 30.406586, 40.527821>,  <37.374950, 30.129091, 40.301655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553406, 30.406586, 40.527821> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223103, 0.698037, -0.680419,
		-0.866709, 0.177418, 0.466196,
		0.446141, 0.693735, 0.565412,
		37.687248, 30.614706, 40.697445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878151, 30.658983, 40.411625>,  <37.374950, 30.129091, 40.301655>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878151, 30.658983, 40.411625> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241932, 30.814625, 40.470272>,  <37.460201, 30.908009, 40.505463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241932, 30.814625, 40.470272>,  <36.878151, 30.658983, 40.411625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.241932, 30.814625, 40.470272> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221298, 0.751459, -0.621560,
		-0.352030, 0.532832, 0.769523,
		0.909452, 0.389102, 0.146622,
		37.514767, 30.931355, 40.514259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763771, 31.375269, 40.157101>,  <36.878151, 30.658983, 40.411625>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763771, 31.375269, 40.157101> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160896, 31.388424, 40.203140>,  <37.399170, 31.396317, 40.230762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160896, 31.388424, 40.203140>,  <36.763771, 31.375269, 40.157101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160896, 31.388424, 40.203140> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059545, 0.698426, -0.713201,
		-0.103841, 0.714927, 0.691446,
		0.992810, 0.032887, 0.115095,
		37.458740, 31.398291, 40.237667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.944214, 32.056137, 40.420223>,  <36.763771, 31.375269, 40.157101>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.944214, 32.056137, 40.420223> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239052, 31.868103, 40.226021>,  <37.415955, 31.755283, 40.109501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239052, 31.868103, 40.226021>,  <36.944214, 32.056137, 40.420223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.239052, 31.868103, 40.226021> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003159, 0.716021, -0.698072,
		0.675781, 0.516079, 0.526291,
		0.737096, -0.470081, -0.485503,
		37.460182, 31.727079, 40.080368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387184, 32.561852, 40.372253>,  <36.944214, 32.056137, 40.420223>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387184, 32.561852, 40.372253> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487930, 32.304752, 40.082855>,  <37.548378, 32.150494, 39.909218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487930, 32.304752, 40.082855>,  <37.387184, 32.561852, 40.372253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.487930, 32.304752, 40.082855> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062973, 0.756895, -0.650495,
		0.965711, 0.118276, 0.231110,
		0.251864, -0.642744, -0.723494,
		37.563488, 32.111931, 39.865807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810349, 32.897224, 40.031727>,  <37.387184, 32.561852, 40.372253>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810349, 32.897224, 40.031727> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692078, 32.615822, 39.773220>,  <37.621113, 32.446980, 39.618118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692078, 32.615822, 39.773220>,  <37.810349, 32.897224, 40.031727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692078, 32.615822, 39.773220> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114270, 0.697701, -0.707217,
		0.948427, -0.135263, -0.286687,
		-0.295682, -0.703503, -0.646262,
		37.603374, 32.404770, 39.579342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158791, 33.099373, 39.482433>,  <37.810349, 32.897224, 40.031727>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.158791, 33.099373, 39.482433> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866787, 32.851246, 39.367687>,  <37.691586, 32.702370, 39.298840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866787, 32.851246, 39.367687>,  <38.158791, 33.099373, 39.482433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.866787, 32.851246, 39.367687> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156947, 0.560676, -0.813025,
		0.665175, -0.548491, -0.506655,
		-0.730006, -0.620322, -0.286864,
		37.647785, 32.665150, 39.281628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.272057, 33.177372, 38.790230>,  <38.158791, 33.099373, 39.482433>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.272057, 33.177372, 38.790230> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909424, 33.014118, 38.833191>,  <37.691845, 32.916164, 38.858967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909424, 33.014118, 38.833191>,  <38.272057, 33.177372, 38.790230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.909424, 33.014118, 38.833191> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311384, 0.475089, -0.823001,
		0.284870, -0.779561, -0.557793,
		-0.906581, -0.408136, 0.107405,
		37.637451, 32.891678, 38.865414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.215687, 32.811024, 38.077919>,  <38.272057, 33.177372, 38.790230>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.215687, 32.811024, 38.077919> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915665, 32.954823, 38.299976>,  <37.735653, 33.041103, 38.433212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915665, 32.954823, 38.299976>,  <38.215687, 32.811024, 38.077919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.915665, 32.954823, 38.299976> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403546, 0.416256, -0.814789,
		-0.523997, -0.835160, -0.167139,
		-0.750052, 0.359499, 0.555142,
		37.690647, 33.062672, 38.466518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.444084, 26.777882, 43.963333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.246735, 27.089365, 44.118355>,  <38.128326, 27.276255, 44.211369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.246735, 27.089365, 44.118355>,  <38.444084, 26.777882, 43.963333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.246735, 27.089365, 44.118355> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023382, 0.457270, -0.889021,
		-0.869503, -0.429557, -0.243813,
		-0.493373, 0.778707, 0.387553,
		38.098724, 27.322977, 44.234619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919079, 26.977682, 43.533112>,  <38.444084, 26.777882, 43.963333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.919079, 26.977682, 43.533112> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.980286, 27.318619, 43.733150>,  <38.017010, 27.523180, 43.853176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.980286, 27.318619, 43.733150>,  <37.919079, 26.977682, 43.533112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980286, 27.318619, 43.733150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069713, 0.495489, -0.865812,
		-0.985762, 0.167345, 0.016398,
		0.153014, 0.852342, 0.500100,
		38.026192, 27.574322, 43.883183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524990, 27.358763, 43.144638>,  <37.919079, 26.977682, 43.533112>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524990, 27.358763, 43.144638> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.780590, 27.591133, 43.346313>,  <37.933949, 27.730555, 43.467319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.780590, 27.591133, 43.346313>,  <37.524990, 27.358763, 43.144638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.780590, 27.591133, 43.346313> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060490, 0.615486, -0.785823,
		-0.766825, 0.532639, 0.358155,
		0.638999, 0.580924, 0.504190,
		37.972290, 27.765409, 43.497570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314899, 28.040792, 42.940372>,  <37.524990, 27.358763, 43.144638>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314899, 28.040792, 42.940372> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.668686, 28.124039, 43.107418>,  <37.880959, 28.173986, 43.207645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.668686, 28.124039, 43.107418>,  <37.314899, 28.040792, 42.940372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.668686, 28.124039, 43.107418> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109503, 0.777442, -0.619349,
		-0.453567, 0.593525, 0.664834,
		0.884470, 0.208114, 0.417615,
		37.934029, 28.186474, 43.232704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325459, 28.760572, 43.032795>,  <37.314899, 28.040792, 42.940372>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.325459, 28.760572, 43.032795> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.707695, 28.642897, 43.025955>,  <37.937038, 28.572292, 43.021851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.707695, 28.642897, 43.025955>,  <37.325459, 28.760572, 43.032795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.707695, 28.642897, 43.025955> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227894, 0.774558, -0.590021,
		0.186823, 0.559923, 0.807207,
		0.955595, -0.294187, -0.017102,
		37.994373, 28.554640, 43.020824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692181, 29.420303, 43.176510>,  <37.325459, 28.760572, 43.032795>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692181, 29.420303, 43.176510> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.959980, 29.175003, 43.008842>,  <38.120659, 29.027822, 42.908241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.959980, 29.175003, 43.008842>,  <37.692181, 29.420303, 43.176510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959980, 29.175003, 43.008842> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271312, 0.727186, -0.630548,
		0.691495, 0.308425, 0.653230,
		0.669496, -0.613250, -0.419166,
		38.160828, 28.991028, 42.883091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299744, 29.849113, 43.036797>,  <37.692181, 29.420303, 43.176510>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299744, 29.849113, 43.036797> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.364494, 29.545954, 42.784008>,  <38.403343, 29.364058, 42.632336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.364494, 29.545954, 42.784008>,  <38.299744, 29.849113, 43.036797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364494, 29.545954, 42.784008> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012826, 0.641977, -0.766617,
		0.986728, 0.115991, 0.113641,
		0.161876, -0.757900, -0.631969,
		38.413055, 29.318584, 42.594418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.965431, 29.895477, 42.665428>,  <38.299744, 29.849113, 43.036797>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.965431, 29.895477, 42.665428> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.739323, 29.662605, 42.431667>,  <38.603657, 29.522882, 42.291409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.739323, 29.662605, 42.431667>,  <38.965431, 29.895477, 42.665428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.739323, 29.662605, 42.431667> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045640, 0.685294, -0.726835,
		0.823639, -0.437534, -0.360809,
		-0.565275, -0.582182, -0.584404,
		38.569740, 29.487951, 42.256348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330711, 29.839497, 42.090633>,  <38.965431, 29.895477, 42.665428>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330711, 29.839497, 42.090633> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.943623, 29.781261, 42.008339>,  <38.711369, 29.746321, 41.958961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.943623, 29.781261, 42.008339>,  <39.330711, 29.839497, 42.090633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.943623, 29.781261, 42.008339> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068812, 0.632658, -0.771368,
		0.242461, -0.760624, -0.602216,
		-0.967717, -0.145587, -0.205735,
		38.653309, 29.737585, 41.946617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.053131, 30.244991, 41.996964>,  <39.330711, 29.839497, 42.090633>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.053131, 30.244991, 41.996964> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.165009, 30.592886, 42.159611>,  <40.232136, 30.801622, 42.257198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.165009, 30.592886, 42.159611>,  <40.053131, 30.244991, 41.996964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.165009, 30.592886, 42.159611> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383999, -0.489504, 0.782899,
		0.879954, -0.062830, -0.470886,
		0.279690, 0.869735, 0.406614,
		40.248917, 30.853806, 42.281593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.756283, 30.225586, 42.082767>,  <40.053131, 30.244991, 41.996964>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.756283, 30.225586, 42.082767> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.638065, 30.499430, 42.349293>,  <40.567135, 30.663736, 42.509209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.638065, 30.499430, 42.349293>,  <40.756283, 30.225586, 42.082767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.638065, 30.499430, 42.349293> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454379, -0.512791, 0.728413,
		0.840354, 0.518032, -0.159521,
		-0.295541, 0.684608, 0.666309,
		40.549404, 30.704813, 42.549187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.262260, 30.372345, 42.460392>,  <40.756283, 30.225586, 42.082767>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.262260, 30.372345, 42.460392> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.956661, 30.485394, 42.692406>,  <40.773304, 30.553223, 42.831615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.956661, 30.485394, 42.692406>,  <41.262260, 30.372345, 42.460392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.956661, 30.485394, 42.692406> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439201, -0.430762, 0.788382,
		0.472670, 0.857071, 0.204972,
		-0.763994, 0.282620, 0.580034,
		40.727463, 30.570179, 42.866417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.587162, 30.459393, 43.005249>,  <41.262260, 30.372345, 42.460392>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.587162, 30.459393, 43.005249> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.210743, 30.477617, 43.139328>,  <40.984890, 30.488552, 43.219776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.210743, 30.477617, 43.139328>,  <41.587162, 30.459393, 43.005249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.210743, 30.477617, 43.139328> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300005, -0.345427, 0.889200,
		0.156298, 0.937339, 0.311395,
		-0.941046, 0.045560, 0.335196,
		40.928429, 30.491285, 43.239887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.649460, 30.740269, 43.666519>,  <41.587162, 30.459393, 43.005249>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.649460, 30.740269, 43.666519> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.300709, 30.544420, 43.662529>,  <41.091457, 30.426910, 43.660137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.300709, 30.544420, 43.662529>,  <41.649460, 30.740269, 43.666519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.300709, 30.544420, 43.662529> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201374, -0.377004, 0.904056,
		-0.446406, 0.786218, 0.427298,
		-0.871878, -0.489622, -0.009973,
		41.039146, 30.397533, 43.659538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.732121, 30.566582, 44.359245>,  <41.649460, 30.740269, 43.666519>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.732121, 30.566582, 44.359245> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.410393, 30.369497, 44.226398>,  <41.217354, 30.251245, 44.146690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.410393, 30.369497, 44.226398>,  <41.732121, 30.566582, 44.359245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.410393, 30.369497, 44.226398> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081135, -0.462631, 0.882831,
		-0.588630, 0.737026, 0.332128,
		-0.804321, -0.492713, -0.332117,
		41.169098, 30.221684, 44.126762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.106949, 30.695404, 44.852169>,  <41.732121, 30.566582, 44.359245>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.106949, 30.695404, 44.852169> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.097328, 30.338152, 44.672504>,  <41.091557, 30.123800, 44.564705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.097328, 30.338152, 44.672504>,  <41.106949, 30.695404, 44.852169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.097328, 30.338152, 44.672504> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095373, -0.445189, 0.890343,
		-0.995151, 0.064254, -0.074472,
		-0.024054, -0.893128, -0.449159,
		41.090111, 30.070213, 44.537758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.564522, 30.406317, 45.100498>,  <41.106949, 30.695404, 44.852169>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.564522, 30.406317, 45.100498> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.777744, 30.090424, 44.979057>,  <40.905678, 29.900888, 44.906193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.777744, 30.090424, 44.979057>,  <40.564522, 30.406317, 45.100498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.777744, 30.090424, 44.979057> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132425, -0.432285, 0.891960,
		-0.835651, -0.435263, -0.335013,
		0.533058, -0.789732, -0.303600,
		40.937660, 29.853504, 44.887978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.079304, 29.690582, 45.178005>,  <40.564522, 30.406317, 45.100498>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.079304, 29.690582, 45.178005> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.466499, 29.590546, 45.169598>,  <40.698818, 29.530523, 45.164555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.466499, 29.590546, 45.169598>,  <40.079304, 29.690582, 45.178005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.466499, 29.590546, 45.169598> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143369, -0.619759, 0.771585,
		-0.205994, -0.743876, -0.635778,
		0.967993, -0.250093, -0.021017,
		40.756897, 29.515518, 45.163292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.948032, 28.959351, 45.325119>,  <40.079304, 29.690582, 45.178005>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.948032, 28.959351, 45.325119> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.334755, 29.048580, 45.374950>,  <40.566788, 29.102118, 45.404850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.334755, 29.048580, 45.374950>,  <39.948032, 28.959351, 45.325119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.334755, 29.048580, 45.374950> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055353, -0.658869, 0.750219,
		0.249438, -0.718421, -0.649347,
		0.966807, 0.223076, 0.124580,
		40.624798, 29.115503, 45.412323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.425186, 28.353178, 45.447765>,  <39.948032, 28.959351, 45.325119>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.425186, 28.353178, 45.447765> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.658619, 28.628691, 45.619816>,  <40.798679, 28.793999, 45.723045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.658619, 28.628691, 45.619816>,  <40.425186, 28.353178, 45.447765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.658619, 28.628691, 45.619816> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115209, -0.594548, 0.795764,
		0.803840, -0.414839, -0.426322,
		0.583583, 0.688783, 0.430128,
		40.833694, 28.835325, 45.748856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.212513, 28.107203, 45.559196>,  <40.425186, 28.353178, 45.447765>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.212513, 28.107203, 45.559196> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.146225, 28.398535, 45.825150>,  <41.106453, 28.573334, 45.984722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.146225, 28.398535, 45.825150>,  <41.212513, 28.107203, 45.559196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.146225, 28.398535, 45.825150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210093, -0.632654, 0.745392,
		0.963535, 0.263211, -0.048176,
		-0.165716, 0.728333, 0.664883,
		41.096512, 28.617035, 46.024616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.577198, 27.899630, 46.091202>,  <41.212513, 28.107203, 45.559196>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.577198, 27.899630, 46.091202> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.382675, 28.200954, 46.268303>,  <41.265961, 28.381748, 46.374565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.382675, 28.200954, 46.268303>,  <41.577198, 27.899630, 46.091202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.382675, 28.200954, 46.268303> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023023, -0.517577, 0.855327,
		0.873487, 0.405754, 0.269042,
		-0.486303, 0.753311, 0.442755,
		41.236786, 28.426949, 46.401131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.926300, 27.982000, 46.655750>,  <41.577198, 27.899630, 46.091202>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.926300, 27.982000, 46.655750> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.559906, 28.118563, 46.740047>,  <41.340069, 28.200500, 46.790627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.559906, 28.118563, 46.740047>,  <41.926300, 27.982000, 46.655750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.559906, 28.118563, 46.740047> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000850, -0.523624, 0.851949,
		0.401211, 0.780552, 0.479342,
		-0.915985, 0.341404, 0.210747,
		41.285110, 28.220984, 46.803272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.201622, 31.923275, 48.781593> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.387325, 31.673988, 48.529858>,  <33.498745, 31.524416, 48.378815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.387325, 31.673988, 48.529858>,  <33.201622, 31.923275, 48.781593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.387325, 31.673988, 48.529858> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182473, 0.628010, -0.756510,
		0.866701, 0.466051, 0.177837,
		0.464256, -0.623217, -0.629338,
		33.526604, 31.487022, 48.341057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726231, 32.377636, 48.381256>,  <33.201622, 31.923275, 48.781593>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726231, 32.377636, 48.381256> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.654404, 32.050636, 48.162365>,  <33.611305, 31.854437, 48.031033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.654404, 32.050636, 48.162365>,  <33.726231, 32.377636, 48.381256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.654404, 32.050636, 48.162365> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085513, 0.541190, -0.836541,
		0.980022, -0.197012, -0.027275,
		-0.179570, -0.817496, -0.547225,
		33.600533, 31.805387, 47.998196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.188087, 32.409245, 47.905270>,  <33.726231, 32.377636, 48.381256>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.188087, 32.409245, 47.905270> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.941410, 32.138554, 47.744408>,  <33.793404, 31.976139, 47.647892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.941410, 32.138554, 47.744408>,  <34.188087, 32.409245, 47.905270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.941410, 32.138554, 47.744408> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202004, 0.357717, -0.911720,
		0.760845, -0.643488, -0.083899,
		-0.616693, -0.676729, -0.402154,
		33.756401, 31.935535, 47.623760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.536934, 32.038303, 47.394173>,  <34.188087, 32.409245, 47.905270>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.536934, 32.038303, 47.394173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.149193, 32.023556, 47.297012>,  <33.916550, 32.014706, 47.238716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.149193, 32.023556, 47.297012>,  <34.536934, 32.038303, 47.394173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.149193, 32.023556, 47.297012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214940, 0.351627, -0.911131,
		0.119005, -0.935414, -0.332925,
		-0.969349, -0.036870, -0.242903,
		33.858387, 32.012493, 47.224140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.552563, 31.620913, 46.863209>,  <34.536934, 32.038303, 47.394173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.552563, 31.620913, 46.863209> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.197063, 31.802528, 46.837994>,  <33.983765, 31.911497, 46.822865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.197063, 31.802528, 46.837994>,  <34.552563, 31.620913, 46.863209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.197063, 31.802528, 46.837994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175581, 0.210158, -0.961772,
		-0.423435, -0.865842, -0.266498,
		-0.888748, 0.454040, -0.063037,
		33.930439, 31.938740, 46.819084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.273884, 31.435673, 46.208851>,  <34.552563, 31.620913, 46.863209>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.273884, 31.435673, 46.208851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.072407, 31.759424, 46.329651>,  <33.951523, 31.953674, 46.402130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.072407, 31.759424, 46.329651>,  <34.273884, 31.435673, 46.208851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072407, 31.759424, 46.329651> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003839, 0.351676, -0.936114,
		-0.863877, -0.470350, -0.180242,
		-0.503688, 0.809379, 0.301999,
		33.921299, 32.002239, 46.420250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.725014, 31.532829, 45.666126>,  <34.273884, 31.435673, 46.208851>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.725014, 31.532829, 45.666126> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.767914, 31.891811, 45.837273>,  <33.793655, 32.107201, 45.939960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.767914, 31.891811, 45.837273>,  <33.725014, 31.532829, 45.666126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.767914, 31.891811, 45.837273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046000, 0.434368, -0.899560,
		-0.993167, 0.076795, 0.087868,
		0.107249, 0.897456, 0.427868,
		33.800087, 32.161049, 45.965633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202553, 31.894518, 45.279209>,  <33.725014, 31.532829, 45.666126>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202553, 31.894518, 45.279209> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.467834, 32.143322, 45.445713>,  <33.627003, 32.292603, 45.545616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.467834, 32.143322, 45.445713>,  <33.202553, 31.894518, 45.279209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.467834, 32.143322, 45.445713> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051540, 0.516891, -0.854498,
		-0.746666, 0.588157, 0.310744,
		0.663200, 0.622009, 0.416258,
		33.666794, 32.329926, 45.570591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.914856, 32.535583, 45.205299>,  <33.202553, 31.894518, 45.279209>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.914856, 32.535583, 45.205299> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.300953, 32.596680, 45.290127>,  <33.532612, 32.633335, 45.341022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.300953, 32.596680, 45.290127>,  <32.914856, 32.535583, 45.205299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.300953, 32.596680, 45.290127> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076734, 0.610061, -0.788630,
		-0.249832, 0.777494, 0.577137,
		0.965244, 0.152739, 0.212073,
		33.590527, 32.642502, 45.353748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.100452, 33.257271, 45.415268>,  <32.914856, 32.535583, 45.205299>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.100452, 33.257271, 45.415268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.452103, 33.116642, 45.286560>,  <33.663094, 33.032265, 45.209335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.452103, 33.116642, 45.286560>,  <33.100452, 33.257271, 45.415268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.452103, 33.116642, 45.286560> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081286, 0.775865, -0.625640,
		0.469612, 0.523859, 0.710659,
		0.879123, -0.351574, -0.321773,
		33.715839, 33.011169, 45.190029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.484463, 33.808811, 45.232384>,  <33.100452, 33.257271, 45.415268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.484463, 33.808811, 45.232384> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.687855, 33.508408, 45.063889>,  <33.809891, 33.328167, 44.962791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.687855, 33.508408, 45.063889>,  <33.484463, 33.808811, 45.232384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687855, 33.508408, 45.063889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104941, 0.539596, -0.835358,
		0.854658, 0.380555, 0.353183,
		0.508476, -0.751009, -0.421234,
		33.840397, 33.283104, 44.937519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.155338, 34.029694, 44.973858>,  <33.484463, 33.808811, 45.232384>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.155338, 34.029694, 44.973858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.065456, 33.723339, 44.732887>,  <34.011528, 33.539524, 44.588303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.065456, 33.723339, 44.732887>,  <34.155338, 34.029694, 44.973858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065456, 33.723339, 44.732887> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354429, 0.511652, -0.782683,
		0.907682, -0.389393, 0.156481,
		-0.224708, -0.765888, -0.602430,
		33.998043, 33.493572, 44.552158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679306, 33.879482, 44.653255>,  <34.155338, 34.029694, 44.973858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.679306, 33.879482, 44.653255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.380150, 33.765137, 44.413612>,  <34.200653, 33.696529, 44.269825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.380150, 33.765137, 44.413612>,  <34.679306, 33.879482, 44.653255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.380150, 33.765137, 44.413612> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379120, 0.556911, -0.738998,
		0.544904, -0.779829, -0.308135,
		-0.747896, -0.285863, -0.599112,
		34.155781, 33.679379, 44.233879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997620, 33.933205, 43.946556>,  <34.679306, 33.879482, 44.653255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.997620, 33.933205, 43.946556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.611423, 33.862614, 43.869942>,  <34.379707, 33.820259, 43.823975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.611423, 33.862614, 43.869942>,  <34.997620, 33.933205, 43.946556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611423, 33.862614, 43.869942> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024020, 0.671949, -0.740208,
		0.259331, -0.719264, -0.644521,
		-0.965490, -0.176477, -0.191534,
		34.321777, 33.809669, 43.812481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807228, 33.638565, 44.169857>,  <34.997620, 33.933205, 43.946556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807228, 33.638565, 44.169857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.919361, 34.022438, 44.161591>,  <35.986641, 34.252762, 44.156631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.919361, 34.022438, 44.161591>,  <35.807228, 33.638565, 44.169857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.919361, 34.022438, 44.161591> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634139, -0.168987, 0.754527,
		0.720613, -0.224621, -0.655944,
		0.280328, 0.959682, -0.020666,
		36.003460, 34.310341, 44.155392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.592056, 33.631454, 44.145107>,  <35.807228, 33.638565, 44.169857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.592056, 33.631454, 44.145107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.463848, 33.977367, 44.299725>,  <36.386921, 34.184914, 44.392494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.463848, 33.977367, 44.299725>,  <36.592056, 33.631454, 44.145107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.463848, 33.977367, 44.299725> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594196, -0.134243, 0.793039,
		0.737697, 0.483870, -0.470822,
		-0.320523, 0.864782, 0.386544,
		36.367691, 34.236801, 44.415688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150810, 33.819065, 44.662083>,  <36.592056, 33.631454, 44.145107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.150810, 33.819065, 44.662083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.836929, 34.046364, 44.761150>,  <36.648602, 34.182743, 44.820591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.836929, 34.046364, 44.761150>,  <37.150810, 33.819065, 44.662083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836929, 34.046364, 44.761150> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314764, 0.021072, 0.948936,
		0.534011, 0.822588, -0.195399,
		-0.784701, 0.568247, 0.247669,
		36.601521, 34.216839, 44.835449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477997, 34.372173, 45.014977>,  <37.150810, 33.819065, 44.662083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477997, 34.372173, 45.014977> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.090187, 34.349834, 45.110397>,  <36.857502, 34.336430, 45.167648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.090187, 34.349834, 45.110397>,  <37.477997, 34.372173, 45.014977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090187, 34.349834, 45.110397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242326, -0.075086, 0.967285,
		-0.036110, 0.995612, 0.086331,
		-0.969523, -0.055849, 0.238552,
		36.799332, 34.333080, 45.181961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436966, 34.721989, 45.654171>,  <37.477997, 34.372173, 45.014977>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.436966, 34.721989, 45.654171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.092632, 34.518593, 45.646214>,  <36.886032, 34.396557, 45.641438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.092632, 34.518593, 45.646214>,  <37.436966, 34.721989, 45.654171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092632, 34.518593, 45.646214> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085097, -0.182394, 0.979536,
		-0.501712, 0.841529, 0.200283,
		-0.860839, -0.508488, -0.019898,
		36.834381, 34.366047, 45.640244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103558, 35.037716, 46.144432>,  <37.436966, 34.721989, 45.654171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.103558, 35.037716, 46.144432> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.918793, 34.685177, 46.104713>,  <36.807934, 34.473652, 46.080883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.918793, 34.685177, 46.104713>,  <37.103558, 35.037716, 46.144432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918793, 34.685177, 46.104713> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074433, -0.073035, 0.994548,
		-0.883799, 0.466781, -0.031866,
		-0.461908, -0.881352, -0.099292,
		36.780220, 34.420773, 46.074924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.748108, 35.003300, 46.796215>,  <37.103558, 35.037716, 46.144432>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.748108, 35.003300, 46.796215> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.809383, 34.629269, 46.668362>,  <36.846149, 34.404850, 46.591648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.809383, 34.629269, 46.668362>,  <36.748108, 35.003300, 46.796215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.809383, 34.629269, 46.668362> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087964, -0.335074, 0.938077,
		-0.984274, -0.115589, -0.133583,
		0.153191, -0.935075, -0.319637,
		36.855339, 34.348747, 46.572472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343338, 34.606030, 47.151211>,  <36.748108, 35.003300, 46.796215>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343338, 34.606030, 47.151211> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.593967, 34.323383, 47.019695>,  <36.744347, 34.153797, 46.940784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.593967, 34.323383, 47.019695>,  <36.343338, 34.606030, 47.151211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.593967, 34.323383, 47.019695> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024140, -0.439263, 0.898034,
		-0.778987, -0.554749, -0.292289,
		0.626575, -0.706613, -0.328788,
		36.781940, 34.111401, 46.921059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.028919, 34.024384, 47.527874>,  <36.343338, 34.606030, 47.151211>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.028919, 34.024384, 47.527874> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.398140, 33.922482, 47.412582>,  <36.619671, 33.861340, 47.343407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.398140, 33.922482, 47.412582>,  <36.028919, 34.024384, 47.527874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.398140, 33.922482, 47.412582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051463, -0.660760, 0.748831,
		-0.381214, -0.706044, -0.596806,
		0.923053, -0.254751, -0.288226,
		36.675056, 33.846058, 47.326115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136555, 33.243023, 47.310692>,  <36.028919, 34.024384, 47.527874>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136555, 33.243023, 47.310692> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.504234, 33.363228, 47.412491>,  <36.724842, 33.435352, 47.473572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.504234, 33.363228, 47.412491>,  <36.136555, 33.243023, 47.310692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.504234, 33.363228, 47.412491> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080603, -0.776160, 0.625363,
		0.385461, -0.554318, -0.737666,
		0.919197, 0.300511, 0.254500,
		36.779995, 33.453381, 47.488842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441689, 32.691349, 47.389896>,  <36.136555, 33.243023, 47.310692>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441689, 32.691349, 47.389896> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.649254, 32.958523, 47.603287>,  <36.773792, 33.118828, 47.731319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.649254, 32.958523, 47.603287>,  <36.441689, 32.691349, 47.389896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649254, 32.958523, 47.603287> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011071, -0.629270, 0.777108,
		0.854756, -0.397344, -0.333930,
		0.518912, 0.667935, 0.533473,
		36.804928, 33.158905, 47.763329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066414, 32.453087, 47.508625>,  <36.441689, 32.691349, 47.389896>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066414, 32.453087, 47.508625> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.989746, 32.692978, 47.819389>,  <36.943745, 32.836914, 48.005848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.989746, 32.692978, 47.819389>,  <37.066414, 32.453087, 47.508625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989746, 32.692978, 47.819389> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152743, -0.763713, 0.627225,
		0.969501, 0.238887, 0.054776,
		-0.191669, 0.599729, 0.776909,
		36.932247, 32.872898, 48.052464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557266, 32.254288, 48.001652>,  <37.066414, 32.453087, 47.508625>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.557266, 32.254288, 48.001652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.295742, 32.465546, 48.218388>,  <37.138828, 32.592300, 48.348431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.295742, 32.465546, 48.218388>,  <37.557266, 32.254288, 48.001652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.295742, 32.465546, 48.218388> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061023, -0.750572, 0.657965,
		0.754192, 0.397121, 0.522962,
		-0.653812, 0.528145, 0.541842,
		37.099598, 32.623989, 48.380939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828243, 32.271275, 48.642391>,  <37.557266, 32.254288, 48.001652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.828243, 32.271275, 48.642391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.441952, 32.351765, 48.707977>,  <37.210178, 32.400059, 48.747330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.441952, 32.351765, 48.707977>,  <37.828243, 32.271275, 48.642391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.441952, 32.351765, 48.707977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072598, -0.815866, 0.573666,
		0.249205, 0.542101, 0.802511,
		-0.965726, 0.201221, 0.163962,
		37.152233, 32.412132, 48.757164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489124, 32.232063, 49.029922>,  <37.828243, 32.271275, 48.642391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489124, 32.232063, 49.029922> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.770767, 31.989988, 48.881336>,  <38.939751, 31.844744, 48.792187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.770767, 31.989988, 48.881336>,  <38.489124, 32.232063, 49.029922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770767, 31.989988, 48.881336> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041246, 0.557089, -0.829428,
		0.708897, 0.568683, 0.417211,
		0.704105, -0.605187, -0.371463,
		38.981998, 31.808432, 48.769897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963970, 32.656452, 48.777622>,  <38.489124, 32.232063, 49.029922>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.963970, 32.656452, 48.777622> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.087231, 32.319118, 48.601517>,  <39.161186, 32.116718, 48.495853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.087231, 32.319118, 48.601517>,  <38.963970, 32.656452, 48.777622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087231, 32.319118, 48.601517> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200602, 0.509983, -0.836466,
		0.929947, 0.169439, 0.326325,
		0.308151, -0.843331, -0.440268,
		39.179676, 32.066120, 48.469437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.575115, 32.782204, 48.422653>,  <38.963970, 32.656452, 48.777622>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.575115, 32.782204, 48.422653> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.459152, 32.461632, 48.213402>,  <39.389576, 32.269287, 48.087852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.459152, 32.461632, 48.213402>,  <39.575115, 32.782204, 48.422653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.459152, 32.461632, 48.213402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199639, 0.483933, -0.852029,
		0.936002, -0.351443, 0.019704,
		-0.289904, -0.801435, -0.523124,
		39.372181, 32.221203, 48.056465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.006172, 32.687305, 47.806110>,  <39.575115, 32.782204, 48.422653>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.006172, 32.687305, 47.806110> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.700188, 32.464436, 47.676876>,  <39.516598, 32.330711, 47.599335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.700188, 32.464436, 47.676876>,  <40.006172, 32.687305, 47.806110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.700188, 32.464436, 47.676876> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130549, 0.357087, -0.924903,
		0.630708, -0.749693, -0.200418,
		-0.764960, -0.557179, -0.323090,
		39.470699, 32.297283, 47.579948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.222198, 32.356033, 47.152920>,  <40.006172, 32.687305, 47.806110>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.222198, 32.356033, 47.152920> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.822361, 32.356976, 47.164268>,  <39.582458, 32.357540, 47.171078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.822361, 32.356976, 47.164268>,  <40.222198, 32.356033, 47.152920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.822361, 32.356976, 47.164268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022100, 0.563959, -0.825507,
		-0.017942, -0.825799, -0.563679,
		-0.999595, 0.002354, 0.028369,
		39.522484, 32.357681, 47.172779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.087166, 32.317024, 46.425343>,  <40.222198, 32.356033, 47.152920>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.087166, 32.317024, 46.425343> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.713837, 32.395546, 46.545586>,  <39.489838, 32.442661, 46.617733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.713837, 32.395546, 46.545586>,  <40.087166, 32.317024, 46.425343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.713837, 32.395546, 46.545586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246097, 0.259848, -0.933764,
		-0.261419, -0.945485, -0.194211,
		-0.933325, 0.196308, 0.300611,
		39.433838, 32.454437, 46.635769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648220, 32.109562, 45.870525>,  <40.087166, 32.317024, 46.425343>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.648220, 32.109562, 45.870525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.428993, 32.369656, 46.080982>,  <39.297459, 32.525711, 46.207256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.428993, 32.369656, 46.080982>,  <39.648220, 32.109562, 45.870525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.428993, 32.369656, 46.080982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420871, 0.329216, -0.845272,
		-0.722835, -0.684703, 0.093231,
		-0.548066, 0.650230, 0.526141,
		39.264572, 32.564724, 46.238823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907654, 32.083225, 45.648602>,  <39.648220, 32.109562, 45.870525>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.907654, 32.083225, 45.648602> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.017681, 32.435150, 45.803661>,  <39.083698, 32.646305, 45.896698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.017681, 32.435150, 45.803661>,  <38.907654, 32.083225, 45.648602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.017681, 32.435150, 45.803661> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262668, 0.456633, -0.849995,
		-0.924848, 0.131981, 0.356702,
		0.275065, 0.879811, 0.387649,
		39.100201, 32.699093, 45.919956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377636, 32.523579, 45.470688>,  <38.907654, 32.083225, 45.648602>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377636, 32.523579, 45.470688> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.690720, 32.753498, 45.566154>,  <38.878571, 32.891449, 45.623436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.690720, 32.753498, 45.566154>,  <38.377636, 32.523579, 45.470688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.690720, 32.753498, 45.566154> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083045, 0.476501, -0.875243,
		-0.616818, 0.665243, 0.420698,
		0.782712, 0.574803, 0.238670,
		38.925533, 32.925938, 45.637756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.310406, 33.079578, 45.139885>,  <38.377636, 32.523579, 45.470688>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.310406, 33.079578, 45.139885> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.696960, 33.129429, 45.229839>,  <38.928894, 33.159340, 45.283813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.696960, 33.129429, 45.229839>,  <38.310406, 33.079578, 45.139885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.696960, 33.129429, 45.229839> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121828, 0.548297, -0.827362,
		-0.226412, 0.826946, 0.514682,
		0.966383, 0.124623, 0.224886,
		38.986874, 33.166817, 45.297306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364517, 33.785667, 45.133030>,  <38.310406, 33.079578, 45.139885>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364517, 33.785667, 45.133030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.732689, 33.642971, 45.069099>,  <38.953590, 33.557354, 45.030743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.732689, 33.642971, 45.069099>,  <38.364517, 33.785667, 45.133030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.732689, 33.642971, 45.069099> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168120, 0.730365, -0.662044,
		0.352911, 0.582495, 0.732225,
		0.920429, -0.356745, -0.159824,
		39.008816, 33.535946, 45.021152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738674, 34.412556, 44.962471>,  <38.364517, 33.785667, 45.133030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.738674, 34.412556, 44.962471> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.930840, 34.098408, 44.806316>,  <39.046139, 33.909920, 44.712624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.930840, 34.098408, 44.806316>,  <38.738674, 34.412556, 44.962471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930840, 34.098408, 44.806316> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196230, 0.530082, -0.824928,
		0.854809, 0.319700, 0.408770,
		0.480411, -0.785369, -0.390385,
		39.074963, 33.862797, 44.689201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430168, 34.739216, 44.833973>,  <38.738674, 34.412556, 44.962471>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.430168, 34.739216, 44.833973> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.399914, 34.387794, 44.645325>,  <39.381760, 34.176941, 44.532135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.399914, 34.387794, 44.645325>,  <39.430168, 34.739216, 44.833973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399914, 34.387794, 44.645325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344933, 0.420719, -0.839057,
		0.935575, -0.226138, 0.271222,
		-0.075634, -0.878554, -0.471616,
		39.377224, 34.124229, 44.503841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.090027, 34.607857, 44.550045>,  <39.430168, 34.739216, 44.833973>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.090027, 34.607857, 44.550045> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.825020, 34.387966, 44.346527>,  <39.666016, 34.256031, 44.224419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.825020, 34.387966, 44.346527>,  <40.090027, 34.607857, 44.550045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.825020, 34.387966, 44.346527> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357112, 0.365277, -0.859677,
		0.658437, -0.751248, -0.045689,
		-0.662519, -0.549727, -0.508791,
		39.626263, 34.223049, 44.193890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.969990, 28.822670, 37.621464> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.784632, 28.734373, 37.278175>,  <27.673416, 28.681395, 37.072205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.784632, 28.734373, 37.278175>,  <27.969990, 28.822670, 37.621464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.784632, 28.734373, 37.278175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151761, 0.973938, -0.168561,
		0.873060, 0.052134, -0.484818,
		-0.463396, -0.220740, -0.858218,
		27.645613, 28.668152, 37.020710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.198175, 29.263304, 37.149925>,  <27.969990, 28.822670, 37.621464>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.198175, 29.263304, 37.149925> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.821493, 29.164415, 37.058647>,  <27.595484, 29.105083, 37.003880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.821493, 29.164415, 37.058647>,  <28.198175, 29.263304, 37.149925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.821493, 29.164415, 37.058647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181342, 0.944286, -0.274660,
		0.283380, -0.217268, -0.934072,
		-0.941706, -0.247220, -0.228192,
		27.538980, 29.090250, 36.990189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.990950, 29.362646, 36.388424>,  <28.198175, 29.263304, 37.149925>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.990950, 29.362646, 36.388424> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.641537, 29.393553, 36.580662>,  <27.431889, 29.412096, 36.696003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.641537, 29.393553, 36.580662>,  <27.990950, 29.362646, 36.388424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.641537, 29.393553, 36.580662> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180633, 0.865368, -0.467450,
		-0.452006, -0.495144, -0.741972,
		-0.873534, 0.077266, 0.480591,
		27.379477, 29.416733, 36.724838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.499006, 29.532230, 35.912590>,  <27.990950, 29.362646, 36.388424>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.499006, 29.532230, 35.912590> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.331072, 29.628542, 36.262623>,  <27.230310, 29.686329, 36.472641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.331072, 29.628542, 36.262623>,  <27.499006, 29.532230, 35.912590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.331072, 29.628542, 36.262623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232332, 0.903532, -0.360072,
		-0.877358, -0.354481, -0.323397,
		-0.419838, 0.240777, 0.875078,
		27.205120, 29.700775, 36.525146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.917990, 29.802935, 35.670177>,  <27.499006, 29.532230, 35.912590>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.917990, 29.802935, 35.670177> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.990736, 29.988741, 36.016853>,  <27.034384, 30.100225, 36.224857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.990736, 29.988741, 36.016853>,  <26.917990, 29.802935, 35.670177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.990736, 29.988741, 36.016853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431586, 0.829663, -0.354108,
		-0.883548, -0.309650, 0.351367,
		0.181867, 0.464517, 0.866688,
		27.045296, 30.128096, 36.276859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.246101, 30.140842, 35.702454>,  <26.917990, 29.802935, 35.670177>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.246101, 30.140842, 35.702454> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.466692, 30.302013, 35.994625>,  <26.599047, 30.398716, 36.169926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.466692, 30.302013, 35.994625>,  <26.246101, 30.140842, 35.702454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.466692, 30.302013, 35.994625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315452, 0.911322, -0.264543,
		-0.772244, -0.084524, 0.629678,
		0.551479, 0.402925, 0.730426,
		26.632135, 30.422892, 36.213753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.807823, 30.612549, 36.109322>,  <26.246101, 30.140842, 35.702454>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.807823, 30.612549, 36.109322> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.185427, 30.726267, 36.176285>,  <26.411989, 30.794498, 36.216465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.185427, 30.726267, 36.176285>,  <25.807823, 30.612549, 36.109322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.185427, 30.726267, 36.176285> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206330, 0.904667, -0.372834,
		-0.257448, 0.317416, 0.912671,
		0.944007, 0.284296, 0.167412,
		26.468628, 30.811556, 36.226509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.763565, 31.307161, 36.377941>,  <25.807823, 30.612549, 36.109322>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.763565, 31.307161, 36.377941> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.151825, 31.286613, 36.283962>,  <26.384781, 31.274284, 36.227573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.151825, 31.286613, 36.283962>,  <25.763565, 31.307161, 36.377941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.151825, 31.286613, 36.283962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030143, 0.995204, -0.093064,
		0.238604, 0.083251, 0.967542,
		0.970649, -0.051370, -0.234950,
		26.443020, 31.271202, 36.213478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.177034, 31.888777, 36.786114>,  <25.763565, 31.307161, 36.377941>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.177034, 31.888777, 36.786114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.390989, 31.768988, 36.470085>,  <26.519363, 31.697115, 36.280468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.390989, 31.768988, 36.470085>,  <26.177034, 31.888777, 36.786114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.390989, 31.768988, 36.470085> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083521, 0.949240, -0.303260,
		0.840785, 0.096223, 0.532750,
		0.534888, -0.299472, -0.790070,
		26.551456, 31.679146, 36.233063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.676460, 32.351372, 36.760098>,  <26.177034, 31.888777, 36.786114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.676460, 32.351372, 36.760098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.657949, 32.197823, 36.391209>,  <26.646843, 32.105694, 36.169876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.657949, 32.197823, 36.391209>,  <26.676460, 32.351372, 36.760098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.657949, 32.197823, 36.391209> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285466, 0.879631, -0.380473,
		0.957271, -0.280871, 0.068876,
		-0.046278, -0.383877, -0.922224,
		26.644066, 32.082661, 36.114540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.212551, 32.610310, 36.380081>,  <26.676460, 32.351372, 36.760098>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.212551, 32.610310, 36.380081> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.940090, 32.490585, 36.112816>,  <26.776613, 32.418751, 35.952457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.940090, 32.490585, 36.112816>,  <27.212551, 32.610310, 36.380081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.940090, 32.490585, 36.112816> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171299, 0.822131, -0.542916,
		0.711820, -0.484264, -0.508724,
		-0.681152, -0.299314, -0.668164,
		26.735744, 32.400791, 35.912365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.472622, 32.875206, 35.717461>,  <27.212551, 32.610310, 36.380081>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.472622, 32.875206, 35.717461> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.091419, 32.782372, 35.639576>,  <26.862698, 32.726669, 35.592846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.091419, 32.782372, 35.639576>,  <27.472622, 32.875206, 35.717461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.091419, 32.782372, 35.639576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149128, 0.918849, -0.365345,
		0.263701, -0.319140, -0.910281,
		-0.953007, -0.232090, -0.194708,
		26.805517, 32.712746, 35.581165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.362137, 32.967205, 35.022434>,  <27.472622, 32.875206, 35.717461>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.362137, 32.967205, 35.022434> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.001453, 33.006195, 35.190922>,  <26.785044, 33.029587, 35.292015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.001453, 33.006195, 35.190922>,  <27.362137, 32.967205, 35.022434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.001453, 33.006195, 35.190922> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072095, 0.926714, -0.368786,
		-0.426292, -0.362905, -0.828598,
		-0.901708, 0.097473, 0.421214,
		26.730942, 33.035439, 35.317287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.950554, 33.344807, 34.517681>,  <27.362137, 32.967205, 35.022434>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.950554, 33.344807, 34.517681> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.736296, 33.375809, 34.854034>,  <26.607740, 33.394409, 35.055847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.736296, 33.375809, 34.854034>,  <26.950554, 33.344807, 34.517681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.736296, 33.375809, 34.854034> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040274, 0.992302, -0.117112,
		-0.843482, -0.096596, -0.528401,
		-0.535646, 0.077501, 0.840878,
		26.575602, 33.399059, 35.106297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.360205, 33.815800, 34.369045>,  <26.950554, 33.344807, 34.517681>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.360205, 33.815800, 34.369045> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.387383, 33.816952, 34.768120>,  <26.403688, 33.817642, 35.007565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.387383, 33.816952, 34.768120>,  <26.360205, 33.815800, 34.369045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.387383, 33.816952, 34.768120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006794, 0.999971, -0.003347,
		-0.997666, 0.007006, 0.067922,
		0.067944, 0.002877, 0.997685,
		26.407766, 33.817814, 35.067425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.862661, 34.311077, 34.608189>,  <26.360205, 33.815800, 34.369045>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.862661, 34.311077, 34.608189> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.104189, 34.283031, 34.925800>,  <26.249105, 34.266205, 35.116367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.104189, 34.283031, 34.925800>,  <25.862661, 34.311077, 34.608189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.104189, 34.283031, 34.925800> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013077, 0.996861, 0.078078,
		-0.797015, -0.036761, 0.602839,
		0.603817, -0.070113, 0.794033,
		26.285334, 34.261997, 35.164009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.697214, 34.862198, 35.079872>,  <25.862661, 34.311077, 34.608189>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.697214, 34.862198, 35.079872> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.060596, 34.760750, 35.212769>,  <26.278625, 34.699883, 35.292507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.060596, 34.760750, 35.212769>,  <25.697214, 34.862198, 35.079872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.060596, 34.760750, 35.212769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173547, 0.951994, 0.252167,
		-0.380248, -0.171423, 0.908860,
		0.908457, -0.253616, 0.332244,
		26.333134, 34.684666, 35.312443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.703112, 35.088959, 35.751068>,  <25.697214, 34.862198, 35.079872>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.703112, 35.088959, 35.751068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.087414, 35.058483, 35.644379>,  <26.317995, 35.040195, 35.580364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.087414, 35.058483, 35.644379>,  <25.703112, 35.088959, 35.751068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.087414, 35.058483, 35.644379> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141318, 0.961844, 0.234274,
		0.238696, -0.262774, 0.934866,
		0.960757, -0.076193, -0.266723,
		26.375641, 35.035625, 35.564362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.076794, 35.509724, 36.216652>,  <25.703112, 35.088959, 35.751068>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.076794, 35.509724, 36.216652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.321033, 35.460758, 35.903683>,  <26.467577, 35.431377, 35.715900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.321033, 35.460758, 35.903683>,  <26.076794, 35.509724, 36.216652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.321033, 35.460758, 35.903683> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350161, 0.927890, 0.128090,
		0.710322, -0.352185, 0.609434,
		0.610599, -0.122415, -0.782422,
		26.504213, 35.424034, 35.668957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.703129, 35.811550, 36.376297>,  <26.076794, 35.509724, 36.216652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.703129, 35.811550, 36.376297> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.705515, 35.838997, 35.977245>,  <26.706947, 35.855465, 35.737816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.705515, 35.838997, 35.977245>,  <26.703129, 35.811550, 36.376297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.705515, 35.838997, 35.977245> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507279, 0.859538, 0.062152,
		0.861762, -0.506445, -0.029679,
		0.005966, 0.068616, -0.997625,
		26.707304, 35.859581, 35.677959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.052612, 36.108440, 36.965294>,  <26.703129, 35.811550, 36.376297>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.052612, 36.108440, 36.965294> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.162102, 36.190887, 37.341080>,  <27.227797, 36.240356, 37.566551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.162102, 36.190887, 37.341080>,  <27.052612, 36.108440, 36.965294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.162102, 36.190887, 37.341080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123600, -0.976206, 0.178172,
		0.953833, 0.067347, -0.292689,
		0.273726, 0.206122, 0.939461,
		27.244219, 36.252724, 37.622917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.672424, 35.680634, 37.086807>,  <27.052612, 36.108440, 36.965294>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.672424, 35.680634, 37.086807> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.577049, 35.788868, 37.459888>,  <27.519825, 35.853809, 37.683735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.577049, 35.788868, 37.459888>,  <27.672424, 35.680634, 37.086807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.577049, 35.788868, 37.459888> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093531, -0.949538, 0.299381,
		0.966644, 0.158620, 0.201097,
		-0.238437, 0.270586, 0.932701,
		27.505518, 35.870045, 37.739700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.153494, 35.391361, 37.484745>,  <27.672424, 35.680634, 37.086807>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.153494, 35.391361, 37.484745> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.837584, 35.460098, 37.720276>,  <27.648037, 35.501339, 37.861595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.837584, 35.460098, 37.720276>,  <28.153494, 35.391361, 37.484745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.837584, 35.460098, 37.720276> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082699, -0.981021, 0.175380,
		0.607793, 0.089816, 0.789000,
		-0.789778, 0.171844, 0.588830,
		27.600651, 35.511650, 37.896923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.316498, 35.022755, 38.088577>,  <28.153494, 35.391361, 37.484745>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.316498, 35.022755, 38.088577> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.922249, 35.090332, 38.089180>,  <27.685699, 35.130878, 38.089542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.922249, 35.090332, 38.089180>,  <28.316498, 35.022755, 38.088577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.922249, 35.090332, 38.089180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164729, -0.962920, 0.213656,
		0.037544, 0.210337, 0.976908,
		-0.985624, 0.168947, 0.001503,
		27.626562, 35.141014, 38.089630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.174171, 34.659729, 38.609035>,  <28.316498, 35.022755, 38.088577>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.174171, 34.659729, 38.609035> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.819860, 34.729202, 38.436878>,  <27.607275, 34.770885, 38.333584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.819860, 34.729202, 38.436878>,  <28.174171, 34.659729, 38.609035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.819860, 34.729202, 38.436878> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365963, -0.831694, 0.417560,
		-0.285432, 0.527371, 0.800255,
		-0.885776, 0.173679, -0.430391,
		27.554127, 34.781307, 38.307762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.633299, 34.768372, 39.203278>,  <28.174171, 34.659729, 38.609035>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.633299, 34.768372, 39.203278> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.475792, 34.624332, 38.864983>,  <27.381287, 34.537910, 38.662006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.475792, 34.624332, 38.864983>,  <27.633299, 34.768372, 39.203278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.475792, 34.624332, 38.864983> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316639, -0.810627, 0.492568,
		-0.862951, 0.461753, 0.205180,
		-0.393769, -0.360095, -0.845741,
		27.357660, 34.516304, 38.611259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.099539, 34.431297, 39.511021>,  <27.633299, 34.768372, 39.203278>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.099539, 34.431297, 39.511021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.164522, 34.281029, 39.146061>,  <27.203512, 34.190868, 38.927086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.164522, 34.281029, 39.146061>,  <27.099539, 34.431297, 39.511021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.164522, 34.281029, 39.146061> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165310, -0.921979, 0.350181,
		-0.972769, 0.093940, -0.211886,
		0.162458, -0.375672, -0.912402,
		27.213261, 34.168327, 38.872341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.579813, 34.006222, 39.432049>,  <27.099539, 34.431297, 39.511021>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.579813, 34.006222, 39.432049> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.822012, 33.882725, 39.138641>,  <26.967331, 33.808624, 38.962597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.822012, 33.882725, 39.138641>,  <26.579813, 34.006222, 39.432049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.822012, 33.882725, 39.138641> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273050, -0.946330, 0.172926,
		-0.747540, 0.095581, -0.657304,
		0.605498, -0.308746, -0.733518,
		27.003662, 33.790100, 38.918587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.125788, 33.662189, 38.963516>,  <26.579813, 34.006222, 39.432049>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.125788, 33.662189, 38.963516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.495647, 33.552216, 38.858116>,  <26.717564, 33.486233, 38.794876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.495647, 33.552216, 38.858116>,  <26.125788, 33.662189, 38.963516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.495647, 33.552216, 38.858116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279906, -0.959834, 0.019265,
		-0.258213, 0.055942, -0.964467,
		0.924651, -0.274934, -0.263500,
		26.773043, 33.469734, 38.779064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.075970, 33.206142, 38.388645>,  <26.125788, 33.662189, 38.963516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.075970, 33.206142, 38.388645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.423698, 33.114513, 38.563828>,  <26.632336, 33.059536, 38.668938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.423698, 33.114513, 38.563828>,  <26.075970, 33.206142, 38.388645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.423698, 33.114513, 38.563828> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245732, -0.969149, -0.019138,
		0.428829, -0.090983, -0.898792,
		0.869322, -0.229069, 0.437957,
		26.684496, 33.045792, 38.695213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.198544, 32.638321, 38.054707>,  <26.075970, 33.206142, 38.388645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.198544, 32.638321, 38.054707> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.461777, 32.630032, 38.355770>,  <26.619717, 32.625057, 38.536407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.461777, 32.630032, 38.355770>,  <26.198544, 32.638321, 38.054707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.461777, 32.630032, 38.355770> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079037, -0.996000, 0.041678,
		0.748785, -0.086916, -0.657089,
		0.658083, -0.020727, 0.752660,
		26.659203, 32.623814, 38.581570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.702902, 32.179470, 37.913445>,  <26.198544, 32.638321, 38.054707>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.702902, 32.179470, 37.913445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.735384, 32.199604, 38.311615>,  <26.754873, 32.211685, 38.550518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.735384, 32.199604, 38.311615>,  <26.702902, 32.179470, 37.913445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.735384, 32.199604, 38.311615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138542, -0.988459, 0.061284,
		0.987022, -0.142885, -0.073296,
		0.081207, 0.050334, 0.995426,
		26.759747, 32.214703, 38.610241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.875889, 31.555897, 38.056305>,  <26.702902, 32.179470, 37.913445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.875889, 31.555897, 38.056305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.785425, 31.661245, 38.431431>,  <26.731146, 31.724455, 38.656506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.785425, 31.661245, 38.431431>,  <26.875889, 31.555897, 38.056305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.785425, 31.661245, 38.431431> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264347, -0.943220, 0.201139,
		0.937535, -0.202418, 0.282940,
		-0.226161, 0.263369, 0.937810,
		26.717577, 31.740255, 38.712772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.255638, 31.070095, 38.473774>,  <26.875889, 31.555897, 38.056305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.255638, 31.070095, 38.473774> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.954666, 31.208382, 38.698032>,  <26.774082, 31.291353, 38.832588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.954666, 31.208382, 38.698032>,  <27.255638, 31.070095, 38.473774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.954666, 31.208382, 38.698032> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299552, -0.937671, 0.176185,
		0.586616, -0.035377, 0.809092,
		-0.752429, 0.345719, 0.560651,
		26.728937, 31.312098, 38.866226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.328295, 30.730215, 39.016567>,  <27.255638, 31.070095, 38.473774>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.328295, 30.730215, 39.016567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.950064, 30.859688, 39.003227>,  <26.723125, 30.937372, 38.995224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.950064, 30.859688, 39.003227>,  <27.328295, 30.730215, 39.016567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.950064, 30.859688, 39.003227> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323512, -0.924136, 0.203255,
		0.034970, 0.202983, 0.978558,
		-0.945578, 0.323683, -0.033351,
		26.666389, 30.956793, 38.993221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.981503, 30.458204, 39.611187>,  <27.328295, 30.730215, 39.016567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.981503, 30.458204, 39.611187> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.670786, 30.559149, 39.380394>,  <26.484356, 30.619715, 39.241917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.670786, 30.559149, 39.380394>,  <26.981503, 30.458204, 39.611187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.670786, 30.559149, 39.380394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396688, -0.907663, 0.137066,
		-0.489117, 0.335355, 0.805172,
		-0.776790, 0.252361, -0.576985,
		26.437748, 30.634857, 39.207298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.406208, 30.222878, 40.011585>,  <26.981503, 30.458204, 39.611187>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.406208, 30.222878, 40.011585> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.266548, 30.258736, 39.638477>,  <26.182753, 30.280251, 39.414612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.266548, 30.258736, 39.638477>,  <26.406208, 30.222878, 40.011585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.266548, 30.258736, 39.638477> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350116, -0.935803, 0.041119,
		-0.869201, 0.340934, 0.358124,
		-0.349152, 0.089644, -0.932768,
		26.161802, 30.285629, 39.358646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.830490, 29.787653, 40.022469>,  <26.406208, 30.222878, 40.011585>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.830490, 29.787653, 40.022469> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.936007, 29.839041, 39.640076>,  <25.999317, 29.869873, 39.410641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.936007, 29.839041, 39.640076>,  <25.830490, 29.787653, 40.022469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.936007, 29.839041, 39.640076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180788, -0.966942, -0.179828,
		-0.947486, 0.220269, -0.231845,
		0.263791, 0.128470, -0.955986,
		26.015144, 29.877583, 39.353279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.353397, 29.392044, 39.666382>,  <25.830490, 29.787653, 40.022469>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.353397, 29.392044, 39.666382> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.642698, 29.419249, 39.391491>,  <25.816278, 29.435572, 39.226555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.642698, 29.419249, 39.391491>,  <25.353397, 29.392044, 39.666382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.642698, 29.419249, 39.391491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234913, -0.911565, -0.337439,
		-0.649403, 0.405492, -0.643313,
		0.723251, 0.068011, -0.687229,
		25.859673, 29.439651, 39.185322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.060493, 29.064980, 39.107513>,  <25.353397, 29.392044, 39.666382>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.060493, 29.064980, 39.107513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.459370, 29.063652, 39.077579>,  <25.698696, 29.062855, 39.059620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.459370, 29.063652, 39.077579>,  <25.060493, 29.064980, 39.107513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.459370, 29.063652, 39.077579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020479, -0.973037, -0.229738,
		-0.072056, 0.230625, -0.970371,
		0.997190, -0.003318, -0.074837,
		25.758526, 29.062656, 39.055130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.193647, 28.773245, 38.461445>,  <25.060493, 29.064980, 39.107513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.193647, 28.773245, 38.461445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.518688, 28.701286, 38.683189>,  <25.713713, 28.658112, 38.816235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.518688, 28.701286, 38.683189>,  <25.193647, 28.773245, 38.461445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.518688, 28.701286, 38.683189> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049709, -0.926312, -0.373463,
		0.580694, 0.331034, -0.743782,
		0.812603, -0.179895, 0.554359,
		25.762468, 28.647318, 38.849499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.699390, 28.462044, 38.057613>,  <25.193647, 28.773245, 38.461445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.699390, 28.462044, 38.057613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.825600, 28.332582, 38.414421>,  <25.901325, 28.254906, 38.628506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.825600, 28.332582, 38.414421>,  <25.699390, 28.462044, 38.057613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.825600, 28.332582, 38.414421> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064451, -0.930556, -0.360434,
		0.946726, 0.171217, -0.272754,
		0.315525, -0.323653, 0.892016,
		25.920258, 28.235487, 38.682026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<41.803581, 27.904078, 47.490143> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.435265, 27.997179, 47.364948>,  <41.214275, 28.053040, 47.289829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.435265, 27.997179, 47.364948>,  <41.803581, 27.904078, 47.490143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.435265, 27.997179, 47.364948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381023, -0.365140, 0.849408,
		0.083416, 0.901387, 0.424904,
		-0.920795, 0.232752, -0.312991,
		41.159027, 28.067005, 47.271049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.538837, 28.444050, 47.857368>,  <41.803581, 27.904078, 47.490143>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.538837, 28.444050, 47.857368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.212605, 28.251619, 47.728752>,  <41.016865, 28.136162, 47.651581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.212605, 28.251619, 47.728752>,  <41.538837, 28.444050, 47.857368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.212605, 28.251619, 47.728752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296607, -0.129553, 0.946171,
		-0.496835, 0.867055, -0.037028,
		-0.815585, -0.481074, -0.321542,
		40.967930, 28.107298, 47.632290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.948566, 28.606560, 48.332043>,  <41.538837, 28.444050, 47.857368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.948566, 28.606560, 48.332043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.838058, 28.277582, 48.133141>,  <40.771755, 28.080196, 48.013798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.838058, 28.277582, 48.133141>,  <40.948566, 28.606560, 48.332043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.838058, 28.277582, 48.133141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569037, -0.276978, 0.774261,
		-0.774515, 0.496858, -0.391481,
		-0.276267, -0.822445, -0.497254,
		40.755180, 28.030849, 47.983963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127094, 28.630236, 48.256069>,  <40.948566, 28.606560, 48.332043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.127094, 28.630236, 48.256069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.256512, 28.255802, 48.200844>,  <40.334164, 28.031141, 48.167709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.256512, 28.255802, 48.200844>,  <40.127094, 28.630236, 48.256069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.256512, 28.255802, 48.200844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693938, -0.333941, 0.637913,
		-0.643247, -0.110584, -0.757631,
		0.323547, -0.936085, -0.138068,
		40.353577, 27.974977, 48.159424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.467976, 28.361214, 48.119133>,  <40.127094, 28.630236, 48.256069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.467976, 28.361214, 48.119133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.716747, 28.070560, 48.235893>,  <39.866009, 27.896168, 48.305950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.716747, 28.070560, 48.235893>,  <39.467976, 28.361214, 48.119133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.716747, 28.070560, 48.235893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689571, -0.331553, 0.643867,
		-0.371082, -0.601719, -0.707271,
		0.621925, -0.726641, 0.291894,
		39.903324, 27.852570, 48.323463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002514, 27.788340, 48.113277>,  <39.467976, 28.361214, 48.119133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.002514, 27.788340, 48.113277> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.321323, 27.707987, 48.341103>,  <39.512608, 27.659775, 48.477798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.321323, 27.707987, 48.341103>,  <39.002514, 27.788340, 48.113277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321323, 27.707987, 48.341103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589891, -0.461241, 0.662786,
		0.129565, -0.864235, -0.486117,
		0.797020, -0.200883, 0.569565,
		39.560429, 27.647722, 48.511971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885162, 27.118805, 48.309196>,  <39.002514, 27.788340, 48.113277>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885162, 27.118805, 48.309196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.163242, 27.278034, 48.548607>,  <39.330090, 27.373571, 48.692253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.163242, 27.278034, 48.548607>,  <38.885162, 27.118805, 48.309196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163242, 27.278034, 48.548607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358256, -0.529989, 0.768612,
		0.623177, -0.748765, -0.225836,
		0.695200, 0.398074, 0.598526,
		39.371803, 27.397457, 48.728165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402340, 26.544661, 48.551937>,  <38.885162, 27.118805, 48.309196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.402340, 26.544661, 48.551937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.395130, 26.843472, 48.817757>,  <39.390804, 27.022758, 48.977249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.395130, 26.843472, 48.817757>,  <39.402340, 26.544661, 48.551937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.395130, 26.843472, 48.817757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296509, -0.638751, 0.709985,
		0.954860, -0.184251, 0.233011,
		-0.018020, 0.747027, 0.664550,
		39.389725, 27.067579, 49.017120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533028, 26.235437, 49.161823>,  <39.402340, 26.544661, 48.551937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533028, 26.235437, 49.161823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.387722, 26.580891, 49.301640>,  <39.300537, 26.788162, 49.385529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.387722, 26.580891, 49.301640>,  <39.533028, 26.235437, 49.161823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387722, 26.580891, 49.301640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412397, -0.485463, 0.770879,
		0.835443, 0.135886, 0.532512,
		-0.363267, 0.863632, 0.349538,
		39.278744, 26.839981, 49.406502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.804802, 26.251196, 49.767998>,  <39.533028, 26.235437, 49.161823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.804802, 26.251196, 49.767998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.502213, 26.510595, 49.801937>,  <39.320660, 26.666235, 49.822300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.502213, 26.510595, 49.801937>,  <39.804802, 26.251196, 49.767998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.502213, 26.510595, 49.801937> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203776, -0.356982, 0.911613,
		0.621468, 0.672321, 0.402196,
		-0.756474, 0.648496, 0.084850,
		39.275269, 26.705145, 49.827393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883812, 26.596920, 50.394966>,  <39.804802, 26.251196, 49.767998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.883812, 26.596920, 50.394966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.496391, 26.611601, 50.296528>,  <39.263939, 26.620409, 50.237465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.496391, 26.611601, 50.296528>,  <39.883812, 26.596920, 50.394966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.496391, 26.611601, 50.296528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237459, -0.431810, 0.870145,
		-0.074332, 0.901217, 0.426945,
		-0.968549, 0.036702, -0.246099,
		39.205826, 26.622612, 50.222698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497738, 26.964434, 50.983601>,  <39.883812, 26.596920, 50.394966>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.497738, 26.964434, 50.983601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.207935, 26.759352, 50.799328>,  <39.034054, 26.636303, 50.688766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.207935, 26.759352, 50.799328>,  <39.497738, 26.964434, 50.983601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207935, 26.759352, 50.799328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137024, -0.547883, 0.825257,
		-0.675510, 0.661028, 0.326692,
		-0.724507, -0.512704, -0.460677,
		38.990582, 26.605541, 50.661125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068272, 26.804976, 51.472652>,  <39.497738, 26.964434, 50.983601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.068272, 26.804976, 51.472652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.992233, 26.551294, 51.172878>,  <38.946609, 26.399086, 50.993015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.992233, 26.551294, 51.172878>,  <39.068272, 26.804976, 51.472652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992233, 26.551294, 51.172878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061994, -0.754077, 0.653854,
		-0.979806, 0.170755, 0.104030,
		-0.190095, -0.634201, -0.749435,
		38.935204, 26.361034, 50.948048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551617, 26.457207, 51.729698>,  <39.068272, 26.804976, 51.472652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.551617, 26.457207, 51.729698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.737633, 26.229296, 51.458672>,  <38.849243, 26.092550, 51.296055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.737633, 26.229296, 51.458672>,  <38.551617, 26.457207, 51.729698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.737633, 26.229296, 51.458672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026021, -0.756232, 0.653786,
		-0.884909, -0.321666, -0.336850,
		0.465037, -0.569776, -0.677566,
		38.877144, 26.058363, 51.255402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416210, 27.237841, 51.588902>,  <38.551617, 26.457207, 51.729698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.416210, 27.237841, 51.588902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.352177, 27.488783, 51.893742>,  <38.313755, 27.639349, 52.076645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.352177, 27.488783, 51.893742>,  <38.416210, 27.237841, 51.588902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.352177, 27.488783, 51.893742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387120, 0.750108, -0.536168,
		-0.908026, 0.209191, -0.362945,
		-0.160086, 0.627358, 0.762099,
		38.304150, 27.676991, 52.122372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069908, 27.756634, 51.314625>,  <38.416210, 27.237841, 51.588902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.069908, 27.756634, 51.314625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.241306, 27.897614, 51.647411>,  <38.344147, 27.982201, 51.847084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.241306, 27.897614, 51.647411>,  <38.069908, 27.756634, 51.314625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.241306, 27.897614, 51.647411> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235292, 0.845488, -0.479361,
		-0.872370, 0.401159, 0.279359,
		0.428495, 0.352450, 0.831968,
		38.369854, 28.003349, 51.897003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803318, 28.345654, 51.440262>,  <38.069908, 27.756634, 51.314625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803318, 28.345654, 51.440262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.134918, 28.371643, 51.662449>,  <38.333878, 28.387238, 51.795761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.134918, 28.371643, 51.662449>,  <37.803318, 28.345654, 51.440262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.134918, 28.371643, 51.662449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157484, 0.925914, -0.343341,
		-0.536623, 0.372105, 0.757347,
		0.828997, 0.064975, 0.555467,
		38.383617, 28.391136, 51.829090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.897461, 29.029568, 51.699711>,  <37.803318, 28.345654, 51.440262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.897461, 29.029568, 51.699711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.260620, 28.862307, 51.687866>,  <38.478516, 28.761950, 51.680759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.260620, 28.862307, 51.687866>,  <37.897461, 29.029568, 51.699711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.260620, 28.862307, 51.687866> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348955, 0.793015, -0.499357,
		0.232288, 0.443031, 0.865890,
		0.907895, -0.418151, -0.029610,
		38.532990, 28.736862, 51.678982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373817, 29.549065, 51.862263>,  <37.897461, 29.029568, 51.699711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.373817, 29.549065, 51.862263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.617577, 29.292969, 51.675190>,  <38.763832, 29.139311, 51.562946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.617577, 29.292969, 51.675190>,  <38.373817, 29.549065, 51.862263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.617577, 29.292969, 51.675190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380716, 0.753703, -0.535712,
		0.695479, 0.148406, 0.703054,
		0.609397, -0.640240, -0.467684,
		38.800396, 29.100897, 51.534885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012291, 29.872543, 51.914268>,  <38.373817, 29.549065, 51.862263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.012291, 29.872543, 51.914268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.079842, 29.609846, 51.620285>,  <39.120373, 29.452227, 51.443893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.079842, 29.609846, 51.620285>,  <39.012291, 29.872543, 51.914268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.079842, 29.609846, 51.620285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275227, 0.747431, -0.604647,
		0.946431, -0.100173, 0.306974,
		0.168873, -0.656744, -0.734962,
		39.130505, 29.412823, 51.399796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545174, 30.039190, 51.590645>,  <39.012291, 29.872543, 51.914268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.545174, 30.039190, 51.590645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.409325, 29.791885, 51.307121>,  <39.327816, 29.643503, 51.137009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.409325, 29.791885, 51.307121>,  <39.545174, 30.039190, 51.590645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409325, 29.791885, 51.307121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306006, 0.639971, -0.704839,
		0.889391, -0.456280, -0.028158,
		-0.339624, -0.618260, -0.708808,
		39.307438, 29.606407, 51.094479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.176712, 29.892796, 51.162323>,  <39.545174, 30.039190, 51.590645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.176712, 29.892796, 51.162323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.816795, 29.847130, 50.993877>,  <39.600845, 29.819731, 50.892811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.816795, 29.847130, 50.993877>,  <40.176712, 29.892796, 51.162323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.816795, 29.847130, 50.993877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238781, 0.678954, -0.694266,
		0.365177, -0.725250, -0.583659,
		-0.899794, -0.114164, -0.421114,
		39.546856, 29.812881, 50.867542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.262306, 29.817005, 50.438423>,  <40.176712, 29.892796, 51.162323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.262306, 29.817005, 50.438423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.883446, 29.939236, 50.477482>,  <39.656132, 30.012573, 50.500916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.883446, 29.939236, 50.477482>,  <40.262306, 29.817005, 50.438423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.883446, 29.939236, 50.477482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148603, 0.687684, -0.710639,
		-0.284303, -0.658570, -0.696748,
		-0.947148, 0.305575, 0.097645,
		39.599300, 30.030909, 50.506775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.018471, 29.930382, 49.725655>,  <40.262306, 29.817005, 50.438423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.018471, 29.930382, 49.725655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.734047, 30.113892, 49.938793>,  <39.563393, 30.223997, 50.066677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.734047, 30.113892, 49.938793>,  <40.018471, 29.930382, 49.725655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.734047, 30.113892, 49.938793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078426, 0.701340, -0.708500,
		-0.698746, -0.545574, -0.462714,
		-0.711058, 0.458772, 0.532845,
		39.520729, 30.251524, 50.098648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541836, 30.044691, 49.232643>,  <40.018471, 29.930382, 49.725655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.541836, 30.044691, 49.232643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.468422, 30.313786, 49.519344>,  <39.424374, 30.475243, 49.691364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.468422, 30.313786, 49.519344>,  <39.541836, 30.044691, 49.232643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.468422, 30.313786, 49.519344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152213, 0.700900, -0.696828,
		-0.971157, -0.236991, -0.026240,
		-0.183534, 0.672736, 0.716758,
		39.413361, 30.515606, 49.734371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884621, 30.326813, 49.038570>,  <39.541836, 30.044691, 49.232643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884621, 30.326813, 49.038570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.055485, 30.578817, 49.297989>,  <39.158005, 30.730021, 49.453640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.055485, 30.578817, 49.297989>,  <38.884621, 30.326813, 49.038570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.055485, 30.578817, 49.297989> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230831, 0.769501, -0.595471,
		-0.874214, 0.104656, 0.474128,
		0.427161, 0.630012, 0.648550,
		39.183632, 30.767820, 49.492554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381454, 30.814768, 49.151276>,  <38.884621, 30.326813, 49.038570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.381454, 30.814768, 49.151276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.717575, 30.993826, 49.273594>,  <38.919247, 31.101261, 49.346985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.717575, 30.993826, 49.273594>,  <38.381454, 30.814768, 49.151276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.717575, 30.993826, 49.273594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205102, 0.784651, -0.585026,
		-0.501824, 0.428879, 0.751155,
		0.840301, 0.447644, 0.305793,
		38.969666, 31.128119, 49.365334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262215, 31.535742, 49.201092>,  <38.381454, 30.814768, 49.151276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.262215, 31.535742, 49.201092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.655857, 31.493223, 49.144184>,  <38.892040, 31.467712, 49.110039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.655857, 31.493223, 49.144184>,  <38.262215, 31.535742, 49.201092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655857, 31.493223, 49.144184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053813, 0.584950, -0.809282,
		0.169245, 0.804073, 0.569932,
		0.984104, -0.106298, -0.142270,
		38.951088, 31.461334, 49.101501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.684036, 31.868631, 49.286461>,  <38.262215, 31.535742, 49.201092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.684036, 31.868631, 49.286461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.320663, 31.973408, 49.156147>,  <37.102638, 32.036274, 49.077961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.320663, 31.973408, 49.156147>,  <37.684036, 31.868631, 49.286461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.320663, 31.973408, 49.156147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410327, -0.409860, 0.814645,
		0.079863, 0.873729, 0.479812,
		-0.908435, 0.261940, -0.325782,
		37.048134, 32.051991, 49.058411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301834, 32.077766, 49.809868>,  <37.684036, 31.868631, 49.286461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.301834, 32.077766, 49.809868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.036884, 31.949579, 49.538998>,  <36.877914, 31.872667, 49.376476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.036884, 31.949579, 49.538998>,  <37.301834, 32.077766, 49.809868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.036884, 31.949579, 49.538998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396980, -0.616424, 0.680021,
		-0.635353, 0.719250, 0.281081,
		-0.662370, -0.320470, -0.677175,
		36.838173, 31.853437, 49.335846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688538, 32.230988, 49.988052>,  <37.301834, 32.077766, 49.809868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688538, 32.230988, 49.988052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.667027, 31.910280, 49.749969>,  <36.654118, 31.717855, 49.607121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.667027, 31.910280, 49.749969>,  <36.688538, 32.230988, 49.988052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.667027, 31.910280, 49.749969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502382, -0.493410, 0.710041,
		-0.862972, 0.337207, -0.376259,
		-0.053781, -0.801772, -0.595206,
		36.650890, 31.669748, 49.571407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084827, 32.019535, 50.135513>,  <36.688538, 32.230988, 49.988052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084827, 32.019535, 50.135513> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.242882, 31.709593, 49.938141>,  <36.337715, 31.523628, 49.819717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.242882, 31.709593, 49.938141>,  <36.084827, 32.019535, 50.135513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.242882, 31.709593, 49.938141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394215, -0.628194, 0.670796,
		-0.829738, -0.070535, -0.553678,
		0.395132, -0.774854, -0.493430,
		36.361420, 31.477137, 49.790112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.606640, 31.590603, 50.180889>,  <36.084827, 32.019535, 50.135513>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.606640, 31.590603, 50.180889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.933365, 31.375439, 50.097492>,  <36.129398, 31.246340, 50.047455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.933365, 31.375439, 50.097492>,  <35.606640, 31.590603, 50.180889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933365, 31.375439, 50.097492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249050, -0.654776, 0.713612,
		-0.520378, -0.530961, -0.668795,
		0.816811, -0.537911, -0.208496,
		36.178410, 31.214066, 50.034943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391838, 30.981524, 50.012333>,  <35.606640, 31.590603, 50.180889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391838, 30.981524, 50.012333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.774403, 30.918737, 50.110828>,  <36.003941, 30.881065, 50.169926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.774403, 30.918737, 50.110828>,  <35.391838, 30.981524, 50.012333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.774403, 30.918737, 50.110828> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286882, -0.662449, 0.691997,
		0.054503, -0.732478, -0.678605,
		0.956414, -0.156964, 0.246240,
		36.061325, 30.871649, 50.184700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506527, 30.280325, 50.241398>,  <35.391838, 30.981524, 50.012333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506527, 30.280325, 50.241398> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.823944, 30.466133, 50.398632>,  <36.014393, 30.577618, 50.492973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.823944, 30.466133, 50.398632>,  <35.506527, 30.280325, 50.241398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.823944, 30.466133, 50.398632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106037, -0.530534, 0.841005,
		0.599210, -0.709052, -0.371743,
		0.793538, 0.464520, 0.393087,
		36.062004, 30.605490, 50.516560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466549, 29.535131, 49.961174>,  <35.506527, 30.280325, 50.241398>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466549, 29.535131, 49.961174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.069092, 29.540632, 50.005886>,  <34.830620, 29.543932, 50.032711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.069092, 29.540632, 50.005886>,  <35.466549, 29.535131, 49.961174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.069092, 29.540632, 50.005886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088511, 0.518335, -0.850585,
		-0.069633, -0.855067, -0.513820,
		-0.993638, 0.013750, 0.111777,
		34.771000, 29.544758, 50.039417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187847, 29.468161, 49.294338>,  <35.466549, 29.535131, 49.961174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187847, 29.468161, 49.294338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.871815, 29.609015, 49.495045>,  <34.682194, 29.693527, 49.615471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.871815, 29.609015, 49.495045>,  <35.187847, 29.468161, 49.294338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.871815, 29.609015, 49.495045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242787, 0.571853, -0.783606,
		-0.562873, -0.740936, -0.366316,
		-0.790081, 0.352134, 0.501770,
		34.634789, 29.714655, 49.645576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689796, 29.460835, 48.800594>,  <35.187847, 29.468161, 49.294338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689796, 29.460835, 48.800594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.549606, 29.700668, 49.088390>,  <34.465492, 29.844568, 49.261066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.549606, 29.700668, 49.088390>,  <34.689796, 29.460835, 48.800594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.549606, 29.700668, 49.088390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134280, 0.728108, -0.672181,
		-0.926894, -0.332198, -0.174674,
		-0.350479, 0.599585, 0.719487,
		34.444462, 29.880545, 49.304237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.021919, 29.560726, 48.741932>,  <34.689796, 29.460835, 48.800594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.021919, 29.560726, 48.741932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.167980, 29.883961, 48.926826>,  <34.255615, 30.077902, 49.037762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.167980, 29.883961, 48.926826>,  <34.021919, 29.560726, 48.741932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.167980, 29.883961, 48.926826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574359, 0.586311, -0.571271,
		-0.732649, -0.056887, 0.678225,
		0.365153, 0.808086, 0.462234,
		34.277527, 30.126387, 49.065498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.442230, 29.904839, 48.974915>,  <34.021919, 29.560726, 48.741932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.442230, 29.904839, 48.974915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.730186, 30.181520, 48.997906>,  <33.902962, 30.347530, 49.011700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.730186, 30.181520, 48.997906>,  <33.442230, 29.904839, 48.974915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.730186, 30.181520, 48.997906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569890, 0.636315, -0.519931,
		-0.396213, 0.341537, 0.852272,
		0.719889, 0.691704, 0.057478,
		33.946152, 30.389032, 49.015148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.039997, 30.421417, 48.822289>,  <33.442230, 29.904839, 48.974915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.039997, 30.421417, 48.822289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.404297, 30.585587, 48.804001>,  <33.622875, 30.684088, 48.793030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.404297, 30.585587, 48.804001>,  <33.039997, 30.421417, 48.822289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.404297, 30.585587, 48.804001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350629, 0.710041, -0.610656,
		-0.218165, 0.572185, 0.790575,
		0.910749, 0.410423, -0.045719,
		33.677521, 30.708714, 48.790287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.983509, 31.226301, 48.978199>,  <33.039997, 30.421417, 48.822289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.983509, 31.226301, 48.978199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.309875, 31.149920, 48.759911>,  <33.505695, 31.104090, 48.628937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.309875, 31.149920, 48.759911>,  <32.983509, 31.226301, 48.978199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.309875, 31.149920, 48.759911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222828, 0.767107, -0.601577,
		0.533499, 0.612441, 0.583348,
		0.815921, -0.190954, -0.545719,
		33.554653, 31.092632, 48.596195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.022285, 25.055176, 50.688957> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.411385, 25.137972, 50.647163>,  <36.644844, 25.187649, 50.622089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.411385, 25.137972, 50.647163>,  <36.022285, 25.055176, 50.688957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411385, 25.137972, 50.647163> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185416, 0.423854, -0.886549,
		-0.139221, 0.881761, 0.450682,
		0.972748, 0.206990, -0.104483,
		36.703209, 25.200069, 50.615818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920128, 25.534658, 49.992249>,  <36.022285, 25.055176, 50.688957>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920128, 25.534658, 49.992249> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.316711, 25.484612, 50.006935>,  <36.554661, 25.454584, 50.015747>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.316711, 25.484612, 50.006935>,  <35.920128, 25.534658, 49.992249>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316711, 25.484612, 50.006935> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066211, 0.240449, -0.968401,
		0.112335, 0.962564, 0.246680,
		0.991462, -0.125118, 0.036721,
		36.614151, 25.447077, 50.017952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115566, 26.042707, 49.554672>,  <35.920128, 25.534658, 49.992249>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.115566, 26.042707, 49.554672> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.448067, 25.825737, 49.603336>,  <36.647568, 25.695555, 49.632534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.448067, 25.825737, 49.603336>,  <36.115566, 26.042707, 49.554672>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448067, 25.825737, 49.603336> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308462, 0.268003, -0.912702,
		0.462468, 0.796210, 0.390094,
		0.831249, -0.542425, 0.121657,
		36.697441, 25.663010, 49.639835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.696560, 26.485367, 49.446152>,  <36.115566, 26.042707, 49.554672>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.696560, 26.485367, 49.446152> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.822006, 26.109776, 49.389641>,  <36.897274, 25.884420, 49.355736>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.822006, 26.109776, 49.389641>,  <36.696560, 26.485367, 49.446152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.822006, 26.109776, 49.389641> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226107, 0.218352, -0.949315,
		0.922235, 0.265781, 0.280789,
		0.313621, -0.938980, -0.141277,
		36.916092, 25.828081, 49.347260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.336037, 26.602062, 48.940193>,  <36.696560, 26.485367, 49.446152>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.336037, 26.602062, 48.940193> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.234482, 26.215704, 48.919830>,  <37.173550, 25.983889, 48.907612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.234482, 26.215704, 48.919830>,  <37.336037, 26.602062, 48.940193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234482, 26.215704, 48.919830> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256298, -0.016432, -0.966458,
		0.932659, -0.258417, 0.251729,
		-0.253886, -0.965894, -0.050906,
		37.158318, 25.925936, 48.904560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818916, 26.150013, 48.614487>,  <37.336037, 26.602062, 48.940193>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818916, 26.150013, 48.614487> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.470303, 25.958500, 48.572170>,  <37.261135, 25.843592, 48.546780>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.470303, 25.958500, 48.572170>,  <37.818916, 26.150013, 48.614487>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470303, 25.958500, 48.572170> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110559, 0.018308, -0.993701,
		0.477702, -0.877743, 0.036978,
		-0.871537, -0.478781, -0.105788,
		37.208843, 25.814865, 48.540432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962208, 25.613720, 48.059895>,  <37.818916, 26.150013, 48.614487>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.962208, 25.613720, 48.059895> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.564953, 25.654907, 48.082077>,  <37.326599, 25.679619, 48.095387>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.564953, 25.654907, 48.082077>,  <37.962208, 25.613720, 48.059895>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564953, 25.654907, 48.082077> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061880, -0.060261, -0.996263,
		-0.099250, -0.992857, 0.066220,
		-0.993136, 0.102977, 0.055457,
		37.267010, 25.685799, 48.098713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715202, 25.185452, 47.450039>,  <37.962208, 25.613720, 48.059895>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.715202, 25.185452, 47.450039> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.429928, 25.442879, 47.561176>,  <37.258762, 25.597334, 47.627857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.429928, 25.442879, 47.561176>,  <37.715202, 25.185452, 47.450039>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.429928, 25.442879, 47.561176> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060084, 0.338778, -0.938946,
		-0.698400, -0.686332, -0.202943,
		-0.713181, 0.643566, 0.277840,
		37.215973, 25.635948, 47.644527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.265285, 25.106054, 46.866554>,  <37.715202, 25.185452, 47.450039>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.265285, 25.106054, 46.866554> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.163834, 25.445362, 47.052505>,  <37.102962, 25.648947, 47.164074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.163834, 25.445362, 47.052505>,  <37.265285, 25.106054, 46.866554>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.163834, 25.445362, 47.052505> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106986, 0.453041, -0.885047,
		-0.961367, -0.274209, -0.024152,
		-0.253630, 0.848271, 0.464875,
		37.087746, 25.699842, 47.191967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779026, 25.402605, 46.454926>,  <37.265285, 25.106054, 46.866554>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779026, 25.402605, 46.454926> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.895550, 25.720037, 46.668606>,  <36.965462, 25.910498, 46.796814>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.895550, 25.720037, 46.668606>,  <36.779026, 25.402605, 46.454926>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.895550, 25.720037, 46.668606> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054112, 0.543855, -0.837432,
		-0.955098, 0.272856, 0.115486,
		0.291306, 0.793581, 0.534200,
		36.982941, 25.958113, 46.828865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360874, 26.014183, 46.322369>,  <36.779026, 25.402605, 46.454926>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.360874, 26.014183, 46.322369> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.705742, 26.166985, 46.455479>,  <36.912663, 26.258665, 46.535343>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.705742, 26.166985, 46.455479>,  <36.360874, 26.014183, 46.322369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705742, 26.166985, 46.455479> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090063, 0.530816, -0.842688,
		-0.498552, 0.756509, 0.423249,
		0.862168, 0.382005, 0.332773,
		36.964394, 26.281586, 46.555309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271626, 26.669725, 46.193909>,  <36.360874, 26.014183, 46.322369>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271626, 26.669725, 46.193909> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.666615, 26.620993, 46.234024>,  <36.903606, 26.591753, 46.258091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.666615, 26.620993, 46.234024>,  <36.271626, 26.669725, 46.193909>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666615, 26.620993, 46.234024> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156680, 0.681507, -0.714843,
		0.018745, 0.721599, 0.692057,
		0.987471, -0.121832, 0.100285,
		36.962856, 26.584444, 46.264111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.104286, 27.076508, 46.852459>,  <36.271626, 26.669725, 46.193909>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.104286, 27.076508, 46.852459> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.852005, 27.386862, 46.858273>,  <35.700638, 27.573074, 46.861759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.852005, 27.386862, 46.858273>,  <36.104286, 27.076508, 46.852459>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.852005, 27.386862, 46.858273> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382090, -0.326787, 0.864418,
		0.675440, 0.539638, 0.502564,
		-0.630704, 0.775887, 0.014535,
		35.662792, 27.619629, 46.862633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108620, 27.224777, 47.458549>,  <36.104286, 27.076508, 46.852459>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.108620, 27.224777, 47.458549> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.779846, 27.435650, 47.372292>,  <35.582581, 27.562174, 47.320538>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.779846, 27.435650, 47.372292>,  <36.108620, 27.224777, 47.458549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779846, 27.435650, 47.372292> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356497, -0.180879, 0.916620,
		0.444218, 0.830280, 0.336609,
		-0.821937, 0.527180, -0.215642,
		35.533264, 27.593803, 47.307598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.936451, 27.705635, 48.091423>,  <36.108620, 27.224777, 47.458549>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.936451, 27.705635, 48.091423> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.609474, 27.616285, 47.879051>,  <35.413288, 27.562675, 47.751629>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.609474, 27.616285, 47.879051>,  <35.936451, 27.705635, 48.091423>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609474, 27.616285, 47.879051> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441099, -0.350003, 0.826395,
		-0.370422, 0.909726, 0.187579,
		-0.817446, -0.223374, -0.530928,
		35.364239, 27.549273, 47.719772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.379791, 27.985819, 48.469395>,  <35.936451, 27.705635, 48.091423>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.379791, 27.985819, 48.469395> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.219368, 27.702356, 48.237202>,  <35.123116, 27.532278, 48.097885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.219368, 27.702356, 48.237202>,  <35.379791, 27.985819, 48.469395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219368, 27.702356, 48.237202> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558749, -0.312907, 0.768042,
		-0.725915, 0.632372, -0.270468,
		-0.401057, -0.708657, -0.580481,
		35.099052, 27.489759, 48.063057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806770, 27.894157, 48.785389>,  <35.379791, 27.985819, 48.469395>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806770, 27.894157, 48.785389> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.727974, 27.605104, 48.520363>,  <34.680695, 27.431673, 48.361347>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.727974, 27.605104, 48.520363>,  <34.806770, 27.894157, 48.785389>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.727974, 27.605104, 48.520363> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509939, -0.501679, 0.698771,
		-0.837350, 0.475524, -0.269669,
		-0.196995, -0.722631, -0.662569,
		34.668877, 27.388315, 48.321590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.066494, 27.764139, 48.673042>,  <34.806770, 27.894157, 48.785389>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.066494, 27.764139, 48.673042> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.278660, 27.429756, 48.616703>,  <34.405960, 27.229126, 48.582901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.278660, 27.429756, 48.616703>,  <34.066494, 27.764139, 48.673042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.278660, 27.429756, 48.616703> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581257, -0.479569, 0.657384,
		-0.617092, -0.266816, -0.740275,
		0.530414, -0.835957, -0.140849,
		34.437782, 27.178968, 48.574448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.614983, 27.227568, 48.502522>,  <34.066494, 27.764139, 48.673042>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.614983, 27.227568, 48.502522> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.938297, 27.030287, 48.631157>,  <34.132286, 26.911919, 48.708340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.938297, 27.030287, 48.631157>,  <33.614983, 27.227568, 48.502522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938297, 27.030287, 48.631157> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579488, -0.569684, 0.582799,
		-0.104233, -0.657427, -0.746274,
		0.808288, -0.493204, 0.321591,
		34.180782, 26.882326, 48.727634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393703, 26.559553, 48.614342>,  <33.614983, 27.227568, 48.502522>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393703, 26.559553, 48.614342> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.723625, 26.603724, 48.836155>,  <33.921577, 26.630226, 48.969242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.723625, 26.603724, 48.836155>,  <33.393703, 26.559553, 48.614342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.723625, 26.603724, 48.836155> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410548, -0.557385, 0.721646,
		0.388776, -0.822878, -0.414398,
		0.824805, 0.110428, 0.554528,
		33.971066, 26.636852, 49.002514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642029, 25.875185, 48.790192>,  <33.393703, 26.559553, 48.614342>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642029, 25.875185, 48.790192> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.798424, 26.137863, 49.048149>,  <33.892262, 26.295469, 49.202923>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.798424, 26.137863, 49.048149>,  <33.642029, 25.875185, 48.790192>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.798424, 26.137863, 49.048149> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327943, -0.555285, 0.764272,
		0.859991, -0.510306, -0.001750,
		0.390985, 0.656694, 0.644891,
		33.915718, 26.334871, 49.241615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.865891, 25.502037, 49.324299>,  <33.642029, 25.875185, 48.790192>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.865891, 25.502037, 49.324299> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.841755, 25.857578, 49.505978>,  <33.827274, 26.070904, 49.614986>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.841755, 25.857578, 49.505978>,  <33.865891, 25.502037, 49.324299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.841755, 25.857578, 49.505978> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309709, -0.449242, 0.838011,
		0.948915, -0.090104, 0.302394,
		-0.060340, 0.888855, 0.454198,
		33.823654, 26.124235, 49.642239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.158772, 25.374268, 49.987324>,  <33.865891, 25.502037, 49.324299>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.158772, 25.374268, 49.987324> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.965527, 25.720194, 50.042023>,  <33.849579, 25.927750, 50.074841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.965527, 25.720194, 50.042023>,  <34.158772, 25.374268, 49.987324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.965527, 25.720194, 50.042023> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255983, -0.288870, 0.922511,
		0.837303, 0.410671, 0.360934,
		-0.483111, 0.864814, 0.136747,
		33.820595, 25.979639, 50.083046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.428757, 25.583487, 50.685684>,  <34.158772, 25.374268, 49.987324>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.428757, 25.583487, 50.685684> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.095482, 25.784126, 50.592567>,  <33.895515, 25.904510, 50.536697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.095482, 25.784126, 50.592567>,  <34.428757, 25.583487, 50.685684>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.095482, 25.784126, 50.592567> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333897, -0.120764, 0.934842,
		0.440802, 0.856630, 0.268102,
		-0.833191, 0.501598, -0.232793,
		33.845524, 25.934607, 50.522728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.301868, 26.090771, 51.211269>,  <34.428757, 25.583487, 50.685684>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.301868, 26.090771, 51.211269> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.957088, 26.024866, 51.019478>,  <33.750221, 25.985323, 50.904404>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.957088, 26.024866, 51.019478>,  <34.301868, 26.090771, 51.211269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957088, 26.024866, 51.019478> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449310, -0.189890, 0.872962,
		-0.234879, 0.967882, 0.089646,
		-0.861947, -0.164761, -0.479480,
		33.698505, 25.975437, 50.875633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571831, 26.466206, 51.446484>,  <34.301868, 26.090771, 51.211269>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571831, 26.466206, 51.446484> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.507252, 26.782438, 51.682762>,  <33.468506, 26.972178, 51.824528>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.507252, 26.782438, 51.682762>,  <33.571831, 26.466206, 51.446484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507252, 26.782438, 51.682762> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364144, 0.604030, -0.708906,
		-0.917243, 0.100648, -0.385402,
		-0.161444, 0.790581, 0.590692,
		33.458820, 27.019613, 51.859970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.544052, 27.056843, 51.014793>,  <33.571831, 26.466206, 51.446484>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.544052, 27.056843, 51.014793> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.627346, 27.249241, 51.355446>,  <33.677322, 27.364679, 51.559837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.627346, 27.249241, 51.355446>,  <33.544052, 27.056843, 51.014793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.627346, 27.249241, 51.355446> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426185, 0.739094, -0.521638,
		-0.880344, 0.471577, -0.051089,
		0.208232, 0.480994, 0.851636,
		33.689816, 27.393539, 51.610935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.134621, 27.713684, 51.094982>,  <33.544052, 27.056843, 51.014793>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.134621, 27.713684, 51.094982> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.470566, 27.754486, 51.308235>,  <33.672131, 27.778967, 51.436188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.470566, 27.754486, 51.308235>,  <33.134621, 27.713684, 51.094982>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.470566, 27.754486, 51.308235> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253495, 0.794790, -0.551407,
		-0.479977, 0.598251, 0.641653,
		0.839859, 0.102007, 0.533134,
		33.722523, 27.785088, 51.468174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.176743, 28.447079, 51.158451>,  <33.134621, 27.713684, 51.094982>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.176743, 28.447079, 51.158451> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.541908, 28.312551, 51.250950>,  <33.761009, 28.231834, 51.306450>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.541908, 28.312551, 51.250950>,  <33.176743, 28.447079, 51.158451>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541908, 28.312551, 51.250950> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407806, 0.728477, -0.550468,
		0.016679, 0.596833, 0.802192,
		0.912916, -0.336320, 0.231242,
		33.815784, 28.211655, 51.320324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.597275, 29.019964, 51.439533>,  <33.176743, 28.447079, 51.158451>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.597275, 29.019964, 51.439533> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.856274, 28.747234, 51.303375>,  <34.011673, 28.583595, 51.221680>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.856274, 28.747234, 51.303375>,  <33.597275, 29.019964, 51.439533>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.856274, 28.747234, 51.303375> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465906, 0.707642, -0.531201,
		0.603063, 0.185358, 0.775860,
		0.647493, -0.681826, -0.340393,
		34.050522, 28.542686, 51.201256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.221123, 29.264788, 51.602940>,  <33.597275, 29.019964, 51.439533>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.221123, 29.264788, 51.602940> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.277241, 29.005793, 51.303318>,  <34.310913, 28.850395, 51.123547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.277241, 29.005793, 51.303318>,  <34.221123, 29.264788, 51.602940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.277241, 29.005793, 51.303318> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335960, 0.742782, -0.579142,
		0.931369, -0.170399, 0.321740,
		0.140298, -0.647486, -0.749052,
		34.319328, 28.811546, 51.078602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819889, 29.562357, 51.314621>,  <34.221123, 29.264788, 51.602940>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819889, 29.562357, 51.314621> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.695950, 29.315832, 51.025028>,  <34.621586, 29.167917, 50.851273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.695950, 29.315832, 51.025028>,  <34.819889, 29.562357, 51.314621>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.695950, 29.315832, 51.025028> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395424, 0.608952, -0.687617,
		0.864660, -0.499335, 0.055024,
		-0.309845, -0.616313, -0.723985,
		34.602997, 29.130938, 50.807831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268517, 29.776114, 50.792171>,  <34.819889, 29.562357, 51.314621>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.268517, 29.776114, 50.792171> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.989372, 29.545567, 50.622093>,  <34.821884, 29.407238, 50.520046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.989372, 29.545567, 50.622093>,  <35.268517, 29.776114, 50.792171>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989372, 29.545567, 50.622093> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120493, 0.490714, -0.862949,
		0.706026, -0.653450, -0.273001,
		-0.697860, -0.576370, -0.425193,
		34.780014, 29.372656, 50.494534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.948902, 29.740261, 50.524826>,  <35.268517, 29.776114, 50.792171>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.948902, 29.740261, 50.524826> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.059334, 30.069267, 50.723721>,  <36.125591, 30.266672, 50.843060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.059334, 30.069267, 50.723721>,  <35.948902, 29.740261, 50.524826>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059334, 30.069267, 50.723721> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066967, -0.499627, 0.863648,
		0.958800, -0.271730, -0.082853,
		0.276075, 0.822518, 0.497239,
		36.142155, 30.316023, 50.872890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492352, 29.554363, 50.934269>,  <35.948902, 29.740261, 50.524826>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.492352, 29.554363, 50.934269> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.360893, 29.876614, 51.131435>,  <36.282017, 30.069963, 51.249733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.360893, 29.876614, 51.131435>,  <36.492352, 29.554363, 50.934269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360893, 29.876614, 51.131435> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089702, -0.546168, 0.832859,
		0.940184, 0.229500, 0.251762,
		-0.328646, 0.805624, 0.492912,
		36.262299, 30.118301, 51.279308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.754646, 29.400259, 51.550522>,  <36.492352, 29.554363, 50.934269>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.754646, 29.400259, 51.550522> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.481544, 29.682085, 51.627907>,  <36.317684, 29.851181, 51.674339>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.481544, 29.682085, 51.627907>,  <36.754646, 29.400259, 51.550522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481544, 29.682085, 51.627907> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198751, -0.433896, 0.878768,
		0.703092, 0.561536, 0.436279,
		-0.682759, 0.704565, 0.193463,
		36.276718, 29.893456, 51.685947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952358, 29.747768, 52.146534>,  <36.754646, 29.400259, 51.550522>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952358, 29.747768, 52.146534> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.559883, 29.821918, 52.124954>,  <36.324398, 29.866409, 52.112007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.559883, 29.821918, 52.124954>,  <36.952358, 29.747768, 52.146534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559883, 29.821918, 52.124954> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109024, -0.301405, 0.947243,
		0.159337, 0.935302, 0.315945,
		-0.981186, 0.185376, -0.053945,
		36.265526, 29.877531, 52.108772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814819, 30.000097, 52.688820>,  <36.952358, 29.747768, 52.146534>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.814819, 30.000097, 52.688820> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.442101, 29.893532, 52.590210>,  <36.218468, 29.829594, 52.531044>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.442101, 29.893532, 52.590210>,  <36.814819, 30.000097, 52.688820>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.442101, 29.893532, 52.590210> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179274, -0.252760, 0.950775,
		-0.315609, 0.930128, 0.187761,
		-0.931800, -0.266412, -0.246521,
		36.162560, 29.813608, 52.516254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413570, 30.160473, 53.348358>,  <36.814819, 30.000097, 52.688820>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.413570, 30.160473, 53.348358> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.174400, 29.900766, 53.160343>,  <36.030899, 29.744942, 53.047535>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.174400, 29.900766, 53.160343>,  <36.413570, 30.160473, 53.348358>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174400, 29.900766, 53.160343> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213224, -0.436446, 0.874100,
		-0.772672, 0.622869, 0.122522,
		-0.597924, -0.649268, -0.470040,
		35.995022, 29.705986, 53.019333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.791969, 30.109661, 53.759682>,  <36.413570, 30.160473, 53.348358>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.791969, 30.109661, 53.759682> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.810684, 29.776039, 53.539806>,  <35.821915, 29.575865, 53.407879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.810684, 29.776039, 53.539806>,  <35.791969, 30.109661, 53.759682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.810684, 29.776039, 53.539806> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157463, -0.549572, 0.820473,
		-0.986416, 0.048167, -0.157047,
		0.046789, -0.834057, -0.549691,
		35.824722, 29.525822, 53.374901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296913, 29.646626, 54.094128>,  <35.791969, 30.109661, 53.759682>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.296913, 29.646626, 54.094128> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.529858, 29.413139, 53.867809>,  <35.669624, 29.273046, 53.732018>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.529858, 29.413139, 53.867809>,  <35.296913, 29.646626, 54.094128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529858, 29.413139, 53.867809> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095064, -0.740125, 0.665716,
		-0.807352, -0.333901, -0.486511,
		0.582362, -0.583717, -0.565799,
		35.704567, 29.238024, 53.698071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003063, 28.938469, 54.029858>,  <35.296913, 29.646626, 54.094128>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003063, 28.938469, 54.029858> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.402027, 28.930452, 54.002213>,  <35.641403, 28.925642, 53.985626>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.402027, 28.930452, 54.002213>,  <35.003063, 28.938469, 54.029858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402027, 28.930452, 54.002213> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028323, -0.773598, 0.633043,
		-0.066154, -0.633360, -0.771025,
		0.997407, -0.020041, -0.069115,
		35.701248, 28.924440, 53.981480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.483944, 36.062286, 39.228756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.844933, 36.077831, 39.400356>,  <37.061523, 36.087158, 39.503315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.844933, 36.077831, 39.400356>,  <36.483944, 36.062286, 39.228756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844933, 36.077831, 39.400356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314463, -0.621191, 0.717799,
		0.294386, -0.782695, -0.548384,
		0.902469, 0.038864, 0.428999,
		37.115673, 36.089489, 39.529057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612221, 35.353802, 39.578838>,  <36.483944, 36.062286, 39.228756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612221, 35.353802, 39.578838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.846352, 35.615734, 39.770084>,  <36.986832, 35.772892, 39.884834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.846352, 35.615734, 39.770084>,  <36.612221, 35.353802, 39.578838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.846352, 35.615734, 39.770084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192395, -0.460671, 0.866468,
		0.787641, -0.599154, -0.143657,
		0.585326, 0.654826, 0.478117,
		37.021950, 35.812183, 39.913521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015903, 35.021675, 39.978874>,  <36.612221, 35.353802, 39.578838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.015903, 35.021675, 39.978874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.036709, 35.365551, 40.182140>,  <37.049191, 35.571877, 40.304100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.036709, 35.365551, 40.182140>,  <37.015903, 35.021675, 39.978874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.036709, 35.365551, 40.182140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283767, -0.475160, 0.832886,
		0.957482, -0.187520, 0.219238,
		0.052010, 0.859686, 0.508169,
		37.052311, 35.623455, 40.334591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380760, 34.812473, 40.593071>,  <37.015903, 35.021675, 39.978874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380760, 34.812473, 40.593071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.223194, 35.167179, 40.689793>,  <37.128654, 35.380005, 40.747826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.223194, 35.167179, 40.689793>,  <37.380760, 34.812473, 40.593071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223194, 35.167179, 40.689793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357156, -0.390079, 0.848692,
		0.846917, 0.247952, 0.470374,
		-0.393917, 0.886768, 0.241807,
		37.105019, 35.433208, 40.762333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477505, 34.886501, 41.259064>,  <37.380760, 34.812473, 40.593071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477505, 34.886501, 41.259064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.185608, 35.156059, 41.212860>,  <37.010471, 35.317795, 41.185139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.185608, 35.156059, 41.212860>,  <37.477505, 34.886501, 41.259064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185608, 35.156059, 41.212860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352050, -0.225513, 0.908407,
		0.586124, 0.703566, 0.401812,
		-0.729739, 0.673898, -0.115512,
		36.966686, 35.358227, 41.178207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517326, 35.357002, 41.805950>,  <37.477505, 34.886501, 41.259064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517326, 35.357002, 41.805950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.143440, 35.393906, 41.668663>,  <36.919109, 35.416046, 41.586288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.143440, 35.393906, 41.668663>,  <37.517326, 35.357002, 41.805950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143440, 35.393906, 41.668663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355402, -0.245458, 0.901909,
		-0.001037, 0.965007, 0.262221,
		-0.934713, 0.092259, -0.343221,
		36.863026, 35.421585, 41.565697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250942, 35.554882, 42.370411>,  <37.517326, 35.357002, 41.805950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250942, 35.554882, 42.370411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.918892, 35.498966, 42.154503>,  <36.719662, 35.465416, 42.024960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.918892, 35.498966, 42.154503>,  <37.250942, 35.554882, 42.370411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918892, 35.498966, 42.154503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544507, -0.005104, 0.838741,
		-0.119999, 0.990169, -0.071878,
		-0.830128, -0.139786, -0.539766,
		36.669853, 35.457031, 41.992573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777699, 36.098671, 42.591690>,  <37.250942, 35.554882, 42.370411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777699, 36.098671, 42.591690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.557076, 35.803169, 42.436756>,  <36.424702, 35.625870, 42.343796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.557076, 35.803169, 42.436756>,  <36.777699, 36.098671, 42.591690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.557076, 35.803169, 42.436756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406257, -0.167644, 0.898249,
		-0.728519, 0.652793, -0.207659,
		-0.551557, -0.738754, -0.387333,
		36.391609, 35.581543, 42.320557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145786, 36.185852, 42.877415>,  <36.777699, 36.098671, 42.591690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.145786, 36.185852, 42.877415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.136848, 35.801819, 42.765888>,  <36.131485, 35.571400, 42.698975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.136848, 35.801819, 42.765888>,  <36.145786, 36.185852, 42.877415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136848, 35.801819, 42.765888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527153, -0.225649, 0.819263,
		-0.849477, 0.165280, -0.501071,
		-0.022341, -0.960086, -0.278812,
		36.130146, 35.513794, 42.682243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487881, 35.947174, 43.142658>,  <36.145786, 36.185852, 42.877415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487881, 35.947174, 43.142658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.705685, 35.617317, 43.081364>,  <35.836369, 35.419403, 43.044586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.705685, 35.617317, 43.081364>,  <35.487881, 35.947174, 43.142658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705685, 35.617317, 43.081364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384633, -0.407848, 0.828081,
		-0.745363, -0.391959, -0.539260,
		0.544510, -0.824638, -0.153234,
		35.869038, 35.369926, 43.035393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077099, 35.441860, 43.351566>,  <35.487881, 35.947174, 43.142658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.077099, 35.441860, 43.351566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.442505, 35.279350, 43.359825>,  <35.661751, 35.181847, 43.364780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.442505, 35.279350, 43.359825>,  <35.077099, 35.441860, 43.351566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.442505, 35.279350, 43.359825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200391, -0.405247, 0.891974,
		-0.354014, -0.818974, -0.451614,
		0.913519, -0.406270, 0.020651,
		35.716560, 35.157471, 43.366020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007309, 34.667580, 43.494270>,  <35.077099, 35.441860, 43.351566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007309, 34.667580, 43.494270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382023, 34.760300, 43.599110>,  <35.606853, 34.815933, 43.662014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382023, 34.760300, 43.599110>,  <35.007309, 34.667580, 43.494270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382023, 34.760300, 43.599110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154265, -0.398722, 0.904004,
		0.314056, -0.887292, -0.337759,
		0.936787, 0.231804, 0.262099,
		35.663059, 34.829842, 43.677738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945885, 33.954544, 43.202492>,  <35.007309, 34.667580, 43.494270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.945885, 33.954544, 43.202492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566338, 33.999306, 43.320564>,  <34.338612, 34.026161, 43.391407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566338, 33.999306, 43.320564>,  <34.945885, 33.954544, 43.202492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566338, 33.999306, 43.320564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159056, 0.638231, -0.753234,
		-0.272682, -0.761668, -0.587797,
		-0.948865, 0.111901, 0.295182,
		34.281677, 34.032875, 43.409119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523670, 34.085289, 42.613697>,  <34.945885, 33.954544, 43.202492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523670, 34.085289, 42.613697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.278652, 34.229866, 42.894878>,  <34.131641, 34.316612, 43.063587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.278652, 34.229866, 42.894878>,  <34.523670, 34.085289, 42.613697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.278652, 34.229866, 42.894878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368854, 0.655852, -0.658639,
		-0.699093, -0.662736, -0.268422,
		-0.612548, 0.361442, 0.702954,
		34.094887, 34.338299, 43.105766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873219, 34.087318, 42.361130>,  <34.523670, 34.085289, 42.613697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873219, 34.087318, 42.361130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.847420, 34.359516, 42.653095>,  <33.831940, 34.522835, 42.828274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.847420, 34.359516, 42.653095>,  <33.873219, 34.087318, 42.361130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847420, 34.359516, 42.653095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509777, 0.606329, -0.610322,
		-0.857886, -0.411454, 0.307795,
		-0.064494, 0.680493, 0.729911,
		33.828072, 34.563663, 42.872070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.191833, 34.177231, 42.496754>,  <33.873219, 34.087318, 42.361130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.191833, 34.177231, 42.496754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.371578, 34.509609, 42.627960>,  <33.479427, 34.709038, 42.706684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.371578, 34.509609, 42.627960>,  <33.191833, 34.177231, 42.496754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.371578, 34.509609, 42.627960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562048, 0.548368, -0.619188,
		-0.694387, 0.093882, 0.713451,
		0.449365, 0.830950, 0.328014,
		33.506386, 34.758896, 42.726364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.622467, 34.644485, 42.529114>,  <33.191833, 34.177231, 42.496754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.622467, 34.644485, 42.529114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940948, 34.882751, 42.571518>,  <33.132038, 35.025711, 42.596962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940948, 34.882751, 42.571518>,  <32.622467, 34.644485, 42.529114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.940948, 34.882751, 42.571518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546367, 0.783155, -0.296903,
		-0.259878, 0.178475, 0.949005,
		0.796208, 0.595663, 0.106011,
		33.179810, 35.061451, 42.603321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.447941, 35.204308, 42.876190>,  <32.622467, 34.644485, 42.529114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.447941, 35.204308, 42.876190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.777107, 35.310181, 42.675095>,  <32.974609, 35.373703, 42.554436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.777107, 35.310181, 42.675095>,  <32.447941, 35.204308, 42.876190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.777107, 35.310181, 42.675095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468765, 0.816285, -0.337549,
		0.321037, 0.513443, 0.795809,
		0.822919, 0.264681, -0.502741,
		33.023983, 35.389584, 42.524273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613750, 36.071457, 42.911449>,  <32.447941, 35.204308, 42.876190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613750, 36.071457, 42.911449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.805206, 35.916042, 42.596504>,  <32.920078, 35.822792, 42.407536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.805206, 35.916042, 42.596504>,  <32.613750, 36.071457, 42.911449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.805206, 35.916042, 42.596504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518223, 0.598890, -0.610554,
		0.708768, 0.700265, 0.085302,
		0.478636, -0.388536, -0.787367,
		32.948795, 35.799480, 42.360294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.840916, 36.629120, 42.594810>,  <32.613750, 36.071457, 42.911449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.840916, 36.629120, 42.594810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.853596, 36.332039, 42.327263>,  <32.861206, 36.153790, 42.166737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.853596, 36.332039, 42.327263>,  <32.840916, 36.629120, 42.594810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853596, 36.332039, 42.327263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527729, 0.555880, -0.642261,
		0.848821, 0.373343, -0.374323,
		0.031705, -0.742706, -0.668867,
		32.863106, 36.109226, 42.126602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.928841, 36.979858, 41.932579>,  <32.840916, 36.629120, 42.594810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.928841, 36.979858, 41.932579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.792313, 36.624302, 41.810349>,  <32.710396, 36.410969, 41.737011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.792313, 36.624302, 41.810349>,  <32.928841, 36.979858, 41.932579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.792313, 36.624302, 41.810349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517507, 0.449103, -0.728349,
		0.784657, -0.090462, -0.613294,
		-0.341320, -0.888888, -0.305578,
		32.689915, 36.357635, 41.718674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.051495, 36.884686, 41.154945>,  <32.928841, 36.979858, 41.932579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.051495, 36.884686, 41.154945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.774784, 36.597488, 41.185745>,  <32.608757, 36.425171, 41.204227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.774784, 36.597488, 41.185745>,  <33.051495, 36.884686, 41.154945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.774784, 36.597488, 41.185745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521932, 0.423460, -0.740452,
		0.499035, -0.552415, -0.667684,
		-0.691774, -0.717997, 0.077001,
		32.567253, 36.382088, 41.208847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.076805, 36.541943, 40.511021>,  <33.051495, 36.884686, 41.154945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.076805, 36.541943, 40.511021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.716984, 36.469696, 40.670105>,  <32.501091, 36.426350, 40.765556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.716984, 36.469696, 40.670105>,  <33.076805, 36.541943, 40.511021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716984, 36.469696, 40.670105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436801, 0.368848, -0.820461,
		0.001492, -0.911773, -0.410692,
		-0.899557, -0.180615, 0.397713,
		32.447117, 36.415512, 40.789417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.653709, 36.027603, 40.087902>,  <33.076805, 36.541943, 40.511021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.653709, 36.027603, 40.087902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.383331, 36.239845, 40.292473>,  <32.221104, 36.367191, 40.415215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.383331, 36.239845, 40.292473>,  <32.653709, 36.027603, 40.087902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.383331, 36.239845, 40.292473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461755, 0.235916, -0.855059,
		-0.574353, -0.814126, 0.085544,
		-0.675945, 0.530606, 0.511425,
		32.180550, 36.399029, 40.445900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.088028, 36.302185, 39.531696>,  <32.653709, 36.027603, 40.087902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.088028, 36.302185, 39.531696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.374409, 36.115856, 39.739704>,  <33.546238, 36.004059, 39.864510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.374409, 36.115856, 39.739704>,  <33.088028, 36.302185, 39.531696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.374409, 36.115856, 39.739704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687986, -0.344104, 0.638958,
		-0.118702, -0.815229, -0.566843,
		0.715950, -0.465826, 0.520021,
		33.589195, 35.976109, 39.895710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.935677, 35.561028, 39.473591>,  <33.088028, 36.302185, 39.531696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.935677, 35.561028, 39.473591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.139240, 35.643105, 39.807995>,  <33.261379, 35.692348, 40.008636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.139240, 35.643105, 39.807995>,  <32.935677, 35.561028, 39.473591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.139240, 35.643105, 39.807995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549600, -0.670019, 0.499014,
		0.662533, -0.713422, -0.228207,
		0.508911, 0.205191, 0.836006,
		33.291912, 35.704662, 40.058796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319195, 34.902378, 39.096996>,  <32.935677, 35.561028, 39.473591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319195, 34.902378, 39.096996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.367176, 35.132683, 39.420506>,  <33.395966, 35.270866, 39.614613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.367176, 35.132683, 39.420506>,  <33.319195, 34.902378, 39.096996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.367176, 35.132683, 39.420506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699967, -0.626759, 0.342371,
		0.704029, 0.525045, -0.478195,
		0.119953, 0.575760, 0.808772,
		33.403160, 35.305412, 39.663136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.831131, 34.697998, 39.268829>,  <33.319195, 34.902378, 39.096996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.831131, 34.697998, 39.268829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.744728, 34.917149, 39.592106>,  <33.692886, 35.048637, 39.786072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.744728, 34.917149, 39.592106>,  <33.831131, 34.697998, 39.268829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.744728, 34.917149, 39.592106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581235, -0.592940, 0.557304,
		0.784543, 0.590129, -0.190368,
		-0.216004, 0.547878, 0.808191,
		33.679928, 35.081512, 39.834564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.541431, 34.864895, 39.229393>,  <33.831131, 34.697998, 39.268829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.541431, 34.864895, 39.229393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.832241, 34.620152, 39.104767>,  <35.006725, 34.473305, 39.029991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.832241, 34.620152, 39.104767>,  <34.541431, 34.864895, 39.229393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.832241, 34.620152, 39.104767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070759, -0.518117, 0.852378,
		-0.682958, -0.597652, -0.419977,
		0.727023, -0.611855, -0.311563,
		35.050346, 34.436596, 39.011299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363388, 34.187412, 39.310947>,  <34.541431, 34.864895, 39.229393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363388, 34.187412, 39.310947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.763248, 34.184578, 39.300747>,  <35.003166, 34.182877, 39.294628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.763248, 34.184578, 39.300747>,  <34.363388, 34.187412, 39.310947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.763248, 34.184578, 39.300747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017001, -0.566569, 0.823839,
		-0.020286, -0.823984, -0.566250,
		0.999650, -0.007085, -0.025502,
		35.063145, 34.182453, 39.293095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531998, 33.383270, 39.401890>,  <34.363388, 34.187412, 39.310947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531998, 33.383270, 39.401890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.858135, 33.597752, 39.489246>,  <35.053818, 33.726440, 39.541660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.858135, 33.597752, 39.489246>,  <34.531998, 33.383270, 39.401890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858135, 33.597752, 39.489246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012884, -0.393918, 0.919055,
		0.578834, -0.746532, -0.328087,
		0.815344, 0.536207, 0.218395,
		35.102737, 33.758614, 39.554764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983929, 32.882004, 39.760487>,  <34.531998, 33.383270, 39.401890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983929, 32.882004, 39.760487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.115425, 33.251358, 39.839775>,  <35.194321, 33.472969, 39.887348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.115425, 33.251358, 39.839775>,  <34.983929, 32.882004, 39.760487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115425, 33.251358, 39.839775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290137, -0.298478, 0.909248,
		0.898750, -0.241395, -0.366029,
		0.328739, 0.923385, 0.198219,
		35.214046, 33.528374, 39.899242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739056, 32.805954, 39.771488>,  <34.983929, 32.882004, 39.760487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739056, 32.805954, 39.771488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644028, 33.118088, 40.002880>,  <35.587009, 33.305367, 40.141716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644028, 33.118088, 40.002880>,  <35.739056, 32.805954, 39.771488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644028, 33.118088, 40.002880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545382, -0.385655, 0.744197,
		0.803815, 0.492293, -0.333959,
		-0.237571, 0.780332, 0.578483,
		35.572758, 33.352188, 40.176426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343277, 32.965183, 40.083469>,  <35.739056, 32.805954, 39.771488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343277, 32.965183, 40.083469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.050980, 33.109879, 40.315044>,  <35.875603, 33.196697, 40.453987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.050980, 33.109879, 40.315044>,  <36.343277, 32.965183, 40.083469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050980, 33.109879, 40.315044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378708, -0.490785, 0.784672,
		0.567980, 0.792637, 0.221642,
		-0.730739, 0.361740, 0.578934,
		35.831757, 33.218399, 40.488724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616772, 33.020851, 40.693508>,  <36.343277, 32.965183, 40.083469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.616772, 33.020851, 40.693508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.236355, 33.073757, 40.805244>,  <36.008106, 33.105499, 40.872288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.236355, 33.073757, 40.805244>,  <36.616772, 33.020851, 40.693508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.236355, 33.073757, 40.805244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182659, -0.488557, 0.853198,
		0.249321, 0.862449, 0.440478,
		-0.951039, 0.132263, 0.279342,
		35.951042, 33.113438, 40.889046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.552212, 33.359196, 41.375648>,  <36.616772, 33.020851, 40.693508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.552212, 33.359196, 41.375648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.206436, 33.163902, 41.327686>,  <35.998970, 33.046726, 41.298908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.206436, 33.163902, 41.327686>,  <36.552212, 33.359196, 41.375648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.206436, 33.163902, 41.327686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085542, -0.377873, 0.921897,
		-0.495408, 0.786666, 0.368412,
		-0.864438, -0.488230, -0.119909,
		35.947105, 33.017433, 41.291714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.263172, 33.321178, 42.034485>,  <36.552212, 33.359196, 41.375648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.263172, 33.321178, 42.034485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.071705, 33.033615, 41.832870>,  <35.956825, 32.861076, 41.711903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.071705, 33.033615, 41.832870>,  <36.263172, 33.321178, 42.034485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.071705, 33.033615, 41.832870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045730, -0.552882, 0.832004,
		-0.876804, 0.421304, 0.231773,
		-0.478669, -0.718905, -0.504035,
		35.928104, 32.817944, 41.681660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653698, 33.133438, 42.450703>,  <36.263172, 33.321178, 42.034485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.653698, 33.133438, 42.450703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743195, 32.820587, 42.218075>,  <35.796894, 32.632877, 42.078499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743195, 32.820587, 42.218075>,  <35.653698, 33.133438, 42.450703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.743195, 32.820587, 42.218075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040471, -0.603635, 0.796232,
		-0.973808, -0.154614, -0.166713,
		0.223743, -0.782124, -0.581567,
		35.810318, 32.585949, 42.043606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146374, 32.636845, 42.674423>,  <35.653698, 33.133438, 42.450703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146374, 32.636845, 42.674423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.424606, 32.422268, 42.483257>,  <35.591545, 32.293522, 42.368557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.424606, 32.422268, 42.483257>,  <35.146374, 32.636845, 42.674423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424606, 32.422268, 42.483257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107627, -0.735494, 0.668928,
		-0.710336, -0.413862, -0.569334,
		0.695586, -0.536439, -0.477905,
		35.633282, 32.261333, 42.339886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965019, 31.855766, 42.689907>,  <35.146374, 32.636845, 42.674423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965019, 31.855766, 42.689907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.358700, 31.867462, 42.620056>,  <35.594910, 31.874479, 42.578148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.358700, 31.867462, 42.620056>,  <34.965019, 31.855766, 42.689907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.358700, 31.867462, 42.620056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135044, -0.761810, 0.633568,
		-0.114507, -0.647140, -0.753723,
		0.984201, 0.029238, -0.174625,
		35.653961, 31.876234, 42.567669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.162621, 31.113966, 42.680981>,  <34.965019, 31.855766, 42.689907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.162621, 31.113966, 42.680981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520805, 31.290751, 42.702217>,  <35.735718, 31.396820, 42.714958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520805, 31.290751, 42.702217>,  <35.162621, 31.113966, 42.680981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520805, 31.290751, 42.702217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334686, -0.747105, 0.574300,
		0.293483, -0.496494, -0.816922,
		0.895462, 0.441960, 0.053093,
		35.789444, 31.423338, 42.718143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.677620, 30.604856, 42.435863>,  <35.162621, 31.113966, 42.680981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.677620, 30.604856, 42.435863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809357, 30.885895, 42.688179>,  <35.888401, 31.054518, 42.839569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809357, 30.885895, 42.688179>,  <35.677620, 30.604856, 42.435863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809357, 30.885895, 42.688179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353787, -0.711217, 0.607459,
		0.875424, 0.023101, -0.482804,
		0.329346, 0.702594, 0.630788,
		35.908161, 31.096672, 42.877415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364124, 30.339096, 42.618656>,  <35.677620, 30.604856, 42.435863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.364124, 30.339096, 42.618656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.275921, 30.625004, 42.884129>,  <36.223000, 30.796549, 43.043411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.275921, 30.625004, 42.884129>,  <36.364124, 30.339096, 42.618656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.275921, 30.625004, 42.884129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241615, -0.619199, 0.747138,
		0.944985, 0.325108, -0.036159,
		-0.220511, 0.714771, 0.663685,
		36.209766, 30.839436, 43.083233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872478, 30.158331, 43.236328>,  <36.364124, 30.339096, 42.618656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.872478, 30.158331, 43.236328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611076, 30.411184, 43.402866>,  <36.454235, 30.562897, 43.502789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611076, 30.411184, 43.402866>,  <36.872478, 30.158331, 43.236328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611076, 30.411184, 43.402866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177251, -0.406948, 0.896089,
		0.735875, 0.659396, 0.153897,
		-0.653505, 0.632131, 0.416342,
		36.415024, 30.600824, 43.527767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194744, 30.513248, 43.727131>,  <36.872478, 30.158331, 43.236328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194744, 30.513248, 43.727131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.814762, 30.501709, 43.851555>,  <36.586773, 30.494785, 43.926208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.814762, 30.501709, 43.851555>,  <37.194744, 30.513248, 43.727131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814762, 30.501709, 43.851555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266682, -0.593485, 0.759379,
		0.162705, 0.804328, 0.571475,
		-0.949952, -0.028847, 0.311063,
		36.529778, 30.493055, 43.944874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313305, 30.411196, 44.380569>,  <37.194744, 30.513248, 43.727131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313305, 30.411196, 44.380569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.926571, 30.311073, 44.360256>,  <36.694530, 30.250999, 44.348068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.926571, 30.311073, 44.360256>,  <37.313305, 30.411196, 44.380569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.926571, 30.311073, 44.360256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114634, -0.602964, 0.789489,
		-0.228234, 0.757484, 0.611660,
		-0.966834, -0.250305, -0.050783,
		36.636520, 30.235981, 44.345020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118851, 30.336500, 45.015854>,  <37.313305, 30.411196, 44.380569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118851, 30.336500, 45.015854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828808, 30.144728, 44.818119>,  <36.654781, 30.029665, 44.699478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828808, 30.144728, 44.818119>,  <37.118851, 30.336500, 45.015854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828808, 30.144728, 44.818119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212364, -0.527186, 0.822786,
		-0.655076, 0.701585, 0.280452,
		-0.725105, -0.479430, -0.494339,
		36.611275, 30.000898, 44.669819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.577087, 30.217110, 45.454006>,  <37.118851, 30.336500, 45.015854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.577087, 30.217110, 45.454006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521870, 29.934891, 45.175972>,  <36.488739, 29.765560, 45.009151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521870, 29.934891, 45.175972>,  <36.577087, 30.217110, 45.454006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521870, 29.934891, 45.175972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251529, -0.653822, 0.713617,
		-0.957954, 0.273347, -0.087207,
		-0.138047, -0.705548, -0.695087,
		36.480457, 29.723227, 44.967445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977337, 29.913694, 45.665615>,  <36.577087, 30.217110, 45.454006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977337, 29.913694, 45.665615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.110722, 29.635748, 45.410755>,  <36.190754, 29.468981, 45.257839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.110722, 29.635748, 45.410755>,  <35.977337, 29.913694, 45.665615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110722, 29.635748, 45.410755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385550, -0.717251, 0.580434,
		-0.860321, 0.052099, -0.507083,
		0.333466, -0.694865, -0.637153,
		36.210762, 29.427288, 45.219608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.412678, 29.524811, 45.588505>,  <35.977337, 29.913694, 45.665615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.412678, 29.524811, 45.588505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.726147, 29.295076, 45.493855>,  <35.914230, 29.157236, 45.437065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.726147, 29.295076, 45.493855>,  <35.412678, 29.524811, 45.588505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.726147, 29.295076, 45.493855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342638, -0.717426, 0.606547,
		-0.518122, -0.394260, -0.759018,
		0.783677, -0.574334, -0.236625,
		35.961250, 29.122776, 45.422867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.149036, 28.833735, 45.418758>,  <35.412678, 29.524811, 45.588505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.149036, 28.833735, 45.418758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.537949, 28.796877, 45.504719>,  <35.771297, 28.774761, 45.556293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.537949, 28.796877, 45.504719>,  <35.149036, 28.833735, 45.418758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537949, 28.796877, 45.504719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194476, -0.828948, 0.524428,
		0.129818, -0.551684, -0.823889,
		0.972279, -0.092146, 0.214901,
		35.829632, 28.769234, 45.569191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.249649, 28.179613, 45.311871>,  <35.149036, 28.833735, 45.418758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.249649, 28.179613, 45.311871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.538219, 28.319859, 45.550739>,  <35.711361, 28.404005, 45.694061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.538219, 28.319859, 45.550739>,  <35.249649, 28.179613, 45.311871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.538219, 28.319859, 45.550739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248583, -0.673760, 0.695884,
		0.646336, -0.650476, -0.398912,
		0.721426, 0.350612, 0.597173,
		35.754646, 28.425041, 45.729893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.412258, 27.561052, 45.611164>,  <35.249649, 28.179613, 45.311871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.412258, 27.561052, 45.611164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.562443, 27.844400, 45.850243>,  <35.652554, 28.014410, 45.993690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.562443, 27.844400, 45.850243>,  <35.412258, 27.561052, 45.611164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.562443, 27.844400, 45.850243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168039, -0.582161, 0.795520,
		0.911479, -0.399121, -0.099544,
		0.375460, 0.708372, 0.597695,
		35.675079, 28.056911, 46.029552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.971867, 27.331619, 45.970123>,  <35.412258, 27.561052, 45.611164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.971867, 27.331619, 45.970123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.826023, 27.602623, 46.225636>,  <35.738518, 27.765226, 46.378944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.826023, 27.602623, 46.225636>,  <35.971867, 27.331619, 45.970123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.826023, 27.602623, 46.225636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127918, -0.715943, 0.686339,
		0.922333, 0.168532, 0.347704,
		-0.364606, 0.677511, 0.638780,
		35.716640, 27.805876, 46.417271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.591049, 27.322048, 46.210613>,  <35.971867, 27.331619, 45.970123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.591049, 27.322048, 46.210613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.904682, 27.085733, 46.134525>,  <37.092861, 26.943945, 46.088871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.904682, 27.085733, 46.134525>,  <36.591049, 27.322048, 46.210613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904682, 27.085733, 46.134525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359703, 0.682314, -0.636444,
		0.505791, 0.430604, 0.747500,
		0.784085, -0.590786, -0.190218,
		37.139908, 26.908497, 46.077461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154724, 27.721102, 46.369049>,  <36.591049, 27.322048, 46.210613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154724, 27.721102, 46.369049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.271351, 27.442787, 46.106487>,  <37.341328, 27.275799, 45.948952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.271351, 27.442787, 46.106487>,  <37.154724, 27.721102, 46.369049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.271351, 27.442787, 46.106487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404090, 0.711577, -0.574778,
		0.867005, -0.097658, 0.488636,
		0.291570, -0.695788, -0.656403,
		37.358822, 27.234051, 45.909565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650131, 28.026215, 46.015095>,  <37.154724, 27.721102, 46.369049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650131, 28.026215, 46.015095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.643520, 27.695782, 45.789772>,  <37.639553, 27.497522, 45.654579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.643520, 27.695782, 45.789772>,  <37.650131, 28.026215, 46.015095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643520, 27.695782, 45.789772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442597, 0.499138, -0.744963,
		0.896568, -0.261633, 0.357370,
		-0.016530, -0.826081, -0.563309,
		37.638561, 27.447958, 45.620781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295300, 27.796841, 45.869389>,  <37.650131, 28.026215, 46.015095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.295300, 27.796841, 45.869389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.062347, 27.673765, 45.568413>,  <37.922577, 27.599920, 45.387829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.062347, 27.673765, 45.568413>,  <38.295300, 27.796841, 45.869389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.062347, 27.673765, 45.568413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708669, 0.261323, -0.655362,
		0.398276, -0.914898, 0.065860,
		-0.582379, -0.307688, -0.752438,
		37.887634, 27.581459, 45.342682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705856, 27.416224, 45.434074>,  <38.295300, 27.796841, 45.869389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.705856, 27.416224, 45.434074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.401859, 27.532372, 45.201492>,  <38.219460, 27.602060, 45.061943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.401859, 27.532372, 45.201492>,  <38.705856, 27.416224, 45.434074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.401859, 27.532372, 45.201492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648614, 0.395768, -0.650129,
		0.041345, -0.871237, -0.489119,
		-0.759994, 0.290369, -0.581459,
		38.173862, 27.619482, 45.027054>
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
