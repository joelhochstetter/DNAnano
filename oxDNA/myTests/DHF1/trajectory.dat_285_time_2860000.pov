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
	<3.826909, 5.613788, 1.713834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.456333, 5.470795, 1.666645>,  <3.233988, 5.384999, 1.638332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.456333, 5.470795, 1.666645>,  <3.826909, 5.613788, 1.713834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.456333, 5.470795, 1.666645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275631, -0.857606, 0.434212,
		-0.256397, 0.369753, 0.893052,
		-0.926438, -0.357484, -0.117972,
		3.178402, 5.363550, 1.631253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.534340, 5.356553, 2.324190>,  <3.826909, 5.613788, 1.713834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.534340, 5.356553, 2.324190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.282955, 5.184525, 2.064938>,  <3.132124, 5.081307, 1.909386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.282955, 5.184525, 2.064938>,  <3.534340, 5.356553, 2.324190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.282955, 5.184525, 2.064938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108385, -0.873535, 0.474542,
		-0.770252, 0.227984, 0.595597,
		-0.628462, -0.430070, -0.648131,
		3.094416, 5.055503, 1.870498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.848118, 5.165574, 2.641847>,  <3.534340, 5.356553, 2.324190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.848118, 5.165574, 2.641847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.983131, 4.932709, 2.345966>,  <3.064140, 4.792990, 2.168438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.983131, 4.932709, 2.345966>,  <2.848118, 5.165574, 2.641847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.983131, 4.932709, 2.345966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061089, -0.770615, 0.634367,
		-0.939329, -0.259308, -0.224545,
		0.337534, -0.582162, -0.739701,
		3.084392, 4.758060, 2.124056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.468562, 4.556075, 2.777160>,  <2.848118, 5.165574, 2.641847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.468562, 4.556075, 2.777160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.790783, 4.413025, 2.588188>,  <2.984116, 4.327195, 2.474805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.790783, 4.413025, 2.588188>,  <2.468562, 4.556075, 2.777160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.790783, 4.413025, 2.588188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041892, -0.829696, 0.556641,
		-0.591041, -0.428612, -0.683346,
		0.805553, -0.357624, -0.472429,
		3.032449, 4.305737, 2.446459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.357438, 3.811107, 2.471251>,  <2.468562, 4.556075, 2.777160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.357438, 3.811107, 2.471251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.741261, 3.878098, 2.561764>,  <2.971554, 3.918292, 2.616071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.741261, 3.878098, 2.561764>,  <2.357438, 3.811107, 2.471251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.741261, 3.878098, 2.561764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053776, -0.898036, 0.436622,
		0.276333, -0.406795, -0.870723,
		0.959556, 0.167477, 0.226281,
		3.029127, 3.928341, 2.629648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.754687, 3.351254, 2.097869>,  <2.357438, 3.811107, 2.471251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.754687, 3.351254, 2.097869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.937859, 3.451981, 2.438900>,  <3.047762, 3.512416, 2.643519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.937859, 3.451981, 2.438900>,  <2.754687, 3.351254, 2.097869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.937859, 3.451981, 2.438900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029855, -0.962858, 0.268352,
		0.888487, -0.097433, -0.448439,
		0.457930, 0.251816, 0.852578,
		3.075238, 3.527525, 2.694673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.201170, 2.818981, 2.183650>,  <2.754687, 3.351254, 2.097869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.201170, 2.818981, 2.183650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.214680, 2.983170, 2.548149>,  <3.222786, 3.081683, 2.766849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.214680, 2.983170, 2.548149>,  <3.201170, 2.818981, 2.183650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.214680, 2.983170, 2.548149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164897, -0.901561, 0.399996,
		0.985732, 0.136752, -0.098135,
		0.033775, 0.410472, 0.911248,
		3.224812, 3.106311, 2.821523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.830792, 2.571432, 2.570386>,  <3.201170, 2.818981, 2.183650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.830792, 2.571432, 2.570386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.558731, 2.688644, 2.839169>,  <3.395494, 2.758972, 3.000438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.558731, 2.688644, 2.839169>,  <3.830792, 2.571432, 2.570386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.558731, 2.688644, 2.839169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181263, -0.820943, 0.541477,
		0.710306, 0.490088, 0.505251,
		-0.680153, 0.293031, 0.671955,
		3.354685, 2.776554, 3.040755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.244367, 1.253051, 3.661603> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.026874, 1.393631, 3.966454>,  <2.896378, 1.477979, 4.149364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.026874, 1.393631, 3.966454>,  <3.244367, 1.253051, 3.661603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.026874, 1.393631, 3.966454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056053, 0.921275, -0.384851,
		-0.837385, -0.166537, -0.520627,
		-0.543733, 0.351451, 0.762127,
		2.863754, 1.499066, 4.195092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.674027, 1.571127, 3.390593>,  <3.244367, 1.253051, 3.661603>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.674027, 1.571127, 3.390593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.772160, 1.749985, 3.734657>,  <2.831039, 1.857299, 3.941096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.772160, 1.749985, 3.734657>,  <2.674027, 1.571127, 3.390593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.772160, 1.749985, 3.734657> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006437, 0.888007, -0.459785,
		-0.969418, 0.107262, 0.220733,
		0.245330, 0.447145, 0.860160,
		2.845759, 1.884128, 3.992705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.366017, 2.184556, 3.393306>,  <2.674027, 1.571127, 3.390593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.366017, 2.184556, 3.393306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.670213, 2.251556, 3.644257>,  <2.852730, 2.291756, 3.794827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.670213, 2.251556, 3.644257>,  <2.366017, 2.184556, 3.393306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.670213, 2.251556, 3.644257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063167, 0.942493, -0.328201,
		-0.646271, 0.289223, 0.706176,
		0.760489, 0.167500, 0.627375,
		2.898360, 2.301806, 3.832469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.359724, 2.628949, 3.898504>,  <2.366017, 2.184556, 3.393306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.359724, 2.628949, 3.898504> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.743624, 2.625412, 3.786217>,  <2.973963, 2.623290, 3.718844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.743624, 2.625412, 3.786217>,  <2.359724, 2.628949, 3.898504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.743624, 2.625412, 3.786217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073102, 0.957191, -0.280076,
		0.271178, 0.289324, 0.918017,
		0.959749, -0.008842, -0.280719,
		3.031549, 2.622760, 3.702001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.652844, 3.282880, 3.999429>,  <2.359724, 2.628949, 3.898504>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.652844, 3.282880, 3.999429> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.903019, 3.124756, 3.730339>,  <3.053124, 3.029881, 3.568885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.903019, 3.124756, 3.730339>,  <2.652844, 3.282880, 3.999429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.903019, 3.124756, 3.730339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046118, 0.879385, -0.473873,
		0.778910, 0.265354, 0.568231,
		0.625438, -0.395310, -0.672724,
		3.090650, 3.006163, 3.528522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.159337, 3.724455, 4.005034>,  <2.652844, 3.282880, 3.999429>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.159337, 3.724455, 4.005034> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.172244, 3.529022, 3.656265>,  <3.179988, 3.411763, 3.447004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.172244, 3.529022, 3.656265>,  <3.159337, 3.724455, 4.005034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.172244, 3.529022, 3.656265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188819, 0.859647, -0.474715,
		0.981482, -0.149318, 0.119991,
		0.032266, -0.488581, -0.871922,
		3.181924, 3.382448, 3.394689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.764947, 3.906273, 3.681089>,  <3.159337, 3.724455, 4.005034>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.764947, 3.906273, 3.681089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.533824, 3.784897, 3.378021>,  <3.395150, 3.712071, 3.196181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.533824, 3.784897, 3.378021>,  <3.764947, 3.906273, 3.681089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.533824, 3.784897, 3.378021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244757, 0.821173, -0.515528,
		0.778607, -0.483321, -0.400214,
		-0.577810, -0.303439, -0.757668,
		3.360481, 3.693865, 3.150721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.097432, 3.872566, 3.096540>,  <3.764947, 3.906273, 3.681089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.097432, 3.872566, 3.096540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.722239, 3.978668, 3.007248>,  <3.497124, 4.042330, 2.953672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.722239, 3.978668, 3.007248>,  <4.097432, 3.872566, 3.096540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.722239, 3.978668, 3.007248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345620, 0.664927, -0.662132,
		-0.027202, -0.698219, -0.715367,
		-0.937980, 0.265257, -0.223231,
		3.440845, 4.058245, 2.940279>
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
