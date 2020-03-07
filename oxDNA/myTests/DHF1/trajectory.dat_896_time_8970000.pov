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
	<3.618134, 4.111990, 2.620775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.567085, 3.856098, 2.923947>,  <3.536456, 3.702563, 3.105851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.567085, 3.856098, 2.923947>,  <3.618134, 4.111990, 2.620775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.567085, 3.856098, 2.923947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002250, 0.764364, 0.644781,
		-0.991820, 0.080583, -0.098988,
		-0.127621, -0.639730, 0.757930,
		3.528799, 3.664179, 3.151326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.009596, 4.270865, 3.103258>,  <3.618134, 4.111990, 2.620775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.009596, 4.270865, 3.103258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.303185, 4.063286, 3.278519>,  <3.479338, 3.938738, 3.383675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.303185, 4.063286, 3.278519>,  <3.009596, 4.270865, 3.103258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.303185, 4.063286, 3.278519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044892, 0.680777, 0.731114,
		-0.677695, -0.516947, 0.522967,
		0.733971, -0.518949, 0.438152,
		3.523376, 3.907601, 3.409964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.934233, 4.340481, 3.875057>,  <3.009596, 4.270865, 3.103258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.934233, 4.340481, 3.875057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.318016, 4.253304, 3.803569>,  <3.548286, 4.200997, 3.760676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.318016, 4.253304, 3.803569>,  <2.934233, 4.340481, 3.875057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.318016, 4.253304, 3.803569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281443, 0.706719, 0.649106,
		-0.015165, -0.673089, 0.739406,
		0.959458, -0.217944, -0.178719,
		3.605854, 4.187920, 3.749953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.267835, 4.139031, 4.489406>,  <2.934233, 4.340481, 3.875057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.267835, 4.139031, 4.489406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.513390, 4.301037, 4.218376>,  <3.660722, 4.398240, 4.055758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.513390, 4.301037, 4.218376>,  <3.267835, 4.139031, 4.489406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.513390, 4.301037, 4.218376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232951, 0.727175, 0.645717,
		0.754237, -0.554240, 0.352057,
		0.613889, 0.405012, -0.677574,
		3.697556, 4.422541, 4.015104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.877619, 4.242687, 4.861385>,  <3.267835, 4.139031, 4.489406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.877619, 4.242687, 4.861385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.865868, 4.490486, 4.547606>,  <3.858817, 4.639165, 4.359338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.865868, 4.490486, 4.547606>,  <3.877619, 4.242687, 4.861385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.865868, 4.490486, 4.547606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307755, 0.752271, 0.582560,
		0.951012, -0.224303, -0.212754,
		-0.029379, 0.619497, -0.784449,
		3.857054, 4.676335, 4.312271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.443122, 4.753995, 4.940203>,  <3.877619, 4.242687, 4.861385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.443122, 4.753995, 4.940203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.260147, 4.947857, 4.641979>,  <4.150362, 5.064174, 4.463045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.260147, 4.947857, 4.641979>,  <4.443122, 4.753995, 4.940203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.260147, 4.947857, 4.641979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243993, 0.874651, 0.418870,
		0.855112, 0.009696, -0.518352,
		-0.457439, 0.484655, -0.745560,
		4.122915, 5.093254, 4.418311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.953880, 5.292691, 4.680311>,  <4.443122, 4.753995, 4.940203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.953880, 5.292691, 4.680311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.580315, 5.399246, 4.584942>,  <4.356175, 5.463179, 4.527720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.580315, 5.399246, 4.584942>,  <4.953880, 5.292691, 4.680311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.580315, 5.399246, 4.584942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178517, 0.925306, 0.334576,
		0.309740, 0.269902, -0.911709,
		-0.933913, 0.266387, -0.238422,
		4.300141, 5.479162, 4.513415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.011365, 5.935756, 4.190908>,  <4.953880, 5.292691, 4.680311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.011365, 5.935756, 4.190908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.643082, 5.930943, 4.346934>,  <4.422112, 5.928054, 4.440550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.643082, 5.930943, 4.346934>,  <5.011365, 5.935756, 4.190908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.643082, 5.930943, 4.346934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108514, 0.952211, 0.285515,
		-0.374861, 0.305204, -0.875403,
		-0.920708, -0.012035, 0.390066,
		4.366869, 5.927332, 4.463954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.689927, 1.749306, 5.511056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.296715, 1.818863, 5.534428>,  <4.060788, 1.860597, 5.548450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.296715, 1.818863, 5.534428>,  <4.689927, 1.749306, 5.511056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.296715, 1.818863, 5.534428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168440, -0.729446, -0.662975,
		-0.072666, -0.661566, 0.746358,
		-0.983030, 0.173892, 0.058428,
		4.001806, 1.871031, 5.551956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.205504, 1.107390, 5.676996>,  <4.689927, 1.749306, 5.511056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.205504, 1.107390, 5.676996> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.032204, 1.383846, 5.445612>,  <3.928223, 1.549720, 5.306781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.032204, 1.383846, 5.445612>,  <4.205504, 1.107390, 5.676996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.032204, 1.383846, 5.445612> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211378, -0.701846, -0.680244,
		-0.876135, -0.172443, 0.450168,
		-0.433252, 0.691141, -0.578461,
		3.902228, 1.591189, 5.272074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.485775, 0.844280, 5.450634>,  <4.205504, 1.107390, 5.676996>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.485775, 0.844280, 5.450634> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.672508, 1.036488, 5.153671>,  <3.784549, 1.151812, 4.975493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.672508, 1.036488, 5.153671>,  <3.485775, 0.844280, 5.450634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.672508, 1.036488, 5.153671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029641, -0.847530, -0.529920,
		-0.883848, 0.225380, -0.409899,
		0.466834, 0.480518, -0.742407,
		3.812558, 1.180643, 4.930949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.134945, 0.717790, 4.828772>,  <3.485775, 0.844280, 5.450634>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.134945, 0.717790, 4.828772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.506470, 0.805332, 4.709164>,  <3.729384, 0.857857, 4.637399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.506470, 0.805332, 4.709164>,  <3.134945, 0.717790, 4.828772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.506470, 0.805332, 4.709164> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064054, -0.699981, -0.711283,
		-0.364976, 0.679801, -0.636132,
		0.928811, 0.218854, -0.299020,
		3.785113, 0.870988, 4.619458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.044827, 0.818188, 4.146395>,  <3.134945, 0.717790, 4.828772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.044827, 0.818188, 4.146395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.428696, 0.737286, 4.224497>,  <3.659017, 0.688744, 4.271358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.428696, 0.737286, 4.224497>,  <3.044827, 0.818188, 4.146395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.428696, 0.737286, 4.224497> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023144, -0.749029, -0.662133,
		0.280172, 0.630911, -0.723502,
		0.959671, -0.202255, 0.195255,
		3.716597, 0.676609, 4.283073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.393818, 0.688402, 3.476566>,  <3.044827, 0.818188, 4.146395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.393818, 0.688402, 3.476566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.614647, 0.518887, 3.763792>,  <3.747144, 0.417177, 3.936128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.614647, 0.518887, 3.763792>,  <3.393818, 0.688402, 3.476566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.614647, 0.518887, 3.763792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011597, -0.857215, -0.514829,
		0.833715, 0.292550, -0.468330,
		0.552073, -0.423789, 0.718066,
		3.780269, 0.391750, 3.979212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.939943, 0.366439, 3.140835>,  <3.393818, 0.688402, 3.476566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.939943, 0.366439, 3.140835> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.933502, 0.182518, 3.495985>,  <3.929637, 0.072165, 3.709075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.933502, 0.182518, 3.495985>,  <3.939943, 0.366439, 3.140835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.933502, 0.182518, 3.495985> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037618, -0.887083, -0.460075,
		0.999162, -0.040808, -0.003012,
		-0.016103, -0.459803, 0.887875,
		3.928671, 0.044577, 3.762347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.451924, -0.238033, 3.074883>,  <3.939943, 0.366439, 3.140835>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.451924, -0.238033, 3.074883> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.168137, -0.301113, 3.349628>,  <3.997864, -0.338961, 3.514476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.168137, -0.301113, 3.349628>,  <4.451924, -0.238033, 3.074883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.168137, -0.301113, 3.349628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348472, -0.768650, -0.536419,
		0.612552, -0.619926, 0.490379,
		-0.709470, -0.157701, 0.686865,
		3.955296, -0.348423, 3.555688>
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
