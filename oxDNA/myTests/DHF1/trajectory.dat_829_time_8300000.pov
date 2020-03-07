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
	<4.240080, 5.631583, 2.474091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.946651, 5.419594, 2.303914>,  <3.770594, 5.292400, 2.201808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.946651, 5.419594, 2.303914>,  <4.240080, 5.631583, 2.474091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.946651, 5.419594, 2.303914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678325, -0.609476, -0.410383,
		-0.041804, -0.589633, 0.806588,
		-0.733572, -0.529973, -0.425442,
		3.726580, 5.260602, 2.176281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.249015, 4.844435, 2.608401>,  <4.240080, 5.631583, 2.474091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.249015, 4.844435, 2.608401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.070015, 4.894836, 2.254256>,  <3.962615, 4.925077, 2.041769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.070015, 4.894836, 2.254256>,  <4.249015, 4.844435, 2.608401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.070015, 4.894836, 2.254256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620653, -0.669011, -0.408918,
		-0.643842, -0.732494, 0.221178,
		-0.447501, 0.126004, -0.885362,
		3.935765, 4.932637, 1.988647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.853437, 4.229936, 2.292773>,  <4.249015, 4.844435, 2.608401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.853437, 4.229936, 2.292773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.010948, 4.463058, 2.008442>,  <4.105454, 4.602932, 1.837843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.010948, 4.463058, 2.008442>,  <3.853437, 4.229936, 2.292773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.010948, 4.463058, 2.008442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361979, -0.809140, -0.462886,
		-0.844932, -0.075031, -0.529585,
		0.393777, 0.582806, -0.710828,
		4.129081, 4.637900, 1.795193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.450207, 4.124827, 1.614626>,  <3.853437, 4.229936, 2.292773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.450207, 4.124827, 1.614626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.846508, 4.173531, 1.638568>,  <4.084289, 4.202753, 1.652933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.846508, 4.173531, 1.638568>,  <3.450207, 4.124827, 1.614626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.846508, 4.173531, 1.638568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134081, -0.946085, -0.294864,
		0.020725, 0.300163, -0.953663,
		0.990754, 0.121757, 0.059854,
		4.143734, 4.210058, 1.656524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.758200, 3.876899, 1.030518>,  <3.450207, 4.124827, 1.614626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.758200, 3.876899, 1.030518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.075138, 3.905663, 1.272846>,  <4.265301, 3.922920, 1.418242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.075138, 3.905663, 1.272846>,  <3.758200, 3.876899, 1.030518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.075138, 3.905663, 1.272846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102471, -0.994608, -0.015965,
		0.601404, 0.074729, -0.795442,
		0.792346, 0.071908, 0.605819,
		4.312842, 3.927235, 1.454591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.270964, 3.405333, 0.734143>,  <3.758200, 3.876899, 1.030518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.270964, 3.405333, 0.734143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.367184, 3.468536, 1.117219>,  <4.424915, 3.506458, 1.347065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.367184, 3.468536, 1.117219>,  <4.270964, 3.405333, 0.734143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.367184, 3.468536, 1.117219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339303, -0.938103, 0.069551,
		0.909401, 0.308216, -0.279272,
		0.240549, 0.158008, 0.957690,
		4.439348, 3.515939, 1.404526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.879676, 2.978290, 0.812210>,  <4.270964, 3.405333, 0.734143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.879676, 2.978290, 0.812210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.757156, 3.044220, 1.187233>,  <4.683645, 3.083778, 1.412247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.757156, 3.044220, 1.187233>,  <4.879676, 2.978290, 0.812210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.757156, 3.044220, 1.187233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075593, -0.977574, 0.196557,
		0.948929, 0.131078, 0.286970,
		-0.306298, 0.164826, 0.937557,
		4.665267, 3.093668, 1.468501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.425525, 2.775635, 1.300132>,  <4.879676, 2.978290, 0.812210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.425525, 2.775635, 1.300132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.082619, 2.759682, 1.505463>,  <4.876875, 2.750110, 1.628661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.082619, 2.759682, 1.505463>,  <5.425525, 2.775635, 1.300132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.082619, 2.759682, 1.505463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057839, -0.998144, 0.019040,
		0.511614, 0.046012, 0.857983,
		-0.857267, -0.039884, 0.513326,
		4.825438, 2.747717, 1.659460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.813584, 1.580637, 1.557784> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.529358, 1.572601, 1.839121>,  <4.358822, 1.567780, 2.007924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.529358, 1.572601, 1.839121>,  <4.813584, 1.580637, 1.557784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.529358, 1.572601, 1.839121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334201, 0.889281, -0.312232,
		-0.619198, -0.456920, -0.638606,
		-0.710566, -0.020090, 0.703344,
		4.316188, 1.566574, 2.050125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.131274, 1.914858, 1.256595>,  <4.813584, 1.580637, 1.557784>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.131274, 1.914858, 1.256595> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.188492, 1.941216, 1.651603>,  <4.222823, 1.957030, 1.888608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.188492, 1.941216, 1.651603>,  <4.131274, 1.914858, 1.256595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.188492, 1.941216, 1.651603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172317, 0.984200, -0.040711,
		-0.974600, -0.164343, 0.152140,
		0.143045, 0.065893, 0.987520,
		4.231405, 1.960983, 1.947859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.618103, 2.294996, 1.741504>,  <4.131274, 1.914858, 1.256595>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.618103, 2.294996, 1.741504> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.999344, 2.317749, 1.860405>,  <4.228089, 2.331401, 1.931745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.999344, 2.317749, 1.860405>,  <3.618103, 2.294996, 1.741504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.999344, 2.317749, 1.860405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011336, 0.988199, -0.152755,
		-0.302433, 0.142221, 0.942501,
		0.953103, 0.056882, 0.297251,
		4.285275, 2.334814, 1.949580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.691081, 2.762681, 2.293911>,  <3.618103, 2.294996, 1.741504>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.691081, 2.762681, 2.293911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.046181, 2.755867, 2.109907>,  <4.259241, 2.751779, 1.999504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.046181, 2.755867, 2.109907>,  <3.691081, 2.762681, 2.293911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.046181, 2.755867, 2.109907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025755, 0.999588, 0.012686,
		0.459604, -0.023109, 0.887824,
		0.887751, -0.017035, -0.460010,
		4.312506, 2.750757, 1.971904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.124282, 3.280535, 2.660327>,  <3.691081, 2.762681, 2.293911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.124282, 3.280535, 2.660327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.307281, 3.220963, 2.309667>,  <4.417081, 3.185219, 2.099271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.307281, 3.220963, 2.309667>,  <4.124282, 3.280535, 2.660327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.307281, 3.220963, 2.309667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236342, 0.970780, -0.041584,
		0.857227, -0.188165, 0.479328,
		0.457497, -0.148932, -0.876650,
		4.444530, 3.176283, 2.046672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.738402, 3.649133, 2.677652>,  <4.124282, 3.280535, 2.660327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.738402, 3.649133, 2.677652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.654243, 3.606880, 2.288895>,  <4.603748, 3.581528, 2.055641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.654243, 3.606880, 2.288895>,  <4.738402, 3.649133, 2.677652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.654243, 3.606880, 2.288895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160214, 0.976979, -0.140869,
		0.964399, -0.185349, -0.188627,
		-0.210394, -0.105633, -0.971893,
		4.591125, 3.575190, 1.997327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.321018, 4.000175, 2.263607>,  <4.738402, 3.649133, 2.677652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.321018, 4.000175, 2.263607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.011276, 3.973862, 2.011877>,  <4.825431, 3.958074, 1.860839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.011276, 3.973862, 2.011877>,  <5.321018, 4.000175, 2.263607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.011276, 3.973862, 2.011877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041350, 0.987194, -0.154069,
		0.631401, -0.145327, -0.761717,
		-0.774353, -0.065783, -0.629325,
		4.778970, 3.954127, 1.823079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.513144, 4.312699, 1.685974>,  <5.321018, 4.000175, 2.263607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.513144, 4.312699, 1.685974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.115311, 4.326859, 1.725069>,  <4.876611, 4.335354, 1.748526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.115311, 4.326859, 1.725069>,  <5.513144, 4.312699, 1.685974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.115311, 4.326859, 1.725069> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016749, 0.982521, -0.185396,
		-0.102592, -0.182754, -0.977791,
		-0.994582, 0.035398, 0.097738,
		4.816936, 4.337478, 1.754390>
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
