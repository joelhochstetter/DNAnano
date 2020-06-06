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
	<23.792175, 34.712906, 35.207100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.184872, 34.788902, 35.203426>,  <24.420490, 34.834499, 35.201221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.184872, 34.788902, 35.203426>,  <23.792175, 34.712906, 35.207100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.184872, 34.788902, 35.203426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160108, -0.799328, 0.579172,
		0.102702, -0.570068, -0.815154,
		0.981742, 0.189995, -0.009180,
		24.479395, 34.845901, 35.200672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.263752, 34.170265, 34.944290>,  <23.792175, 34.712906, 35.207100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.263752, 34.170265, 34.944290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.421928, 34.396946, 35.233418>,  <24.516834, 34.532955, 35.406895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.421928, 34.396946, 35.233418>,  <24.263752, 34.170265, 34.944290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.421928, 34.396946, 35.233418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065419, -0.802347, 0.593262,
		0.916158, -0.187315, -0.354354,
		0.395442, 0.566704, 0.722823,
		24.540562, 34.566956, 35.450264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.192001, 33.416859, 34.724632>,  <24.263752, 34.170265, 34.944290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.192001, 33.416859, 34.724632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.585960, 33.464172, 34.775200>,  <24.822336, 33.492561, 34.805538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.585960, 33.464172, 34.775200>,  <24.192001, 33.416859, 34.724632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.585960, 33.464172, 34.775200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154289, 0.268459, 0.950855,
		0.078535, -0.956001, 0.282655,
		0.984899, 0.118286, 0.126417,
		24.881430, 33.499657, 34.813126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.422132, 32.929699, 35.243649>,  <24.192001, 33.416859, 34.724632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.422132, 32.929699, 35.243649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.647745, 33.259422, 35.224094>,  <24.783113, 33.457256, 35.212364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.647745, 33.259422, 35.224094>,  <24.422132, 32.929699, 35.243649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.647745, 33.259422, 35.224094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191313, 0.188035, 0.963350,
		0.803285, -0.534009, 0.263758,
		0.564033, 0.824304, -0.048883,
		24.816956, 33.506714, 35.209431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.003359, 32.918957, 35.781448>,  <24.422132, 32.929699, 35.243649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.003359, 32.918957, 35.781448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.794914, 33.249321, 35.695362>,  <24.669847, 33.447540, 35.643711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.794914, 33.249321, 35.695362>,  <25.003359, 32.918957, 35.781448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.794914, 33.249321, 35.695362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165194, 0.149791, 0.974820,
		0.837348, 0.543544, 0.058376,
		-0.521113, 0.825907, -0.215217,
		24.638580, 33.497093, 35.630798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.305246, 33.635559, 36.018520>,  <25.003359, 32.918957, 35.781448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.305246, 33.635559, 36.018520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.905674, 33.620548, 36.029308>,  <24.665930, 33.611542, 36.035782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.905674, 33.620548, 36.029308>,  <25.305246, 33.635559, 36.018520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.905674, 33.620548, 36.029308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017739, 0.227572, 0.973599,
		-0.042674, 0.973038, -0.226664,
		-0.998931, -0.037526, 0.026972,
		24.605995, 33.609291, 36.037399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.476742, 34.046219, 36.736576>,  <25.305246, 33.635559, 36.018520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.476742, 34.046219, 36.736576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.339773, 33.670879, 36.755573>,  <25.257593, 33.445675, 36.766972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.339773, 33.670879, 36.755573>,  <25.476742, 34.046219, 36.736576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.339773, 33.670879, 36.755573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526176, -0.149641, 0.837106,
		-0.778388, 0.311632, 0.544976,
		-0.342420, -0.938346, 0.047495,
		25.237047, 33.389374, 36.769821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.886641, 33.434345, 36.908157>,  <25.476742, 34.046219, 36.736576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.886641, 33.434345, 36.908157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.201958, 33.675453, 36.957573>,  <26.391148, 33.820118, 36.987221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.201958, 33.675453, 36.957573>,  <25.886641, 33.434345, 36.908157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.201958, 33.675453, 36.957573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612444, 0.749322, 0.251850,
		0.059241, -0.274190, 0.959849,
		0.788291, 0.602774, 0.123536,
		26.438444, 33.856285, 36.994633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.798058, 33.687828, 37.620972>,  <25.886641, 33.434345, 36.908157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.798058, 33.687828, 37.620972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.034670, 33.958027, 37.444885>,  <26.176638, 34.120148, 37.339233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.034670, 33.958027, 37.444885>,  <25.798058, 33.687828, 37.620972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.034670, 33.958027, 37.444885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581352, 0.735644, 0.347645,
		0.558675, 0.050276, 0.827861,
		0.591533, 0.675500, -0.440214,
		26.212130, 34.160675, 37.312820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.961914, 34.112251, 38.117470>,  <25.798058, 33.687828, 37.620972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.961914, 34.112251, 38.117470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.033939, 34.336620, 37.794250>,  <26.077154, 34.471241, 37.600319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.033939, 34.336620, 37.794250>,  <25.961914, 34.112251, 38.117470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.033939, 34.336620, 37.794250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537431, 0.744129, 0.396787,
		0.823860, 0.362825, 0.435446,
		0.180064, 0.560919, -0.808052,
		26.087959, 34.504894, 37.551834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.229870, 34.664371, 38.443798>,  <25.961914, 34.112251, 38.117470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.229870, 34.664371, 38.443798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.109358, 34.793697, 38.084976>,  <26.037050, 34.871292, 37.869682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.109358, 34.793697, 38.084976>,  <26.229870, 34.664371, 38.443798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.109358, 34.793697, 38.084976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576066, 0.687960, 0.441428,
		0.759854, 0.649753, -0.021019,
		-0.301280, 0.323313, -0.897050,
		26.018974, 34.890690, 37.815861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.085730, 35.332104, 38.501137>,  <26.229870, 34.664371, 38.443798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.085730, 35.332104, 38.501137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.406179, 35.107418, 38.583775>,  <26.598450, 34.972607, 38.633358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.406179, 35.107418, 38.583775>,  <26.085730, 35.332104, 38.501137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.406179, 35.107418, 38.583775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538883, 0.827173, 0.159341,
		-0.260389, -0.016324, 0.965366,
		0.801126, -0.561710, 0.206590,
		26.646517, 34.938904, 38.645752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.425911, 35.556484, 38.924442>,  <26.085730, 35.332104, 38.501137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.425911, 35.556484, 38.924442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.265068, 35.782112, 38.635960>,  <25.168562, 35.917488, 38.462872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.265068, 35.782112, 38.635960>,  <25.425911, 35.556484, 38.924442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.265068, 35.782112, 38.635960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345343, -0.636078, -0.690031,
		-0.847966, -0.526531, 0.060977,
		-0.402109, 0.564065, -0.721207,
		25.144436, 35.951332, 38.419598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.155609, 35.134861, 38.417225>,  <25.425911, 35.556484, 38.924442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.155609, 35.134861, 38.417225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.237452, 35.467480, 38.210663>,  <25.286556, 35.667049, 38.086727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.237452, 35.467480, 38.210663>,  <25.155609, 35.134861, 38.417225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.237452, 35.467480, 38.210663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362699, -0.554415, -0.749048,
		-0.909167, -0.034038, -0.415037,
		0.204607, 0.831544, -0.516401,
		25.298834, 35.716942, 38.055744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.819546, 35.071098, 37.670441>,  <25.155609, 35.134861, 38.417225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.819546, 35.071098, 37.670441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.113562, 35.342297, 37.673012>,  <25.289970, 35.505016, 37.674557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.113562, 35.342297, 37.673012>,  <24.819546, 35.071098, 37.670441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.113562, 35.342297, 37.673012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405006, -0.431433, -0.806124,
		-0.543774, 0.595137, -0.591711,
		0.735038, 0.677996, 0.006432,
		25.334072, 35.545696, 37.674942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.045841, 35.307495, 36.976379>,  <24.819546, 35.071098, 37.670441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.045841, 35.307495, 36.976379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.367702, 35.331200, 37.212692>,  <25.560820, 35.345425, 37.354481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.367702, 35.331200, 37.212692>,  <25.045841, 35.307495, 36.976379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.367702, 35.331200, 37.212692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483817, -0.642213, -0.594544,
		0.344171, 0.764232, -0.545432,
		0.804653, 0.059264, 0.590780,
		25.609098, 35.348980, 37.389927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.732821, 35.375778, 36.614628>,  <25.045841, 35.307495, 36.976379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.732821, 35.375778, 36.614628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.813580, 35.224731, 36.976101>,  <25.862036, 35.134102, 37.192986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.813580, 35.224731, 36.976101>,  <25.732821, 35.375778, 36.614628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.813580, 35.224731, 36.976101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496244, -0.756037, -0.426790,
		0.844381, 0.534615, 0.034746,
		0.201899, -0.377616, 0.903683,
		25.874149, 35.111446, 37.247208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.401817, 35.379593, 36.673851>,  <25.732821, 35.375778, 36.614628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.401817, 35.379593, 36.673851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.272602, 35.087231, 36.914326>,  <26.195074, 34.911816, 37.058613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.272602, 35.087231, 36.914326>,  <26.401817, 35.379593, 36.673851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.272602, 35.087231, 36.914326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733901, -0.594548, -0.328485,
		0.597526, 0.335100, 0.728471,
		-0.323036, -0.730904, 0.601189,
		26.175692, 34.867958, 37.094681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.969671, 35.040161, 36.726833>,  <26.401817, 35.379593, 36.673851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.969671, 35.040161, 36.726833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.741894, 34.761120, 36.900764>,  <26.605227, 34.593693, 37.005123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.741894, 34.761120, 36.900764>,  <26.969671, 35.040161, 36.726833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.741894, 34.761120, 36.900764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696526, -0.690397, -0.195459,
		0.436559, 0.191568, 0.879044,
		-0.569445, -0.697606, 0.434831,
		26.571060, 34.551838, 37.031216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.433516, 34.683094, 37.198147>,  <26.969671, 35.040161, 36.726833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.433516, 34.683094, 37.198147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.130072, 34.429550, 37.137833>,  <26.948006, 34.277424, 37.101643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.130072, 34.429550, 37.137833>,  <27.433516, 34.683094, 37.198147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.130072, 34.429550, 37.137833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649321, -0.716384, -0.255296,
		0.053798, -0.291580, 0.955032,
		-0.758609, -0.633857, -0.150789,
		26.902489, 34.239391, 37.092594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.542341, 33.988785, 37.579212>,  <27.433516, 34.683094, 37.198147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.542341, 33.988785, 37.579212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.339211, 33.907520, 37.244347>,  <27.217333, 33.858761, 37.043427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.339211, 33.907520, 37.244347>,  <27.542341, 33.988785, 37.579212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.339211, 33.907520, 37.244347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595209, -0.785277, -0.170488,
		-0.622767, -0.584864, 0.519706,
		-0.507826, -0.203160, -0.837161,
		27.186863, 33.846573, 36.993198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.668499, 34.262058, 38.143242>,  <27.542341, 33.988785, 37.579212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.668499, 34.262058, 38.143242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.406271, 34.248756, 38.445004>,  <27.248934, 34.240776, 38.626060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.406271, 34.248756, 38.445004>,  <27.668499, 34.262058, 38.143242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.406271, 34.248756, 38.445004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755108, -0.020706, 0.655273,
		-0.006168, 0.999233, 0.038683,
		-0.655572, -0.033252, 0.754401,
		27.209599, 34.238781, 38.671322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.363096, 34.609272, 37.910419>,  <27.668499, 34.262058, 38.143242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.363096, 34.609272, 37.910419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.456259, 34.421467, 38.251080>,  <28.512156, 34.308784, 38.455475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.456259, 34.421467, 38.251080>,  <28.363096, 34.609272, 37.910419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.456259, 34.421467, 38.251080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697579, 0.690834, 0.190082,
		-0.677597, 0.549825, 0.488421,
		0.232906, -0.469512, 0.851654,
		28.526131, 34.280613, 38.506577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.298800, 34.985352, 38.575333>,  <28.363096, 34.609272, 37.910419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.298800, 34.985352, 38.575333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.603731, 34.726662, 38.565521>,  <28.786690, 34.571449, 38.559635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.603731, 34.726662, 38.565521>,  <28.298800, 34.985352, 38.575333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.603731, 34.726662, 38.565521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646539, 0.762714, -0.015962,
		0.029034, -0.003692, 0.999572,
		0.762328, -0.646725, -0.024532,
		28.832430, 34.532642, 38.558163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.657614, 35.115192, 39.194221>,  <28.298800, 34.985352, 38.575333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.657614, 35.115192, 39.194221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.826538, 34.983082, 38.856564>,  <28.927893, 34.903816, 38.653969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.826538, 34.983082, 38.856564>,  <28.657614, 35.115192, 39.194221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.826538, 34.983082, 38.856564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474650, 0.873952, -0.104479,
		0.772245, -0.356549, 0.525842,
		0.422309, -0.330274, -0.844141,
		28.953230, 34.883999, 38.603321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.352058, 35.284336, 39.298176>,  <28.657614, 35.115192, 39.194221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.352058, 35.284336, 39.298176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.276926, 35.259480, 38.906082>,  <29.231846, 35.244564, 38.670826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.276926, 35.259480, 38.906082>,  <29.352058, 35.284336, 39.298176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.276926, 35.259480, 38.906082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494675, 0.856198, -0.149066,
		0.848537, -0.512896, -0.130082,
		-0.187832, -0.062140, -0.980234,
		29.220577, 35.240837, 38.612011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.823977, 35.657387, 39.041466>,  <29.352058, 35.284336, 39.298176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.823977, 35.657387, 39.041466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.583590, 35.651394, 38.721813>,  <29.439358, 35.647800, 38.530022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.583590, 35.651394, 38.721813>,  <29.823977, 35.657387, 39.041466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.583590, 35.651394, 38.721813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347751, 0.895331, -0.278300,
		0.719659, -0.445149, -0.532854,
		-0.600965, -0.014981, -0.799135,
		29.403299, 35.646900, 38.482071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.182329, 35.745110, 38.354717>,  <29.823977, 35.657387, 39.041466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.182329, 35.745110, 38.354717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.808416, 35.876339, 38.300240>,  <29.584068, 35.955074, 38.267551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.808416, 35.876339, 38.300240>,  <30.182329, 35.745110, 38.354717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.808416, 35.876339, 38.300240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355184, 0.858072, -0.370886,
		-0.004813, -0.395072, -0.918638,
		-0.934784, 0.328071, -0.136194,
		29.527981, 35.974758, 38.259380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.143438, 36.154442, 37.763245>,  <30.182329, 35.745110, 38.354717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.143438, 36.154442, 37.763245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.849949, 36.296448, 37.994976>,  <29.673855, 36.381649, 38.134014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.849949, 36.296448, 37.994976>,  <30.143438, 36.154442, 37.763245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.849949, 36.296448, 37.994976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286745, 0.934782, -0.209668,
		-0.615978, 0.012281, -0.787668,
		-0.733722, 0.355011, 0.579327,
		29.629831, 36.402950, 38.168774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.686235, 36.463860, 37.278217>,  <30.143438, 36.154442, 37.763245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.686235, 36.463860, 37.278217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.758020, 36.614803, 37.641621>,  <29.801092, 36.705368, 37.859665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.758020, 36.614803, 37.641621>,  <29.686235, 36.463860, 37.278217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.758020, 36.614803, 37.641621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256204, 0.873708, -0.413513,
		-0.949817, 0.306975, 0.060118,
		0.179464, 0.377359, 0.908511,
		29.811859, 36.728012, 37.914173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.552965, 37.064255, 37.089268>,  <29.686235, 36.463860, 37.278217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.552965, 37.064255, 37.089268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.753756, 37.151344, 37.424080>,  <29.874229, 37.203598, 37.624966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.753756, 37.151344, 37.424080>,  <29.552965, 37.064255, 37.089268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.753756, 37.151344, 37.424080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392091, 0.805338, -0.444629,
		-0.770897, 0.551385, 0.318893,
		0.501978, 0.217728, 0.837026,
		29.904348, 37.216663, 37.675186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.534983, 37.732018, 36.984074>,  <29.552965, 37.064255, 37.089268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.534983, 37.732018, 36.984074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.823626, 37.661839, 37.251953>,  <29.996811, 37.619732, 37.412682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.823626, 37.661839, 37.251953>,  <29.534983, 37.732018, 36.984074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.823626, 37.661839, 37.251953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555411, 0.724196, -0.408729,
		-0.413283, 0.666901, 0.620032,
		0.721606, -0.175451, 0.669702,
		30.040108, 37.609203, 37.452866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.777960, 38.377785, 37.262146>,  <29.534983, 37.732018, 36.984074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.777960, 38.377785, 37.262146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.087242, 38.134399, 37.333614>,  <30.272812, 37.988369, 37.376495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.087242, 38.134399, 37.333614>,  <29.777960, 38.377785, 37.262146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.087242, 38.134399, 37.333614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627060, 0.691557, -0.358531,
		0.094596, 0.389254, 0.916260,
		0.773206, -0.608466, 0.178667,
		30.319204, 37.951859, 37.387215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.269680, 38.862057, 37.401905>,  <29.777960, 38.377785, 37.262146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.269680, 38.862057, 37.401905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.490547, 38.533749, 37.343323>,  <30.623068, 38.336765, 37.308174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.490547, 38.533749, 37.343323>,  <30.269680, 38.862057, 37.401905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.490547, 38.533749, 37.343323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688669, 0.548020, -0.474773,
		0.469939, 0.161294, 0.867837,
		0.552170, -0.820767, -0.146458,
		30.656199, 38.287518, 37.299385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.982346, 38.970753, 37.641960>,  <30.269680, 38.862057, 37.401905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.982346, 38.970753, 37.641960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.998053, 38.679066, 37.368698>,  <31.007477, 38.504055, 37.204742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.998053, 38.679066, 37.368698>,  <30.982346, 38.970753, 37.641960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.998053, 38.679066, 37.368698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526177, 0.596306, -0.606265,
		0.849468, -0.335652, 0.407114,
		0.039270, -0.729217, -0.683155,
		31.009834, 38.460300, 37.163754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.677359, 38.882252, 37.544147>,  <30.982346, 38.970753, 37.641960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.677359, 38.882252, 37.544147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.413260, 38.812988, 37.251823>,  <31.254801, 38.771431, 37.076427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.413260, 38.812988, 37.251823>,  <31.677359, 38.882252, 37.544147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.413260, 38.812988, 37.251823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536020, 0.572941, -0.620017,
		0.526075, -0.801096, -0.285466,
		-0.660248, -0.173160, -0.730813,
		31.215185, 38.761040, 37.032581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.962208, 38.837440, 36.840652>,  <31.677359, 38.882252, 37.544147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.962208, 38.837440, 36.840652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.053253, 38.448692, 36.864853>,  <32.107880, 38.215443, 36.879372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.053253, 38.448692, 36.864853>,  <31.962208, 38.837440, 36.840652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.053253, 38.448692, 36.864853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973702, -0.226537, 0.024212,
		-0.009826, -0.064417, -0.997875,
		0.227615, -0.971870, 0.060496,
		32.121536, 38.157131, 36.883003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.455700, 38.424160, 36.439423>,  <31.962208, 38.837440, 36.840652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.455700, 38.424160, 36.439423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.591871, 38.234291, 36.764088>,  <31.673574, 38.120369, 36.958885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.591871, 38.234291, 36.764088>,  <31.455700, 38.424160, 36.439423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.591871, 38.234291, 36.764088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938314, -0.227154, 0.260707,
		0.060620, -0.850343, -0.522725,
		0.340429, -0.474676, 0.811659,
		31.694000, 38.091888, 37.007584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.167923, 37.683117, 36.512333>,  <31.455700, 38.424160, 36.439423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.167923, 37.683117, 36.512333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.244329, 37.856304, 36.864708>,  <31.290174, 37.960217, 37.076134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.244329, 37.856304, 36.864708>,  <31.167923, 37.683117, 36.512333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.244329, 37.856304, 36.864708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867200, -0.346018, 0.358102,
		0.459867, -0.832352, 0.309376,
		0.191017, 0.432970, 0.880937,
		31.301634, 37.986195, 37.128990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.266315, 37.172581, 37.077934>,  <31.167923, 37.683117, 36.512333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.266315, 37.172581, 37.077934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.090281, 37.522774, 37.157780>,  <30.984659, 37.732891, 37.205685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.090281, 37.522774, 37.157780>,  <31.266315, 37.172581, 37.077934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.090281, 37.522774, 37.157780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802808, -0.483198, 0.349313,
		0.402271, -0.006520, 0.915498,
		-0.440089, 0.875487, 0.199611,
		30.958254, 37.785419, 37.217663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.298288, 37.279655, 37.761299>,  <31.266315, 37.172581, 37.077934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.298288, 37.279655, 37.761299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.985229, 37.498428, 37.642414>,  <30.797394, 37.629692, 37.571083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.985229, 37.498428, 37.642414>,  <31.298288, 37.279655, 37.761299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.985229, 37.498428, 37.642414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609786, -0.577764, 0.542539,
		0.125010, 0.605853, 0.785694,
		-0.782645, 0.546929, -0.297214,
		30.750437, 37.662506, 37.553249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.014519, 37.557434, 38.402649>,  <31.298288, 37.279655, 37.761299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.014519, 37.557434, 38.402649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.723740, 37.547176, 38.128166>,  <30.549273, 37.541019, 37.963474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.723740, 37.547176, 38.128166>,  <31.014519, 37.557434, 38.402649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.723740, 37.547176, 38.128166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569896, -0.534965, 0.623724,
		-0.383096, 0.844485, 0.374276,
		-0.726950, -0.025648, -0.686211,
		30.505655, 37.539482, 37.922302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.361841, 37.837700, 38.678341>,  <31.014519, 37.557434, 38.402649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.361841, 37.837700, 38.678341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.227207, 37.599457, 38.386600>,  <30.146427, 37.456509, 38.211555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.227207, 37.599457, 38.386600>,  <30.361841, 37.837700, 38.678341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.227207, 37.599457, 38.386600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641848, -0.421629, 0.640515,
		-0.689015, 0.683722, -0.240379,
		-0.336583, -0.595612, -0.729355,
		30.126232, 37.420773, 38.167793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.715435, 37.979145, 38.751297>,  <30.361841, 37.837700, 38.678341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.715435, 37.979145, 38.751297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.747385, 37.635559, 38.548992>,  <29.766556, 37.429405, 38.427608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.747385, 37.635559, 38.548992>,  <29.715435, 37.979145, 38.751297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.747385, 37.635559, 38.548992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687688, -0.414784, 0.595851,
		-0.721599, 0.300211, -0.623834,
		0.079875, -0.858969, -0.505759,
		29.771347, 37.377869, 38.397263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.027967, 37.637135, 38.806576>,  <29.715435, 37.979145, 38.751297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.027967, 37.637135, 38.806576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.229767, 37.329540, 38.649532>,  <29.350845, 37.144985, 38.555305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.229767, 37.329540, 38.649532>,  <29.027967, 37.637135, 38.806576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.229767, 37.329540, 38.649532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401461, -0.611495, 0.681838,
		-0.764403, -0.186368, -0.617216,
		0.504497, -0.768987, -0.392609,
		29.381117, 37.098843, 38.531750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.606213, 37.172573, 38.664219>,  <29.027967, 37.637135, 38.806576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.606213, 37.172573, 38.664219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.939095, 36.994675, 38.796661>,  <29.138824, 36.887936, 38.876129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.939095, 36.994675, 38.796661>,  <28.606213, 37.172573, 38.664219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.939095, 36.994675, 38.796661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525352, -0.441512, 0.727374,
		-0.177308, -0.779274, -0.601077,
		0.832206, -0.444747, 0.331109,
		29.188757, 36.861252, 38.895992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.540436, 36.411037, 38.749493>,  <28.606213, 37.172573, 38.664219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.540436, 36.411037, 38.749493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.830229, 36.549973, 38.987644>,  <29.004105, 36.633335, 39.130535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.830229, 36.549973, 38.987644>,  <28.540436, 36.411037, 38.749493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.830229, 36.549973, 38.987644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485718, -0.355618, 0.798507,
		0.489082, -0.867692, -0.088930,
		0.724483, 0.347341, 0.595380,
		29.047573, 36.654175, 39.166260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.614666, 36.218708, 38.106842>,  <28.540436, 36.411037, 38.749493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.614666, 36.218708, 38.106842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.973881, 36.090168, 37.986668>,  <29.189409, 36.013042, 37.914562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.973881, 36.090168, 37.986668>,  <28.614666, 36.218708, 38.106842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.973881, 36.090168, 37.986668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230720, -0.925520, 0.300302,
		-0.374562, -0.200366, -0.905294,
		0.898038, -0.321351, -0.300436,
		29.243292, 35.993763, 37.896538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.596245, 35.627068, 37.529510>,  <28.614666, 36.218708, 38.106842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.596245, 35.627068, 37.529510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.929035, 35.607746, 37.750591>,  <29.128710, 35.596153, 37.883240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.929035, 35.607746, 37.750591>,  <28.596245, 35.627068, 37.529510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.929035, 35.607746, 37.750591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206378, -0.951659, 0.227493,
		0.515000, -0.303335, -0.801725,
		0.831975, -0.048300, 0.552706,
		29.178627, 35.593258, 37.916405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.100050, 35.109600, 37.314411>,  <28.596245, 35.627068, 37.529510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.100050, 35.109600, 37.314411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.173170, 35.136040, 37.706779>,  <29.217043, 35.151905, 37.942200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.173170, 35.136040, 37.706779>,  <29.100050, 35.109600, 37.314411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.173170, 35.136040, 37.706779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373591, -0.918226, 0.131496,
		0.909403, -0.390502, -0.143158,
		0.182801, 0.066100, 0.980925,
		29.228010, 35.155869, 38.001057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.475773, 34.517059, 37.464897>,  <29.100050, 35.109600, 37.314411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.475773, 34.517059, 37.464897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.318069, 34.633682, 37.813507>,  <29.223448, 34.703655, 38.022675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.318069, 34.633682, 37.813507>,  <29.475773, 34.517059, 37.464897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.318069, 34.633682, 37.813507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464529, -0.881493, 0.084753,
		0.792953, -0.371434, 0.482973,
		-0.394257, 0.291560, 0.871524,
		29.199793, 34.721149, 38.074963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.485455, 33.979115, 37.927837>,  <29.475773, 34.517059, 37.464897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.485455, 33.979115, 37.927837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.181009, 34.217155, 38.031040>,  <28.998343, 34.359978, 38.092960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.181009, 34.217155, 38.031040>,  <29.485455, 33.979115, 37.927837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.181009, 34.217155, 38.031040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605659, -0.794414, 0.045657,
		0.232132, -0.121512, 0.965064,
		-0.761113, 0.595098, 0.258004,
		28.952675, 34.395683, 38.108440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.222374, 33.543785, 38.480186>,  <29.485455, 33.979115, 37.927837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.222374, 33.543785, 38.480186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.962719, 33.792618, 38.305084>,  <28.806927, 33.941917, 38.200024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.962719, 33.792618, 38.305084>,  <29.222374, 33.543785, 38.480186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.962719, 33.792618, 38.305084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599157, -0.772708, -0.209602,
		-0.468648, 0.126223, 0.874321,
		-0.649138, 0.622085, -0.437756,
		28.767977, 33.979244, 38.173756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.884024, 33.155331, 38.333168>,  <29.222374, 33.543785, 38.480186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.884024, 33.155331, 38.333168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.689903, 33.319725, 38.641865>,  <29.573431, 33.418362, 38.827084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.689903, 33.319725, 38.641865>,  <29.884024, 33.155331, 38.333168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.689903, 33.319725, 38.641865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638649, -0.436217, 0.633910,
		0.597170, 0.800506, -0.050778,
		-0.485299, 0.410981, 0.771738,
		29.544313, 33.443020, 38.873386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.420996, 33.256252, 38.762188>,  <29.884024, 33.155331, 38.333168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.420996, 33.256252, 38.762188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.099535, 33.231812, 38.998970>,  <29.906658, 33.217148, 39.141041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.099535, 33.231812, 38.998970>,  <30.420996, 33.256252, 38.762188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.099535, 33.231812, 38.998970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587633, -0.238554, 0.773162,
		0.093971, 0.969205, 0.227620,
		-0.803652, -0.061102, 0.591954,
		29.858438, 33.213482, 39.176556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.366241, 33.776859, 39.240227>,  <30.420996, 33.256252, 38.762188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.366241, 33.776859, 39.240227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.215176, 33.417408, 39.329517>,  <30.124537, 33.201736, 39.383091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.215176, 33.417408, 39.329517>,  <30.366241, 33.776859, 39.240227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.215176, 33.417408, 39.329517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773907, -0.173985, 0.608931,
		-0.508366, 0.402730, 0.761165,
		-0.377666, -0.898631, 0.223228,
		30.101875, 33.147820, 39.396484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.096127, 33.884323, 39.894058>,  <30.366241, 33.776859, 39.240227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.096127, 33.884323, 39.894058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.219015, 33.523411, 39.773060>,  <30.292747, 33.306862, 39.700462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.219015, 33.523411, 39.773060>,  <30.096127, 33.884323, 39.894058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.219015, 33.523411, 39.773060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807484, 0.078962, 0.584581,
		-0.503572, -0.423853, 0.752837,
		0.307222, -0.902282, -0.302492,
		30.311182, 33.252728, 39.682312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.471514, 33.531807, 40.427189>,  <30.096127, 33.884323, 39.894058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.471514, 33.531807, 40.427189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.577671, 33.370567, 40.076859>,  <30.641365, 33.273823, 39.866661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.577671, 33.370567, 40.076859>,  <30.471514, 33.531807, 40.427189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.577671, 33.370567, 40.076859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947592, -0.058527, 0.314076,
		-0.177864, -0.913282, 0.366444,
		0.265393, -0.403102, -0.875828,
		30.657290, 33.249638, 39.814110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.770960, 32.827778, 40.489269>,  <30.471514, 33.531807, 40.427189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.770960, 32.827778, 40.489269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.904718, 33.089474, 40.217934>,  <30.984974, 33.246490, 40.055130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.904718, 33.089474, 40.217934>,  <30.770960, 32.827778, 40.489269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.904718, 33.089474, 40.217934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910991, -0.040028, 0.410479,
		0.241399, -0.755228, -0.609391,
		0.334397, 0.654239, -0.678343,
		31.005037, 33.285744, 40.014431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.423195, 32.583454, 40.103840>,  <30.770960, 32.827778, 40.489269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.423195, 32.583454, 40.103840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.389324, 32.980339, 40.140396>,  <31.369001, 33.218468, 40.162331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.389324, 32.980339, 40.140396>,  <31.423195, 32.583454, 40.103840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.389324, 32.980339, 40.140396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876944, 0.030662, 0.479614,
		0.473075, 0.120760, -0.872707,
		-0.084677, 0.992208, 0.091394,
		31.363920, 33.278000, 40.167816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.970558, 32.972050, 39.916378>,  <31.423195, 32.583454, 40.103840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.970558, 32.972050, 39.916378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.801527, 33.199867, 40.198383>,  <31.700108, 33.336559, 40.367588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.801527, 33.199867, 40.198383>,  <31.970558, 32.972050, 39.916378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.801527, 33.199867, 40.198383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878327, 0.065495, 0.473552,
		0.223534, 0.819348, -0.527922,
		-0.422580, 0.569543, 0.705015,
		31.674753, 33.370731, 40.409889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.429562, 33.462975, 39.978035>,  <31.970558, 32.972050, 39.916378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.429562, 33.462975, 39.978035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.216034, 33.491253, 40.315090>,  <32.087917, 33.508221, 40.517323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.216034, 33.491253, 40.315090>,  <32.429562, 33.462975, 39.978035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.216034, 33.491253, 40.315090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830716, 0.229986, 0.506969,
		-0.157952, 0.970622, -0.181502,
		-0.533819, 0.070700, 0.842638,
		32.055889, 33.512463, 40.567883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.505119, 34.160946, 40.206902>,  <32.429562, 33.462975, 39.978035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.505119, 34.160946, 40.206902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.449028, 33.927254, 40.526653>,  <32.415371, 33.787037, 40.718506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.449028, 33.927254, 40.526653>,  <32.505119, 34.160946, 40.206902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.449028, 33.927254, 40.526653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906933, 0.248131, 0.340447,
		-0.397251, 0.772724, 0.495065,
		-0.140230, -0.584233, 0.799379,
		32.406960, 33.751984, 40.766468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160919, 34.225475, 40.612366>,  <32.505119, 34.160946, 40.206902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160919, 34.225475, 40.612366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.222290, 34.362865, 40.241749>,  <33.259113, 34.445301, 40.019379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.222290, 34.362865, 40.241749>,  <33.160919, 34.225475, 40.612366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.222290, 34.362865, 40.241749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987470, -0.018279, 0.156745,
		0.036902, -0.938984, -0.341975,
		0.153432, 0.343474, -0.926544,
		33.268318, 34.465908, 39.963787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.563496, 33.764648, 40.087906>,  <33.160919, 34.225475, 40.612366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.563496, 33.764648, 40.087906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604862, 34.160954, 40.052803>,  <33.629681, 34.398735, 40.031742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604862, 34.160954, 40.052803>,  <33.563496, 33.764648, 40.087906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.604862, 34.160954, 40.052803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947423, -0.071261, 0.311949,
		0.302813, -0.115402, -0.946037,
		0.103415, 0.990759, -0.087755,
		33.635887, 34.458179, 40.026478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.205559, 33.903294, 39.785225>,  <33.563496, 33.764648, 40.087906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.205559, 33.903294, 39.785225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122009, 34.211086, 40.026646>,  <34.071880, 34.395763, 40.171497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122009, 34.211086, 40.026646>,  <34.205559, 33.903294, 39.785225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.122009, 34.211086, 40.026646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896789, -0.095442, 0.432041,
		0.390051, 0.631498, -0.670127,
		-0.208874, 0.769481, 0.603548,
		34.059345, 34.441929, 40.207710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.624031, 34.519680, 39.610874>,  <34.205559, 33.903294, 39.785225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.624031, 34.519680, 39.610874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.532230, 34.407372, 39.983646>,  <34.477150, 34.339989, 40.207310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.532230, 34.407372, 39.983646>,  <34.624031, 34.519680, 39.610874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.532230, 34.407372, 39.983646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970521, 0.006381, 0.240931,
		-0.073593, 0.959754, 0.271028,
		-0.229505, -0.280769, 0.931931,
		34.463379, 34.323139, 40.263226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948494, 34.513367, 39.184444>,  <34.624031, 34.519680, 39.610874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948494, 34.513367, 39.184444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065147, 34.752151, 38.885490>,  <34.135139, 34.895424, 38.706120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065147, 34.752151, 38.885490>,  <33.948494, 34.513367, 39.184444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065147, 34.752151, 38.885490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283766, -0.692182, -0.663597,
		-0.913469, 0.405610, -0.032467,
		0.291634, 0.596962, -0.747386,
		34.152637, 34.931240, 38.661274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.558552, 34.398743, 38.677189>,  <33.948494, 34.513367, 39.184444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.558552, 34.398743, 38.677189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867668, 34.560741, 38.481731>,  <34.053139, 34.657940, 38.364456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867668, 34.560741, 38.481731>,  <33.558552, 34.398743, 38.677189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867668, 34.560741, 38.481731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155003, -0.626175, -0.764120,
		-0.615441, 0.666247, -0.421126,
		0.772791, 0.404995, -0.488644,
		34.099506, 34.682240, 38.335136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.309769, 34.434944, 38.049789>,  <33.558552, 34.398743, 38.677189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.309769, 34.434944, 38.049789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697727, 34.472115, 37.959755>,  <33.930504, 34.494415, 37.905735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697727, 34.472115, 37.959755>,  <33.309769, 34.434944, 38.049789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697727, 34.472115, 37.959755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132615, -0.573662, -0.808286,
		-0.204232, 0.813804, -0.544070,
		0.969898, 0.092926, -0.225082,
		33.988697, 34.499992, 37.892231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274998, 34.549225, 37.369183>,  <33.309769, 34.434944, 38.049789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.274998, 34.549225, 37.369183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.646694, 34.431374, 37.458355>,  <33.869713, 34.360661, 37.511860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.646694, 34.431374, 37.458355>,  <33.274998, 34.549225, 37.369183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.646694, 34.431374, 37.458355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078196, -0.432884, -0.898052,
		0.361098, 0.851941, -0.379215,
		0.929244, -0.294632, 0.222932,
		33.925468, 34.342983, 37.525234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.553940, 34.656277, 36.782349>,  <33.274998, 34.549225, 37.369183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.553940, 34.656277, 36.782349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.824062, 34.419670, 36.958565>,  <33.986134, 34.277706, 37.064293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.824062, 34.419670, 36.958565>,  <33.553940, 34.656277, 36.782349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.824062, 34.419670, 36.958565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105959, -0.513299, -0.851643,
		0.729890, 0.621796, -0.283956,
		0.675302, -0.591518, 0.440537,
		34.026653, 34.242214, 37.090725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.154778, 34.646816, 36.386108>,  <33.553940, 34.656277, 36.782349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.154778, 34.646816, 36.386108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.171982, 34.311466, 36.603462>,  <34.182304, 34.110256, 36.733875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.171982, 34.311466, 36.603462>,  <34.154778, 34.646816, 36.386108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.171982, 34.311466, 36.603462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092488, -0.538214, -0.837718,
		0.994784, 0.086289, 0.054390,
		0.043013, -0.838379, 0.543388,
		34.184887, 34.059952, 36.766479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749088, 34.276405, 36.161774>,  <34.154778, 34.646816, 36.386108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749088, 34.276405, 36.161774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528828, 33.994286, 36.340363>,  <34.396671, 33.825012, 36.447514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528828, 33.994286, 36.340363>,  <34.749088, 34.276405, 36.161774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528828, 33.994286, 36.340363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097017, -0.585313, -0.804982,
		0.829077, -0.399951, 0.390731,
		-0.550653, -0.705300, 0.446468,
		34.363632, 33.782696, 36.474304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934658, 33.526562, 35.904854>,  <34.749088, 34.276405, 36.161774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.934658, 33.526562, 35.904854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.575809, 33.453175, 36.065609>,  <34.360500, 33.409142, 36.162064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.575809, 33.453175, 36.065609>,  <34.934658, 33.526562, 35.904854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575809, 33.453175, 36.065609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269821, -0.492771, -0.827268,
		0.349817, -0.850597, 0.392571,
		-0.897120, -0.183469, 0.401889,
		34.306675, 33.398132, 36.186176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.764282, 32.936504, 35.592552>,  <34.934658, 33.526562, 35.904854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.764282, 32.936504, 35.592552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.407532, 33.056782, 35.727695>,  <34.193481, 33.128948, 35.808781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.407532, 33.056782, 35.727695>,  <34.764282, 32.936504, 35.592552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.407532, 33.056782, 35.727695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443416, -0.434122, -0.784169,
		-0.089120, -0.849191, 0.520512,
		-0.891874, 0.300689, 0.337856,
		34.139969, 33.146988, 35.829052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299969, 32.468086, 35.266266>,  <34.764282, 32.936504, 35.592552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.299969, 32.468086, 35.266266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.063931, 32.773067, 35.372440>,  <33.922306, 32.956055, 35.436146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.063931, 32.773067, 35.372440>,  <34.299969, 32.468086, 35.266266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.063931, 32.773067, 35.372440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659663, -0.265813, -0.702985,
		-0.465434, -0.589928, 0.659815,
		-0.590098, 0.762449, 0.265436,
		33.886902, 33.001801, 35.452072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.589375, 32.235683, 35.147175>,  <34.299969, 32.468086, 35.266266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.589375, 32.235683, 35.147175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.547699, 32.633358, 35.158073>,  <33.522694, 32.871964, 35.164612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.547699, 32.633358, 35.158073>,  <33.589375, 32.235683, 35.147175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.547699, 32.633358, 35.158073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751535, -0.060759, -0.656889,
		-0.651414, -0.088915, 0.753495,
		-0.104189, 0.994184, 0.027243,
		33.516441, 32.931614, 35.166248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.868282, 32.291988, 35.128220>,  <33.589375, 32.235683, 35.147175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.868282, 32.291988, 35.128220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.990032, 32.658997, 35.025841>,  <33.063084, 32.879200, 34.964413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.990032, 32.658997, 35.025841>,  <32.868282, 32.291988, 35.128220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.990032, 32.658997, 35.025841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742259, 0.060057, -0.667416,
		-0.596997, 0.393126, 0.699318,
		0.304378, 0.917521, -0.255948,
		33.081345, 32.934254, 34.949055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.281651, 32.815125, 35.232323>,  <32.868282, 32.291988, 35.128220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.281651, 32.815125, 35.232323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.523693, 32.950283, 34.943970>,  <32.668919, 33.031380, 34.770958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.523693, 32.950283, 34.943970>,  <32.281651, 32.815125, 35.232323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.523693, 32.950283, 34.943970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793252, 0.178805, -0.582048,
		-0.067775, 0.924043, 0.376233,
		0.605110, 0.337896, -0.720880,
		32.705227, 33.051651, 34.727707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.954153, 33.325974, 34.921715>,  <32.281651, 32.815125, 35.232323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.954153, 33.325974, 34.921715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.216290, 33.268848, 34.625031>,  <32.373569, 33.234573, 34.447021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.216290, 33.268848, 34.625031>,  <31.954153, 33.325974, 34.921715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.216290, 33.268848, 34.625031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722436, 0.168129, -0.670685,
		0.220488, 0.975365, 0.007005,
		0.655340, -0.142817, -0.741709,
		32.412891, 33.226002, 34.402519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.963232, 33.903809, 34.392635>,  <31.954153, 33.325974, 34.921715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.963232, 33.903809, 34.392635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.110691, 33.575996, 34.217152>,  <32.199165, 33.379307, 34.111862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.110691, 33.575996, 34.217152>,  <31.963232, 33.903809, 34.392635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.110691, 33.575996, 34.217152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621397, 0.133742, -0.771996,
		0.691351, 0.557205, -0.459952,
		0.368645, -0.819533, -0.438708,
		32.221283, 33.330135, 34.085541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.953585, 34.080414, 33.663166>,  <31.963232, 33.903809, 34.392635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.953585, 34.080414, 33.663166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.988262, 33.682461, 33.683922>,  <32.009068, 33.443687, 33.696377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.988262, 33.682461, 33.683922>,  <31.953585, 34.080414, 33.663166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.988262, 33.682461, 33.683922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757757, -0.099663, -0.644882,
		0.646753, 0.016587, -0.762519,
		0.086692, -0.994883, 0.051889,
		32.014271, 33.383995, 33.699490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.891953, 33.916664, 32.986874>,  <31.953585, 34.080414, 33.663166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.891953, 33.916664, 32.986874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.837370, 33.565010, 33.169521>,  <31.804621, 33.354019, 33.279110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.837370, 33.565010, 33.169521>,  <31.891953, 33.916664, 32.986874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.837370, 33.565010, 33.169521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552415, -0.315090, -0.771723,
		0.822324, -0.357553, -0.442650,
		-0.136457, -0.879133, 0.456623,
		31.796432, 33.301270, 33.306507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.120197, 33.454014, 32.569035>,  <31.891953, 33.916664, 32.986874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.120197, 33.454014, 32.569035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.863791, 33.279594, 32.821690>,  <31.709948, 33.174942, 32.973282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.863791, 33.279594, 32.821690>,  <32.120197, 33.454014, 32.569035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.863791, 33.279594, 32.821690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552428, -0.309205, -0.774090,
		0.532846, -0.845135, -0.042682,
		-0.641013, -0.436050, 0.631635,
		31.671486, 33.148781, 33.011181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.987093, 32.811481, 32.213875>,  <32.120197, 33.454014, 32.569035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.987093, 32.811481, 32.213875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.683384, 32.839500, 32.472672>,  <31.501160, 32.856312, 32.627949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.683384, 32.839500, 32.472672>,  <31.987093, 32.811481, 32.213875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.683384, 32.839500, 32.472672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613147, -0.410157, -0.675146,
		0.218079, -0.909321, 0.354368,
		-0.759271, 0.070045, 0.646994,
		31.455603, 32.860516, 32.666771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.701092, 32.187618, 32.218445>,  <31.987093, 32.811481, 32.213875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.701092, 32.187618, 32.218445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.429552, 32.454655, 32.340748>,  <31.266628, 32.614876, 32.414131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.429552, 32.454655, 32.340748>,  <31.701092, 32.187618, 32.218445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.429552, 32.454655, 32.340748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708944, -0.487458, -0.509689,
		-0.191218, -0.562768, 0.804194,
		-0.678847, 0.667591, 0.305760,
		31.225899, 32.654930, 32.432476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.106058, 31.742838, 32.427830>,  <31.701092, 32.187618, 32.218445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.106058, 31.742838, 32.427830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.947117, 32.103947, 32.361961>,  <30.851751, 32.320610, 32.322441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.947117, 32.103947, 32.361961>,  <31.106058, 31.742838, 32.427830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.947117, 32.103947, 32.361961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530851, -0.372505, -0.761208,
		-0.748537, -0.215050, 0.627252,
		-0.397353, 0.902770, -0.164674,
		30.827911, 32.374779, 32.312561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.353395, 31.696566, 32.365128>,  <31.106058, 31.742838, 32.427830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.353395, 31.696566, 32.365128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.415125, 32.052696, 32.193779>,  <30.452164, 32.266373, 32.090969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.415125, 32.052696, 32.193779>,  <30.353395, 31.696566, 32.365128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.415125, 32.052696, 32.193779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610268, -0.255078, -0.750005,
		-0.777018, 0.377167, 0.503972,
		0.154326, 0.890326, -0.428373,
		30.461422, 32.319794, 32.065266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.662540, 31.851805, 32.170452>,  <30.353395, 31.696566, 32.365128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.662540, 31.851805, 32.170452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.925320, 32.050274, 31.943388>,  <30.082987, 32.169353, 31.807150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.925320, 32.050274, 31.943388>,  <29.662540, 31.851805, 32.170452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.925320, 32.050274, 31.943388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579735, -0.148913, -0.801082,
		-0.482006, 0.855359, 0.189820,
		0.656946, 0.496171, -0.567658,
		30.122404, 32.199127, 31.773090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.220188, 32.137100, 31.708321>,  <29.662540, 31.851805, 32.170452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.220188, 32.137100, 31.708321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.571430, 32.172070, 31.520153>,  <29.782175, 32.193050, 31.407253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.571430, 32.172070, 31.520153>,  <29.220188, 32.137100, 31.708321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.571430, 32.172070, 31.520153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442311, -0.226633, -0.867755,
		-0.182472, 0.970049, -0.160339,
		0.878103, 0.087421, -0.470417,
		29.834862, 32.198296, 31.379028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.015255, 32.433765, 31.138386>,  <29.220188, 32.137100, 31.708321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.015255, 32.433765, 31.138386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.388006, 32.308716, 31.064770>,  <29.611658, 32.233688, 31.020601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.388006, 32.308716, 31.064770>,  <29.015255, 32.433765, 31.138386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.388006, 32.308716, 31.064770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210784, -0.053720, -0.976055,
		0.295248, 0.948358, -0.115956,
		0.931879, -0.312620, -0.184038,
		29.667570, 32.214931, 31.009558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.375359, 32.904243, 30.690817>,  <29.015255, 32.433765, 31.138386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.375359, 32.904243, 30.690817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.551018, 32.546349, 30.658319>,  <29.656414, 32.331612, 30.638821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.551018, 32.546349, 30.658319>,  <29.375359, 32.904243, 30.690817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.551018, 32.546349, 30.658319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254584, -0.037207, -0.966334,
		0.861589, 0.445049, -0.244124,
		0.439149, -0.894733, -0.081245,
		29.682762, 32.277927, 30.633945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.786015, 32.962265, 30.154615>,  <29.375359, 32.904243, 30.690817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.786015, 32.962265, 30.154615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.730564, 32.566746, 30.176735>,  <29.697294, 32.329433, 30.190006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.730564, 32.566746, 30.176735>,  <29.786015, 32.962265, 30.154615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.730564, 32.566746, 30.176735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344289, -0.004237, -0.938854,
		0.928573, -0.149188, -0.339846,
		-0.138626, -0.988800, 0.055298,
		29.688976, 32.270107, 30.193325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.063850, 32.747589, 29.551573>,  <29.786015, 32.962265, 30.154615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.063850, 32.747589, 29.551573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.829927, 32.453861, 29.689430>,  <29.689573, 32.277626, 29.772144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.829927, 32.453861, 29.689430>,  <30.063850, 32.747589, 29.551573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.829927, 32.453861, 29.689430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375211, -0.131814, -0.917519,
		0.719178, -0.665886, -0.198438,
		-0.584807, -0.734316, 0.344646,
		29.654486, 32.233566, 29.792824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.083265, 32.142952, 29.136602>,  <30.063850, 32.747589, 29.551573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.083265, 32.142952, 29.136602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.726540, 32.122097, 29.316357>,  <29.512505, 32.109585, 29.424210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.726540, 32.122097, 29.316357>,  <30.083265, 32.142952, 29.136602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.726540, 32.122097, 29.316357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441902, -0.112348, -0.890000,
		0.096889, -0.992300, 0.077154,
		-0.891815, -0.052137, 0.449385,
		29.458996, 32.106457, 29.451172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.818550, 31.560177, 28.829018>,  <30.083265, 32.142952, 29.136602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.818550, 31.560177, 28.829018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.510881, 31.770027, 28.974974>,  <29.326281, 31.895937, 29.062548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.510881, 31.770027, 28.974974>,  <29.818550, 31.560177, 28.829018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.510881, 31.770027, 28.974974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436751, -0.014737, -0.899462,
		-0.466502, -0.851206, 0.240465,
		-0.769171, 0.524624, 0.364890,
		29.280130, 31.927414, 29.084440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.284079, 31.269175, 28.518948>,  <29.818550, 31.560177, 28.829018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.284079, 31.269175, 28.518948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.132614, 31.619843, 28.637650>,  <29.041735, 31.830244, 28.708870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.132614, 31.619843, 28.637650>,  <29.284079, 31.269175, 28.518948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.132614, 31.619843, 28.637650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523099, 0.061792, -0.850029,
		-0.763532, -0.477106, 0.435187,
		-0.378663, 0.876670, 0.296754,
		29.019014, 31.882843, 28.726675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.582102, 31.210855, 28.305672>,  <29.284079, 31.269175, 28.518948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.582102, 31.210855, 28.305672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.642094, 31.602423, 28.361132>,  <28.678089, 31.837362, 28.394407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.642094, 31.602423, 28.361132>,  <28.582102, 31.210855, 28.305672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.642094, 31.602423, 28.361132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662339, 0.203599, -0.721010,
		-0.734039, 0.016304, 0.678912,
		0.149981, 0.978919, 0.138651,
		28.687088, 31.896099, 28.402727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.852654, 31.491796, 28.237743>,  <28.582102, 31.210855, 28.305672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.852654, 31.491796, 28.237743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.134211, 31.768436, 28.172964>,  <28.303144, 31.934420, 28.134096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.134211, 31.768436, 28.172964>,  <27.852654, 31.491796, 28.237743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.134211, 31.768436, 28.172964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503789, 0.325362, -0.800210,
		-0.500731, 0.644850, 0.577440,
		0.703893, 0.691597, -0.161950,
		28.345379, 31.975916, 28.124378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.469110, 32.142281, 28.160582>,  <27.852654, 31.491796, 28.237743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.469110, 32.142281, 28.160582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.833172, 32.174271, 27.997992>,  <28.051609, 32.193466, 27.900436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.833172, 32.174271, 27.997992>,  <27.469110, 32.142281, 28.160582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.833172, 32.174271, 27.997992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385552, 0.522490, -0.760495,
		0.151557, 0.848886, 0.506383,
		0.910154, 0.079979, -0.406477,
		28.106218, 32.198265, 27.876049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.498655, 32.862114, 27.978167>,  <27.469110, 32.142281, 28.160582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.498655, 32.862114, 27.978167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.764256, 32.692898, 27.731546>,  <27.923616, 32.591366, 27.583574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.764256, 32.692898, 27.731546>,  <27.498655, 32.862114, 27.978167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.764256, 32.692898, 27.731546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397355, 0.498860, -0.770226,
		0.633411, 0.756422, 0.163146,
		0.664003, -0.423043, -0.616551,
		27.963457, 32.565987, 27.546581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.569069, 33.338547, 27.588306>,  <27.498655, 32.862114, 27.978167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.569069, 33.338547, 27.588306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.710207, 33.029701, 27.376898>,  <27.794889, 32.844395, 27.250053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.710207, 33.029701, 27.376898>,  <27.569069, 33.338547, 27.588306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.710207, 33.029701, 27.376898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123118, 0.521628, -0.844243,
		0.927546, 0.362958, 0.088992,
		0.352846, -0.772118, -0.528521,
		27.816061, 32.798065, 27.218342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.083105, 33.613258, 27.111984>,  <27.569069, 33.338547, 27.588306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.083105, 33.613258, 27.111984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.974182, 33.259365, 26.960670>,  <27.908829, 33.047031, 26.869883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.974182, 33.259365, 26.960670>,  <28.083105, 33.613258, 27.111984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.974182, 33.259365, 26.960670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249412, 0.444605, -0.860302,
		0.929324, -0.139917, -0.341732,
		-0.272306, -0.884731, -0.378285,
		27.892490, 32.993946, 26.847185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.450266, 33.500072, 26.489571>,  <28.083105, 33.613258, 27.111984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.450266, 33.500072, 26.489571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.132923, 33.256878, 26.477304>,  <27.942518, 33.110962, 26.469944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.132923, 33.256878, 26.477304>,  <28.450266, 33.500072, 26.489571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.132923, 33.256878, 26.477304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287543, 0.418664, -0.861417,
		0.536569, -0.674592, -0.506971,
		-0.793355, -0.607986, -0.030668,
		27.894917, 33.074482, 26.468103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.437284, 33.270912, 25.783499>,  <28.450266, 33.500072, 26.489571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.437284, 33.270912, 25.783499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.076250, 33.152222, 25.908268>,  <27.859629, 33.081009, 25.983130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.076250, 33.152222, 25.908268>,  <28.437284, 33.270912, 25.783499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.076250, 33.152222, 25.908268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323008, -0.012247, -0.946317,
		0.284615, -0.954885, -0.084790,
		-0.902585, -0.296724, 0.311921,
		27.805475, 33.063206, 26.001844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.296896, 32.707661, 25.397758>,  <28.437284, 33.270912, 25.783499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.296896, 32.707661, 25.397758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.939648, 32.839935, 25.519732>,  <27.725298, 32.919300, 25.592915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.939648, 32.839935, 25.519732>,  <28.296896, 32.707661, 25.397758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.939648, 32.839935, 25.519732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338544, -0.047796, -0.939736,
		-0.296182, -0.942530, 0.154639,
		-0.893121, 0.330686, 0.304931,
		27.671711, 32.939140, 25.611212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.741489, 32.178898, 25.161373>,  <28.296896, 32.707661, 25.397758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.741489, 32.178898, 25.161373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.572603, 32.538219, 25.210007>,  <27.471272, 32.753811, 25.239187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.572603, 32.538219, 25.210007>,  <27.741489, 32.178898, 25.161373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.572603, 32.538219, 25.210007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182058, 0.047362, -0.982147,
		-0.888024, -0.436815, 0.143546,
		-0.422218, 0.898304, 0.121585,
		27.445938, 32.807709, 25.246483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.066500, 32.054180, 24.885689>,  <27.741489, 32.178898, 25.161373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.066500, 32.054180, 24.885689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.122057, 32.449532, 24.910398>,  <27.155392, 32.686741, 24.925224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.122057, 32.449532, 24.910398>,  <27.066500, 32.054180, 24.885689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.122057, 32.449532, 24.910398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151774, 0.082886, -0.984934,
		-0.978608, 0.127427, 0.161523,
		0.138895, 0.988379, 0.061773,
		27.163725, 32.746044, 24.928930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.429285, 32.405064, 24.749550>,  <27.066500, 32.054180, 24.885689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.429285, 32.405064, 24.749550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.718369, 32.669674, 24.669468>,  <26.891819, 32.828438, 24.621420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.718369, 32.669674, 24.669468>,  <26.429285, 32.405064, 24.749550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.718369, 32.669674, 24.669468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458207, 0.241728, -0.855344,
		-0.517434, 0.709899, 0.477813,
		0.722709, 0.661521, -0.200203,
		26.935181, 32.868130, 24.609407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.134354, 33.068501, 24.739246>,  <26.429285, 32.405064, 24.749550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.134354, 33.068501, 24.739246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.449383, 33.046219, 24.493767>,  <26.638399, 33.032852, 24.346479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.449383, 33.046219, 24.493767>,  <26.134354, 33.068501, 24.739246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.449383, 33.046219, 24.493767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557729, 0.359075, -0.748334,
		0.262048, 0.931645, 0.251730,
		0.787571, -0.055702, -0.613701,
		26.685654, 33.029507, 24.309656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.400230, 33.683456, 24.315857>,  <26.134354, 33.068501, 24.739246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.400230, 33.683456, 24.315857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.401237, 33.320614, 24.147501>,  <26.401842, 33.102909, 24.046488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.401237, 33.320614, 24.147501>,  <26.400230, 33.683456, 24.315857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.401237, 33.320614, 24.147501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591987, 0.337864, -0.731710,
		0.805943, 0.251004, -0.536146,
		0.002517, -0.907108, -0.420890,
		26.401993, 33.048481, 24.021235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.802511, 34.255554, 24.078337>,  <26.400230, 33.683456, 24.315857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.802511, 34.255554, 24.078337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.847473, 34.624912, 23.931524>,  <26.874451, 34.846527, 23.843437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.847473, 34.624912, 23.931524>,  <26.802511, 34.255554, 24.078337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.847473, 34.624912, 23.931524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591864, -0.234480, -0.771178,
		-0.798162, 0.303915, 0.520167,
		0.112404, 0.923393, -0.367030,
		26.881195, 34.901932, 23.821415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.134369, 34.519238, 23.996567>,  <26.802511, 34.255554, 24.078337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.134369, 34.519238, 23.996567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.370502, 34.717899, 23.742058>,  <26.512182, 34.837097, 23.589352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.370502, 34.717899, 23.742058>,  <26.134369, 34.519238, 23.996567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.370502, 34.717899, 23.742058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672779, -0.132765, -0.727834,
		-0.445955, 0.857735, 0.255762,
		0.590333, 0.496652, -0.636274,
		26.547602, 34.866894, 23.551176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.790380, 35.116894, 23.627529>,  <26.134369, 34.519238, 23.996567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.790380, 35.116894, 23.627529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.081478, 34.923042, 23.433407>,  <26.256138, 34.806732, 23.316935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.081478, 34.923042, 23.433407>,  <25.790380, 35.116894, 23.627529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.081478, 34.923042, 23.433407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638093, -0.219013, -0.738154,
		0.251444, 0.846857, -0.468625,
		0.727745, -0.484630, -0.485304,
		26.299801, 34.777653, 23.287815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.938034, 35.292927, 22.882618>,  <25.790380, 35.116894, 23.627529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.938034, 35.292927, 22.882618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.017799, 34.902626, 22.918724>,  <26.065659, 34.668446, 22.940388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.017799, 34.902626, 22.918724>,  <25.938034, 35.292927, 22.882618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.017799, 34.902626, 22.918724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487714, -0.178722, -0.854513,
		0.849923, 0.126376, -0.511526,
		0.199411, -0.975749, 0.090265,
		26.077623, 34.609901, 22.945803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.259523, 34.972427, 22.351795>,  <25.938034, 35.292927, 22.882618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.259523, 34.972427, 22.351795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.015871, 34.723408, 22.548323>,  <25.869680, 34.573997, 22.666239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.015871, 34.723408, 22.548323>,  <26.259523, 34.972427, 22.351795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.015871, 34.723408, 22.548323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552459, -0.111384, -0.826065,
		0.568990, -0.774614, -0.276085,
		-0.609130, -0.622548, 0.491319,
		25.833132, 34.536644, 22.695719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.042187, 34.763176, 22.468706>,  <26.259523, 34.972427, 22.351795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.042187, 34.763176, 22.468706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.772068, 34.927959, 22.713415>,  <26.609997, 35.026829, 22.860241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.772068, 34.927959, 22.713415>,  <27.042187, 34.763176, 22.468706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.772068, 34.927959, 22.713415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732560, 0.278360, 0.621185,
		0.085608, 0.867645, -0.489759,
		-0.675298, 0.411956, 0.611772,
		26.569479, 35.051548, 22.896946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.351500, 35.403519, 22.677423>,  <27.042187, 34.763176, 22.468706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.351500, 35.403519, 22.677423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.078228, 35.270905, 22.937687>,  <26.914265, 35.191338, 23.093845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.078228, 35.270905, 22.937687>,  <27.351500, 35.403519, 22.677423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.078228, 35.270905, 22.937687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572954, 0.309078, 0.759075,
		-0.452762, 0.891379, -0.021202,
		-0.683177, -0.331532, 0.650658,
		26.873276, 35.171444, 23.132885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.268906, 35.936394, 23.151148>,  <27.351500, 35.403519, 22.677423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.268906, 35.936394, 23.151148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.119711, 35.631897, 23.363335>,  <27.030193, 35.449200, 23.490646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.119711, 35.631897, 23.363335>,  <27.268906, 35.936394, 23.151148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.119711, 35.631897, 23.363335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327859, 0.426711, 0.842868,
		-0.867980, 0.488298, 0.090421,
		-0.372987, -0.761238, 0.530469,
		27.007814, 35.403526, 23.522476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.914045, 36.236870, 23.764545>,  <27.268906, 35.936394, 23.151148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.914045, 36.236870, 23.764545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.028391, 35.862156, 23.845263>,  <27.096998, 35.637329, 23.893692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.028391, 35.862156, 23.845263>,  <26.914045, 36.236870, 23.764545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.028391, 35.862156, 23.845263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444722, 0.316222, 0.837989,
		-0.848824, -0.149810, 0.507005,
		0.285866, -0.936782, 0.201793,
		27.114151, 35.581120, 23.905800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.670214, 36.026657, 24.444477>,  <26.914045, 36.236870, 23.764545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.670214, 36.026657, 24.444477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.963522, 35.764523, 24.371977>,  <27.139507, 35.607243, 24.328476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.963522, 35.764523, 24.371977>,  <26.670214, 36.026657, 24.444477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.963522, 35.764523, 24.371977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347642, 0.132251, 0.928254,
		-0.584343, -0.743673, 0.324796,
		0.733272, -0.655332, -0.181252,
		27.183504, 35.567924, 24.317602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.784756, 35.710629, 25.075577>,  <26.670214, 36.026657, 24.444477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.784756, 35.710629, 25.075577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.122480, 35.631161, 24.876511>,  <27.325115, 35.583481, 24.757071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.122480, 35.631161, 24.876511>,  <26.784756, 35.710629, 25.075577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.122480, 35.631161, 24.876511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519930, 0.079001, 0.850548,
		-0.129662, -0.976877, 0.169995,
		0.844310, -0.198669, -0.497665,
		27.375774, 35.571560, 24.727211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.097879, 35.101620, 25.407986>,  <26.784756, 35.710629, 25.075577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.097879, 35.101620, 25.407986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.360781, 35.354855, 25.244415>,  <27.518520, 35.506798, 25.146273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.360781, 35.354855, 25.244415>,  <27.097879, 35.101620, 25.407986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.360781, 35.354855, 25.244415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615639, -0.137999, 0.775851,
		0.434752, -0.761678, -0.480455,
		0.657251, 0.633090, -0.408924,
		27.557957, 35.544781, 25.121738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.655689, 34.946339, 25.792324>,  <27.097879, 35.101620, 25.407986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.655689, 34.946339, 25.792324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.822027, 35.247036, 25.587595>,  <27.921829, 35.427452, 25.464758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.822027, 35.247036, 25.587595>,  <27.655689, 34.946339, 25.792324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.822027, 35.247036, 25.587595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662023, 0.135642, 0.737107,
		0.623537, -0.645359, -0.441263,
		0.415845, 0.751740, -0.511820,
		27.946781, 35.472557, 25.434050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.423544, 34.925709, 25.798000>,  <27.655689, 34.946339, 25.792324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.423544, 34.925709, 25.798000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.329649, 35.311745, 25.751524>,  <28.273312, 35.543365, 25.723639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.329649, 35.311745, 25.751524>,  <28.423544, 34.925709, 25.798000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.329649, 35.311745, 25.751524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606672, 0.238847, 0.758222,
		0.759504, 0.107494, -0.641559,
		-0.234739, 0.965089, -0.116192,
		28.259228, 35.601273, 25.716667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.074453, 35.199913, 25.875458>,  <28.423544, 34.925709, 25.798000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.074453, 35.199913, 25.875458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.809000, 35.494621, 25.927240>,  <28.649729, 35.671448, 25.958311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.809000, 35.494621, 25.927240>,  <29.074453, 35.199913, 25.875458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.809000, 35.494621, 25.927240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556254, 0.370317, 0.743940,
		0.500174, 0.565715, -0.655586,
		-0.663632, 0.736772, 0.129459,
		28.609911, 35.715652, 25.966078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.526863, 35.751717, 25.870459>,  <29.074453, 35.199913, 25.875458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.526863, 35.751717, 25.870459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.168972, 35.832676, 26.029707>,  <28.954237, 35.881252, 26.125256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.168972, 35.832676, 26.029707>,  <29.526863, 35.751717, 25.870459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.168972, 35.832676, 26.029707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436434, 0.206964, 0.875609,
		0.094824, 0.957184, -0.273509,
		-0.894726, 0.202397, 0.398122,
		28.900555, 35.893394, 26.149143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.575041, 36.409821, 26.122875>,  <29.526863, 35.751717, 25.870459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.575041, 36.409821, 26.122875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.287861, 36.225521, 26.331589>,  <29.115553, 36.114941, 26.456818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.287861, 36.225521, 26.331589>,  <29.575041, 36.409821, 26.122875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.287861, 36.225521, 26.331589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493060, 0.192520, 0.848427,
		-0.491367, 0.866397, 0.088959,
		-0.717948, -0.460751, 0.521784,
		29.072477, 36.087296, 26.488125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.766926, 36.603291, 26.820301>,  <29.575041, 36.409821, 26.122875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.766926, 36.603291, 26.820301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.483526, 36.334679, 26.907091>,  <29.313486, 36.173512, 26.959166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.483526, 36.334679, 26.907091>,  <29.766926, 36.603291, 26.820301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.483526, 36.334679, 26.907091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366062, -0.086851, 0.926529,
		-0.603347, 0.735871, 0.307355,
		-0.708499, -0.671529, 0.216973,
		29.270977, 36.133221, 26.972183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.389877, 36.740101, 27.446514>,  <29.766926, 36.603291, 26.820301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.389877, 36.740101, 27.446514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.364157, 36.342152, 27.415293>,  <29.348724, 36.103382, 27.396561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.364157, 36.342152, 27.415293>,  <29.389877, 36.740101, 27.446514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.364157, 36.342152, 27.415293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329958, -0.095012, 0.939202,
		-0.941803, 0.034638, 0.334376,
		-0.064302, -0.994874, -0.078053,
		29.344866, 36.043690, 27.391876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.227671, 36.543518, 28.139044>,  <29.389877, 36.740101, 27.446514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.227671, 36.543518, 28.139044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.346794, 36.198437, 27.975555>,  <29.418268, 35.991386, 27.877462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.346794, 36.198437, 27.975555>,  <29.227671, 36.543518, 28.139044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.346794, 36.198437, 27.975555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281264, -0.329849, 0.901160,
		-0.912251, -0.383331, 0.144416,
		0.297807, -0.862703, -0.408723,
		29.436136, 35.939625, 27.852938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.999882, 36.048538, 28.584774>,  <29.227671, 36.543518, 28.139044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.999882, 36.048538, 28.584774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.312344, 35.906471, 28.379385>,  <29.499821, 35.821232, 28.256151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.312344, 35.906471, 28.379385>,  <28.999882, 36.048538, 28.584774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.312344, 35.906471, 28.379385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462913, -0.222380, 0.858055,
		-0.418943, -0.907965, -0.009299,
		0.781152, -0.355171, -0.513473,
		29.546690, 35.799919, 28.225344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.110153, 35.379333, 28.919741>,  <28.999882, 36.048538, 28.584774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.110153, 35.379333, 28.919741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.450294, 35.497040, 28.745245>,  <29.654379, 35.567665, 28.640547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.450294, 35.497040, 28.745245>,  <29.110153, 35.379333, 28.919741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.450294, 35.497040, 28.745245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518864, -0.330839, 0.788243,
		0.087631, -0.896633, -0.434016,
		0.850354, 0.294269, -0.436239,
		29.705400, 35.585320, 28.614374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.693447, 34.774197, 28.967155>,  <29.110153, 35.379333, 28.919741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.693447, 34.774197, 28.967155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.856615, 35.136513, 28.921291>,  <29.954515, 35.353901, 28.893774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.856615, 35.136513, 28.921291>,  <29.693447, 34.774197, 28.967155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.856615, 35.136513, 28.921291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633472, -0.190345, 0.749988,
		0.657507, -0.378568, -0.651438,
		0.407919, 0.905790, -0.114659,
		29.978991, 35.408249, 28.886894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.334339, 34.613342, 29.092180>,  <29.693447, 34.774197, 28.967155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.334339, 34.613342, 29.092180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.362701, 35.011272, 29.121283>,  <30.379719, 35.250031, 29.138744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.362701, 35.011272, 29.121283>,  <30.334339, 34.613342, 29.092180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.362701, 35.011272, 29.121283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582092, -0.100499, 0.806888,
		0.810025, -0.014861, -0.586207,
		0.070904, 0.994826, 0.072756,
		30.383972, 35.309719, 29.143110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.111441, 34.704567, 29.280329>,  <30.334339, 34.613342, 29.092180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.111441, 34.704567, 29.280329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.896715, 35.028549, 29.374825>,  <30.767879, 35.222939, 29.431522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.896715, 35.028549, 29.374825>,  <31.111441, 34.704567, 29.280329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.896715, 35.028549, 29.374825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459350, 0.045710, 0.887078,
		0.707691, 0.584714, -0.396589,
		-0.536815, 0.809951, 0.236240,
		30.735670, 35.271534, 29.445696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.588175, 35.184669, 29.491276>,  <31.111441, 34.704567, 29.280329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.588175, 35.184669, 29.491276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.235044, 35.276470, 29.655203>,  <31.023167, 35.331551, 29.753559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.235044, 35.276470, 29.655203>,  <31.588175, 35.184669, 29.491276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.235044, 35.276470, 29.655203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429935, 0.043468, 0.901813,
		0.189151, 0.972338, -0.137044,
		-0.882824, 0.229499, 0.409820,
		30.970198, 35.345322, 29.778149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.807678, 35.748272, 29.935207>,  <31.588175, 35.184669, 29.491276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.807678, 35.748272, 29.935207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.448978, 35.627041, 30.064194>,  <31.233759, 35.554302, 30.141586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.448978, 35.627041, 30.064194>,  <31.807678, 35.748272, 29.935207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.448978, 35.627041, 30.064194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244560, 0.267903, 0.931890,
		-0.368825, 0.914534, -0.166121,
		-0.896749, -0.303078, 0.322468,
		31.179955, 35.536118, 30.160934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.582718, 36.262936, 30.389444>,  <31.807678, 35.748272, 29.935207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.582718, 36.262936, 30.389444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.381416, 35.933273, 30.493366>,  <31.260635, 35.735474, 30.555719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.381416, 35.933273, 30.493366>,  <31.582718, 36.262936, 30.389444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.381416, 35.933273, 30.493366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198366, 0.182443, 0.962998,
		-0.841062, 0.536169, 0.071670,
		-0.503254, -0.824158, 0.259803,
		31.230440, 35.686028, 30.571308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.127222, 36.477810, 30.970215>,  <31.582718, 36.262936, 30.389444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.127222, 36.477810, 30.970215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.140945, 36.078533, 30.989994>,  <31.149179, 35.838966, 31.001862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.140945, 36.078533, 30.989994>,  <31.127222, 36.477810, 30.970215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.140945, 36.078533, 30.989994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103683, 0.052765, 0.993210,
		-0.994018, -0.028947, 0.105306,
		0.034307, -0.998187, 0.049448,
		31.151237, 35.779076, 31.004829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.666393, 36.280945, 31.534182>,  <31.127222, 36.477810, 30.970215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.666393, 36.280945, 31.534182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.887604, 35.951218, 31.485748>,  <31.020330, 35.753380, 31.456688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.887604, 35.951218, 31.485748>,  <30.666393, 36.280945, 31.534182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.887604, 35.951218, 31.485748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129166, -0.058749, 0.989881,
		-0.823090, -0.563072, 0.073984,
		0.553028, -0.824317, -0.121085,
		31.053513, 35.703922, 31.449423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.520960, 35.735554, 32.080269>,  <30.666393, 36.280945, 31.534182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.520960, 35.735554, 32.080269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.894341, 35.668365, 31.953489>,  <31.118368, 35.628052, 31.877422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.894341, 35.668365, 31.953489>,  <30.520960, 35.735554, 32.080269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.894341, 35.668365, 31.953489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282136, -0.201857, 0.937898,
		-0.221529, -0.964902, -0.141029,
		0.933447, -0.167982, -0.316951,
		31.174376, 35.617973, 31.858404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.717949, 35.116470, 32.375240>,  <30.520960, 35.735554, 32.080269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.717949, 35.116470, 32.375240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.049200, 35.321194, 32.283802>,  <31.247950, 35.444027, 32.228939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.049200, 35.321194, 32.283802>,  <30.717949, 35.116470, 32.375240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.049200, 35.321194, 32.283802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377650, -0.208062, 0.902270,
		0.414232, -0.833521, -0.365587,
		0.828126, 0.511813, -0.228594,
		31.297638, 35.474739, 32.215225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.285933, 34.721233, 32.711658>,  <30.717949, 35.116470, 32.375240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.285933, 34.721233, 32.711658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.427208, 35.087006, 32.632587>,  <31.511972, 35.306469, 32.585144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.427208, 35.087006, 32.632587>,  <31.285933, 34.721233, 32.711658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.427208, 35.087006, 32.632587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496816, -0.004286, 0.867845,
		0.792737, -0.404720, -0.455818,
		0.353187, 0.914431, -0.197674,
		31.533165, 35.361336, 32.573284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.034245, 34.712326, 32.805756>,  <31.285933, 34.721233, 32.711658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.034245, 34.712326, 32.805756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.947428, 35.102310, 32.825157>,  <31.895338, 35.336300, 32.836800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.947428, 35.102310, 32.825157>,  <32.034245, 34.712326, 32.805756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.947428, 35.102310, 32.825157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646683, 0.106387, 0.755303,
		0.731228, 0.195298, -0.653578,
		-0.217042, 0.974957, 0.048503,
		31.882315, 35.394798, 32.839706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.787823, 35.046761, 32.830849>,  <32.034245, 34.712326, 32.805756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.787823, 35.046761, 32.830849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.498474, 35.305790, 32.926662>,  <32.324863, 35.461208, 32.984150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.498474, 35.305790, 32.926662>,  <32.787823, 35.046761, 32.830849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.498474, 35.305790, 32.926662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594544, 0.407805, 0.692974,
		0.351068, 0.643694, -0.680006,
		-0.723373, 0.647575, 0.239537,
		32.281464, 35.500061, 32.998524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.106201, 35.705074, 32.896481>,  <32.787823, 35.046761, 32.830849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.106201, 35.705074, 32.896481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.767643, 35.746105, 33.105515>,  <32.564510, 35.770725, 33.230934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.767643, 35.746105, 33.105515>,  <33.106201, 35.705074, 32.896481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.767643, 35.746105, 33.105515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510725, 0.434447, 0.741900,
		-0.150933, 0.894837, -0.420103,
		-0.846392, 0.102580, 0.522588,
		32.513725, 35.776878, 33.262291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.132069, 36.395809, 33.219799>,  <33.106201, 35.705074, 32.896481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.132069, 36.395809, 33.219799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.853752, 36.212547, 33.441055>,  <32.686760, 36.102592, 33.573811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.853752, 36.212547, 33.441055>,  <33.132069, 36.395809, 33.219799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853752, 36.212547, 33.441055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429401, 0.351999, 0.831692,
		-0.575745, 0.816208, -0.048189,
		-0.695796, -0.458150, 0.553142,
		32.645012, 36.075104, 33.606998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.018005, 36.842201, 33.654316>,  <33.132069, 36.395809, 33.219799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.018005, 36.842201, 33.654316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.873848, 36.514912, 33.833481>,  <32.787354, 36.318539, 33.940979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.873848, 36.514912, 33.833481>,  <33.018005, 36.842201, 33.654316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.873848, 36.514912, 33.833481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318952, 0.343140, 0.883473,
		-0.876577, 0.461258, 0.137310,
		-0.360393, -0.818227, 0.447908,
		32.765732, 36.269444, 33.967854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.725159, 37.017227, 34.189716>,  <33.018005, 36.842201, 33.654316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.725159, 37.017227, 34.189716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.776237, 36.633194, 34.289257>,  <32.806885, 36.402775, 34.348980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.776237, 36.633194, 34.289257>,  <32.725159, 37.017227, 34.189716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.776237, 36.633194, 34.289257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383626, 0.279189, 0.880275,
		-0.914617, -0.016942, 0.403966,
		0.127697, -0.960087, 0.248852,
		32.814545, 36.345169, 34.363914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.551777, 36.980686, 34.884396>,  <32.725159, 37.017227, 34.189716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.551777, 36.980686, 34.884396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.777607, 36.652050, 34.852779>,  <32.913105, 36.454868, 34.833809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.777607, 36.652050, 34.852779>,  <32.551777, 36.980686, 34.884396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.777607, 36.652050, 34.852779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411992, 0.197530, 0.889519,
		-0.715208, -0.534761, 0.450009,
		0.564571, -0.821591, -0.079043,
		32.946980, 36.405571, 34.829067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482540, 36.694214, 35.552399>,  <32.551777, 36.980686, 34.884396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482540, 36.694214, 35.552399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.808147, 36.552872, 35.368000>,  <33.003513, 36.468067, 35.257362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.808147, 36.552872, 35.368000>,  <32.482540, 36.694214, 35.552399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.808147, 36.552872, 35.368000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543899, 0.185195, 0.818460,
		-0.203834, -0.916974, 0.342943,
		0.814018, -0.353356, -0.460992,
		33.052353, 36.446865, 35.229702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.672783, 36.214478, 36.052055>,  <32.482540, 36.694214, 35.552399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.672783, 36.214478, 36.052055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.980831, 36.306847, 35.814198>,  <33.165657, 36.362267, 35.671482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.980831, 36.306847, 35.814198>,  <32.672783, 36.214478, 36.052055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.980831, 36.306847, 35.814198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617809, -0.037866, 0.785416,
		0.158851, -0.972236, -0.171825,
		0.770116, 0.230919, -0.594641,
		33.211864, 36.376122, 35.635803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.158607, 35.842388, 36.353352>,  <32.672783, 36.214478, 36.052055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.158607, 35.842388, 36.353352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350773, 36.098118, 36.113197>,  <33.466072, 36.251556, 35.969105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350773, 36.098118, 36.113197>,  <33.158607, 35.842388, 36.353352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.350773, 36.098118, 36.113197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763712, 0.031633, 0.644781,
		0.431219, -0.768282, -0.473066,
		0.480410, 0.639329, -0.600387,
		33.494896, 36.289917, 35.933083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878685, 35.667755, 36.360710>,  <33.158607, 35.842388, 36.353352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878685, 35.667755, 36.360710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.884689, 36.046238, 36.231422>,  <33.888290, 36.273327, 36.153851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.884689, 36.046238, 36.231422>,  <33.878685, 35.667755, 36.360710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884689, 36.046238, 36.231422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880676, 0.140562, 0.452384,
		0.473480, -0.291437, -0.831192,
		0.015008, 0.946206, -0.323215,
		33.889191, 36.330101, 36.134457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.615143, 35.819202, 36.407986>,  <33.878685, 35.667755, 36.360710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.615143, 35.819202, 36.407986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.442013, 36.179344, 36.389965>,  <34.338135, 36.395428, 36.379150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.442013, 36.179344, 36.389965>,  <34.615143, 35.819202, 36.407986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.442013, 36.179344, 36.389965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738139, 0.382646, 0.555638,
		0.517510, 0.207235, -0.830203,
		-0.432821, 0.900353, -0.045055,
		34.312168, 36.449451, 36.376450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070839, 36.296051, 36.153351>,  <34.615143, 35.819202, 36.407986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070839, 36.296051, 36.153351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.796066, 36.500359, 36.360130>,  <34.631203, 36.622944, 36.484200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.796066, 36.500359, 36.360130>,  <35.070839, 36.296051, 36.153351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796066, 36.500359, 36.360130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683821, 0.213524, 0.697708,
		0.245986, 0.832781, -0.495951,
		-0.686935, 0.510768, 0.516949,
		34.589985, 36.653587, 36.515217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385323, 37.052109, 36.247772>,  <35.070839, 36.296051, 36.153351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.385323, 37.052109, 36.247772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.103481, 36.997177, 36.526249>,  <34.934376, 36.964218, 36.693336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.103481, 36.997177, 36.526249>,  <35.385323, 37.052109, 36.247772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103481, 36.997177, 36.526249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623741, 0.347957, 0.699909,
		-0.338360, 0.927398, -0.159515,
		-0.704599, -0.137325, 0.696191,
		34.892101, 36.955978, 36.735107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878841, 36.834885, 35.620087>,  <35.385323, 37.052109, 36.247772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.878841, 36.834885, 35.620087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.238026, 36.997353, 35.552330>,  <36.453537, 37.094833, 35.511677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.238026, 36.997353, 35.552330>,  <35.878841, 36.834885, 35.620087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238026, 36.997353, 35.552330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088841, -0.209680, -0.973726,
		-0.431016, 0.889416, -0.152200,
		0.897960, 0.406170, -0.169392,
		36.507412, 37.119205, 35.501511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845184, 37.470856, 35.141098>,  <35.878841, 36.834885, 35.620087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845184, 37.470856, 35.141098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.196617, 37.282673, 35.108212>,  <36.407478, 37.169762, 35.088478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.196617, 37.282673, 35.108212>,  <35.845184, 37.470856, 35.141098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196617, 37.282673, 35.108212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134154, -0.077881, -0.987895,
		0.458361, 0.878978, -0.131539,
		0.878583, -0.470459, -0.082221,
		36.460194, 37.141537, 35.083546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223713, 37.935787, 34.577225>,  <35.845184, 37.470856, 35.141098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223713, 37.935787, 34.577225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.435097, 37.599106, 34.621532>,  <36.561928, 37.397099, 34.648117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.435097, 37.599106, 34.621532>,  <36.223713, 37.935787, 34.577225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435097, 37.599106, 34.621532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004272, -0.127842, -0.991785,
		0.848948, 0.524592, -0.063964,
		0.528459, -0.841701, 0.110772,
		36.593636, 37.346596, 34.654762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858742, 37.977642, 34.181782>,  <36.223713, 37.935787, 34.577225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858742, 37.977642, 34.181782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.769787, 37.588890, 34.212723>,  <36.716412, 37.355637, 34.231285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.769787, 37.588890, 34.212723>,  <36.858742, 37.977642, 34.181782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769787, 37.588890, 34.212723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121814, -0.106414, -0.986832,
		0.967317, -0.210041, 0.142055,
		-0.222392, -0.971884, 0.077350,
		36.703068, 37.297325, 34.235928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377132, 37.651348, 33.656124>,  <36.858742, 37.977642, 34.181782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.377132, 37.651348, 33.656124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.110229, 37.364830, 33.737793>,  <36.950089, 37.192917, 33.786793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.110229, 37.364830, 33.737793>,  <37.377132, 37.651348, 33.656124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110229, 37.364830, 33.737793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043234, -0.310903, -0.949458,
		0.743573, -0.624704, 0.238420,
		-0.667256, -0.716299, 0.204171,
		36.910053, 37.149940, 33.799046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648182, 36.989052, 33.410778>,  <37.377132, 37.651348, 33.656124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.648182, 36.989052, 33.410778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.258308, 36.905743, 33.443302>,  <37.024384, 36.855755, 33.462814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.258308, 36.905743, 33.443302>,  <37.648182, 36.989052, 33.410778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.258308, 36.905743, 33.443302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020855, -0.446759, -0.894411,
		0.222610, -0.870073, 0.439793,
		-0.974684, -0.208277, 0.081307,
		36.965904, 36.843258, 33.467693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498959, 36.218117, 33.201096>,  <37.648182, 36.989052, 33.410778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.498959, 36.218117, 33.201096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.189617, 36.461338, 33.129318>,  <37.004013, 36.607269, 33.086250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.189617, 36.461338, 33.129318>,  <37.498959, 36.218117, 33.201096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.189617, 36.461338, 33.129318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153928, -0.454665, -0.877261,
		-0.615008, -0.650809, 0.445212,
		-0.773351, 0.608053, -0.179444,
		36.957611, 36.643753, 33.075485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002823, 35.714252, 32.853603>,  <37.498959, 36.218117, 33.201096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002823, 35.714252, 32.853603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.840843, 36.071301, 32.774368>,  <36.743656, 36.285530, 32.726826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.840843, 36.071301, 32.774368>,  <37.002823, 35.714252, 32.853603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.840843, 36.071301, 32.774368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276968, -0.326221, -0.903808,
		-0.871382, -0.311130, 0.379330,
		-0.404947, 0.892625, -0.198090,
		36.719360, 36.339088, 32.714943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350609, 35.633945, 32.846802>,  <37.002823, 35.714252, 32.853603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350609, 35.633945, 32.846802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.413654, 35.961918, 32.626667>,  <36.451481, 36.158703, 32.494587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.413654, 35.961918, 32.626667>,  <36.350609, 35.633945, 32.846802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.413654, 35.961918, 32.626667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281217, -0.496959, -0.820944,
		-0.946612, 0.284159, 0.152249,
		0.157618, 0.819930, -0.550338,
		36.460941, 36.207897, 32.461567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.677052, 35.727608, 32.616180>,  <36.350609, 35.633945, 32.846802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.677052, 35.727608, 32.616180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.863842, 35.991924, 32.381134>,  <35.975918, 36.150513, 32.240108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.863842, 35.991924, 32.381134>,  <35.677052, 35.727608, 32.616180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863842, 35.991924, 32.381134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595987, -0.255715, -0.761189,
		-0.653249, 0.705666, 0.274410,
		0.466975, 0.660791, -0.587614,
		36.003933, 36.190163, 32.204849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.116467, 36.149658, 32.310448>,  <35.677052, 35.727608, 32.616180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.116467, 36.149658, 32.310448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.430260, 36.206734, 32.069042>,  <35.618534, 36.240978, 31.924200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.430260, 36.206734, 32.069042>,  <35.116467, 36.149658, 32.310448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430260, 36.206734, 32.069042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605928, -0.030863, -0.794921,
		-0.132050, 0.989287, 0.062246,
		0.784484, 0.142686, -0.603512,
		35.665604, 36.249538, 31.887989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.889973, 36.654236, 31.827866>,  <35.116467, 36.149658, 32.310448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.889973, 36.654236, 31.827866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.211422, 36.483086, 31.662407>,  <35.404293, 36.380394, 31.563131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.211422, 36.483086, 31.662407>,  <34.889973, 36.654236, 31.827866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.211422, 36.483086, 31.662407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433198, 0.056014, -0.899557,
		0.408072, 0.902098, -0.140343,
		0.803627, -0.427880, -0.413645,
		35.452511, 36.354721, 31.538313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023914, 37.002205, 31.182880>,  <34.889973, 36.654236, 31.827866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.023914, 37.002205, 31.182880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.180573, 36.634644, 31.164013>,  <35.274567, 36.414104, 31.152693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.180573, 36.634644, 31.164013>,  <35.023914, 37.002205, 31.182880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180573, 36.634644, 31.164013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400543, -0.124112, -0.907833,
		0.828360, 0.374441, -0.416670,
		0.391644, -0.918907, -0.047170,
		35.298065, 36.358971, 31.149862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450516, 37.161228, 30.614166>,  <35.023914, 37.002205, 31.182880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450516, 37.161228, 30.614166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.371761, 36.775841, 30.686794>,  <35.324509, 36.544609, 30.730371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.371761, 36.775841, 30.686794>,  <35.450516, 37.161228, 30.614166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.371761, 36.775841, 30.686794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411913, -0.086771, -0.907082,
		0.889699, -0.253383, -0.379780,
		-0.196885, -0.963467, 0.181572,
		35.312695, 36.486801, 30.741266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594410, 36.783695, 29.931379>,  <35.450516, 37.161228, 30.614166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.594410, 36.783695, 29.931379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.335045, 36.574982, 30.153120>,  <35.179428, 36.449753, 30.286165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.335045, 36.574982, 30.153120>,  <35.594410, 36.783695, 29.931379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335045, 36.574982, 30.153120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514039, -0.237034, -0.824366,
		0.561543, -0.819484, -0.114523,
		-0.648409, -0.521786, 0.554351,
		35.140522, 36.418446, 30.319426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.475605, 36.154316, 29.582972>,  <35.594410, 36.783695, 29.931379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.475605, 36.154316, 29.582972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.165005, 36.193081, 29.832018>,  <34.978645, 36.216339, 29.981445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.165005, 36.193081, 29.832018>,  <35.475605, 36.154316, 29.582972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165005, 36.193081, 29.832018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614064, -0.337965, -0.713235,
		0.141299, -0.936156, 0.321942,
		-0.776505, 0.096914, 0.622614,
		34.932053, 36.222157, 30.018803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.087830, 35.482826, 29.452627>,  <35.475605, 36.154316, 29.582972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.087830, 35.482826, 29.452627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849335, 35.756512, 29.620604>,  <34.706238, 35.920723, 29.721390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849335, 35.756512, 29.620604>,  <35.087830, 35.482826, 29.452627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849335, 35.756512, 29.620604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738441, -0.262196, -0.621255,
		-0.314965, -0.680517, 0.661584,
		-0.596239, 0.684214, 0.419939,
		34.670464, 35.961777, 29.746586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435440, 35.244778, 29.475027>,  <35.087830, 35.482826, 29.452627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435440, 35.244778, 29.475027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.363636, 35.637173, 29.504520>,  <34.320553, 35.872608, 29.522217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.363636, 35.637173, 29.504520>,  <34.435440, 35.244778, 29.475027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.363636, 35.637173, 29.504520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715804, -0.078835, -0.693837,
		-0.674834, -0.177329, 0.716347,
		-0.179511, 0.980989, 0.073732,
		34.309784, 35.931469, 29.526640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.665874, 35.250515, 29.543293>,  <34.435440, 35.244778, 29.475027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.665874, 35.250515, 29.543293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786705, 35.615559, 29.433098>,  <33.859203, 35.834587, 29.366982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786705, 35.615559, 29.433098>,  <33.665874, 35.250515, 29.543293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786705, 35.615559, 29.433098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780866, 0.071117, -0.620638,
		-0.546809, 0.402597, 0.734109,
		0.302074, 0.912611, -0.275486,
		33.877327, 35.889343, 29.350452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.019608, 35.576607, 29.515892>,  <33.665874, 35.250515, 29.543293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.019608, 35.576607, 29.515892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.275280, 35.810669, 29.316275>,  <33.428684, 35.951107, 29.196505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.275280, 35.810669, 29.316275>,  <33.019608, 35.576607, 29.515892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275280, 35.810669, 29.316275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638587, 0.042228, -0.768390,
		-0.428551, 0.809824, 0.400661,
		0.639180, 0.585152, -0.499045,
		33.467033, 35.986214, 29.166561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.512123, 35.908207, 29.107805>,  <33.019608, 35.576607, 29.515892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.512123, 35.908207, 29.107805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.870209, 35.949436, 28.934381>,  <33.085060, 35.974174, 28.830328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.870209, 35.949436, 28.934381>,  <32.512123, 35.908207, 29.107805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.870209, 35.949436, 28.934381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418868, -0.137518, -0.897574,
		-0.152138, 0.985122, -0.079934,
		0.895212, 0.103074, -0.433557,
		33.138771, 35.980358, 28.804314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.585857, 36.529335, 28.667442>,  <32.512123, 35.908207, 29.107805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.585857, 36.529335, 28.667442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.845798, 36.250389, 28.546530>,  <33.001762, 36.083023, 28.473982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.845798, 36.250389, 28.546530>,  <32.585857, 36.529335, 28.667442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.845798, 36.250389, 28.546530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478984, -0.066952, -0.875267,
		0.590141, 0.713583, -0.377535,
		0.649853, -0.697364, -0.302284,
		33.040752, 36.041180, 28.455845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.779755, 36.729527, 27.962030>,  <32.585857, 36.529335, 28.667442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.779755, 36.729527, 27.962030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.889034, 36.345474, 27.985752>,  <32.954601, 36.115044, 27.999985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.889034, 36.345474, 27.985752>,  <32.779755, 36.729527, 27.962030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.889034, 36.345474, 27.985752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424562, -0.175668, -0.888194,
		0.863196, 0.217479, -0.455626,
		0.273202, -0.960127, 0.059302,
		32.970997, 36.057438, 28.003542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.843464, 36.546356, 27.327515>,  <32.779755, 36.729527, 27.962030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.843464, 36.546356, 27.327515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.795120, 36.187725, 27.497950>,  <32.766113, 35.972546, 27.600210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.795120, 36.187725, 27.497950>,  <32.843464, 36.546356, 27.327515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.795120, 36.187725, 27.497950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655876, -0.250075, -0.712243,
		0.745131, -0.365539, -0.557817,
		-0.120857, -0.896573, 0.426087,
		32.758862, 35.918755, 27.625776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.662251, 36.097721, 26.773621>,  <32.843464, 36.546356, 27.327515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.662251, 36.097721, 26.773621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.563267, 35.863773, 27.082603>,  <32.503876, 35.723404, 27.267994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.563267, 35.863773, 27.082603>,  <32.662251, 36.097721, 26.773621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.563267, 35.863773, 27.082603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682625, -0.460542, -0.567384,
		0.687594, -0.667705, -0.285278,
		-0.247463, -0.584868, 0.772458,
		32.489029, 35.688313, 27.314341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.877979, 35.431652, 26.683918>,  <32.662251, 36.097721, 26.773621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.877979, 35.431652, 26.683918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.570007, 35.414928, 26.938622>,  <32.385223, 35.404896, 27.091444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.570007, 35.414928, 26.938622>,  <32.877979, 35.431652, 26.683918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570007, 35.414928, 26.938622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562036, -0.428121, -0.707692,
		0.302196, -0.902754, 0.306126,
		-0.769931, -0.041808, 0.636757,
		32.339027, 35.402386, 27.129648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.560299, 34.749001, 26.714409>,  <32.877979, 35.431652, 26.683918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.560299, 34.749001, 26.714409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.254730, 34.957390, 26.866734>,  <32.071388, 35.082424, 26.958128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.254730, 34.957390, 26.866734>,  <32.560299, 34.749001, 26.714409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.254730, 34.957390, 26.866734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642178, -0.555629, -0.528095,
		-0.063532, -0.647970, 0.759012,
		-0.763918, 0.520971, 0.380812,
		32.025555, 35.113682, 26.980976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.997396, 34.290913, 26.939625>,  <32.560299, 34.749001, 26.714409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.997396, 34.290913, 26.939625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.805861, 34.637024, 26.880297>,  <31.690939, 34.844692, 26.844700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.805861, 34.637024, 26.880297>,  <31.997396, 34.290913, 26.939625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.805861, 34.637024, 26.880297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668718, -0.468964, -0.576965,
		-0.568794, -0.177090, 0.803189,
		-0.478841, 0.865281, -0.148321,
		31.662209, 34.896606, 26.835800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.359398, 34.141682, 27.057131>,  <31.997396, 34.290913, 26.939625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.359398, 34.141682, 27.057131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345186, 34.473427, 26.834101>,  <31.336658, 34.672474, 26.700283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345186, 34.473427, 26.834101>,  <31.359398, 34.141682, 27.057131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.345186, 34.473427, 26.834101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749358, -0.391252, -0.534214,
		-0.661212, 0.398844, 0.635392,
		-0.035530, 0.829365, -0.557577,
		31.334528, 34.722237, 26.666828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.593979, 34.228024, 26.953905>,  <31.359398, 34.141682, 27.057131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.593979, 34.228024, 26.953905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.783403, 34.430035, 26.665272>,  <30.897058, 34.551243, 26.492092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.783403, 34.430035, 26.665272>,  <30.593979, 34.228024, 26.953905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.783403, 34.430035, 26.665272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729670, -0.233879, -0.642560,
		-0.493276, 0.830809, 0.257751,
		0.473562, 0.505032, -0.721583,
		30.925472, 34.581543, 26.448797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.080931, 34.515205, 26.513783>,  <30.593979, 34.228024, 26.953905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.080931, 34.515205, 26.513783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.404173, 34.543728, 26.279900>,  <30.598118, 34.560844, 26.139570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.404173, 34.543728, 26.279900>,  <30.080931, 34.515205, 26.513783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.404173, 34.543728, 26.279900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538112, -0.314384, -0.782047,
		-0.239592, 0.946613, -0.215682,
		0.808103, 0.071311, -0.584709,
		30.646605, 34.565121, 26.104486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.867281, 34.950645, 26.001537>,  <30.080931, 34.515205, 26.513783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.867281, 34.950645, 26.001537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.177597, 34.752556, 25.845125>,  <30.363787, 34.633701, 25.751278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.177597, 34.752556, 25.845125>,  <29.867281, 34.950645, 26.001537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.177597, 34.752556, 25.845125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535506, -0.188950, -0.823123,
		0.333742, 0.847971, -0.411779,
		0.775790, -0.495221, -0.391032,
		30.410334, 34.603989, 25.727816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.670126, 35.122917, 25.347342>,  <29.867281, 34.950645, 26.001537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.670126, 35.122917, 25.347342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.942331, 34.829945, 25.338919>,  <30.105654, 34.654160, 25.333864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.942331, 34.829945, 25.338919>,  <29.670126, 35.122917, 25.347342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.942331, 34.829945, 25.338919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332198, -0.282778, -0.899823,
		0.653106, 0.619337, -0.435746,
		0.680513, -0.732434, -0.021059,
		30.146484, 34.610214, 25.332602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.165100, 35.250889, 24.765577>,  <29.670126, 35.122917, 25.347342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.165100, 35.250889, 24.765577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.157797, 34.863400, 24.864573>,  <30.153414, 34.630905, 24.923969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.157797, 34.863400, 24.864573>,  <30.165100, 35.250889, 24.765577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.157797, 34.863400, 24.864573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527310, -0.200975, -0.825562,
		0.849477, -0.145578, -0.507145,
		-0.018260, -0.968719, 0.247488,
		30.152319, 34.572784, 24.938820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.335142, 34.867134, 24.171120>,  <30.165100, 35.250889, 24.765577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.335142, 34.867134, 24.171120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.147264, 34.595684, 24.396988>,  <30.034538, 34.432816, 24.532509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.147264, 34.595684, 24.396988>,  <30.335142, 34.867134, 24.171120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.147264, 34.595684, 24.396988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402056, -0.405006, -0.821171,
		0.785963, -0.612729, -0.082617,
		-0.469695, -0.678627, 0.564671,
		30.006355, 34.392097, 24.566389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.464588, 34.317387, 23.739899>,  <30.335142, 34.867134, 24.171120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.464588, 34.317387, 23.739899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.161829, 34.223560, 23.983892>,  <29.980173, 34.167263, 24.130289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.161829, 34.223560, 23.983892>,  <30.464588, 34.317387, 23.739899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.161829, 34.223560, 23.983892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504825, -0.382897, -0.773655,
		0.415037, -0.893514, 0.171399,
		-0.756900, -0.234569, 0.609984,
		29.934759, 34.153191, 24.166887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.356533, 33.613682, 23.467421>,  <30.464588, 34.317387, 23.739899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.356533, 33.613682, 23.467421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.049307, 33.771446, 23.669222>,  <29.864971, 33.866104, 23.790302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.049307, 33.771446, 23.669222>,  <30.356533, 33.613682, 23.467421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.049307, 33.771446, 23.669222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628311, -0.311949, -0.712680,
		-0.123707, -0.864368, 0.487407,
		-0.768064, 0.394407, 0.504501,
		29.818888, 33.889767, 23.820572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.785347, 33.107285, 23.479431>,  <30.356533, 33.613682, 23.467421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.785347, 33.107285, 23.479431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.622984, 33.469215, 23.530848>,  <29.525566, 33.686375, 23.561697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.622984, 33.469215, 23.530848>,  <29.785347, 33.107285, 23.479431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.622984, 33.469215, 23.530848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557619, -0.133765, -0.819249,
		-0.724086, -0.404217, 0.558846,
		-0.405908, 0.904830, 0.128541,
		29.501211, 33.740665, 23.569410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.790222, 32.412067, 23.138844>,  <29.785347, 33.107285, 23.479431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.790222, 32.412067, 23.138844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.064964, 32.161621, 22.991219>,  <30.229811, 32.011353, 22.902643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.064964, 32.161621, 22.991219>,  <29.790222, 32.412067, 23.138844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.064964, 32.161621, 22.991219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665043, 0.336608, 0.666643,
		-0.293165, -0.703332, 0.647595,
		0.686857, -0.626115, -0.369064,
		30.271021, 31.973787, 22.880499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.113377, 32.009953, 23.730328>,  <29.790222, 32.412067, 23.138844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.113377, 32.009953, 23.730328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.369476, 32.034336, 23.424030>,  <30.523136, 32.048965, 23.240252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.369476, 32.034336, 23.424030>,  <30.113377, 32.009953, 23.730328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.369476, 32.034336, 23.424030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655159, 0.477117, 0.585770,
		0.401056, -0.876724, 0.265538,
		0.640251, 0.060957, -0.765743,
		30.561552, 32.052624, 23.194307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.784336, 31.644169, 23.999182>,  <30.113377, 32.009953, 23.730328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.784336, 31.644169, 23.999182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.840450, 31.890034, 23.688696>,  <30.874119, 32.037552, 23.502405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.840450, 31.890034, 23.688696>,  <30.784336, 31.644169, 23.999182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.840450, 31.890034, 23.688696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851296, 0.325438, 0.411564,
		0.505583, -0.718525, -0.477606,
		0.140288, 0.614664, -0.776214,
		30.882536, 32.074432, 23.455832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.411552, 31.461884, 23.927212>,  <30.784336, 31.644169, 23.999182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.411552, 31.461884, 23.927212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.377565, 31.783878, 23.692341>,  <31.357174, 31.977076, 23.551418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.377565, 31.783878, 23.692341>,  <31.411552, 31.461884, 23.927212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.377565, 31.783878, 23.692341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915302, 0.295914, 0.273234,
		0.393703, -0.514226, -0.761951,
		-0.084968, 0.804988, -0.587175,
		31.352076, 32.025375, 23.516188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047432, 31.518511, 23.489475>,  <31.411552, 31.461884, 23.927212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.047432, 31.518511, 23.489475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.891026, 31.882397, 23.545362>,  <31.797182, 32.100727, 23.578896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.891026, 31.882397, 23.545362>,  <32.047432, 31.518511, 23.489475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.891026, 31.882397, 23.545362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898552, 0.344450, 0.271952,
		0.199273, 0.231883, -0.952114,
		-0.391017, 0.909717, 0.139720,
		31.773720, 32.155312, 23.587278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.570446, 32.073448, 23.306141>,  <32.047432, 31.518511, 23.489475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.570446, 32.073448, 23.306141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.300743, 32.242298, 23.548525>,  <32.138920, 32.343609, 23.693954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.300743, 32.242298, 23.548525>,  <32.570446, 32.073448, 23.306141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.300743, 32.242298, 23.548525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711266, 0.150444, 0.686634,
		0.198682, 0.893967, -0.401682,
		-0.674259, 0.422125, 0.605958,
		32.098465, 32.368935, 23.730312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.794674, 32.784470, 23.425776>,  <32.570446, 32.073448, 23.306141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.794674, 32.784470, 23.425776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.546158, 32.751842, 23.737505>,  <32.397049, 32.732265, 23.924543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.546158, 32.751842, 23.737505>,  <32.794674, 32.784470, 23.425776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.546158, 32.751842, 23.737505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636144, 0.528200, 0.562429,
		-0.457514, 0.845193, -0.276277,
		-0.621291, -0.081567, 0.779323,
		32.359772, 32.727371, 23.971302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.913700, 33.448914, 23.741899>,  <32.794674, 32.784470, 23.425776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.913700, 33.448914, 23.741899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717133, 33.239925, 24.020620>,  <32.599194, 33.114532, 24.187853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717133, 33.239925, 24.020620>,  <32.913700, 33.448914, 23.741899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717133, 33.239925, 24.020620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527199, 0.458380, 0.715506,
		-0.693233, 0.718963, 0.050193,
		-0.491415, -0.522475, 0.696801,
		32.569710, 33.083183, 24.229660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.584393, 33.956646, 24.275614>,  <32.913700, 33.448914, 23.741899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.584393, 33.956646, 24.275614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667843, 33.598038, 24.431938>,  <32.717911, 33.382874, 24.525732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667843, 33.598038, 24.431938>,  <32.584393, 33.956646, 24.275614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.667843, 33.598038, 24.431938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500416, 0.441186, 0.744942,
		-0.840274, 0.040155, 0.540673,
		0.208624, -0.896517, 0.390811,
		32.730431, 33.329082, 24.549181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.483860, 34.025135, 24.947823>,  <32.584393, 33.956646, 24.275614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.483860, 34.025135, 24.947823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738434, 33.718727, 24.911678>,  <32.891178, 33.534882, 24.889992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738434, 33.718727, 24.911678>,  <32.483860, 34.025135, 24.947823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738434, 33.718727, 24.911678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511060, 0.331033, 0.793243,
		-0.577726, -0.551029, 0.602162,
		0.636435, -0.766019, -0.090362,
		32.929363, 33.488922, 24.884569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.659939, 33.734772, 25.652777>,  <32.483860, 34.025135, 24.947823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.659939, 33.734772, 25.652777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.964352, 33.607189, 25.426825>,  <33.146999, 33.530640, 25.291254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.964352, 33.607189, 25.426825>,  <32.659939, 33.734772, 25.652777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.964352, 33.607189, 25.426825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643745, 0.263798, 0.718334,
		-0.080105, -0.910316, 0.406088,
		0.761036, -0.318959, -0.564880,
		33.192661, 33.511501, 25.257360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.062916, 33.403641, 26.113989>,  <32.659939, 33.734772, 25.652777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.062916, 33.403641, 26.113989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299263, 33.496822, 25.805027>,  <33.441071, 33.552731, 25.619650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299263, 33.496822, 25.805027>,  <33.062916, 33.403641, 26.113989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.299263, 33.496822, 25.805027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738168, 0.230235, 0.634113,
		0.325556, -0.944840, -0.035924,
		0.590865, 0.232958, -0.772405,
		33.476521, 33.566708, 25.573305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687866, 33.211521, 26.353645>,  <33.062916, 33.403641, 26.113989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.687866, 33.211521, 26.353645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.785004, 33.446938, 26.045191>,  <33.843285, 33.588188, 25.860119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.785004, 33.446938, 26.045191>,  <33.687866, 33.211521, 26.353645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.785004, 33.446938, 26.045191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869646, 0.220140, 0.441876,
		0.429820, -0.777919, -0.458364,
		0.242839, 0.588541, -0.771135,
		33.857857, 33.623501, 25.813850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.395931, 33.003086, 26.224743>,  <33.687866, 33.211521, 26.353645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.395931, 33.003086, 26.224743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350075, 33.374321, 26.083036>,  <34.322559, 33.597061, 25.998013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350075, 33.374321, 26.083036>,  <34.395931, 33.003086, 26.224743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350075, 33.374321, 26.083036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704005, 0.327508, 0.630171,
		0.700881, -0.177160, -0.690927,
		-0.114643, 0.928091, -0.354266,
		34.315681, 33.652748, 25.976757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092716, 33.176689, 26.000555>,  <34.395931, 33.003086, 26.224743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092716, 33.176689, 26.000555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.891094, 33.517677, 26.056015>,  <34.770123, 33.722271, 26.089291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.891094, 33.517677, 26.056015>,  <35.092716, 33.176689, 26.000555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891094, 33.517677, 26.056015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640965, 0.261629, 0.721605,
		0.578872, 0.452597, -0.678279,
		-0.504054, 0.852470, 0.138649,
		34.739880, 33.773418, 26.097610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568127, 33.708374, 25.867270>,  <35.092716, 33.176689, 26.000555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.568127, 33.708374, 25.867270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288174, 33.910473, 26.069218>,  <35.120201, 34.031731, 26.190386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288174, 33.910473, 26.069218>,  <35.568127, 33.708374, 25.867270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288174, 33.910473, 26.069218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713417, 0.528801, 0.459788,
		-0.034670, 0.681980, -0.730549,
		-0.699881, 0.505245, 0.504870,
		35.078209, 34.062046, 26.220678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.776478, 34.451931, 26.044193>,  <35.568127, 33.708374, 25.867270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.776478, 34.451931, 26.044193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.489330, 34.375771, 26.312046>,  <35.317039, 34.330074, 26.472757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.489330, 34.375771, 26.312046>,  <35.776478, 34.451931, 26.044193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489330, 34.375771, 26.312046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557884, 0.418048, 0.716939,
		-0.416444, 0.888247, -0.193883,
		-0.717871, -0.190400, 0.669633,
		35.273968, 34.318649, 26.512936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730637, 35.054745, 26.475180>,  <35.776478, 34.451931, 26.044193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.730637, 35.054745, 26.475180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.513607, 34.813972, 26.709547>,  <35.383389, 34.669510, 26.850168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.513607, 34.813972, 26.709547>,  <35.730637, 35.054745, 26.475180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.513607, 34.813972, 26.709547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332735, 0.486458, 0.807865,
		-0.771301, 0.633279, -0.063656,
		-0.542570, -0.601927, 0.585920,
		35.350838, 34.633396, 26.885323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366096, 35.534203, 26.995163>,  <35.730637, 35.054745, 26.475180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366096, 35.534203, 26.995163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.417595, 35.159416, 27.125097>,  <35.448494, 34.934544, 27.203058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.417595, 35.159416, 27.125097>,  <35.366096, 35.534203, 26.995163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417595, 35.159416, 27.125097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457000, 0.346767, 0.819087,
		-0.880099, 0.042995, 0.472839,
		0.128748, -0.936965, 0.324838,
		35.456219, 34.878326, 27.222549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198929, 35.391712, 27.791233>,  <35.366096, 35.534203, 26.995163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198929, 35.391712, 27.791233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.434277, 35.077045, 27.716421>,  <35.575485, 34.888245, 27.671534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.434277, 35.077045, 27.716421>,  <35.198929, 35.391712, 27.791233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434277, 35.077045, 27.716421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392968, 0.076039, 0.916403,
		-0.706680, -0.612680, 0.353874,
		0.588370, -0.786664, -0.187029,
		35.610786, 34.841045, 27.660313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.194809, 35.078773, 28.416922>,  <35.198929, 35.391712, 27.791233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.194809, 35.078773, 28.416922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.518169, 34.961830, 28.212563>,  <35.712185, 34.891663, 28.089947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.518169, 34.961830, 28.212563>,  <35.194809, 35.078773, 28.416922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518169, 34.961830, 28.212563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534981, 0.002891, 0.844859,
		-0.245524, -0.956304, 0.158743,
		0.808401, -0.292358, -0.510895,
		35.760689, 34.874123, 28.059294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482403, 34.572681, 28.891645>,  <35.194809, 35.078773, 28.416922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482403, 34.572681, 28.891645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.796906, 34.652065, 28.657578>,  <35.985607, 34.699696, 28.517138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.796906, 34.652065, 28.657578>,  <35.482403, 34.572681, 28.891645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.796906, 34.652065, 28.657578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603066, -0.040168, 0.796679,
		0.134601, -0.979286, -0.151264,
		0.786253, 0.198456, -0.585168,
		36.032780, 34.711601, 28.482027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.919518, 34.068775, 29.114605>,  <35.482403, 34.572681, 28.891645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.919518, 34.068775, 29.114605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.146477, 34.358505, 28.957937>,  <36.282654, 34.532345, 28.863935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.146477, 34.358505, 28.957937>,  <35.919518, 34.068775, 29.114605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.146477, 34.358505, 28.957937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623043, -0.066641, 0.779344,
		0.538398, -0.686229, -0.489099,
		0.567402, 0.724327, -0.391671,
		36.316696, 34.575802, 28.840435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.536079, 33.854366, 29.180696>,  <35.919518, 34.068775, 29.114605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.536079, 33.854366, 29.180696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572254, 34.250740, 29.140951>,  <36.593960, 34.488564, 29.117104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572254, 34.250740, 29.140951>,  <36.536079, 33.854366, 29.180696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572254, 34.250740, 29.140951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598383, 0.025691, 0.800798,
		0.796090, -0.131877, -0.590634,
		0.090433, 0.990933, -0.099365,
		36.599384, 34.548019, 29.111141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261211, 33.855988, 29.307194>,  <36.536079, 33.854366, 29.180696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.261211, 33.855988, 29.307194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.132107, 34.231205, 29.357620>,  <37.054642, 34.456337, 29.387877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.132107, 34.231205, 29.357620>,  <37.261211, 33.855988, 29.307194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.132107, 34.231205, 29.357620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676117, 0.135302, 0.724264,
		0.662336, 0.319003, -0.677900,
		-0.322764, 0.938046, 0.126068,
		37.035278, 34.512619, 29.395441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893745, 34.253902, 29.442451>,  <37.261211, 33.855988, 29.307194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893745, 34.253902, 29.442451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.576523, 34.470181, 29.554678>,  <37.386189, 34.599945, 29.622013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.576523, 34.470181, 29.554678>,  <37.893745, 34.253902, 29.442451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.576523, 34.470181, 29.554678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504228, 0.324249, 0.800385,
		0.341789, 0.776218, -0.529779,
		-0.793054, 0.540693, 0.280566,
		37.338608, 34.632389, 29.638847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094963, 35.023312, 29.551987>,  <37.893745, 34.253902, 29.442451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094963, 35.023312, 29.551987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.761650, 34.945908, 29.759140>,  <37.561665, 34.899467, 29.883432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.761650, 34.945908, 29.759140>,  <38.094963, 35.023312, 29.551987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.761650, 34.945908, 29.759140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503850, 0.119764, 0.855448,
		-0.227559, 0.973761, -0.002298,
		-0.833278, -0.193507, 0.517883,
		37.511665, 34.887856, 29.914505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079388, 35.618958, 30.031397>,  <38.094963, 35.023312, 29.551987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.079388, 35.618958, 30.031397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845848, 35.344448, 30.204901>,  <37.705723, 35.179741, 30.309004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845848, 35.344448, 30.204901>,  <38.079388, 35.618958, 30.031397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845848, 35.344448, 30.204901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462193, 0.158278, 0.872540,
		-0.667456, 0.709913, 0.224780,
		-0.583850, -0.686274, 0.433760,
		37.670692, 35.138565, 30.335030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083611, 35.839104, 30.746984>,  <38.079388, 35.618958, 30.031397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083611, 35.839104, 30.746984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.918747, 35.475155, 30.766022>,  <37.819828, 35.256786, 30.777445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.918747, 35.475155, 30.766022>,  <38.083611, 35.839104, 30.746984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.918747, 35.475155, 30.766022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446260, -0.156054, 0.881192,
		-0.794341, 0.384429, 0.470357,
		-0.412157, -0.909869, 0.047595,
		37.795101, 35.202194, 30.780300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.603794, 35.741554, 31.392889>,  <38.083611, 35.839104, 30.746984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.603794, 35.741554, 31.392889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.737820, 35.385872, 31.268278>,  <37.818233, 35.172462, 31.193512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.737820, 35.385872, 31.268278>,  <37.603794, 35.741554, 31.392889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.737820, 35.385872, 31.268278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418273, -0.155894, 0.894843,
		-0.844265, -0.430130, 0.319696,
		0.335060, -0.889205, -0.311528,
		37.838337, 35.119110, 31.174820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410450, 35.307442, 31.914217>,  <37.603794, 35.741554, 31.392889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410450, 35.307442, 31.914217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.711868, 35.126457, 31.723452>,  <37.892719, 35.017864, 31.608992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.711868, 35.126457, 31.723452>,  <37.410450, 35.307442, 31.914217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711868, 35.126457, 31.723452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386734, -0.281544, 0.878163,
		-0.531612, -0.846172, -0.037171,
		0.753542, -0.452467, -0.476915,
		37.937931, 34.990719, 31.580378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397060, 34.679401, 32.159073>,  <37.410450, 35.307442, 31.914217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.397060, 34.679401, 32.159073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.767914, 34.741802, 32.022789>,  <37.990425, 34.779243, 31.941019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.767914, 34.741802, 32.022789>,  <37.397060, 34.679401, 32.159073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767914, 34.741802, 32.022789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374407, -0.348306, 0.859362,
		0.015395, -0.924308, -0.381336,
		0.927137, 0.156004, -0.340705,
		38.046055, 34.788605, 31.920578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894188, 34.099960, 32.406258>,  <37.397060, 34.679401, 32.159073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894188, 34.099960, 32.406258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.167034, 34.369194, 32.291943>,  <38.330742, 34.530735, 32.223354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.167034, 34.369194, 32.291943>,  <37.894188, 34.099960, 32.406258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.167034, 34.369194, 32.291943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521742, -0.174142, 0.835141,
		0.512355, -0.718768, -0.469963,
		0.682113, 0.673087, -0.285789,
		38.371670, 34.571121, 32.206207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468472, 33.886925, 32.629616>,  <37.894188, 34.099960, 32.406258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468472, 33.886925, 32.629616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529221, 34.276562, 32.562592>,  <38.565670, 34.510345, 32.522377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529221, 34.276562, 32.562592>,  <38.468472, 33.886925, 32.629616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529221, 34.276562, 32.562592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657237, 0.027088, 0.753197,
		0.738224, -0.224514, -0.636096,
		0.151873, 0.974094, -0.167556,
		38.574783, 34.568790, 32.512325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102119, 34.052113, 32.864025>,  <38.468472, 33.886925, 32.629616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.102119, 34.052113, 32.864025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.977150, 34.430534, 32.829697>,  <38.902168, 34.657589, 32.809101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.977150, 34.430534, 32.829697>,  <39.102119, 34.052113, 32.864025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.977150, 34.430534, 32.829697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492345, 0.238521, 0.837081,
		0.812397, 0.219271, -0.540307,
		-0.312422, 0.946059, -0.085817,
		38.883423, 34.714352, 32.803951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.697773, 34.521305, 32.829292>,  <39.102119, 34.052113, 32.864025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.697773, 34.521305, 32.829292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.372532, 34.695293, 32.984039>,  <39.177387, 34.799686, 33.076885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.372532, 34.695293, 32.984039>,  <39.697773, 34.521305, 32.829292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.372532, 34.695293, 32.984039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470620, 0.100050, 0.876645,
		0.342610, 0.894869, -0.286057,
		-0.813102, 0.434971, 0.386865,
		39.128601, 34.825787, 33.100098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010361, 34.898102, 33.259472>,  <39.697773, 34.521305, 32.829292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.010361, 34.898102, 33.259472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.627117, 34.932884, 33.368633>,  <39.397171, 34.953754, 33.434128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.627117, 34.932884, 33.368633>,  <40.010361, 34.898102, 33.259472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.627117, 34.932884, 33.368633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282550, 0.130873, 0.950283,
		0.046918, 0.987578, -0.149959,
		-0.958105, 0.086956, 0.272900,
		39.339687, 34.958969, 33.450504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954792, 35.567352, 33.653355>,  <40.010361, 34.898102, 33.259472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.954792, 35.567352, 33.653355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.663273, 35.321613, 33.774307>,  <39.488361, 35.174171, 33.846878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.663273, 35.321613, 33.774307>,  <39.954792, 35.567352, 33.653355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.663273, 35.321613, 33.774307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311381, 0.095953, 0.945428,
		-0.609835, 0.783180, 0.121366,
		-0.728796, -0.614347, 0.302383,
		39.444633, 35.137310, 33.865021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832973, 35.820782, 34.272720>,  <39.954792, 35.567352, 33.653355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.832973, 35.820782, 34.272720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.618626, 35.484016, 34.298111>,  <39.490017, 35.281960, 34.313347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.618626, 35.484016, 34.298111>,  <39.832973, 35.820782, 34.272720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.618626, 35.484016, 34.298111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213821, -0.062596, 0.974865,
		-0.816775, 0.535976, 0.213561,
		-0.535872, -0.841910, 0.063476,
		39.457863, 35.231445, 34.317154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410843, 35.929272, 34.732933>,  <39.832973, 35.820782, 34.272720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.410843, 35.929272, 34.732933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.444027, 35.530731, 34.741043>,  <39.463936, 35.291607, 34.745907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.444027, 35.530731, 34.741043>,  <39.410843, 35.929272, 34.732933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444027, 35.530731, 34.741043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037358, 0.023437, 0.999027,
		-0.995852, -0.082122, 0.039166,
		0.082960, -0.996346, 0.020272,
		39.468914, 35.231827, 34.747124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037014, 35.661510, 35.322063>,  <39.410843, 35.929272, 34.732933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.037014, 35.661510, 35.322063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.289001, 35.355347, 35.269466>,  <39.440193, 35.171650, 35.237907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.289001, 35.355347, 35.269466>,  <39.037014, 35.661510, 35.322063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.289001, 35.355347, 35.269466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067561, -0.114663, 0.991104,
		-0.773677, -0.633248, -0.020522,
		0.629968, -0.765408, -0.131495,
		39.477993, 35.125725, 35.230019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.999363, 35.391594, 35.939167>,  <39.037014, 35.661510, 35.322063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.999363, 35.391594, 35.939167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.320435, 35.230576, 35.763138>,  <39.513077, 35.133965, 35.657520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.320435, 35.230576, 35.763138>,  <38.999363, 35.391594, 35.939167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.320435, 35.230576, 35.763138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396638, -0.190756, 0.897937,
		-0.445407, -0.895304, 0.006548,
		0.802678, -0.402544, -0.440076,
		39.561237, 35.109814, 35.631115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157181, 34.677647, 36.213768>,  <38.999363, 35.391594, 35.939167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.157181, 34.677647, 36.213768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.487057, 34.859482, 36.079166>,  <39.684982, 34.968582, 35.998405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.487057, 34.859482, 36.079166>,  <39.157181, 34.677647, 36.213768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487057, 34.859482, 36.079166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457548, -0.186481, 0.869411,
		0.332472, -0.870962, -0.361784,
		0.824689, 0.454588, -0.336507,
		39.734463, 34.995857, 35.978214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.713402, 34.288136, 36.423573>,  <39.157181, 34.677647, 36.213768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.713402, 34.288136, 36.423573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.863628, 34.646709, 36.329464>,  <39.953766, 34.861855, 36.272999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.863628, 34.646709, 36.329464>,  <39.713402, 34.288136, 36.423573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.863628, 34.646709, 36.329464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536694, -0.003402, 0.843770,
		0.755586, -0.443159, -0.482390,
		0.375565, 0.896436, -0.235271,
		39.976299, 34.915642, 36.258884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.393738, 34.117050, 36.480186>,  <39.713402, 34.288136, 36.423573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.393738, 34.117050, 36.480186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.375713, 34.515324, 36.512665>,  <40.364899, 34.754288, 36.532150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.375713, 34.515324, 36.512665>,  <40.393738, 34.117050, 36.480186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.375713, 34.515324, 36.512665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723598, -0.023505, 0.689822,
		0.688750, 0.089832, -0.719412,
		-0.045058, 0.995680, 0.081192,
		40.362194, 34.814026, 36.537022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.978191, 34.442600, 36.427197>,  <40.393738, 34.117050, 36.480186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.978191, 34.442600, 36.427197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.773373, 34.701931, 36.652580>,  <40.650482, 34.857529, 36.787811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.773373, 34.701931, 36.652580>,  <40.978191, 34.442600, 36.427197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.773373, 34.701931, 36.652580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763203, 0.042404, 0.644766,
		0.394124, 0.760183, -0.516515,
		-0.512043, 0.648324, 0.563461,
		40.619759, 34.896427, 36.821617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.501156, 34.931652, 36.881531>,  <40.978191, 34.442600, 36.427197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.501156, 34.931652, 36.881531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.145805, 35.005898, 37.049503>,  <40.932594, 35.050446, 37.150288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.145805, 35.005898, 37.049503>,  <41.501156, 34.931652, 36.881531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.145805, 35.005898, 37.049503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458569, 0.313829, 0.831400,
		0.022528, 0.931161, -0.363912,
		-0.888373, 0.185609, 0.419932,
		40.879292, 35.061581, 37.175484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.596668, 35.595951, 37.214016>,  <41.501156, 34.931652, 36.881531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.596668, 35.595951, 37.214016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.286797, 35.424839, 37.400299>,  <41.100876, 35.322170, 37.512070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.286797, 35.424839, 37.400299>,  <41.596668, 35.595951, 37.214016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.286797, 35.424839, 37.400299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316619, 0.375105, 0.871234,
		-0.547385, 0.822375, -0.155142,
		-0.774676, -0.427779, 0.465707,
		41.054394, 35.296505, 37.540012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.177517, 36.165363, 37.582932>,  <41.596668, 35.595951, 37.214016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.177517, 36.165363, 37.582932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.084736, 35.831657, 37.783009>,  <41.029068, 35.631432, 37.903057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.084736, 35.831657, 37.783009>,  <41.177517, 36.165363, 37.582932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.084736, 35.831657, 37.783009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088986, 0.493864, 0.864974,
		-0.968648, 0.245144, -0.040316,
		-0.231954, -0.834268, 0.500194,
		41.015148, 35.581375, 37.933067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.919338, 36.350117, 38.159100>,  <41.177517, 36.165363, 37.582932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.919338, 36.350117, 38.159100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.972198, 35.969723, 38.270924>,  <41.003914, 35.741486, 38.338017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.972198, 35.969723, 38.270924>,  <40.919338, 36.350117, 38.159100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.972198, 35.969723, 38.270924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190131, 0.301118, 0.934440,
		-0.972824, -0.070336, 0.220606,
		0.132153, -0.950989, 0.279562,
		41.011845, 35.684425, 38.354794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.606026, 36.363602, 38.809986>,  <40.919338, 36.350117, 38.159100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.606026, 36.363602, 38.809986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.853279, 36.049465, 38.796413>,  <41.001633, 35.860985, 38.788269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.853279, 36.049465, 38.796413>,  <40.606026, 36.363602, 38.809986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.853279, 36.049465, 38.796413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362382, 0.246396, 0.898871,
		-0.697558, -0.567919, 0.436899,
		0.618136, -0.785339, -0.033928,
		41.038719, 35.813862, 38.786236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.866810, 36.330074, 39.569267>,  <40.606026, 36.363602, 38.809986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.866810, 36.330074, 39.569267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.098782, 36.059895, 39.387081>,  <41.237965, 35.897785, 39.277771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.098782, 36.059895, 39.387081>,  <40.866810, 36.330074, 39.569267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.098782, 36.059895, 39.387081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682720, 0.097915, 0.724090,
		-0.444490, -0.730876, 0.517927,
		0.579933, -0.675450, -0.455461,
		41.272762, 35.857258, 39.250443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.944542, 35.758671, 40.006241>,  <40.866810, 36.330074, 39.569267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.944542, 35.758671, 40.006241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.259579, 35.788204, 39.761536>,  <41.448601, 35.805923, 39.614712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.259579, 35.788204, 39.761536>,  <40.944542, 35.758671, 40.006241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.259579, 35.788204, 39.761536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613628, -0.003321, 0.789589,
		0.056266, -0.997265, -0.047922,
		0.787588, 0.073834, -0.611762,
		41.495853, 35.810352, 39.578007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.330696, 35.289429, 40.228516>,  <40.944542, 35.758671, 40.006241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.330696, 35.289429, 40.228516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.576508, 35.532047, 40.026737>,  <41.723995, 35.677620, 39.905670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.576508, 35.532047, 40.026737>,  <41.330696, 35.289429, 40.228516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.576508, 35.532047, 40.026737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524980, 0.162873, 0.835385,
		0.588859, -0.778187, -0.218334,
		0.614526, 0.606545, -0.504442,
		41.760864, 35.714012, 39.875404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.993095, 35.058453, 40.209511>,  <41.330696, 35.289429, 40.228516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.993095, 35.058453, 40.209511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.034142, 35.455303, 40.180767>,  <42.058769, 35.693413, 40.163521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.034142, 35.455303, 40.180767>,  <41.993095, 35.058453, 40.209511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.034142, 35.455303, 40.180767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657686, -0.013475, 0.753172,
		0.746270, -0.124548, -0.653888,
		0.102618, 0.992122, -0.071857,
		42.064926, 35.752941, 40.159210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.743210, 35.270046, 40.140446>,  <41.993095, 35.058453, 40.209511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.743210, 35.270046, 40.140446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.548183, 35.596489, 40.264542>,  <42.431168, 35.792355, 40.339001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.548183, 35.596489, 40.264542>,  <42.743210, 35.270046, 40.140446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.548183, 35.596489, 40.264542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581927, 0.038865, 0.812311,
		0.650875, 0.576594, -0.493864,
		-0.487568, 0.816106, 0.310239,
		42.401913, 35.841320, 40.357613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.214779, 35.644299, 40.399445>,  <42.743210, 35.270046, 40.140446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.214779, 35.644299, 40.399445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.885159, 35.713169, 40.615330>,  <42.687386, 35.754490, 40.744862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.885159, 35.713169, 40.615330>,  <43.214779, 35.644299, 40.399445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.885159, 35.713169, 40.615330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560368, 0.107831, 0.821195,
		0.083193, 0.979146, -0.185341,
		-0.824055, 0.172177, 0.539711,
		42.637943, 35.764824, 40.777245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.378288, 36.234352, 40.717533>,  <43.214779, 35.644299, 40.399445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.378288, 36.234352, 40.717533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.083107, 36.074070, 40.934738>,  <42.905998, 35.977901, 41.065060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.083107, 36.074070, 40.934738>,  <43.378288, 36.234352, 40.717533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.083107, 36.074070, 40.934738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515660, 0.184249, 0.836748,
		-0.435338, 0.897490, 0.070660,
		-0.737954, -0.400705, 0.543010,
		42.861721, 35.953857, 41.097641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.261124, 36.787514, 41.234749>,  <43.378288, 36.234352, 40.717533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.261124, 36.787514, 41.234749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.086384, 36.455364, 41.373112>,  <42.981541, 36.256077, 41.456131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.086384, 36.455364, 41.373112>,  <43.261124, 36.787514, 41.234749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.086384, 36.455364, 41.373112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285108, 0.236900, 0.928758,
		-0.853158, 0.504346, 0.133256,
		-0.436847, -0.830370, 0.345906,
		42.955330, 36.206253, 41.476883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.736565, 36.978752, 41.726372>,  <43.261124, 36.787514, 41.234749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.736565, 36.978752, 41.726372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.899841, 36.615070, 41.759193>,  <42.997807, 36.396862, 41.778885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.899841, 36.615070, 41.759193>,  <42.736565, 36.978752, 41.726372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.899841, 36.615070, 41.759193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465937, 0.284786, 0.837735,
		-0.785038, -0.303723, 0.539878,
		0.408189, -0.909203, 0.082052,
		43.022297, 36.342308, 41.783810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.583019, 36.626236, 42.388172>,  <42.736565, 36.978752, 41.726372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.583019, 36.626236, 42.388172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.894062, 36.408318, 42.262623>,  <43.080688, 36.277565, 42.187294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.894062, 36.408318, 42.262623>,  <42.583019, 36.626236, 42.388172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.894062, 36.408318, 42.262623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320850, -0.085479, 0.943265,
		-0.540720, -0.834198, 0.108330,
		0.777610, -0.544800, -0.313872,
		43.127346, 36.244877, 42.168461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.881489, 36.389027, 42.988518>,  <42.583019, 36.626236, 42.388172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.881489, 36.389027, 42.988518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.151741, 36.658012, 43.109398>,  <43.313892, 36.819405, 43.181927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.151741, 36.658012, 43.109398>,  <42.881489, 36.389027, 42.988518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.151741, 36.658012, 43.109398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470385, -0.708820, 0.525654,
		0.567685, -0.212997, -0.795215,
		0.675627, 0.672463, 0.302196,
		43.354427, 36.859753, 43.200058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.608887, 36.080643, 42.988655>,  <42.881489, 36.389027, 42.988518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.608887, 36.080643, 42.988655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.599609, 36.376411, 43.257793>,  <43.594044, 36.553871, 43.419277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.599609, 36.376411, 43.257793>,  <43.608887, 36.080643, 42.988655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.599609, 36.376411, 43.257793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472851, -0.584872, 0.659042,
		0.880837, 0.333444, -0.336067,
		-0.023198, 0.739418, 0.672846,
		43.592651, 36.598236, 43.459648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.980373, 35.462486, 42.642921>,  <43.608887, 36.080643, 42.988655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.980373, 35.462486, 42.642921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.581738, 35.438293, 42.665405>,  <43.342556, 35.423779, 42.678894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.581738, 35.438293, 42.665405>,  <43.980373, 35.462486, 42.642921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.581738, 35.438293, 42.665405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079699, 0.526721, -0.846294,
		0.021584, -0.847883, -0.529743,
		-0.996585, -0.060486, 0.056207,
		43.282761, 35.420147, 42.682266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.743877, 35.222061, 42.004784>,  <43.980373, 35.462486, 42.642921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.743877, 35.222061, 42.004784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.432919, 35.404942, 42.177578>,  <43.246342, 35.514671, 42.281254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.432919, 35.404942, 42.177578>,  <43.743877, 35.222061, 42.004784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.432919, 35.404942, 42.177578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292339, 0.345475, -0.891731,
		-0.556943, -0.819520, -0.134914,
		-0.777401, 0.457203, 0.431987,
		43.199699, 35.542103, 42.307175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.144436, 34.981823, 41.733456>,  <43.743877, 35.222061, 42.004784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.144436, 34.981823, 41.733456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.037548, 35.343266, 41.867374>,  <42.973415, 35.560131, 41.947727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.037548, 35.343266, 41.867374>,  <43.144436, 34.981823, 41.733456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.037548, 35.343266, 41.867374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567261, 0.133349, -0.812670,
		-0.778979, -0.407078, 0.476947,
		-0.267220, 0.903607, 0.334796,
		42.957382, 35.614349, 41.967812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.385475, 35.051071, 41.880116>,  <43.144436, 34.981823, 41.733456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.385475, 35.051071, 41.880116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.548866, 35.398670, 41.768410>,  <42.646900, 35.607231, 41.701385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.548866, 35.398670, 41.768410>,  <42.385475, 35.051071, 41.880116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.548866, 35.398670, 41.768410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619494, 0.039238, -0.784020,
		-0.670353, 0.493259, 0.554366,
		0.408478, 0.868997, -0.279267,
		42.671410, 35.659370, 41.684631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.751122, 35.462212, 41.660553>,  <42.385475, 35.051071, 41.880116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.751122, 35.462212, 41.660553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.081451, 35.623669, 41.503029>,  <42.279648, 35.720543, 41.408512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.081451, 35.623669, 41.503029>,  <41.751122, 35.462212, 41.660553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.081451, 35.623669, 41.503029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463813, 0.088929, -0.881459,
		-0.320773, 0.910584, 0.260654,
		0.825822, 0.403643, -0.393814,
		42.329197, 35.744762, 41.384884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.558231, 36.083641, 41.372513>,  <41.751122, 35.462212, 41.660553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.558231, 36.083641, 41.372513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.890667, 35.984043, 41.173599>,  <42.090130, 35.924286, 41.054253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.890667, 35.984043, 41.173599>,  <41.558231, 36.083641, 41.372513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.890667, 35.984043, 41.173599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418970, 0.307700, -0.854275,
		0.365724, 0.918326, 0.151405,
		0.831090, -0.248994, -0.497284,
		42.139996, 35.909344, 41.024414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.730267, 36.716568, 41.015343>,  <41.558231, 36.083641, 41.372513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.730267, 36.716568, 41.015343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.918484, 36.414669, 40.832500>,  <42.031414, 36.233528, 40.722794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.918484, 36.414669, 40.832500>,  <41.730267, 36.716568, 41.015343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.918484, 36.414669, 40.832500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216705, 0.403327, -0.889026,
		0.855355, 0.517378, 0.026223,
		0.470539, -0.754750, -0.457106,
		42.059647, 36.188244, 40.695370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.832054, 36.950306, 40.302502>,  <41.730267, 36.716568, 41.015343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.832054, 36.950306, 40.302502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.099678, 36.655220, 40.266426>,  <42.260254, 36.478168, 40.244781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.099678, 36.655220, 40.266426>,  <41.832054, 36.950306, 40.302502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.099678, 36.655220, 40.266426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329765, -0.185922, -0.925575,
		0.666041, 0.649008, -0.367666,
		0.669062, -0.737714, -0.090189,
		42.300396, 36.433907, 40.239368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.989178, 36.841743, 39.552570>,  <41.832054, 36.950306, 40.302502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.989178, 36.841743, 39.552570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.105606, 36.512661, 39.747890>,  <42.175461, 36.315212, 39.865082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.105606, 36.512661, 39.747890>,  <41.989178, 36.841743, 39.552570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.105606, 36.512661, 39.747890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299929, -0.563142, -0.770009,
		0.908472, 0.077667, -0.410665,
		0.291067, -0.822702, 0.488304,
		42.192924, 36.265850, 39.894382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.509766, 36.454132, 39.163643>,  <41.989178, 36.841743, 39.552570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.509766, 36.454132, 39.163643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.278439, 36.226768, 39.397724>,  <42.139645, 36.090351, 39.538174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.278439, 36.226768, 39.397724>,  <42.509766, 36.454132, 39.163643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.278439, 36.226768, 39.397724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382461, -0.444718, -0.809907,
		0.720608, -0.692200, 0.039794,
		-0.578315, -0.568406, 0.585207,
		42.104942, 36.056248, 39.573288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.532761, 35.802029, 38.814152>,  <42.509766, 36.454132, 39.163643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.532761, 35.802029, 38.814152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.207355, 35.792683, 39.046585>,  <42.012112, 35.787075, 39.186047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.207355, 35.792683, 39.046585>,  <42.532761, 35.802029, 38.814152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.207355, 35.792683, 39.046585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536531, -0.355339, -0.765421,
		0.224364, -0.934446, 0.276536,
		-0.813508, -0.023362, 0.581084,
		41.963303, 35.785675, 39.220909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.168983, 35.118263, 38.763557>,  <42.532761, 35.802029, 38.814152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.168983, 35.118263, 38.763557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.869823, 35.358021, 38.877655>,  <41.690327, 35.501877, 38.946114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.869823, 35.358021, 38.877655>,  <42.168983, 35.118263, 38.763557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.869823, 35.358021, 38.877655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588430, -0.399753, -0.702814,
		-0.307236, -0.693484, 0.651679,
		-0.747902, 0.599397, 0.285248,
		41.645454, 35.537842, 38.963230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.647682, 34.700066, 38.966610>,  <42.168983, 35.118263, 38.763557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.647682, 34.700066, 38.966610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.460178, 35.046616, 38.897717>,  <41.347675, 35.254543, 38.856380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.460178, 35.046616, 38.897717>,  <41.647682, 34.700066, 38.966610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.460178, 35.046616, 38.897717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527470, -0.430945, -0.732162,
		-0.708546, -0.252364, 0.658996,
		-0.468762, 0.866371, -0.172230,
		41.319550, 35.306526, 38.846046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.196613, 34.476910, 38.545315>,  <41.647682, 34.700066, 38.966610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.196613, 34.476910, 38.545315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.101879, 34.865395, 38.555561>,  <41.045040, 35.098484, 38.561707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.101879, 34.865395, 38.555561>,  <41.196613, 34.476910, 38.545315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.101879, 34.865395, 38.555561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478646, -0.093699, -0.872994,
		-0.845463, -0.219015, 0.487058,
		-0.236836, 0.971212, 0.025611,
		41.030827, 35.156757, 38.563244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.676384, 34.323589, 38.144535>,  <41.196613, 34.476910, 38.545315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.676384, 34.323589, 38.144535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.722191, 34.720814, 38.155285>,  <40.749676, 34.959148, 38.161736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.722191, 34.720814, 38.155285>,  <40.676384, 34.323589, 38.144535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.722191, 34.720814, 38.155285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424430, 0.073365, -0.902484,
		-0.898189, 0.091948, 0.429886,
		0.114520, 0.993058, 0.026870,
		40.756546, 35.018730, 38.163345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.050713, 34.740459, 38.136200>,  <40.676384, 34.323589, 38.144535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.050713, 34.740459, 38.136200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.365379, 34.910072, 37.956711>,  <40.554180, 35.011841, 37.849018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.365379, 34.910072, 37.956711>,  <40.050713, 34.740459, 38.136200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.365379, 34.910072, 37.956711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382492, -0.235776, -0.893370,
		-0.484614, 0.874418, -0.023290,
		0.786670, 0.424031, -0.448718,
		40.601379, 35.037281, 37.822094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.830315, 35.419971, 37.760292>,  <40.050713, 34.740459, 38.136200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.830315, 35.419971, 37.760292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.154446, 35.278484, 37.573425>,  <40.348927, 35.193592, 37.461304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.154446, 35.278484, 37.573425>,  <39.830315, 35.419971, 37.760292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.154446, 35.278484, 37.573425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414756, 0.216959, -0.883689,
		0.413935, 0.909841, 0.029101,
		0.810331, -0.353720, -0.467168,
		40.397545, 35.172367, 37.433273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.122261, 35.951939, 37.264977>,  <39.830315, 35.419971, 37.760292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.122261, 35.951939, 37.264977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.232048, 35.587646, 37.141533>,  <40.297920, 35.369072, 37.067467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.232048, 35.587646, 37.141533>,  <40.122261, 35.951939, 37.264977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.232048, 35.587646, 37.141533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329987, 0.212241, -0.919817,
		0.903204, 0.354295, -0.242276,
		0.274466, -0.910730, -0.308610,
		40.314388, 35.314426, 37.048950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.293663, 36.109673, 36.598919>,  <40.122261, 35.951939, 37.264977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.293663, 36.109673, 36.598919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.310432, 35.710026, 36.598804>,  <40.320496, 35.470238, 36.598736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.310432, 35.710026, 36.598804>,  <40.293663, 36.109673, 36.598919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310432, 35.710026, 36.598804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110510, -0.004351, -0.993866,
		0.992990, 0.041700, -0.110595,
		0.041925, -0.999121, -0.000287,
		40.323009, 35.410290, 36.598717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.775539, 35.859688, 36.020275>,  <40.293663, 36.109673, 36.598919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.775539, 35.859688, 36.020275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.521046, 35.561951, 36.101425>,  <40.368351, 35.383308, 36.150116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.521046, 35.561951, 36.101425>,  <40.775539, 35.859688, 36.020275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.521046, 35.561951, 36.101425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258837, -0.041781, -0.965017,
		0.726783, -0.666485, -0.166082,
		-0.636231, -0.744346, 0.202877,
		40.330177, 35.338646, 36.162289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.864185, 35.450970, 35.496582>,  <40.775539, 35.859688, 36.020275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.864185, 35.450970, 35.496582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.536358, 35.283245, 35.652779>,  <40.339661, 35.182610, 35.746498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.536358, 35.283245, 35.652779>,  <40.864185, 35.450970, 35.496582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.536358, 35.283245, 35.652779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347483, -0.178162, -0.920605,
		0.455591, -0.890189, 0.000313,
		-0.819569, -0.419310, 0.390494,
		40.290485, 35.157452, 35.769928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.824272, 34.846874, 35.235924>,  <40.864185, 35.450970, 35.496582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.824272, 34.846874, 35.235924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.448643, 34.938763, 35.338196>,  <40.223267, 34.993896, 35.399559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.448643, 34.938763, 35.338196>,  <40.824272, 34.846874, 35.235924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.448643, 34.938763, 35.338196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306067, -0.220364, -0.926155,
		-0.156411, -0.947982, 0.277247,
		-0.939073, 0.229717, 0.255678,
		40.166920, 35.007679, 35.414898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.444466, 34.341728, 34.951286>,  <40.824272, 34.846874, 35.235924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.444466, 34.341728, 34.951286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.146351, 34.599895, 35.018208>,  <39.967484, 34.754795, 35.058361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.146351, 34.599895, 35.018208>,  <40.444466, 34.341728, 34.951286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.146351, 34.599895, 35.018208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345716, -0.159510, -0.924682,
		-0.570118, -0.746990, 0.342010,
		-0.745283, 0.645416, 0.167307,
		39.922768, 34.793522, 35.068401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.129646, 34.184975, 35.244793>,  <40.444466, 34.341728, 34.951286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.129646, 34.184975, 35.244793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.089382, 34.357269, 34.886055>,  <41.065224, 34.460644, 34.670811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.089382, 34.357269, 34.886055>,  <41.129646, 34.184975, 35.244793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.089382, 34.357269, 34.886055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985096, -0.169515, 0.029150,
		-0.139473, 0.886417, 0.441376,
		-0.100659, 0.430732, -0.896849,
		41.059185, 34.486488, 34.617001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.558414, 34.939213, 35.392845>,  <41.129646, 34.184975, 35.244793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.558414, 34.939213, 35.392845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.901371, 35.006390, 35.198250>,  <42.107147, 35.046696, 35.081493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.901371, 35.006390, 35.198250>,  <41.558414, 34.939213, 35.392845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.901371, 35.006390, 35.198250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514311, -0.314363, 0.797910,
		-0.018932, -0.934330, -0.355906,
		0.857395, 0.167940, -0.486488,
		42.158588, 35.056770, 35.052303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.057320, 34.391785, 35.419228>,  <41.558414, 34.939213, 35.392845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.057320, 34.391785, 35.419228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.271797, 34.728230, 35.390896>,  <42.400486, 34.930096, 35.373898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.271797, 34.728230, 35.390896>,  <42.057320, 34.391785, 35.419228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.271797, 34.728230, 35.390896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534350, -0.273282, 0.799867,
		0.653425, -0.466734, -0.595983,
		0.536197, 0.841116, -0.070830,
		42.432655, 34.980564, 35.369648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.881683, 34.246422, 35.250023>,  <42.057320, 34.391785, 35.419228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.881683, 34.246422, 35.250023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.752842, 34.542404, 35.486229>,  <42.675537, 34.719994, 35.627953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.752842, 34.542404, 35.486229>,  <42.881683, 34.246422, 35.250023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.752842, 34.542404, 35.486229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617964, -0.308199, 0.723280,
		0.717194, 0.597889, -0.357996,
		-0.322107, 0.739960, 0.590513,
		42.656208, 34.764393, 35.663383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.649849, 33.748684, 35.653774>,  <42.881683, 34.246422, 35.250023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.649849, 33.748684, 35.653774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.622360, 33.495182, 35.345585>,  <42.605865, 33.343082, 35.160671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.622360, 33.495182, 35.345585>,  <42.649849, 33.748684, 35.653774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.622360, 33.495182, 35.345585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939157, 0.219432, -0.264261,
		0.336544, -0.741758, 0.580115,
		-0.068722, -0.633754, -0.770476,
		42.601742, 33.305058, 35.114441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.217808, 33.238178, 35.605415>,  <42.649849, 33.748684, 35.653774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.217808, 33.238178, 35.605415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.068249, 33.360092, 35.255032>,  <42.978512, 33.433239, 35.044800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.068249, 33.360092, 35.255032>,  <43.217808, 33.238178, 35.605415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.068249, 33.360092, 35.255032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788383, 0.601916, -0.127084,
		0.488521, -0.738109, -0.465341,
		-0.373898, 0.304784, -0.875961,
		42.956078, 33.451527, 34.992245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.029083, 33.049236, 35.840729>,  <43.217808, 33.238178, 35.605415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.029083, 33.049236, 35.840729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.859032, 32.765606, 35.615704>,  <43.757000, 32.595428, 35.480690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.859032, 32.765606, 35.615704>,  <44.029083, 33.049236, 35.840729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.859032, 32.765606, 35.615704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583628, 0.689809, -0.428418,
		0.691846, 0.146202, -0.707089,
		-0.425120, -0.709076, -0.562569,
		43.731495, 32.552883, 35.446934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.372795, 32.710804, 35.238686>,  <44.029083, 33.049236, 35.840729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.372795, 32.710804, 35.238686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.627293, 32.891617, 34.988609>,  <44.779991, 33.000103, 34.838566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.627293, 32.891617, 34.988609>,  <44.372795, 32.710804, 35.238686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.627293, 32.891617, 34.988609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447743, -0.876283, -0.177918,
		-0.628266, -0.166723, -0.759925,
		0.636246, 0.452031, -0.625187,
		44.818165, 33.027225, 34.801052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.870598, 32.731274, 34.776237>,  <44.372795, 32.710804, 35.238686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.870598, 32.731274, 34.776237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.552109, 32.716885, 35.017811>,  <43.361015, 32.708252, 35.162754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.552109, 32.716885, 35.017811>,  <43.870598, 32.731274, 34.776237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.552109, 32.716885, 35.017811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416817, 0.690914, 0.590679,
		-0.438517, 0.722041, -0.535126,
		-0.796220, -0.035974, 0.603936,
		43.313244, 32.706093, 35.198990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.314438, 33.139500, 34.196686>,  <43.870598, 32.731274, 34.776237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.314438, 33.139500, 34.196686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.944096, 33.128502, 34.347435>,  <42.721889, 33.121902, 34.437885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.944096, 33.128502, 34.347435>,  <43.314438, 33.139500, 34.196686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.944096, 33.128502, 34.347435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303676, -0.539383, -0.785396,
		0.224872, -0.841612, 0.491042,
		-0.925858, -0.027496, 0.376869,
		42.666340, 33.120255, 34.460495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.928806, 33.378361, 34.454224>,  <43.314438, 33.139500, 34.196686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.928806, 33.378361, 34.454224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.064484, 33.753132, 34.487976>,  <44.145889, 33.977993, 34.508228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.064484, 33.753132, 34.487976>,  <43.928806, 33.378361, 34.454224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.064484, 33.753132, 34.487976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843588, -0.263257, -0.468033,
		-0.416298, 0.229936, -0.879673,
		0.339198, 0.936923, 0.084378,
		44.166245, 34.034210, 34.513290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.001129, 33.792858, 33.783199>,  <43.928806, 33.378361, 34.454224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.001129, 33.792858, 33.783199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.258137, 33.852818, 34.083786>,  <44.412342, 33.888794, 34.264137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.258137, 33.852818, 34.083786>,  <44.001129, 33.792858, 33.783199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.258137, 33.852818, 34.083786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741436, -0.369252, -0.560291,
		0.193490, 0.917160, -0.348395,
		0.642522, 0.149902, 0.751462,
		44.450893, 33.897789, 34.309223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.611034, 34.314140, 33.809761>,  <44.001129, 33.792858, 33.783199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.611034, 34.314140, 33.809761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.761841, 34.012833, 34.025333>,  <44.852325, 33.832047, 34.154675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.761841, 34.012833, 34.025333>,  <44.611034, 34.314140, 33.809761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.761841, 34.012833, 34.025333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673188, -0.176782, -0.718029,
		0.636144, 0.633505, 0.440444,
		0.377013, -0.753272, 0.538927,
		44.874943, 33.786850, 34.187012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.198410, 34.455177, 33.437786>,  <44.611034, 34.314140, 33.809761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.198410, 34.455177, 33.437786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.543308, 34.311352, 33.295105>,  <45.750248, 34.225056, 33.209496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.543308, 34.311352, 33.295105>,  <45.198410, 34.455177, 33.437786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.543308, 34.311352, 33.295105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364355, -0.048842, 0.929978,
		-0.351810, -0.931841, 0.088895,
		0.862250, -0.359565, -0.356704,
		45.801983, 34.203484, 33.188095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.483822, 33.803474, 33.710938>,  <45.198410, 34.455177, 33.437786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.483822, 33.803474, 33.710938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.792564, 34.038185, 33.613007>,  <45.977810, 34.179012, 33.554249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.792564, 34.038185, 33.613007>,  <45.483822, 33.803474, 33.710938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.792564, 34.038185, 33.613007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223316, 0.110332, 0.968482,
		0.595292, -0.802198, -0.045876,
		0.771853, 0.586775, -0.244824,
		46.024120, 34.214218, 33.539558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.074871, 33.662960, 34.096252>,  <45.483822, 33.803474, 33.710938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.074871, 33.662960, 34.096252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.112282, 34.054340, 34.022621>,  <46.134727, 34.289169, 33.978443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.112282, 34.054340, 34.022621>,  <46.074871, 33.662960, 34.096252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.112282, 34.054340, 34.022621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132506, 0.171011, 0.976318,
		0.986760, -0.115700, -0.113658,
		0.093523, 0.978452, -0.184077,
		46.140339, 34.347878, 33.967400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.798077, 33.986374, 34.130360>,  <46.074871, 33.662960, 34.096252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.798077, 33.986374, 34.130360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.477646, 34.209270, 34.217770>,  <46.285385, 34.343010, 34.270214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.477646, 34.209270, 34.217770>,  <46.798077, 33.986374, 34.130360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.477646, 34.209270, 34.217770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377961, 0.187836, 0.906567,
		0.464129, 0.808827, -0.361086,
		-0.801081, 0.557240, 0.218525,
		46.237320, 34.376442, 34.283325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.924503, 34.710136, 34.291595>,  <46.798077, 33.986374, 34.130360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.924503, 34.710136, 34.291595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.607922, 34.586838, 34.502720>,  <46.417973, 34.512859, 34.629395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.607922, 34.586838, 34.502720>,  <46.924503, 34.710136, 34.291595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.607922, 34.586838, 34.502720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450749, 0.288897, 0.844608,
		-0.412834, 0.906378, -0.089705,
		-0.791450, -0.308249, 0.527816,
		46.370487, 34.494362, 34.661064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.865486, 34.367657, 34.928665>,  <46.924503, 34.710136, 34.291595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.865486, 34.367657, 34.928665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.772770, 34.315140, 35.314213>,  <46.717140, 34.283630, 35.545540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.772770, 34.315140, 35.314213>,  <46.865486, 34.367657, 34.928665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.772770, 34.315140, 35.314213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524829, 0.851146, -0.010275,
		-0.819040, -0.508246, -0.266194,
		-0.231792, -0.131291, 0.963865,
		46.703232, 34.275753, 35.603371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.047646, 34.968143, 34.991272>,  <46.865486, 34.367657, 34.928665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.047646, 34.968143, 34.991272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.341423, 34.696793, 34.999260>,  <47.517689, 34.533981, 35.004051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.341423, 34.696793, 34.999260>,  <47.047646, 34.968143, 34.991272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.341423, 34.696793, 34.999260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574104, 0.605316, -0.551359,
		0.361944, 0.416404, 0.834029,
		0.734439, -0.678381, 0.019969,
		47.561756, 34.493279, 35.005249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.692768, 35.173409, 35.383259>,  <47.047646, 34.968143, 34.991272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.692768, 35.173409, 35.383259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.756649, 34.922325, 35.078503>,  <47.794979, 34.771675, 34.895649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.756649, 34.922325, 35.078503>,  <47.692768, 35.173409, 35.383259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.756649, 34.922325, 35.078503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696582, 0.618532, -0.363583,
		0.699477, -0.472653, 0.536032,
		0.159704, -0.627708, -0.761890,
		47.804562, 34.734013, 34.849934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.168736, 30.511936, 29.526339> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.832623, 30.647552, 29.695564>,  <32.630955, 30.728922, 29.797100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.832623, 30.647552, 29.695564>,  <33.168736, 30.511936, 29.526339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.832623, 30.647552, 29.695564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540986, 0.473130, 0.695329,
		0.035581, 0.813141, -0.580978,
		-0.840279, 0.339042, 0.423063,
		32.580540, 30.749266, 29.822483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.281902, 31.289919, 29.595228>,  <33.168736, 30.511936, 29.526339>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.281902, 31.289919, 29.595228> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.004982, 31.189480, 29.865833>,  <32.838829, 31.129217, 30.028196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.004982, 31.189480, 29.865833>,  <33.281902, 31.289919, 29.595228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.004982, 31.189480, 29.865833> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503426, 0.503610, 0.702097,
		-0.516994, 0.826636, -0.222240,
		-0.692300, -0.251098, 0.676513,
		32.797291, 31.114151, 30.068787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.075256, 31.883852, 29.930758>,  <33.281902, 31.289919, 29.595228>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.075256, 31.883852, 29.930758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.997524, 31.592154, 30.193188>,  <32.950886, 31.417133, 30.350645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.997524, 31.592154, 30.193188>,  <33.075256, 31.883852, 29.930758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.997524, 31.592154, 30.193188> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235657, 0.614530, 0.752874,
		-0.952209, 0.300916, 0.052430,
		-0.194332, -0.729248, 0.656073,
		32.939224, 31.373379, 30.390009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.966785, 32.238331, 30.524401>,  <33.075256, 31.883852, 29.930758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.966785, 32.238331, 30.524401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.986534, 31.867998, 30.674284>,  <32.998383, 31.645800, 30.764214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.986534, 31.867998, 30.674284>,  <32.966785, 32.238331, 30.524401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.986534, 31.867998, 30.674284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280869, 0.372896, 0.884343,
		-0.958475, 0.061579, 0.278448,
		0.049375, -0.925828, 0.374707,
		33.001347, 31.590250, 30.786695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.727692, 32.177406, 31.201437>,  <32.966785, 32.238331, 30.524401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.727692, 32.177406, 31.201437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.957691, 31.850153, 31.203840>,  <33.095692, 31.653803, 31.205282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.957691, 31.850153, 31.203840>,  <32.727692, 32.177406, 31.201437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.957691, 31.850153, 31.203840> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156105, 0.116918, 0.980796,
		-0.803121, -0.563023, 0.194943,
		0.575003, -0.818129, 0.006009,
		33.130192, 31.604713, 31.205643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.648849, 31.975073, 31.889708>,  <32.727692, 32.177406, 31.201437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.648849, 31.975073, 31.889708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.960571, 31.764307, 31.754030>,  <33.147602, 31.637848, 31.672625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.960571, 31.764307, 31.754030>,  <32.648849, 31.975073, 31.889708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.960571, 31.764307, 31.754030> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356981, -0.071583, 0.931365,
		-0.515030, -0.846898, 0.132314,
		0.779300, -0.526915, -0.339194,
		33.194363, 31.606232, 31.652271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.761837, 31.331554, 32.234409>,  <32.648849, 31.975073, 31.889708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.761837, 31.331554, 32.234409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.127323, 31.423117, 32.100109>,  <33.346615, 31.478054, 32.019531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.127323, 31.423117, 32.100109>,  <32.761837, 31.331554, 32.234409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127323, 31.423117, 32.100109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390057, -0.262409, 0.882608,
		0.113930, -0.937413, -0.329054,
		0.913715, 0.228905, -0.335748,
		33.401440, 31.491789, 31.999384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.168167, 31.027981, 32.683563>,  <32.761837, 31.331554, 32.234409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.168167, 31.027981, 32.683563> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.437481, 31.266077, 32.508121>,  <33.599072, 31.408934, 32.402855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.437481, 31.266077, 32.508121>,  <33.168167, 31.027981, 32.683563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437481, 31.266077, 32.508121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559633, -0.022576, 0.828433,
		0.483213, -0.803232, -0.348315,
		0.673287, 0.595238, -0.438607,
		33.639465, 31.444649, 32.376541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.806492, 30.769762, 32.832386>,  <33.168167, 31.027981, 32.683563>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.806492, 30.769762, 32.832386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.883038, 31.156206, 32.763092>,  <33.928967, 31.388073, 32.721516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.883038, 31.156206, 32.763092>,  <33.806492, 30.769762, 32.832386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883038, 31.156206, 32.763092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587249, 0.028721, 0.808897,
		0.786459, -0.256526, -0.561851,
		0.191366, 0.966111, -0.173233,
		33.940449, 31.446039, 32.711121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535675, 30.865351, 32.957012>,  <33.806492, 30.769762, 32.832386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535675, 30.865351, 32.957012> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.379307, 31.233358, 32.967957>,  <34.285488, 31.454163, 32.974522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.379307, 31.233358, 32.967957>,  <34.535675, 30.865351, 32.957012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.379307, 31.233358, 32.967957> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653244, 0.256378, 0.712421,
		0.648425, 0.296372, -0.701219,
		-0.390919, 0.920018, 0.027361,
		34.262032, 31.509363, 32.976166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028778, 31.316572, 32.897388>,  <34.535675, 30.865351, 32.957012>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028778, 31.316572, 32.897388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.744423, 31.533096, 33.077000>,  <34.573811, 31.663012, 33.184765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.744423, 31.533096, 33.077000>,  <35.028778, 31.316572, 32.897388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.744423, 31.533096, 33.077000> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692946, 0.429883, 0.578815,
		0.120290, 0.722622, -0.680696,
		-0.710885, 0.541311, 0.449027,
		34.531158, 31.695490, 33.211708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.468437, 31.800837, 33.060600>,  <35.028778, 31.316572, 32.897388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.468437, 31.800837, 33.060600> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.153965, 31.877831, 33.295502>,  <34.965282, 31.924026, 33.436443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.153965, 31.877831, 33.295502>,  <35.468437, 31.800837, 33.060600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153965, 31.877831, 33.295502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606618, 0.421851, 0.673837,
		-0.118032, 0.885998, -0.448415,
		-0.786183, 0.192483, 0.587254,
		34.918110, 31.935575, 33.471680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552238, 32.483696, 33.244480>,  <35.468437, 31.800837, 33.060600>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552238, 32.483696, 33.244480> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.301395, 32.345642, 33.523796>,  <35.150890, 32.262810, 33.691387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.301395, 32.345642, 33.523796>,  <35.552238, 32.483696, 33.244480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.301395, 32.345642, 33.523796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613899, 0.332795, 0.715805,
		-0.479441, 0.877568, 0.003182,
		-0.627109, -0.345139, 0.698293,
		35.113262, 32.242100, 33.733284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467419, 32.998238, 33.697067>,  <35.552238, 32.483696, 33.244480>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467419, 32.998238, 33.697067> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.375462, 32.660389, 33.890465>,  <35.320286, 32.457680, 34.006504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.375462, 32.660389, 33.890465>,  <35.467419, 32.998238, 33.697067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.375462, 32.660389, 33.890465> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430851, 0.357136, 0.828747,
		-0.872649, 0.398838, 0.281801,
		-0.229895, -0.844619, 0.483494,
		35.306492, 32.407001, 34.035515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120346, 33.245396, 34.247375>,  <35.467419, 32.998238, 33.697067>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.120346, 33.245396, 34.247375> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.269249, 32.882248, 34.324524>,  <35.358593, 32.664360, 34.370815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.269249, 32.882248, 34.324524>,  <35.120346, 33.245396, 34.247375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.269249, 32.882248, 34.324524> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538886, 0.380617, 0.751487,
		-0.755661, -0.175811, 0.630925,
		0.372261, -0.907866, 0.192876,
		35.380928, 32.609890, 34.382385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349266, 33.248764, 34.872478>,  <35.120346, 33.245396, 34.247375>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349266, 33.248764, 34.872478> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.545395, 32.912601, 34.780132>,  <35.663074, 32.710903, 34.724724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.545395, 32.912601, 34.780132>,  <35.349266, 33.248764, 34.872478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.545395, 32.912601, 34.780132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694859, 0.217066, 0.685605,
		-0.526074, -0.496587, 0.690397,
		0.490324, -0.840407, -0.230865,
		35.692493, 32.660480, 34.710873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484917, 33.055634, 35.437279>,  <35.349266, 33.248764, 34.872478>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.484917, 33.055634, 35.437279> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.738400, 32.846306, 35.209400>,  <35.890488, 32.720711, 35.072674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.738400, 32.846306, 35.209400>,  <35.484917, 33.055634, 35.437279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.738400, 32.846306, 35.209400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714436, 0.113507, 0.690433,
		-0.296651, -0.844544, 0.445807,
		0.633703, -0.523318, -0.569701,
		35.928509, 32.689312, 35.038490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879436, 32.648777, 35.884811>,  <35.484917, 33.055634, 35.437279>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879436, 32.648777, 35.884811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.093513, 32.631050, 35.547382>,  <36.221958, 32.620415, 35.344925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.093513, 32.631050, 35.547382>,  <35.879436, 32.648777, 35.884811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.093513, 32.631050, 35.547382> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844192, -0.007614, 0.535987,
		-0.030180, -0.998988, 0.033342,
		0.535191, -0.044323, -0.843568,
		36.254070, 32.617756, 35.294312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489033, 32.123825, 35.939194>,  <35.879436, 32.648777, 35.884811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489033, 32.123825, 35.939194> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.583775, 32.403488, 35.669357>,  <36.640621, 32.571285, 35.507454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.583775, 32.403488, 35.669357>,  <36.489033, 32.123825, 35.939194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583775, 32.403488, 35.669357> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929260, 0.039585, 0.367300,
		0.283504, -0.713871, -0.640323,
		0.236858, 0.699157, -0.674595,
		36.654831, 32.613235, 35.466980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133133, 31.897041, 35.732136>,  <36.489033, 32.123825, 35.939194>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133133, 31.897041, 35.732136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.143661, 32.277210, 35.608200>,  <37.149979, 32.505314, 35.533840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.143661, 32.277210, 35.608200>,  <37.133133, 31.897041, 35.732136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143661, 32.277210, 35.608200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917984, 0.099719, 0.383876,
		0.395742, -0.294534, -0.869850,
		0.026324, 0.950424, -0.309841,
		37.151558, 32.562336, 35.515247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750862, 31.990671, 35.293159>,  <37.133133, 31.897041, 35.732136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.750862, 31.990671, 35.293159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.646645, 32.346802, 35.442524>,  <37.584114, 32.560478, 35.532143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.646645, 32.346802, 35.442524>,  <37.750862, 31.990671, 35.293159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.646645, 32.346802, 35.442524> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910527, 0.097989, 0.401670,
		0.321026, 0.444656, -0.836196,
		-0.260543, 0.890325, 0.373414,
		37.568481, 32.613899, 35.554546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.287682, 32.433674, 35.163715>,  <37.750862, 31.990671, 35.293159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.287682, 32.433674, 35.163715> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.104450, 32.644836, 35.449787>,  <37.994511, 32.771534, 35.621429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.104450, 32.644836, 35.449787>,  <38.287682, 32.433674, 35.163715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.104450, 32.644836, 35.449787> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874791, 0.124874, 0.468131,
		0.157823, 0.840071, -0.519011,
		-0.458075, 0.527909, 0.715178,
		37.967030, 32.803207, 35.664341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783176, 32.693802, 34.544342>,  <38.287682, 32.433674, 35.163715>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.783176, 32.693802, 34.544342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.173164, 32.607014, 34.563747>,  <38.407158, 32.554943, 34.575390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.173164, 32.607014, 34.563747>,  <37.783176, 32.693802, 34.544342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.173164, 32.607014, 34.563747> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085386, -0.566911, -0.819342,
		0.205273, 0.794693, -0.571249,
		0.974973, -0.216966, 0.048516,
		38.465656, 32.541924, 34.578300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135281, 32.873463, 33.844433>,  <37.783176, 32.693802, 34.544342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135281, 32.873463, 33.844433> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.396648, 32.612858, 33.998619>,  <38.553467, 32.456497, 34.091129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.396648, 32.612858, 33.998619>,  <38.135281, 32.873463, 33.844433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.396648, 32.612858, 33.998619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114955, -0.417901, -0.901190,
		0.748220, 0.633164, -0.198169,
		0.653416, -0.651508, 0.385467,
		38.592674, 32.417404, 34.114258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792919, 32.931160, 33.544315>,  <38.135281, 32.873463, 33.844433>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.792919, 32.931160, 33.544315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.754082, 32.557625, 33.682026>,  <38.730778, 32.333504, 33.764652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.754082, 32.557625, 33.682026>,  <38.792919, 32.931160, 33.544315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.754082, 32.557625, 33.682026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000636, -0.345966, -0.938247,
		0.995275, -0.090882, 0.034186,
		-0.097097, -0.933835, 0.344274,
		38.724953, 32.277473, 33.785309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235725, 32.493370, 33.091713>,  <38.792919, 32.931160, 33.544315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.235725, 32.493370, 33.091713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.981430, 32.244076, 33.273884>,  <38.828854, 32.094498, 33.383186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.981430, 32.244076, 33.273884>,  <39.235725, 32.493370, 33.091713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.981430, 32.244076, 33.273884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145142, -0.482962, -0.863528,
		0.758140, -0.615076, 0.216578,
		-0.635734, -0.623241, 0.455426,
		38.790710, 32.057102, 33.410511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473499, 31.667217, 32.861191>,  <39.235725, 32.493370, 33.091713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.473499, 31.667217, 32.861191> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.094784, 31.661699, 32.989811>,  <38.867554, 31.658388, 33.066982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.094784, 31.661699, 32.989811>,  <39.473499, 31.667217, 32.861191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.094784, 31.661699, 32.989811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292712, -0.378483, -0.878106,
		0.133816, -0.925505, 0.354307,
		-0.946791, -0.013794, 0.321554,
		38.810745, 31.657560, 33.086277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260422, 31.001047, 32.763336>,  <39.473499, 31.667217, 32.861191>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.260422, 31.001047, 32.763336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.933613, 31.231243, 32.777691>,  <38.737526, 31.369360, 32.786304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.933613, 31.231243, 32.777691>,  <39.260422, 31.001047, 32.763336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.933613, 31.231243, 32.777691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368473, -0.473226, -0.800177,
		-0.443505, -0.666989, 0.598688,
		-0.817025, 0.575484, 0.035889,
		38.688507, 31.403891, 32.788456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672688, 30.559557, 32.780785>,  <39.260422, 31.001047, 32.763336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.672688, 30.559557, 32.780785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.531212, 30.904745, 32.636459>,  <38.446327, 31.111858, 32.549862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.531212, 30.904745, 32.636459>,  <38.672688, 30.559557, 32.780785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.531212, 30.904745, 32.636459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611294, -0.505230, -0.609149,
		-0.707973, 0.005118, 0.706221,
		-0.353686, 0.862970, -0.360818,
		38.425106, 31.163635, 32.528214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941715, 30.541273, 32.777416>,  <38.672688, 30.559557, 32.780785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.941715, 30.541273, 32.777416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.006992, 30.831512, 32.510021>,  <38.046158, 31.005657, 32.349586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.006992, 30.831512, 32.510021>,  <37.941715, 30.541273, 32.777416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006992, 30.831512, 32.510021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591464, -0.470356, -0.654932,
		-0.789644, 0.502266, 0.352407,
		0.163193, 0.725600, -0.668486,
		38.055950, 31.049192, 32.309475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303452, 30.616753, 32.367142>,  <37.941715, 30.541273, 32.777416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303452, 30.616753, 32.367142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.569111, 30.802835, 32.133053>,  <37.728508, 30.914486, 31.992599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.569111, 30.802835, 32.133053>,  <37.303452, 30.616753, 32.367142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569111, 30.802835, 32.133053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466127, -0.354329, -0.810664,
		-0.584489, 0.811191, -0.018482,
		0.664152, 0.465209, -0.585220,
		37.768356, 30.942398, 31.957487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892593, 30.920584, 31.919672>,  <37.303452, 30.616753, 32.367142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.892593, 30.920584, 31.919672> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.240551, 30.964321, 31.727287>,  <37.449326, 30.990564, 31.611856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.240551, 30.964321, 31.727287>,  <36.892593, 30.920584, 31.919672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.240551, 30.964321, 31.727287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447516, -0.235033, -0.862837,
		-0.207390, 0.965817, -0.155520,
		0.869896, 0.109346, -0.480963,
		37.501518, 30.997126, 31.582998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879093, 31.547016, 31.487995>,  <36.892593, 30.920584, 31.919672>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.879093, 31.547016, 31.487995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.139450, 31.295395, 31.317989>,  <37.295662, 31.144423, 31.215986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.139450, 31.295395, 31.317989>,  <36.879093, 31.547016, 31.487995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139450, 31.295395, 31.317989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587138, -0.062213, -0.807092,
		0.481263, 0.774869, -0.409835,
		0.650888, -0.629053, -0.425015,
		37.334717, 31.106678, 31.190485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892559, 31.738869, 30.782631>,  <36.879093, 31.547016, 31.487995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.892559, 31.738869, 30.782631> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.043488, 31.368708, 30.768419>,  <37.134045, 31.146610, 30.759892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.043488, 31.368708, 30.768419>,  <36.892559, 31.738869, 30.782631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043488, 31.368708, 30.768419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570045, -0.201848, -0.796433,
		0.729849, 0.320763, -0.603682,
		0.377318, -0.925402, -0.035531,
		37.156685, 31.091087, 30.757761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.837746, 31.534960, 30.062517>,  <36.892559, 31.738869, 30.782631>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.837746, 31.534960, 30.062517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.892502, 31.198322, 30.271507>,  <36.925354, 30.996340, 30.396902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.892502, 31.198322, 30.271507>,  <36.837746, 31.534960, 30.062517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.892502, 31.198322, 30.271507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638644, -0.478169, -0.602900,
		0.757229, -0.251146, -0.602935,
		0.136889, -0.841594, 0.522476,
		36.933567, 30.945845, 30.428249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815929, 31.074333, 29.535179>,  <36.837746, 31.534960, 30.062517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.815929, 31.074333, 29.535179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.749920, 30.836744, 29.850130>,  <36.710312, 30.694191, 30.039101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.749920, 30.836744, 29.850130>,  <36.815929, 31.074333, 29.535179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749920, 30.836744, 29.850130> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782455, -0.407166, -0.471148,
		0.600442, -0.693840, -0.397562,
		-0.165027, -0.593971, 0.787378,
		36.700413, 30.658552, 30.086344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.609554, 30.396780, 29.231606>,  <36.815929, 31.074333, 29.535179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.609554, 30.396780, 29.231606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.475605, 30.386698, 29.608376>,  <36.395237, 30.380648, 29.834438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.475605, 30.386698, 29.608376>,  <36.609554, 30.396780, 29.231606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475605, 30.386698, 29.608376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806104, -0.509958, -0.300231,
		0.487911, -0.859830, 0.150452,
		-0.334872, -0.025206, 0.941926,
		36.375145, 30.379135, 29.890953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.639751, 29.702435, 29.500408>,  <36.609554, 30.396780, 29.231606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.639751, 29.702435, 29.500408> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.367851, 29.926497, 29.689795>,  <36.204712, 30.060934, 29.803427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.367851, 29.926497, 29.689795>,  <36.639751, 29.702435, 29.500408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.367851, 29.926497, 29.689795> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730391, -0.575817, -0.367374,
		0.066843, -0.595537, 0.800542,
		-0.679750, 0.560153, 0.473464,
		36.163925, 30.094542, 29.831833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137600, 29.195051, 29.813196>,  <36.639751, 29.702435, 29.500408>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.137600, 29.195051, 29.813196> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.958397, 29.552204, 29.795073>,  <35.850876, 29.766497, 29.784199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.958397, 29.552204, 29.795073>,  <36.137600, 29.195051, 29.813196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.958397, 29.552204, 29.795073> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784848, -0.417054, -0.458345,
		-0.428153, -0.169762, 0.887618,
		-0.447995, 0.892887, -0.045326,
		35.823997, 29.820068, 29.781481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500988, 29.006365, 29.735353>,  <36.137600, 29.195051, 29.813196>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500988, 29.006365, 29.735353> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.449959, 29.400322, 29.688517>,  <35.419342, 29.636696, 29.660416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.449959, 29.400322, 29.688517>,  <35.500988, 29.006365, 29.735353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449959, 29.400322, 29.688517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811373, -0.171532, -0.558794,
		-0.570437, 0.023715, 0.820999,
		-0.127575, 0.984894, -0.117090,
		35.411686, 29.695789, 29.653389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.627678, 29.169436, 29.760784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.801525, 29.487392, 29.591433>,  <34.905834, 29.678167, 29.489822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.801525, 29.487392, 29.591433>,  <34.627678, 29.169436, 29.760784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801525, 29.487392, 29.591433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692241, -0.005872, -0.721642,
		-0.576115, 0.606720, 0.547706,
		0.434619, 0.794894, -0.423380,
		34.931911, 29.725861, 29.464418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.128052, 29.710443, 29.745228>,  <34.627678, 29.169436, 29.760784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.128052, 29.710443, 29.745228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.395119, 29.806288, 29.463287>,  <34.555359, 29.863794, 29.294123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.395119, 29.806288, 29.463287>,  <34.128052, 29.710443, 29.745228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.395119, 29.806288, 29.463287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742936, 0.153833, -0.651445,
		-0.047664, 0.958604, 0.280724,
		0.667663, 0.239611, -0.704850,
		34.595417, 29.878170, 29.251833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.902641, 30.328445, 29.411160>,  <34.128052, 29.710443, 29.745228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.902641, 30.328445, 29.411160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.143597, 30.148710, 29.147272>,  <34.288170, 30.040869, 28.988939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.143597, 30.148710, 29.147272>,  <33.902641, 30.328445, 29.411160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.143597, 30.148710, 29.147272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674494, 0.155426, -0.721735,
		0.426839, 0.879738, -0.209449,
		0.602384, -0.449336, -0.659720,
		34.324310, 30.013908, 28.949356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977299, 30.840460, 28.764696>,  <33.902641, 30.328445, 29.411160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977299, 30.840460, 28.764696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.083355, 30.473150, 28.647074>,  <34.146988, 30.252764, 28.576500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.083355, 30.473150, 28.647074>,  <33.977299, 30.840460, 28.764696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083355, 30.473150, 28.647074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524397, 0.118594, -0.843174,
		0.809140, 0.377763, -0.450097,
		0.265141, -0.918276, -0.294057,
		34.162899, 30.197668, 28.558857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.991734, 30.896152, 28.035215>,  <33.977299, 30.840460, 28.764696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.991734, 30.896152, 28.035215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.975185, 30.502167, 28.102304>,  <33.965256, 30.265776, 28.142557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.975185, 30.502167, 28.102304>,  <33.991734, 30.896152, 28.035215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975185, 30.502167, 28.102304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563635, -0.115599, -0.817895,
		0.824987, -0.128370, -0.550379,
		-0.041370, -0.984966, 0.167722,
		33.962776, 30.206676, 28.152620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093971, 30.603390, 27.405369>,  <33.991734, 30.896152, 28.035215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093971, 30.603390, 27.405369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.931870, 30.296053, 27.603527>,  <33.834606, 30.111650, 27.722422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.931870, 30.296053, 27.603527>,  <34.093971, 30.603390, 27.405369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931870, 30.296053, 27.603527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619524, -0.167675, -0.766861,
		0.672277, -0.617684, -0.408055,
		-0.405257, -0.768343, 0.495394,
		33.810291, 30.065550, 27.752146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.939465, 30.002584, 26.856567>,  <34.093971, 30.603390, 27.405369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.939465, 30.002584, 26.856567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.711750, 29.957773, 27.182356>,  <33.575123, 29.930887, 27.377829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.711750, 29.957773, 27.182356>,  <33.939465, 30.002584, 26.856567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711750, 29.957773, 27.182356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753850, -0.324177, -0.571506,
		0.328056, -0.939340, 0.100098,
		-0.569288, -0.112027, 0.814470,
		33.540962, 29.924166, 27.426697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721867, 29.291105, 26.766830>,  <33.939465, 30.002584, 26.856567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721867, 29.291105, 26.766830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.460194, 29.480131, 27.003044>,  <33.303192, 29.593546, 27.144773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.460194, 29.480131, 27.003044>,  <33.721867, 29.291105, 26.766830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.460194, 29.480131, 27.003044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750904, -0.312370, -0.581866,
		-0.090502, -0.824081, 0.559195,
		-0.654181, 0.472562, 0.590536,
		33.263939, 29.621901, 27.180204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267765, 28.830421, 26.951923>,  <33.721867, 29.291105, 26.766830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267765, 28.830421, 26.951923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.089989, 29.185083, 27.003017>,  <32.983322, 29.397881, 27.033674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.089989, 29.185083, 27.003017>,  <33.267765, 28.830421, 26.951923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.089989, 29.185083, 27.003017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729784, -0.275676, -0.625634,
		-0.519508, -0.371275, 0.769588,
		-0.444439, 0.886656, 0.127735,
		32.956657, 29.451080, 27.041338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.553383, 28.674582, 27.020458>,  <33.267765, 28.830421, 26.951923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.553383, 28.674582, 27.020458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.552570, 29.064259, 26.930178>,  <32.552082, 29.298065, 26.876009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.552570, 29.064259, 26.930178>,  <32.553383, 28.674582, 27.020458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.552570, 29.064259, 26.930178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890766, -0.104334, -0.442324,
		-0.454458, 0.200151, 0.867991,
		-0.002029, 0.974194, -0.225703,
		32.551960, 29.356516, 26.862467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.889229, 28.716631, 26.975237>,  <32.553383, 28.674582, 27.020458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.889229, 28.716631, 26.975237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.025497, 29.035234, 26.775433>,  <32.107258, 29.226397, 26.655550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.025497, 29.035234, 26.775433>,  <31.889229, 28.716631, 26.975237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.025497, 29.035234, 26.775433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747681, -0.092592, -0.657571,
		-0.570013, 0.597493, 0.563992,
		0.340673, 0.796510, -0.499513,
		32.127701, 29.274187, 26.625578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.276360, 29.073582, 26.751463>,  <31.889229, 28.716631, 26.975237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.276360, 29.073582, 26.751463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.553759, 29.249432, 26.523151>,  <31.720198, 29.354942, 26.386164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.553759, 29.249432, 26.523151>,  <31.276360, 29.073582, 26.751463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.553759, 29.249432, 26.523151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656018, 0.057825, -0.752527,
		-0.297825, 0.896317, 0.328504,
		0.693499, 0.439626, -0.570779,
		31.761808, 29.381319, 26.351917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.975094, 29.711622, 26.436865>,  <31.276360, 29.073582, 26.751463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.975094, 29.711622, 26.436865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.288242, 29.648018, 26.196257>,  <31.476131, 29.609856, 26.051891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.288242, 29.648018, 26.196257>,  <30.975094, 29.711622, 26.436865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.288242, 29.648018, 26.196257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568820, 0.208820, -0.795511,
		0.252104, 0.964940, 0.073031,
		0.782871, -0.159010, -0.601522,
		31.523104, 29.600315, 26.015800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.006374, 30.267485, 25.970846>,  <30.975094, 29.711622, 26.436865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.006374, 30.267485, 25.970846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.206396, 29.968414, 25.796066>,  <31.326408, 29.788973, 25.691198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.206396, 29.968414, 25.796066>,  <31.006374, 30.267485, 25.970846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.206396, 29.968414, 25.796066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434563, 0.219791, -0.873411,
		0.749066, 0.626637, -0.215005,
		0.500055, -0.747676, -0.436951,
		31.356413, 29.744112, 25.664982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.171711, 30.573860, 25.410938>,  <31.006374, 30.267485, 25.970846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.171711, 30.573860, 25.410938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.217119, 30.184721, 25.330265>,  <31.244364, 29.951237, 25.281860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.217119, 30.184721, 25.330265>,  <31.171711, 30.573860, 25.410938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.217119, 30.184721, 25.330265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408026, 0.139436, -0.902260,
		0.905885, 0.184717, -0.381119,
		0.113521, -0.972850, -0.201682,
		31.251175, 29.892866, 25.269760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.432795, 30.434568, 24.687004>,  <31.171711, 30.573860, 25.410938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.432795, 30.434568, 24.687004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.256613, 30.086180, 24.774099>,  <31.150904, 29.877148, 24.826357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.256613, 30.086180, 24.774099>,  <31.432795, 30.434568, 24.687004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.256613, 30.086180, 24.774099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658314, 0.148425, -0.737966,
		0.610428, -0.468382, -0.638746,
		-0.440455, -0.870970, 0.217740,
		31.124475, 29.824888, 24.839422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.335114, 30.123686, 24.067190>,  <31.432795, 30.434568, 24.687004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.335114, 30.123686, 24.067190> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.077452, 29.928118, 24.302485>,  <30.922855, 29.810778, 24.443661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.077452, 29.928118, 24.302485>,  <31.335114, 30.123686, 24.067190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.077452, 29.928118, 24.302485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704179, 0.078782, -0.705638,
		0.298657, -0.868765, -0.395034,
		-0.644155, -0.488919, 0.588237,
		30.884205, 29.781443, 24.478956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.031254, 29.686861, 23.535847>,  <31.335114, 30.123686, 24.067190>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.031254, 29.686861, 23.535847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.783442, 29.673487, 23.849550>,  <30.634754, 29.665462, 24.037773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.783442, 29.673487, 23.849550>,  <31.031254, 29.686861, 23.535847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.783442, 29.673487, 23.849550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772598, 0.202678, -0.601676,
		-0.138836, -0.978675, -0.151396,
		-0.619530, -0.033434, 0.784261,
		30.597582, 29.663456, 24.084829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.451042, 29.256430, 23.422037>,  <31.031254, 29.686861, 23.535847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.451042, 29.256430, 23.422037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.308372, 29.508347, 23.698050>,  <30.222771, 29.659496, 23.863657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.308372, 29.508347, 23.698050>,  <30.451042, 29.256430, 23.422037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.308372, 29.508347, 23.698050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792529, 0.187101, -0.580423,
		-0.494652, -0.753893, 0.432395,
		-0.356675, 0.629793, 0.690032,
		30.201370, 29.697285, 23.905060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.763937, 29.070366, 23.455336>,  <30.451042, 29.256430, 23.422037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.763937, 29.070366, 23.455336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.819437, 29.436295, 23.607046>,  <29.852737, 29.655851, 23.698072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.819437, 29.436295, 23.607046>,  <29.763937, 29.070366, 23.455336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.819437, 29.436295, 23.607046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654453, 0.372137, -0.658184,
		-0.743264, -0.156897, 0.650340,
		0.138748, 0.914821, 0.379277,
		29.861061, 29.710741, 23.720829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.138531, 29.244600, 23.438143>,  <29.763937, 29.070366, 23.455336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.138531, 29.244600, 23.438143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.305075, 29.602657, 23.501846>,  <29.405001, 29.817492, 23.540068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.305075, 29.602657, 23.501846>,  <29.138531, 29.244600, 23.438143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.305075, 29.602657, 23.501846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754781, 0.437961, -0.488360,
		-0.506901, 0.083129, 0.857987,
		0.416362, 0.895142, 0.159259,
		29.429983, 29.871201, 23.549623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.564955, 29.716187, 23.742954>,  <29.138531, 29.244600, 23.438143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.564955, 29.716187, 23.742954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.855228, 29.917173, 23.554951>,  <29.029392, 30.037766, 23.442148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.855228, 29.917173, 23.554951>,  <28.564955, 29.716187, 23.742954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.855228, 29.917173, 23.554951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685502, 0.469529, -0.556442,
		-0.058911, 0.725994, 0.685173,
		0.725683, 0.502468, -0.470010,
		29.072933, 30.067913, 23.413948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.864243, 29.728933, 23.919731>,  <28.564955, 29.716187, 23.742954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.864243, 29.728933, 23.919731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.835131, 29.529703, 24.265360>,  <27.817663, 29.410164, 24.472738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.835131, 29.529703, 24.265360>,  <27.864243, 29.728933, 23.919731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.835131, 29.529703, 24.265360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540357, 0.708503, 0.453913,
		-0.838283, 0.499943, 0.217576,
		-0.072778, -0.498076, 0.864074,
		27.813297, 29.380280, 24.524582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.321974, 29.500427, 23.606518>,  <27.864243, 29.728933, 23.919731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.321974, 29.500427, 23.606518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.507107, 29.537777, 23.253912>,  <27.618187, 29.560186, 23.042349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.507107, 29.537777, 23.253912>,  <27.321974, 29.500427, 23.606518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.507107, 29.537777, 23.253912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704998, 0.641607, -0.302190,
		0.537369, 0.761329, 0.362785,
		0.462831, 0.093375, -0.881515,
		27.645956, 29.565790, 22.989458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.915468, 29.513786, 24.170025>,  <27.321974, 29.500427, 23.606518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.915468, 29.513786, 24.170025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.698732, 29.707275, 24.444956>,  <26.568691, 29.823368, 24.609915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.698732, 29.707275, 24.444956>,  <26.915468, 29.513786, 24.170025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.698732, 29.707275, 24.444956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823834, 0.143719, 0.548308,
		0.166446, 0.863342, -0.476379,
		-0.541842, 0.483721, 0.687329,
		26.536180, 29.852392, 24.651155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.201263, 30.142168, 24.244865>,  <26.915468, 29.513786, 24.170025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.201263, 30.142168, 24.244865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.023607, 30.012522, 24.578976>,  <26.917013, 29.934734, 24.779442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.023607, 30.012522, 24.578976>,  <27.201263, 30.142168, 24.244865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.023607, 30.012522, 24.578976> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852517, 0.133884, 0.505262,
		-0.275594, 0.936495, 0.216853,
		-0.444142, -0.324118, 0.835276,
		26.890366, 29.915287, 24.829559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.444139, 30.593483, 24.667019>,  <27.201263, 30.142168, 24.244865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.444139, 30.593483, 24.667019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.296457, 30.293095, 24.886009>,  <27.207848, 30.112862, 25.017403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.296457, 30.293095, 24.886009>,  <27.444139, 30.593483, 24.667019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.296457, 30.293095, 24.886009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704842, 0.157676, 0.691619,
		-0.605710, 0.641233, 0.471101,
		-0.369207, -0.750972, 0.547474,
		27.185696, 30.067802, 25.050251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.405426, 30.815638, 25.275951>,  <27.444139, 30.593483, 24.667019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.405426, 30.815638, 25.275951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.398464, 30.428133, 25.374903>,  <27.394287, 30.195631, 25.434275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.398464, 30.428133, 25.374903>,  <27.405426, 30.815638, 25.275951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.398464, 30.428133, 25.374903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558359, 0.195827, 0.806155,
		-0.829417, 0.152157, 0.537509,
		-0.017404, -0.968762, 0.247381,
		27.393244, 30.137505, 25.449118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.161339, 30.791462, 25.983044>,  <27.405426, 30.815638, 25.275951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.161339, 30.791462, 25.983044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.392805, 30.479174, 25.888710>,  <27.531685, 30.291800, 25.832109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.392805, 30.479174, 25.888710>,  <27.161339, 30.791462, 25.983044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.392805, 30.479174, 25.888710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547964, 0.158010, 0.821443,
		-0.604055, -0.604570, 0.519242,
		0.578666, -0.780722, -0.235836,
		27.566404, 30.244957, 25.817959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.325798, 30.556749, 26.681585>,  <27.161339, 30.791462, 25.983044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.325798, 30.556749, 26.681585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.587610, 30.350628, 26.460297>,  <27.744698, 30.226955, 26.327524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.587610, 30.350628, 26.460297>,  <27.325798, 30.556749, 26.681585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.587610, 30.350628, 26.460297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662710, 0.038869, 0.747866,
		-0.363876, -0.856125, 0.366938,
		0.654530, -0.515304, -0.553220,
		27.783970, 30.196037, 26.294331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.772448, 30.237419, 27.139326>,  <27.325798, 30.556749, 26.681585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.772448, 30.237419, 27.139326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.963669, 30.198378, 26.790171>,  <28.078402, 30.174953, 26.580677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.963669, 30.198378, 26.790171>,  <27.772448, 30.237419, 27.139326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.963669, 30.198378, 26.790171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877156, 0.001684, 0.480203,
		-0.045400, -0.995224, 0.086419,
		0.478055, -0.097604, -0.872890,
		28.107086, 30.169096, 26.528303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.236263, 29.741257, 27.202877>,  <27.772448, 30.237419, 27.139326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.236263, 29.741257, 27.202877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.393583, 29.950598, 26.900509>,  <28.487976, 30.076202, 26.719088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.393583, 29.950598, 26.900509>,  <28.236263, 29.741257, 27.202877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.393583, 29.950598, 26.900509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891671, -0.016692, 0.452377,
		0.224135, -0.851952, -0.473224,
		0.393302, 0.523353, -0.755920,
		28.511574, 30.107603, 26.673733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.948717, 29.458055, 27.090803>,  <28.236263, 29.741257, 27.202877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.948717, 29.458055, 27.090803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.947290, 29.818911, 26.918230>,  <28.946434, 30.035423, 26.814686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.947290, 29.818911, 26.918230>,  <28.948717, 29.458055, 27.090803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.947290, 29.818911, 26.918230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894534, 0.195725, 0.401871,
		0.446985, -0.384499, -0.807691,
		-0.003567, 0.902138, -0.431433,
		28.946220, 30.089552, 26.788799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.593443, 29.585279, 26.729794>,  <28.948717, 29.458055, 27.090803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.593443, 29.585279, 26.729794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.460602, 29.957062, 26.794073>,  <29.380898, 30.180130, 26.832640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.460602, 29.957062, 26.794073>,  <29.593443, 29.585279, 26.729794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.460602, 29.957062, 26.794073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888516, 0.251074, 0.384059,
		0.316618, 0.270330, -0.909217,
		-0.332103, 0.929453, 0.160698,
		29.360971, 30.235897, 26.842283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.152817, 30.129053, 26.441200>,  <29.593443, 29.585279, 26.729794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.152817, 30.129053, 26.441200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.945833, 30.337469, 26.712717>,  <29.821644, 30.462519, 26.875628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.945833, 30.337469, 26.712717>,  <30.152817, 30.129053, 26.441200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.945833, 30.337469, 26.712717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852091, 0.386618, 0.352800,
		-0.078610, 0.760950, -0.644031,
		-0.517457, 0.521039, 0.678790,
		29.790596, 30.493780, 26.916353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.598907, 30.751333, 26.593374>,  <30.152817, 30.129053, 26.441200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.598907, 30.751333, 26.593374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.336250, 30.713266, 26.892645>,  <30.178656, 30.690426, 27.072206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.336250, 30.713266, 26.892645>,  <30.598907, 30.751333, 26.593374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.336250, 30.713266, 26.892645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704734, 0.275935, 0.653613,
		-0.268649, 0.956454, -0.114124,
		-0.656641, -0.095165, 0.748175,
		30.139257, 30.684717, 27.117098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.660925, 31.319233, 26.946445>,  <30.598907, 30.751333, 26.593374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.660925, 31.319233, 26.946445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.496811, 31.068647, 27.211536>,  <30.398342, 30.918295, 27.370590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.496811, 31.068647, 27.211536>,  <30.660925, 31.319233, 26.946445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.496811, 31.068647, 27.211536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768605, 0.153583, 0.621015,
		-0.490827, 0.764169, 0.418491,
		-0.410287, -0.626465, 0.662726,
		30.373724, 30.880709, 27.410355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.805067, 31.545837, 27.669313>,  <30.660925, 31.319233, 26.946445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.805067, 31.545837, 27.669313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.670502, 31.181261, 27.764055>,  <30.589762, 30.962515, 27.820900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.670502, 31.181261, 27.764055>,  <30.805067, 31.545837, 27.669313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.670502, 31.181261, 27.764055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701391, -0.074676, 0.708854,
		-0.628392, 0.404596, 0.664399,
		-0.336414, -0.911442, 0.236854,
		30.569578, 30.907829, 27.835112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.561432, 31.486425, 28.334106>,  <30.805067, 31.545837, 27.669313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.561432, 31.486425, 28.334106> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.637911, 31.102438, 28.252224>,  <30.683798, 30.872046, 28.203094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.637911, 31.102438, 28.252224>,  <30.561432, 31.486425, 28.334106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.637911, 31.102438, 28.252224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636116, -0.037644, 0.770675,
		-0.747530, -0.277566, 0.603454,
		0.191197, -0.959969, -0.204704,
		30.695271, 30.814447, 28.190813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.437939, 31.013874, 29.008852>,  <30.561432, 31.486425, 28.334106>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.437939, 31.013874, 29.008852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.708078, 30.868269, 28.752291>,  <30.870161, 30.780907, 28.598354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.708078, 30.868269, 28.752291>,  <30.437939, 31.013874, 29.008852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.708078, 30.868269, 28.752291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623220, -0.183344, 0.760251,
		-0.394338, -0.913171, 0.103039,
		0.675348, -0.364012, -0.641406,
		30.910683, 30.759066, 28.559870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.640320, 30.464830, 29.304920>,  <30.437939, 31.013874, 29.008852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.640320, 30.464830, 29.304920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.924547, 30.530321, 29.031195>,  <31.095083, 30.569616, 28.866961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.924547, 30.530321, 29.031195>,  <30.640320, 30.464830, 29.304920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.924547, 30.530321, 29.031195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703375, -0.191253, 0.684606,
		-0.018788, -0.967789, -0.251060,
		0.710570, 0.163727, -0.684312,
		31.137718, 30.579439, 28.825901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.221884, 29.886538, 29.346642>,  <30.640320, 30.464830, 29.304920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.221884, 29.886538, 29.346642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.400991, 30.212646, 29.199762>,  <31.508457, 30.408312, 29.111635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.400991, 30.212646, 29.199762>,  <31.221884, 29.886538, 29.346642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.400991, 30.212646, 29.199762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708733, -0.073227, 0.701666,
		0.545159, -0.574430, -0.610599,
		0.447771, 0.815271, -0.367197,
		31.535322, 30.457228, 29.089603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.941862, 29.785391, 29.301846>,  <31.221884, 29.886538, 29.346642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.941862, 29.785391, 29.301846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.928543, 30.185104, 29.309065>,  <31.920551, 30.424932, 29.313396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.928543, 30.185104, 29.309065>,  <31.941862, 29.785391, 29.301846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.928543, 30.185104, 29.309065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719183, 0.011415, 0.694727,
		0.694022, 0.036113, -0.719047,
		-0.033296, 0.999283, 0.018050,
		31.918554, 30.484890, 29.314480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.503586, 29.909296, 29.644882>,  <31.941862, 29.785391, 29.301846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.503586, 29.909296, 29.644882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.353081, 30.279900, 29.643906>,  <32.262779, 30.502262, 29.643320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.353081, 30.279900, 29.643906>,  <32.503586, 29.909296, 29.644882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353081, 30.279900, 29.643906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658942, 0.269451, 0.702276,
		0.651325, 0.262628, -0.711901,
		-0.376259, 0.926511, -0.002443,
		32.240204, 30.557854, 29.643173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.771156, 29.930935, 30.716703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.578918, 30.279463, 30.756350>,  <37.463573, 30.488581, 30.780136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.578918, 30.279463, 30.756350>,  <37.771156, 29.930935, 30.716703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.578918, 30.279463, 30.756350> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641556, 0.272293, 0.717121,
		0.597855, 0.408235, -0.689865,
		-0.480599, 0.871321, 0.099114,
		37.434738, 30.540859, 30.786083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.351025, 30.401848, 30.806042>,  <37.771156, 29.930935, 30.716703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.351025, 30.401848, 30.806042> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.022522, 30.590767, 30.934088>,  <37.825420, 30.704119, 31.010916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.022522, 30.590767, 30.934088>,  <38.351025, 30.401848, 30.806042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.022522, 30.590767, 30.934088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527140, 0.413404, 0.742442,
		0.218318, 0.778480, -0.588478,
		-0.821256, 0.472299, 0.320114,
		37.776146, 30.732456, 31.030123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655743, 31.009697, 30.968081>,  <38.351025, 30.401848, 30.806042>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655743, 31.009697, 30.968081> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.296570, 30.997738, 31.143724>,  <38.081066, 30.990562, 31.249111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.296570, 30.997738, 31.143724>,  <38.655743, 31.009697, 30.968081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296570, 30.997738, 31.143724> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367197, 0.499158, 0.784862,
		-0.242650, 0.865995, -0.437234,
		-0.897935, -0.029896, 0.439111,
		38.027191, 30.988770, 31.275457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564983, 31.652466, 31.308884>,  <38.655743, 31.009697, 30.968081>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.564983, 31.652466, 31.308884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.298321, 31.435833, 31.513731>,  <38.138325, 31.305853, 31.636639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.298321, 31.435833, 31.513731>,  <38.564983, 31.652466, 31.308884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.298321, 31.435833, 31.513731> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201687, 0.530367, 0.823428,
		-0.717563, 0.652228, -0.244340,
		-0.666652, -0.541581, 0.512118,
		38.098324, 31.273359, 31.667366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122475, 32.111195, 31.621220>,  <38.564983, 31.652466, 31.308884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.122475, 32.111195, 31.621220> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.126049, 31.775570, 31.838802>,  <38.128193, 31.574194, 31.969353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.126049, 31.775570, 31.838802>,  <38.122475, 32.111195, 31.621220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126049, 31.775570, 31.838802> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230938, 0.531005, 0.815292,
		-0.972927, 0.118338, 0.198516,
		0.008933, -0.839065, 0.543958,
		38.128731, 31.523849, 32.001991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894756, 32.303719, 32.238827>,  <38.122475, 32.111195, 31.621220>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894756, 32.303719, 32.238827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.051098, 31.947437, 32.331676>,  <38.144901, 31.733669, 32.387386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.051098, 31.947437, 32.331676>,  <37.894756, 32.303719, 32.238827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.051098, 31.947437, 32.331676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359699, 0.379932, 0.852214,
		-0.847260, -0.249598, 0.468884,
		0.390855, -0.890703, 0.232121,
		38.168354, 31.680225, 32.401314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626476, 32.149570, 32.865639>,  <37.894756, 32.303719, 32.238827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.626476, 32.149570, 32.865639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.943882, 31.906876, 32.846863>,  <38.134323, 31.761257, 32.835598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.943882, 31.906876, 32.846863>,  <37.626476, 32.149570, 32.865639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943882, 31.906876, 32.846863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284054, 0.301066, 0.910315,
		-0.538193, -0.735680, 0.411247,
		0.793512, -0.606741, -0.046942,
		38.181934, 31.724854, 32.832779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616257, 31.753328, 33.513203>,  <37.626476, 32.149570, 32.865639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616257, 31.753328, 33.513203> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.987255, 31.704422, 33.371895>,  <38.209854, 31.675077, 33.287109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.987255, 31.704422, 33.371895>,  <37.616257, 31.753328, 33.513203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987255, 31.704422, 33.371895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373677, 0.276441, 0.885407,
		-0.010599, -0.953222, 0.302087,
		0.927498, -0.122267, -0.353267,
		38.265503, 31.667742, 33.265915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032261, 31.207689, 34.024117>,  <37.616257, 31.753328, 33.513203>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.032261, 31.207689, 34.024117> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.295303, 31.441082, 33.833492>,  <38.453129, 31.581118, 33.719120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.295303, 31.441082, 33.833492>,  <38.032261, 31.207689, 34.024117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.295303, 31.441082, 33.833492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426370, 0.233269, 0.873953,
		0.621101, -0.777905, -0.095379,
		0.657604, 0.583480, -0.476559,
		38.492584, 31.616125, 33.690525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696754, 31.068127, 34.368473>,  <38.032261, 31.207689, 34.024117>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.696754, 31.068127, 34.368473> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.701130, 31.428295, 34.194523>,  <38.703754, 31.644398, 34.090153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.701130, 31.428295, 34.194523>,  <38.696754, 31.068127, 34.368473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701130, 31.428295, 34.194523> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223983, 0.421646, 0.878662,
		0.974532, -0.107014, -0.197068,
		0.010936, 0.900424, -0.434877,
		38.704411, 31.698421, 34.064060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.015739, 31.393419, 34.832211>,  <38.696754, 31.068127, 34.368473>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.015739, 31.393419, 34.832211> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.894497, 31.703396, 34.610367>,  <38.821751, 31.889381, 34.477261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.894497, 31.703396, 34.610367>,  <39.015739, 31.393419, 34.832211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.894497, 31.703396, 34.610367> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166354, 0.616078, 0.769919,
		0.938323, 0.141109, -0.315654,
		-0.303110, 0.774943, -0.554606,
		38.803562, 31.935879, 34.443985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595692, 31.961708, 34.741093>,  <39.015739, 31.393419, 34.832211>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.595692, 31.961708, 34.741093> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.241028, 32.143379, 34.706326>,  <39.028229, 32.252380, 34.685467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.241028, 32.143379, 34.706326>,  <39.595692, 31.961708, 34.741093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.241028, 32.143379, 34.706326> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271354, 0.663226, 0.697495,
		0.374429, 0.594858, -0.711300,
		-0.886662, 0.454176, -0.086914,
		38.975029, 32.279633, 34.680252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724121, 32.705101, 34.774067>,  <39.595692, 31.961708, 34.741093>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.724121, 32.705101, 34.774067> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.347057, 32.645645, 34.893604>,  <39.120819, 32.609974, 34.965324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.347057, 32.645645, 34.893604>,  <39.724121, 32.705101, 34.774067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.347057, 32.645645, 34.893604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143438, 0.628050, 0.764839,
		-0.301369, 0.763846, -0.570716,
		-0.942657, -0.148636, 0.298839,
		39.064259, 32.601055, 34.983257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.259155, 33.367455, 34.831245>,  <39.724121, 32.705101, 34.774067>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.259155, 33.367455, 34.831245> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.179535, 33.090836, 35.108994>,  <39.131763, 32.924866, 35.275642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.179535, 33.090836, 35.108994>,  <39.259155, 33.367455, 34.831245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.179535, 33.090836, 35.108994> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196708, 0.665931, 0.719613,
		-0.960043, 0.279830, 0.003474,
		-0.199055, -0.691543, 0.694367,
		39.119820, 32.883373, 35.317303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655422, 33.935715, 34.662296>,  <39.259155, 33.367455, 34.831245>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655422, 33.935715, 34.662296> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.617725, 34.333862, 34.669868>,  <39.595108, 34.572750, 34.674412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.617725, 34.333862, 34.669868>,  <39.655422, 33.935715, 34.662296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.617725, 34.333862, 34.669868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483208, -0.029106, -0.875022,
		-0.870418, -0.091616, 0.483713,
		-0.094245, 0.995369, 0.018935,
		39.589451, 34.632473, 34.675549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.855053, 34.165581, 34.612213>,  <39.655422, 33.935715, 34.662296>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.855053, 34.165581, 34.612213> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.062908, 34.485065, 34.490860>,  <39.187622, 34.676754, 34.418049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.062908, 34.485065, 34.490860>,  <38.855053, 34.165581, 34.612213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.062908, 34.485065, 34.490860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435848, -0.057602, -0.898175,
		-0.734854, 0.598956, 0.318182,
		0.519640, 0.798707, -0.303383,
		39.218800, 34.724678, 34.399845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348377, 34.525055, 34.209705>,  <38.855053, 34.165581, 34.612213>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348377, 34.525055, 34.209705> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.688858, 34.702839, 34.098053>,  <38.893147, 34.809509, 34.031063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.688858, 34.702839, 34.098053>,  <38.348377, 34.525055, 34.209705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.688858, 34.702839, 34.098053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339541, 0.060789, -0.938625,
		-0.400214, 0.893733, 0.202656,
		0.851200, 0.444461, -0.279130,
		38.944218, 34.836178, 34.014313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.092316, 35.025379, 33.780155>,  <38.348377, 34.525055, 34.209705>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.092316, 35.025379, 33.780155> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.480957, 35.015602, 33.686020>,  <38.714142, 35.009735, 33.629539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.480957, 35.015602, 33.686020>,  <38.092316, 35.025379, 33.780155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.480957, 35.015602, 33.686020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236007, -0.029311, -0.971309,
		0.016839, 0.999271, -0.034247,
		0.971606, -0.024438, -0.235341,
		38.772438, 35.008270, 33.615417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.150757, 35.612064, 33.391190>,  <38.092316, 35.025379, 33.780155>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.150757, 35.612064, 33.391190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.433151, 35.336922, 33.323738>,  <38.602589, 35.171837, 33.283268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.433151, 35.336922, 33.323738>,  <38.150757, 35.612064, 33.391190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.433151, 35.336922, 33.323738> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240885, -0.009307, -0.970509,
		0.666000, 0.725788, -0.172265,
		0.705987, -0.687855, -0.168633,
		38.644947, 35.130566, 33.273148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619984, 35.947414, 32.845222>,  <38.150757, 35.612064, 33.391190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.619984, 35.947414, 32.845222> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.663509, 35.550201, 32.827095>,  <38.689625, 35.311874, 32.816219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.663509, 35.550201, 32.827095>,  <38.619984, 35.947414, 32.845222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.663509, 35.550201, 32.827095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148311, 0.028865, -0.988519,
		0.982936, 0.114292, -0.144136,
		0.108819, -0.993028, -0.045323,
		38.696156, 35.252293, 32.813499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091282, 35.806824, 32.317741>,  <38.619984, 35.947414, 32.845222>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.091282, 35.806824, 32.317741> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.943527, 35.437195, 32.357029>,  <38.854874, 35.215416, 32.380600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.943527, 35.437195, 32.357029>,  <39.091282, 35.806824, 32.317741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.943527, 35.437195, 32.357029> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113438, -0.060064, -0.991728,
		0.922328, -0.377469, -0.082638,
		-0.369383, -0.924073, 0.098218,
		38.832714, 35.159973, 32.386494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.253963, 35.386276, 31.719896>,  <39.091282, 35.806824, 32.317741>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.253963, 35.386276, 31.719896> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.983555, 35.132366, 31.869591>,  <38.821308, 34.980022, 31.959408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.983555, 35.132366, 31.869591>,  <39.253963, 35.386276, 31.719896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.983555, 35.132366, 31.869591> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306697, -0.219408, -0.926173,
		0.670019, -0.740895, -0.046358,
		-0.676026, -0.634771, 0.374238,
		38.780746, 34.941936, 31.981863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161865, 34.855618, 31.242002>,  <39.253963, 35.386276, 31.719896>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161865, 34.855618, 31.242002> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.823006, 34.836357, 31.453672>,  <38.619690, 34.824802, 31.580675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.823006, 34.836357, 31.453672>,  <39.161865, 34.855618, 31.242002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.823006, 34.836357, 31.453672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514719, -0.172936, -0.839736,
		0.131946, -0.983755, 0.121719,
		-0.847145, -0.048149, 0.529176,
		38.568863, 34.821911, 31.612425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820614, 34.281143, 30.987036>,  <39.161865, 34.855618, 31.242002>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.820614, 34.281143, 30.987036> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.539040, 34.483166, 31.186794>,  <38.370094, 34.604378, 31.306648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.539040, 34.483166, 31.186794>,  <38.820614, 34.281143, 30.987036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.539040, 34.483166, 31.186794> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606113, -0.060611, -0.793065,
		-0.370275, -0.860955, 0.348788,
		-0.703934, 0.505057, 0.499394,
		38.327858, 34.634682, 31.336613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217907, 33.944080, 30.825546>,  <38.820614, 34.281143, 30.987036>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.217907, 33.944080, 30.825546> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.113762, 34.312431, 30.941614>,  <38.051277, 34.533443, 31.011255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.113762, 34.312431, 30.941614>,  <38.217907, 33.944080, 30.825546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113762, 34.312431, 30.941614> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536428, 0.111916, -0.836492,
		-0.802781, -0.373446, 0.464846,
		-0.260361, 0.920876, 0.290171,
		38.035652, 34.588696, 31.028666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.427982, 33.962177, 30.713940>,  <38.217907, 33.944080, 30.825546>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.427982, 33.962177, 30.713940> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.542351, 34.343971, 30.747877>,  <37.610973, 34.573048, 30.768240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.542351, 34.343971, 30.747877>,  <37.427982, 33.962177, 30.713940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542351, 34.343971, 30.747877> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596286, 0.246531, -0.763980,
		-0.750127, 0.167850, 0.639637,
		0.285924, 0.954489, 0.084843,
		37.628128, 34.630318, 30.773331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.848003, 34.225414, 30.775000>,  <37.427982, 33.962177, 30.713940>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.848003, 34.225414, 30.775000> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.099930, 34.512390, 30.655930>,  <37.251083, 34.684578, 30.584488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.099930, 34.512390, 30.655930>,  <36.848003, 34.225414, 30.775000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.099930, 34.512390, 30.655930> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661909, 0.295181, -0.689017,
		-0.406462, 0.630987, 0.660791,
		0.629813, 0.717443, -0.297676,
		37.288876, 34.727623, 30.566628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514366, 34.944859, 30.679417>,  <36.848003, 34.225414, 30.775000>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514366, 34.944859, 30.679417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.832474, 34.946548, 30.436922>,  <37.023338, 34.947563, 30.291426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.832474, 34.946548, 30.436922>,  <36.514366, 34.944859, 30.679417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.832474, 34.946548, 30.436922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593830, 0.206813, -0.777557,
		0.122095, 0.978371, 0.166980,
		0.795273, 0.004222, -0.606237,
		37.071056, 34.947815, 30.255051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438725, 35.718716, 30.974339>,  <36.514366, 34.944859, 30.679417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438725, 35.718716, 30.974339> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.126858, 35.895714, 31.151571>,  <35.939739, 36.001911, 31.257910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.126858, 35.895714, 31.151571>,  <36.438725, 35.718716, 30.974339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126858, 35.895714, 31.151571> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608722, 0.369589, 0.702041,
		0.146889, 0.817071, -0.557511,
		-0.779667, 0.442492, 0.443081,
		35.892956, 36.028461, 31.284496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765228, 36.319885, 31.192495>,  <36.438725, 35.718716, 30.974339>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765228, 36.319885, 31.192495> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.423767, 36.298916, 31.399775>,  <36.218891, 36.286335, 31.524141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.423767, 36.298916, 31.399775>,  <36.765228, 36.319885, 31.192495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.423767, 36.298916, 31.399775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417617, 0.525649, 0.741141,
		-0.311242, 0.849085, -0.426829,
		-0.853654, -0.052423, 0.518196,
		36.167671, 36.283188, 31.555233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677807, 36.925781, 31.451101>,  <36.765228, 36.319885, 31.192495>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677807, 36.925781, 31.451101> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.469326, 36.687107, 31.695175>,  <36.344238, 36.543903, 31.841619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.469326, 36.687107, 31.695175>,  <36.677807, 36.925781, 31.451101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469326, 36.687107, 31.695175> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240902, 0.583039, 0.775907,
		-0.818730, 0.551396, -0.160137,
		-0.521198, -0.596681, 0.610184,
		36.312965, 36.508102, 31.878231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.445885, 37.390404, 31.946238>,  <36.677807, 36.925781, 31.451101>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.445885, 37.390404, 31.946238> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.452938, 37.024734, 32.108212>,  <36.457172, 36.805332, 32.205395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.452938, 37.024734, 32.108212>,  <36.445885, 37.390404, 31.946238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.452938, 37.024734, 32.108212> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334471, 0.387058, 0.859253,
		-0.942241, 0.120283, 0.312592,
		0.017638, -0.914176, 0.404933,
		36.458229, 36.750481, 32.229691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201878, 37.518120, 32.604752>,  <36.445885, 37.390404, 31.946238>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.201878, 37.518120, 32.604752> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.347202, 37.146152, 32.627598>,  <36.434395, 36.922974, 32.641308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.347202, 37.146152, 32.627598>,  <36.201878, 37.518120, 32.604752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347202, 37.146152, 32.627598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107175, 0.102617, 0.988930,
		-0.925484, -0.353164, 0.136946,
		0.363308, -0.929917, 0.057120,
		36.456196, 36.867176, 32.644733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800949, 37.207108, 33.081646>,  <36.201878, 37.518120, 32.604752>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.800949, 37.207108, 33.081646> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.151253, 37.014523, 33.067562>,  <36.361435, 36.898972, 33.059113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.151253, 37.014523, 33.067562>,  <35.800949, 37.207108, 33.081646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151253, 37.014523, 33.067562> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080769, 0.074229, 0.993965,
		-0.475940, -0.873320, 0.103894,
		0.875761, -0.481459, -0.035209,
		36.413982, 36.870087, 33.056999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653255, 36.693970, 33.545967>,  <35.800949, 37.207108, 33.081646>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.653255, 36.693970, 33.545967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.048828, 36.744404, 33.514706>,  <36.286171, 36.774666, 33.495949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.048828, 36.744404, 33.514706>,  <35.653255, 36.693970, 33.545967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048828, 36.744404, 33.514706> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065294, 0.103060, 0.992530,
		0.133205, -0.986651, 0.093687,
		0.988935, 0.126093, -0.078151,
		36.345509, 36.782230, 33.491261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.998833, 36.265293, 34.031502>,  <35.653255, 36.693970, 33.545967>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.998833, 36.265293, 34.031502> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.265240, 36.557102, 33.969250>,  <36.425083, 36.732185, 33.931900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.265240, 36.557102, 33.969250>,  <35.998833, 36.265293, 34.031502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.265240, 36.557102, 33.969250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228592, -0.001017, 0.973522,
		0.710044, -0.683960, -0.167440,
		0.666020, 0.729519, -0.155626,
		36.465046, 36.775959, 33.922562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562614, 36.048866, 34.370571>,  <35.998833, 36.265293, 34.031502>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562614, 36.048866, 34.370571> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.605400, 36.444454, 34.329590>,  <36.631073, 36.681808, 34.305000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.605400, 36.444454, 34.329590>,  <36.562614, 36.048866, 34.370571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605400, 36.444454, 34.329590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282363, 0.068589, 0.956853,
		0.953326, -0.131279, -0.271911,
		0.106964, 0.988970, -0.102456,
		36.637489, 36.741146, 34.298851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.255577, 36.206112, 34.610420>,  <36.562614, 36.048866, 34.370571>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.255577, 36.206112, 34.610420> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.049175, 36.547325, 34.641598>,  <36.925335, 36.752052, 34.660305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.049175, 36.547325, 34.641598>,  <37.255577, 36.206112, 34.610420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.049175, 36.547325, 34.641598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209943, 0.037728, 0.976985,
		0.830459, 0.520493, -0.198556,
		-0.516005, 0.853032, 0.077943,
		36.894375, 36.803234, 34.664982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645256, 36.581493, 35.037701>,  <37.255577, 36.206112, 34.610420>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645256, 36.581493, 35.037701> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.278954, 36.740608, 35.060196>,  <37.059174, 36.836075, 35.073692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.278954, 36.740608, 35.060196>,  <37.645256, 36.581493, 35.037701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278954, 36.740608, 35.060196> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166302, 0.247921, 0.954400,
		0.365704, 0.883347, -0.293187,
		-0.915753, 0.397785, 0.056236,
		37.004227, 36.859943, 35.077068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511444, 37.368797, 35.244423>,  <37.645256, 36.581493, 35.037701>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.511444, 37.368797, 35.244423> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.266418, 37.076557, 35.365078>,  <37.119404, 36.901211, 35.437469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.266418, 37.076557, 35.365078>,  <37.511444, 37.368797, 35.244423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.266418, 37.076557, 35.365078> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340450, 0.100527, 0.934873,
		-0.713344, 0.675362, 0.187155,
		-0.612564, -0.730603, 0.301637,
		37.082649, 36.857376, 35.455570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<34.268620, 35.950523, 28.103525> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935974, 35.991642, 28.321829>,  <33.736385, 36.016312, 28.452810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935974, 35.991642, 28.321829>,  <34.268620, 35.950523, 28.103525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935974, 35.991642, 28.321829> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540024, 0.378997, 0.751489,
		-0.129592, 0.919671, -0.370690,
		-0.831613, 0.102795, 0.545760,
		33.686489, 36.022480, 28.485558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.350067, 36.662609, 28.431793>,  <34.268620, 35.950523, 28.103525>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.350067, 36.662609, 28.431793> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.083618, 36.467533, 28.657513>,  <33.923748, 36.350487, 28.792944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.083618, 36.467533, 28.657513>,  <34.350067, 36.662609, 28.431793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083618, 36.467533, 28.657513> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467927, 0.315905, 0.825378,
		-0.580794, 0.813856, 0.017771,
		-0.666125, -0.487690, 0.564301,
		33.883781, 36.321224, 28.826803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.135067, 37.122284, 29.041040>,  <34.350067, 36.662609, 28.431793>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.135067, 37.122284, 29.041040> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.044628, 36.751919, 29.162083>,  <33.990364, 36.529701, 29.234707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.044628, 36.751919, 29.162083>,  <34.135067, 37.122284, 29.041040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.044628, 36.751919, 29.162083> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411271, 0.190868, 0.891306,
		-0.883027, 0.325973, 0.337646,
		-0.226095, -0.925911, 0.302604,
		33.976799, 36.474144, 29.252865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.111889, 37.220310, 29.796240>,  <34.135067, 37.122284, 29.041040>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.111889, 37.220310, 29.796240> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.106331, 36.826424, 29.726789>,  <34.102997, 36.590092, 29.685120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.106331, 36.826424, 29.726789>,  <34.111889, 37.220310, 29.796240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.106331, 36.826424, 29.726789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518280, -0.155588, 0.840939,
		-0.855098, -0.078306, 0.512518,
		-0.013891, -0.984713, -0.173628,
		34.102165, 36.531010, 29.674702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972790, 36.852875, 30.372410>,  <34.111889, 37.220310, 29.796240>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972790, 36.852875, 30.372410> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164581, 36.562149, 30.175701>,  <34.279655, 36.387714, 30.057676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164581, 36.562149, 30.175701>,  <33.972790, 36.852875, 30.372410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.164581, 36.562149, 30.175701> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581515, -0.156536, 0.798334,
		-0.657223, -0.668755, 0.347599,
		0.479478, -0.726817, -0.491770,
		34.308426, 36.344105, 30.028170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910400, 36.272633, 30.824060>,  <33.972790, 36.852875, 30.372410>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910400, 36.272633, 30.824060> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230759, 36.251598, 30.585463>,  <34.422974, 36.238979, 30.442305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230759, 36.251598, 30.585463>,  <33.910400, 36.272633, 30.824060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.230759, 36.251598, 30.585463> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585916, -0.136771, 0.798747,
		-0.123583, -0.989206, -0.078730,
		0.800893, -0.052582, -0.596494,
		34.471027, 36.235821, 30.406515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.352627, 35.631779, 30.920834>,  <33.910400, 36.272633, 30.824060>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.352627, 35.631779, 30.920834> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613411, 35.878841, 30.744904>,  <34.769882, 36.027081, 30.639345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613411, 35.878841, 30.744904>,  <34.352627, 35.631779, 30.920834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.613411, 35.878841, 30.744904> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632743, -0.123539, 0.764444,
		0.417828, -0.776685, -0.471361,
		0.651963, 0.617656, -0.439824,
		34.808998, 36.064137, 30.612957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021278, 35.252438, 30.850849>,  <34.352627, 35.631779, 30.920834>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021278, 35.252438, 30.850849> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119621, 35.638367, 30.813593>,  <35.178627, 35.869923, 30.791239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119621, 35.638367, 30.813593>,  <35.021278, 35.252438, 30.850849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119621, 35.638367, 30.813593> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630465, -0.086184, 0.771418,
		0.736254, -0.248377, -0.629475,
		0.245853, 0.964822, -0.093139,
		35.193378, 35.927814, 30.785650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765675, 35.190281, 30.756866>,  <35.021278, 35.252438, 30.850849>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765675, 35.190281, 30.756866> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.655090, 35.544792, 30.905506>,  <35.588737, 35.757500, 30.994690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.655090, 35.544792, 30.905506>,  <35.765675, 35.190281, 30.756866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.655090, 35.544792, 30.905506> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678269, -0.093986, 0.728778,
		0.680823, 0.453524, -0.575149,
		-0.276463, 0.886275, 0.371599,
		35.572151, 35.810673, 31.016987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241947, 35.306423, 30.110695>,  <35.765675, 35.190281, 30.756866>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241947, 35.306423, 30.110695> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570705, 35.119648, 29.980181>,  <36.767960, 35.007584, 29.901873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570705, 35.119648, 29.980181>,  <36.241947, 35.306423, 30.110695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.570705, 35.119648, 29.980181> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299950, 0.132200, -0.944750,
		0.484272, 0.874354, -0.031403,
		0.821895, -0.466935, -0.326283,
		36.817272, 34.979568, 29.882296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.469566, 35.674583, 29.511662>,  <36.241947, 35.306423, 30.110695>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.469566, 35.674583, 29.511662> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655045, 35.323128, 29.466106>,  <36.766331, 35.112255, 29.438774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655045, 35.323128, 29.466106>,  <36.469566, 35.674583, 29.511662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655045, 35.323128, 29.466106> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221225, 0.009649, -0.975175,
		0.857929, 0.477382, -0.189903,
		0.463699, -0.878643, -0.113887,
		36.794155, 35.059536, 29.431940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739639, 35.799046, 28.834751>,  <36.469566, 35.674583, 29.511662>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739639, 35.799046, 28.834751> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716099, 35.409050, 28.920479>,  <36.701973, 35.175053, 28.971914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716099, 35.409050, 28.920479>,  <36.739639, 35.799046, 28.834751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716099, 35.409050, 28.920479> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245261, -0.193987, -0.949850,
		0.967669, -0.108466, -0.227710,
		-0.058854, -0.974989, 0.214318,
		36.698444, 35.116554, 28.984774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145508, 35.421841, 28.299070>,  <36.739639, 35.799046, 28.834751>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.145508, 35.421841, 28.299070> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891869, 35.158604, 28.461470>,  <36.739685, 35.000660, 28.558908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891869, 35.158604, 28.461470>,  <37.145508, 35.421841, 28.299070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891869, 35.158604, 28.461470> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555988, 0.023126, -0.830868,
		0.537399, -0.752582, -0.380556,
		-0.634097, -0.658092, 0.405999,
		36.701641, 34.961178, 28.583269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954643, 35.075645, 27.724564>,  <37.145508, 35.421841, 28.299070>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954643, 35.075645, 27.724564> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670013, 34.952511, 27.977196>,  <36.499237, 34.878628, 28.128775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670013, 34.952511, 27.977196>,  <36.954643, 35.075645, 27.724564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670013, 34.952511, 27.977196> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642084, -0.080084, -0.762440,
		0.285290, -0.948062, -0.140673,
		-0.711575, -0.307841, 0.631582,
		36.456539, 34.860157, 28.166670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745892, 34.352985, 27.435686>,  <36.954643, 35.075645, 27.724564>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745892, 34.352985, 27.435686> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454861, 34.538113, 27.638243>,  <36.280243, 34.649189, 27.759777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454861, 34.538113, 27.638243>,  <36.745892, 34.352985, 27.435686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454861, 34.538113, 27.638243> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638231, -0.185947, -0.747051,
		-0.251591, -0.866729, 0.430678,
		-0.727573, 0.462823, 0.506391,
		36.236588, 34.676960, 27.790161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.285355, 33.786251, 27.418655>,  <36.745892, 34.352985, 27.435686>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.285355, 33.786251, 27.418655> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077312, 34.121323, 27.485342>,  <35.952488, 34.322365, 27.525354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077312, 34.121323, 27.485342>,  <36.285355, 33.786251, 27.418655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077312, 34.121323, 27.485342> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718333, -0.323414, -0.615955,
		-0.462053, -0.440116, 0.769938,
		-0.520101, 0.837677, 0.166715,
		35.921284, 34.372623, 27.535357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617577, 33.662468, 27.645773>,  <36.285355, 33.786251, 27.418655>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617577, 33.662468, 27.645773> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543964, 34.035175, 27.520588>,  <35.499798, 34.258801, 27.445477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543964, 34.035175, 27.520588>,  <35.617577, 33.662468, 27.645773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.543964, 34.035175, 27.520588> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727121, -0.343295, -0.594511,
		-0.661384, 0.118153, 0.740683,
		-0.184030, 0.931766, -0.312961,
		35.488754, 34.314705, 27.426699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867218, 33.687057, 27.611513>,  <35.617577, 33.662468, 27.645773>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867218, 33.687057, 27.611513> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002041, 33.984863, 27.381006>,  <35.082935, 34.163548, 27.242702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002041, 33.984863, 27.381006>,  <34.867218, 33.687057, 27.611513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.002041, 33.984863, 27.381006> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738635, -0.170422, -0.652208,
		-0.583789, 0.645484, 0.492484,
		0.337060, 0.744517, -0.576268,
		35.103157, 34.208218, 27.208126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.301571, 34.029118, 27.338808>,  <34.867218, 33.687057, 27.611513>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.301571, 34.029118, 27.338808> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603249, 34.122250, 27.093212>,  <34.784256, 34.178127, 26.945854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603249, 34.122250, 27.093212>,  <34.301571, 34.029118, 27.338808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.603249, 34.122250, 27.093212> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543981, -0.302202, -0.782789,
		-0.367803, 0.924374, -0.101266,
		0.754192, 0.232826, -0.613992,
		34.829506, 34.192097, 26.909014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084564, 34.561062, 26.922136>,  <34.301571, 34.029118, 27.338808>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084564, 34.561062, 26.922136> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396202, 34.434269, 26.705788>,  <34.583183, 34.358192, 26.575979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396202, 34.434269, 26.705788>,  <34.084564, 34.561062, 26.922136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396202, 34.434269, 26.705788> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602233, -0.138737, -0.786173,
		0.174165, 0.938229, -0.298986,
		0.779091, -0.316983, -0.540869,
		34.629929, 34.339172, 26.543528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.047153, 34.863285, 26.251860>,  <34.084564, 34.561062, 26.922136>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.047153, 34.863285, 26.251860> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263809, 34.528088, 26.225340>,  <34.393803, 34.326969, 26.209429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263809, 34.528088, 26.225340>,  <34.047153, 34.863285, 26.251860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.263809, 34.528088, 26.225340> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577084, -0.313326, -0.754188,
		0.611233, 0.446755, -0.653302,
		0.541635, -0.837995, -0.066300,
		34.426300, 34.276688, 26.205450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.250385, 34.850380, 25.501329>,  <34.047153, 34.863285, 26.251860>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.250385, 34.850380, 25.501329> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.266140, 34.475044, 25.638720>,  <34.275593, 34.249844, 25.721153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.266140, 34.475044, 25.638720>,  <34.250385, 34.850380, 25.501329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266140, 34.475044, 25.638720> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642234, -0.287108, -0.710707,
		0.765496, -0.192601, -0.613938,
		0.039384, -0.938336, 0.343475,
		34.277954, 34.193542, 25.741762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.191696, 34.434525, 24.874201>,  <34.250385, 34.850380, 25.501329>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.191696, 34.434525, 24.874201> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.089333, 34.182262, 25.167263>,  <34.027916, 34.030903, 25.343100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.089333, 34.182262, 25.167263>,  <34.191696, 34.434525, 24.874201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.089333, 34.182262, 25.167263> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687159, -0.414403, -0.596727,
		0.679944, -0.656157, -0.327313,
		-0.255907, -0.630657, 0.732655,
		34.012562, 33.993065, 25.387060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<28.927820, 31.248499, 29.999676> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.171284, 31.560104, 29.939449>,  <29.317362, 31.747068, 29.903313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.171284, 31.560104, 29.939449>,  <28.927820, 31.248499, 29.999676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.171284, 31.560104, 29.939449> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289891, -0.041694, 0.956151,
		0.738577, -0.625620, -0.251206,
		0.608661, 0.779013, -0.150567,
		29.353882, 31.793808, 29.894279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.605558, 30.969652, 30.137186>,  <28.927820, 31.248499, 29.999676>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.605558, 30.969652, 30.137186> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.602720, 31.366800, 30.184778>,  <29.601017, 31.605089, 30.213333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.602720, 31.366800, 30.184778>,  <29.605558, 30.969652, 30.137186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.602720, 31.366800, 30.184778> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525186, -0.097551, 0.845378,
		0.850958, 0.068486, -0.520750,
		-0.007097, 0.992871, 0.118979,
		29.600592, 31.664661, 30.220472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.266079, 31.133986, 30.526398>,  <29.605558, 30.969652, 30.137186>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.266079, 31.133986, 30.526398> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.085192, 31.489126, 30.560389>,  <29.976660, 31.702209, 30.580784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.085192, 31.489126, 30.560389>,  <30.266079, 31.133986, 30.526398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.085192, 31.489126, 30.560389> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421008, 0.128497, 0.897909,
		0.786288, 0.441828, -0.431901,
		-0.452219, 0.887849, 0.084978,
		29.949526, 31.755482, 30.585882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.792952, 31.683947, 30.680599>,  <30.266079, 31.133986, 30.526398>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.792952, 31.683947, 30.680599> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.452589, 31.867882, 30.782190>,  <30.248371, 31.978243, 30.843145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.452589, 31.867882, 30.782190>,  <30.792952, 31.683947, 30.680599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.452589, 31.867882, 30.782190> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458251, 0.413385, 0.786841,
		0.256830, 0.785914, -0.562474,
		-0.850908, 0.459839, 0.253976,
		30.197317, 32.005833, 30.858383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.047522, 32.272476, 30.903332>,  <30.792952, 31.683947, 30.680599>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.047522, 32.272476, 30.903332> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.664186, 32.262299, 31.017132>,  <30.434185, 32.256191, 31.085413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.664186, 32.262299, 31.017132>,  <31.047522, 32.272476, 30.903332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.664186, 32.262299, 31.017132> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232473, 0.509246, 0.828628,
		-0.165967, 0.860245, -0.482114,
		-0.958338, -0.025446, 0.284502,
		30.376684, 32.254665, 31.102482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.802387, 33.009792, 31.022074>,  <31.047522, 32.272476, 30.903332>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.802387, 33.009792, 31.022074> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.600992, 32.751846, 31.252083>,  <30.480156, 32.597076, 31.390087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.600992, 32.751846, 31.252083>,  <30.802387, 33.009792, 31.022074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.600992, 32.751846, 31.252083> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295786, 0.496669, 0.815985,
		-0.811796, 0.580920, -0.059323,
		-0.503485, -0.644867, 0.575022,
		30.449947, 32.558388, 31.424589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.659594, 33.446457, 31.517765>,  <30.802387, 33.009792, 31.022074>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.659594, 33.446457, 31.517765> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.594130, 33.097282, 31.701590>,  <30.554852, 32.887779, 31.811884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.594130, 33.097282, 31.701590>,  <30.659594, 33.446457, 31.517765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.594130, 33.097282, 31.701590> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301448, 0.399308, 0.865842,
		-0.939332, 0.280238, 0.197794,
		-0.163661, -0.872937, 0.459560,
		30.545031, 32.835400, 31.839458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.175251, 33.549572, 32.191151>,  <30.659594, 33.446457, 31.517765>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.175251, 33.549572, 32.191151> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.410738, 33.226242, 32.189175>,  <30.552031, 33.032246, 32.187988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.410738, 33.226242, 32.189175>,  <30.175251, 33.549572, 32.191151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.410738, 33.226242, 32.189175> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479902, 0.344588, 0.806817,
		-0.650465, -0.477361, 0.590781,
		0.588719, -0.808323, -0.004944,
		30.587355, 32.983746, 32.187691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.113899, 33.274178, 32.870968>,  <30.175251, 33.549572, 32.191151>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.113899, 33.274178, 32.870968> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.458658, 33.128971, 32.729347>,  <30.665514, 33.041847, 32.644375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.458658, 33.128971, 32.729347>,  <30.113899, 33.274178, 32.870968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.458658, 33.128971, 32.729347> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451145, 0.230168, 0.862259,
		-0.231519, -0.902909, 0.362152,
		0.861898, -0.363012, -0.354054,
		30.717228, 33.020069, 32.623131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.343464, 32.951244, 33.439732>,  <30.113899, 33.274178, 32.870968>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.343464, 32.951244, 33.439732> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.679203, 32.959980, 33.222469>,  <30.880646, 32.965221, 33.092110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.679203, 32.959980, 33.222469>,  <30.343464, 32.951244, 33.439732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.679203, 32.959980, 33.222469> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531817, 0.173891, 0.828814,
		0.112547, -0.984523, 0.134343,
		0.839347, 0.021834, -0.543157,
		30.931007, 32.966530, 33.059521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.815664, 32.604008, 33.865242>,  <30.343464, 32.951244, 33.439732>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.815664, 32.604008, 33.865242> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.072157, 32.762764, 33.602547>,  <31.226053, 32.858017, 33.444931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.072157, 32.762764, 33.602547>,  <30.815664, 32.604008, 33.865242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.072157, 32.762764, 33.602547> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735678, -0.074627, 0.673208,
		0.218178, -0.914828, -0.339834,
		0.641231, 0.396888, -0.656737,
		31.264526, 32.881828, 33.405525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.505192, 32.226891, 33.966171>,  <30.815664, 32.604008, 33.865242>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.505192, 32.226891, 33.966171> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.592123, 32.554703, 33.754082>,  <31.644281, 32.751392, 33.626827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.592123, 32.554703, 33.754082>,  <31.505192, 32.226891, 33.966171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.592123, 32.554703, 33.754082> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874568, 0.077741, 0.478630,
		0.433473, -0.567733, -0.699843,
		0.217328, 0.819534, -0.530220,
		31.657322, 32.800564, 33.595016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.278160, 32.164261, 33.791000>,  <31.505192, 32.226891, 33.966171>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.278160, 32.164261, 33.791000> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.154812, 32.544346, 33.773083>,  <32.080803, 32.772396, 33.762333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.154812, 32.544346, 33.773083>,  <32.278160, 32.164261, 33.791000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.154812, 32.544346, 33.773083> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827280, 0.291127, 0.480472,
		0.469592, 0.111102, -0.875865,
		-0.308370, 0.950211, -0.044799,
		32.062302, 32.829411, 33.759644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.925037, 32.432281, 33.415276>,  <32.278160, 32.164261, 33.791000>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.925037, 32.432281, 33.415276> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.689751, 32.672554, 33.631859>,  <32.548576, 32.816719, 33.761810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.689751, 32.672554, 33.631859>,  <32.925037, 32.432281, 33.415276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689751, 32.672554, 33.631859> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788813, 0.278592, 0.547869,
		0.178247, 0.749380, -0.637698,
		-0.588220, 0.600680, 0.541462,
		32.513287, 32.852757, 33.794296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.628651, 32.629330, 33.005184>,  <32.925037, 32.432281, 33.415276>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.628651, 32.629330, 33.005184> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.860008, 32.303108, 32.997917>,  <33.998821, 32.107376, 32.993557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.860008, 32.303108, 32.997917>,  <33.628651, 32.629330, 33.005184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.860008, 32.303108, 32.997917> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309471, -0.198763, -0.929904,
		0.754776, 0.543475, -0.367354,
		0.578395, -0.815554, -0.018168,
		34.033527, 32.058441, 32.992466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.181126, 32.671864, 32.456356>,  <33.628651, 32.629330, 33.005184>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.181126, 32.671864, 32.456356> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.093746, 32.287876, 32.526478>,  <34.041317, 32.057484, 32.568550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.093746, 32.287876, 32.526478>,  <34.181126, 32.671864, 32.456356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093746, 32.287876, 32.526478> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329674, -0.096482, -0.939152,
		0.918474, -0.262950, -0.295402,
		-0.218449, -0.959973, 0.175304,
		34.028210, 31.999884, 32.579067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577969, 32.255707, 31.941900>,  <34.181126, 32.671864, 32.456356>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577969, 32.255707, 31.941900> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.291576, 32.013096, 32.080173>,  <34.119740, 31.867531, 32.163136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.291576, 32.013096, 32.080173>,  <34.577969, 32.255707, 31.941900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.291576, 32.013096, 32.080173> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286942, -0.195726, -0.937739,
		0.636419, -0.770598, -0.033900,
		-0.715985, -0.606523, 0.345681,
		34.076782, 31.831139, 32.183876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.580479, 31.671556, 31.467331>,  <34.577969, 32.255707, 31.941900>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.580479, 31.671556, 31.467331> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.217064, 31.648800, 31.632900>,  <33.999016, 31.635145, 31.732241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.217064, 31.648800, 31.632900>,  <34.580479, 31.671556, 31.467331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.217064, 31.648800, 31.632900> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370528, -0.348086, -0.861130,
		0.193073, -0.935735, 0.295167,
		-0.908533, -0.056893, 0.413922,
		33.944504, 31.631733, 31.757076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253124, 31.133299, 31.133659>,  <34.580479, 31.671556, 31.467331>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253124, 31.133299, 31.133659> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.926197, 31.277533, 31.313423>,  <33.730042, 31.364073, 31.421282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.926197, 31.277533, 31.313423>,  <34.253124, 31.133299, 31.133659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926197, 31.277533, 31.313423> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574160, -0.444342, -0.687678,
		-0.048277, -0.820084, 0.570204,
		-0.817319, 0.360587, 0.449408,
		33.681000, 31.385708, 31.448246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815590, 30.547789, 31.252789>,  <34.253124, 31.133299, 31.133659>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.815590, 30.547789, 31.252789> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.588142, 30.875736, 31.225994>,  <33.451675, 31.072506, 31.209917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.588142, 30.875736, 31.225994>,  <33.815590, 30.547789, 31.252789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.588142, 30.875736, 31.225994> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526483, -0.425286, -0.736171,
		-0.632054, -0.383331, 0.673472,
		-0.568615, 0.819872, -0.066987,
		33.417557, 31.121698, 31.205898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.112465, 30.370983, 31.226597>,  <33.815590, 30.547789, 31.252789>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.112465, 30.370983, 31.226597> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.087437, 30.743994, 31.084343>,  <33.072418, 30.967800, 30.998991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.087437, 30.743994, 31.084343>,  <33.112465, 30.370983, 31.226597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.087437, 30.743994, 31.084343> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747417, -0.279924, -0.602502,
		-0.661401, 0.228108, 0.714503,
		-0.062571, 0.932528, -0.355634,
		33.068665, 31.023752, 30.977654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.449574, 30.441916, 31.163370>,  <33.112465, 30.370983, 31.226597>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.449574, 30.441916, 31.163370> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.590790, 30.735161, 30.930853>,  <32.675522, 30.911108, 30.791342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.590790, 30.735161, 30.930853>,  <32.449574, 30.441916, 31.163370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.590790, 30.735161, 30.930853> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712954, -0.191522, -0.674549,
		-0.605852, 0.652581, 0.455062,
		0.353044, 0.733115, -0.581294,
		32.696701, 30.955095, 30.756464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.890886, 30.782545, 30.979551>,  <32.449574, 30.441916, 31.163370>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.890886, 30.782545, 30.979551> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.166969, 30.872402, 30.704409>,  <32.332619, 30.926317, 30.539322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.166969, 30.872402, 30.704409>,  <31.890886, 30.782545, 30.979551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.166969, 30.872402, 30.704409> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653181, -0.215657, -0.725842,
		-0.311398, 0.950277, -0.002115,
		0.690208, 0.224644, -0.687858,
		32.374031, 30.939795, 30.498051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.460821, 31.097589, 30.431778>,  <31.890886, 30.782545, 30.979551>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.460821, 31.097589, 30.431778> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.813095, 30.996140, 30.271744>,  <32.024460, 30.935270, 30.175724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.813095, 30.996140, 30.271744>,  <31.460821, 31.097589, 30.431778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813095, 30.996140, 30.271744> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410507, 0.012838, -0.911767,
		0.236383, 0.967218, -0.092808,
		0.880686, -0.253625, -0.400084,
		32.077301, 30.920052, 30.151718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.670496, 31.640980, 29.965204>,  <31.460821, 31.097589, 30.431778>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.670496, 31.640980, 29.965204> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.820913, 31.286976, 29.855404>,  <31.911163, 31.074574, 29.789524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.820913, 31.286976, 29.855404>,  <31.670496, 31.640980, 29.965204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.820913, 31.286976, 29.855404> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540427, 0.031163, -0.840814,
		0.752682, 0.464530, -0.466563,
		0.376044, -0.885009, -0.274500,
		31.933727, 31.021473, 29.773054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.746332, 31.764551, 29.273699>,  <31.670496, 31.640980, 29.965204>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.746332, 31.764551, 29.273699> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.797916, 31.368410, 29.293997>,  <31.828867, 31.130726, 29.306175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.797916, 31.368410, 29.293997>,  <31.746332, 31.764551, 29.273699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.797916, 31.368410, 29.293997> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464331, -0.105520, -0.879353,
		0.876222, 0.089840, -0.473459,
		0.128960, -0.990351, 0.050743,
		31.836605, 31.071304, 29.309219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.861973, 31.543282, 28.560097>,  <31.746332, 31.764551, 29.273699>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.861973, 31.543282, 28.560097> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.754076, 31.203211, 28.740957>,  <31.689339, 30.999168, 28.849474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.754076, 31.203211, 28.740957>,  <31.861973, 31.543282, 28.560097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.754076, 31.203211, 28.740957> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488027, -0.284083, -0.825304,
		0.830102, -0.443280, -0.338280,
		-0.269741, -0.850176, 0.452150,
		31.673153, 30.948158, 28.876602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.123009, 31.002962, 28.141062>,  <31.861973, 31.543282, 28.560097>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.123009, 31.002962, 28.141062> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.808647, 30.859423, 28.342491>,  <31.620031, 30.773298, 28.463348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.808647, 30.859423, 28.342491>,  <32.123009, 31.002962, 28.141062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.808647, 30.859423, 28.342491> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459864, -0.205241, -0.863945,
		0.413381, -0.910551, -0.003723,
		-0.785902, -0.358850, 0.503572,
		31.572876, 30.751768, 28.493563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.500729, 30.275328, 28.031488>,  <32.123009, 31.002962, 28.141062>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.500729, 30.275328, 28.031488> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.728951, 30.064592, 27.779486>,  <32.865883, 29.938152, 27.628284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.728951, 30.064592, 27.779486>,  <32.500729, 30.275328, 28.031488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728951, 30.064592, 27.779486> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746482, 0.012868, 0.665281,
		-0.342387, -0.849869, 0.400616,
		0.570557, -0.526837, -0.630006,
		32.900116, 29.906542, 27.590485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.713257, 29.752420, 28.450367>,  <32.500729, 30.275328, 28.031488>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.713257, 29.752420, 28.450367> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.976048, 29.764561, 28.149048>,  <33.133720, 29.771845, 27.968256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.976048, 29.764561, 28.149048>,  <32.713257, 29.752420, 28.450367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.976048, 29.764561, 28.149048> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752849, -0.079428, 0.653383,
		-0.039998, -0.996378, -0.075036,
		0.656977, 0.030356, -0.753299,
		33.173141, 29.773666, 27.923058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.238522, 29.191475, 28.498156>,  <32.713257, 29.752420, 28.450367>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.238522, 29.191475, 28.498156> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.425827, 29.436966, 28.243889>,  <33.538208, 29.584261, 28.091330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.425827, 29.436966, 28.243889>,  <33.238522, 29.191475, 28.498156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.425827, 29.436966, 28.243889> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768973, 0.071294, 0.635294,
		0.435217, -0.786291, -0.438557,
		0.468259, 0.613729, -0.635665,
		33.566303, 29.621084, 28.053190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901733, 28.964382, 28.402948>,  <33.238522, 29.191475, 28.498156>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.901733, 28.964382, 28.402948> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.939507, 29.351320, 28.308865>,  <33.962170, 29.583483, 28.252415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.939507, 29.351320, 28.308865>,  <33.901733, 28.964382, 28.402948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.939507, 29.351320, 28.308865> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822022, 0.057513, 0.566543,
		0.561571, -0.246847, -0.789750,
		0.094429, 0.967346, -0.235211,
		33.967834, 29.641523, 28.238302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544830, 29.017557, 28.268461>,  <33.901733, 28.964382, 28.402948>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.544830, 29.017557, 28.268461> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.435459, 29.395779, 28.339073>,  <34.369839, 29.622711, 28.381441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.435459, 29.395779, 28.339073>,  <34.544830, 29.017557, 28.268461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435459, 29.395779, 28.339073> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869449, 0.164446, 0.465850,
		0.411457, 0.280861, -0.867076,
		-0.273426, 0.945555, 0.176531,
		34.353432, 29.679445, 28.392033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185349, 29.456455, 28.189913>,  <34.544830, 29.017557, 28.268461>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185349, 29.456455, 28.189913> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.909748, 29.652296, 28.403667>,  <34.744389, 29.769800, 28.531919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.909748, 29.652296, 28.403667>,  <35.185349, 29.456455, 28.189913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909748, 29.652296, 28.403667> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711987, 0.319415, 0.625338,
		0.135477, 0.811334, -0.568668,
		-0.688999, 0.489604, 0.534386,
		34.703049, 29.799177, 28.563984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406712, 30.109951, 28.311178>,  <35.185349, 29.456455, 28.189913>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406712, 30.109951, 28.311178> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.157513, 30.001322, 28.604607>,  <35.007996, 29.936144, 28.780663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.157513, 30.001322, 28.604607>,  <35.406712, 30.109951, 28.311178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.157513, 30.001322, 28.604607> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729979, 0.135140, 0.669976,
		-0.281082, 0.952882, 0.114051,
		-0.622995, -0.271573, 0.733570,
		34.970615, 29.919849, 28.824678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591923, 30.656185, 28.812870>,  <35.406712, 30.109951, 28.311178>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.591923, 30.656185, 28.812870> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.375423, 30.381168, 29.006502>,  <35.245525, 30.216158, 29.122681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.375423, 30.381168, 29.006502>,  <35.591923, 30.656185, 28.812870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.375423, 30.381168, 29.006502> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563467, 0.130756, 0.815725,
		-0.624143, 0.714273, 0.316637,
		-0.541249, -0.687544, 0.484080,
		35.213047, 30.174906, 29.151726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261776, 30.948648, 29.330610>,  <35.591923, 30.656185, 28.812870>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261776, 30.948648, 29.330610> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.282829, 30.565140, 29.442310>,  <35.295464, 30.335033, 29.509331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.282829, 30.565140, 29.442310>,  <35.261776, 30.948648, 29.330610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.282829, 30.565140, 29.442310> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591709, 0.255208, 0.764689,
		-0.804431, 0.124985, 0.580749,
		0.052637, -0.958774, 0.279252,
		35.298622, 30.277508, 29.526087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110477, 30.888969, 29.989510>,  <35.261776, 30.948648, 29.330610>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110477, 30.888969, 29.989510> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.327576, 30.562094, 29.911919>,  <35.457836, 30.365969, 29.865364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.327576, 30.562094, 29.911919>,  <35.110477, 30.888969, 29.989510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.327576, 30.562094, 29.911919> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634629, 0.247737, 0.732032,
		-0.550153, -0.520413, 0.653071,
		0.542749, -0.817188, -0.193976,
		35.490402, 30.316936, 29.853725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293934, 30.642963, 30.584240>,  <35.110477, 30.888969, 29.989510>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293934, 30.642963, 30.584240> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.571999, 30.470802, 30.353937>,  <35.738838, 30.367506, 30.215755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.571999, 30.470802, 30.353937>,  <35.293934, 30.642963, 30.584240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.571999, 30.470802, 30.353937> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717383, 0.466500, 0.517435,
		0.045885, -0.772742, 0.633059,
		0.695166, -0.430404, -0.575758,
		35.780548, 30.341681, 30.181210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.853546, 30.422047, 31.064148>,  <35.293934, 30.642963, 30.584240>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.853546, 30.422047, 31.064148> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.030495, 30.377893, 30.708143>,  <36.136665, 30.351402, 30.494541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.030495, 30.377893, 30.708143>,  <35.853546, 30.422047, 31.064148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.030495, 30.377893, 30.708143> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861489, 0.328143, 0.387503,
		0.249277, -0.938157, 0.240255,
		0.442376, -0.110382, -0.890011,
		36.163208, 30.344778, 30.441139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411659, 29.963518, 31.141970>,  <35.853546, 30.422047, 31.064148>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411659, 29.963518, 31.141970> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.502823, 30.167765, 30.810349>,  <36.557522, 30.290314, 30.611376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.502823, 30.167765, 30.810349>,  <36.411659, 29.963518, 31.141970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.502823, 30.167765, 30.810349> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883672, 0.249080, 0.396338,
		0.408877, -0.822939, -0.394451,
		0.227912, 0.510618, -0.829051,
		36.571198, 30.320950, 30.561634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062695, 29.750221, 31.058632>,  <36.411659, 29.963518, 31.141970>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.062695, 29.750221, 31.058632> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.030842, 30.101137, 30.869308>,  <37.011730, 30.311686, 30.755714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.030842, 30.101137, 30.869308>,  <37.062695, 29.750221, 31.058632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.030842, 30.101137, 30.869308> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840433, 0.314417, 0.441379,
		0.536033, -0.362638, -0.762340,
		-0.079632, 0.877289, -0.473311,
		37.006954, 30.364325, 30.727316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.314030, 33.780659, 24.601606> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.062332, 33.689297, 24.898762>,  <33.911312, 33.634480, 25.077055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.062332, 33.689297, 24.898762>,  <34.314030, 33.780659, 24.601606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.062332, 33.689297, 24.898762> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622978, -0.423287, -0.657820,
		0.464707, -0.876731, 0.124056,
		-0.629242, -0.228410, 0.742888,
		33.873558, 33.620773, 25.121628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142307, 33.003567, 24.426722>,  <34.314030, 33.780659, 24.601606>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.142307, 33.003567, 24.426722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.867332, 33.100315, 24.700636>,  <33.702347, 33.158363, 24.864985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.867332, 33.100315, 24.700636>,  <34.142307, 33.003567, 24.426722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867332, 33.100315, 24.700636> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699355, -0.474670, -0.534407,
		0.195789, -0.846278, 0.495459,
		-0.687437, 0.241871, 0.684784,
		33.661102, 33.172878, 24.906071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.697384, 32.493439, 24.575296>,  <34.142307, 33.003567, 24.426722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.697384, 32.493439, 24.575296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.458878, 32.781399, 24.717398>,  <33.315773, 32.954174, 24.802658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.458878, 32.781399, 24.717398>,  <33.697384, 32.493439, 24.575296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.458878, 32.781399, 24.717398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798926, -0.488795, -0.350425,
		-0.078624, -0.492770, 0.866600,
		-0.596268, 0.719901, 0.355256,
		33.279999, 32.997368, 24.823975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050087, 32.165859, 24.989258>,  <33.697384, 32.493439, 24.575296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050087, 32.165859, 24.989258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.941189, 32.528385, 24.859964>,  <32.875851, 32.745899, 24.782389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.941189, 32.528385, 24.859964>,  <33.050087, 32.165859, 24.989258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.941189, 32.528385, 24.859964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771780, -0.406295, -0.489163,
		-0.574663, 0.116292, 0.810086,
		-0.272248, 0.906311, -0.323234,
		32.859516, 32.800278, 24.762995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.252346, 32.241844, 25.140488>,  <33.050087, 32.165859, 24.989258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.252346, 32.241844, 25.140488> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.344440, 32.491695, 24.842001>,  <32.399696, 32.641605, 24.662909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.344440, 32.491695, 24.842001>,  <32.252346, 32.241844, 25.140488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344440, 32.491695, 24.842001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800441, -0.314542, -0.510252,
		-0.553432, 0.714778, 0.427558,
		0.230232, 0.624625, -0.746215,
		32.413509, 32.679085, 24.618137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.528788, 32.531425, 24.955837>,  <32.252346, 32.241844, 25.140488>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.528788, 32.531425, 24.955837> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.778572, 32.595528, 24.650063>,  <31.928444, 32.633987, 24.466597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.778572, 32.595528, 24.650063>,  <31.528788, 32.531425, 24.955837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.778572, 32.595528, 24.650063> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748311, -0.157658, -0.644340,
		-0.223779, 0.974403, 0.021470,
		0.624462, 0.160256, -0.764438,
		31.965910, 32.643604, 24.420731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.226110, 33.006638, 24.475840>,  <31.528788, 32.531425, 24.955837>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.226110, 33.006638, 24.475840> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.502531, 32.817719, 24.256977>,  <31.668385, 32.704369, 24.125660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.502531, 32.817719, 24.256977>,  <31.226110, 33.006638, 24.475840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.502531, 32.817719, 24.256977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614959, 0.013616, -0.788441,
		0.379829, 0.881334, -0.281035,
		0.691053, -0.472298, -0.547156,
		31.709846, 32.676029, 24.092831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.189281, 33.328159, 23.702532>,  <31.226110, 33.006638, 24.475840>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.189281, 33.328159, 23.702532> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.374710, 32.976097, 23.661697>,  <31.485968, 32.764858, 23.637197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.374710, 32.976097, 23.661697>,  <31.189281, 33.328159, 23.702532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.374710, 32.976097, 23.661697> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646427, -0.257149, -0.718335,
		0.605998, 0.398991, -0.688166,
		0.463571, -0.880159, -0.102086,
		31.513781, 32.712048, 23.631071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.465303, 33.204983, 22.997185>,  <31.189281, 33.328159, 23.702532>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.465303, 33.204983, 22.997185> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.398024, 32.847321, 23.163168>,  <31.357656, 32.632721, 23.262758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.398024, 32.847321, 23.163168>,  <31.465303, 33.204983, 22.997185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.398024, 32.847321, 23.163168> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496563, -0.286790, -0.819254,
		0.851548, -0.343849, -0.395769,
		-0.168197, -0.894159, 0.414958,
		31.347565, 32.579075, 23.287655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.315958, 32.865498, 22.423113>,  <31.465303, 33.204983, 22.997185>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.315958, 32.865498, 22.423113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.225554, 32.606281, 22.714031>,  <31.171310, 32.450752, 22.888582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.225554, 32.606281, 22.714031>,  <31.315958, 32.865498, 22.423113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.225554, 32.606281, 22.714031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534000, -0.542014, -0.648895,
		0.814717, -0.535032, -0.223555,
		-0.226009, -0.648045, 0.727295,
		31.157751, 32.411869, 22.932220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.254215, 32.219959, 22.140173>,  <31.315958, 32.865498, 22.423113>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.254215, 32.219959, 22.140173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.063375, 32.151180, 22.484919>,  <30.948872, 32.109913, 22.691767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.063375, 32.151180, 22.484919>,  <31.254215, 32.219959, 22.140173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.063375, 32.151180, 22.484919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623026, -0.625496, -0.469673,
		0.619852, -0.761045, 0.191296,
		-0.477097, -0.171946, 0.861866,
		30.920246, 32.099598, 22.743479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.222071, 31.414274, 22.191290>,  <31.254215, 32.219959, 22.140173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.222071, 31.414274, 22.191290> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.938505, 31.612906, 22.391630>,  <30.768366, 31.732084, 22.511835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.938505, 31.612906, 22.391630>,  <31.222071, 31.414274, 22.191290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.938505, 31.612906, 22.391630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701084, -0.418667, -0.577234,
		-0.076950, -0.760349, 0.644940,
		-0.708915, 0.496575, 0.500852,
		30.725830, 31.761879, 22.541885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.620878, 30.996332, 22.518063>,  <31.222071, 31.414274, 22.191290>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.620878, 30.996332, 22.518063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.533455, 31.356693, 22.368073>,  <30.481001, 31.572910, 22.278078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.533455, 31.356693, 22.368073>,  <30.620878, 30.996332, 22.518063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.533455, 31.356693, 22.368073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738993, -0.403756, -0.539324,
		-0.637277, 0.159232, 0.754005,
		-0.218556, 0.900903, -0.374976,
		30.467888, 31.626965, 22.255579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.798218, 31.278866, 22.528894>,  <30.620878, 30.996332, 22.518063>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.798218, 31.278866, 22.528894> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.024111, 31.401022, 22.222218>,  <30.159647, 31.474316, 22.038212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.024111, 31.401022, 22.222218>,  <29.798218, 31.278866, 22.528894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.024111, 31.401022, 22.222218> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761849, -0.164240, -0.626588,
		-0.317274, 0.937957, 0.139908,
		0.564734, 0.305389, -0.766690,
		30.193531, 31.492638, 21.992210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.073269, 30.624346, 22.816513>,  <29.798218, 31.278866, 22.528894>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.073269, 30.624346, 22.816513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.745651, 30.506271, 23.013300>,  <29.549080, 30.435427, 23.131372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.745651, 30.506271, 23.013300>,  <30.073269, 30.624346, 22.816513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.745651, 30.506271, 23.013300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572843, -0.373104, 0.729825,
		-0.031881, 0.879578, 0.474685,
		-0.819045, -0.295187, 0.491965,
		29.499937, 30.417715, 23.160889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.117155, 30.977764, 23.547115>,  <30.073269, 30.624346, 22.816513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.117155, 30.977764, 23.547115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.901876, 30.641565, 23.572109>,  <29.772709, 30.439846, 23.587105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.901876, 30.641565, 23.572109>,  <30.117155, 30.977764, 23.547115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.901876, 30.641565, 23.572109> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588701, -0.321838, 0.741520,
		-0.603136, 0.435869, 0.668015,
		-0.538199, -0.840499, 0.062484,
		29.740417, 30.389416, 23.590855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.962015, 30.851641, 24.313231>,  <30.117155, 30.977764, 23.547115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.962015, 30.851641, 24.313231> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.923897, 30.498106, 24.130035>,  <29.901026, 30.285986, 24.020119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.923897, 30.498106, 24.130035>,  <29.962015, 30.851641, 24.313231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.923897, 30.498106, 24.130035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541196, -0.432147, 0.721357,
		-0.835479, -0.179120, 0.519510,
		-0.095295, -0.883836, -0.457988,
		29.895308, 30.232956, 23.992640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.754229, 30.483292, 24.848034>,  <29.962015, 30.851641, 24.313231>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.754229, 30.483292, 24.848034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.906683, 30.258501, 24.554390>,  <29.998156, 30.123627, 24.378204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.906683, 30.258501, 24.554390>,  <29.754229, 30.483292, 24.848034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.906683, 30.258501, 24.554390> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497206, -0.544842, 0.675228,
		-0.779436, -0.622359, 0.071758,
		0.381137, -0.561975, -0.734111,
		30.021025, 30.089909, 24.334156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.677099, 29.774261, 25.124254>,  <29.754229, 30.483292, 24.848034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.677099, 29.774261, 25.124254> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.945181, 29.756483, 24.827915>,  <30.106030, 29.745817, 24.650112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.945181, 29.756483, 24.827915>,  <29.677099, 29.774261, 25.124254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.945181, 29.756483, 24.827915> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657831, -0.426609, 0.620696,
		-0.343638, -0.903343, -0.256678,
		0.670203, -0.044444, -0.740846,
		30.146242, 29.743151, 24.605661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.049366, 29.099358, 25.193928>,  <29.677099, 29.774261, 25.124254>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.049366, 29.099358, 25.193928> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.290138, 29.331224, 24.974232>,  <30.434603, 29.470345, 24.842415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.290138, 29.331224, 24.974232>,  <30.049366, 29.099358, 25.193928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.290138, 29.331224, 24.974232> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789464, -0.328531, 0.518472,
		0.120099, -0.745690, -0.655380,
		0.601932, 0.579667, -0.549240,
		30.470718, 29.505125, 24.809460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.540047, 28.682528, 25.138975>,  <30.049366, 29.099358, 25.193928>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.540047, 28.682528, 25.138975> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.718620, 29.030018, 25.053171>,  <30.825764, 29.238512, 25.001688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.718620, 29.030018, 25.053171>,  <30.540047, 28.682528, 25.138975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.718620, 29.030018, 25.053171> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690145, -0.181693, 0.700492,
		0.569558, -0.460768, -0.680659,
		0.446435, 0.868724, -0.214512,
		30.852551, 29.290634, 24.988817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.178774, 28.598110, 25.143089>,  <30.540047, 28.682528, 25.138975>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.178774, 28.598110, 25.143089> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.193314, 28.996349, 25.177654>,  <31.202038, 29.235292, 25.198393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.193314, 28.996349, 25.177654>,  <31.178774, 28.598110, 25.143089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.193314, 28.996349, 25.177654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711268, -0.086513, 0.697577,
		0.701981, 0.036105, -0.711280,
		0.036349, 0.995596, 0.086411,
		31.204218, 29.295029, 25.203577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.879454, 28.759886, 25.065027>,  <31.178774, 28.598110, 25.143089>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.879454, 28.759886, 25.065027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.703966, 29.057190, 25.267054>,  <31.598673, 29.235573, 25.388269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.703966, 29.057190, 25.267054>,  <31.879454, 28.759886, 25.065027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.703966, 29.057190, 25.267054> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779437, 0.035027, 0.625501,
		0.447218, 0.668087, -0.594690,
		-0.438719, 0.743258, 0.505067,
		31.572350, 29.280167, 25.418573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.453754, 29.164309, 25.231909>,  <31.879454, 28.759886, 25.065027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.453754, 29.164309, 25.231909> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.163517, 29.298889, 25.472012>,  <31.989374, 29.379639, 25.616074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.163517, 29.298889, 25.472012>,  <32.453754, 29.164309, 25.231909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.163517, 29.298889, 25.472012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657632, 0.082289, 0.748831,
		0.202553, 0.938098, -0.280971,
		-0.725598, 0.336454, 0.600255,
		31.945837, 29.399826, 25.652088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706573, 29.772652, 25.469448>,  <32.453754, 29.164309, 25.231909>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.706573, 29.772652, 25.469448> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.424099, 29.657179, 25.728048>,  <32.254616, 29.587894, 25.883209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.424099, 29.657179, 25.728048>,  <32.706573, 29.772652, 25.469448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.424099, 29.657179, 25.728048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647244, 0.106938, 0.754745,
		-0.287019, 0.951433, 0.111331,
		-0.706184, -0.288684, 0.646503,
		32.212242, 29.570574, 25.921999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.682915, 30.281584, 25.996616>,  <32.706573, 29.772652, 25.469448>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.682915, 30.281584, 25.996616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.504066, 29.970587, 26.173519>,  <32.396759, 29.783989, 26.279661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.504066, 29.970587, 26.173519>,  <32.682915, 30.281584, 25.996616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.504066, 29.970587, 26.173519> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536117, 0.162841, 0.828288,
		-0.716006, 0.607444, 0.344018,
		-0.447118, -0.777493, 0.442256,
		32.369930, 29.737339, 26.306196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.498360, 30.596611, 26.624069>,  <32.682915, 30.281584, 25.996616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.498360, 30.596611, 26.624069> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.516773, 30.200487, 26.676474>,  <32.527821, 29.962812, 26.707916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.516773, 30.200487, 26.676474>,  <32.498360, 30.596611, 26.624069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.516773, 30.200487, 26.676474> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365446, 0.138751, 0.920433,
		-0.929694, 0.005507, 0.368293,
		0.046032, -0.990312, 0.131009,
		32.530582, 29.903393, 26.715776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.276974, 30.565332, 27.284468>,  <32.498360, 30.596611, 26.624069>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.276974, 30.565332, 27.284468> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.486084, 30.236210, 27.195301>,  <32.611549, 30.038736, 27.141800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.486084, 30.236210, 27.195301>,  <32.276974, 30.565332, 27.284468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.486084, 30.236210, 27.195301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539079, 0.116514, 0.834157,
		-0.660378, -0.556248, 0.504469,
		0.522776, -0.822807, -0.222918,
		32.642918, 29.989368, 27.128426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.738243, 30.106716, 27.684988>,  <32.276974, 30.565332, 27.284468>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.738243, 30.106716, 27.684988> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.500395, 30.304926, 27.938250>,  <31.357687, 30.423853, 28.090206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.500395, 30.304926, 27.938250>,  <31.738243, 30.106716, 27.684988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.500395, 30.304926, 27.938250> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750546, -0.059745, -0.658111,
		-0.288284, -0.866536, 0.407441,
		-0.594620, 0.495527, 0.633152,
		31.322008, 30.453585, 28.128195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.091551, 29.642139, 27.820232>,  <31.738243, 30.106716, 27.684988>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.091551, 29.642139, 27.820232> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.969090, 30.004318, 27.937832>,  <30.895613, 30.221626, 28.008390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.969090, 30.004318, 27.937832>,  <31.091551, 29.642139, 27.820232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.969090, 30.004318, 27.937832> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755066, -0.042873, -0.654245,
		-0.579781, -0.422285, 0.696799,
		-0.306152, 0.905448, 0.293996,
		30.877243, 30.275953, 28.026031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.399963, 29.672359, 28.057951>,  <31.091551, 29.642139, 27.820232>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.399963, 29.672359, 28.057951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.453384, 30.056007, 27.958149>,  <30.485437, 30.286196, 27.898268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.453384, 30.056007, 27.958149>,  <30.399963, 29.672359, 28.057951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.453384, 30.056007, 27.958149> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828377, -0.030167, -0.559359,
		-0.544019, 0.281389, 0.790483,
		0.133551, 0.959119, -0.249507,
		30.493450, 30.343742, 27.883297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.783642, 30.078751, 28.249096>,  <30.399963, 29.672359, 28.057951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.783642, 30.078751, 28.249096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.980366, 30.321642, 27.999489>,  <30.098400, 30.467377, 27.849726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.980366, 30.321642, 27.999489>,  <29.783642, 30.078751, 28.249096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.980366, 30.321642, 27.999489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814142, 0.066618, -0.576832,
		-0.308697, 0.791731, 0.527133,
		0.491812, 0.607227, -0.624017,
		30.127909, 30.503811, 27.812284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.261570, 30.617800, 28.093084>,  <29.783642, 30.078751, 28.249096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.261570, 30.617800, 28.093084> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.534735, 30.619272, 27.800888>,  <29.698635, 30.620155, 27.625570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.534735, 30.619272, 27.800888>,  <29.261570, 30.617800, 28.093084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.534735, 30.619272, 27.800888> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716181, 0.200384, -0.668529,
		0.143919, 0.979711, 0.139480,
		0.682914, 0.003679, -0.730489,
		29.739609, 30.620377, 27.581741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.060991, 31.097631, 27.787594>,  <29.261570, 30.617800, 28.093084>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.060991, 31.097631, 27.787594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.293083, 30.913961, 27.518524>,  <29.432339, 30.803759, 27.357082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.293083, 30.913961, 27.518524>,  <29.060991, 31.097631, 27.787594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.293083, 30.913961, 27.518524> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767096, -0.030572, -0.640803,
		0.273677, 0.887818, -0.369972,
		0.580228, -0.459177, -0.672675,
		29.467152, 30.776209, 27.316721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.859015, 31.400946, 27.134821>,  <29.060991, 31.097631, 27.787594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.859015, 31.400946, 27.134821> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.015799, 31.041275, 27.057007>,  <29.109869, 30.825472, 27.010319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.015799, 31.041275, 27.057007>,  <28.859015, 31.400946, 27.134821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.015799, 31.041275, 27.057007> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729046, -0.174615, -0.661817,
		0.561122, 0.401233, -0.723985,
		0.391962, -0.899179, -0.194537,
		29.133387, 30.771521, 26.998646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.944719, 32.077633, 26.897793>,  <28.859015, 31.400946, 27.134821>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.944719, 32.077633, 26.897793> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.633795, 32.238464, 27.091337>,  <28.447241, 32.334961, 27.207464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.633795, 32.238464, 27.091337>,  <28.944719, 32.077633, 26.897793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.633795, 32.238464, 27.091337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407601, -0.263988, 0.874169,
		0.479216, 0.876724, 0.041315,
		-0.777312, 0.402075, 0.483861,
		28.400600, 32.359089, 27.236496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.291731, 32.456261, 27.405674>,  <28.944719, 32.077633, 26.897793>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.291731, 32.456261, 27.405674> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.916620, 32.374283, 27.517799>,  <28.691555, 32.325096, 27.585073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.916620, 32.374283, 27.517799>,  <29.291731, 32.456261, 27.405674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.916620, 32.374283, 27.517799> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327943, -0.257350, 0.908969,
		-0.114150, 0.944335, 0.308546,
		-0.937776, -0.204945, 0.280311,
		28.635288, 32.312798, 27.601892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.268797, 32.925671, 28.012747>,  <29.291731, 32.456261, 27.405674>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.268797, 32.925671, 28.012747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.991051, 32.638599, 28.033876>,  <28.824402, 32.466358, 28.046555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.991051, 32.638599, 28.033876>,  <29.268797, 32.925671, 28.012747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.991051, 32.638599, 28.033876> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259641, -0.181394, 0.948516,
		-0.671148, 0.672334, 0.312293,
		-0.694367, -0.717679, 0.052823,
		28.782740, 32.423294, 28.049723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.951275, 33.126343, 28.541571>,  <29.268797, 32.925671, 28.012747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.951275, 33.126343, 28.541571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.859026, 32.738659, 28.507067>,  <28.803677, 32.506046, 28.486364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.859026, 32.738659, 28.507067>,  <28.951275, 33.126343, 28.541571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.859026, 32.738659, 28.507067> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134079, -0.119458, 0.983744,
		-0.963762, 0.215308, 0.157501,
		-0.230623, -0.969212, -0.086261,
		28.789839, 32.447895, 28.481188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.618292, 33.076340, 29.080187>,  <28.951275, 33.126343, 28.541571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.618292, 33.076340, 29.080187> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.706703, 32.699100, 28.980818>,  <28.759750, 32.472755, 28.921196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.706703, 32.699100, 28.980818>,  <28.618292, 33.076340, 29.080187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.706703, 32.699100, 28.980818> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389843, -0.148051, 0.908902,
		-0.893963, -0.297738, 0.334936,
		0.221027, -0.943097, -0.248423,
		28.773012, 32.416172, 28.906290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.349880, 32.670879, 29.511080>,  <28.618292, 33.076340, 29.080187>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.349880, 32.670879, 29.511080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.623142, 32.409351, 29.380957>,  <28.787100, 32.252434, 29.302883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.623142, 32.409351, 29.380957>,  <28.349880, 32.670879, 29.511080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.623142, 32.409351, 29.380957> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259609, -0.198927, 0.945003,
		-0.682571, -0.730035, 0.033839,
		0.683154, -0.653817, -0.325306,
		28.828089, 32.213207, 29.283365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.288031, 32.059826, 29.992985>,  <28.349880, 32.670879, 29.511080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.288031, 32.059826, 29.992985> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.657665, 32.076977, 29.841078>,  <28.879446, 32.087269, 29.749933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.657665, 32.076977, 29.841078>,  <28.288031, 32.059826, 29.992985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.657665, 32.076977, 29.841078> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381960, -0.070018, 0.921523,
		0.012928, -0.996624, -0.081083,
		0.924088, 0.042884, -0.379765,
		28.934893, 32.089840, 29.727148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.083387, 34.835510, 24.121414> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.158127, 34.493725, 23.927519>,  <29.202971, 34.288654, 23.811182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.158127, 34.493725, 23.927519>,  <29.083387, 34.835510, 24.121414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.158127, 34.493725, 23.927519> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412869, -0.379436, 0.827990,
		-0.891418, -0.354843, 0.281886,
		0.186849, -0.854467, -0.484740,
		29.214182, 34.237385, 23.782097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.695940, 34.296181, 24.387524>,  <29.083387, 34.835510, 24.121414>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.695940, 34.296181, 24.387524> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.058502, 34.208096, 24.243336>,  <29.276039, 34.155247, 24.156822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.058502, 34.208096, 24.243336>,  <28.695940, 34.296181, 24.387524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.058502, 34.208096, 24.243336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330652, -0.161174, 0.929888,
		-0.262871, -0.962044, -0.073275,
		0.906403, -0.220213, -0.360470,
		29.330423, 34.142033, 24.135195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.887081, 33.829746, 24.823105>,  <28.695940, 34.296181, 24.387524>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.887081, 33.829746, 24.823105> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.223976, 33.946774, 24.641981>,  <29.426113, 34.016991, 24.533308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.223976, 33.946774, 24.641981>,  <28.887081, 33.829746, 24.823105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.223976, 33.946774, 24.641981> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453269, 0.070409, 0.888589,
		0.291859, -0.953647, -0.073313,
		0.842239, 0.292573, -0.452808,
		29.476648, 34.034546, 24.506138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.468632, 33.418720, 25.185007>,  <28.887081, 33.829746, 24.823105>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.468632, 33.418720, 25.185007> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.653664, 33.709362, 24.981808>,  <29.764683, 33.883747, 24.859888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.653664, 33.709362, 24.981808>,  <29.468632, 33.418720, 25.185007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.653664, 33.709362, 24.981808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537914, 0.225449, 0.812294,
		0.704746, -0.649010, -0.286564,
		0.462581, 0.726607, -0.507996,
		29.792439, 33.927345, 24.829409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.226112, 33.337456, 25.212769>,  <29.468632, 33.418720, 25.185007>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.226112, 33.337456, 25.212769> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.174437, 33.731113, 25.164150>,  <30.143431, 33.967308, 25.134979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.174437, 33.731113, 25.164150>,  <30.226112, 33.337456, 25.212769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.174437, 33.731113, 25.164150> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632775, 0.176193, 0.754024,
		0.763483, 0.020500, -0.645503,
		-0.129191, 0.984142, -0.121548,
		30.135679, 34.026356, 25.127686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.904543, 33.568169, 25.272167>,  <30.226112, 33.337456, 25.212769>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.904543, 33.568169, 25.272167> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.684727, 33.902008, 25.287411>,  <30.552837, 34.102310, 25.296556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.684727, 33.902008, 25.287411>,  <30.904543, 33.568169, 25.272167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.684727, 33.902008, 25.287411> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645083, 0.394888, 0.654164,
		0.530915, 0.384073, -0.755392,
		-0.549542, 0.834597, 0.038107,
		30.519865, 34.152386, 25.298843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.378670, 34.040779, 25.051176>,  <30.904543, 33.568169, 25.272167>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.378670, 34.040779, 25.051176> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.091450, 34.210674, 25.271723>,  <30.919117, 34.312611, 25.404051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.091450, 34.210674, 25.271723>,  <31.378670, 34.040779, 25.051176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.091450, 34.210674, 25.271723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694364, 0.383034, 0.609216,
		0.047563, 0.820296, -0.569958,
		-0.718050, 0.424734, 0.551366,
		30.876034, 34.338093, 25.437132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.616358, 34.754181, 25.323524>,  <31.378670, 34.040779, 25.051176>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.616358, 34.754181, 25.323524> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.311758, 34.678234, 25.571419>,  <31.128998, 34.632668, 25.720156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.311758, 34.678234, 25.571419>,  <31.616358, 34.754181, 25.323524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.311758, 34.678234, 25.571419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457307, 0.520205, 0.721289,
		-0.459339, 0.832669, -0.309307,
		-0.761497, -0.189868, 0.619735,
		31.083309, 34.621273, 25.757339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.433979, 35.418747, 25.588400>,  <31.616358, 34.754181, 25.323524>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.433979, 35.418747, 25.588400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.257685, 35.173378, 25.850534>,  <31.151907, 35.026157, 26.007814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.257685, 35.173378, 25.850534>,  <31.433979, 35.418747, 25.588400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.257685, 35.173378, 25.850534> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536847, 0.404978, 0.740128,
		-0.719407, 0.678016, 0.150825,
		-0.440738, -0.613422, 0.655334,
		31.125463, 34.989353, 26.047134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.177120, 35.869778, 26.145142>,  <31.433979, 35.418747, 25.588400>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.177120, 35.869778, 26.145142> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.221922, 35.507744, 26.309231>,  <31.248804, 35.290524, 26.407684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.221922, 35.507744, 26.309231>,  <31.177120, 35.869778, 26.145142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.221922, 35.507744, 26.309231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537584, 0.402383, 0.741007,
		-0.835738, 0.137531, 0.531627,
		0.112006, -0.905082, 0.410222,
		31.255524, 35.236217, 26.432297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.045521, 36.024891, 26.758764>,  <31.177120, 35.869778, 26.145142>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.045521, 36.024891, 26.758764> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.238827, 35.675636, 26.784355>,  <31.354811, 35.466084, 26.799709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.238827, 35.675636, 26.784355>,  <31.045521, 36.024891, 26.758764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.238827, 35.675636, 26.784355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586632, 0.377204, 0.716645,
		-0.649860, -0.308798, 0.694497,
		0.483266, -0.873133, 0.063979,
		31.383806, 35.413696, 26.803549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.022665, 35.821030, 27.449873>,  <31.045521, 36.024891, 26.758764>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.022665, 35.821030, 27.449873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.334339, 35.615982, 27.305599>,  <31.521343, 35.492954, 27.219036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.334339, 35.615982, 27.305599>,  <31.022665, 35.821030, 27.449873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.334339, 35.615982, 27.305599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581558, 0.376623, 0.721072,
		-0.233793, -0.771607, 0.591576,
		0.779186, -0.512618, -0.360682,
		31.568094, 35.462196, 27.197395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.532738, 35.281712, 27.561838>,  <31.022665, 35.821030, 27.449873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.532738, 35.281712, 27.561838> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.225124, 35.426804, 27.772367>,  <30.040556, 35.513859, 27.898685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.225124, 35.426804, 27.772367>,  <30.532738, 35.281712, 27.561838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.225124, 35.426804, 27.772367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528841, 0.101460, -0.842634,
		-0.359046, -0.926356, 0.113798,
		-0.769034, 0.362726, 0.526324,
		29.994413, 35.535622, 27.930265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.943439, 34.913342, 27.291029>,  <30.532738, 35.281712, 27.561838>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.943439, 34.913342, 27.291029> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.772329, 35.225079, 27.474169>,  <29.669662, 35.412121, 27.584053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.772329, 35.225079, 27.474169>,  <29.943439, 34.913342, 27.291029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.772329, 35.225079, 27.474169> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620260, 0.115352, -0.775868,
		-0.657484, -0.615884, 0.434053,
		-0.427776, 0.779346, 0.457850,
		29.643997, 35.458881, 27.611525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.223890, 34.772537, 27.238159>,  <29.943439, 34.913342, 27.291029>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.223890, 34.772537, 27.238159> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.280746, 35.166294, 27.279655>,  <29.314861, 35.402550, 27.304554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.280746, 35.166294, 27.279655>,  <29.223890, 34.772537, 27.238159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.280746, 35.166294, 27.279655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619189, 0.170195, -0.766576,
		-0.772270, 0.044726, 0.633718,
		0.142141, 0.984395, 0.103743,
		29.323389, 35.461613, 27.310778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.572851, 35.141983, 27.348858>,  <29.223890, 34.772537, 27.238159>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.572851, 35.141983, 27.348858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.779516, 35.454887, 27.209644>,  <28.903515, 35.642628, 27.126116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.779516, 35.454887, 27.209644>,  <28.572851, 35.141983, 27.348858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.779516, 35.454887, 27.209644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686929, 0.136093, -0.713868,
		-0.511064, 0.607906, 0.607671,
		0.516665, 0.782259, -0.348036,
		28.934515, 35.689564, 27.105234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.062223, 35.578465, 27.119118>,  <28.572851, 35.141983, 27.348858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.062223, 35.578465, 27.119118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.388584, 35.725899, 26.940928>,  <28.584400, 35.814362, 26.834013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.388584, 35.725899, 26.940928>,  <28.062223, 35.578465, 27.119118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.388584, 35.725899, 26.940928> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553813, 0.276827, -0.785276,
		-0.166123, 0.887418, 0.429992,
		0.815901, 0.368587, -0.445476,
		28.633354, 35.836475, 26.807285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.775688, 36.115036, 26.776247>,  <28.062223, 35.578465, 27.119118>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.775688, 36.115036, 26.776247> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.121733, 36.048504, 26.586967>,  <28.329359, 36.008583, 26.473400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.121733, 36.048504, 26.586967>,  <27.775688, 36.115036, 26.776247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.121733, 36.048504, 26.586967> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457886, 0.123226, -0.880429,
		0.204752, 0.978340, 0.030444,
		0.865111, -0.166330, -0.473200,
		28.381266, 35.998604, 26.445007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.881510, 36.718781, 26.261292>,  <27.775688, 36.115036, 26.776247>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.881510, 36.718781, 26.261292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.083244, 36.395096, 26.140743>,  <28.204285, 36.200886, 26.068415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.083244, 36.395096, 26.140743>,  <27.881510, 36.718781, 26.261292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.083244, 36.395096, 26.140743> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463878, 0.040480, -0.884974,
		0.728329, 0.586124, -0.354959,
		0.504336, -0.809209, -0.301373,
		28.234545, 36.152332, 26.050331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.009499, 36.830616, 25.571043>,  <27.881510, 36.718781, 26.261292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.009499, 36.830616, 25.571043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.079929, 36.438454, 25.606388>,  <28.122189, 36.203156, 25.627596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.079929, 36.438454, 25.606388>,  <28.009499, 36.830616, 25.571043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.079929, 36.438454, 25.606388> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387310, -0.151523, -0.909413,
		0.904979, 0.125903, -0.406400,
		0.176077, -0.980402, 0.088362,
		28.132753, 36.144333, 25.632896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.289135, 36.624020, 24.953901>,  <28.009499, 36.830616, 25.571043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.289135, 36.624020, 24.953901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.181561, 36.264690, 25.092863>,  <28.117016, 36.049091, 25.176241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.181561, 36.264690, 25.092863>,  <28.289135, 36.624020, 24.953901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.181561, 36.264690, 25.092863> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325734, -0.254611, -0.910533,
		0.906405, -0.358038, -0.224140,
		-0.268937, -0.898322, 0.347406,
		28.100880, 35.995193, 25.197084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.519783, 36.036495, 24.484097>,  <28.289135, 36.624020, 24.953901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.519783, 36.036495, 24.484097> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.219215, 35.891685, 24.704752>,  <28.038876, 35.804798, 24.837145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.219215, 35.891685, 24.704752>,  <28.519783, 36.036495, 24.484097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.219215, 35.891685, 24.704752> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446149, -0.337183, -0.829011,
		0.486128, -0.869047, 0.091847,
		-0.751419, -0.362028, 0.551638,
		27.993790, 35.783077, 24.870243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.555136, 35.462532, 24.213682>,  <28.519783, 36.036495, 24.484097>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.555136, 35.462532, 24.213682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.191273, 35.491379, 24.377304>,  <27.972956, 35.508686, 24.475477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.191273, 35.491379, 24.377304>,  <28.555136, 35.462532, 24.213682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.191273, 35.491379, 24.377304> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402582, -0.395489, -0.825540,
		0.102240, -0.915635, 0.388792,
		-0.909656, 0.072117, 0.409053,
		27.918375, 35.513016, 24.500021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.190641, 34.738705, 24.162922>,  <28.555136, 35.462532, 24.213682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.190641, 34.738705, 24.162922> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.887251, 34.995934, 24.205194>,  <27.705215, 35.150272, 24.230558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.887251, 34.995934, 24.205194>,  <28.190641, 34.738705, 24.162922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.887251, 34.995934, 24.205194> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436973, -0.381531, -0.814548,
		-0.483494, -0.663996, 0.570389,
		-0.758477, 0.643073, 0.105681,
		27.659708, 35.188854, 24.236898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.552076, 34.380405, 24.060442>,  <28.190641, 34.738705, 24.162922>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.552076, 34.380405, 24.060442> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.421370, 34.756786, 24.025030>,  <27.342945, 34.982613, 24.003782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.421370, 34.756786, 24.025030>,  <27.552076, 34.380405, 24.060442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.421370, 34.756786, 24.025030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644901, -0.290467, -0.706917,
		-0.690889, -0.173902, 0.701734,
		-0.326765, 0.940950, -0.088531,
		27.323339, 35.039070, 23.998470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.791000, 33.869823, 24.539431>,  <27.552076, 34.380405, 24.060442>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.791000, 33.869823, 24.539431> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.535717, 33.561932, 24.545269>,  <27.382547, 33.377197, 24.548773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.535717, 33.561932, 24.545269>,  <27.791000, 33.869823, 24.539431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.535717, 33.561932, 24.545269> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048293, -0.021106, 0.998610,
		-0.768347, 0.638027, 0.050642,
		-0.638209, -0.769725, 0.014595,
		27.344254, 33.331013, 24.549648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.419634, 34.047554, 25.042967>,  <27.791000, 33.869823, 24.539431>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.419634, 34.047554, 25.042967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.323257, 33.660416, 25.014072>,  <27.265432, 33.428131, 24.996735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.323257, 33.660416, 25.014072>,  <27.419634, 34.047554, 25.042967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.323257, 33.660416, 25.014072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132554, -0.106549, 0.985432,
		-0.961445, 0.227856, 0.153964,
		-0.240942, -0.967847, -0.072238,
		27.250975, 33.370060, 24.992401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.978559, 34.010933, 25.581430>,  <27.419634, 34.047554, 25.042967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.978559, 34.010933, 25.581430> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.110031, 33.647396, 25.478682>,  <27.188913, 33.429276, 25.417032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.110031, 33.647396, 25.478682>,  <26.978559, 34.010933, 25.581430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.110031, 33.647396, 25.478682> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210743, -0.194549, 0.957986,
		-0.920629, -0.369002, 0.127588,
		0.328677, -0.908839, -0.256872,
		27.208633, 33.374744, 25.401621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.666592, 33.594833, 26.057064>,  <26.978559, 34.010933, 25.581430>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.666592, 33.594833, 26.057064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.961258, 33.368839, 25.908407>,  <27.138058, 33.233242, 25.819212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.961258, 33.368839, 25.908407>,  <26.666592, 33.594833, 26.057064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.961258, 33.368839, 25.908407> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252981, -0.279423, 0.926242,
		-0.627158, -0.776348, -0.062911,
		0.736664, -0.564984, -0.371643,
		27.182257, 33.199345, 25.796915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.600639, 32.960232, 26.394886>,  <26.666592, 33.594833, 26.057064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.600639, 32.960232, 26.394886> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.974340, 32.933899, 26.254690>,  <27.198561, 32.918098, 26.170572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.974340, 32.933899, 26.254690>,  <26.600639, 32.960232, 26.394886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.974340, 32.933899, 26.254690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293018, -0.418487, 0.859656,
		-0.203264, -0.905834, -0.371683,
		0.934251, -0.065827, -0.350489,
		27.254616, 32.914150, 26.149544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.946089, 32.197269, 26.475845>,  <26.600639, 32.960232, 26.394886>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.946089, 32.197269, 26.475845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.232903, 32.475418, 26.456570>,  <27.404991, 32.642307, 26.445005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.232903, 32.475418, 26.456570>,  <26.946089, 32.197269, 26.475845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.232903, 32.475418, 26.456570> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502724, -0.468024, 0.726788,
		0.482833, -0.545358, -0.685169,
		0.717036, 0.695369, -0.048187,
		27.448013, 32.684029, 26.442114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.648674, 31.866663, 26.277731>,  <26.946089, 32.197269, 26.475845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.648674, 31.866663, 26.277731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.712982, 32.212929, 26.467373>,  <27.751568, 32.420689, 26.581158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.712982, 32.212929, 26.467373>,  <27.648674, 31.866663, 26.277731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.712982, 32.212929, 26.467373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554322, -0.476632, 0.682311,
		0.816627, 0.153110, -0.556486,
		0.160770, 0.865667, 0.474103,
		27.761213, 32.472630, 26.609604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.418339, 31.969810, 26.370722>,  <27.648674, 31.866663, 26.277731>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.418339, 31.969810, 26.370722> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.231548, 32.181271, 26.654261>,  <28.119474, 32.308147, 26.824383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.231548, 32.181271, 26.654261>,  <28.418339, 31.969810, 26.370722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.231548, 32.181271, 26.654261> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529373, -0.474970, 0.702971,
		0.708305, 0.703515, -0.058053,
		-0.466977, 0.528650, 0.708846,
		28.091455, 32.339867, 26.866915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.832737, 31.290632, 26.364710>,  <28.418339, 31.969810, 26.370722>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.832737, 31.290632, 26.364710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.889971, 30.913078, 26.483776>,  <28.924311, 30.686546, 26.555216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.889971, 30.913078, 26.483776>,  <28.832737, 31.290632, 26.364710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.889971, 30.913078, 26.483776> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662959, -0.314719, -0.679292,
		0.734856, -0.100145, -0.670789,
		0.143082, -0.943887, 0.297666,
		28.932896, 30.629911, 26.573076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.090286, 30.872175, 25.784231>,  <28.832737, 31.290632, 26.364710>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.090286, 30.872175, 25.784231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.892624, 30.653099, 26.054296>,  <28.774027, 30.521654, 26.216335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.892624, 30.653099, 26.054296>,  <29.090286, 30.872175, 25.784231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.892624, 30.653099, 26.054296> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692577, -0.221423, -0.686520,
		0.525496, -0.806850, -0.269900,
		-0.494157, -0.547690, 0.675163,
		28.744377, 30.488792, 26.256845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.752668, 30.313921, 25.414980>,  <29.090286, 30.872175, 25.784231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.752668, 30.313921, 25.414980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.547951, 30.276459, 25.756575>,  <28.425119, 30.253981, 25.961531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.547951, 30.276459, 25.756575>,  <28.752668, 30.313921, 25.414980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.547951, 30.276459, 25.756575> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737469, -0.462008, -0.492634,
		0.440687, -0.881917, 0.167384,
		-0.511795, -0.093657, 0.853988,
		28.394413, 30.248362, 26.012772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.564524, 29.670139, 25.478868>,  <28.752668, 30.313921, 25.414980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.564524, 29.670139, 25.478868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.309427, 29.852806, 25.726978>,  <28.156370, 29.962406, 25.875845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.309427, 29.852806, 25.726978>,  <28.564524, 29.670139, 25.478868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.309427, 29.852806, 25.726978> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764739, -0.471559, -0.439097,
		0.091975, -0.754379, 0.649963,
		-0.637741, 0.456667, 0.620276,
		28.118105, 29.989805, 25.913061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.157139, 29.135151, 25.748449>,  <28.564524, 29.670139, 25.478868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.157139, 29.135151, 25.748449> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.957193, 29.481155, 25.765863>,  <27.837227, 29.688757, 25.776312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.957193, 29.481155, 25.765863>,  <28.157139, 29.135151, 25.748449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.957193, 29.481155, 25.765863> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738293, -0.399280, -0.543599,
		-0.452838, -0.303862, 0.838216,
		-0.499861, 0.865011, 0.043530,
		27.807234, 29.740658, 25.778923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.501419, 28.896259, 25.554649>,  <28.157139, 29.135151, 25.748449>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.501419, 28.896259, 25.554649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.434612, 29.289627, 25.582903>,  <27.394529, 29.525648, 25.599855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.434612, 29.289627, 25.582903>,  <27.501419, 28.896259, 25.554649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.434612, 29.289627, 25.582903> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864240, -0.111541, -0.490559,
		-0.474548, -0.142975, 0.868541,
		-0.167016, 0.983421, 0.070633,
		27.384508, 29.584654, 25.604094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.788784, 29.043463, 25.770441>,  <27.501419, 28.896259, 25.554649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.788784, 29.043463, 25.770441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.897490, 29.369600, 25.565948>,  <26.962713, 29.565283, 25.443253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.897490, 29.369600, 25.565948>,  <26.788784, 29.043463, 25.770441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.897490, 29.369600, 25.565948> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877731, -0.007839, -0.479089,
		-0.394631, 0.578921, 0.713524,
		0.271761, 0.815346, -0.511231,
		26.979017, 29.614204, 25.412579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.302469, 29.426085, 25.877277>,  <26.788784, 29.043463, 25.770441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.302469, 29.426085, 25.877277> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.486683, 29.572454, 25.553795>,  <26.597212, 29.660276, 25.359705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.486683, 29.572454, 25.553795>,  <26.302469, 29.426085, 25.877277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.486683, 29.572454, 25.553795> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866096, -0.014269, -0.499674,
		-0.194383, 0.930535, 0.310354,
		0.460535, 0.365924, -0.808707,
		26.624844, 29.682232, 25.311182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.865511, 29.951412, 25.624468>,  <26.302469, 29.426085, 25.877277>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.865511, 29.951412, 25.624468> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.091202, 29.786121, 25.338560>,  <26.226616, 29.686947, 25.167015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.091202, 29.786121, 25.338560>,  <25.865511, 29.951412, 25.624468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.091202, 29.786121, 25.338560> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820216, -0.181663, -0.542442,
		0.094304, 0.892325, -0.441433,
		0.564227, -0.413225, -0.714768,
		26.260469, 29.662153, 25.124130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.299191, 33.398273, 36.581627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.516224, 33.230316, 36.290615>,  <37.646442, 33.129543, 36.116009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.516224, 33.230316, 36.290615>,  <37.299191, 33.398273, 36.581627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.516224, 33.230316, 36.290615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757648, 0.129369, -0.639713,
		0.362730, 0.898306, -0.247937,
		0.542583, -0.419892, -0.727526,
		37.678997, 33.104347, 36.072357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217113, 33.832672, 35.921623>,  <37.299191, 33.398273, 36.581627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217113, 33.832672, 35.921623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.311214, 33.463444, 35.799900>,  <37.367676, 33.241909, 35.726864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.311214, 33.463444, 35.799900>,  <37.217113, 33.832672, 35.921623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.311214, 33.463444, 35.799900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856254, -0.048688, -0.514255,
		0.459875, 0.381547, -0.801833,
		0.235252, -0.923066, -0.304311,
		37.381790, 33.186523, 35.708607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016266, 33.843315, 35.198498>,  <37.217113, 33.832672, 35.921623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016266, 33.843315, 35.198498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.065903, 33.460697, 35.304035>,  <37.095684, 33.231125, 35.367359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.065903, 33.460697, 35.304035>,  <37.016266, 33.843315, 35.198498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.065903, 33.460697, 35.304035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811923, -0.250743, -0.527171,
		0.570422, -0.148804, -0.807760,
		0.124095, -0.956548, 0.263847,
		37.103130, 33.173733, 35.383190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038822, 33.392094, 34.526520>,  <37.016266, 33.843315, 35.198498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.038822, 33.392094, 34.526520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.933022, 33.124012, 34.803898>,  <36.869541, 32.963165, 34.970325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.933022, 33.124012, 34.803898>,  <37.038822, 33.392094, 34.526520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.933022, 33.124012, 34.803898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664395, -0.394554, -0.634749,
		0.699012, -0.628615, -0.340918,
		-0.264502, -0.670202, 0.693447,
		36.853672, 32.922951, 35.011932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987961, 32.721069, 34.216892>,  <37.038822, 33.392094, 34.526520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.987961, 32.721069, 34.216892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.758888, 32.707176, 34.544510>,  <36.621445, 32.698841, 34.741081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.758888, 32.707176, 34.544510>,  <36.987961, 32.721069, 34.216892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758888, 32.707176, 34.544510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771571, -0.314732, -0.552831,
		0.276979, -0.948545, 0.153444,
		-0.572679, -0.034729, 0.819044,
		36.587086, 32.696758, 34.790222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806286, 32.058846, 34.337185>,  <36.987961, 32.721069, 34.216892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.806286, 32.058846, 34.337185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.531658, 32.252525, 34.554138>,  <36.366882, 32.368732, 34.684311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.531658, 32.252525, 34.554138>,  <36.806286, 32.058846, 34.337185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531658, 32.252525, 34.554138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720355, -0.351874, -0.597723,
		-0.098568, -0.801084, 0.590381,
		-0.686566, 0.484200, 0.542382,
		36.325687, 32.397785, 34.716854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309669, 31.649977, 34.286053>,  <36.806286, 32.058846, 34.337185>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.309669, 31.649977, 34.286053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.125050, 31.938875, 34.492096>,  <36.014278, 32.112213, 34.615723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.125050, 31.938875, 34.492096>,  <36.309669, 31.649977, 34.286053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125050, 31.938875, 34.492096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886031, -0.346593, -0.307933,
		-0.043871, -0.598525, 0.799902,
		-0.461546, 0.722247, 0.515106,
		35.986588, 32.155548, 34.646629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.665104, 31.348417, 34.683739>,  <36.309669, 31.649977, 34.286053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.665104, 31.348417, 34.683739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.574028, 31.729431, 34.602905>,  <35.519382, 31.958038, 34.554405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.574028, 31.729431, 34.602905>,  <35.665104, 31.348417, 34.683739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574028, 31.729431, 34.602905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732617, -0.304288, -0.608836,
		-0.641428, 0.009424, 0.767125,
		-0.227689, 0.952533, -0.202083,
		35.505722, 32.015190, 34.542282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980770, 31.373243, 34.716717>,  <35.665104, 31.348417, 34.683739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980770, 31.373243, 34.716717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.055096, 31.709320, 34.512932>,  <35.099689, 31.910967, 34.390659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.055096, 31.709320, 34.512932>,  <34.980770, 31.373243, 34.716717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.055096, 31.709320, 34.512932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816455, -0.156461, -0.555807,
		-0.546696, 0.519227, 0.656907,
		0.185809, 0.840192, -0.509462,
		35.110840, 31.961378, 34.360092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.354458, 31.725473, 34.690414>,  <34.980770, 31.373243, 34.716717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.354458, 31.725473, 34.690414> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.571205, 31.902330, 34.404507>,  <34.701252, 32.008446, 34.232964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.571205, 31.902330, 34.404507>,  <34.354458, 31.725473, 34.690414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.571205, 31.902330, 34.404507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755148, -0.117221, -0.644989,
		-0.368963, 0.889252, 0.270365,
		0.541866, 0.442143, -0.714767,
		34.733765, 32.034973, 34.190075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.912754, 32.088570, 34.319286>,  <34.354458, 31.725473, 34.690414>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.912754, 32.088570, 34.319286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.213135, 32.070183, 34.055782>,  <34.393364, 32.059151, 33.897678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.213135, 32.070183, 34.055782>,  <33.912754, 32.088570, 34.319286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.213135, 32.070183, 34.055782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655792, 0.065243, -0.752117,
		0.077554, 0.996810, 0.018848,
		0.750947, -0.045970, -0.658760,
		34.438419, 32.056393, 33.858154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.733551, 32.535919, 33.803764>,  <33.912754, 32.088570, 34.319286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.733551, 32.535919, 33.803764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.967850, 32.275295, 33.610947>,  <34.108429, 32.118919, 33.495258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.967850, 32.275295, 33.610947>,  <33.733551, 32.535919, 33.803764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967850, 32.275295, 33.610947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614755, 0.030421, -0.788131,
		0.528182, 0.757984, -0.382733,
		0.585747, -0.651564, -0.482042,
		34.143574, 32.079826, 33.466335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274265, 33.052025, 33.484901>,  <33.733551, 32.535919, 33.803764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.274265, 33.052025, 33.484901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.006462, 33.094563, 33.778965>,  <32.845779, 33.120087, 33.955402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.006462, 33.094563, 33.778965>,  <33.274265, 33.052025, 33.484901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.006462, 33.094563, 33.778965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721840, 0.326630, 0.610131,
		-0.175238, 0.939150, -0.295446,
		-0.669506, 0.106347, 0.735154,
		32.805611, 33.126465, 33.999512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.516033, 33.662853, 33.875378>,  <33.274265, 33.052025, 33.484901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.516033, 33.662853, 33.875378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.273609, 33.469109, 34.127754>,  <33.128155, 33.352859, 34.279179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.273609, 33.469109, 34.127754>,  <33.516033, 33.662853, 33.875378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.273609, 33.469109, 34.127754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602174, 0.238858, 0.761796,
		-0.519693, 0.841627, 0.146910,
		-0.606058, -0.484365, 0.630939,
		33.091793, 33.323799, 34.317036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523224, 34.063290, 34.502708>,  <33.516033, 33.662853, 33.875378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523224, 34.063290, 34.502708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.391239, 33.712345, 34.642059>,  <33.312050, 33.501778, 34.725670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.391239, 33.712345, 34.642059>,  <33.523224, 34.063290, 34.502708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.391239, 33.712345, 34.642059> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355500, 0.226386, 0.906846,
		-0.874497, 0.423071, 0.237203,
		-0.329961, -0.877360, 0.348375,
		33.292252, 33.449139, 34.746571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.558254, 34.236748, 35.199200>,  <33.523224, 34.063290, 34.502708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.558254, 34.236748, 35.199200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.522118, 33.838543, 35.187992>,  <33.500435, 33.599617, 35.181267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.522118, 33.838543, 35.187992>,  <33.558254, 34.236748, 35.199200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522118, 33.838543, 35.187992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467368, -0.067225, 0.881503,
		-0.879435, 0.066537, 0.471346,
		-0.090339, -0.995517, -0.028023,
		33.495014, 33.539886, 35.179585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.225342, 34.040352, 35.810444>,  <33.558254, 34.236748, 35.199200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.225342, 34.040352, 35.810444> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.436878, 33.716911, 35.707298>,  <33.563801, 33.522846, 35.645412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.436878, 33.716911, 35.707298>,  <33.225342, 34.040352, 35.810444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.436878, 33.716911, 35.707298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339449, -0.076956, 0.937471,
		-0.777881, -0.583307, 0.233780,
		0.528843, -0.808598, -0.257865,
		33.595531, 33.474331, 35.629940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.015648, 33.572575, 36.311386>,  <33.225342, 34.040352, 35.810444>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.015648, 33.572575, 36.311386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.369358, 33.465725, 36.158180>,  <33.581585, 33.401615, 36.066257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.369358, 33.465725, 36.158180>,  <33.015648, 33.572575, 36.311386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.369358, 33.465725, 36.158180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395524, -0.007552, 0.918425,
		-0.248226, -0.963633, 0.098976,
		0.884276, -0.267124, -0.383014,
		33.634640, 33.385590, 36.043278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.159122, 33.101627, 36.746861>,  <33.015648, 33.572575, 36.311386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.159122, 33.101627, 36.746861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.513165, 33.203037, 36.590752>,  <33.725590, 33.263882, 36.497086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.513165, 33.203037, 36.590752>,  <33.159122, 33.101627, 36.746861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513165, 33.203037, 36.590752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425916, -0.103301, 0.898846,
		0.187562, -0.961798, -0.199411,
		0.885108, 0.253522, -0.390270,
		33.778698, 33.279095, 36.473671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.597363, 32.883808, 37.224644>,  <33.159122, 33.101627, 36.746861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.597363, 32.883808, 37.224644> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.799767, 33.139523, 36.993034>,  <33.921207, 33.292950, 36.854069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.799767, 33.139523, 36.993034>,  <33.597363, 32.883808, 37.224644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.799767, 33.139523, 36.993034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341138, 0.468243, 0.815091,
		0.792200, -0.609970, 0.018851,
		0.506008, 0.639285, -0.579026,
		33.951569, 33.331306, 36.819328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.256729, 32.989098, 37.569553>,  <33.597363, 32.883808, 37.224644>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.256729, 32.989098, 37.569553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.228573, 33.311085, 37.333904>,  <34.211678, 33.504276, 37.192516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.228573, 33.311085, 37.333904>,  <34.256729, 32.989098, 37.569553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228573, 33.311085, 37.333904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175108, 0.591389, 0.787145,
		0.982029, -0.047749, -0.182587,
		-0.070395, 0.804972, -0.589122,
		34.207455, 33.552578, 37.157169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817921, 33.414265, 37.734089>,  <34.256729, 32.989098, 37.569553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.817921, 33.414265, 37.734089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.587917, 33.659798, 37.517727>,  <34.449913, 33.807117, 37.387909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.587917, 33.659798, 37.517727>,  <34.817921, 33.414265, 37.734089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587917, 33.659798, 37.517727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170783, 0.736622, 0.654387,
		0.800121, 0.283904, -0.528399,
		-0.575013, 0.613830, -0.540900,
		34.415413, 33.843948, 37.355457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208870, 34.041065, 37.741669>,  <34.817921, 33.414265, 37.734089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.208870, 34.041065, 37.741669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.832092, 34.147057, 37.659172>,  <34.606026, 34.210651, 37.609676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.832092, 34.147057, 37.659172>,  <35.208870, 34.041065, 37.741669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.832092, 34.147057, 37.659172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039666, 0.697719, 0.715272,
		0.333429, 0.665563, -0.667721,
		-0.941940, 0.264978, -0.206240,
		34.549511, 34.226551, 37.597301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163651, 34.701122, 37.540379>,  <35.208870, 34.041065, 37.741669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163651, 34.701122, 37.540379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.805962, 34.611351, 37.695293>,  <34.591347, 34.557487, 37.788242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.805962, 34.611351, 37.695293>,  <35.163651, 34.701122, 37.540379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.805962, 34.611351, 37.695293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033896, 0.828782, 0.558544,
		-0.446330, 0.512592, -0.733511,
		-0.894226, -0.224431, 0.387286,
		34.537693, 34.544022, 37.811478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.858631, 35.275043, 37.534294>,  <35.163651, 34.701122, 37.540379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.858631, 35.275043, 37.534294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.644455, 35.079838, 37.810017>,  <34.515949, 34.962715, 37.975449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.644455, 35.079838, 37.810017>,  <34.858631, 35.275043, 37.534294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.644455, 35.079838, 37.810017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049539, 0.796609, 0.602462,
		-0.843119, 0.356730, -0.402361,
		-0.535441, -0.488015, 0.689308,
		34.483822, 34.933434, 38.016808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.329197, 35.751518, 37.658428>,  <34.858631, 35.275043, 37.534294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.329197, 35.751518, 37.658428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.315350, 35.507046, 37.974720>,  <34.307041, 35.360363, 38.164497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.315350, 35.507046, 37.974720>,  <34.329197, 35.751518, 37.658428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.315350, 35.507046, 37.974720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053625, 0.791202, 0.609200,
		-0.997961, -0.021315, -0.060163,
		-0.034616, -0.611184, 0.790731,
		34.304966, 35.323692, 38.211941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.707020, 35.927826, 38.027107>,  <34.329197, 35.751518, 37.658428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.707020, 35.927826, 38.027107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.028454, 35.792065, 38.222683>,  <34.221313, 35.710606, 38.340027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.028454, 35.792065, 38.222683>,  <33.707020, 35.927826, 38.027107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028454, 35.792065, 38.222683> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041283, 0.851279, 0.523087,
		-0.593759, -0.400159, 0.698085,
		0.803583, -0.339407, 0.488935,
		34.269527, 35.690243, 38.369362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859848, 36.628883, 38.262737>,  <33.707020, 35.927826, 38.027107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859848, 36.628883, 38.262737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.554405, 36.371262, 38.281105>,  <33.371140, 36.216690, 38.292126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.554405, 36.371262, 38.281105>,  <33.859848, 36.628883, 38.262737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.554405, 36.371262, 38.281105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454971, -0.587157, -0.669513,
		0.458162, -0.490351, 0.741379,
		-0.763602, -0.644052, 0.045917,
		33.325325, 36.178047, 38.294880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971039, 36.913193, 37.663372>,  <33.859848, 36.628883, 38.262737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971039, 36.913193, 37.663372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.236652, 36.943230, 37.365803>,  <34.396023, 36.961254, 37.187263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.236652, 36.943230, 37.365803>,  <33.971039, 36.913193, 37.663372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.236652, 36.943230, 37.365803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747699, 0.067848, -0.660563,
		0.000869, 0.994866, 0.101201,
		0.664038, 0.075094, -0.743919,
		34.435863, 36.965759, 37.142628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.608578, 37.269970, 37.106632>,  <33.971039, 36.913193, 37.663372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.608578, 37.269970, 37.106632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.916435, 37.087746, 36.927692>,  <34.101151, 36.978413, 36.820328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.916435, 37.087746, 36.927692>,  <33.608578, 37.269970, 37.106632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916435, 37.087746, 36.927692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550357, -0.118176, -0.826524,
		0.323664, 0.882327, -0.341672,
		0.769642, -0.455558, -0.447345,
		34.147327, 36.951077, 36.793488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719673, 37.622536, 36.434048>,  <33.608578, 37.269970, 37.106632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719673, 37.622536, 36.434048> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.895500, 37.265148, 36.397194>,  <34.000996, 37.050716, 36.375084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.895500, 37.265148, 36.397194>,  <33.719673, 37.622536, 36.434048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895500, 37.265148, 36.397194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525674, -0.172725, -0.832966,
		0.728319, 0.414576, -0.545600,
		0.439566, -0.893472, -0.092133,
		34.027370, 36.997105, 36.369553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900101, 37.584499, 35.781471>,  <33.719673, 37.622536, 36.434048>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900101, 37.584499, 35.781471> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.901112, 37.196922, 35.880386>,  <33.901718, 36.964378, 35.939735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.901112, 37.196922, 35.880386>,  <33.900101, 37.584499, 35.781471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901112, 37.196922, 35.880386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433259, -0.223935, -0.873007,
		0.901266, -0.104935, -0.420367,
		0.002526, -0.968939, 0.247288,
		33.901871, 36.906242, 35.954575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034866, 37.175377, 35.123894>,  <33.900101, 37.584499, 35.781471>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.034866, 37.175377, 35.123894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.894020, 36.898338, 35.375713>,  <33.809513, 36.732117, 35.526806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.894020, 36.898338, 35.375713>,  <34.034866, 37.175377, 35.123894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.894020, 36.898338, 35.375713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666568, -0.286618, -0.688140,
		0.657042, -0.661939, -0.360740,
		-0.352112, -0.692594, 0.629548,
		33.788387, 36.690559, 35.564579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226921, 36.529339, 34.837154>,  <34.034866, 37.175377, 35.123894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226921, 36.529339, 34.837154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.902580, 36.468643, 35.063251>,  <33.707977, 36.432228, 35.198910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.902580, 36.468643, 35.063251>,  <34.226921, 36.529339, 34.837154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902580, 36.468643, 35.063251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451497, -0.452357, -0.769106,
		0.372394, -0.878834, 0.298285,
		-0.810847, -0.151736, 0.565246,
		33.659325, 36.423122, 35.232826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.089420, 35.873257, 34.723484>,  <34.226921, 36.529339, 34.837154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.089420, 35.873257, 34.723484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.751831, 36.024952, 34.875210>,  <33.549278, 36.115971, 34.966248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.751831, 36.024952, 34.875210>,  <34.089420, 35.873257, 34.723484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751831, 36.024952, 34.875210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512626, -0.362181, -0.778485,
		-0.157847, -0.851472, 0.500079,
		-0.843978, 0.379235, 0.379318,
		33.498638, 36.138721, 34.989006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664051, 35.342751, 34.711765>,  <34.089420, 35.873257, 34.723484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.664051, 35.342751, 34.711765> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.435463, 35.669933, 34.738194>,  <33.298309, 35.866245, 34.754051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.435463, 35.669933, 34.738194>,  <33.664051, 35.342751, 34.711765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435463, 35.669933, 34.738194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511625, -0.292177, -0.808005,
		-0.641610, -0.495555, 0.585459,
		-0.571468, 0.817960, 0.066075,
		33.264023, 35.915321, 34.758015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.020607, 35.113613, 34.596676>,  <33.664051, 35.342751, 34.711765>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.020607, 35.113613, 34.596676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.978821, 35.502365, 34.512257>,  <32.953751, 35.735615, 34.461605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.978821, 35.502365, 34.512257>,  <33.020607, 35.113613, 34.596676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.978821, 35.502365, 34.512257> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676748, -0.224968, -0.701001,
		-0.728766, 0.069598, 0.681217,
		-0.104464, 0.971878, -0.211050,
		32.947483, 35.793930, 34.448940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.316784, 35.235725, 34.595173>,  <33.020607, 35.113613, 34.596676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.316784, 35.235725, 34.595173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.472969, 35.548382, 34.400616>,  <32.566681, 35.735977, 34.283882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.472969, 35.548382, 34.400616>,  <32.316784, 35.235725, 34.595173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.472969, 35.548382, 34.400616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745554, -0.041474, -0.665154,
		-0.540083, 0.622349, 0.566561,
		0.390460, 0.781640, -0.486394,
		32.590107, 35.782875, 34.254696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.783382, 35.466274, 34.411366>,  <32.316784, 35.235725, 34.595173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.783382, 35.466274, 34.411366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.052113, 35.644234, 34.174480>,  <32.213348, 35.751011, 34.032349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.052113, 35.644234, 34.174480>,  <31.783382, 35.466274, 34.411366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.052113, 35.644234, 34.174480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611047, -0.119010, -0.782597,
		-0.418658, 0.887637, 0.191902,
		0.671823, 0.444902, -0.592213,
		32.253658, 35.777702, 33.996815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.409475, 35.888348, 33.904041>,  <31.783382, 35.466274, 34.411366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.409475, 35.888348, 33.904041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.760399, 35.864380, 33.713573>,  <31.970953, 35.849998, 33.599293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.760399, 35.864380, 33.713573>,  <31.409475, 35.888348, 33.904041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.760399, 35.864380, 33.713573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469324, -0.314475, -0.825131,
		-0.100303, 0.947373, -0.304013,
		0.877311, -0.059918, -0.476167,
		32.023594, 35.846405, 33.570724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.269999, 36.260777, 33.355782>,  <31.409475, 35.888348, 33.904041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.269999, 36.260777, 33.355782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.585539, 36.037853, 33.252148>,  <31.774862, 35.904099, 33.189968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.585539, 36.037853, 33.252148>,  <31.269999, 36.260777, 33.355782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.585539, 36.037853, 33.252148> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435875, -0.210133, -0.875133,
		0.433275, 0.803277, -0.408679,
		0.788851, -0.557306, -0.259083,
		31.822195, 35.870663, 33.174423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.668497, 36.685886, 32.783264>,  <31.269999, 36.260777, 33.355782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.668497, 36.685886, 32.783264> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.726107, 36.291019, 32.810837>,  <31.760674, 36.054100, 32.827381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.726107, 36.291019, 32.810837>,  <31.668497, 36.685886, 32.783264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.726107, 36.291019, 32.810837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178550, -0.094438, -0.979388,
		0.973333, 0.128750, -0.189861,
		0.144026, -0.987170, 0.068931,
		31.769314, 35.994869, 32.831516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.144196, 36.495510, 32.249508>,  <31.668497, 36.685886, 32.783264>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.144196, 36.495510, 32.249508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.952635, 36.162148, 32.359844>,  <31.837698, 35.962132, 32.426048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.952635, 36.162148, 32.359844>,  <32.144196, 36.495510, 32.249508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.952635, 36.162148, 32.359844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208561, -0.197210, -0.957920,
		0.852733, -0.516281, -0.079371,
		-0.478903, -0.833404, 0.275844,
		31.808964, 35.912125, 32.442596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.461014, 35.854652, 31.847561>,  <32.144196, 36.495510, 32.249508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.461014, 35.854652, 31.847561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.096825, 35.736439, 31.963284>,  <31.878311, 35.665512, 32.032719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.096825, 35.736439, 31.963284>,  <32.461014, 35.854652, 31.847561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.096825, 35.736439, 31.963284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175090, -0.358310, -0.917037,
		0.374675, -0.885593, 0.274488,
		-0.910474, -0.295530, 0.289308,
		31.823683, 35.647781, 32.050076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.313351, 35.286537, 31.468384>,  <32.461014, 35.854652, 31.847561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.313351, 35.286537, 31.468384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.942677, 35.392170, 31.575357>,  <31.720272, 35.455551, 31.639542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.942677, 35.392170, 31.575357>,  <32.313351, 35.286537, 31.468384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.942677, 35.392170, 31.575357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345718, -0.319789, -0.882164,
		-0.147445, -0.909942, 0.387642,
		-0.926682, 0.264085, 0.267432,
		31.664673, 35.471397, 31.655586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.915239, 34.779106, 31.243319>,  <32.313351, 35.286537, 31.468384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.915239, 34.779106, 31.243319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.646769, 35.071068, 31.295113>,  <31.485685, 35.246243, 31.326189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.646769, 35.071068, 31.295113>,  <31.915239, 34.779106, 31.243319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.646769, 35.071068, 31.295113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260406, -0.068609, -0.963058,
		-0.694053, -0.680101, 0.236119,
		-0.671177, 0.729901, 0.129484,
		31.445415, 35.290039, 31.333958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.240639, 34.515244, 31.038296>,  <31.915239, 34.779106, 31.243319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.240639, 34.515244, 31.038296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.209015, 34.913990, 31.039419>,  <31.190041, 35.153236, 31.040092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.209015, 34.913990, 31.039419>,  <31.240639, 34.515244, 31.038296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.209015, 34.913990, 31.039419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385438, -0.027971, -0.922310,
		-0.919341, -0.073999, 0.386442,
		-0.079060, 0.996866, 0.002807,
		31.185297, 35.213051, 31.040260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.541519, 34.633129, 30.907339>,  <31.240639, 34.515244, 31.038296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.541519, 34.633129, 30.907339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.762110, 34.948524, 30.798414>,  <30.894464, 35.137764, 30.733059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.762110, 34.948524, 30.798414>,  <30.541519, 34.633129, 30.907339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.762110, 34.948524, 30.798414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464036, 0.018695, -0.885619,
		-0.693213, 0.614760, 0.376199,
		0.551476, 0.788493, -0.272311,
		30.927553, 35.185074, 30.716721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.031071, 35.046665, 30.617538>,  <30.541519, 34.633129, 30.907339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.031071, 35.046665, 30.617538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.367022, 35.208893, 30.473251>,  <30.568592, 35.306229, 30.386679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.367022, 35.208893, 30.473251>,  <30.031071, 35.046665, 30.617538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.367022, 35.208893, 30.473251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485573, 0.264462, -0.833234,
		-0.242539, 0.874969, 0.419050,
		0.839877, 0.405571, -0.360719,
		30.618984, 35.330563, 30.365036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.785374, 35.657578, 30.297132>,  <30.031071, 35.046665, 30.617538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.785374, 35.657578, 30.297132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.150846, 35.592003, 30.148373>,  <30.370131, 35.552658, 30.059116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.150846, 35.592003, 30.148373>,  <29.785374, 35.657578, 30.297132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.150846, 35.592003, 30.148373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275973, 0.421502, -0.863814,
		0.298370, 0.891885, 0.339876,
		0.913682, -0.163940, -0.371900,
		30.424952, 35.542820, 30.036802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.116959, 36.291012, 29.969753>,  <29.785374, 35.657578, 30.297132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.116959, 36.291012, 29.969753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.309095, 35.992409, 29.785582>,  <30.424377, 35.813248, 29.675077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.309095, 35.992409, 29.785582>,  <30.116959, 36.291012, 29.969753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.309095, 35.992409, 29.785582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253971, 0.384086, -0.887681,
		0.839507, 0.543325, -0.005100,
		0.480340, -0.746509, -0.460431,
		30.453197, 35.768456, 29.647451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.230087, 36.566658, 29.338453>,  <30.116959, 36.291012, 29.969753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.230087, 36.566658, 29.338453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.306715, 36.179420, 29.273827>,  <30.352692, 35.947079, 29.235050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.306715, 36.179420, 29.273827>,  <30.230087, 36.566658, 29.338453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.306715, 36.179420, 29.273827> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245101, 0.112212, -0.962982,
		0.950382, 0.224078, -0.215783,
		0.191570, -0.968090, -0.161566,
		30.364185, 35.888992, 29.225357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.635000, 36.491428, 28.701469>,  <30.230087, 36.566658, 29.338453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.635000, 36.491428, 28.701469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.426620, 36.156345, 28.767014>,  <30.301592, 35.955296, 28.806339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.426620, 36.156345, 28.767014>,  <30.635000, 36.491428, 28.701469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.426620, 36.156345, 28.767014> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439307, 0.098534, -0.892917,
		0.731861, -0.537151, -0.419343,
		-0.520951, -0.837712, 0.163861,
		30.270336, 35.905033, 28.816172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.847622, 35.897877, 28.207893>,  <30.635000, 36.491428, 28.701469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.847622, 35.897877, 28.207893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.471407, 35.826496, 28.323511>,  <30.245678, 35.783669, 28.392881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.471407, 35.826496, 28.323511>,  <30.847622, 35.897877, 28.207893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.471407, 35.826496, 28.323511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292557, -0.006898, -0.956223,
		0.172637, -0.983924, -0.045721,
		-0.940536, -0.178455, 0.289045,
		30.189247, 35.772961, 28.410225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.376221, 35.449265, 28.034422>,  <30.847622, 35.897877, 28.207893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.376221, 35.449265, 28.034422> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.672741, 35.446651, 27.765965>,  <31.850653, 35.445084, 27.604891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.672741, 35.446651, 27.765965>,  <31.376221, 35.449265, 28.034422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.672741, 35.446651, 27.765965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662172, 0.170360, 0.729730,
		0.109567, -0.985360, 0.130616,
		0.741298, -0.006536, -0.671143,
		31.895130, 35.444691, 27.564621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.933172, 35.143204, 28.349842>,  <31.376221, 35.449265, 28.034422>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.933172, 35.143204, 28.349842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.130508, 35.302429, 28.040480>,  <32.248909, 35.397964, 27.854862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.130508, 35.302429, 28.040480>,  <31.933172, 35.143204, 28.349842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.130508, 35.302429, 28.040480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838579, 0.018556, 0.544464,
		0.231081, -0.917171, -0.324652,
		0.493342, 0.398062, -0.773408,
		32.278511, 35.421848, 27.808456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.599571, 34.795982, 28.278257>,  <31.933172, 35.143204, 28.349842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.599571, 34.795982, 28.278257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.666740, 35.132198, 28.072227>,  <32.707043, 35.333927, 27.948610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.666740, 35.132198, 28.072227>,  <32.599571, 34.795982, 28.278257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.666740, 35.132198, 28.072227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875852, 0.112584, 0.469265,
		0.452423, -0.529929, -0.717279,
		0.167923, 0.840536, -0.515074,
		32.717117, 35.384357, 27.917706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.269604, 34.754559, 28.118011>,  <32.599571, 34.795982, 28.278257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.269604, 34.754559, 28.118011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.174744, 35.141766, 28.085279>,  <33.117828, 35.374092, 28.065641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.174744, 35.141766, 28.085279>,  <33.269604, 34.754559, 28.118011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.174744, 35.141766, 28.085279> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798221, 0.242176, 0.551538,
		0.553717, 0.065480, -0.830126,
		-0.237151, 0.968020, -0.081829,
		33.103600, 35.432171, 28.060730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948475, 35.169254, 28.039436>,  <33.269604, 34.754559, 28.118011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948475, 35.169254, 28.039436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.656612, 35.407372, 28.174034>,  <33.481495, 35.550243, 28.254793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.656612, 35.407372, 28.174034>,  <33.948475, 35.169254, 28.039436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.656612, 35.407372, 28.174034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611952, 0.348850, 0.709802,
		0.305153, 0.723830, -0.618831,
		-0.729656, 0.595292, 0.336497,
		33.437717, 35.585960, 28.274982>
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
