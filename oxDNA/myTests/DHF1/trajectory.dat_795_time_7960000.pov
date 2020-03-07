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
	<-0.443664, 2.374209, 0.283494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.083521, 2.544327, 0.320333>,  <0.132565, 2.646397, 0.342437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.083521, 2.544327, 0.320333>,  <-0.443664, 2.374209, 0.283494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.083521, 2.544327, 0.320333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045589, -0.302670, 0.952005,
		0.432757, -0.852945, -0.291899,
		0.900357, 0.425294, 0.092098,
		0.186586, 2.671915, 0.347963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.033426, 1.913234, 0.261787>,  <-0.443664, 2.374209, 0.283494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.033426, 1.913234, 0.261787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.174040, 2.221592, 0.474257>,  <0.258408, 2.406606, 0.601738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.174040, 2.221592, 0.474257>,  <0.033426, 1.913234, 0.261787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.174040, 2.221592, 0.474257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068493, -0.587046, 0.806651,
		0.933666, -0.247185, -0.259168,
		0.351535, 0.770894, 0.531174,
		0.279500, 2.452860, 0.633609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.640919, 1.738903, 0.569026>,  <0.033426, 1.913234, 0.261787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.640919, 1.738903, 0.569026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.489359, 2.021698, 0.807892>,  <0.398423, 2.191375, 0.951211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.489359, 2.021698, 0.807892>,  <0.640919, 1.738903, 0.569026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.489359, 2.021698, 0.807892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030713, -0.635315, 0.771642,
		0.924927, 0.310717, 0.219008,
		-0.378901, 0.706987, 0.597164,
		0.375689, 2.233794, 0.987041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.064404, 1.919699, 1.248061>,  <0.640919, 1.738903, 0.569026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.064404, 1.919699, 1.248061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.680986, 2.013233, 1.313190>,  <0.450936, 2.069354, 1.352268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.680986, 2.013233, 1.313190>,  <1.064404, 1.919699, 1.248061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.680986, 2.013233, 1.313190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004640, -0.558548, 0.829459,
		0.284903, 0.795830, 0.534308,
		-0.958545, 0.233837, 0.162825,
		0.393423, 2.083384, 1.362038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.069889, 2.120439, 1.889121>,  <1.064404, 1.919699, 1.248061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.069889, 2.120439, 1.889121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.686996, 2.027100, 1.820704>,  <0.457261, 1.971096, 1.779653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.686996, 2.027100, 1.820704>,  <1.069889, 2.120439, 1.889121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.686996, 2.027100, 1.820704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002040, -0.585728, 0.810505,
		-0.289316, 0.776190, 0.560201,
		-0.957232, -0.233349, -0.171044,
		0.399827, 1.957095, 1.769390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.740080, 2.276764, 2.516654>,  <1.069889, 2.120439, 1.889121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.740080, 2.276764, 2.516654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.499435, 2.011696, 2.338247>,  <0.355049, 1.852655, 2.231203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.499435, 2.011696, 2.338247>,  <0.740080, 2.276764, 2.516654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.499435, 2.011696, 2.338247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145988, -0.640178, 0.754228,
		-0.785335, 0.388639, 0.481881,
		-0.601611, -0.662670, -0.446018,
		0.318952, 1.812895, 2.204442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.356230, 2.029424, 3.089759>,  <0.740080, 2.276764, 2.516654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.356230, 2.029424, 3.089759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.296286, 1.754948, 2.805033>,  <0.260319, 1.590262, 2.634197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.296286, 1.754948, 2.805033>,  <0.356230, 2.029424, 3.089759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.296286, 1.754948, 2.805033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077894, -0.725903, 0.683372,
		-0.985634, 0.046964, 0.162234,
		-0.149860, -0.686191, -0.711817,
		0.251328, 1.549090, 2.591488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.163726, 1.542087, 3.351336>,  <0.356230, 2.029424, 3.089759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.163726, 1.542087, 3.351336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.045307, 1.332325, 3.082439>,  <0.170727, 1.206468, 2.921102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.045307, 1.332325, 3.082439>,  <-0.163726, 1.542087, 3.351336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.045307, 1.332325, 3.082439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105552, -0.742611, 0.661354,
		-0.846030, -0.416567, -0.332723,
		0.522582, -0.524406, -0.672241,
		0.202082, 1.175003, 2.880767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.109850, 0.743455, 3.727463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.885765, 0.462433, 3.551929>,  <0.751314, 0.293820, 3.446608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.885765, 0.462433, 3.551929>,  <1.109850, 0.743455, 3.727463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.885765, 0.462433, 3.551929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167827, 0.615051, -0.770420,
		0.811169, -0.357951, -0.462467,
		-0.560213, -0.702555, -0.438837,
		0.717701, 0.251666, 3.420278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.327038, 0.673078, 3.137989>,  <1.109850, 0.743455, 3.727463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.327038, 0.673078, 3.137989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.953499, 0.532928, 3.109237>,  <0.729375, 0.448839, 3.091986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.953499, 0.532928, 3.109237>,  <1.327038, 0.673078, 3.137989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.953499, 0.532928, 3.109237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115736, 0.486166, -0.866169,
		0.338426, -0.800551, -0.494556,
		-0.933849, -0.350372, -0.071879,
		0.673344, 0.427817, 3.087673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.251542, 0.604096, 2.471629>,  <1.327038, 0.673078, 3.137989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.251542, 0.604096, 2.471629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.885338, 0.619011, 2.631854>,  <0.665615, 0.627960, 2.727989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.885338, 0.619011, 2.631854>,  <1.251542, 0.604096, 2.471629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.885338, 0.619011, 2.631854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299085, 0.602829, -0.739693,
		-0.269053, -0.796999, -0.540743,
		-0.915510, 0.037289, 0.400563,
		0.610685, 0.630197, 2.752023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.748492, 0.469590, 1.984321>,  <1.251542, 0.604096, 2.471629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.748492, 0.469590, 1.984321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.563232, 0.711296, 2.243660>,  <0.452077, 0.856320, 2.399264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.563232, 0.711296, 2.243660>,  <0.748492, 0.469590, 1.984321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.563232, 0.711296, 2.243660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250881, 0.612231, -0.749822,
		-0.850030, -0.509937, -0.131956,
		-0.463150, 0.604266, 0.648348,
		0.424288, 0.892576, 2.438164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.222223, 0.717561, 1.628606>,  <0.748492, 0.469590, 1.984321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.222223, 0.717561, 1.628606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.216347, 0.962128, 1.945075>,  <0.212821, 1.108868, 2.134957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.216347, 0.962128, 1.945075>,  <0.222223, 0.717561, 1.628606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.216347, 0.962128, 1.945075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302922, 0.751352, -0.586267,
		-0.952902, -0.248276, 0.174174,
		-0.014690, 0.611416, 0.791173,
		0.211940, 1.145553, 2.182427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.456175, 1.039855, 1.573825>,  <0.222223, 0.717561, 1.628606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.456175, 1.039855, 1.573825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.195999, 1.269066, 1.773252>,  <-0.039894, 1.406593, 1.892907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.195999, 1.269066, 1.773252>,  <-0.456175, 1.039855, 1.573825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.195999, 1.269066, 1.773252> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284524, 0.792411, -0.539565,
		-0.704255, 0.209100, 0.678456,
		0.650439, 0.573028, 0.498565,
		-0.000867, 1.440974, 1.922821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.849123, 1.693380, 1.695549>,  <-0.456175, 1.039855, 1.573825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.849123, 1.693380, 1.695549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.455528, 1.763710, 1.707238>,  <-0.219371, 1.805908, 1.714251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.455528, 1.763710, 1.707238>,  <-0.849123, 1.693380, 1.695549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.455528, 1.763710, 1.707238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122220, 0.784938, -0.607400,
		-0.129733, 0.594103, 0.793859,
		0.983988, 0.175825, 0.029221,
		-0.160332, 1.816457, 1.716004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.702034, 2.456476, 1.883608>,  <-0.849123, 1.693380, 1.695549>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.702034, 2.456476, 1.883608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.399765, 2.301506, 1.672378>,  <-0.218404, 2.208524, 1.545640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.399765, 2.301506, 1.672378>,  <-0.702034, 2.456476, 1.883608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.399765, 2.301506, 1.672378> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051929, 0.768302, -0.637978,
		0.652889, 0.509524, 0.560465,
		0.755671, -0.387424, -0.528075,
		-0.173064, 2.185279, 1.513955>
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
