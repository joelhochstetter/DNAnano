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
	<1.843517, -0.849732, 2.340613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.509457, -0.664232, 2.458906>,  <1.309020, -0.552932, 2.529882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.509457, -0.664232, 2.458906>,  <1.843517, -0.849732, 2.340613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.509457, -0.664232, 2.458906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133820, 0.692843, -0.708562,
		-0.533493, -0.552182, -0.640688,
		-0.835151, 0.463749, 0.295734,
		1.258911, -0.525107, 2.547626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.395125, -0.825860, 1.780341>,  <1.843517, -0.849732, 2.340613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.395125, -0.825860, 1.780341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.303825, -0.536409, 2.040884>,  <1.249045, -0.362739, 2.197210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.303825, -0.536409, 2.040884>,  <1.395125, -0.825860, 1.780341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.303825, -0.536409, 2.040884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029066, 0.673784, -0.738357,
		-0.973169, -0.149597, -0.174823,
		-0.228249, 0.723627, 0.651357,
		1.235350, -0.319321, 2.236291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.819124, -0.438408, 1.523284>,  <1.395125, -0.825860, 1.780341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.819124, -0.438408, 1.523284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.072414, -0.195305, 1.714973>,  <1.224389, -0.049443, 1.829987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.072414, -0.195305, 1.714973>,  <0.819124, -0.438408, 1.523284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.072414, -0.195305, 1.714973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002425, 0.617618, -0.786474,
		-0.773963, 0.499178, 0.389618,
		0.633226, 0.607757, 0.479224,
		1.262382, -0.012978, 1.858741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.643875, 0.354045, 1.450941>,  <0.819124, -0.438408, 1.523284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.643875, 0.354045, 1.450941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.039207, 0.305052, 1.487158>,  <1.276407, 0.275656, 1.508888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.039207, 0.305052, 1.487158>,  <0.643875, 0.354045, 1.450941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.039207, 0.305052, 1.487158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144641, 0.568394, -0.809942,
		0.047741, 0.813588, 0.579478,
		0.988332, -0.122484, 0.090543,
		1.335707, 0.268307, 1.514321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.005479, 1.066093, 1.290342>,  <0.643875, 0.354045, 1.450941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.005479, 1.066093, 1.290342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.292194, 0.788027, 1.268583>,  <1.464224, 0.621187, 1.255528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.292194, 0.788027, 1.268583>,  <1.005479, 1.066093, 1.290342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.292194, 0.788027, 1.268583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400566, 0.474366, -0.783916,
		0.570755, 0.540112, 0.618480,
		0.716788, -0.695166, -0.054397,
		1.507231, 0.579477, 1.252264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.596295, 1.485002, 1.234419>,  <1.005479, 1.066093, 1.290342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.596295, 1.485002, 1.234419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.702862, 1.126961, 1.091415>,  <1.766802, 0.912136, 1.005613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.702862, 1.126961, 1.091415>,  <1.596295, 1.485002, 1.234419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.702862, 1.126961, 1.091415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425874, 0.442061, -0.789438,
		0.864669, 0.058066, 0.498974,
		0.266416, -0.895103, -0.357508,
		1.782787, 0.858430, 0.984163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.342426, 1.501797, 1.082457>,  <1.596295, 1.485002, 1.234419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.342426, 1.501797, 1.082457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.185825, 1.219795, 0.845917>,  <2.091865, 1.050594, 0.703992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.185825, 1.219795, 0.845917>,  <2.342426, 1.501797, 1.082457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.185825, 1.219795, 0.845917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567816, 0.320612, -0.758151,
		0.724094, -0.632596, 0.274793,
		-0.391501, -0.705004, -0.591351,
		2.068375, 1.008294, 0.668511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.901522, 1.296342, 0.780399>,  <2.342426, 1.501797, 1.082457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.901522, 1.296342, 0.780399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.583832, 1.177727, 0.568258>,  <2.393218, 1.106558, 0.440974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.583832, 1.177727, 0.568258>,  <2.901522, 1.296342, 0.780399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.583832, 1.177727, 0.568258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469523, 0.254516, -0.845440,
		0.385690, -0.920481, -0.062910,
		-0.794224, -0.296540, -0.530352,
		2.345564, 1.088765, 0.409153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.627821, 2.088049, -0.519736> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.398514, 1.860097, -0.755227>,  <2.260930, 1.723326, -0.896522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.398514, 1.860097, -0.755227>,  <2.627821, 2.088049, -0.519736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.398514, 1.860097, -0.755227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150207, -0.633245, 0.759235,
		-0.805482, 0.523676, 0.277419,
		-0.573268, -0.569880, -0.588728,
		2.226533, 1.689133, -0.931845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.820130, 1.954148, -0.411300>,  <2.627821, 2.088049, -0.519736>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.820130, 1.954148, -0.411300> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.026276, 1.645855, -0.561166>,  <2.149963, 1.460879, -0.651085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.026276, 1.645855, -0.561166>,  <1.820130, 1.954148, -0.411300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.026276, 1.645855, -0.561166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183967, -0.526502, 0.830031,
		-0.836993, -0.358841, -0.413129,
		0.515363, -0.770732, -0.374664,
		2.180885, 1.414635, -0.673565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.320977, 1.452529, -0.375500>,  <1.820130, 1.954148, -0.411300>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.320977, 1.452529, -0.375500> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.694687, 1.313252, -0.344794>,  <1.918913, 1.229687, -0.326371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.694687, 1.313252, -0.344794>,  <1.320977, 1.452529, -0.375500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.694687, 1.313252, -0.344794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294637, -0.632687, 0.716168,
		-0.200794, -0.691716, -0.693693,
		0.934276, -0.348190, 0.076765,
		1.974970, 1.208795, -0.321765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.399627, 0.652508, -0.353975>,  <1.320977, 1.452529, -0.375500>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.399627, 0.652508, -0.353975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.712814, 0.782694, -0.141924>,  <1.900726, 0.860806, -0.014693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.712814, 0.782694, -0.141924>,  <1.399627, 0.652508, -0.353975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.712814, 0.782694, -0.141924> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363233, -0.452631, 0.814363,
		0.504999, -0.830179, -0.236175,
		0.782968, 0.325466, 0.530127,
		1.947705, 0.880334, 0.017114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.672758, 0.002738, -0.074257>,  <1.399627, 0.652508, -0.353975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.672758, 0.002738, -0.074257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.799133, 0.314337, 0.142389>,  <1.874958, 0.501296, 0.272377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.799133, 0.314337, 0.142389>,  <1.672758, 0.002738, -0.074257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.799133, 0.314337, 0.142389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273404, -0.471890, 0.838194,
		0.908534, -0.412897, 0.063893,
		0.315937, 0.778996, 0.541616,
		1.893914, 0.548036, 0.304874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.097778, -0.205773, 0.414919>,  <1.672758, 0.002738, -0.074257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.097778, -0.205773, 0.414919> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.022240, 0.134101, 0.611845>,  <1.976917, 0.338025, 0.730001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.022240, 0.134101, 0.611845>,  <2.097778, -0.205773, 0.414919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.022240, 0.134101, 0.611845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160398, -0.521292, 0.838169,
		0.968819, 0.079319, 0.234732,
		-0.188846, 0.849684, 0.492315,
		1.965586, 0.389006, 0.759539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.419255, -0.329955, 1.022468>,  <2.097778, -0.205773, 0.414919>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.419255, -0.329955, 1.022468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.146988, -0.046409, 1.096443>,  <1.983628, 0.123719, 1.140828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.146988, -0.046409, 1.096443>,  <2.419255, -0.329955, 1.022468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.146988, -0.046409, 1.096443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084690, -0.326888, 0.941261,
		0.727681, 0.625024, 0.282536,
		-0.680668, 0.708865, 0.184937,
		1.942788, 0.166250, 1.151924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.659376, -0.022347, 1.624505>,  <2.419255, -0.329955, 1.022468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.659376, -0.022347, 1.624505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.266090, 0.024107, 1.568218>,  <2.030119, 0.051979, 1.534446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.266090, 0.024107, 1.568218>,  <2.659376, -0.022347, 1.624505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.266090, 0.024107, 1.568218> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169449, -0.295290, 0.940261,
		0.067644, 0.948323, 0.310013,
		-0.983215, 0.116134, -0.140717,
		1.971126, 0.058947, 1.526003>
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
