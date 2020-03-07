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
	<5.120477, 0.551170, 4.694138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.189678, 0.898342, 4.880371>,  <5.231199, 1.106645, 4.992111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.189678, 0.898342, 4.880371>,  <5.120477, 0.551170, 4.694138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.189678, 0.898342, 4.880371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431280, 0.491740, -0.756432,
		-0.885476, -0.069933, 0.459393,
		0.173003, 0.867929, 0.465584,
		5.241579, 1.158721, 5.020046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.475268, 0.835802, 4.730941>,  <5.120477, 0.551170, 4.694138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.475268, 0.835802, 4.730941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.773476, 1.102366, 4.734906>,  <4.952400, 1.262305, 4.737285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.773476, 1.102366, 4.734906>,  <4.475268, 0.835802, 4.730941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.773476, 1.102366, 4.734906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460034, 0.525291, -0.715848,
		-0.482256, 0.529118, 0.698186,
		0.745518, 0.666412, 0.009912,
		4.997131, 1.302290, 4.737880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.376639, 1.497561, 5.172460>,  <4.475268, 0.835802, 4.730941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.376639, 1.497561, 5.172460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.579941, 1.501719, 4.828002>,  <4.701922, 1.504213, 4.621327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.579941, 1.501719, 4.828002>,  <4.376639, 1.497561, 5.172460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.579941, 1.501719, 4.828002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748814, 0.499241, -0.435931,
		0.425388, 0.866401, 0.261524,
		0.508254, 0.010393, -0.861144,
		4.732417, 1.504836, 4.569659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.161859, 2.117674, 4.883286>,  <4.376639, 1.497561, 5.172460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.161859, 2.117674, 4.883286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.328300, 1.907490, 4.586436>,  <4.428165, 1.781379, 4.408327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.328300, 1.907490, 4.586436>,  <4.161859, 2.117674, 4.883286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.328300, 1.907490, 4.586436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737158, 0.282919, -0.613641,
		0.532405, 0.802401, -0.269624,
		0.416104, -0.525461, -0.742124,
		4.453132, 1.749851, 4.363799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.212610, 2.569041, 4.235932>,  <4.161859, 2.117674, 4.883286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.212610, 2.569041, 4.235932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.193024, 2.186472, 4.120792>,  <4.181272, 1.956930, 4.051708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.193024, 2.186472, 4.120792>,  <4.212610, 2.569041, 4.235932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.193024, 2.186472, 4.120792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694535, 0.239717, -0.678348,
		0.717790, 0.166706, -0.676008,
		-0.048966, -0.956423, -0.287850,
		4.178334, 1.899545, 4.034438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.258017, 2.560708, 3.554446>,  <4.212610, 2.569041, 4.235932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.258017, 2.560708, 3.554446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.100246, 2.198661, 3.617929>,  <4.005584, 1.981432, 3.656018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.100246, 2.198661, 3.617929>,  <4.258017, 2.560708, 3.554446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.100246, 2.198661, 3.617929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615969, 0.132253, -0.776590,
		0.681916, -0.404066, -0.609690,
		-0.394427, -0.905119, 0.158706,
		3.981918, 1.927125, 3.665540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.313085, 2.255723, 2.946001>,  <4.258017, 2.560708, 3.554446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.313085, 2.255723, 2.946001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.033928, 2.027708, 3.119438>,  <3.866434, 1.890899, 3.223500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.033928, 2.027708, 3.119438>,  <4.313085, 2.255723, 2.946001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.033928, 2.027708, 3.119438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638336, 0.220552, -0.737485,
		0.324768, -0.791461, -0.517799,
		-0.697892, -0.570041, 0.433590,
		3.824560, 1.856697, 3.249516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.015340, 1.751092, 2.434994>,  <4.313085, 2.255723, 2.946001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.015340, 1.751092, 2.434994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.754848, 1.807658, 2.733230>,  <3.598554, 1.841598, 2.912171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.754848, 1.807658, 2.733230>,  <4.015340, 1.751092, 2.434994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.754848, 1.807658, 2.733230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630437, 0.446089, -0.635259,
		-0.422435, -0.883745, -0.201353,
		-0.651228, 0.141415, 0.745589,
		3.559480, 1.850083, 2.956906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.924630, 2.704519, 2.373384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.623795, 2.552485, 2.588753>,  <2.443293, 2.461266, 2.717974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.623795, 2.552485, 2.588753>,  <2.924630, 2.704519, 2.373384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.623795, 2.552485, 2.588753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654453, -0.527147, 0.542040,
		0.077808, 0.760035, 0.645208,
		-0.752089, -0.380083, 0.538423,
		2.398168, 2.438461, 2.750280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.025049, 2.830999, 3.085757>,  <2.924630, 2.704519, 2.373384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.025049, 2.830999, 3.085757> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.830505, 2.492990, 2.996861>,  <2.713779, 2.290184, 2.943522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.830505, 2.492990, 2.996861>,  <3.025049, 2.830999, 3.085757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.830505, 2.492990, 2.996861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656247, -0.521203, 0.545608,
		-0.576883, 0.119516, 0.808035,
		-0.486359, -0.845023, -0.222241,
		2.684598, 2.239483, 2.930188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.657076, 2.510785, 3.668456>,  <3.025049, 2.830999, 3.085757>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.657076, 2.510785, 3.668456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.819260, 2.276308, 3.387890>,  <2.916570, 2.135622, 3.219550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.819260, 2.276308, 3.387890>,  <2.657076, 2.510785, 3.668456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.819260, 2.276308, 3.387890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566456, -0.441111, 0.696095,
		-0.717446, -0.679559, 0.153199,
		0.405460, -0.586191, -0.701414,
		2.940898, 2.100451, 3.177466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.671372, 1.808016, 3.912536>,  <2.657076, 2.510785, 3.668456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.671372, 1.808016, 3.912536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.965797, 1.839192, 3.643572>,  <3.142452, 1.857898, 3.482193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.965797, 1.839192, 3.643572>,  <2.671372, 1.808016, 3.912536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.965797, 1.839192, 3.643572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615675, -0.489953, 0.617164,
		-0.281347, -0.868258, -0.408623,
		0.736063, 0.077942, -0.672411,
		3.186616, 1.862575, 3.441849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.976461, 1.138356, 3.900466>,  <2.671372, 1.808016, 3.912536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.976461, 1.138356, 3.900466> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.240623, 1.367515, 3.706289>,  <3.399121, 1.505010, 3.589783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.240623, 1.367515, 3.706289>,  <2.976461, 1.138356, 3.900466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.240623, 1.367515, 3.706289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749190, -0.458979, 0.477548,
		0.050777, -0.679065, -0.732320,
		0.660406, 0.572895, -0.485443,
		3.438745, 1.539383, 3.560656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.553416, 0.732310, 3.778050>,  <2.976461, 1.138356, 3.900466>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.553416, 0.732310, 3.778050> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.704185, 1.099577, 3.729229>,  <3.794647, 1.319937, 3.699936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.704185, 1.099577, 3.729229>,  <3.553416, 0.732310, 3.778050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.704185, 1.099577, 3.729229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797127, -0.254444, 0.547583,
		0.471716, -0.303690, -0.827802,
		0.376925, 0.918167, -0.122054,
		3.817263, 1.375027, 3.692613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.183769, 0.636169, 3.588127>,  <3.553416, 0.732310, 3.778050>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.183769, 0.636169, 3.588127> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.182762, 1.008363, 3.734657>,  <4.182158, 1.231679, 3.822575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.182762, 1.008363, 3.734657>,  <4.183769, 0.636169, 3.588127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.182762, 1.008363, 3.734657> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852743, -0.189345, 0.486804,
		0.522325, 0.313606, -0.792987,
		-0.002516, 0.930483, 0.366325,
		4.182007, 1.287508, 3.844555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.828255, 0.792273, 3.570221>,  <4.183769, 0.636169, 3.588127>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.828255, 0.792273, 3.570221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.679695, 1.075382, 3.810595>,  <4.590559, 1.245248, 3.954819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.679695, 1.075382, 3.810595>,  <4.828255, 0.792273, 3.570221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.679695, 1.075382, 3.810595> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809605, -0.069982, 0.582789,
		0.454536, 0.702966, -0.547025,
		-0.371399, 0.707772, 0.600934,
		4.568275, 1.287714, 3.990875>
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
