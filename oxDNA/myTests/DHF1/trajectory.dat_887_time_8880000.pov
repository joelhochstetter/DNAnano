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
	<0.514211, 3.097794, -0.493547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.885330, 3.047821, -0.352929>,  <1.108002, 3.017838, -0.268559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.885330, 3.047821, -0.352929>,  <0.514211, 3.097794, -0.493547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.885330, 3.047821, -0.352929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350465, 0.031240, 0.936055,
		-0.127924, -0.991674, -0.014799,
		0.927798, -0.124930, 0.351543,
		1.163670, 3.010342, -0.247466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.635523, 2.439072, -0.083222>,  <0.514211, 3.097794, -0.493547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.635523, 2.439072, -0.083222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.864014, 2.740013, 0.048028>,  <1.001108, 2.920578, 0.126778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.864014, 2.740013, 0.048028>,  <0.635523, 2.439072, -0.083222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.864014, 2.740013, 0.048028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340368, -0.146648, 0.928786,
		0.746894, -0.642230, 0.172308,
		0.571226, 0.752353, 0.328125,
		1.035381, 2.965719, 0.146465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.160677, 2.291014, 0.540996>,  <0.635523, 2.439072, -0.083222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.160677, 2.291014, 0.540996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.969505, 2.642269, 0.532430>,  <0.854802, 2.853022, 0.527290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.969505, 2.642269, 0.532430>,  <1.160677, 2.291014, 0.540996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.969505, 2.642269, 0.532430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385868, -0.187983, 0.903199,
		0.789107, 0.439929, 0.428688,
		-0.477929, 0.878137, -0.021416,
		0.826127, 2.905710, 0.526005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.313953, 2.666748, 1.104638>,  <1.160677, 2.291014, 0.540996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.313953, 2.666748, 1.104638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.939903, 2.733303, 0.979509>,  <0.715473, 2.773236, 0.904432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.939903, 2.733303, 0.979509>,  <1.313953, 2.666748, 1.104638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.939903, 2.733303, 0.979509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345723, -0.235195, 0.908382,
		0.077569, 0.957600, 0.277461,
		-0.935125, 0.166387, -0.312821,
		0.659366, 2.783219, 0.885663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.003917, 3.020273, 1.676828>,  <1.313953, 2.666748, 1.104638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.003917, 3.020273, 1.676828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.734703, 2.829189, 1.450973>,  <0.573174, 2.714539, 1.315460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.734703, 2.829189, 1.450973>,  <1.003917, 3.020273, 1.676828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.734703, 2.829189, 1.450973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444581, -0.348804, 0.825035,
		-0.591075, 0.806306, 0.022377,
		-0.673036, -0.477709, -0.564638,
		0.532792, 2.685877, 1.281581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.446972, 3.156186, 2.048119>,  <1.003917, 3.020273, 1.676828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.446972, 3.156186, 2.048119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.345497, 2.831352, 1.837915>,  <0.284612, 2.636452, 1.711792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.345497, 2.831352, 1.837915>,  <0.446972, 3.156186, 2.048119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.345497, 2.831352, 1.837915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426391, -0.393766, 0.814334,
		-0.868236, 0.430660, -0.246371,
		-0.253688, -0.812084, -0.525511,
		0.269391, 2.587727, 1.680261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.250263, 3.094610, 2.158023>,  <0.446972, 3.156186, 2.048119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.250263, 3.094610, 2.158023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.142326, 2.727547, 2.041344>,  <-0.077564, 2.507308, 1.971336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.142326, 2.727547, 2.041344>,  <-0.250263, 3.094610, 2.158023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.142326, 2.727547, 2.041344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489696, -0.391618, 0.778995,
		-0.829086, -0.067363, -0.555049,
		0.269842, -0.917659, -0.291697,
		-0.061374, 2.452249, 1.953834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.866826, 2.737063, 2.177055>,  <-0.250263, 3.094610, 2.158023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.866826, 2.737063, 2.177055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.585342, 2.452869, 2.176033>,  <-0.416452, 2.282353, 2.175419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.585342, 2.452869, 2.176033>,  <-0.866826, 2.737063, 2.177055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.585342, 2.452869, 2.176033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477106, -0.475219, 0.739282,
		-0.526463, -0.519019, -0.673392,
		0.703709, -0.710483, -0.002558,
		-0.374230, 2.239724, 2.175266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.654904, 1.748457, 3.714534> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.636719, 1.484268, 3.414745>,  <4.625807, 1.325755, 3.234872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.636719, 1.484268, 3.414745>,  <4.654904, 1.748457, 3.714534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.636719, 1.484268, 3.414745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340231, 0.695156, -0.633246,
		0.939242, -0.283784, 0.193109,
		-0.045464, -0.660473, -0.749472,
		4.623079, 1.286126, 3.189903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.211202, 1.864169, 3.295958>,  <4.654904, 1.748457, 3.714534>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.211202, 1.864169, 3.295958> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.981041, 1.644081, 3.053909>,  <4.842945, 1.512028, 2.908680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.981041, 1.644081, 3.053909>,  <5.211202, 1.864169, 3.295958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.981041, 1.644081, 3.053909> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315549, 0.533239, -0.784910,
		0.754548, -0.642584, -0.133205,
		-0.575401, -0.550220, -0.605121,
		4.808421, 1.479015, 2.872373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.580877, 1.800163, 2.706357>,  <5.211202, 1.864169, 3.295958>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.580877, 1.800163, 2.706357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.201111, 1.723564, 2.606808>,  <4.973251, 1.677605, 2.547079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.201111, 1.723564, 2.606808>,  <5.580877, 1.800163, 2.706357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.201111, 1.723564, 2.606808> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153915, 0.407028, -0.900355,
		0.273713, -0.893116, -0.356965,
		-0.949417, -0.191496, -0.248872,
		4.916286, 1.666115, 2.532146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.533674, 1.334993, 2.171357>,  <5.580877, 1.800163, 2.706357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.533674, 1.334993, 2.171357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.235695, 1.601173, 2.152486>,  <5.056907, 1.760882, 2.141164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.235695, 1.601173, 2.152486>,  <5.533674, 1.334993, 2.171357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.235695, 1.601173, 2.152486> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401576, 0.390831, -0.828244,
		-0.532718, -0.635944, -0.558378,
		-0.744949, 0.665451, -0.047177,
		5.012210, 1.800809, 2.138333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.258616, 1.276364, 1.470115>,  <5.533674, 1.334993, 2.171357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.258616, 1.276364, 1.470115> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.165131, 1.636833, 1.616136>,  <5.109039, 1.853115, 1.703749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.165131, 1.636833, 1.616136>,  <5.258616, 1.276364, 1.470115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.165131, 1.636833, 1.616136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232414, 0.416346, -0.878999,
		-0.944119, -0.120591, -0.306752,
		-0.233715, 0.901173, 0.365053,
		5.095016, 1.907185, 1.725652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.715681, 1.565005, 0.997166>,  <5.258616, 1.276364, 1.470115>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.715681, 1.565005, 0.997166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.876213, 1.877296, 1.188747>,  <4.972532, 2.064671, 1.303696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.876213, 1.877296, 1.188747>,  <4.715681, 1.565005, 0.997166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.876213, 1.877296, 1.188747> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144422, 0.462432, -0.874814,
		-0.904476, 0.420261, 0.072834,
		0.401331, 0.780729, 0.478953,
		4.996613, 2.111515, 1.332433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.475127, 2.095399, 0.711673>,  <4.715681, 1.565005, 0.997166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.475127, 2.095399, 0.711673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.781830, 2.295929, 0.872051>,  <4.965851, 2.416247, 0.968278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.781830, 2.295929, 0.872051>,  <4.475127, 2.095399, 0.711673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.781830, 2.295929, 0.872051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234725, 0.362382, -0.901989,
		-0.597486, 0.785717, 0.160185,
		0.766756, 0.501326, 0.400946,
		5.011857, 2.446327, 0.992335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.447064, 2.765030, 0.431456>,  <4.475127, 2.095399, 0.711673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.447064, 2.765030, 0.431456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.818130, 2.757317, 0.580622>,  <5.040770, 2.752688, 0.670121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.818130, 2.757317, 0.580622>,  <4.447064, 2.765030, 0.431456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.818130, 2.757317, 0.580622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313381, 0.583250, -0.749408,
		-0.203051, 0.812064, 0.547104,
		0.927665, -0.019284, 0.372915,
		5.096430, 2.751531, 0.692496>
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
