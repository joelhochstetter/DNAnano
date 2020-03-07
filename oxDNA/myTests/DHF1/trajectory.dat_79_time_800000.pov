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
	<1.112543, 3.932683, 3.811681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.084303, 3.717346, 3.475775>,  <1.067359, 3.588144, 3.274231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.084303, 3.717346, 3.475775>,  <1.112543, 3.932683, 3.811681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.084303, 3.717346, 3.475775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539904, -0.687267, 0.485972,
		-0.838761, 0.487702, -0.242131,
		-0.070600, -0.538341, -0.839765,
		1.063123, 3.555844, 3.223845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.409662, 3.741919, 3.528875>,  <1.112543, 3.932683, 3.811681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.409662, 3.741919, 3.528875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.669113, 3.449028, 3.445807>,  <0.824783, 3.273293, 3.395965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.669113, 3.449028, 3.445807>,  <0.409662, 3.741919, 3.528875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.669113, 3.449028, 3.445807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667347, -0.678340, 0.307413,
		-0.365968, -0.060807, -0.928639,
		0.648626, -0.732227, -0.207671,
		0.863700, 3.229360, 3.383505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.067326, 3.203555, 3.366263>,  <0.409662, 3.741919, 3.528875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.067326, 3.203555, 3.366263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.414818, 3.014935, 3.426861>,  <0.623313, 2.901762, 3.463219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.414818, 3.014935, 3.426861>,  <0.067326, 3.203555, 3.366263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.414818, 3.014935, 3.426861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495288, -0.826904, 0.266308,
		-0.000306, -0.306382, -0.951908,
		0.868729, -0.471551, 0.151495,
		0.675436, 2.873469, 3.472309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.099865, 2.497005, 3.048800>,  <0.067326, 3.203555, 3.366263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.099865, 2.497005, 3.048800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.314468, 2.517548, 3.385733>,  <0.443230, 2.529873, 3.587892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.314468, 2.517548, 3.385733>,  <0.099865, 2.497005, 3.048800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.314468, 2.517548, 3.385733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493587, -0.790512, 0.362577,
		0.684494, -0.610289, -0.398768,
		0.536508, 0.051355, 0.842331,
		0.475420, 2.532954, 3.638432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.431593, 1.848216, 3.248918>,  <0.099865, 2.497005, 3.048800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.431593, 1.848216, 3.248918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.367901, 2.062309, 3.580742>,  <0.329686, 2.190765, 3.779836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.367901, 2.062309, 3.580742>,  <0.431593, 1.848216, 3.248918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.367901, 2.062309, 3.580742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438207, -0.791286, 0.426428,
		0.884659, -0.295620, 0.360539,
		-0.159229, 0.535234, 0.829561,
		0.320133, 2.222879, 3.829610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.844529, 1.559675, 3.776989>,  <0.431593, 1.848216, 3.248918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.844529, 1.559675, 3.776989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.521174, 1.713287, 3.955441>,  <0.327161, 1.805455, 4.062511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.521174, 1.713287, 3.955441>,  <0.844529, 1.559675, 3.776989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.521174, 1.713287, 3.955441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228630, -0.903218, 0.363217,
		0.542438, 0.191621, 0.817950,
		-0.808387, 0.384030, 0.446129,
		0.278658, 1.828496, 4.089279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.919004, 1.391803, 4.498571>,  <0.844529, 1.559675, 3.776989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.919004, 1.391803, 4.498571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.529354, 1.454540, 4.433485>,  <0.295563, 1.492183, 4.394433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.529354, 1.454540, 4.433485>,  <0.919004, 1.391803, 4.498571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.529354, 1.454540, 4.433485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207618, -0.905476, 0.370147,
		-0.089280, 0.394353, 0.914612,
		-0.974127, 0.156844, -0.162715,
		0.237115, 1.501593, 4.384670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.512288, 1.104960, 5.027280>,  <0.919004, 1.391803, 4.498571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.512288, 1.104960, 5.027280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.282600, 1.123795, 4.700342>,  <0.144787, 1.135095, 4.504179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.282600, 1.123795, 4.700342>,  <0.512288, 1.104960, 5.027280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.282600, 1.123795, 4.700342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213941, -0.972285, 0.094291,
		-0.790253, 0.229008, 0.568381,
		-0.574221, 0.047086, -0.817345,
		0.110334, 1.137920, 4.455139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.935916, 1.064504, 5.713369> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.253826, 0.839859, 5.621346>,  <3.444572, 0.705072, 5.566132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.253826, 0.839859, 5.621346>,  <2.935916, 1.064504, 5.713369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.253826, 0.839859, 5.621346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102112, 0.249923, -0.962866,
		0.598254, 0.788753, 0.141285,
		0.794774, -0.561611, -0.230059,
		3.492258, 0.671376, 5.552328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.535913, 1.464434, 5.418598>,  <2.935916, 1.064504, 5.713369>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.535913, 1.464434, 5.418598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.503277, 1.091904, 5.276627>,  <3.483695, 0.868385, 5.191444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.503277, 1.091904, 5.276627>,  <3.535913, 1.464434, 5.418598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.503277, 1.091904, 5.276627> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300317, 0.362537, -0.882257,
		0.950344, 0.034607, -0.309272,
		-0.081590, -0.931327, -0.354928,
		3.478800, 0.812506, 5.170148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.391837, 1.547347, 4.748482>,  <3.535913, 1.464434, 5.418598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.391837, 1.547347, 4.748482> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.375465, 1.147926, 4.762440>,  <3.365643, 0.908274, 4.770814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.375465, 1.147926, 4.762440>,  <3.391837, 1.547347, 4.748482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.375465, 1.147926, 4.762440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435916, -0.013579, -0.899885,
		0.899056, -0.052042, -0.434729,
		-0.040929, -0.998553, 0.034894,
		3.363187, 0.848361, 4.772908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.684588, 1.097658, 4.093834>,  <3.391837, 1.547347, 4.748482>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.684588, 1.097658, 4.093834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.432697, 0.840744, 4.268608>,  <3.281563, 0.686595, 4.373473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.432697, 0.840744, 4.268608>,  <3.684588, 1.097658, 4.093834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.432697, 0.840744, 4.268608> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515558, -0.075177, -0.853550,
		0.581071, -0.762769, -0.283794,
		-0.629727, -0.642286, 0.436935,
		3.243779, 0.648058, 4.399689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.239370, 1.368817, 3.602694>,  <3.684588, 1.097658, 4.093834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.239370, 1.368817, 3.602694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.447544, 1.297821, 3.936794>,  <4.572449, 1.255223, 4.137254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.447544, 1.297821, 3.936794>,  <4.239370, 1.368817, 3.602694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.447544, 1.297821, 3.936794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257369, 0.965276, 0.044757,
		-0.814191, 0.191675, 0.548045,
		0.520436, -0.177491, 0.835250,
		4.603675, 1.244574, 4.187369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.969973, 1.773627, 4.222469>,  <4.239370, 1.368817, 3.602694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.969973, 1.773627, 4.222469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.358189, 1.677277, 4.220146>,  <4.591118, 1.619466, 4.218752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.358189, 1.677277, 4.220146>,  <3.969973, 1.773627, 4.222469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.358189, 1.677277, 4.220146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240432, 0.966610, 0.088645,
		-0.015739, -0.087429, 0.996046,
		0.970538, -0.240877, -0.005808,
		4.649350, 1.605014, 4.218404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.252996, 2.301197, 4.628406>,  <3.969973, 1.773627, 4.222469>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.252996, 2.301197, 4.628406> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.570305, 2.154549, 4.433960>,  <4.760690, 2.066559, 4.317292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.570305, 2.154549, 4.433960>,  <4.252996, 2.301197, 4.628406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.570305, 2.154549, 4.433960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431754, 0.901657, 0.024545,
		0.429311, -0.229353, 0.873550,
		0.793272, -0.366622, -0.486115,
		4.808287, 2.044562, 4.288126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.859993, 2.702869, 4.901140>,  <4.252996, 2.301197, 4.628406>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.859993, 2.702869, 4.901140> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.018658, 2.569214, 4.559143>,  <5.113857, 2.489021, 4.353945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.018658, 2.569214, 4.559143>,  <4.859993, 2.702869, 4.901140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.018658, 2.569214, 4.559143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450430, 0.882411, -0.135883,
		0.799857, -0.331214, 0.500525,
		0.396662, -0.334139, -0.854991,
		5.137656, 2.468972, 4.302646>
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
