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
	<1.231396, 3.067091, 1.734279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.196171, 3.064400, 2.132716>,  <1.175036, 3.062785, 2.371778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.196171, 3.064400, 2.132716>,  <1.231396, 3.067091, 1.734279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.196171, 3.064400, 2.132716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983564, 0.157650, 0.088021,
		-0.157626, 0.987472, -0.007265,
		-0.088063, -0.006729, 0.996092,
		1.169752, 3.062381, 2.431544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.635017, 3.628556, 1.952898>,  <1.231396, 3.067091, 1.734279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.635017, 3.628556, 1.952898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.579311, 3.300663, 2.175122>,  <1.545888, 3.103928, 2.308457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.579311, 3.300663, 2.175122>,  <1.635017, 3.628556, 1.952898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.579311, 3.300663, 2.175122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974723, -0.212451, -0.069137,
		0.174703, 0.531889, 0.828597,
		-0.139263, -0.819731, 0.555560,
		1.537532, 3.054744, 2.341790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.252529, 3.651509, 2.431521>,  <1.635017, 3.628556, 1.952898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.252529, 3.651509, 2.431521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.091339, 3.288483, 2.384299>,  <1.994625, 3.070667, 2.355966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.091339, 3.288483, 2.384299>,  <2.252529, 3.651509, 2.431521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.091339, 3.288483, 2.384299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913536, -0.406677, 0.008076,
		-0.055340, -0.104592, 0.992974,
		-0.402975, -0.907565, -0.118054,
		1.970447, 3.016213, 2.348883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.340642, 3.143045, 3.030628>,  <2.252529, 3.651509, 2.431521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.340642, 3.143045, 3.030628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.331245, 2.960415, 2.674878>,  <2.325608, 2.850837, 2.461428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.331245, 2.960415, 2.674878>,  <2.340642, 3.143045, 3.030628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.331245, 2.960415, 2.674878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970445, -0.224140, 0.089434,
		-0.240178, -0.860988, 0.448347,
		-0.023491, -0.456576, -0.889374,
		2.324198, 2.823442, 2.408066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.920064, 2.561408, 2.996500>,  <2.340642, 3.143045, 3.030628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.920064, 2.561408, 2.996500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.843990, 2.534874, 2.604698>,  <2.798346, 2.518953, 2.369617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.843990, 2.534874, 2.604698>,  <2.920064, 2.561408, 2.996500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.843990, 2.534874, 2.604698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967075, -0.184514, -0.175274,
		-0.169105, -0.980589, 0.099243,
		-0.190183, -0.066336, -0.979505,
		2.786935, 2.514973, 2.310847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.044016, 1.901977, 2.769309>,  <2.920064, 2.561408, 2.996500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.044016, 1.901977, 2.769309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.078705, 2.117329, 2.434018>,  <3.099518, 2.246540, 2.232843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.078705, 2.117329, 2.434018>,  <3.044016, 1.901977, 2.769309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.078705, 2.117329, 2.434018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898919, -0.404990, -0.167118,
		-0.429447, -0.739006, -0.519081,
		0.086722, 0.538380, -0.838228,
		3.104722, 2.278843, 2.182550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.535412, 1.442661, 2.453114>,  <3.044016, 1.901977, 2.769309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.535412, 1.442661, 2.453114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.524338, 1.762054, 2.212563>,  <3.517693, 1.953691, 2.068232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.524338, 1.762054, 2.212563>,  <3.535412, 1.442661, 2.453114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.524338, 1.762054, 2.212563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932497, -0.196101, -0.303305,
		-0.360116, -0.569180, -0.739155,
		-0.027686, 0.798485, -0.601378,
		3.516032, 2.001600, 2.032149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.906655, 1.317595, 1.821997>,  <3.535412, 1.442661, 2.453114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.906655, 1.317595, 1.821997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.911926, 1.713093, 1.881613>,  <3.915089, 1.950391, 1.917382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.911926, 1.713093, 1.881613>,  <3.906655, 1.317595, 1.821997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.911926, 1.713093, 1.881613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934442, 0.040871, -0.353762,
		-0.355871, 0.143931, -0.923385,
		0.013178, 0.988743, 0.149040,
		3.915879, 2.009716, 1.926325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.882163, 1.434304, 1.606217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.016640, 1.790089, 1.730043>,  <5.097326, 2.003560, 1.804339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.016640, 1.790089, 1.730043>,  <4.882163, 1.434304, 1.606217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.016640, 1.790089, 1.730043> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913506, 0.387930, -0.122544,
		-0.229088, -0.241592, 0.942949,
		0.336192, 0.889462, 0.309566,
		5.117497, 2.056927, 1.822913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.529466, 1.790795, 2.198848>,  <4.882163, 1.434304, 1.606217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.529466, 1.790795, 2.198848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.641907, 2.085312, 1.952642>,  <4.709371, 2.262022, 1.804919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.641907, 2.085312, 1.952642>,  <4.529466, 1.790795, 2.198848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.641907, 2.085312, 1.952642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955177, 0.276701, -0.105228,
		0.092835, 0.617504, 0.781070,
		0.281101, 0.736291, -0.615514,
		4.726237, 2.306199, 1.767988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.483623, 2.601079, 2.442410>,  <4.529466, 1.790795, 2.198848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.483623, 2.601079, 2.442410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.421631, 2.518555, 2.055956>,  <4.384436, 2.469040, 1.824083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.421631, 2.518555, 2.055956>,  <4.483623, 2.601079, 2.442410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.421631, 2.518555, 2.055956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931531, 0.356185, 0.073367,
		0.328986, 0.911355, -0.247387,
		-0.154979, -0.206311, -0.966135,
		4.375137, 2.456661, 1.766115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.087018, 3.169128, 2.043431>,  <4.483623, 2.601079, 2.442410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.087018, 3.169128, 2.043431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.020401, 2.793354, 1.923613>,  <3.980431, 2.567890, 1.851722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.020401, 2.793354, 1.923613>,  <4.087018, 3.169128, 2.043431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.020401, 2.793354, 1.923613> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972602, 0.106539, 0.206625,
		-0.162198, 0.325750, -0.931439,
		-0.166543, -0.939434, -0.299545,
		3.970438, 2.511524, 1.833749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.563015, 3.245634, 1.507020>,  <4.087018, 3.169128, 2.043431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.563015, 3.245634, 1.507020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.564064, 2.862587, 1.622234>,  <3.564694, 2.632759, 1.691363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.564064, 2.862587, 1.622234>,  <3.563015, 3.245634, 1.507020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.564064, 2.862587, 1.622234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999893, -0.006651, -0.013004,
		0.014368, -0.287970, -0.957532,
		0.002624, -0.957616, 0.288035,
		3.564851, 2.575302, 1.708645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.164920, 2.851195, 1.057353>,  <3.563015, 3.245634, 1.507020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.164920, 2.851195, 1.057353> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.145920, 2.659466, 1.407894>,  <3.134520, 2.544428, 1.618219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.145920, 2.659466, 1.407894>,  <3.164920, 2.851195, 1.057353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.145920, 2.659466, 1.407894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988470, -0.103726, -0.110311,
		0.143775, -0.871487, -0.468870,
		-0.047500, -0.479324, 0.876351,
		3.131670, 2.515669, 1.670800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.594850, 2.372188, 1.001102>,  <3.164920, 2.851195, 1.057353>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.594850, 2.372188, 1.001102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.643593, 2.419800, 1.395256>,  <2.672838, 2.448367, 1.631748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.643593, 2.419800, 1.395256>,  <2.594850, 2.372188, 1.001102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.643593, 2.419800, 1.395256> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988738, -0.072342, 0.131010,
		0.086879, -0.990252, 0.108871,
		0.121857, 0.119027, 0.985385,
		2.680150, 2.455508, 1.690871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.089818, 1.852567, 1.441627>,  <2.594850, 2.372188, 1.001102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.089818, 1.852567, 1.441627> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.203278, 2.184544, 1.633768>,  <2.271354, 2.383730, 1.749053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.203278, 2.184544, 1.633768>,  <2.089818, 1.852567, 1.441627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.203278, 2.184544, 1.633768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951658, 0.182068, 0.247384,
		0.117857, -0.527302, 0.841464,
		0.283650, 0.829942, 0.480353,
		2.288373, 2.433526, 1.777874>
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
