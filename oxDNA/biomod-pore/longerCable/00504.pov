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
	<24.101994, 35.446007, 34.841908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.220409, 35.192467, 35.127731>,  <24.291458, 35.040344, 35.299225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.220409, 35.192467, 35.127731>,  <24.101994, 35.446007, 34.841908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.220409, 35.192467, 35.127731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786373, 0.586381, 0.194356,
		-0.542198, 0.504376, 0.672031,
		0.296038, -0.633847, 0.714563,
		24.309221, 35.002312, 35.342098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.332083, 35.893227, 35.290924>,  <24.101994, 35.446007, 34.841908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.332083, 35.893227, 35.290924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.479036, 35.560677, 35.457703>,  <24.567209, 35.361145, 35.557770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.479036, 35.560677, 35.457703>,  <24.332083, 35.893227, 35.290924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.479036, 35.560677, 35.457703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791673, 0.514817, 0.328962,
		-0.488141, 0.209227, 0.847315,
		0.367384, -0.831376, 0.416943,
		24.589252, 35.311264, 35.582787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.748360, 36.043438, 35.802025>,  <24.332083, 35.893227, 35.290924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.748360, 36.043438, 35.802025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.917601, 35.681206, 35.789955>,  <25.019146, 35.463867, 35.782715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.917601, 35.681206, 35.789955>,  <24.748360, 36.043438, 35.802025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.917601, 35.681206, 35.789955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901742, 0.417585, 0.111735,
		-0.088585, -0.074483, 0.993280,
		0.423102, -0.905580, -0.030173,
		25.044531, 35.409531, 35.780903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.122120, 35.831654, 36.475872>,  <24.748360, 36.043438, 35.802025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.122120, 35.831654, 36.475872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.277517, 35.678448, 36.140640>,  <25.370756, 35.586525, 35.939503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.277517, 35.678448, 36.140640>,  <25.122120, 35.831654, 36.475872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.277517, 35.678448, 36.140640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854912, 0.489169, 0.172742,
		0.343799, -0.783592, 0.517480,
		0.388494, -0.383012, -0.838078,
		25.394066, 35.563545, 35.889217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.705484, 35.534077, 36.640511>,  <25.122120, 35.831654, 36.475872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.705484, 35.534077, 36.640511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.777182, 35.620846, 36.256676>,  <25.820200, 35.672909, 36.026375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.777182, 35.620846, 36.256676>,  <25.705484, 35.534077, 36.640511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.777182, 35.620846, 36.256676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958910, 0.179515, 0.219697,
		0.219919, -0.959540, -0.175837,
		0.179243, 0.216927, -0.959591,
		25.830954, 35.685925, 35.968800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.223616, 35.107697, 36.447823>,  <25.705484, 35.534077, 36.640511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.223616, 35.107697, 36.447823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.236341, 35.413063, 36.189774>,  <26.243977, 35.596283, 36.034943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.236341, 35.413063, 36.189774>,  <26.223616, 35.107697, 36.447823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.236341, 35.413063, 36.189774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978478, 0.107874, 0.175907,
		0.203882, -0.636835, -0.743555,
		0.031814, 0.763417, -0.645122,
		26.245886, 35.642090, 35.996239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.889439, 35.027241, 36.179962>,  <26.223616, 35.107697, 36.447823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.889439, 35.027241, 36.179962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.784536, 35.400513, 36.081657>,  <26.721596, 35.624477, 36.022675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.784536, 35.400513, 36.081657>,  <26.889439, 35.027241, 36.179962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.784536, 35.400513, 36.081657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884634, 0.334236, 0.325130,
		0.385546, -0.132141, -0.913177,
		-0.262253, 0.933180, -0.245760,
		26.705860, 35.680466, 36.007931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.525990, 35.266247, 35.897057>,  <26.889439, 35.027241, 36.179962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.525990, 35.266247, 35.897057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.326342, 35.603325, 35.977795>,  <27.206553, 35.805573, 36.026237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.326342, 35.603325, 35.977795>,  <27.525990, 35.266247, 35.897057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.326342, 35.603325, 35.977795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847334, 0.425871, 0.317270,
		0.181401, 0.329388, -0.926605,
		-0.499119, 0.842697, 0.201849,
		27.176605, 35.856133, 36.038349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.966047, 35.832668, 35.607555>,  <27.525990, 35.266247, 35.897057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.966047, 35.832668, 35.607555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.715542, 35.994907, 35.873875>,  <27.565239, 36.092251, 36.033665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.715542, 35.994907, 35.873875>,  <27.966047, 35.832668, 35.607555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.715542, 35.994907, 35.873875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740903, 0.575395, 0.346384,
		-0.242603, 0.710218, -0.660859,
		-0.626264, 0.405598, 0.665796,
		27.527662, 36.116589, 36.073612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.107935, 36.534119, 35.558273>,  <27.966047, 35.832668, 35.607555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.107935, 36.534119, 35.558273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.945316, 36.481888, 35.919971>,  <27.847744, 36.450550, 36.136990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.945316, 36.481888, 35.919971>,  <28.107935, 36.534119, 35.558273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.945316, 36.481888, 35.919971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486751, 0.806617, 0.335325,
		-0.773170, 0.576470, -0.264369,
		-0.406549, -0.130581, 0.904249,
		27.823351, 36.442715, 36.191246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.192057, 37.198376, 35.822582>,  <28.107935, 36.534119, 35.558273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.192057, 37.198376, 35.822582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.108749, 36.958797, 36.131874>,  <28.058765, 36.815052, 36.317451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.108749, 36.958797, 36.131874>,  <28.192057, 37.198376, 35.822582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.108749, 36.958797, 36.131874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448691, 0.643964, 0.619667,
		-0.869081, 0.475998, 0.134626,
		-0.208266, -0.598946, 0.773232,
		28.046270, 36.779114, 36.363842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.913393, 37.620159, 36.331631>,  <28.192057, 37.198376, 35.822582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.913393, 37.620159, 36.331631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.124390, 37.305023, 36.458794>,  <28.250988, 37.115944, 36.535091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.124390, 37.305023, 36.458794>,  <27.913393, 37.620159, 36.331631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.124390, 37.305023, 36.458794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522828, 0.595990, 0.609465,
		-0.669629, -0.155277, 0.726283,
		0.527493, -0.787836, 0.317909,
		28.282637, 37.068672, 36.554165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.093712, 37.758835, 37.087044>,  <27.913393, 37.620159, 36.331631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.093712, 37.758835, 37.087044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.345268, 37.479137, 36.951069>,  <28.496202, 37.311317, 36.869484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.345268, 37.479137, 36.951069>,  <28.093712, 37.758835, 37.087044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.345268, 37.479137, 36.951069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717301, 0.353125, 0.600651,
		-0.299961, -0.621581, 0.723644,
		0.628890, -0.699243, -0.339937,
		28.533936, 37.269363, 36.849087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.327639, 37.311447, 37.663445>,  <28.093712, 37.758835, 37.087044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.327639, 37.311447, 37.663445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.595802, 37.360050, 37.370655>,  <28.756701, 37.389210, 37.194981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.595802, 37.360050, 37.370655>,  <28.327639, 37.311447, 37.663445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.595802, 37.360050, 37.370655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704140, 0.206883, 0.679254,
		0.233970, -0.970791, 0.053135,
		0.670406, 0.121511, -0.731977,
		28.796925, 37.396503, 37.151062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.867939, 36.798302, 37.650433>,  <28.327639, 37.311447, 37.663445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.867939, 36.798302, 37.650433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.025925, 37.122887, 37.478138>,  <29.120716, 37.317638, 37.374760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.025925, 37.122887, 37.478138>,  <28.867939, 36.798302, 37.650433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.025925, 37.122887, 37.478138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534564, 0.178322, 0.826100,
		0.747158, -0.556537, -0.363347,
		0.394963, 0.811460, -0.430740,
		29.144413, 37.366325, 37.348915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.669142, 36.122879, 37.408390>,  <28.867939, 36.798302, 37.650433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.669142, 36.122879, 37.408390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.502800, 36.408573, 37.183201>,  <28.402996, 36.579990, 37.048088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.502800, 36.408573, 37.183201>,  <28.669142, 36.122879, 37.408390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.502800, 36.408573, 37.183201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589355, -0.683106, -0.431309,
		-0.692628, 0.152436, 0.705003,
		-0.415845, 0.714234, -0.562978,
		28.378044, 36.622845, 37.014309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.896402, 36.203407, 37.515297>,  <28.669142, 36.122879, 37.408390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.896402, 36.203407, 37.515297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.942383, 36.363605, 37.151672>,  <27.969971, 36.459724, 36.933498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.942383, 36.363605, 37.151672>,  <27.896402, 36.203407, 37.515297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.942383, 36.363605, 37.151672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723901, -0.592905, -0.352749,
		-0.680261, 0.698616, 0.221767,
		0.114950, 0.400499, -0.909059,
		27.976868, 36.483757, 36.878956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.232903, 36.253662, 37.332726>,  <27.896402, 36.203407, 37.515297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.232903, 36.253662, 37.332726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.412073, 36.334522, 36.984360>,  <27.519575, 36.383038, 36.775341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.412073, 36.334522, 36.984360>,  <27.232903, 36.253662, 37.332726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.412073, 36.334522, 36.984360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725938, -0.486385, -0.486254,
		-0.521898, 0.850038, -0.071116,
		0.447925, 0.202149, -0.870919,
		27.546450, 36.395168, 36.723083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.776293, 36.637638, 36.977268>,  <27.232903, 36.253662, 37.332726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.776293, 36.637638, 36.977268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.016634, 36.467697, 36.706425>,  <27.160839, 36.365734, 36.543919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.016634, 36.467697, 36.706425>,  <26.776293, 36.637638, 36.977268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.016634, 36.467697, 36.706425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799358, -0.319753, -0.508708,
		-0.000383, 0.846912, -0.531734,
		0.600854, -0.424851, -0.677108,
		27.196890, 36.340240, 36.503292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.597271, 37.014835, 36.270939>,  <26.776293, 36.637638, 36.977268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.597271, 37.014835, 36.270939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.750868, 36.654202, 36.191246>,  <26.843025, 36.437820, 36.143433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.750868, 36.654202, 36.191246>,  <26.597271, 37.014835, 36.270939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.750868, 36.654202, 36.191246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763441, -0.188654, -0.617712,
		0.519335, 0.389296, -0.760749,
		0.383991, -0.901586, -0.199230,
		26.866066, 36.383724, 36.131477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.553802, 37.426338, 35.655170>,  <26.597271, 37.014835, 36.270939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.553802, 37.426338, 35.655170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.795153, 37.585403, 35.931664>,  <26.939962, 37.680843, 36.097561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.795153, 37.585403, 35.931664>,  <26.553802, 37.426338, 35.655170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.795153, 37.585403, 35.931664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008190, 0.869841, -0.493264,
		-0.797417, 0.291962, 0.528096,
		0.603374, 0.397662, 0.691235,
		26.976164, 37.704700, 36.139034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.227457, 36.809753, 35.569187>,  <26.553802, 37.426338, 35.655170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.227457, 36.809753, 35.569187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.408966, 36.475742, 35.693653>,  <26.517872, 36.275337, 35.768333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.408966, 36.475742, 35.693653>,  <26.227457, 36.809753, 35.569187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.408966, 36.475742, 35.693653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673637, -0.550022, -0.493648,
		0.583355, 0.014393, -0.812090,
		0.453773, -0.835026, 0.311162,
		26.545097, 36.225235, 35.787003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.153791, 36.448738, 34.977692>,  <26.227457, 36.809753, 35.569187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.153791, 36.448738, 34.977692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.204477, 36.193699, 35.281643>,  <26.234888, 36.040676, 35.464016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.204477, 36.193699, 35.281643>,  <26.153791, 36.448738, 34.977692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.204477, 36.193699, 35.281643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730494, -0.578227, -0.363361,
		0.671061, -0.509045, -0.539028,
		0.126713, -0.637594, 0.759880,
		26.242491, 36.002422, 35.509605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.298504, 35.576908, 34.916931>,  <26.153791, 36.448738, 34.977692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.298504, 35.576908, 34.916931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.060429, 35.673687, 35.223450>,  <25.917583, 35.731754, 35.407360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.060429, 35.673687, 35.223450>,  <26.298504, 35.576908, 34.916931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.060429, 35.673687, 35.223450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680338, -0.659209, -0.320288,
		0.427658, -0.711973, 0.556959,
		-0.595188, 0.241946, 0.766298,
		25.881872, 35.746269, 35.453339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.034552, 35.389233, 34.671864>,  <26.298504, 35.576908, 34.916931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.034552, 35.389233, 34.671864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.854666, 35.372387, 34.314991>,  <26.746735, 35.362282, 34.100868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.854666, 35.372387, 34.314991>,  <27.034552, 35.389233, 34.671864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.854666, 35.372387, 34.314991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853202, -0.275219, 0.443058,
		-0.264202, 0.960459, 0.087842,
		-0.449715, -0.042110, -0.892179,
		26.719751, 35.359753, 34.047337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.728941, 35.121025, 34.816586>,  <27.034552, 35.389233, 34.671864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.728941, 35.121025, 34.816586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.627201, 34.801880, 34.597965>,  <27.566158, 34.610394, 34.466793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.627201, 34.801880, 34.597965>,  <27.728941, 35.121025, 34.816586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.627201, 34.801880, 34.597965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002970, 0.565776, -0.824554,
		0.967108, -0.208101, -0.146273,
		-0.254348, -0.797867, -0.546548,
		27.550896, 34.562519, 34.434002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.170580, 34.972076, 34.239338>,  <27.728941, 35.121025, 34.816586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.170580, 34.972076, 34.239338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.822063, 34.806538, 34.133820>,  <27.612953, 34.707214, 34.070511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.822063, 34.806538, 34.133820>,  <28.170580, 34.972076, 34.239338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.822063, 34.806538, 34.133820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000951, 0.538929, -0.842351,
		0.490765, -0.733682, -0.469958,
		-0.871292, -0.413843, -0.263790,
		27.560677, 34.682384, 34.054684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.896679, 34.873981, 34.157928>,  <28.170580, 34.972076, 34.239338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.896679, 34.873981, 34.157928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.129873, 34.586777, 34.310028>,  <29.269791, 34.414455, 34.401287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.129873, 34.586777, 34.310028>,  <28.896679, 34.873981, 34.157928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.129873, 34.586777, 34.310028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511582, 0.039191, 0.858340,
		-0.631197, -0.694931, -0.344472,
		0.582987, -0.718008, 0.380251,
		29.304770, 34.371376, 34.424103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.023842, 35.399998, 33.666458>,  <28.896679, 34.873981, 34.157928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.023842, 35.399998, 33.666458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.232281, 35.526390, 33.349319>,  <29.357344, 35.602226, 33.159035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.232281, 35.526390, 33.349319>,  <29.023842, 35.399998, 33.666458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.232281, 35.526390, 33.349319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639209, 0.760049, -0.117211,
		0.565569, 0.567876, 0.598037,
		0.521099, 0.315980, -0.792851,
		29.388611, 35.621185, 33.111465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.214279, 36.049217, 33.829498>,  <29.023842, 35.399998, 33.666458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.214279, 36.049217, 33.829498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.197767, 36.001194, 33.432735>,  <29.187860, 35.972378, 33.194679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.197767, 36.001194, 33.432735>,  <29.214279, 36.049217, 33.829498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.197767, 36.001194, 33.432735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619587, 0.781902, -0.068859,
		0.783842, 0.611731, -0.106663,
		-0.041277, -0.120061, -0.991908,
		29.185383, 35.965176, 33.135162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.050201, 36.766548, 33.642387>,  <29.214279, 36.049217, 33.829498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.050201, 36.766548, 33.642387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.043129, 36.624485, 33.268532>,  <29.038885, 36.539246, 33.044220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.043129, 36.624485, 33.268532>,  <29.050201, 36.766548, 33.642387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.043129, 36.624485, 33.268532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680473, 0.689166, -0.249010,
		0.732559, 0.631594, -0.253863,
		-0.017680, -0.355162, -0.934638,
		29.037825, 36.517937, 32.988140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.272566, 37.284470, 33.152031>,  <29.050201, 36.766548, 33.642387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.272566, 37.284470, 33.152031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.992594, 37.013371, 33.061913>,  <28.824610, 36.850712, 33.007843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.992594, 37.013371, 33.061913>,  <29.272566, 37.284470, 33.152031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.992594, 37.013371, 33.061913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684260, 0.726733, -0.060394,
		0.204661, 0.111889, -0.972417,
		-0.699930, -0.677746, -0.225296,
		28.782614, 36.810047, 32.994324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.905344, 37.568436, 32.530334>,  <29.272566, 37.284470, 33.152031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.905344, 37.568436, 32.530334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.676548, 37.302410, 32.722382>,  <28.539270, 37.142796, 32.837612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.676548, 37.302410, 32.722382>,  <28.905344, 37.568436, 32.530334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.676548, 37.302410, 32.722382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722769, 0.685416, 0.088374,
		-0.387858, -0.296468, -0.872739,
		-0.571989, -0.665065, 0.480122,
		28.504951, 37.102890, 32.866417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.248264, 37.546497, 32.125782>,  <28.905344, 37.568436, 32.530334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.248264, 37.546497, 32.125782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.185055, 37.392216, 32.489376>,  <28.147129, 37.299648, 32.707535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.185055, 37.392216, 32.489376>,  <28.248264, 37.546497, 32.125782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.185055, 37.392216, 32.489376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649072, 0.734308, 0.198742,
		-0.744133, -0.558592, -0.366389,
		-0.158026, -0.385703, 0.908989,
		28.137648, 37.276505, 32.762074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.475815, 37.496471, 32.295921>,  <28.248264, 37.546497, 32.125782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.475815, 37.496471, 32.295921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.670105, 37.495182, 32.645565>,  <27.786678, 37.494408, 32.855350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.670105, 37.495182, 32.645565>,  <27.475815, 37.496471, 32.295921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.670105, 37.495182, 32.645565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653538, 0.662739, 0.365603,
		-0.580481, -0.748844, 0.319804,
		0.485726, -0.003221, 0.874105,
		27.815823, 37.494217, 32.907795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.086191, 37.139179, 32.671387>,  <27.475815, 37.496471, 32.295921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.086191, 37.139179, 32.671387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.214846, 37.150703, 33.049957>,  <27.292038, 37.157619, 33.277100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.214846, 37.150703, 33.049957>,  <27.086191, 37.139179, 32.671387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.214846, 37.150703, 33.049957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538801, 0.827500, 0.157915,
		-0.778617, -0.560726, 0.281677,
		0.321635, 0.028813, 0.946425,
		27.311337, 37.159348, 33.333885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.583513, 37.147614, 33.313713>,  <27.086191, 37.139179, 32.671387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.583513, 37.147614, 33.313713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.916410, 37.358921, 33.381004>,  <27.116148, 37.485706, 33.421379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.916410, 37.358921, 33.381004>,  <26.583513, 37.147614, 33.313713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.916410, 37.358921, 33.381004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548184, 0.829449, 0.107281,
		-0.082860, -0.181501, 0.979894,
		0.832244, 0.528273, 0.168224,
		27.166084, 37.517403, 33.431473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.428303, 37.587635, 33.989120>,  <26.583513, 37.147614, 33.313713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.428303, 37.587635, 33.989120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.756758, 37.755009, 33.833866>,  <26.953831, 37.855431, 33.740715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.756758, 37.755009, 33.833866>,  <26.428303, 37.587635, 33.989120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.756758, 37.755009, 33.833866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384894, 0.908138, 0.164747,
		0.421416, 0.014111, 0.906758,
		0.821137, 0.418433, -0.388135,
		27.003099, 37.880539, 33.717426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.598413, 38.100414, 34.290009>,  <26.428303, 37.587635, 33.989120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.598413, 38.100414, 34.290009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.744030, 38.216209, 33.935905>,  <26.831400, 38.285686, 33.723446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.744030, 38.216209, 33.935905>,  <26.598413, 38.100414, 34.290009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.744030, 38.216209, 33.935905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486050, 0.869830, 0.084563,
		0.794501, 0.399493, 0.457355,
		0.364039, 0.289483, -0.885254,
		26.853241, 38.303055, 33.670330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.070581, 38.562130, 33.953831>,  <26.598413, 38.100414, 34.290009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.070581, 38.562130, 33.953831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.181225, 38.912182, 33.795021>,  <26.247612, 39.122215, 33.699734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.181225, 38.912182, 33.795021>,  <26.070581, 38.562130, 33.953831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.181225, 38.912182, 33.795021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768245, -0.449575, -0.455721,
		-0.577310, -0.178957, -0.796673,
		0.276609, 0.875133, -0.397027,
		26.264208, 39.174721, 33.675915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.103743, 38.623009, 33.149418>,  <26.070581, 38.562130, 33.953831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.103743, 38.623009, 33.149418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.368696, 38.848808, 33.346432>,  <26.527668, 38.984287, 33.464638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.368696, 38.848808, 33.346432>,  <26.103743, 38.623009, 33.149418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.368696, 38.848808, 33.346432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749137, -0.504682, -0.429057,
		0.006369, 0.653175, -0.757181,
		0.662384, 0.564499, 0.492532,
		26.567411, 39.018158, 33.494190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.589588, 38.776760, 32.663502>,  <26.103743, 38.623009, 33.149418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.589588, 38.776760, 32.663502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.739468, 38.765263, 33.034184>,  <26.829395, 38.758362, 33.256592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.739468, 38.765263, 33.034184>,  <26.589588, 38.776760, 32.663502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.739468, 38.765263, 33.034184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666624, -0.686315, -0.290832,
		0.644370, 0.726736, -0.237998,
		0.374700, -0.028748, 0.926700,
		26.851877, 38.756638, 33.312195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.375570, 38.804558, 32.741840>,  <26.589588, 38.776760, 32.663502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.375570, 38.804558, 32.741840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.275671, 38.638554, 33.091789>,  <27.215731, 38.538952, 33.301758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.275671, 38.638554, 33.091789>,  <27.375570, 38.804558, 32.741840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.275671, 38.638554, 33.091789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713969, -0.689264, -0.123144,
		0.654121, 0.593874, 0.468444,
		-0.249750, -0.415006, 0.874869,
		27.200747, 38.514053, 33.354248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.970005, 38.503983, 33.092064>,  <27.375570, 38.804558, 32.741840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.970005, 38.503983, 33.092064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.673922, 38.309166, 33.277485>,  <27.496271, 38.192276, 33.388737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.673922, 38.309166, 33.277485>,  <27.970005, 38.503983, 33.092064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.673922, 38.309166, 33.277485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526181, -0.848806, -0.051592,
		0.418597, 0.205726, 0.884564,
		-0.740209, -0.487037, 0.463557,
		27.451859, 38.163055, 33.416553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.276697, 38.026680, 33.577072>,  <27.970005, 38.503983, 33.092064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.276697, 38.026680, 33.577072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.917067, 37.876347, 33.487259>,  <27.701288, 37.786148, 33.433372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.917067, 37.876347, 33.487259>,  <28.276697, 38.026680, 33.577072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.917067, 37.876347, 33.487259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403473, -0.910379, -0.091756,
		-0.169926, -0.173088, 0.970137,
		-0.899074, -0.375832, -0.224534,
		27.647345, 37.763596, 33.419899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.113342, 37.431858, 33.945759>,  <28.276697, 38.026680, 33.577072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.113342, 37.431858, 33.945759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.915203, 37.391220, 33.600666>,  <27.796320, 37.366837, 33.393612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.915203, 37.391220, 33.600666>,  <28.113342, 37.431858, 33.945759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.915203, 37.391220, 33.600666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510469, -0.837621, -0.194453,
		-0.702887, -0.536721, 0.466778,
		-0.495350, -0.101597, -0.862732,
		27.766598, 37.360741, 33.341846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.023556, 36.706032, 33.905586>,  <28.113342, 37.431858, 33.945759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.023556, 36.706032, 33.905586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.016151, 36.868111, 33.539970>,  <28.011709, 36.965359, 33.320599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.016151, 36.868111, 33.539970>,  <28.023556, 36.706032, 33.905586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.016151, 36.868111, 33.539970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642029, -0.695997, -0.321539,
		-0.766457, -0.592793, -0.247264,
		-0.018511, 0.405196, -0.914042,
		28.010599, 36.989670, 33.265759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.791382, 36.135937, 33.368633>,  <28.023556, 36.706032, 33.905586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.791382, 36.135937, 33.368633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.017302, 36.438526, 33.236729>,  <28.152853, 36.620079, 33.157585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.017302, 36.438526, 33.236729>,  <27.791382, 36.135937, 33.368633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.017302, 36.438526, 33.236729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654733, -0.654017, -0.378928,
		-0.502322, -0.001890, -0.864678,
		0.564798, 0.756478, -0.329765,
		28.186741, 36.665470, 33.137798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.880421, 35.953152, 32.669353>,  <27.791382, 36.135937, 33.368633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.880421, 35.953152, 32.669353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.156271, 36.199509, 32.821720>,  <28.321781, 36.347321, 32.913139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.156271, 36.199509, 32.821720>,  <27.880421, 35.953152, 32.669353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.156271, 36.199509, 32.821720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717937, -0.650310, -0.248320,
		0.094777, 0.444723, -0.890640,
		0.689626, 0.615888, 0.380917,
		28.363159, 36.384274, 32.935997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.345095, 35.837280, 32.190880>,  <27.880421, 35.953152, 32.669353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.345095, 35.837280, 32.190880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.549248, 36.009270, 32.488773>,  <28.671740, 36.112461, 32.667511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.549248, 36.009270, 32.488773>,  <28.345095, 35.837280, 32.190880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.549248, 36.009270, 32.488773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752232, -0.642892, -0.144349,
		0.416720, 0.633889, -0.651559,
		0.510383, 0.429970, 0.744738,
		28.702362, 36.138260, 32.712196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.956724, 35.944477, 31.910688>,  <28.345095, 35.837280, 32.190880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.956724, 35.944477, 31.910688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.989996, 35.917778, 32.308407>,  <29.009958, 35.901760, 32.547039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.989996, 35.917778, 32.308407>,  <28.956724, 35.944477, 31.910688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.989996, 35.917778, 32.308407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804653, -0.584112, -0.106524,
		0.587890, 0.808925, 0.005119,
		0.083180, -0.066744, 0.994297,
		29.014950, 35.897755, 32.606697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.693855, 36.229279, 32.047760>,  <28.956724, 35.944477, 31.910688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.693855, 36.229279, 32.047760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.525312, 35.943897, 32.271706>,  <29.424187, 35.772671, 32.406075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.525312, 35.943897, 32.271706>,  <29.693855, 36.229279, 32.047760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.525312, 35.943897, 32.271706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814302, -0.569388, -0.112736,
		0.399211, 0.408395, 0.820880,
		-0.421358, -0.713450, 0.559863,
		29.398905, 35.729862, 32.439663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.881569, 36.479355, 31.359303>,  <29.693855, 36.229279, 32.047760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.881569, 36.479355, 31.359303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.157007, 36.758671, 31.437504>,  <30.322269, 36.926262, 31.484425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.157007, 36.758671, 31.437504>,  <29.881569, 36.479355, 31.359303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.157007, 36.758671, 31.437504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128339, 0.382706, -0.914913,
		-0.713698, 0.604915, 0.353148,
		0.688596, 0.698294, 0.195502,
		30.363586, 36.968159, 31.496155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.642054, 37.141548, 31.149374>,  <29.881569, 36.479355, 31.359303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.642054, 37.141548, 31.149374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.041756, 37.148472, 31.135599>,  <30.281578, 37.152626, 31.127335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.041756, 37.148472, 31.135599>,  <29.642054, 37.141548, 31.149374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.041756, 37.148472, 31.135599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038497, 0.490784, -0.870431,
		0.001835, 0.871110, 0.491085,
		0.999257, 0.017308, -0.034436,
		30.341534, 37.153664, 31.125269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.965141, 37.917271, 31.075663>,  <29.642054, 37.141548, 31.149374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.965141, 37.917271, 31.075663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.204569, 37.633774, 30.926321>,  <30.348225, 37.463676, 30.836716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.204569, 37.633774, 30.926321>,  <29.965141, 37.917271, 31.075663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.204569, 37.633774, 30.926321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046080, 0.495761, -0.867235,
		0.799745, 0.501896, 0.329407,
		0.598569, -0.708746, -0.373355,
		30.384140, 37.421150, 30.814314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.665712, 38.139790, 30.742407>,  <29.965141, 37.917271, 31.075663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.665712, 38.139790, 30.742407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.521906, 37.801346, 30.585005>,  <30.435621, 37.598278, 30.490564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.521906, 37.801346, 30.585005>,  <30.665712, 38.139790, 30.742407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.521906, 37.801346, 30.585005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009880, 0.425126, -0.905080,
		0.933086, -0.321504, -0.161200,
		-0.359517, -0.846110, -0.393503,
		30.414051, 37.547512, 30.466953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.005201, 38.014362, 30.179876>,  <30.665712, 38.139790, 30.742407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.005201, 38.014362, 30.179876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.682201, 37.790874, 30.104212>,  <30.488401, 37.656784, 30.058813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.682201, 37.790874, 30.104212>,  <31.005201, 38.014362, 30.179876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.682201, 37.790874, 30.104212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141320, 0.494588, -0.857561,
		0.572691, -0.665747, -0.478337,
		-0.807498, -0.558716, -0.189163,
		30.439951, 37.623260, 30.047462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.955872, 37.642246, 29.409985>,  <31.005201, 38.014362, 30.179876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.955872, 37.642246, 29.409985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.636063, 37.762749, 29.617834>,  <30.444178, 37.835049, 29.742544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.636063, 37.762749, 29.617834>,  <30.955872, 37.642246, 29.409985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.636063, 37.762749, 29.617834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284528, 0.571936, -0.769371,
		-0.528967, -0.762978, -0.371562,
		-0.799524, 0.301252, 0.519624,
		30.396206, 37.853123, 29.773722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.519150, 37.919495, 28.936129>,  <30.955872, 37.642246, 29.409985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.519150, 37.919495, 28.936129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.294495, 37.595379, 28.869211>,  <30.159700, 37.400909, 28.829062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.294495, 37.595379, 28.869211>,  <30.519150, 37.919495, 28.936129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.294495, 37.595379, 28.869211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142226, -0.293735, 0.945247,
		-0.815067, 0.507094, 0.280218,
		-0.561639, -0.810293, -0.167292,
		30.126003, 37.352291, 28.819023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.880688, 37.965397, 29.329697>,  <30.519150, 37.919495, 28.936129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.880688, 37.965397, 29.329697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.023281, 37.595497, 29.276384>,  <30.108837, 37.373558, 29.244396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.023281, 37.595497, 29.276384>,  <29.880688, 37.965397, 29.329697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.023281, 37.595497, 29.276384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096221, -0.105557, 0.989747,
		-0.929334, -0.365652, 0.051351,
		0.356482, -0.924747, -0.133281,
		30.130226, 37.318073, 29.236401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.577446, 37.601723, 29.821196>,  <29.880688, 37.965397, 29.329697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.577446, 37.601723, 29.821196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.901125, 37.397076, 29.705647>,  <30.095331, 37.274288, 29.636316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.901125, 37.397076, 29.705647>,  <29.577446, 37.601723, 29.821196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.901125, 37.397076, 29.705647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180908, -0.250817, 0.950980,
		-0.558996, -0.821788, -0.110403,
		0.809195, -0.511621, -0.288874,
		30.143883, 37.243591, 29.618984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.611797, 36.809189, 29.922916>,  <29.577446, 37.601723, 29.821196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.611797, 36.809189, 29.922916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.984692, 36.953892, 29.919626>,  <30.208427, 37.040714, 29.917652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.984692, 36.953892, 29.919626>,  <29.611797, 36.809189, 29.922916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.984692, 36.953892, 29.919626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121150, -0.290612, 0.949140,
		0.340967, -0.885819, -0.314746,
		0.932236, 0.361757, -0.008228,
		30.264362, 37.062420, 29.917158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.134081, 36.266327, 30.110153>,  <29.611797, 36.809189, 29.922916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.134081, 36.266327, 30.110153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.237320, 36.640560, 30.206549>,  <30.299263, 36.865101, 30.264385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.237320, 36.640560, 30.206549>,  <30.134081, 36.266327, 30.110153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.237320, 36.640560, 30.206549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157421, -0.286831, 0.944958,
		0.953207, -0.205957, -0.221311,
		0.258100, 0.935580, 0.240987,
		30.314751, 36.921234, 30.278845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.811579, 35.657360, 30.389654>,  <30.134081, 36.266327, 30.110153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.811579, 35.657360, 30.389654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.809908, 35.274330, 30.504919>,  <29.808905, 35.044514, 30.574078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.809908, 35.274330, 30.504919>,  <29.811579, 35.657360, 30.389654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.809908, 35.274330, 30.504919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792065, -0.179071, -0.583581,
		0.610422, 0.225803, 0.759208,
		-0.004178, -0.957573, 0.288160,
		29.808655, 34.987057, 30.591368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.476274, 35.471466, 30.617790>,  <29.811579, 35.657360, 30.389654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.476274, 35.471466, 30.617790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.264654, 35.163227, 30.475643>,  <30.137682, 34.978283, 30.390354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.264654, 35.163227, 30.475643>,  <30.476274, 35.471466, 30.617790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.264654, 35.163227, 30.475643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759089, -0.242557, -0.604110,
		0.379329, -0.589360, 0.713278,
		-0.529049, -0.770598, -0.355368,
		30.105940, 34.932049, 30.369032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.768852, 34.708755, 30.805395>,  <30.476274, 35.471466, 30.617790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.768852, 34.708755, 30.805395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.572746, 34.783009, 30.464764>,  <30.455082, 34.827560, 30.260386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.572746, 34.783009, 30.464764>,  <30.768852, 34.708755, 30.805395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.572746, 34.783009, 30.464764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835812, -0.176873, -0.519744,
		-0.247101, -0.966570, -0.068438,
		-0.490264, 0.185631, -0.851577,
		30.425667, 34.838699, 30.209291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.973040, 34.124290, 30.265434>,  <30.768852, 34.708755, 30.805395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.973040, 34.124290, 30.265434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.811399, 34.426010, 30.058462>,  <30.714415, 34.607044, 29.934278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.811399, 34.426010, 30.058462>,  <30.973040, 34.124290, 30.265434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.811399, 34.426010, 30.058462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623839, -0.186437, -0.758991,
		-0.668976, -0.629500, -0.395223,
		-0.404100, 0.754302, -0.517428,
		30.690168, 34.652302, 29.903234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.225048, 34.123619, 29.584919>,  <30.973040, 34.124290, 30.265434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.225048, 34.123619, 29.584919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.049101, 34.480873, 29.547329>,  <30.943533, 34.695225, 29.524775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.049101, 34.480873, 29.547329>,  <31.225048, 34.123619, 29.584919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.049101, 34.480873, 29.547329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387631, 0.094428, -0.916965,
		-0.810097, -0.439772, -0.387742,
		-0.439869, 0.893131, -0.093973,
		30.917141, 34.748814, 29.519136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.997675, 34.143524, 28.890747>,  <31.225048, 34.123619, 29.584919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.997675, 34.143524, 28.890747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.991049, 34.521957, 29.020142>,  <30.987074, 34.749020, 29.097778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.991049, 34.521957, 29.020142>,  <30.997675, 34.143524, 28.890747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.991049, 34.521957, 29.020142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388857, 0.304157, -0.869643,
		-0.921149, 0.111385, -0.372930,
		-0.016564, 0.946088, 0.323487,
		30.986080, 34.805782, 29.117188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.483473, 34.547379, 28.469530>,  <30.997675, 34.143524, 28.890747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.483473, 34.547379, 28.469530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.773949, 34.781712, 28.613443>,  <30.948235, 34.922314, 28.699791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.773949, 34.781712, 28.613443>,  <30.483473, 34.547379, 28.469530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.773949, 34.781712, 28.613443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256738, 0.254376, -0.932404,
		-0.637755, 0.769474, 0.034319,
		0.726191, 0.585835, 0.359783,
		30.991806, 34.957462, 28.721378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.469013, 35.179268, 28.120607>,  <30.483473, 34.547379, 28.469530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.469013, 35.179268, 28.120607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.841467, 35.173595, 28.266369>,  <31.064939, 35.170193, 28.353825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.841467, 35.173595, 28.266369>,  <30.469013, 35.179268, 28.120607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.841467, 35.173595, 28.266369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359457, 0.204180, -0.910550,
		-0.061492, 0.978831, 0.195216,
		0.931134, -0.014181, 0.364403,
		31.120808, 35.169342, 28.375690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.730331, 35.820599, 27.933140>,  <30.469013, 35.179268, 28.120607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.730331, 35.820599, 27.933140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.054661, 35.604099, 28.022236>,  <31.249258, 35.474197, 28.075693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.054661, 35.604099, 28.022236>,  <30.730331, 35.820599, 27.933140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.054661, 35.604099, 28.022236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454123, 0.341687, -0.822814,
		0.369243, 0.768307, 0.522842,
		0.810822, -0.541253, 0.222740,
		31.297907, 35.441723, 28.089058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.330862, 36.302761, 27.839388>,  <30.730331, 35.820599, 27.933140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.330862, 36.302761, 27.839388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.462675, 35.925186, 27.831507>,  <31.541763, 35.698643, 27.826778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.462675, 35.925186, 27.831507>,  <31.330862, 36.302761, 27.839388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.462675, 35.925186, 27.831507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300259, 0.124562, -0.945689,
		0.895127, 0.305721, 0.324474,
		0.329534, -0.943938, -0.019703,
		31.561535, 35.642006, 27.825596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.996908, 36.281723, 27.482580>,  <31.330862, 36.302761, 27.839388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.996908, 36.281723, 27.482580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.893078, 35.896751, 27.450729>,  <31.830780, 35.665768, 27.431618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.893078, 35.896751, 27.450729>,  <31.996908, 36.281723, 27.482580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.893078, 35.896751, 27.450729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385407, -0.027638, -0.922333,
		0.885483, -0.270107, 0.378103,
		-0.259578, -0.962434, -0.079628,
		31.815205, 35.608021, 27.426842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.519230, 35.913345, 27.171368>,  <31.996908, 36.281723, 27.482580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.519230, 35.913345, 27.171368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.186329, 35.717842, 27.066702>,  <31.986588, 35.600540, 27.003902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.186329, 35.717842, 27.066702>,  <32.519230, 35.913345, 27.171368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.186329, 35.717842, 27.066702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301340, -0.002639, -0.953513,
		0.465343, -0.872417, 0.149478,
		-0.832256, -0.488755, -0.261666,
		31.936651, 35.571217, 26.988203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.765648, 35.414608, 26.750635>,  <32.519230, 35.913345, 27.171368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.765648, 35.414608, 26.750635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.374859, 35.439777, 26.669081>,  <32.140385, 35.454880, 26.620148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.374859, 35.439777, 26.669081>,  <32.765648, 35.414608, 26.750635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.374859, 35.439777, 26.669081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194989, -0.124772, -0.972837,
		-0.086649, -0.990188, 0.109630,
		-0.976971, 0.062919, -0.203887,
		32.081768, 35.458656, 26.607914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.591648, 35.003311, 26.150671>,  <32.765648, 35.414608, 26.750635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.591648, 35.003311, 26.150671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.267010, 35.235497, 26.177128>,  <32.072227, 35.374805, 26.193003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.267010, 35.235497, 26.177128>,  <32.591648, 35.003311, 26.150671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.267010, 35.235497, 26.177128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101315, -0.028343, -0.994450,
		-0.575365, -0.813794, 0.081813,
		-0.811597, 0.580461, 0.066142,
		32.023529, 35.409634, 26.196970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.122944, 34.636436, 25.774651>,  <32.591648, 35.003311, 26.150671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.122944, 34.636436, 25.774651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.012241, 35.018959, 25.812355>,  <31.945820, 35.248474, 25.834978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.012241, 35.018959, 25.812355>,  <32.122944, 34.636436, 25.774651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.012241, 35.018959, 25.812355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244323, 0.164894, -0.955571,
		-0.929362, -0.241427, -0.279283,
		-0.276753, 0.956307, 0.094260,
		31.929216, 35.305851, 25.840633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.542078, 34.730251, 25.316429>,  <32.122944, 34.636436, 25.774651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.542078, 34.730251, 25.316429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.691038, 35.099461, 25.355106>,  <31.780415, 35.320984, 25.378313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.691038, 35.099461, 25.355106>,  <31.542078, 34.730251, 25.316429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.691038, 35.099461, 25.355106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110552, 0.147562, -0.982855,
		-0.921463, 0.355328, 0.156995,
		0.372402, 0.923021, 0.096691,
		31.802759, 35.376366, 25.384113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.050131, 35.186108, 24.964928>,  <31.542078, 34.730251, 25.316429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.050131, 35.186108, 24.964928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.391577, 35.393974, 24.979292>,  <31.596445, 35.518692, 24.987909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.391577, 35.393974, 24.979292>,  <31.050131, 35.186108, 24.964928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.391577, 35.393974, 24.979292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077797, 0.195345, -0.977644,
		-0.515062, 0.831738, 0.207178,
		0.853615, 0.519665, 0.035908,
		31.647661, 35.549873, 24.990065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.937847, 35.812004, 24.548044>,  <31.050131, 35.186108, 24.964928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.937847, 35.812004, 24.548044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.337048, 35.830215, 24.565565>,  <31.576569, 35.841141, 24.576077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.337048, 35.830215, 24.565565>,  <30.937847, 35.812004, 24.548044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.337048, 35.830215, 24.565565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023719, 0.372570, -0.927701,
		-0.058554, 0.926887, 0.370745,
		0.998002, 0.045527, 0.043800,
		31.636448, 35.843872, 24.578705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.137495, 36.491360, 24.396175>,  <30.937847, 35.812004, 24.548044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.137495, 36.491360, 24.396175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.470373, 36.278667, 24.333298>,  <31.670099, 36.151051, 24.295572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.470373, 36.278667, 24.333298>,  <31.137495, 36.491360, 24.396175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.470373, 36.278667, 24.333298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072955, 0.386033, -0.919595,
		0.549663, 0.753815, 0.360048,
		0.832195, -0.531735, -0.157193,
		31.720032, 36.119148, 24.286140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.650013, 36.966518, 24.190083>,  <31.137495, 36.491360, 24.396175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.650013, 36.966518, 24.190083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.773668, 36.607727, 24.063677>,  <31.847862, 36.392452, 23.987833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.773668, 36.607727, 24.063677>,  <31.650013, 36.966518, 24.190083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.773668, 36.607727, 24.063677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242374, 0.395626, -0.885853,
		0.919613, 0.197259, 0.339707,
		0.309139, -0.896978, -0.316013,
		31.866409, 36.338634, 23.968874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.096855, 37.175274, 23.744528>,  <31.650013, 36.966518, 24.190083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.096855, 37.175274, 23.744528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.006531, 36.801727, 23.633600>,  <31.952335, 36.577599, 23.567043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.006531, 36.801727, 23.633600>,  <32.096855, 37.175274, 23.744528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.006531, 36.801727, 23.633600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117871, 0.256388, -0.959360,
		0.967014, -0.249322, 0.052180,
		-0.225811, -0.933865, -0.277319,
		31.938787, 36.521568, 23.550406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.595184, 36.977875, 23.223581>,  <32.096855, 37.175274, 23.744528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.595184, 36.977875, 23.223581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.291000, 36.730316, 23.144924>,  <32.108490, 36.581783, 23.097731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.291000, 36.730316, 23.144924>,  <32.595184, 36.977875, 23.223581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.291000, 36.730316, 23.144924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065083, 0.228652, -0.971330,
		0.646113, -0.751457, -0.133601,
		-0.760461, -0.618894, -0.196642,
		32.062862, 36.544647, 23.085932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.755138, 36.716499, 22.548849>,  <32.595184, 36.977875, 23.223581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.755138, 36.716499, 22.548849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.379715, 36.597149, 22.618227>,  <32.154461, 36.525539, 22.659855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.379715, 36.597149, 22.618227>,  <32.755138, 36.716499, 22.548849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.379715, 36.597149, 22.618227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186596, 0.015932, -0.982307,
		0.290338, -0.954314, -0.070630,
		-0.938555, -0.298380, 0.173446,
		32.098148, 36.507633, 22.670261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575336, 36.111794, 22.131874>,  <32.755138, 36.716499, 22.548849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575336, 36.111794, 22.131874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.236572, 36.309063, 22.211397>,  <32.033314, 36.427425, 22.259111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.236572, 36.309063, 22.211397>,  <32.575336, 36.111794, 22.131874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.236572, 36.309063, 22.211397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271221, -0.079057, -0.959265,
		-0.457365, -0.866332, 0.200713,
		-0.846910, 0.493172, 0.198810,
		31.982500, 36.457016, 22.271040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.065006, 35.822826, 21.648005>,  <32.575336, 36.111794, 22.131874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.065006, 35.822826, 21.648005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926579, 36.173592, 21.781424>,  <31.843521, 36.384052, 21.861475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926579, 36.173592, 21.781424>,  <32.065006, 35.822826, 21.648005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926579, 36.173592, 21.781424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463208, 0.149468, -0.873555,
		-0.815889, -0.456813, 0.354468,
		-0.346070, 0.876915, 0.333549,
		31.822758, 36.436665, 21.881489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.420336, 35.887951, 21.372427>,  <32.065006, 35.822826, 21.648005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.420336, 35.887951, 21.372427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.527851, 36.261848, 21.465391>,  <31.592360, 36.486187, 21.521170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.527851, 36.261848, 21.465391>,  <31.420336, 35.887951, 21.372427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.527851, 36.261848, 21.465391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523856, 0.344350, -0.779101,
		-0.808287, 0.087664, 0.582226,
		0.268789, 0.934740, 0.232410,
		31.608488, 36.542271, 21.535114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.832891, 36.315948, 21.149271>,  <31.420336, 35.887951, 21.372427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.832891, 36.315948, 21.149271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.142359, 36.567108, 21.183172>,  <31.328039, 36.717804, 21.203512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.142359, 36.567108, 21.183172>,  <30.832891, 36.315948, 21.149271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.142359, 36.567108, 21.183172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360398, 0.546139, -0.756205,
		-0.521103, 0.554509, 0.648823,
		0.773669, 0.627895, 0.084751,
		31.374460, 36.755478, 21.208597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.502590, 36.941917, 21.135113>,  <30.832891, 36.315948, 21.149271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.502590, 36.941917, 21.135113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.884867, 37.019398, 21.046448>,  <31.114233, 37.065887, 20.993248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.884867, 37.019398, 21.046448>,  <30.502590, 36.941917, 21.135113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.884867, 37.019398, 21.046448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285380, 0.424968, -0.859046,
		-0.072197, 0.884241, 0.461417,
		0.955691, 0.193700, -0.221664,
		31.171574, 37.077507, 20.979948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.526701, 37.610554, 20.834604>,  <30.502590, 36.941917, 21.135113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.526701, 37.610554, 20.834604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.860775, 37.421097, 20.722795>,  <31.061218, 37.307423, 20.655710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.860775, 37.421097, 20.722795>,  <30.526701, 37.610554, 20.834604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.860775, 37.421097, 20.722795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099436, 0.369823, -0.923766,
		0.540908, 0.799308, 0.261773,
		0.835183, -0.473642, -0.279520,
		31.111330, 37.279003, 20.638939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.709160, 37.982113, 20.335167>,  <30.526701, 37.610554, 20.834604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.709160, 37.982113, 20.335167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.968857, 37.682133, 20.284468>,  <31.124674, 37.502144, 20.254047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.968857, 37.682133, 20.284468>,  <30.709160, 37.982113, 20.335167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.968857, 37.682133, 20.284468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037588, 0.198081, -0.979465,
		0.759653, 0.631145, 0.156791,
		0.649241, -0.749947, -0.126750,
		31.163630, 37.457150, 20.246443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.321167, 38.266285, 20.013247>,  <30.709160, 37.982113, 20.335167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.321167, 38.266285, 20.013247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.326702, 37.882011, 19.902323>,  <31.330023, 37.651447, 19.835768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.326702, 37.882011, 19.902323>,  <31.321167, 38.266285, 20.013247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.326702, 37.882011, 19.902323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151230, 0.276156, -0.949140,
		0.988402, -0.028804, 0.149105,
		0.013837, -0.960681, -0.277309,
		31.330853, 37.593807, 19.819130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.973663, 38.135365, 19.668415>,  <31.321167, 38.266285, 20.013247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.973663, 38.135365, 19.668415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.717613, 37.860428, 19.531128>,  <31.563984, 37.695465, 19.448755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.717613, 37.860428, 19.531128>,  <31.973663, 38.135365, 19.668415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.717613, 37.860428, 19.531128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197001, 0.284952, -0.938080,
		0.742585, -0.668101, -0.046997,
		-0.640124, -0.687345, -0.343217,
		31.525576, 37.654224, 19.428164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.401249, 37.745403, 19.154964>,  <31.973663, 38.135365, 19.668415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.401249, 37.745403, 19.154964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009789, 37.681038, 19.103825>,  <31.774912, 37.642418, 19.073141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009789, 37.681038, 19.103825>,  <32.401249, 37.745403, 19.154964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.009789, 37.681038, 19.103825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085320, 0.247843, -0.965036,
		0.186975, -0.955343, -0.228823,
		-0.978653, -0.160915, -0.127850,
		31.716192, 37.632763, 19.065470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.356060, 37.391068, 18.511496>,  <32.401249, 37.745403, 19.154964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.356060, 37.391068, 18.511496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.980455, 37.517612, 18.565420>,  <31.755093, 37.593540, 18.597775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.980455, 37.517612, 18.565420>,  <32.356060, 37.391068, 18.511496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.980455, 37.517612, 18.565420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059512, 0.236614, -0.969779,
		-0.338698, -0.918657, -0.203356,
		-0.939011, 0.316361, 0.134811,
		31.698751, 37.612522, 18.605864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.132076, 37.395004, 17.799034>,  <32.356060, 37.391068, 18.511496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.132076, 37.395004, 17.799034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.857359, 37.601486, 18.003721>,  <31.692530, 37.725376, 18.126534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.857359, 37.601486, 18.003721>,  <32.132076, 37.395004, 17.799034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.857359, 37.601486, 18.003721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158856, 0.580400, -0.798687,
		-0.709284, -0.629820, -0.316611,
		-0.686790, 0.516201, 0.511719,
		31.651321, 37.756348, 18.157236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.394882, 37.315205, 17.390705>,  <32.132076, 37.395004, 17.799034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.394882, 37.315205, 17.390705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.451601, 37.640789, 17.616043>,  <31.485632, 37.836140, 17.751245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.451601, 37.640789, 17.616043>,  <31.394882, 37.315205, 17.390705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.451601, 37.640789, 17.616043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043596, 0.563410, -0.825026,
		-0.988935, 0.141546, 0.044404,
		0.141796, 0.813962, 0.563347,
		31.494141, 37.884979, 17.785048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.998245, 37.805244, 17.144897>,  <31.394882, 37.315205, 17.390705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.998245, 37.805244, 17.144897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.287384, 38.016922, 17.322638>,  <31.460867, 38.143929, 17.429281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.287384, 38.016922, 17.322638>,  <30.998245, 37.805244, 17.144897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.287384, 38.016922, 17.322638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142580, 0.743430, -0.653439,
		-0.676138, 0.408981, 0.612839,
		0.722848, 0.529193, 0.444349,
		31.504238, 38.175678, 17.455942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.807016, 38.448795, 16.958693>,  <30.998245, 37.805244, 17.144897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.807016, 38.448795, 16.958693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.181316, 38.487865, 17.094238>,  <31.405897, 38.511307, 17.175566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.181316, 38.487865, 17.094238>,  <30.807016, 38.448795, 16.958693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.181316, 38.487865, 17.094238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133121, 0.791954, -0.595892,
		-0.326570, 0.602717, 0.728069,
		0.935751, 0.097679, 0.338863,
		31.462042, 38.517170, 17.195896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.961662, 39.105713, 17.137964>,  <30.807016, 38.448795, 16.958693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.961662, 39.105713, 17.137964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.322512, 38.956371, 17.051455>,  <31.539022, 38.866764, 16.999550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.322512, 38.956371, 17.051455>,  <30.961662, 39.105713, 17.137964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.322512, 38.956371, 17.051455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094117, 0.659446, -0.745837,
		0.421085, 0.652483, 0.630042,
		0.902125, -0.373358, -0.216273,
		31.593149, 38.844364, 16.986572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.417002, 39.734528, 17.006088>,  <30.961662, 39.105713, 17.137964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.417002, 39.734528, 17.006088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.650583, 39.444897, 16.859278>,  <31.790733, 39.271118, 16.771193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.650583, 39.444897, 16.859278>,  <31.417002, 39.734528, 17.006088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.650583, 39.444897, 16.859278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159707, 0.545757, -0.822583,
		0.795920, 0.421736, 0.434338,
		0.583956, -0.724077, -0.367025,
		31.825769, 39.227673, 16.749170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.085938, 40.100559, 16.699251>,  <31.417002, 39.734528, 17.006088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.085938, 40.100559, 16.699251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.027088, 39.733643, 16.551237>,  <31.991777, 39.513493, 16.462429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.027088, 39.733643, 16.551237>,  <32.085938, 40.100559, 16.699251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.027088, 39.733643, 16.551237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283925, 0.319199, -0.904156,
		0.947492, -0.238086, 0.213480,
		-0.147124, -0.917293, -0.370037,
		31.982950, 39.458454, 16.440226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731739, 40.078396, 16.483387>,  <32.085938, 40.100559, 16.699251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731739, 40.078396, 16.483387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.455460, 39.847893, 16.308632>,  <32.289692, 39.709591, 16.203779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.455460, 39.847893, 16.308632>,  <32.731739, 40.078396, 16.483387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.455460, 39.847893, 16.308632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205777, 0.422555, -0.882668,
		0.693251, -0.699556, -0.173277,
		-0.690695, -0.576254, -0.436889,
		32.248253, 39.675018, 16.177565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.953781, 40.014748, 15.822095>,  <32.731739, 40.078396, 16.483387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.953781, 40.014748, 15.822095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574219, 39.894382, 15.784081>,  <32.346481, 39.822163, 15.761272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574219, 39.894382, 15.784081>,  <32.953781, 40.014748, 15.822095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.574219, 39.894382, 15.784081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025859, 0.374293, -0.926950,
		0.314499, -0.877130, -0.362950,
		-0.948906, -0.300910, -0.095033,
		32.289547, 39.804108, 15.755570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.879204, 39.761745, 15.116011>,  <32.953781, 40.014748, 15.822095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.879204, 39.761745, 15.116011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.522423, 39.868088, 15.262292>,  <32.308353, 39.931892, 15.350060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.522423, 39.868088, 15.262292>,  <32.879204, 39.761745, 15.116011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.522423, 39.868088, 15.262292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267827, 0.340980, -0.901111,
		-0.364261, -0.901696, -0.232936,
		-0.891955, 0.265853, 0.365704,
		32.254837, 39.947845, 15.372003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.455708, 39.654266, 14.574949>,  <32.879204, 39.761745, 15.116011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.455708, 39.654266, 14.574949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.227077, 39.881123, 14.812153>,  <32.089901, 40.017235, 14.954474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.227077, 39.881123, 14.812153>,  <32.455708, 39.654266, 14.574949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.227077, 39.881123, 14.812153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407406, 0.431180, -0.805049,
		-0.712267, -0.701739, -0.015395,
		-0.571573, 0.567138, 0.593008,
		32.055607, 40.051266, 14.990055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.843178, 39.704453, 14.188985>,  <32.455708, 39.654266, 14.574949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.843178, 39.704453, 14.188985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.840853, 40.025322, 14.427809>,  <31.839458, 40.217846, 14.571103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.840853, 40.025322, 14.427809>,  <31.843178, 39.704453, 14.188985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.840853, 40.025322, 14.427809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406467, 0.543625, -0.734341,
		-0.913647, -0.246954, 0.322898,
		-0.005813, 0.802175, 0.597060,
		31.839109, 40.265976, 14.606927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.127087, 39.872215, 14.195737>,  <31.843178, 39.704453, 14.188985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.127087, 39.872215, 14.195737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.359953, 40.183506, 14.289926>,  <31.499672, 40.370281, 14.346438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.359953, 40.183506, 14.289926>,  <31.127087, 39.872215, 14.195737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.359953, 40.183506, 14.289926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430946, 0.540919, -0.722282,
		-0.689470, 0.319012, 0.650278,
		0.582165, 0.778227, 0.235471,
		31.534603, 40.416973, 14.360567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.668848, 40.446339, 14.126289>,  <31.127087, 39.872215, 14.195737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.668848, 40.446339, 14.126289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.053967, 40.546055, 14.084575>,  <31.285038, 40.605885, 14.059546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.053967, 40.546055, 14.084575>,  <30.668848, 40.446339, 14.126289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.053967, 40.546055, 14.084575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230883, 0.558376, -0.796812,
		-0.140406, 0.791247, 0.595160,
		0.962798, 0.249290, -0.104286,
		31.342806, 40.620842, 14.053288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.776495, 41.154530, 14.360670>,  <30.668848, 40.446339, 14.126289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.776495, 41.154530, 14.360670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.027922, 41.049374, 14.067879>,  <31.178778, 40.986279, 13.892204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.027922, 41.049374, 14.067879>,  <30.776495, 41.154530, 14.360670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.027922, 41.049374, 14.067879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364070, 0.732206, -0.575611,
		0.687283, 0.628301, 0.364529,
		0.628567, -0.262893, -0.731978,
		31.216492, 40.970505, 13.848286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.294514, 41.741722, 14.177032>,  <30.776495, 41.154530, 14.360670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.294514, 41.741722, 14.177032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.198299, 41.510639, 13.865031>,  <31.140572, 41.371990, 13.677831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.198299, 41.510639, 13.865031>,  <31.294514, 41.741722, 14.177032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.198299, 41.510639, 13.865031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293088, 0.809313, -0.509031,
		0.925334, 0.106169, -0.363985,
		-0.240535, -0.577703, -0.780002,
		31.126139, 41.337330, 13.631031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.769070, 42.147346, 14.589128>,  <31.294514, 41.741722, 14.177032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.769070, 42.147346, 14.589128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.787756, 42.541584, 14.654146>,  <31.798967, 42.778126, 14.693156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.787756, 42.541584, 14.654146>,  <31.769070, 42.147346, 14.589128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.787756, 42.541584, 14.654146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261738, 0.144958, -0.954191,
		-0.964008, 0.087121, -0.251195,
		0.046717, 0.985595, 0.162544,
		31.801771, 42.837261, 14.702909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.552454, 42.413181, 14.034373>,  <31.769070, 42.147346, 14.589128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.552454, 42.413181, 14.034373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.739199, 42.731110, 14.189447>,  <31.851246, 42.921867, 14.282492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.739199, 42.731110, 14.189447>,  <31.552454, 42.413181, 14.034373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.739199, 42.731110, 14.189447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354916, 0.233133, -0.905364,
		-0.809984, 0.560276, -0.173253,
		0.466863, 0.794821, 0.387685,
		31.879257, 42.969555, 14.305753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.353163, 43.139519, 13.632746>,  <31.552454, 42.413181, 14.034373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.353163, 43.139519, 13.632746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.710760, 43.106255, 13.808863>,  <31.925320, 43.086296, 13.914533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.710760, 43.106255, 13.808863>,  <31.353163, 43.139519, 13.632746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.710760, 43.106255, 13.808863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442107, 0.323566, -0.836568,
		-0.072895, 0.942544, 0.326032,
		0.893995, -0.083159, 0.440292,
		31.978958, 43.081306, 13.940950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.644697, 43.782612, 13.673800>,  <31.353163, 43.139519, 13.632746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.644697, 43.782612, 13.673800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.966927, 43.547344, 13.702385>,  <32.160263, 43.406181, 13.719536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.966927, 43.547344, 13.702385>,  <31.644697, 43.782612, 13.673800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.966927, 43.547344, 13.702385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506005, 0.620206, -0.599419,
		0.308239, 0.519036, 0.797239,
		0.805573, -0.588171, 0.071463,
		32.208599, 43.370892, 13.723824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.276943, 44.035873, 14.151848>,  <31.644697, 43.782612, 13.673800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.276943, 44.035873, 14.151848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366558, 43.843460, 13.812811>,  <32.420326, 43.728012, 13.609388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366558, 43.843460, 13.812811>,  <32.276943, 44.035873, 14.151848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366558, 43.843460, 13.812811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475694, 0.813036, -0.335690,
		0.850602, -0.327989, 0.410973,
		0.224033, -0.481037, -0.847592,
		32.433769, 43.699150, 13.558533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.480659, 43.974503, 14.818640>,  <32.276943, 44.035873, 14.151848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.480659, 43.974503, 14.818640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.276653, 43.671497, 14.655640>,  <32.154251, 43.489693, 14.557839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.276653, 43.671497, 14.655640>,  <32.480659, 43.974503, 14.818640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.276653, 43.671497, 14.655640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408061, -0.203967, 0.889878,
		-0.757214, 0.620134, -0.205087,
		-0.510013, -0.757517, -0.407499,
		32.123650, 43.444241, 14.533390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.822138, 44.112789, 14.935553>,  <32.480659, 43.974503, 14.818640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.822138, 44.112789, 14.935553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.821936, 43.722713, 14.846998>,  <31.821814, 43.488670, 14.793865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.821936, 43.722713, 14.846998>,  <31.822138, 44.112789, 14.935553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.821936, 43.722713, 14.846998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497966, -0.191739, 0.845734,
		-0.867196, 0.110672, -0.485513,
		-0.000507, -0.975186, -0.221386,
		31.821783, 43.430157, 14.780582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.153618, 43.936543, 15.031807>,  <31.822138, 44.112789, 14.935553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.153618, 43.936543, 15.031807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.379084, 43.609589, 15.079409>,  <31.514362, 43.413414, 15.107970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.379084, 43.609589, 15.079409>,  <31.153618, 43.936543, 15.031807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.379084, 43.609589, 15.079409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603622, -0.309264, 0.734844,
		-0.563849, -0.486038, -0.667714,
		0.563662, -0.817388, 0.119005,
		31.548182, 43.364372, 15.115110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.768890, 43.493538, 15.127532>,  <31.153618, 43.936543, 15.031807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.768890, 43.493538, 15.127532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.088104, 43.288467, 15.254211>,  <31.279633, 43.165424, 15.330219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.088104, 43.288467, 15.254211>,  <30.768890, 43.493538, 15.127532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.088104, 43.288467, 15.254211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505914, -0.284472, 0.814326,
		-0.327395, -0.810085, -0.486390,
		0.798037, -0.512678, 0.316699,
		31.327515, 43.134663, 15.349220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.446680, 42.887684, 15.391240>,  <30.768890, 43.493538, 15.127532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.446680, 42.887684, 15.391240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.808475, 42.887024, 15.561836>,  <31.025553, 42.886627, 15.664194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.808475, 42.887024, 15.561836>,  <30.446680, 42.887684, 15.391240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.808475, 42.887024, 15.561836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407969, -0.294861, 0.864071,
		0.124332, -0.955539, -0.267371,
		0.904491, -0.001647, 0.426491,
		31.079823, 42.886528, 15.689783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.422159, 42.326748, 15.908716>,  <30.446680, 42.887684, 15.391240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.422159, 42.326748, 15.908716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.746407, 42.540646, 16.004175>,  <30.940954, 42.668983, 16.061451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.746407, 42.540646, 16.004175>,  <30.422159, 42.326748, 15.908716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.746407, 42.540646, 16.004175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215459, -0.106584, 0.970679,
		0.544499, -0.838266, 0.028817,
		0.810616, 0.534743, 0.238647,
		30.989592, 42.701069, 16.075769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.715235, 41.944244, 16.374010>,  <30.422159, 42.326748, 15.908716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.715235, 41.944244, 16.374010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.916157, 42.286766, 16.422058>,  <31.036709, 42.492279, 16.450888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.916157, 42.286766, 16.422058>,  <30.715235, 41.944244, 16.374010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.916157, 42.286766, 16.422058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107864, -0.075782, 0.991273,
		0.857938, -0.510877, 0.054299,
		0.502303, 0.856307, 0.120122,
		31.066847, 42.543659, 16.458094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.299160, 41.883987, 16.791983>,  <30.715235, 41.944244, 16.374010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.299160, 41.883987, 16.791983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.190706, 42.266689, 16.834146>,  <31.125633, 42.496311, 16.859444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.190706, 42.266689, 16.834146>,  <31.299160, 41.883987, 16.791983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.190706, 42.266689, 16.834146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079071, -0.131280, 0.988187,
		0.959288, 0.259596, 0.111246,
		-0.271134, 0.956753, 0.105409,
		31.109365, 42.553715, 16.865768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.751102, 42.263992, 17.204716>,  <31.299160, 41.883987, 16.791983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.751102, 42.263992, 17.204716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.407379, 42.459961, 17.263456>,  <31.201145, 42.577541, 17.298700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.407379, 42.459961, 17.263456>,  <31.751102, 42.263992, 17.204716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.407379, 42.459961, 17.263456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064347, -0.181286, 0.981323,
		0.507391, 0.852710, 0.124256,
		-0.859310, 0.489919, 0.146852,
		31.149586, 42.606937, 17.307512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.744421, 42.422451, 17.859703>,  <31.751102, 42.263992, 17.204716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.744421, 42.422451, 17.859703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.362883, 42.524570, 17.796452>,  <31.133961, 42.585842, 17.758501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.362883, 42.524570, 17.796452>,  <31.744421, 42.422451, 17.859703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.362883, 42.524570, 17.796452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177354, -0.053976, 0.982666,
		0.242337, 0.965355, 0.096762,
		-0.953844, 0.255298, -0.158129,
		31.076729, 42.601158, 17.749012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.582422, 43.003899, 18.367029>,  <31.744421, 42.422451, 17.859703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.582422, 43.003899, 18.367029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.247311, 42.815723, 18.256165>,  <31.046244, 42.702820, 18.189646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.247311, 42.815723, 18.256165>,  <31.582422, 43.003899, 18.367029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.247311, 42.815723, 18.256165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184117, -0.234478, 0.954526,
		-0.514034, 0.850710, 0.109825,
		-0.837777, -0.470438, -0.277160,
		30.995977, 42.674591, 18.173016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.091972, 43.182995, 18.902298>,  <31.582422, 43.003899, 18.367029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.091972, 43.182995, 18.902298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.932344, 42.858765, 18.730854>,  <30.836569, 42.664227, 18.627987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.932344, 42.858765, 18.730854>,  <31.091972, 43.182995, 18.902298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.932344, 42.858765, 18.730854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361592, -0.290440, 0.885944,
		-0.842613, 0.508533, -0.177193,
		-0.399068, -0.810579, -0.428609,
		30.812624, 42.615589, 18.602272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.436665, 43.236645, 19.088524>,  <31.091972, 43.182995, 18.902298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.436665, 43.236645, 19.088524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.540247, 42.856949, 19.017090>,  <30.602396, 42.629131, 18.974230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.540247, 42.856949, 19.017090>,  <30.436665, 43.236645, 19.088524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.540247, 42.856949, 19.017090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442965, -0.281012, 0.851360,
		-0.858327, -0.141357, -0.493248,
		0.258954, -0.949237, -0.178584,
		30.617933, 42.572178, 18.963514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.968725, 42.921124, 19.477835>,  <30.436665, 43.236645, 19.088524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.968725, 42.921124, 19.477835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.210732, 42.620262, 19.373363>,  <30.355936, 42.439743, 19.310680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.210732, 42.620262, 19.373363>,  <29.968725, 42.921124, 19.477835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.210732, 42.620262, 19.373363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323229, -0.531800, 0.782759,
		-0.727652, -0.389162, -0.564867,
		0.605017, -0.752158, -0.261177,
		30.392237, 42.394615, 19.295012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.559179, 42.299896, 19.548073>,  <29.968725, 42.921124, 19.477835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.559179, 42.299896, 19.548073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.944403, 42.197536, 19.581612>,  <30.175537, 42.136120, 19.601736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.944403, 42.197536, 19.581612>,  <29.559179, 42.299896, 19.548073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.944403, 42.197536, 19.581612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207226, -0.505428, 0.837616,
		-0.171964, -0.824050, -0.539787,
		0.963060, -0.255898, 0.083849,
		30.233320, 42.120766, 19.606766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.631729, 41.632553, 19.766579>,  <29.559179, 42.299896, 19.548073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.631729, 41.632553, 19.766579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.015944, 41.709194, 19.847233>,  <30.246471, 41.755180, 19.895626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.015944, 41.709194, 19.847233>,  <29.631729, 41.632553, 19.766579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.015944, 41.709194, 19.847233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081172, -0.500269, 0.862057,
		0.266048, -0.844404, -0.464974,
		0.960536, 0.191605, 0.201638,
		30.304104, 41.766674, 19.907724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.907034, 40.983387, 19.915985>,  <29.631729, 41.632553, 19.766579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.907034, 40.983387, 19.915985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.154211, 41.255104, 20.074327>,  <30.302517, 41.418137, 20.169333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.154211, 41.255104, 20.074327>,  <29.907034, 40.983387, 19.915985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.154211, 41.255104, 20.074327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088062, -0.560125, 0.823714,
		0.781274, -0.474150, -0.405946,
		0.617945, 0.679295, 0.395856,
		30.339594, 41.458893, 20.193085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.436718, 40.607006, 20.269035>,  <29.907034, 40.983387, 19.915985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.436718, 40.607006, 20.269035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.423740, 40.971905, 20.432379>,  <30.415955, 41.190845, 20.530384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.423740, 40.971905, 20.432379>,  <30.436718, 40.607006, 20.269035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.423740, 40.971905, 20.432379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029008, -0.409259, 0.911957,
		0.999053, 0.017741, 0.039740,
		-0.032443, 0.912246, 0.408357,
		30.414007, 41.245579, 20.554886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.955170, 40.570412, 20.699415>,  <30.436718, 40.607006, 20.269035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.955170, 40.570412, 20.699415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.739052, 40.884953, 20.819231>,  <30.609381, 41.073677, 20.891121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.739052, 40.884953, 20.819231>,  <30.955170, 40.570412, 20.699415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.739052, 40.884953, 20.819231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047736, -0.384037, 0.922083,
		0.840120, 0.483899, 0.245031,
		-0.540296, 0.786357, 0.299538,
		30.576963, 41.120861, 20.909092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.276157, 40.813629, 21.262293>,  <30.955170, 40.570412, 20.699415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.276157, 40.813629, 21.262293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.893291, 40.928349, 21.278208>,  <30.663572, 40.997181, 21.287756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.893291, 40.928349, 21.278208>,  <31.276157, 40.813629, 21.262293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.893291, 40.928349, 21.278208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051924, -0.305202, 0.950871,
		0.284849, 0.908075, 0.307020,
		-0.957165, 0.286796, 0.039786,
		30.606142, 41.014389, 21.290144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.185837, 40.945892, 21.970312>,  <31.276157, 40.813629, 21.262293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.185837, 40.945892, 21.970312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.817133, 40.891148, 21.825191>,  <30.595911, 40.858303, 21.738119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.817133, 40.891148, 21.825191>,  <31.185837, 40.945892, 21.970312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.817133, 40.891148, 21.825191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257445, -0.483663, 0.836536,
		-0.289961, 0.864488, 0.410588,
		-0.921762, -0.136859, -0.362802,
		30.540604, 40.850090, 21.716351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.842743, 41.043713, 22.520676>,  <31.185837, 40.945892, 21.970312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.842743, 41.043713, 22.520676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.552536, 40.897758, 22.287273>,  <30.378412, 40.810184, 22.147232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.552536, 40.897758, 22.287273>,  <30.842743, 41.043713, 22.520676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.552536, 40.897758, 22.287273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494805, -0.312722, 0.810785,
		-0.478320, 0.876962, 0.046337,
		-0.725518, -0.364888, -0.583507,
		30.334881, 40.788292, 22.112221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.283327, 41.269295, 22.873100>,  <30.842743, 41.043713, 22.520676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.283327, 41.269295, 22.873100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.173817, 40.972301, 22.628555>,  <30.108110, 40.794106, 22.481829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.173817, 40.972301, 22.628555>,  <30.283327, 41.269295, 22.873100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.173817, 40.972301, 22.628555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366254, -0.507276, 0.780083,
		-0.889328, 0.437482, -0.133057,
		-0.273776, -0.742482, -0.611364,
		30.091684, 40.749557, 22.445147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.575644, 41.083427, 23.014145>,  <30.283327, 41.269295, 22.873100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.575644, 41.083427, 23.014145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.722897, 40.757233, 22.835505>,  <29.811249, 40.561516, 22.728319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.722897, 40.757233, 22.835505>,  <29.575644, 41.083427, 23.014145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.722897, 40.757233, 22.835505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478774, -0.578021, 0.660808,
		-0.797029, -0.029443, -0.603223,
		0.368132, -0.815490, -0.446603,
		29.833336, 40.512585, 22.701523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.990955, 40.598358, 23.010443>,  <29.575644, 41.083427, 23.014145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.990955, 40.598358, 23.010443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.339546, 40.405796, 22.972980>,  <29.548700, 40.290257, 22.950504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.339546, 40.405796, 22.972980>,  <28.990955, 40.598358, 23.010443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.339546, 40.405796, 22.972980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290886, -0.661124, 0.691593,
		-0.394856, -0.575466, -0.716190,
		0.871478, -0.481409, -0.093654,
		29.600990, 40.261372, 22.944885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.785269, 39.915920, 22.867489>,  <28.990955, 40.598358, 23.010443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.785269, 39.915920, 22.867489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.152040, 39.902039, 23.026505>,  <29.372103, 39.893707, 23.121914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.152040, 39.902039, 23.026505>,  <28.785269, 39.915920, 22.867489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.152040, 39.902039, 23.026505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315762, -0.672239, 0.669618,
		0.244001, -0.739520, -0.627355,
		0.916929, -0.034707, 0.397539,
		29.427118, 39.891624, 23.145765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.761620, 39.217190, 23.049278>,  <28.785269, 39.915920, 22.867489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.761620, 39.217190, 23.049278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.048170, 39.390644, 23.267918>,  <29.220100, 39.494717, 23.399101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.048170, 39.390644, 23.267918>,  <28.761620, 39.217190, 23.049278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.048170, 39.390644, 23.267918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124450, -0.691435, 0.711639,
		0.686527, -0.577824, -0.441361,
		0.716374, 0.433632, 0.546600,
		29.263083, 39.520733, 23.431898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.193048, 38.648636, 23.376062>,  <28.761620, 39.217190, 23.049278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.193048, 38.648636, 23.376062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.297806, 38.976532, 23.579805>,  <29.360661, 39.173267, 23.702051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.297806, 38.976532, 23.579805>,  <29.193048, 38.648636, 23.376062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.297806, 38.976532, 23.579805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076925, -0.543830, 0.835662,
		0.962026, -0.179673, -0.205484,
		0.261894, 0.819736, 0.509358,
		29.376373, 39.222454, 23.732613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.751123, 38.471695, 23.732153>,  <29.193048, 38.648636, 23.376062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.751123, 38.471695, 23.732153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.597267, 38.774818, 23.942974>,  <29.504953, 38.956692, 24.069466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.597267, 38.774818, 23.942974>,  <29.751123, 38.471695, 23.732153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.597267, 38.774818, 23.942974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150016, -0.512068, 0.845743,
		0.910794, 0.404374, 0.083279,
		-0.384641, 0.757805, 0.527051,
		29.481874, 39.002159, 24.101089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.226500, 38.634315, 24.317749>,  <29.751123, 38.471695, 23.732153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.226500, 38.634315, 24.317749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.876186, 38.803265, 24.411221>,  <29.665998, 38.904633, 24.467304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.876186, 38.803265, 24.411221>,  <30.226500, 38.634315, 24.317749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.876186, 38.803265, 24.411221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108623, -0.299246, 0.947973,
		0.470325, 0.855601, 0.216195,
		-0.875783, 0.422372, 0.233681,
		29.613451, 38.929977, 24.481325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.301655, 38.980988, 24.906559>,  <30.226500, 38.634315, 24.317749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.301655, 38.980988, 24.906559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.909880, 38.901787, 24.891071>,  <29.674814, 38.854267, 24.881779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.909880, 38.901787, 24.891071>,  <30.301655, 38.980988, 24.906559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.909880, 38.901787, 24.891071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050526, -0.426534, 0.903059,
		-0.195319, 0.882534, 0.427767,
		-0.979437, -0.197998, -0.038720,
		29.616049, 38.842388, 24.879456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.030960, 39.262459, 25.557283>,  <30.301655, 38.980988, 24.906559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.030960, 39.262459, 25.557283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.734285, 39.018387, 25.445873>,  <29.556280, 38.871944, 25.379026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.734285, 39.018387, 25.445873>,  <30.030960, 39.262459, 25.557283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.734285, 39.018387, 25.445873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091434, -0.319398, 0.943199,
		-0.664484, 0.725026, 0.181102,
		-0.741688, -0.610182, -0.278526,
		29.511780, 38.835331, 25.362316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.474300, 39.254845, 26.070772>,  <30.030960, 39.262459, 25.557283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.474300, 39.254845, 26.070772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.465551, 38.917953, 25.855301>,  <29.460302, 38.715820, 25.726017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.465551, 38.917953, 25.855301>,  <29.474300, 39.254845, 26.070772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.465551, 38.917953, 25.855301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026385, -0.539107, 0.841824,
		-0.999413, 0.004201, 0.034014,
		-0.021874, -0.842227, -0.538679,
		29.458990, 38.665287, 25.693697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.900850, 38.982929, 26.391315>,  <29.474300, 39.254845, 26.070772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.900850, 38.982929, 26.391315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.072515, 38.698124, 26.169018>,  <29.175514, 38.527241, 26.035639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.072515, 38.698124, 26.169018>,  <28.900850, 38.982929, 26.391315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.072515, 38.698124, 26.169018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018380, -0.622044, 0.782767,
		-0.903041, -0.325718, -0.280044,
		0.429161, -0.712018, -0.555745,
		29.201263, 38.484520, 26.002295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.496529, 38.306786, 26.494747>,  <28.900850, 38.982929, 26.391315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.496529, 38.306786, 26.494747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.866169, 38.202602, 26.382895>,  <29.087954, 38.140091, 26.315783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.866169, 38.202602, 26.382895>,  <28.496529, 38.306786, 26.494747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.866169, 38.202602, 26.382895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075271, -0.593349, 0.801418,
		-0.374658, -0.761641, -0.528710,
		0.924102, -0.260461, -0.279633,
		29.143400, 38.124462, 26.299004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.457575, 37.646099, 26.636541>,  <28.496529, 38.306786, 26.494747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.457575, 37.646099, 26.636541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.848200, 37.729675, 26.615889>,  <29.082575, 37.779823, 26.603497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.848200, 37.729675, 26.615889>,  <28.457575, 37.646099, 26.636541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.848200, 37.729675, 26.615889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170356, -0.603776, 0.778738,
		0.131537, -0.769284, -0.625220,
		0.976564, 0.208943, -0.051634,
		29.141169, 37.792358, 26.600399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.756447, 36.991028, 26.778049>,  <28.457575, 37.646099, 26.636541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.756447, 36.991028, 26.778049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.054485, 37.250481, 26.840166>,  <29.233309, 37.406151, 26.877436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.054485, 37.250481, 26.840166>,  <28.756447, 36.991028, 26.778049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.054485, 37.250481, 26.840166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119410, -0.358804, 0.925743,
		0.656182, -0.671224, -0.344796,
		0.745095, 0.648628, 0.155290,
		29.278013, 37.445068, 26.886753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.245852, 36.528881, 27.114346>,  <28.756447, 36.991028, 26.778049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.245852, 36.528881, 27.114346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.379902, 36.898159, 27.189600>,  <29.460331, 37.119728, 27.234753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.379902, 36.898159, 27.189600>,  <29.245852, 36.528881, 27.114346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.379902, 36.898159, 27.189600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260746, -0.282764, 0.923069,
		0.905374, -0.260287, -0.335482,
		0.335125, 0.923198, 0.188138,
		29.480440, 37.175117, 27.246042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.016638, 36.513256, 27.300072>,  <29.245852, 36.528881, 27.114346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.016638, 36.513256, 27.300072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.868874, 36.861423, 27.430246>,  <29.780214, 37.070324, 27.508352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.868874, 36.861423, 27.430246>,  <30.016638, 36.513256, 27.300072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.868874, 36.861423, 27.430246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400331, -0.166980, 0.901029,
		0.838612, 0.463133, -0.286771,
		-0.369411, 0.870417, 0.325438,
		29.758051, 37.122547, 27.527878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.598839, 36.979923, 27.631851>,  <30.016638, 36.513256, 27.300072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.598839, 36.979923, 27.631851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.247244, 37.096874, 27.782530>,  <30.036287, 37.167046, 27.872936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.247244, 37.096874, 27.782530>,  <30.598839, 36.979923, 27.631851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.247244, 37.096874, 27.782530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350137, -0.140538, 0.926096,
		0.323709, 0.945920, 0.021159,
		-0.878986, 0.292377, 0.376694,
		29.983547, 37.184586, 27.895538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.752882, 37.469345, 28.246565>,  <30.598839, 36.979923, 27.631851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.752882, 37.469345, 28.246565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.379646, 37.352253, 28.330133>,  <30.155704, 37.281998, 28.380276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.379646, 37.352253, 28.330133>,  <30.752882, 37.469345, 28.246565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.379646, 37.352253, 28.330133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240954, -0.077592, 0.967430,
		-0.266986, 0.953042, 0.142935,
		-0.933091, -0.292731, 0.208923,
		30.099718, 37.264435, 28.392811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.071205, 38.222733, 28.205315>,  <30.752882, 37.469345, 28.246565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.071205, 38.222733, 28.205315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.441885, 38.268841, 28.348389>,  <31.664293, 38.296505, 28.434233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.441885, 38.268841, 28.348389>,  <31.071205, 38.222733, 28.205315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.441885, 38.268841, 28.348389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019900, 0.935408, -0.353009,
		-0.375274, 0.334251, 0.864549,
		0.926700, 0.115270, 0.357686,
		31.719894, 38.303421, 28.455694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.110321, 38.842274, 28.460382>,  <31.071205, 38.222733, 28.205315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.110321, 38.842274, 28.460382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.504980, 38.777592, 28.452610>,  <31.741776, 38.738781, 28.447947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.504980, 38.777592, 28.452610>,  <31.110321, 38.842274, 28.460382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.504980, 38.777592, 28.452610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141557, 0.910403, -0.388753,
		0.080555, 0.380811, 0.921137,
		0.986647, -0.161709, -0.019431,
		31.800974, 38.729080, 28.446781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.418215, 39.620571, 28.413576>,  <31.110321, 38.842274, 28.460382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.418215, 39.620571, 28.413576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704872, 39.363670, 28.304811>,  <31.876867, 39.209530, 28.239553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704872, 39.363670, 28.304811>,  <31.418215, 39.620571, 28.413576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.704872, 39.363670, 28.304811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187108, 0.552625, -0.812156,
		0.671872, 0.531150, 0.516205,
		0.716644, -0.642250, -0.271911,
		31.919865, 39.170994, 28.223238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.826765, 40.022217, 28.075598>,  <31.418215, 39.620571, 28.413576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.826765, 40.022217, 28.075598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.950623, 39.660297, 27.958666>,  <32.024937, 39.443146, 27.888506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.950623, 39.660297, 27.958666>,  <31.826765, 40.022217, 28.075598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.950623, 39.660297, 27.958666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160199, 0.352689, -0.921926,
		0.937260, 0.238638, 0.254157,
		0.309645, -0.904800, -0.292331,
		32.043514, 39.388859, 27.870966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.526562, 40.132160, 27.903645>,  <31.826765, 40.022217, 28.075598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.526562, 40.132160, 27.903645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.373573, 39.822514, 27.701870>,  <32.281780, 39.636726, 27.580805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.373573, 39.822514, 27.701870>,  <32.526562, 40.132160, 27.903645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.373573, 39.822514, 27.701870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151632, 0.485955, -0.860730,
		0.911441, -0.405691, -0.068481,
		-0.382469, -0.774121, -0.504435,
		32.258831, 39.590279, 27.550539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860516, 40.064819, 27.287016>,  <32.526562, 40.132160, 27.903645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860516, 40.064819, 27.287016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.538406, 39.845818, 27.196001>,  <32.345142, 39.714417, 27.141392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.538406, 39.845818, 27.196001>,  <32.860516, 40.064819, 27.287016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.538406, 39.845818, 27.196001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017482, 0.405527, -0.913916,
		0.592649, -0.731972, -0.336131,
		-0.805271, -0.547507, -0.227539,
		32.296825, 39.681564, 27.127739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.876049, 39.815392, 26.548302>,  <32.860516, 40.064819, 27.287016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.876049, 39.815392, 26.548302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483013, 39.805668, 26.621967>,  <32.247192, 39.799835, 26.666166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483013, 39.805668, 26.621967>,  <32.876049, 39.815392, 26.548302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483013, 39.805668, 26.621967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178561, 0.396986, -0.900288,
		-0.051226, -0.917503, -0.394416,
		-0.982595, -0.024309, 0.184166,
		32.188236, 39.798374, 26.677217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.645424, 39.403198, 26.067421>,  <32.876049, 39.815392, 26.548302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.645424, 39.403198, 26.067421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.325634, 39.589771, 26.218830>,  <32.133759, 39.701714, 26.309675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.325634, 39.589771, 26.218830>,  <32.645424, 39.403198, 26.067421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.325634, 39.589771, 26.218830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127906, 0.483509, -0.865944,
		-0.586920, -0.740718, -0.326896,
		-0.799478, 0.466428, 0.378524,
		32.085793, 39.729698, 26.332388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.048359, 39.330940, 25.663269>,  <32.645424, 39.403198, 26.067421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.048359, 39.330940, 25.663269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.951540, 39.661808, 25.866131>,  <31.893448, 39.860329, 25.987848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.951540, 39.661808, 25.866131>,  <32.048359, 39.330940, 25.663269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.951540, 39.661808, 25.866131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420362, 0.381693, -0.823168,
		-0.874476, -0.412434, 0.255323,
		-0.242047, 0.827169, 0.507153,
		31.878925, 39.909958, 26.018276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.476023, 39.555202, 25.225990>,  <32.048359, 39.330940, 25.663269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.476023, 39.555202, 25.225990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.601830, 39.871826, 25.435568>,  <31.677313, 40.061798, 25.561316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.601830, 39.871826, 25.435568>,  <31.476023, 39.555202, 25.225990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.601830, 39.871826, 25.435568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088316, 0.573962, -0.814106,
		-0.945135, 0.209776, 0.250427,
		0.314515, 0.791557, 0.523945,
		31.696184, 40.109295, 25.592751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.023516, 40.094601, 25.084917>,  <31.476023, 39.555202, 25.225990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.023516, 40.094601, 25.084917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.342686, 40.286808, 25.230474>,  <31.534187, 40.402134, 25.317808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.342686, 40.286808, 25.230474>,  <31.023516, 40.094601, 25.084917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.342686, 40.286808, 25.230474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082128, 0.511412, -0.855402,
		-0.597134, 0.712433, 0.368605,
		0.797926, 0.480517, 0.363892,
		31.582064, 40.430962, 25.339642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.912395, 40.834724, 24.980576>,  <31.023516, 40.094601, 25.084917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.912395, 40.834724, 24.980576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.307165, 40.821228, 25.043627>,  <31.544027, 40.813129, 25.081457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.307165, 40.821228, 25.043627>,  <30.912395, 40.834724, 24.980576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.307165, 40.821228, 25.043627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144645, 0.616984, -0.773569,
		-0.071155, 0.786252, 0.613796,
		0.986922, -0.033739, 0.157629,
		31.603241, 40.811108, 25.090916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.124187, 41.566456, 25.038631>,  <30.912395, 40.834724, 24.980576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.124187, 41.566456, 25.038631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.436527, 41.343708, 24.925375>,  <31.623932, 41.210060, 24.857422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.436527, 41.343708, 24.925375>,  <31.124187, 41.566456, 25.038631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.436527, 41.343708, 24.925375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277844, 0.715501, -0.640984,
		0.559533, 0.421843, 0.713422,
		0.780849, -0.556872, -0.283140,
		31.670782, 41.176647, 24.840433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.647509, 42.024685, 25.032738>,  <31.124187, 41.566456, 25.038631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.647509, 42.024685, 25.032738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.745340, 41.717724, 24.795666>,  <31.804039, 41.533546, 24.653421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.745340, 41.717724, 24.795666>,  <31.647509, 42.024685, 25.032738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.745340, 41.717724, 24.795666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082080, 0.625437, -0.775945,
		0.966149, 0.141131, 0.215957,
		0.244577, -0.767405, -0.592682,
		31.818714, 41.487503, 24.617861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.318218, 42.240437, 24.672785>,  <31.647509, 42.024685, 25.032738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.318218, 42.240437, 24.672785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.118015, 41.957340, 24.473351>,  <31.997892, 41.787483, 24.353689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.118015, 41.957340, 24.473351>,  <32.318218, 42.240437, 24.672785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.118015, 41.957340, 24.473351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295904, 0.401375, -0.866798,
		0.813590, -0.581376, 0.008531,
		-0.500512, -0.707743, -0.498586,
		31.967861, 41.745018, 24.323774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.776615, 42.027439, 24.149048>,  <32.318218, 42.240437, 24.672785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.776615, 42.027439, 24.149048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.420578, 41.907272, 24.011944>,  <32.206955, 41.835175, 23.929682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.420578, 41.907272, 24.011944>,  <32.776615, 42.027439, 24.149048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.420578, 41.907272, 24.011944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267483, 0.264598, -0.926521,
		0.369034, -0.916373, -0.155161,
		-0.890094, -0.300415, -0.342759,
		32.153549, 41.817150, 23.909117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.997021, 41.880627, 23.458162>,  <32.776615, 42.027439, 24.149048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.997021, 41.880627, 23.458162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.597237, 41.882599, 23.471203>,  <32.357368, 41.883781, 23.479027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.597237, 41.882599, 23.471203>,  <32.997021, 41.880627, 23.458162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.597237, 41.882599, 23.471203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031672, 0.131480, -0.990813,
		-0.009169, -0.991306, -0.131253,
		-0.999456, 0.004928, 0.032602,
		32.297401, 41.884075, 23.480984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.793503, 41.331856, 23.079580>,  <32.997021, 41.880627, 23.458162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.793503, 41.331856, 23.079580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504944, 41.608185, 23.098940>,  <32.331806, 41.773983, 23.110556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504944, 41.608185, 23.098940>,  <32.793503, 41.331856, 23.079580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.504944, 41.608185, 23.098940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045670, 0.117195, -0.992058,
		-0.691011, -0.713460, -0.116095,
		-0.721400, 0.690825, 0.048400,
		32.288525, 41.815434, 23.113461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.538280, 41.245918, 22.456266>,  <32.793503, 41.331856, 23.079580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.538280, 41.245918, 22.456266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395664, 41.594288, 22.591537>,  <32.310097, 41.803310, 22.672701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395664, 41.594288, 22.591537>,  <32.538280, 41.245918, 22.456266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395664, 41.594288, 22.591537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083875, 0.390344, -0.916840,
		-0.930508, -0.298525, -0.212222,
		-0.356539, 0.870927, 0.338180,
		32.288704, 41.855568, 22.692991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.946859, 41.408188, 22.146538>,  <32.538280, 41.245918, 22.456266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.946859, 41.408188, 22.146538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.074532, 41.770023, 22.259567>,  <32.151134, 41.987125, 22.327385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.074532, 41.770023, 22.259567>,  <31.946859, 41.408188, 22.146538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.074532, 41.770023, 22.259567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001862, 0.297572, -0.954698,
		-0.947692, 0.305246, 0.093295,
		0.319180, 0.904586, 0.282575,
		32.170284, 42.041401, 22.344339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.436625, 41.909180, 21.906693>,  <31.946859, 41.408188, 22.146538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.436625, 41.909180, 21.906693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.812689, 42.039871, 21.945360>,  <32.038326, 42.118286, 21.968561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.812689, 42.039871, 21.945360>,  <31.436625, 41.909180, 21.906693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.812689, 42.039871, 21.945360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030520, 0.201823, -0.978946,
		-0.339361, 0.923318, 0.179774,
		0.940161, 0.326729, 0.096671,
		32.094738, 42.137890, 21.974361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.430744, 42.421482, 21.438055>,  <31.436625, 41.909180, 21.906693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.430744, 42.421482, 21.438055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819580, 42.389088, 21.526134>,  <32.052879, 42.369652, 21.578981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819580, 42.389088, 21.526134>,  <31.430744, 42.421482, 21.438055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819580, 42.389088, 21.526134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233107, 0.227060, -0.945571,
		0.026576, 0.970508, 0.239599,
		0.972088, -0.080982, 0.220198,
		32.111206, 42.364792, 21.592194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.767620, 42.934708, 21.010010>,  <31.430744, 42.421482, 21.438055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.767620, 42.934708, 21.010010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.063461, 42.678127, 21.091518>,  <32.240967, 42.524178, 21.140425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.063461, 42.678127, 21.091518>,  <31.767620, 42.934708, 21.010010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.063461, 42.678127, 21.091518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283055, 0.021763, -0.958857,
		0.610627, 0.766853, 0.197663,
		0.739604, -0.641453, 0.203773,
		32.285343, 42.485691, 21.152651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.330143, 43.202255, 20.611631>,  <31.767620, 42.934708, 21.010010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.330143, 43.202255, 20.611631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.446278, 42.830807, 20.704033>,  <32.515957, 42.607937, 20.759474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.446278, 42.830807, 20.704033>,  <32.330143, 43.202255, 20.611631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.446278, 42.830807, 20.704033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477405, -0.068653, -0.875997,
		0.829332, 0.364613, 0.423398,
		0.290332, -0.928625, 0.231005,
		32.533379, 42.552219, 20.773335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.962109, 43.165321, 20.423061>,  <32.330143, 43.202255, 20.611631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.962109, 43.165321, 20.423061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.867626, 42.777622, 20.450645>,  <32.810936, 42.545002, 20.467196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.867626, 42.777622, 20.450645>,  <32.962109, 43.165321, 20.423061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.867626, 42.777622, 20.450645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396726, -0.160978, -0.903712,
		0.887025, -0.186107, 0.422552,
		-0.236209, -0.969252, 0.068958,
		32.796764, 42.486847, 20.471333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.594597, 42.830105, 20.278406>,  <32.962109, 43.165321, 20.423061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.594597, 42.830105, 20.278406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.286610, 42.585495, 20.205530>,  <33.101818, 42.438728, 20.161804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.286610, 42.585495, 20.205530>,  <33.594597, 42.830105, 20.278406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.286610, 42.585495, 20.205530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416180, -0.264857, -0.869853,
		0.483680, -0.745581, 0.458434,
		-0.769966, -0.611522, -0.182190,
		33.055618, 42.402039, 20.150873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.837395, 42.356308, 19.889093>,  <33.594597, 42.830105, 20.278406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.837395, 42.356308, 19.889093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450657, 42.278503, 19.822912>,  <33.218613, 42.231819, 19.783203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450657, 42.278503, 19.822912>,  <33.837395, 42.356308, 19.889093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.450657, 42.278503, 19.822912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209164, -0.231521, -0.950078,
		0.146499, -0.953185, 0.264531,
		-0.966844, -0.194516, -0.165454,
		33.160603, 42.220150, 19.773275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.786251, 41.579285, 19.660755>,  <33.837395, 42.356308, 19.889093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.786251, 41.579285, 19.660755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.478233, 41.795650, 19.525442>,  <33.293423, 41.925468, 19.444254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.478233, 41.795650, 19.525442>,  <33.786251, 41.579285, 19.660755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.478233, 41.795650, 19.525442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205611, -0.291531, -0.934202,
		-0.603946, -0.788935, 0.113275,
		-0.770048, 0.540917, -0.338283,
		33.247219, 41.957924, 19.423958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.635769, 41.294102, 18.877867>,  <33.786251, 41.579285, 19.660755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.635769, 41.294102, 18.877867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.443516, 41.644485, 18.894287>,  <33.328163, 41.854717, 18.904139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.443516, 41.644485, 18.894287>,  <33.635769, 41.294102, 18.877867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.443516, 41.644485, 18.894287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054680, 0.076659, -0.995557,
		-0.875217, -0.476250, -0.084742,
		-0.480630, 0.875962, 0.041052,
		33.299328, 41.907272, 18.906603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.204285, 41.268700, 18.319332>,  <33.635769, 41.294102, 18.877867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.204285, 41.268700, 18.319332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239395, 41.659794, 18.395565>,  <33.260460, 41.894451, 18.441305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239395, 41.659794, 18.395565>,  <33.204285, 41.268700, 18.319332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.239395, 41.659794, 18.395565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038370, 0.187860, -0.981446,
		-0.995401, 0.093462, -0.021026,
		0.087778, 0.977739, 0.190582,
		33.265728, 41.953117, 18.452740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.813301, 41.659668, 17.832626>,  <33.204285, 41.268700, 18.319332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.813301, 41.659668, 17.832626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086254, 41.923016, 17.959684>,  <33.250027, 42.081024, 18.035919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086254, 41.923016, 17.959684>,  <32.813301, 41.659668, 17.832626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.086254, 41.923016, 17.959684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186309, 0.263549, -0.946483,
		-0.706852, 0.705047, 0.057182,
		0.682385, 0.658370, 0.317646,
		33.290970, 42.120525, 18.054977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.637543, 42.133469, 17.425116>,  <32.813301, 41.659668, 17.832626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.637543, 42.133469, 17.425116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.994808, 42.227173, 17.578682>,  <33.209167, 42.283394, 17.670822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.994808, 42.227173, 17.578682>,  <32.637543, 42.133469, 17.425116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.994808, 42.227173, 17.578682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253181, 0.443628, -0.859705,
		-0.371707, 0.865054, 0.336921,
		0.893159, 0.234257, 0.383915,
		33.262756, 42.297451, 17.693857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.725983, 42.777084, 17.222586>,  <32.637543, 42.133469, 17.425116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.725983, 42.777084, 17.222586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.087803, 42.633396, 17.314461>,  <33.304893, 42.547184, 17.369587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.087803, 42.633396, 17.314461>,  <32.725983, 42.777084, 17.222586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.087803, 42.633396, 17.314461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394307, 0.499808, -0.771177,
		0.162218, 0.788134, 0.593742,
		0.904548, -0.359216, 0.229689,
		33.359169, 42.525631, 17.383368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175266, 43.244659, 16.974470>,  <32.725983, 42.777084, 17.222586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175266, 43.244659, 16.974470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.399662, 42.915512, 17.010658>,  <33.534298, 42.718025, 17.032372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.399662, 42.915512, 17.010658>,  <33.175266, 43.244659, 16.974470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.399662, 42.915512, 17.010658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539811, 0.280766, -0.793584,
		0.627612, 0.494027, 0.601698,
		0.560988, -0.822866, 0.090469,
		33.567959, 42.668652, 17.037800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808998, 43.486874, 16.825052>,  <33.175266, 43.244659, 16.974470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808998, 43.486874, 16.825052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837116, 43.089840, 16.785370>,  <33.853989, 42.851620, 16.761560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837116, 43.089840, 16.785370>,  <33.808998, 43.486874, 16.825052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.837116, 43.089840, 16.785370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579724, 0.121586, -0.805690,
		0.811775, -0.000876, 0.583970,
		0.070297, -0.992581, -0.099208,
		33.858204, 42.792065, 16.755608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441090, 43.459278, 16.528025>,  <33.808998, 43.486874, 16.825052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441090, 43.459278, 16.528025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.280613, 43.099323, 16.459610>,  <34.184326, 42.883350, 16.418560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.280613, 43.099323, 16.459610>,  <34.441090, 43.459278, 16.528025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.280613, 43.099323, 16.459610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473594, -0.043948, -0.879646,
		0.784064, -0.433906, 0.443811,
		-0.401188, -0.899886, -0.171037,
		34.160255, 42.829357, 16.408298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.020340, 42.983891, 16.300449>,  <34.441090, 43.459278, 16.528025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.020340, 42.983891, 16.300449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674202, 42.830982, 16.170807>,  <34.466518, 42.739239, 16.093021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674202, 42.830982, 16.170807>,  <35.020340, 42.983891, 16.300449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.674202, 42.830982, 16.170807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363913, -0.034625, -0.930789,
		0.344591, -0.923402, 0.169076,
		-0.865346, -0.382271, -0.324107,
		34.414597, 42.716301, 16.073574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198383, 42.291405, 15.947255>,  <35.020340, 42.983891, 16.300449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198383, 42.291405, 15.947255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.866257, 42.462166, 15.803965>,  <34.666981, 42.564621, 15.717991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.866257, 42.462166, 15.803965>,  <35.198383, 42.291405, 15.947255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866257, 42.462166, 15.803965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355480, -0.089325, -0.930405,
		-0.429192, -0.899875, -0.077588,
		-0.830318, 0.426904, -0.358225,
		34.617161, 42.590237, 15.696497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845730, 42.102806, 15.238180>,  <35.198383, 42.291405, 15.947255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.845730, 42.102806, 15.238180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190441, 41.900864, 15.218361>,  <35.397266, 41.779697, 15.206470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190441, 41.900864, 15.218361>,  <34.845730, 42.102806, 15.238180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.190441, 41.900864, 15.218361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072061, -0.218514, 0.973169,
		-0.502139, -0.835087, -0.224692,
		0.861779, -0.504858, -0.049547,
		35.448975, 41.749405, 15.203497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796528, 41.618694, 15.761904>,  <34.845730, 42.102806, 15.238180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796528, 41.618694, 15.761904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.172718, 41.531570, 15.657545>,  <35.398434, 41.479298, 15.594931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.172718, 41.531570, 15.657545>,  <34.796528, 41.618694, 15.761904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172718, 41.531570, 15.657545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174814, -0.348297, 0.920939,
		-0.291451, -0.911730, -0.289491,
		0.940477, -0.217802, -0.260895,
		35.454861, 41.466228, 15.579276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.922337, 40.901367, 15.900946>,  <34.796528, 41.618694, 15.761904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.922337, 40.901367, 15.900946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.295700, 41.043495, 15.880964>,  <35.519718, 41.128773, 15.868976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.295700, 41.043495, 15.880964>,  <34.922337, 40.901367, 15.900946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.295700, 41.043495, 15.880964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196931, -0.390922, 0.899110,
		0.299944, -0.849074, -0.434863,
		0.933409, 0.355321, -0.049954,
		35.575722, 41.150093, 15.865978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.479370, 40.359642, 16.150827>,  <34.922337, 40.901367, 15.900946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.479370, 40.359642, 16.150827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665085, 40.711143, 16.195065>,  <35.776516, 40.922043, 16.221607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665085, 40.711143, 16.195065>,  <35.479370, 40.359642, 16.150827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665085, 40.711143, 16.195065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351035, -0.297221, 0.887938,
		0.813148, -0.373437, -0.446469,
		0.464289, 0.878752, 0.110595,
		35.804371, 40.974770, 16.228243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115131, 40.109608, 16.360554>,  <35.479370, 40.359642, 16.150827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.115131, 40.109608, 16.360554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.076653, 40.494167, 16.463671>,  <36.053566, 40.724903, 16.525541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.076653, 40.494167, 16.463671>,  <36.115131, 40.109608, 16.360554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076653, 40.494167, 16.463671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196585, -0.235544, 0.951774,
		0.975757, 0.142233, -0.166339,
		-0.096193, 0.961399, 0.257795,
		36.047794, 40.782589, 16.541010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601971, 40.185879, 16.796724>,  <36.115131, 40.109608, 16.360554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.601971, 40.185879, 16.796724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.386257, 40.510033, 16.888329>,  <36.256828, 40.704525, 16.943291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.386257, 40.510033, 16.888329>,  <36.601971, 40.185879, 16.796724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.386257, 40.510033, 16.888329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187927, -0.149279, 0.970773,
		0.820889, 0.566557, -0.071791,
		-0.539282, 0.810388, 0.229013,
		36.224472, 40.753151, 16.957033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919991, 40.535072, 17.358791>,  <36.601971, 40.185879, 16.796724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.919991, 40.535072, 17.358791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.543285, 40.667618, 17.381714>,  <36.317261, 40.747143, 17.395468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.543285, 40.667618, 17.381714>,  <36.919991, 40.535072, 17.358791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.543285, 40.667618, 17.381714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017172, -0.122808, 0.992282,
		0.335841, 0.935478, 0.109966,
		-0.941762, 0.331360, 0.057308,
		36.260757, 40.767025, 17.398907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859680, 40.903713, 18.055784>,  <36.919991, 40.535072, 17.358791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.859680, 40.903713, 18.055784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.481640, 40.829247, 17.948366>,  <36.254814, 40.784565, 17.883915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.481640, 40.829247, 17.948366>,  <36.859680, 40.903713, 18.055784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481640, 40.829247, 17.948366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230459, -0.202860, 0.951702,
		-0.231655, 0.961348, 0.148819,
		-0.945106, -0.186170, -0.268544,
		36.198109, 40.773396, 17.867804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.527786, 41.213474, 18.551369>,  <36.859680, 40.903713, 18.055784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.527786, 41.213474, 18.551369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277477, 40.952141, 18.380926>,  <36.127293, 40.795341, 18.278660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277477, 40.952141, 18.380926>,  <36.527786, 41.213474, 18.551369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277477, 40.952141, 18.380926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309133, -0.293821, 0.904492,
		-0.716130, 0.697732, -0.018099,
		-0.625776, -0.653329, -0.426106,
		36.089745, 40.756142, 18.253094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951508, 41.258450, 18.959034>,  <36.527786, 41.213474, 18.551369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.951508, 41.258450, 18.959034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903107, 40.916401, 18.757393>,  <35.874065, 40.711170, 18.636408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903107, 40.916401, 18.757393>,  <35.951508, 41.258450, 18.959034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903107, 40.916401, 18.757393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479002, -0.394494, 0.784176,
		-0.869434, 0.336354, -0.361871,
		-0.121005, -0.855126, -0.504101,
		35.866806, 40.659863, 18.606163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244778, 41.055931, 18.981731>,  <35.951508, 41.258450, 18.959034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244778, 41.055931, 18.981731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473621, 40.729763, 18.946455>,  <35.610928, 40.534061, 18.925289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473621, 40.729763, 18.946455>,  <35.244778, 41.055931, 18.981731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473621, 40.729763, 18.946455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461228, -0.408774, 0.787511,
		-0.678207, -0.409862, -0.609958,
		0.572106, -0.815425, -0.088194,
		35.645252, 40.485134, 18.919996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.800507, 40.514023, 19.146685>,  <35.244778, 41.055931, 18.981731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.800507, 40.514023, 19.146685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.174400, 40.383072, 19.201962>,  <35.398735, 40.304501, 19.235126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.174400, 40.383072, 19.201962>,  <34.800507, 40.514023, 19.146685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.174400, 40.383072, 19.201962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250336, -0.330662, 0.909942,
		-0.252201, -0.885147, -0.391035,
		0.934733, -0.327379, 0.138191,
		35.454819, 40.284859, 19.243418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.776501, 39.813824, 19.296110>,  <34.800507, 40.514023, 19.146685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.776501, 39.813824, 19.296110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.114178, 39.971291, 19.441633>,  <35.316784, 40.065773, 19.528946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.114178, 39.971291, 19.441633>,  <34.776501, 39.813824, 19.296110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.114178, 39.971291, 19.441633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266616, -0.280417, 0.922107,
		0.465024, -0.875437, -0.131768,
		0.844197, 0.393671, 0.363806,
		35.367435, 40.089394, 19.550776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189350, 39.328693, 19.765676>,  <34.776501, 39.813824, 19.296110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.189350, 39.328693, 19.765676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.257618, 39.709133, 19.868662>,  <35.298580, 39.937397, 19.930452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.257618, 39.709133, 19.868662>,  <35.189350, 39.328693, 19.765676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257618, 39.709133, 19.868662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321866, -0.193147, 0.926875,
		0.931275, -0.241058, 0.273162,
		0.170670, 0.951097, 0.257461,
		35.308819, 39.994461, 19.945900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435211, 39.198692, 20.523010>,  <35.189350, 39.328693, 19.765676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435211, 39.198692, 20.523010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.327782, 39.580421, 20.470638>,  <35.263325, 39.809460, 20.439215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.327782, 39.580421, 20.470638>,  <35.435211, 39.198692, 20.523010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.327782, 39.580421, 20.470638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306179, 0.044298, 0.950943,
		0.913302, 0.295489, 0.280295,
		-0.268577, 0.954319, -0.130930,
		35.247208, 39.866718, 20.431360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792862, 39.629761, 20.985048>,  <35.435211, 39.198692, 20.523010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792862, 39.629761, 20.985048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.459740, 39.838261, 20.910498>,  <35.259865, 39.963360, 20.865768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.459740, 39.838261, 20.910498>,  <35.792862, 39.629761, 20.985048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459740, 39.838261, 20.910498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171742, 0.076777, 0.982146,
		0.526248, 0.849946, 0.025579,
		-0.832807, 0.521245, -0.186375,
		35.209896, 39.994633, 20.854586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.815281, 40.122971, 21.484018>,  <35.792862, 39.629761, 20.985048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.815281, 40.122971, 21.484018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.441742, 40.143982, 21.342505>,  <35.217617, 40.156590, 21.257597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.441742, 40.143982, 21.342505>,  <35.815281, 40.122971, 21.484018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441742, 40.143982, 21.342505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346949, 0.107259, 0.931731,
		0.086891, 0.992842, -0.081939,
		-0.933851, 0.052530, -0.353785,
		35.161587, 40.159740, 21.236368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521820, 40.681087, 21.751360>,  <35.815281, 40.122971, 21.484018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521820, 40.681087, 21.751360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.198902, 40.459923, 21.668842>,  <35.005150, 40.327225, 21.619331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.198902, 40.459923, 21.668842>,  <35.521820, 40.681087, 21.751360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198902, 40.459923, 21.668842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277997, 0.047948, 0.959385,
		-0.520563, 0.831859, -0.192416,
		-0.807299, -0.552912, -0.206294,
		34.956711, 40.294048, 21.606955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.001949, 40.946918, 22.230652>,  <35.521820, 40.681087, 21.751360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.001949, 40.946918, 22.230652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.852509, 40.603947, 22.089094>,  <34.762844, 40.398163, 22.004160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.852509, 40.603947, 22.089094>,  <35.001949, 40.946918, 22.230652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.852509, 40.603947, 22.089094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449538, -0.166359, 0.877634,
		-0.811381, 0.486973, -0.323294,
		-0.373601, -0.857428, -0.353893,
		34.740429, 40.346718, 21.982927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277252, 40.978268, 22.277908>,  <35.001949, 40.946918, 22.230652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277252, 40.978268, 22.277908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.356930, 40.586330, 22.271959>,  <34.404736, 40.351166, 22.268389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.356930, 40.586330, 22.271959>,  <34.277252, 40.978268, 22.277908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356930, 40.586330, 22.271959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466681, -0.108195, 0.877783,
		-0.861703, -0.167905, -0.478828,
		0.199191, -0.979848, -0.014874,
		34.416687, 40.292377, 22.267498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.786652, 40.705963, 22.481663>,  <34.277252, 40.978268, 22.277908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.786652, 40.705963, 22.481663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.056099, 40.420059, 22.556877>,  <34.217766, 40.248516, 22.602005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.056099, 40.420059, 22.556877>,  <33.786652, 40.705963, 22.481663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.056099, 40.420059, 22.556877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477331, -0.226497, 0.849031,
		-0.564266, -0.661676, -0.493750,
		0.673616, -0.714762, 0.188034,
		34.258183, 40.205631, 22.613287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492516, 40.140339, 22.785898>,  <33.786652, 40.705963, 22.481663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492516, 40.140339, 22.785898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870865, 40.073189, 22.896992>,  <34.097874, 40.032898, 22.963648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870865, 40.073189, 22.896992>,  <33.492516, 40.140339, 22.785898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870865, 40.073189, 22.896992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311436, -0.228934, 0.922278,
		-0.091243, -0.958858, -0.268824,
		0.945876, -0.167873, 0.277734,
		34.154629, 40.022827, 22.980312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.521076, 39.431778, 23.121382>,  <33.492516, 40.140339, 22.785898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.521076, 39.431778, 23.121382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.853580, 39.609196, 23.255407>,  <34.053082, 39.715649, 23.335823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.853580, 39.609196, 23.255407>,  <33.521076, 39.431778, 23.121382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.853580, 39.609196, 23.255407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230608, -0.273288, 0.933881,
		0.505791, -0.853568, -0.124888,
		0.831261, 0.443549, 0.335066,
		34.102959, 39.742260, 23.355927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900517, 38.936756, 23.570366>,  <33.521076, 39.431778, 23.121382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900517, 38.936756, 23.570366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.047398, 39.288662, 23.691149>,  <34.135529, 39.499805, 23.763618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.047398, 39.288662, 23.691149>,  <33.900517, 38.936756, 23.570366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.047398, 39.288662, 23.691149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055159, -0.303469, 0.951244,
		0.928502, -0.365959, -0.062909,
		0.367207, 0.879762, 0.301958,
		34.157558, 39.552589, 23.781736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399647, 38.724384, 24.074324>,  <33.900517, 38.936756, 23.570366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399647, 38.724384, 24.074324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.328835, 39.115074, 24.122776>,  <34.286346, 39.349487, 24.151848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.328835, 39.115074, 24.122776>,  <34.399647, 38.724384, 24.074324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328835, 39.115074, 24.122776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063722, -0.134191, 0.988905,
		0.982141, 0.167344, 0.085994,
		-0.177027, 0.976723, 0.121131,
		34.275726, 39.408092, 24.159115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.787624, 38.901447, 24.719572>,  <34.399647, 38.724384, 24.074324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.787624, 38.901447, 24.719572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.550507, 39.219830, 24.670507>,  <34.408237, 39.410858, 24.641069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.550507, 39.219830, 24.670507>,  <34.787624, 38.901447, 24.719572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550507, 39.219830, 24.670507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061700, 0.106974, 0.992345,
		0.802988, 0.595823, -0.014303,
		-0.592792, 0.795960, -0.122661,
		34.372669, 39.458618, 24.633709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.118793, 39.481571, 24.982805>,  <34.787624, 38.901447, 24.719572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.118793, 39.481571, 24.982805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.730076, 39.574474, 24.999187>,  <34.496845, 39.630219, 25.009016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.730076, 39.574474, 24.999187>,  <35.118793, 39.481571, 24.982805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.730076, 39.574474, 24.999187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079237, 0.157979, 0.984258,
		0.222135, 0.959738, -0.171927,
		-0.971791, 0.232261, 0.040954,
		34.438538, 39.644154, 25.011475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.131954, 40.075718, 25.351950>,  <35.118793, 39.481571, 24.982805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.131954, 40.075718, 25.351950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.764809, 39.918846, 25.376360>,  <34.544521, 39.824722, 25.391006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.764809, 39.918846, 25.376360>,  <35.131954, 40.075718, 25.351950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.764809, 39.918846, 25.376360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047005, 0.045266, 0.997869,
		-0.394108, 0.918774, -0.023114,
		-0.917862, -0.392181, 0.061026,
		34.489449, 39.801193, 25.394669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.838028, 40.438053, 25.885019>,  <35.131954, 40.075718, 25.351950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.838028, 40.438053, 25.885019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.596245, 40.121239, 25.850817>,  <34.451176, 39.931149, 25.830296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.596245, 40.121239, 25.850817>,  <34.838028, 40.438053, 25.885019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596245, 40.121239, 25.850817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073342, -0.162203, 0.984028,
		-0.793257, 0.588529, 0.156134,
		-0.604454, -0.792038, -0.085505,
		34.414909, 39.883629, 25.825165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.332478, 40.454971, 26.489227>,  <34.838028, 40.438053, 25.885019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.332478, 40.454971, 26.489227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321022, 40.081188, 26.347254>,  <34.314148, 39.856918, 26.262070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321022, 40.081188, 26.347254>,  <34.332478, 40.454971, 26.489227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321022, 40.081188, 26.347254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205034, -0.353020, 0.912874,
		-0.978336, -0.046630, 0.201705,
		-0.028639, -0.934453, -0.354933,
		34.312431, 39.800854, 26.240774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098747, 40.329815, 27.115290>,  <34.332478, 40.454971, 26.489227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098747, 40.329815, 27.115290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.253139, 40.007301, 26.935993>,  <34.345776, 39.813793, 26.828415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.253139, 40.007301, 26.935993>,  <34.098747, 40.329815, 27.115290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.253139, 40.007301, 26.935993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421870, -0.277836, 0.863037,
		-0.820394, -0.522214, 0.232909,
		0.385979, -0.806287, -0.448242,
		34.368935, 39.765415, 26.801521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.979694, 39.632942, 27.464424>,  <34.098747, 40.329815, 27.115290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.979694, 39.632942, 27.464424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.315224, 39.569138, 27.256218>,  <34.516541, 39.530857, 27.131294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.315224, 39.569138, 27.256218>,  <33.979694, 39.632942, 27.464424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.315224, 39.569138, 27.256218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406559, -0.452334, 0.793791,
		-0.362061, -0.877469, -0.314579,
		0.838821, -0.159506, -0.520516,
		34.566868, 39.521286, 27.100063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163601, 38.902470, 27.647009>,  <33.979694, 39.632942, 27.464424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163601, 38.902470, 27.647009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.490749, 39.037777, 27.460825>,  <34.687038, 39.118961, 27.349115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.490749, 39.037777, 27.460825>,  <34.163601, 38.902470, 27.647009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490749, 39.037777, 27.460825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572403, -0.560720, 0.598287,
		-0.058609, -0.755754, -0.652227,
		0.817875, 0.338272, -0.465460,
		34.736111, 39.139259, 27.321186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.511703, 38.375622, 27.414511>,  <34.163601, 38.902470, 27.647009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.511703, 38.375622, 27.414511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.798733, 38.653946, 27.426767>,  <34.970951, 38.820942, 27.434122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.798733, 38.653946, 27.426767>,  <34.511703, 38.375622, 27.414511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798733, 38.653946, 27.426767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592299, -0.632784, 0.498765,
		0.366436, -0.339750, -0.866195,
		0.717570, 0.695812, 0.030641,
		35.014004, 38.862690, 27.435959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.060093, 38.035362, 27.261438>,  <34.511703, 38.375622, 27.414511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.060093, 38.035362, 27.261438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.204590, 38.349247, 27.462929>,  <35.291286, 38.537579, 27.583822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.204590, 38.349247, 27.462929>,  <35.060093, 38.035362, 27.261438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.204590, 38.349247, 27.462929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643910, -0.600646, 0.473923,
		0.674452, 0.153154, -0.722259,
		0.361239, 0.784708, 0.503725,
		35.312962, 38.584660, 27.614046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.817577, 37.932434, 27.355186>,  <35.060093, 38.035362, 27.261438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.817577, 37.932434, 27.355186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.778297, 38.224052, 27.626139>,  <35.754730, 38.399025, 27.788710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.778297, 38.224052, 27.626139>,  <35.817577, 37.932434, 27.355186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778297, 38.224052, 27.626139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546490, -0.529348, 0.648952,
		0.831688, 0.433909, -0.346436,
		-0.098201, 0.729050, 0.677380,
		35.748837, 38.442768, 27.829353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483326, 38.027748, 27.634911>,  <35.817577, 37.932434, 27.355186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.483326, 38.027748, 27.634911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.223083, 38.166637, 27.905067>,  <36.066940, 38.249969, 28.067162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.223083, 38.166637, 27.905067>,  <36.483326, 38.027748, 27.634911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223083, 38.166637, 27.905067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530753, -0.428186, 0.731408,
		0.543155, 0.834321, 0.094288,
		-0.650602, 0.347225, 0.675390,
		36.027905, 38.270805, 28.107685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850357, 38.374958, 28.155787>,  <36.483326, 38.027748, 27.634911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850357, 38.374958, 28.155787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.496849, 38.284389, 28.319584>,  <36.284744, 38.230049, 28.417862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.496849, 38.284389, 28.319584>,  <36.850357, 38.374958, 28.155787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.496849, 38.284389, 28.319584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464184, -0.313766, 0.828302,
		-0.059063, 0.922108, 0.382399,
		-0.883768, -0.226425, 0.409496,
		36.231720, 38.216461, 28.442432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820564, 38.674301, 28.753744>,  <36.850357, 38.374958, 28.155787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.820564, 38.674301, 28.753744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.547749, 38.387859, 28.813091>,  <36.384060, 38.215992, 28.848700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.547749, 38.387859, 28.813091>,  <36.820564, 38.674301, 28.753744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547749, 38.387859, 28.813091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443131, -0.243288, 0.862813,
		-0.581771, 0.654217, 0.483262,
		-0.682038, -0.716108, 0.148366,
		36.343136, 38.173027, 28.857601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532703, 38.768417, 29.427233>,  <36.820564, 38.674301, 28.753744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.532703, 38.768417, 29.427233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.465481, 38.387188, 29.326502>,  <36.425148, 38.158451, 29.266064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.465481, 38.387188, 29.326502>,  <36.532703, 38.768417, 29.427233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.465481, 38.387188, 29.326502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518568, -0.302730, 0.799651,
		-0.838357, 0.003801, 0.545108,
		-0.168060, -0.953069, -0.251825,
		36.415062, 38.101269, 29.250954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.263485, 38.391136, 29.965193>,  <36.532703, 38.768417, 29.427233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.263485, 38.391136, 29.965193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444469, 38.120014, 29.733379>,  <36.553059, 37.957340, 29.594292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444469, 38.120014, 29.733379>,  <36.263485, 38.391136, 29.965193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.444469, 38.120014, 29.733379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568683, -0.281281, 0.772969,
		-0.686936, -0.679306, 0.258190,
		0.452459, -0.677809, -0.579532,
		36.580208, 37.916672, 29.559521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.938534, 37.767235, 30.122419>,  <36.263485, 38.391136, 29.965193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.938534, 37.767235, 30.122419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318649, 37.741077, 30.000652>,  <36.546719, 37.725384, 29.927591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318649, 37.741077, 30.000652>,  <35.938534, 37.767235, 30.122419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318649, 37.741077, 30.000652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270316, -0.311929, 0.910840,
		-0.154520, -0.947852, -0.278747,
		0.950291, -0.065394, -0.304419,
		36.603737, 37.721458, 29.909327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.142300, 37.149967, 30.409966>,  <35.938534, 37.767235, 30.122419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.142300, 37.149967, 30.409966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.481262, 37.359398, 30.374699>,  <36.684639, 37.485058, 30.353539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.481262, 37.359398, 30.374699>,  <36.142300, 37.149967, 30.409966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481262, 37.359398, 30.374699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267878, -0.278231, 0.922404,
		0.458418, -0.805268, -0.376028,
		0.847405, 0.523576, -0.088167,
		36.735485, 37.516472, 30.348248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703323, 36.662872, 30.463747>,  <36.142300, 37.149967, 30.409966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703323, 36.662872, 30.463747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.758610, 37.033535, 30.603582>,  <36.791782, 37.255932, 30.687483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.758610, 37.033535, 30.603582>,  <36.703323, 36.662872, 30.463747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758610, 37.033535, 30.603582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046111, -0.358613, 0.932347,
		0.989328, -0.112748, -0.092296,
		0.138219, 0.926652, 0.349586,
		36.800076, 37.311531, 30.708458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327534, 36.625080, 30.826292>,  <36.703323, 36.662872, 30.463747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.327534, 36.625080, 30.826292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062641, 36.881329, 30.981756>,  <36.903706, 37.035076, 31.075035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062641, 36.881329, 30.981756>,  <37.327534, 36.625080, 30.826292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062641, 36.881329, 30.981756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163591, -0.382573, 0.909327,
		0.731224, 0.665765, 0.148551,
		-0.662230, 0.640620, 0.388660,
		36.863972, 37.073513, 31.098354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617435, 36.917568, 31.415197>,  <37.327534, 36.625080, 30.826292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617435, 36.917568, 31.415197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.219566, 36.929070, 31.454796>,  <36.980846, 36.935970, 31.478556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.219566, 36.929070, 31.454796>,  <37.617435, 36.917568, 31.415197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.219566, 36.929070, 31.454796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065484, -0.565461, 0.822171,
		0.079619, 0.824274, 0.560566,
		-0.994672, 0.028752, 0.098998,
		36.921165, 36.937695, 31.484495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524662, 36.517662, 31.998291>,  <37.617435, 36.917568, 31.415197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524662, 36.517662, 31.998291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.154232, 36.648060, 31.922276>,  <36.931973, 36.726299, 31.876667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.154232, 36.648060, 31.922276>,  <37.524662, 36.517662, 31.998291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.154232, 36.648060, 31.922276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313764, -0.385489, 0.867727,
		0.209616, 0.863207, 0.459277,
		-0.926074, 0.325994, -0.190039,
		36.876411, 36.745857, 31.865263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.999107, 36.822941, 32.586891>,  <37.524662, 36.517662, 31.998291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.999107, 36.822941, 32.586891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.658131, 36.960720, 32.429562>,  <36.453545, 37.043388, 32.335163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.658131, 36.960720, 32.429562>,  <36.999107, 36.822941, 32.586891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.658131, 36.960720, 32.429562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376926, -0.116460, -0.918893,
		-0.362319, -0.931553, -0.030557,
		-0.852439, 0.344450, -0.393323,
		36.402397, 37.064056, 32.311565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257561, 36.607166, 33.302853>,  <36.999107, 36.822941, 32.586891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.257561, 36.607166, 33.302853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.916183, 36.695999, 33.491455>,  <36.711357, 36.749298, 33.604618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.916183, 36.695999, 33.491455>,  <37.257561, 36.607166, 33.302853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916183, 36.695999, 33.491455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073952, -0.843921, 0.531346,
		0.515916, 0.488342, 0.703814,
		-0.853441, 0.222081, 0.471506,
		36.660152, 36.762623, 33.632908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332184, 37.045956, 33.831345>,  <37.257561, 36.607166, 33.302853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332184, 37.045956, 33.831345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.061275, 36.969608, 33.547127>,  <36.898731, 36.923798, 33.376595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.061275, 36.969608, 33.547127>,  <37.332184, 37.045956, 33.831345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061275, 36.969608, 33.547127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205929, 0.976340, -0.065987,
		0.706329, 0.101631, -0.700550,
		-0.677268, -0.190872, -0.710546,
		36.858093, 36.912346, 33.333961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314659, 37.620636, 33.366455>,  <37.332184, 37.045956, 33.831345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314659, 37.620636, 33.366455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.988842, 37.434399, 33.228035>,  <36.793354, 37.322659, 33.144981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.988842, 37.434399, 33.228035>,  <37.314659, 37.620636, 33.366455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988842, 37.434399, 33.228035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345364, 0.868495, -0.355585,
		0.466099, -0.170125, -0.868222,
		-0.814540, -0.465590, -0.346050,
		36.744480, 37.294724, 33.124222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028900, 37.297997, 33.200001>,  <37.314659, 37.620636, 33.366455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028900, 37.297997, 33.200001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.388668, 37.296879, 33.025173>,  <38.604530, 37.296207, 32.920277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.388668, 37.296879, 33.025173>,  <38.028900, 37.297997, 33.200001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.388668, 37.296879, 33.025173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201064, -0.885247, 0.419418,
		-0.388087, -0.465113, -0.795650,
		0.899423, -0.002794, -0.437070,
		38.658497, 37.296040, 32.894051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031677, 36.609238, 33.573624>,  <38.028900, 37.297997, 33.200001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.031677, 36.609238, 33.573624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.360718, 36.444801, 33.730762>,  <38.558144, 36.346142, 33.825047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.360718, 36.444801, 33.730762>,  <38.031677, 36.609238, 33.573624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360718, 36.444801, 33.730762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546046, 0.378395, -0.747430,
		0.158606, 0.829352, 0.535742,
		0.822604, -0.411086, 0.392848,
		38.607498, 36.321476, 33.848618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123219, 36.683491, 32.864311>,  <38.031677, 36.609238, 33.573624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123219, 36.683491, 32.864311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.498936, 36.813145, 32.909328>,  <38.724365, 36.890938, 32.936337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.498936, 36.813145, 32.909328>,  <38.123219, 36.683491, 32.864311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.498936, 36.813145, 32.909328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293446, -0.928852, 0.226106,
		0.177822, -0.179355, -0.967580,
		0.939292, 0.324139, 0.112539,
		38.780724, 36.910385, 32.943089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595005, 36.335396, 32.452286>,  <38.123219, 36.683491, 32.864311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.595005, 36.335396, 32.452286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.802925, 36.464642, 32.768616>,  <38.927677, 36.542191, 32.958416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.802925, 36.464642, 32.768616>,  <38.595005, 36.335396, 32.452286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.802925, 36.464642, 32.768616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234668, -0.944107, 0.231502,
		0.821428, 0.065248, -0.566568,
		0.519796, 0.323118, 0.790827,
		38.958862, 36.561577, 33.005863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691826, 35.673599, 32.826054>,  <38.595005, 36.335396, 32.452286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691826, 35.673599, 32.826054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.977409, 35.939819, 32.913055>,  <39.148758, 36.099552, 32.965256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.977409, 35.939819, 32.913055>,  <38.691826, 35.673599, 32.826054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.977409, 35.939819, 32.913055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472867, -0.687404, 0.551247,
		0.516394, -0.290718, -0.805494,
		0.713957, 0.665552, 0.217500,
		39.191597, 36.139484, 32.978306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.382877, 35.548916, 32.550179>,  <38.691826, 35.673599, 32.826054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.382877, 35.548916, 32.550179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.400356, 35.741013, 32.900597>,  <39.410843, 35.856270, 33.110847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.400356, 35.741013, 32.900597>,  <39.382877, 35.548916, 32.550179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.400356, 35.741013, 32.900597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320358, -0.837317, 0.443025,
		0.946288, 0.261290, -0.190437,
		0.043698, 0.480237, 0.876049,
		39.413467, 35.885082, 33.163410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.013615, 35.342976, 32.790394>,  <39.382877, 35.548916, 32.550179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.013615, 35.342976, 32.790394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.806393, 35.448692, 33.115791>,  <39.682060, 35.512123, 33.311031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.806393, 35.448692, 33.115791>,  <40.013615, 35.342976, 32.790394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.806393, 35.448692, 33.115791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288081, -0.841589, 0.456878,
		0.805378, 0.471038, 0.359847,
		-0.518050, 0.264295, 0.813494,
		39.650978, 35.527981, 33.359840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.383148, 35.284336, 33.429897>,  <40.013615, 35.342976, 32.790394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.383148, 35.284336, 33.429897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.996586, 35.229057, 33.516571>,  <39.764648, 35.195889, 33.568577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.996586, 35.229057, 33.516571>,  <40.383148, 35.284336, 33.429897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.996586, 35.229057, 33.516571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211352, -0.907052, 0.364125,
		0.146227, 0.397691, 0.905792,
		-0.966410, -0.138196, 0.216689,
		39.706661, 35.187599, 33.581577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.425873, 34.916649, 34.092033>,  <40.383148, 35.284336, 33.429897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.425873, 34.916649, 34.092033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.070972, 34.834812, 33.926659>,  <39.858032, 34.785709, 33.827435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.070972, 34.834812, 33.926659>,  <40.425873, 34.916649, 34.092033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.070972, 34.834812, 33.926659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127987, -0.970258, 0.205473,
		-0.443178, 0.129391, 0.887046,
		-0.887250, -0.204592, -0.413437,
		39.804798, 34.773434, 33.802628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.195946, 34.526810, 34.570374>,  <40.425873, 34.916649, 34.092033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.195946, 34.526810, 34.570374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.024757, 34.405079, 34.229969>,  <39.922043, 34.332039, 34.025726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.024757, 34.405079, 34.229969>,  <40.195946, 34.526810, 34.570374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.024757, 34.405079, 34.229969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199930, -0.950154, 0.239238,
		-0.881402, -0.067757, 0.467482,
		-0.427970, -0.304328, -0.851014,
		39.896366, 34.313782, 33.974663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522472, 34.234741, 34.720715>,  <40.195946, 34.526810, 34.570374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.522472, 34.234741, 34.720715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.727524, 34.097630, 34.405827>,  <39.850555, 34.015362, 34.216892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.727524, 34.097630, 34.405827>,  <39.522472, 34.234741, 34.720715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.727524, 34.097630, 34.405827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086217, -0.891671, 0.444399,
		-0.854273, -0.295681, -0.427539,
		0.512624, -0.342777, -0.787223,
		39.881313, 33.994797, 34.169659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274643, 33.626770, 34.475174>,  <39.522472, 34.234741, 34.720715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.274643, 33.626770, 34.475174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.650467, 33.632046, 34.338318>,  <39.875961, 33.635212, 34.256207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.650467, 33.632046, 34.338318>,  <39.274643, 33.626770, 34.475174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.650467, 33.632046, 34.338318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064262, -0.988294, 0.138366,
		-0.336306, -0.151990, -0.929407,
		0.939558, 0.013192, -0.342136,
		39.932335, 33.636002, 34.235676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424427, 33.681229, 33.691338>,  <39.274643, 33.626770, 34.475174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.424427, 33.681229, 33.691338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.313850, 33.941662, 33.974087>,  <39.247505, 34.097923, 34.143738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.313850, 33.941662, 33.974087>,  <39.424427, 33.681229, 33.691338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.313850, 33.941662, 33.974087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104069, 0.710929, -0.695521,
		-0.955381, -0.265831, -0.128770,
		-0.276437, 0.651086, 0.706873,
		39.230919, 34.136990, 34.186150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957191, 34.066429, 33.362209>,  <39.424427, 33.681229, 33.691338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.957191, 34.066429, 33.362209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.103592, 34.259319, 33.680580>,  <39.191433, 34.375053, 33.871605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.103592, 34.259319, 33.680580>,  <38.957191, 34.066429, 33.362209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.103592, 34.259319, 33.680580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006633, 0.853900, -0.520394,
		-0.930590, 0.195745, 0.309332,
		0.366003, 0.482222, 0.795929,
		39.213394, 34.403984, 33.919357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.506104, 34.580009, 33.477604>,  <38.957191, 34.066429, 33.362209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.506104, 34.580009, 33.477604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.856541, 34.685314, 33.639172>,  <39.066803, 34.748497, 33.736111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.856541, 34.685314, 33.639172>,  <38.506104, 34.580009, 33.477604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.856541, 34.685314, 33.639172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028640, 0.864697, -0.501476,
		-0.481288, 0.427772, 0.765097,
		0.876095, 0.263266, 0.403917,
		39.119370, 34.764294, 33.760345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.462124, 35.226616, 33.963917>,  <38.506104, 34.580009, 33.477604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.462124, 35.226616, 33.963917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.850189, 35.207329, 33.868874>,  <39.083027, 35.195759, 33.811848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.850189, 35.207329, 33.868874>,  <38.462124, 35.226616, 33.963917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850189, 35.207329, 33.868874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008629, 0.986273, -0.164900,
		0.242301, 0.157929, 0.957261,
		0.970163, -0.048216, -0.237612,
		39.141239, 35.192863, 33.797588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.741264, 35.890381, 34.308395>,  <38.462124, 35.226616, 33.963917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.741264, 35.890381, 34.308395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024590, 35.775913, 34.050282>,  <39.194584, 35.707233, 33.895412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024590, 35.775913, 34.050282>,  <38.741264, 35.890381, 34.308395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024590, 35.775913, 34.050282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041205, 0.929343, -0.366912,
		0.704690, 0.233301, 0.670062,
		0.708318, -0.286169, -0.645285,
		39.237083, 35.690063, 33.856697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306255, 36.300953, 34.387848>,  <38.741264, 35.890381, 34.308395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.306255, 36.300953, 34.387848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.318176, 36.175106, 34.008347>,  <39.325329, 36.099598, 33.780647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.318176, 36.175106, 34.008347>,  <39.306255, 36.300953, 34.387848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.318176, 36.175106, 34.008347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019244, 0.948815, -0.315247,
		0.999370, 0.027654, 0.022224,
		0.029805, -0.314621, -0.948749,
		39.327118, 36.080719, 33.723721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435860, 36.899303, 34.233154>,  <39.306255, 36.300953, 34.387848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.435860, 36.899303, 34.233154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.389973, 36.674412, 33.905560>,  <39.362442, 36.539478, 33.709003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.389973, 36.674412, 33.905560>,  <39.435860, 36.899303, 34.233154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.389973, 36.674412, 33.905560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154809, 0.824477, -0.544309,
		0.981262, 0.064346, -0.181618,
		-0.114716, -0.562225, -0.818989,
		39.355556, 36.505745, 33.659863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637684, 37.310715, 33.771561>,  <39.435860, 36.899303, 34.233154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637684, 37.310715, 33.771561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.458778, 37.034096, 33.544678>,  <39.351437, 36.868126, 33.408546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.458778, 37.034096, 33.544678>,  <39.637684, 37.310715, 33.771561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.458778, 37.034096, 33.544678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247479, 0.705102, -0.664519,
		0.859484, -0.156840, -0.486506,
		-0.447259, -0.691544, -0.567209,
		39.324600, 36.826633, 33.374516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.008316, 37.305969, 33.214905>,  <39.637684, 37.310715, 33.771561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.008316, 37.305969, 33.214905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.631737, 37.184647, 33.156002>,  <39.405788, 37.111855, 33.120663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.631737, 37.184647, 33.156002>,  <40.008316, 37.305969, 33.214905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.631737, 37.184647, 33.156002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178745, 0.819309, -0.544778,
		0.285878, -0.486559, -0.825550,
		-0.941448, -0.303304, -0.147252,
		39.349304, 37.093655, 33.111828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.844330, 37.229412, 32.460243>,  <40.008316, 37.305969, 33.214905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.844330, 37.229412, 32.460243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.479115, 37.277676, 32.616089>,  <39.259987, 37.306633, 32.709599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.479115, 37.277676, 32.616089>,  <39.844330, 37.229412, 32.460243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.479115, 37.277676, 32.616089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211945, 0.675794, -0.705961,
		-0.348483, -0.727147, -0.591453,
		-0.913038, 0.120660, 0.389618,
		39.205204, 37.313873, 32.732975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.358509, 37.046932, 31.972004>,  <39.844330, 37.229412, 32.460243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.358509, 37.046932, 31.972004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.227924, 37.355728, 32.190163>,  <39.149574, 37.541004, 32.321056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.227924, 37.355728, 32.190163>,  <39.358509, 37.046932, 31.972004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.227924, 37.355728, 32.190163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084379, 0.550903, -0.830293,
		-0.941436, -0.317080, -0.114710,
		-0.326463, 0.771989, 0.545395,
		39.129986, 37.587326, 32.353783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.790363, 37.297123, 31.700468>,  <39.358509, 37.046932, 31.972004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.790363, 37.297123, 31.700468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.903019, 37.633598, 31.885109>,  <38.970612, 37.835484, 31.995893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.903019, 37.633598, 31.885109>,  <38.790363, 37.297123, 31.700468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903019, 37.633598, 31.885109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387467, 0.539812, -0.747310,
		-0.877808, 0.031619, 0.477968,
		0.281642, 0.841192, 0.461600,
		38.987511, 37.885956, 32.023590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230331, 37.716835, 31.558500>,  <38.790363, 37.297123, 31.700468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.230331, 37.716835, 31.558500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541550, 37.936569, 31.680399>,  <38.728283, 38.068409, 31.753538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541550, 37.936569, 31.680399>,  <38.230331, 37.716835, 31.558500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541550, 37.936569, 31.680399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334173, 0.772702, -0.539685,
		-0.531948, 0.318063, 0.784772,
		0.778049, 0.549334, 0.304749,
		38.774963, 38.101368, 31.771824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223854, 37.821865, 30.814075>,  <38.230331, 37.716835, 31.558500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.223854, 37.821865, 30.814075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.126259, 38.117722, 30.563189>,  <38.067703, 38.295235, 30.412657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.126259, 38.117722, 30.563189>,  <38.223854, 37.821865, 30.814075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126259, 38.117722, 30.563189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797546, 0.520988, 0.304125,
		0.551716, -0.426033, -0.717012,
		-0.243987, 0.739641, -0.627218,
		38.053062, 38.339615, 30.375023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800014, 37.792561, 30.368568>,  <38.223854, 37.821865, 30.814075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.800014, 37.792561, 30.368568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.623524, 38.147488, 30.422211>,  <38.517632, 38.360443, 30.454395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.623524, 38.147488, 30.422211>,  <38.800014, 37.792561, 30.368568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.623524, 38.147488, 30.422211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890607, 0.414621, 0.186838,
		0.110182, 0.201873, -0.973194,
		-0.441225, 0.887320, 0.134106,
		38.491158, 38.413685, 30.462442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278225, 38.270737, 30.121214>,  <38.800014, 37.792561, 30.368568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.278225, 38.270737, 30.121214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.049526, 38.512161, 30.343500>,  <38.912308, 38.657017, 30.476871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.049526, 38.512161, 30.343500>,  <39.278225, 38.270737, 30.121214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.049526, 38.512161, 30.343500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730912, 0.682386, 0.010854,
		-0.372661, 0.412385, -0.831302,
		-0.571744, 0.603563, 0.555716,
		38.878002, 38.693230, 30.510214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423237, 38.861080, 29.898321>,  <39.278225, 38.270737, 30.121214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.423237, 38.861080, 29.898321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.316189, 38.887173, 30.282846>,  <39.251961, 38.902828, 30.513561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.316189, 38.887173, 30.282846>,  <39.423237, 38.861080, 29.898321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.316189, 38.887173, 30.282846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897952, 0.378654, 0.224285,
		-0.349374, 0.923237, -0.159912,
		-0.267619, 0.065234, 0.961314,
		39.235905, 38.906742, 30.571241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.808887, 39.422009, 29.857569>,  <39.423237, 38.861080, 29.898321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.808887, 39.422009, 29.857569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.474659, 39.435116, 30.076929>,  <39.274120, 39.442978, 30.208546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.474659, 39.435116, 30.076929>,  <39.808887, 39.422009, 29.857569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.474659, 39.435116, 30.076929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384208, 0.748356, 0.540691,
		-0.392685, 0.662487, -0.637895,
		-0.835573, 0.032763, 0.548401,
		39.223988, 39.444946, 30.241449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.191269, 39.920513, 30.280840>,  <39.808887, 39.422009, 29.857569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.191269, 39.920513, 30.280840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.262157, 39.537292, 30.370939>,  <40.304691, 39.307362, 30.424999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.262157, 39.537292, 30.370939>,  <40.191269, 39.920513, 30.280840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.262157, 39.537292, 30.370939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655350, -0.055870, -0.753256,
		0.734240, 0.281111, 0.617955,
		0.177224, -0.958048, 0.225248,
		40.315323, 39.249878, 30.438513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.000256, 39.809978, 30.527231>,  <40.191269, 39.920513, 30.280840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.000256, 39.809978, 30.527231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.803959, 39.511192, 30.347805>,  <40.686180, 39.331921, 30.240150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.803959, 39.511192, 30.347805>,  <41.000256, 39.809978, 30.527231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.803959, 39.511192, 30.347805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741689, -0.087961, -0.664952,
		0.457243, -0.659014, 0.597185,
		-0.490741, -0.746970, -0.448564,
		40.656738, 39.287102, 30.213236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.313812, 39.092495, 30.465761>,  <41.000256, 39.809978, 30.527231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.313812, 39.092495, 30.465761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.084354, 39.179077, 30.149767>,  <40.946682, 39.231026, 29.960171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.084354, 39.179077, 30.149767>,  <41.313812, 39.092495, 30.465761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.084354, 39.179077, 30.149767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792610, -0.096630, -0.602024,
		-0.206651, -0.971498, -0.116138,
		-0.573642, 0.216461, -0.789987,
		40.912262, 39.244015, 29.912771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.967781, 38.607407, 30.833488>,  <41.313812, 39.092495, 30.465761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.967781, 38.607407, 30.833488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.891327, 38.223888, 30.917562>,  <40.845455, 37.993778, 30.968008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.891327, 38.223888, 30.917562>,  <40.967781, 38.607407, 30.833488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.891327, 38.223888, 30.917562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977336, -0.205751, -0.049804,
		0.090998, 0.195904, 0.976392,
		-0.191137, -0.958795, 0.210187,
		40.833984, 37.936249, 30.980618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.237087, 38.614231, 31.448257>,  <40.967781, 38.607407, 30.833488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.237087, 38.614231, 31.448257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.601940, 38.450581, 31.458323>,  <41.820850, 38.352390, 31.464361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.601940, 38.450581, 31.458323>,  <41.237087, 38.614231, 31.448257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.601940, 38.450581, 31.458323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006961, 0.045919, 0.998921,
		-0.409836, -0.911324, 0.039036,
		0.912133, -0.409122, 0.025163,
		41.875580, 38.327843, 31.465872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.223484, 38.227993, 32.052715>,  <41.237087, 38.614231, 31.448257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.223484, 38.227993, 32.052715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.614620, 38.269753, 31.980127>,  <41.849300, 38.294807, 31.936575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.614620, 38.269753, 31.980127>,  <41.223484, 38.227993, 32.052715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.614620, 38.269753, 31.980127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194950, -0.138094, 0.971043,
		0.076314, -0.984902, -0.155386,
		0.977840, 0.104396, -0.181468,
		41.907970, 38.301071, 31.925688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.488998, 37.596798, 32.436024>,  <41.223484, 38.227993, 32.052715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.488998, 37.596798, 32.436024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.741978, 37.904510, 32.399746>,  <41.893764, 38.089138, 32.377979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.741978, 37.904510, 32.399746>,  <41.488998, 37.596798, 32.436024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.741978, 37.904510, 32.399746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298690, -0.134160, 0.944873,
		0.714701, -0.624672, -0.314624,
		0.632445, 0.769277, -0.090699,
		41.931713, 38.135292, 32.372536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.184307, 37.558895, 32.636520>,  <41.488998, 37.596798, 32.436024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.184307, 37.558895, 32.636520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.123268, 37.937504, 32.750233>,  <42.086647, 38.164669, 32.818459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.123268, 37.937504, 32.750233>,  <42.184307, 37.558895, 32.636520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.123268, 37.937504, 32.750233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281236, -0.234166, 0.930630,
		0.947429, 0.221957, -0.230464,
		-0.152593, 0.946521, 0.284278,
		42.077492, 38.221458, 32.835518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.781147, 37.874512, 33.011803>,  <42.184307, 37.558895, 32.636520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.781147, 37.874512, 33.011803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.473370, 38.073975, 33.171448>,  <42.288704, 38.193653, 33.267235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.473370, 38.073975, 33.171448>,  <42.781147, 37.874512, 33.011803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.473370, 38.073975, 33.171448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272716, -0.308550, 0.911276,
		0.577562, 0.810023, 0.101420,
		-0.769447, 0.498659, 0.399113,
		42.242535, 38.223572, 33.291183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.357464, 37.375065, 33.309589>,  <42.781147, 37.874512, 33.011803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.357464, 37.375065, 33.309589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.200649, 37.078388, 33.091888>,  <42.106560, 36.900383, 32.961269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.200649, 37.078388, 33.091888>,  <42.357464, 37.375065, 33.309589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.200649, 37.078388, 33.091888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893707, -0.447351, -0.034121,
		-0.218164, -0.499777, 0.838229,
		-0.392035, -0.741687, -0.544250,
		42.083038, 36.855881, 32.928612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.514145, 36.867710, 33.697956>,  <42.357464, 37.375065, 33.309589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.514145, 36.867710, 33.697956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.484509, 36.796783, 33.305412>,  <42.466728, 36.754227, 33.069885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.484509, 36.796783, 33.305412>,  <42.514145, 36.867710, 33.697956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.484509, 36.796783, 33.305412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924490, -0.381204, -0.000918,
		-0.373936, -0.907328, 0.192168,
		-0.074088, -0.177314, -0.981362,
		42.462280, 36.743591, 33.011005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.896065, 36.278465, 33.594505>,  <42.514145, 36.867710, 33.697956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.896065, 36.278465, 33.594505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.852779, 36.390514, 33.212967>,  <42.826809, 36.457745, 32.984043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.852779, 36.390514, 33.212967>,  <42.896065, 36.278465, 33.594505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.852779, 36.390514, 33.212967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944016, -0.271828, -0.186931,
		-0.311645, -0.920676, -0.235020,
		-0.108218, 0.280119, -0.953846,
		42.820312, 36.474548, 32.926811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.227406, 35.785015, 33.232693>,  <42.896065, 36.278465, 33.594505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.227406, 35.785015, 33.232693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.245670, 36.144100, 33.057407>,  <43.256630, 36.359550, 32.952236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.245670, 36.144100, 33.057407>,  <43.227406, 35.785015, 33.232693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.245670, 36.144100, 33.057407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947474, -0.177928, -0.265771,
		-0.316556, -0.403065, -0.858680,
		0.045660, 0.897708, -0.438218,
		43.259369, 36.413414, 32.925941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.211159, 35.746761, 32.487820>,  <43.227406, 35.785015, 33.232693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.211159, 35.746761, 32.487820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.411942, 36.076443, 32.592682>,  <43.532410, 36.274250, 32.655598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.411942, 36.076443, 32.592682>,  <43.211159, 35.746761, 32.487820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.411942, 36.076443, 32.592682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852139, -0.419428, -0.312953,
		-0.147982, 0.380482, -0.912872,
		0.501957, 0.824205, 0.262156,
		43.562527, 36.323704, 32.671329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.599686, 35.969524, 32.032787>,  <43.211159, 35.746761, 32.487820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.599686, 35.969524, 32.032787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.807106, 36.153877, 32.320866>,  <43.931561, 36.264488, 32.493713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.807106, 36.153877, 32.320866>,  <43.599686, 35.969524, 32.032787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.807106, 36.153877, 32.320866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854720, -0.256216, -0.451449,
		-0.023538, 0.849671, -0.526788,
		0.518555, 0.460882, 0.720200,
		43.962673, 36.292141, 32.536926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.101841, 36.419868, 31.678667>,  <43.599686, 35.969524, 32.032787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.101841, 36.419868, 31.678667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.240154, 36.333611, 32.043945>,  <44.323143, 36.281857, 32.263111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.240154, 36.333611, 32.043945>,  <44.101841, 36.419868, 31.678667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.240154, 36.333611, 32.043945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907562, -0.170256, -0.383854,
		0.238255, 0.961514, 0.136841,
		0.345783, -0.215647, 0.913198,
		44.343887, 36.268917, 32.317905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.883400, 36.687458, 31.687208>,  <44.101841, 36.419868, 31.678667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.883400, 36.687458, 31.687208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.829418, 36.420792, 31.980423>,  <44.797028, 36.260792, 32.156353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.829418, 36.420792, 31.980423>,  <44.883400, 36.687458, 31.687208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.829418, 36.420792, 31.980423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881724, -0.418316, -0.218114,
		0.452051, 0.616902, 0.644269,
		-0.134954, -0.666666, 0.733037,
		44.788933, 36.220791, 32.200333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.441658, 36.786430, 32.232365>,  <44.883400, 36.687458, 31.687208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.441658, 36.786430, 32.232365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.337162, 36.403164, 32.185589>,  <45.274464, 36.173206, 32.157524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.337162, 36.403164, 32.185589>,  <45.441658, 36.786430, 32.232365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.337162, 36.403164, 32.185589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959754, -0.244898, -0.137468,
		0.103079, -0.148145, 0.983579,
		-0.261242, -0.958164, -0.116939,
		45.258789, 36.115715, 32.150509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.771374, 36.191704, 32.658352>,  <45.441658, 36.786430, 32.232365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.771374, 36.191704, 32.658352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.705658, 36.089478, 32.277260>,  <45.666229, 36.028141, 32.048603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.705658, 36.089478, 32.277260>,  <45.771374, 36.191704, 32.658352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.705658, 36.089478, 32.277260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986412, -0.042213, -0.158775,
		0.000360, -0.965869, 0.259030,
		-0.164291, -0.255567, -0.952730,
		45.656372, 36.012806, 31.991442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.639240, 36.205879, 33.451168>,  <45.771374, 36.191704, 32.658352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.639240, 36.205879, 33.451168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.505085, 36.112061, 33.816135>,  <45.424591, 36.055771, 34.035114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.505085, 36.112061, 33.816135>,  <45.639240, 36.205879, 33.451168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.505085, 36.112061, 33.816135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281101, -0.949308, -0.140702,
		0.899165, 0.209292, 0.384316,
		-0.335387, -0.234546, 0.912416,
		45.404469, 36.041698, 34.089859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.199730, 35.812721, 33.908878>,  <45.639240, 36.205879, 33.451168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.199730, 35.812721, 33.908878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.817364, 35.724209, 33.986084>,  <45.587944, 35.671101, 34.032406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.817364, 35.724209, 33.986084>,  <46.199730, 35.812721, 33.908878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.817364, 35.724209, 33.986084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139103, -0.920161, -0.365998,
		0.258591, -0.323016, 0.910380,
		-0.955919, -0.221280, 0.193013,
		45.530586, 35.657825, 34.043987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.174324, 35.203407, 34.428833>,  <46.199730, 35.812721, 33.908878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.174324, 35.203407, 34.428833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.895691, 35.207420, 34.141872>,  <45.728512, 35.209827, 33.969696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.895691, 35.207420, 34.141872>,  <46.174324, 35.203407, 34.428833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.895691, 35.207420, 34.141872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413210, -0.811816, -0.412568,
		-0.586540, -0.583827, 0.561353,
		-0.696583, 0.010030, -0.717406,
		45.686714, 35.210430, 33.926651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.467697, 34.492168, 34.298702>,  <46.174324, 35.203407, 34.428833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.467697, 34.492168, 34.298702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.474632, 34.693016, 34.644554>,  <46.478794, 34.813522, 34.852066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.474632, 34.693016, 34.644554>,  <46.467697, 34.492168, 34.298702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.474632, 34.693016, 34.644554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998331, 0.038948, -0.042638,
		-0.055084, 0.863924, -0.500601,
		0.017339, 0.502115, 0.864627,
		46.479836, 34.843651, 34.903942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.863983, 35.278805, 34.233025>,  <46.467697, 34.492168, 34.298702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.863983, 35.278805, 34.233025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.870541, 35.103283, 34.592400>,  <46.874474, 34.997971, 34.808025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.870541, 35.103283, 34.592400>,  <46.863983, 35.278805, 34.233025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.870541, 35.103283, 34.592400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999797, -0.003347, -0.019877,
		0.011729, 0.898579, 0.438656,
		0.016393, -0.438800, 0.898435,
		46.875458, 34.971642, 34.861931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.338272, 35.664318, 34.694656>,  <46.863983, 35.278805, 34.233025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.338272, 35.664318, 34.694656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.288094, 35.296452, 34.843506>,  <47.257988, 35.075733, 34.932816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.288094, 35.296452, 34.843506>,  <47.338272, 35.664318, 34.694656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.288094, 35.296452, 34.843506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990320, -0.093617, 0.102477,
		-0.059408, 0.381381, 0.922507,
		-0.125445, -0.919665, 0.372128,
		47.250462, 35.020554, 34.955143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.860161, 35.571869, 35.240799>,  <47.338272, 35.664318, 34.694656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.860161, 35.571869, 35.240799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.753353, 35.216076, 35.092464>,  <47.689270, 35.002602, 35.003464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.753353, 35.216076, 35.092464>,  <47.860161, 35.571869, 35.240799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.753353, 35.216076, 35.092464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951429, -0.304514, 0.045335,
		-0.153251, -0.340723, 0.927590,
		-0.267017, -0.889483, -0.370840,
		47.673248, 34.949230, 34.981213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.582832, 36.636646, 20.654644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.199512, 36.556465, 20.573174>,  <34.969521, 36.508358, 20.524290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.199512, 36.556465, 20.573174>,  <35.582832, 36.636646, 20.654644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199512, 36.556465, 20.573174> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200421, -0.036627, 0.979025,
		-0.203706, 0.979019, -0.005075,
		-0.958298, -0.200450, -0.203677,
		34.912022, 36.496330, 20.512070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257450, 37.113983, 21.019453>,  <35.582832, 36.636646, 20.654644>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257450, 37.113983, 21.019453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.993271, 36.815777, 20.983635>,  <34.834763, 36.636852, 20.962143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.993271, 36.815777, 20.983635>,  <35.257450, 37.113983, 21.019453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993271, 36.815777, 20.983635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124245, -0.009111, 0.992210,
		-0.740524, 0.666425, -0.086609,
		-0.660444, -0.745516, -0.089547,
		34.795139, 36.592121, 20.956770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.788342, 37.249859, 21.517807>,  <35.257450, 37.113983, 21.019453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.788342, 37.249859, 21.517807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.698215, 36.872082, 21.422087>,  <34.644138, 36.645416, 21.364655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.698215, 36.872082, 21.422087>,  <34.788342, 37.249859, 21.517807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.698215, 36.872082, 21.422087> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196011, -0.196653, 0.960681,
		-0.954365, 0.263363, -0.140811,
		-0.225317, -0.944440, -0.239300,
		34.630619, 36.588749, 21.350296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.209137, 37.104099, 21.906342>,  <34.788342, 37.249859, 21.517807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.209137, 37.104099, 21.906342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.355988, 36.746010, 21.805309>,  <34.444096, 36.531155, 21.744690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.355988, 36.746010, 21.805309>,  <34.209137, 37.104099, 21.906342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355988, 36.746010, 21.805309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194154, -0.339312, 0.920419,
		-0.909684, -0.288867, -0.298380,
		0.367122, -0.895222, -0.252582,
		34.466125, 36.477444, 21.729534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647621, 36.585442, 22.061693>,  <34.209137, 37.104099, 21.906342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647621, 36.585442, 22.061693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.995266, 36.387768, 22.053461>,  <34.203854, 36.269165, 22.048523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.995266, 36.387768, 22.053461>,  <33.647621, 36.585442, 22.061693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.995266, 36.387768, 22.053461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261701, -0.494758, 0.828690,
		-0.419707, -0.714841, -0.559329,
		0.869114, -0.494183, -0.020579,
		34.256001, 36.239513, 22.047287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529026, 35.901909, 22.277145>,  <33.647621, 36.585442, 22.061693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529026, 35.901909, 22.277145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.926594, 35.892998, 22.320276>,  <34.165134, 35.887650, 22.346155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.926594, 35.892998, 22.320276>,  <33.529026, 35.901909, 22.277145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926594, 35.892998, 22.320276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100763, -0.578882, 0.809162,
		0.044391, -0.815107, -0.577607,
		0.993920, -0.022282, 0.107830,
		34.224770, 35.886314, 22.352625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701462, 35.161266, 22.437799>,  <33.529026, 35.901909, 22.277145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.701462, 35.161266, 22.437799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.992023, 35.393089, 22.585556>,  <34.166359, 35.532185, 22.674210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.992023, 35.393089, 22.585556>,  <33.701462, 35.161266, 22.437799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.992023, 35.393089, 22.585556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062598, -0.591037, 0.804212,
		0.684414, -0.561057, -0.465609,
		0.726401, 0.579560, 0.369393,
		34.209942, 35.566956, 22.696375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197048, 34.728085, 22.805393>,  <33.701462, 35.161266, 22.437799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.197048, 34.728085, 22.805393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.290333, 35.088745, 22.951073>,  <34.346302, 35.305141, 23.038481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.290333, 35.088745, 22.951073>,  <34.197048, 34.728085, 22.805393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290333, 35.088745, 22.951073> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173191, -0.407048, 0.896837,
		0.956879, -0.146076, -0.251085,
		0.233210, 0.901651, 0.364196,
		34.360294, 35.359241, 23.060331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879635, 34.697414, 23.165319>,  <34.197048, 34.728085, 22.805393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.879635, 34.697414, 23.165319> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.659149, 34.987518, 23.330326>,  <34.526859, 35.161579, 23.429331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.659149, 34.987518, 23.330326>,  <34.879635, 34.697414, 23.165319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.659149, 34.987518, 23.330326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106193, -0.429408, 0.896845,
		0.827581, 0.538157, 0.159677,
		-0.551210, 0.725256, 0.412519,
		34.493786, 35.205093, 23.454082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.204372, 34.649235, 23.852295>,  <34.879635, 34.697414, 23.165319>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.204372, 34.649235, 23.852295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.893742, 34.901222, 23.855614>,  <34.707363, 35.052414, 23.857605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.893742, 34.901222, 23.855614>,  <35.204372, 34.649235, 23.852295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.893742, 34.901222, 23.855614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052223, -0.077488, 0.995625,
		0.627856, 0.772744, 0.093074,
		-0.776575, 0.629970, 0.008297,
		34.660770, 35.090214, 23.858103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355103, 35.176289, 24.287844>,  <35.204372, 34.649235, 23.852295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355103, 35.176289, 24.287844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.955338, 35.177925, 24.274178>,  <34.715481, 35.178905, 24.265978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.955338, 35.177925, 24.274178>,  <35.355103, 35.176289, 24.287844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955338, 35.177925, 24.274178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033999, 0.035662, 0.998785,
		0.005303, 0.999356, -0.035501,
		-0.999408, 0.004090, -0.034166,
		34.655514, 35.179153, 24.263927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110516, 35.775520, 24.613480>,  <35.355103, 35.176289, 24.287844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110516, 35.775520, 24.613480> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.789425, 35.538433, 24.639746>,  <34.596771, 35.396179, 24.655504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.789425, 35.538433, 24.639746>,  <35.110516, 35.775520, 24.613480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789425, 35.538433, 24.639746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020250, 0.137138, 0.990345,
		-0.595999, 0.793649, -0.122087,
		-0.802729, -0.592717, 0.065663,
		34.548607, 35.360619, 24.659445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.745232, 36.082355, 25.026270>,  <35.110516, 35.775520, 24.613480>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.745232, 36.082355, 25.026270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.589729, 35.714317, 25.045444>,  <34.496426, 35.493496, 25.056950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.589729, 35.714317, 25.045444>,  <34.745232, 36.082355, 25.026270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589729, 35.714317, 25.045444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024439, 0.062308, 0.997758,
		-0.921016, 0.386715, -0.046708,
		-0.388758, -0.920092, 0.047936,
		34.473103, 35.438290, 25.059826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.077927, 36.101486, 25.452425>,  <34.745232, 36.082355, 25.026270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.077927, 36.101486, 25.452425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.188694, 35.717175, 25.458433>,  <34.255154, 35.486588, 25.462038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.188694, 35.717175, 25.458433>,  <34.077927, 36.101486, 25.452425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.188694, 35.717175, 25.458433> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038794, 0.026796, 0.998888,
		-0.960111, -0.276026, 0.044693,
		0.276916, -0.960777, 0.015019,
		34.271770, 35.428940, 25.462938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654678, 35.788044, 25.830908>,  <34.077927, 36.101486, 25.452425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654678, 35.788044, 25.830908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.951794, 35.520279, 25.835787>,  <34.130062, 35.359619, 25.838715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.951794, 35.520279, 25.835787>,  <33.654678, 35.788044, 25.830908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.951794, 35.520279, 25.835787> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129085, -0.125315, 0.983684,
		-0.656963, -0.732245, -0.179494,
		0.742790, -0.669413, 0.012195,
		34.174629, 35.319454, 25.839445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379181, 35.251411, 26.124529>,  <33.654678, 35.788044, 25.830908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.379181, 35.251411, 26.124529> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.776180, 35.249634, 26.173391>,  <34.014381, 35.248566, 26.202709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.776180, 35.249634, 26.173391>,  <33.379181, 35.251411, 26.124529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.776180, 35.249634, 26.173391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122121, 0.007606, 0.992486,
		-0.005345, -0.999961, 0.007005,
		0.992501, -0.004449, 0.122157,
		34.073929, 35.248299, 26.210039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.475281, 34.752823, 26.663910>,  <33.379181, 35.251411, 26.124529>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.475281, 34.752823, 26.663910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.807297, 34.975887, 26.666540>,  <34.006508, 35.109726, 26.668118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.807297, 34.975887, 26.666540>,  <33.475281, 34.752823, 26.663910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807297, 34.975887, 26.666540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142070, 0.200033, 0.969435,
		0.539302, -0.805605, 0.245262,
		0.830042, 0.557663, 0.006574,
		34.056309, 35.143185, 26.668512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.956600, 34.447811, 27.149870>,  <33.475281, 34.752823, 26.663910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.956600, 34.447811, 27.149870> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.087349, 34.823109, 27.104534>,  <34.165798, 35.048286, 27.077332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.087349, 34.823109, 27.104534>,  <33.956600, 34.447811, 27.149870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.087349, 34.823109, 27.104534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105144, 0.083081, 0.990981,
		0.939202, -0.335840, -0.071495,
		0.326871, 0.938248, -0.113341,
		34.185410, 35.104584, 27.070532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488743, 34.507118, 27.688210>,  <33.956600, 34.447811, 27.149870>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488743, 34.507118, 27.688210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.365387, 34.876385, 27.596415>,  <34.291374, 35.097942, 27.541338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.365387, 34.876385, 27.596415>,  <34.488743, 34.507118, 27.688210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.365387, 34.876385, 27.596415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132886, 0.280689, 0.950555,
		0.941933, 0.262643, -0.209237,
		-0.308387, 0.923164, -0.229489,
		34.272869, 35.153336, 27.527569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819084, 34.987171, 28.260323>,  <34.488743, 34.507118, 27.688210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819084, 34.987171, 28.260323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.548306, 35.219799, 28.079868>,  <34.385838, 35.359375, 27.971596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.548306, 35.219799, 28.079868>,  <34.819084, 34.987171, 28.260323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.548306, 35.219799, 28.079868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330093, 0.307949, 0.892304,
		0.657866, 0.752955, -0.016490,
		-0.676942, 0.581573, -0.451134,
		34.345222, 35.394272, 27.944529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977848, 35.690533, 28.530273>,  <34.819084, 34.987171, 28.260323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.977848, 35.690533, 28.530273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.600002, 35.643150, 28.407845>,  <34.373295, 35.614723, 28.334387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.600002, 35.643150, 28.407845>,  <34.977848, 35.690533, 28.530273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.600002, 35.643150, 28.407845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323611, 0.180880, 0.928740,
		-0.054651, 0.976346, -0.209194,
		-0.944611, -0.118454, -0.306071,
		34.316620, 35.607613, 28.316023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.599762, 35.642548, 28.091656>,  <34.977848, 35.690533, 28.530273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.599762, 35.642548, 28.091656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.882874, 35.876236, 28.250521>,  <36.052742, 36.016449, 28.345839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.882874, 35.876236, 28.250521>,  <35.599762, 35.642548, 28.091656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882874, 35.876236, 28.250521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345352, 0.204295, -0.915967,
		-0.616262, 0.785464, -0.057164,
		0.707781, 0.584217, 0.397160,
		36.095207, 36.051502, 28.369669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467846, 36.426838, 27.882662>,  <35.599762, 35.642548, 28.091656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467846, 36.426838, 27.882662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.852993, 36.360668, 27.968012>,  <36.084080, 36.320965, 28.019222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.852993, 36.360668, 27.968012>,  <35.467846, 36.426838, 27.882662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.852993, 36.360668, 27.968012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247790, 0.227630, -0.941692,
		0.107208, 0.959594, 0.260167,
		0.962864, -0.165423, 0.213374,
		36.141853, 36.311043, 28.032024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.886120, 36.963123, 27.594393>,  <35.467846, 36.426838, 27.882662>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.886120, 36.963123, 27.594393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.168991, 36.683697, 27.638041>,  <36.338715, 36.516041, 27.664228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.168991, 36.683697, 27.638041>,  <35.886120, 36.963123, 27.594393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.168991, 36.683697, 27.638041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363232, 0.226540, -0.903738,
		0.606602, 0.678736, 0.413946,
		0.707174, -0.698568, 0.109119,
		36.381142, 36.474125, 27.670776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586380, 37.232697, 27.455080>,  <35.886120, 36.963123, 27.594393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.586380, 37.232697, 27.455080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.638023, 36.842400, 27.384354>,  <36.669010, 36.608223, 27.341917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.638023, 36.842400, 27.384354>,  <36.586380, 37.232697, 27.455080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638023, 36.842400, 27.384354> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577039, 0.218935, -0.786825,
		0.806447, -0.000446, 0.591306,
		0.129107, -0.975739, -0.176816,
		36.676754, 36.549679, 27.331308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.318787, 37.195919, 27.296492>,  <36.586380, 37.232697, 27.455080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.318787, 37.195919, 27.296492> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.138680, 36.875076, 27.139584>,  <37.030613, 36.682571, 27.045439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.138680, 36.875076, 27.139584>,  <37.318787, 37.195919, 27.296492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.138680, 36.875076, 27.139584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612725, 0.041989, -0.789180,
		0.649479, -0.595701, 0.472565,
		-0.450272, -0.802108, -0.392272,
		37.003597, 36.634445, 27.021902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823357, 36.689533, 27.135954>,  <37.318787, 37.195919, 27.296492>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823357, 36.689533, 27.135954> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.513020, 36.567947, 26.914801>,  <37.326817, 36.494995, 26.782108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.513020, 36.567947, 26.914801>,  <37.823357, 36.689533, 27.135954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513020, 36.567947, 26.914801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573878, 0.024159, -0.818584,
		0.262180, -0.952376, 0.155697,
		-0.775839, -0.303967, -0.552882,
		37.280270, 36.476757, 26.748936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088100, 36.265171, 26.565529>,  <37.823357, 36.689533, 27.135954>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.088100, 36.265171, 26.565529> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.724277, 36.263741, 26.399305>,  <37.505981, 36.262882, 26.299572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.724277, 36.263741, 26.399305>,  <38.088100, 36.265171, 26.565529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724277, 36.263741, 26.399305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415421, 0.019293, -0.909425,
		0.011258, -0.999808, -0.016067,
		-0.909560, -0.003564, -0.415559,
		37.451408, 36.262669, 26.274637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.037907, 35.747894, 26.021957>,  <38.088100, 36.265171, 26.565529>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.037907, 35.747894, 26.021957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.749905, 36.011166, 25.933962>,  <37.577103, 36.169128, 25.881165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.749905, 36.011166, 25.933962>,  <38.037907, 35.747894, 26.021957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749905, 36.011166, 25.933962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346514, 0.066314, -0.935698,
		-0.601268, -0.749935, -0.275814,
		-0.720003, 0.658179, -0.219990,
		37.533905, 36.208618, 25.867964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923977, 35.577503, 25.405209>,  <38.037907, 35.747894, 26.021957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923977, 35.577503, 25.405209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.749992, 35.937439, 25.418510>,  <37.645603, 36.153400, 25.426491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.749992, 35.937439, 25.418510>,  <37.923977, 35.577503, 25.405209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749992, 35.937439, 25.418510> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161565, 0.114321, -0.980218,
		-0.885838, -0.420981, -0.195107,
		-0.434958, 0.899837, 0.033254,
		37.619507, 36.207390, 25.428486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498573, 35.598446, 24.742233>,  <37.923977, 35.577503, 25.405209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.498573, 35.598446, 24.742233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.597942, 35.964256, 24.869944>,  <37.657562, 36.183743, 24.946569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.597942, 35.964256, 24.869944>,  <37.498573, 35.598446, 24.742233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597942, 35.964256, 24.869944> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137866, 0.292869, -0.946161,
		-0.958791, 0.279063, -0.053327,
		0.248420, 0.914523, 0.319274,
		37.672470, 36.238613, 24.965725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.115871, 36.041721, 24.232347>,  <37.498573, 35.598446, 24.742233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.115871, 36.041721, 24.232347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.403675, 36.254829, 24.410543>,  <37.576359, 36.382694, 24.517462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.403675, 36.254829, 24.410543>,  <37.115871, 36.041721, 24.232347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403675, 36.254829, 24.410543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182334, 0.474050, -0.861412,
		-0.670118, 0.701024, 0.243942,
		0.719511, 0.532769, 0.445490,
		37.619530, 36.414661, 24.544191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.923790, 36.625931, 24.014151>,  <37.115871, 36.041721, 24.232347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.923790, 36.625931, 24.014151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.311165, 36.641392, 24.112652>,  <37.543591, 36.650669, 24.171753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.311165, 36.641392, 24.112652>,  <36.923790, 36.625931, 24.014151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.311165, 36.641392, 24.112652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187424, 0.538401, -0.821582,
		-0.164337, 0.841802, 0.514163,
		0.968435, 0.038650, 0.246253,
		37.601696, 36.652988, 24.186527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197784, 37.353798, 24.001740>,  <36.923790, 36.625931, 24.014151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.197784, 37.353798, 24.001740> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.513432, 37.115059, 23.943686>,  <37.702820, 36.971813, 23.908854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.513432, 37.115059, 23.943686>,  <37.197784, 37.353798, 24.001740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513432, 37.115059, 23.943686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252260, 0.530340, -0.809385,
		0.560053, 0.602088, 0.569062,
		0.789117, -0.596850, -0.145136,
		37.750168, 36.936005, 23.900145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517441, 37.781158, 23.653711>,  <37.197784, 37.353798, 24.001740>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517441, 37.781158, 23.653711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.721676, 37.442314, 23.594772>,  <37.844215, 37.239006, 23.559410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.721676, 37.442314, 23.594772>,  <37.517441, 37.781158, 23.653711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721676, 37.442314, 23.594772> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213266, 0.290779, -0.932719,
		0.832960, 0.444807, 0.329126,
		0.510583, -0.847109, -0.147345,
		37.874851, 37.188183, 23.550570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992271, 38.005375, 23.299330>,  <37.517441, 37.781158, 23.653711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.992271, 38.005375, 23.299330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.012695, 37.610382, 23.239630>,  <38.024952, 37.373386, 23.203810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.012695, 37.610382, 23.239630>,  <37.992271, 38.005375, 23.299330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.012695, 37.610382, 23.239630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022722, 0.150553, -0.988341,
		0.998437, 0.047077, 0.030125,
		0.051064, -0.987480, -0.149248,
		38.028015, 37.314137, 23.194855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505306, 37.980942, 22.822889>,  <37.992271, 38.005375, 23.299330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505306, 37.980942, 22.822889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.283566, 37.648151, 22.813887>,  <38.150520, 37.448479, 22.808485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.283566, 37.648151, 22.813887>,  <38.505306, 37.980942, 22.822889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.283566, 37.648151, 22.813887> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065793, 0.070766, -0.995321,
		0.829676, -0.550281, -0.093968,
		-0.554355, -0.831976, -0.022508,
		38.117260, 37.398560, 22.807135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.829857, 37.481647, 22.311356>,  <38.505306, 37.980942, 22.822889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.829857, 37.481647, 22.311356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.440117, 37.399433, 22.348015>,  <38.206272, 37.350105, 22.370010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.440117, 37.399433, 22.348015>,  <38.829857, 37.481647, 22.311356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440117, 37.399433, 22.348015> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089609, -0.019222, -0.995792,
		0.206433, -0.978461, 0.000311,
		-0.974349, -0.205536, 0.091647,
		38.147812, 37.337772, 22.375509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.726635, 37.153572, 21.700258>,  <38.829857, 37.481647, 22.311356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.726635, 37.153572, 21.700258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.360931, 37.244335, 21.834507>,  <38.141510, 37.298794, 21.915056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.360931, 37.244335, 21.834507>,  <38.726635, 37.153572, 21.700258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360931, 37.244335, 21.834507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294309, 0.197319, -0.935119,
		-0.278408, -0.953719, -0.113620,
		-0.914260, 0.226906, 0.335623,
		38.086655, 37.312408, 21.935194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257465, 36.597107, 21.503418>,  <38.726635, 37.153572, 21.700258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.257465, 36.597107, 21.503418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.059952, 36.940895, 21.556307>,  <37.941444, 37.147167, 21.588039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.059952, 36.940895, 21.556307>,  <38.257465, 36.597107, 21.503418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059952, 36.940895, 21.556307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280047, -0.013221, -0.959895,
		-0.823255, -0.511011, 0.247221,
		-0.493786, 0.859472, 0.132223,
		37.911816, 37.198738, 21.595974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.705437, 36.569702, 21.026745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.657799, 36.954079, 21.126671>,  <37.629215, 37.184704, 21.186626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.657799, 36.954079, 21.126671>,  <37.705437, 36.569702, 21.026745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.657799, 36.954079, 21.126671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168732, 0.228360, -0.958844,
		-0.978441, -0.156342, 0.134946,
		-0.119091, 0.960941, 0.249817,
		37.622070, 37.242363, 21.201616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082150, 36.795643, 20.769390>,  <37.705437, 36.569702, 21.026745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082150, 36.795643, 20.769390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.232952, 37.161472, 20.827934>,  <37.323433, 37.380970, 20.863060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.232952, 37.161472, 20.827934>,  <37.082150, 36.795643, 20.769390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.232952, 37.161472, 20.827934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279143, 0.262866, -0.923570,
		-0.883147, 0.307332, 0.354398,
		0.377002, 0.914576, 0.146360,
		37.346054, 37.435844, 20.871841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606888, 37.339005, 20.576929>,  <37.082150, 36.795643, 20.769390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.606888, 37.339005, 20.576929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.970375, 37.505875, 20.571274>,  <37.188465, 37.605995, 20.567881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.970375, 37.505875, 20.571274>,  <36.606888, 37.339005, 20.576929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970375, 37.505875, 20.571274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178839, 0.358509, -0.916236,
		-0.377164, 0.835126, 0.400390,
		0.908716, 0.417176, -0.014136,
		37.242989, 37.631027, 20.567034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.448605, 37.988678, 20.372072>,  <36.606888, 37.339005, 20.576929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.448605, 37.988678, 20.372072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.839676, 37.986130, 20.288076>,  <37.074318, 37.984600, 20.237679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.839676, 37.986130, 20.288076>,  <36.448605, 37.988678, 20.372072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.839676, 37.986130, 20.288076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178283, 0.503626, -0.845326,
		0.111138, 0.863898, 0.491252,
		0.977683, -0.006366, -0.209990,
		37.132980, 37.984219, 20.225079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.548607, 38.701221, 20.147335>,  <36.448605, 37.988678, 20.372072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.548607, 38.701221, 20.147335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.821606, 38.443867, 20.008625>,  <36.985405, 38.289452, 19.925400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.821606, 38.443867, 20.008625>,  <36.548607, 38.701221, 20.147335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.821606, 38.443867, 20.008625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123240, 0.366357, -0.922277,
		0.720426, 0.672185, 0.170745,
		0.682494, -0.643390, -0.346773,
		37.026356, 38.250851, 19.904593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.846432, 39.030216, 19.554518>,  <36.548607, 38.701221, 20.147335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.846432, 39.030216, 19.554518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.945332, 38.646961, 19.496778>,  <37.004673, 38.417007, 19.462135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.945332, 38.646961, 19.496778>,  <36.846432, 39.030216, 19.554518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945332, 38.646961, 19.496778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035312, 0.139962, -0.989527,
		0.968308, 0.249759, 0.000772,
		0.247252, -0.958139, -0.144346,
		37.019508, 38.359520, 19.453474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277023, 39.024368, 19.002302>,  <36.846432, 39.030216, 19.554518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.277023, 39.024368, 19.002302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.163353, 38.641090, 19.015575>,  <37.095150, 38.411121, 19.023540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.163353, 38.641090, 19.015575>,  <37.277023, 39.024368, 19.002302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.163353, 38.641090, 19.015575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102532, -0.064785, -0.992618,
		0.953273, -0.278680, 0.116656,
		-0.284180, -0.958196, 0.033184,
		37.078098, 38.353630, 19.025530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.753757, 38.622696, 18.607019>,  <37.277023, 39.024368, 19.002302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.753757, 38.622696, 18.607019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.402935, 38.431168, 18.622467>,  <37.192440, 38.316250, 18.631735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.402935, 38.431168, 18.622467>,  <37.753757, 38.622696, 18.607019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402935, 38.431168, 18.622467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019687, -0.044495, -0.998816,
		0.479977, -0.876782, 0.029599,
		-0.877060, -0.478825, 0.038618,
		37.139816, 38.287521, 18.634052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.897736, 38.048698, 18.045200>,  <37.753757, 38.622696, 18.607019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.897736, 38.048698, 18.045200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.504768, 38.089058, 18.108044>,  <37.268990, 38.113274, 18.145750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.504768, 38.089058, 18.108044>,  <37.897736, 38.048698, 18.045200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504768, 38.089058, 18.108044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175360, -0.209611, -0.961931,
		-0.064128, -0.972565, 0.223619,
		-0.982414, 0.100901, 0.157107,
		37.210045, 38.119328, 18.155176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.687481, 37.708736, 17.490606>,  <37.897736, 38.048698, 18.045200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.687481, 37.708736, 17.490606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.330410, 37.847237, 17.606009>,  <37.116169, 37.930336, 17.675251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.330410, 37.847237, 17.606009>,  <37.687481, 37.708736, 17.490606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.330410, 37.847237, 17.606009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319746, -0.035408, -0.946841,
		-0.317631, -0.937473, 0.142321,
		-0.892677, 0.346253, 0.288507,
		37.062607, 37.951111, 17.692560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308319, 37.276695, 17.212490>,  <37.687481, 37.708736, 17.490606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308319, 37.276695, 17.212490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.079575, 37.600960, 17.262787>,  <36.942329, 37.795517, 17.292965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.079575, 37.600960, 17.262787>,  <37.308319, 37.276695, 17.212490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079575, 37.600960, 17.262787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316951, -0.076959, -0.945314,
		-0.756649, -0.580441, 0.300949,
		-0.571860, 0.810658, 0.125740,
		36.908016, 37.844158, 17.300508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741856, 37.088921, 16.827660>,  <37.308319, 37.276695, 17.212490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741856, 37.088921, 16.827660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.744583, 37.488121, 16.852804>,  <36.746220, 37.727642, 16.867891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.744583, 37.488121, 16.852804>,  <36.741856, 37.088921, 16.827660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.744583, 37.488121, 16.852804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363257, 0.061040, -0.929687,
		-0.931664, -0.016492, 0.362946,
		0.006822, 0.997999, 0.062860,
		36.746628, 37.787521, 16.871662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.080612, 37.324589, 16.700397>,  <36.741856, 37.088921, 16.827660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.080612, 37.324589, 16.700397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.351231, 37.605400, 16.611465>,  <36.513603, 37.773888, 16.558105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.351231, 37.605400, 16.611465>,  <36.080612, 37.324589, 16.700397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.351231, 37.605400, 16.611465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332092, 0.021390, -0.943004,
		-0.657264, 0.711824, 0.247611,
		0.676549, 0.702032, -0.222332,
		36.554195, 37.816010, 16.544765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741695, 37.786758, 16.295301>,  <36.080612, 37.324589, 16.700397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.741695, 37.786758, 16.295301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.112358, 37.906689, 16.204599>,  <36.334755, 37.978645, 16.150179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.112358, 37.906689, 16.204599>,  <35.741695, 37.786758, 16.295301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112358, 37.906689, 16.204599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318010, 0.303584, -0.898168,
		-0.200456, 0.904401, 0.376665,
		0.926654, 0.299826, -0.226754,
		36.390354, 37.996635, 16.136574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.592960, 38.294159, 15.963675>,  <35.741695, 37.786758, 16.295301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.592960, 38.294159, 15.963675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.979687, 38.248413, 15.872302>,  <36.211723, 38.220966, 15.817478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.979687, 38.248413, 15.872302>,  <35.592960, 38.294159, 15.963675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.979687, 38.248413, 15.872302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149108, 0.473452, -0.868107,
		0.207432, 0.873364, 0.440690,
		0.966819, -0.114362, -0.228435,
		36.269733, 38.214104, 15.803772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789894, 38.935505, 15.749245>,  <35.592960, 38.294159, 15.963675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789894, 38.935505, 15.749245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.033085, 38.651325, 15.607469>,  <36.179001, 38.480820, 15.522403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.033085, 38.651325, 15.607469>,  <35.789894, 38.935505, 15.749245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033085, 38.651325, 15.607469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032849, 0.423532, -0.905285,
		0.793274, 0.562036, 0.234160,
		0.607978, -0.710447, -0.354440,
		36.215477, 38.438190, 15.501137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193104, 39.218834, 15.324698>,  <35.789894, 38.935505, 15.749245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193104, 39.218834, 15.324698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.241081, 38.845779, 15.188582>,  <36.269867, 38.621944, 15.106913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.241081, 38.845779, 15.188582>,  <36.193104, 39.218834, 15.324698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241081, 38.845779, 15.188582> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085624, 0.331769, -0.939467,
		0.989081, 0.141821, -0.040063,
		0.119944, -0.932639, -0.340290,
		36.277065, 38.565987, 15.086495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668446, 39.282879, 14.762232>,  <36.193104, 39.218834, 15.324698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.668446, 39.282879, 14.762232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.477802, 38.936733, 14.700289>,  <36.363415, 38.729046, 14.663123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.477802, 38.936733, 14.700289>,  <36.668446, 39.282879, 14.762232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477802, 38.936733, 14.700289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158599, 0.257901, -0.953065,
		0.864690, -0.429681, -0.260165,
		-0.476611, -0.865368, -0.154858,
		36.334820, 38.677124, 14.653831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943760, 39.005035, 14.140460>,  <36.668446, 39.282879, 14.762232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943760, 39.005035, 14.140460> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.579185, 38.849316, 14.193727>,  <36.360439, 38.755886, 14.225688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.579185, 38.849316, 14.193727>,  <36.943760, 39.005035, 14.140460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579185, 38.849316, 14.193727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192641, 0.117774, -0.974176,
		0.363561, -0.913551, -0.182338,
		-0.911434, -0.389298, 0.133170,
		36.305756, 38.732525, 14.233679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.742332, 39.013145, 13.445279>,  <36.943760, 39.005035, 14.140460>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.742332, 39.013145, 13.445279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.419018, 38.834518, 13.598774>,  <36.225029, 38.727341, 13.690871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.419018, 38.834518, 13.598774>,  <36.742332, 39.013145, 13.445279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419018, 38.834518, 13.598774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399387, -0.063042, -0.914612,
		0.432631, -0.892524, -0.127399,
		-0.808282, -0.446571, 0.383737,
		36.176533, 38.700546, 13.713895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542034, 38.317638, 13.005602>,  <36.742332, 39.013145, 13.445279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.542034, 38.317638, 13.005602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.214466, 38.442715, 13.198100>,  <36.017925, 38.517761, 13.313599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.214466, 38.442715, 13.198100>,  <36.542034, 38.317638, 13.005602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.214466, 38.442715, 13.198100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388143, 0.315919, -0.865760,
		-0.422753, -0.895777, -0.137341,
		-0.818917, 0.312695, 0.481246,
		35.968792, 38.536522, 13.342474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902065, 37.999786, 12.699362>,  <36.542034, 38.317638, 13.005602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902065, 37.999786, 12.699362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.817760, 38.356529, 12.859446>,  <35.767178, 38.570576, 12.955496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.817760, 38.356529, 12.859446>,  <35.902065, 37.999786, 12.699362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.817760, 38.356529, 12.859446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499912, 0.253482, -0.828151,
		-0.840039, -0.374617, 0.392425,
		-0.210767, 0.891857, 0.400210,
		35.754532, 38.624088, 12.979508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098381, 38.128639, 12.679949>,  <35.902065, 37.999786, 12.699362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098381, 38.128639, 12.679949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.348850, 38.439953, 12.661288>,  <35.499130, 38.626743, 12.650092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.348850, 38.439953, 12.661288>,  <35.098381, 38.128639, 12.679949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348850, 38.439953, 12.661288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342188, 0.220559, -0.913379,
		-0.700581, 0.587898, 0.404429,
		0.626174, 0.778287, -0.046652,
		35.536701, 38.673439, 12.647293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448627, 37.760643, 12.603059>,  <35.098381, 38.128639, 12.679949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.448627, 37.760643, 12.603059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.105877, 37.962574, 12.561278>,  <33.900227, 38.083733, 12.536210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.105877, 37.962574, 12.561278>,  <34.448627, 37.760643, 12.603059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.105877, 37.962574, 12.561278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032011, 0.150117, 0.988150,
		0.514523, 0.850068, -0.112472,
		-0.856879, 0.504825, -0.104450,
		33.848812, 38.114021, 12.529943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.374508, 38.487995, 12.885493>,  <34.448627, 37.760643, 12.603059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.374508, 38.487995, 12.885493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.023396, 38.297779, 12.908654>,  <33.812729, 38.183647, 12.922551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.023396, 38.297779, 12.908654>,  <34.374508, 38.487995, 12.885493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.023396, 38.297779, 12.908654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026115, 0.168189, 0.985409,
		-0.478344, 0.863464, -0.160053,
		-0.877784, -0.475544, 0.057903,
		33.760059, 38.155117, 12.926025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.989491, 38.801594, 13.428942>,  <34.374508, 38.487995, 12.885493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.989491, 38.801594, 13.428942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.779926, 38.464481, 13.379553>,  <33.654190, 38.262215, 13.349919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.779926, 38.464481, 13.379553>,  <33.989491, 38.801594, 13.428942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.779926, 38.464481, 13.379553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159066, -0.045603, 0.986214,
		-0.836791, 0.536325, -0.110166,
		-0.523907, -0.842779, -0.123471,
		33.622753, 38.211647, 13.342511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.320473, 38.834892, 13.728875>,  <33.989491, 38.801594, 13.428942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.320473, 38.834892, 13.728875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.401501, 38.443935, 13.704623>,  <33.450115, 38.209362, 13.690072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.401501, 38.443935, 13.704623>,  <33.320473, 38.834892, 13.728875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.401501, 38.443935, 13.704623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224687, -0.106651, 0.968577,
		-0.953143, -0.182580, -0.241211,
		0.202568, -0.977389, -0.060630,
		33.462273, 38.150719, 13.686434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.831707, 38.534889, 14.107858>,  <33.320473, 38.834892, 13.728875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.831707, 38.534889, 14.107858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.110592, 38.248158, 14.104925>,  <33.277924, 38.076118, 14.103166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.110592, 38.248158, 14.104925>,  <32.831707, 38.534889, 14.107858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.110592, 38.248158, 14.104925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239495, -0.242556, 0.940111,
		-0.675677, -0.653700, -0.340789,
		0.697211, -0.716828, -0.007331,
		33.319756, 38.033108, 14.102726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.553337, 38.031033, 14.615239>,  <32.831707, 38.534889, 14.107858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.553337, 38.031033, 14.615239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.932110, 37.931973, 14.533276>,  <33.159374, 37.872536, 14.484097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.932110, 37.931973, 14.533276>,  <32.553337, 38.031033, 14.615239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932110, 37.931973, 14.533276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074897, -0.449946, 0.889910,
		-0.312581, -0.858032, -0.407521,
		0.946933, -0.247647, -0.204909,
		33.216190, 37.857677, 14.471803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.661556, 37.336250, 14.909101>,  <32.553337, 38.031033, 14.615239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.661556, 37.336250, 14.909101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.026337, 37.496048, 14.871695>,  <33.245205, 37.591927, 14.849251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.026337, 37.496048, 14.871695>,  <32.661556, 37.336250, 14.909101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.026337, 37.496048, 14.871695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207621, -0.252749, 0.944993,
		0.353880, -0.881207, -0.313438,
		0.911955, 0.399491, -0.093514,
		33.299923, 37.615894, 14.843640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.985973, 36.941597, 15.360055>,  <32.661556, 37.336250, 14.909101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.985973, 36.941597, 15.360055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.238686, 37.245644, 15.299294>,  <33.390312, 37.428070, 15.262838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.238686, 37.245644, 15.299294>,  <32.985973, 36.941597, 15.360055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.238686, 37.245644, 15.299294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345714, -0.100917, 0.932897,
		0.693780, -0.641905, -0.326540,
		0.631785, 0.760115, -0.151902,
		33.428223, 37.473679, 15.253724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747013, 36.716080, 15.547652>,  <32.985973, 36.941597, 15.360055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.747013, 36.716080, 15.547652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.720608, 37.113449, 15.585067>,  <33.704765, 37.351871, 15.607515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.720608, 37.113449, 15.585067>,  <33.747013, 36.716080, 15.547652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.720608, 37.113449, 15.585067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418313, -0.057555, 0.906478,
		0.905901, 0.098966, -0.411763,
		-0.066011, 0.993425, 0.093538,
		33.700806, 37.411476, 15.613128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.364075, 36.816826, 15.775610>,  <33.747013, 36.716080, 15.547652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.364075, 36.816826, 15.775610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.141735, 37.136345, 15.867656>,  <34.008331, 37.328056, 15.922883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.141735, 37.136345, 15.867656>,  <34.364075, 36.816826, 15.775610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.141735, 37.136345, 15.867656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361321, -0.017139, 0.932284,
		0.748650, 0.601355, -0.279096,
		-0.555850, 0.798798, 0.230113,
		33.974979, 37.375984, 15.936689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750317, 37.172684, 16.231714>,  <34.364075, 36.816826, 15.775610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750317, 37.172684, 16.231714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.384422, 37.315937, 16.306547>,  <34.164886, 37.401890, 16.351448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.384422, 37.315937, 16.306547>,  <34.750317, 37.172684, 16.231714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384422, 37.315937, 16.306547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248130, 0.132469, 0.959627,
		0.318894, 0.924224, -0.210038,
		-0.914734, 0.358136, 0.187084,
		34.110001, 37.423378, 16.362673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.821426, 37.765240, 16.652506>,  <34.750317, 37.172684, 16.231714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.821426, 37.765240, 16.652506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.452965, 37.630051, 16.729706>,  <34.231888, 37.548939, 16.776026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.452965, 37.630051, 16.729706>,  <34.821426, 37.765240, 16.652506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452965, 37.630051, 16.729706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203518, 0.004407, 0.979061,
		-0.331746, 0.941146, 0.064724,
		-0.921154, -0.337972, 0.193002,
		34.176617, 37.528660, 16.787607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.536358, 38.220963, 17.239340>,  <34.821426, 37.765240, 16.652506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.536358, 38.220963, 17.239340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.362534, 37.860706, 17.239576>,  <34.258240, 37.644550, 17.239717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.362534, 37.860706, 17.239576>,  <34.536358, 38.220963, 17.239340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.362534, 37.860706, 17.239576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239388, -0.114874, 0.964105,
		-0.868245, 0.419103, 0.265523,
		-0.434561, -0.900642, 0.000590,
		34.232166, 37.590515, 17.239754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.218605, 38.280277, 17.801329>,  <34.536358, 38.220963, 17.239340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.218605, 38.280277, 17.801329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.252869, 37.890827, 17.716743>,  <34.273426, 37.657158, 17.665993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.252869, 37.890827, 17.716743>,  <34.218605, 38.280277, 17.801329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.252869, 37.890827, 17.716743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211056, -0.189695, 0.958891,
		-0.973713, -0.126771, 0.189240,
		0.085662, -0.973625, -0.211464,
		34.278568, 37.598740, 17.653305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999012, 37.949879, 18.478735>,  <34.218605, 38.280277, 17.801329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999012, 37.949879, 18.478735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.149689, 37.660904, 18.246809>,  <34.240093, 37.487518, 18.107655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.149689, 37.660904, 18.246809>,  <33.999012, 37.949879, 18.478735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.149689, 37.660904, 18.246809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350225, -0.468392, 0.811142,
		-0.857583, -0.508613, 0.076578,
		0.376689, -0.722441, -0.579814,
		34.262695, 37.444172, 18.072865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618675, 37.397896, 18.654800>,  <33.999012, 37.949879, 18.478735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618675, 37.397896, 18.654800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.966164, 37.280998, 18.494846>,  <34.174656, 37.210857, 18.398874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.966164, 37.280998, 18.494846>,  <33.618675, 37.397896, 18.654800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.966164, 37.280998, 18.494846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292494, -0.348846, 0.890368,
		-0.399708, -0.890448, -0.217569,
		0.868723, -0.292250, -0.399886,
		34.226780, 37.193325, 18.374880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669243, 36.713982, 18.918970>,  <33.618675, 37.397896, 18.654800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669243, 36.713982, 18.918970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.031002, 36.830753, 18.794491>,  <34.248058, 36.900818, 18.719803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.031002, 36.830753, 18.794491>,  <33.669243, 36.713982, 18.918970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031002, 36.830753, 18.794491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409092, -0.385912, 0.826871,
		0.121292, -0.875128, -0.468443,
		0.904396, 0.291930, -0.311200,
		34.302322, 36.918331, 18.701132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.047501, 36.083466, 18.811684>,  <33.669243, 36.713982, 18.918970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.047501, 36.083466, 18.811684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.313580, 36.379536, 18.850985>,  <34.473228, 36.557178, 18.874565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.313580, 36.379536, 18.850985>,  <34.047501, 36.083466, 18.811684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.313580, 36.379536, 18.850985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427643, -0.485537, 0.762479,
		0.612074, -0.465182, -0.639509,
		0.665197, 0.740175, 0.098253,
		34.513138, 36.601589, 18.880461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.672684, 35.801567, 19.019945>,  <34.047501, 36.083466, 18.811684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.672684, 35.801567, 19.019945> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.685661, 36.175884, 19.160364>,  <34.693447, 36.400475, 19.244616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.685661, 36.175884, 19.160364>,  <34.672684, 35.801567, 19.019945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685661, 36.175884, 19.160364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267303, -0.346562, 0.899135,
		0.963066, 0.064667, -0.261384,
		0.032442, 0.935795, 0.351048,
		34.695393, 36.456623, 19.265678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092411, 35.749519, 19.633705>,  <34.672684, 35.801567, 19.019945>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092411, 35.749519, 19.633705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.955006, 36.123680, 19.667223>,  <34.872562, 36.348175, 19.687334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.955006, 36.123680, 19.667223>,  <35.092411, 35.749519, 19.633705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955006, 36.123680, 19.667223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086844, -0.120480, 0.988910,
		0.935123, 0.332428, 0.122621,
		-0.343515, 0.935402, 0.083794,
		34.851952, 36.404301, 19.692362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521008, 36.187664, 20.094549>,  <35.092411, 35.749519, 19.633705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521008, 36.187664, 20.094549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.148376, 36.332912, 20.101580>,  <34.924797, 36.420063, 20.105799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.148376, 36.332912, 20.101580>,  <35.521008, 36.187664, 20.094549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148376, 36.332912, 20.101580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026574, -0.116232, 0.992867,
		0.362575, 0.924463, 0.117928,
		-0.931576, 0.363122, 0.017576,
		34.868904, 36.441849, 20.106852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.920380, 36.395344, 24.038366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.549946, 36.537392, 23.987360>,  <38.327686, 36.622620, 23.956757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.549946, 36.537392, 23.987360>,  <38.920380, 36.395344, 24.038366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549946, 36.537392, 23.987360> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217144, -0.225211, 0.949804,
		0.308574, 0.907288, 0.285676,
		-0.926084, 0.355118, -0.127518,
		38.272121, 36.643929, 23.949104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.862186, 36.849667, 24.582197>,  <38.920380, 36.395344, 24.038366>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.862186, 36.849667, 24.582197> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.480503, 36.799965, 24.473347>,  <38.251495, 36.770145, 24.408037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.480503, 36.799965, 24.473347>,  <38.862186, 36.849667, 24.582197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.480503, 36.799965, 24.473347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269870, -0.034968, 0.962262,
		-0.129081, 0.991634, -0.000166,
		-0.954206, -0.124255, -0.272126,
		38.194241, 36.762688, 24.391708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.484348, 37.256836, 24.995043>,  <38.862186, 36.849667, 24.582197>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.484348, 37.256836, 24.995043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.213192, 36.997852, 24.855757>,  <38.050499, 36.842461, 24.772184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.213192, 36.997852, 24.855757>,  <38.484348, 37.256836, 24.995043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.213192, 36.997852, 24.855757> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409265, -0.061112, 0.910367,
		-0.610709, 0.759643, -0.223556,
		-0.677892, -0.647463, -0.348217,
		38.009823, 36.803612, 24.751291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915787, 37.439777, 25.360720>,  <38.484348, 37.256836, 24.995043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915787, 37.439777, 25.360720> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.816620, 37.075806, 25.227713>,  <37.757122, 36.857422, 25.147907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.816620, 37.075806, 25.227713>,  <37.915787, 37.439777, 25.360720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816620, 37.075806, 25.227713> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439990, -0.200039, 0.875439,
		-0.863104, 0.363337, -0.350767,
		-0.247913, -0.909929, -0.332519,
		37.742245, 36.802826, 25.127956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180187, 37.435478, 25.376532>,  <37.915787, 37.439777, 25.360720>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.180187, 37.435478, 25.376532> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.304691, 37.055424, 25.384163>,  <37.379395, 36.827393, 25.388741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.304691, 37.055424, 25.384163>,  <37.180187, 37.435478, 25.376532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.304691, 37.055424, 25.384163> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619133, -0.187515, 0.762570,
		-0.720965, -0.249170, -0.646625,
		0.311261, -0.950133, 0.019077,
		37.398071, 36.770386, 25.389887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.619770, 36.980690, 25.385311>,  <37.180187, 37.435478, 25.376532>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.619770, 36.980690, 25.385311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.911678, 36.764812, 25.553196>,  <37.086823, 36.635284, 25.653927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.911678, 36.764812, 25.553196>,  <36.619770, 36.980690, 25.385311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911678, 36.764812, 25.553196> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620253, -0.264377, 0.738506,
		-0.287617, -0.799263, -0.527689,
		0.729769, -0.539707, 0.419706,
		37.130611, 36.602905, 25.679110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.319458, 36.592033, 25.789255>,  <36.619770, 36.980690, 25.385311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.319458, 36.592033, 25.789255> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.668587, 36.465809, 25.938175>,  <36.878063, 36.390072, 26.027527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.668587, 36.465809, 25.938175>,  <36.319458, 36.592033, 25.789255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668587, 36.465809, 25.938175> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453650, -0.243269, 0.857334,
		-0.179975, -0.917191, -0.355485,
		0.872818, -0.315564, 0.372301,
		36.930431, 36.371140, 26.049866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300484, 36.017578, 26.077990>,  <36.319458, 36.592033, 25.789255>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300484, 36.017578, 26.077990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.614277, 36.156971, 26.283184>,  <36.802551, 36.240604, 26.406300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.614277, 36.156971, 26.283184>,  <36.300484, 36.017578, 26.077990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.614277, 36.156971, 26.283184> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444729, -0.260381, 0.856982,
		0.432211, -0.900425, -0.049286,
		0.784480, 0.348478, 0.512985,
		36.849621, 36.261513, 26.437080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384518, 35.539066, 26.659182>,  <36.300484, 36.017578, 26.077990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384518, 35.539066, 26.659182> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.570042, 35.878139, 26.762186>,  <36.681358, 36.081585, 26.823990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.570042, 35.878139, 26.762186>,  <36.384518, 35.539066, 26.659182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.570042, 35.878139, 26.762186> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340261, -0.097930, 0.935218,
		0.817985, -0.521388, 0.243011,
		0.463813, 0.847682, 0.257513,
		36.709187, 36.132442, 26.839439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721294, 35.293659, 27.214470>,  <36.384518, 35.539066, 26.659182>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721294, 35.293659, 27.214470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.719360, 35.691574, 27.255209>,  <36.718201, 35.930325, 27.279652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.719360, 35.691574, 27.255209>,  <36.721294, 35.293659, 27.214470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719360, 35.691574, 27.255209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006690, -0.101812, 0.994781,
		0.999966, 0.005491, -0.006163,
		-0.004835, 0.994789, 0.101846,
		36.717911, 35.990009, 27.285763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137718, 35.429993, 27.812197>,  <36.721294, 35.293659, 27.214470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137718, 35.429993, 27.812197> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.894295, 35.745544, 27.777983>,  <36.748241, 35.934875, 27.757454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.894295, 35.745544, 27.777983>,  <37.137718, 35.429993, 27.812197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.894295, 35.745544, 27.777983> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192357, -0.042084, 0.980422,
		0.769838, 0.613101, 0.177358,
		-0.608562, 0.788883, -0.085536,
		36.711727, 35.982208, 27.752321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402592, 36.012157, 28.248446>,  <37.137718, 35.429993, 27.812197>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.402592, 36.012157, 28.248446> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.015221, 36.084396, 28.179703>,  <36.782799, 36.127739, 28.138456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.015221, 36.084396, 28.179703>,  <37.402592, 36.012157, 28.248446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015221, 36.084396, 28.179703> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161209, 0.072186, 0.984277,
		0.190161, 0.980905, -0.040794,
		-0.968427, 0.180595, -0.171858,
		36.724693, 36.138577, 28.128145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227329, 36.593681, 28.662306>,  <37.402592, 36.012157, 28.248446>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227329, 36.593681, 28.662306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.866467, 36.439766, 28.584269>,  <36.649948, 36.347416, 28.537447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.866467, 36.439766, 28.584269>,  <37.227329, 36.593681, 28.662306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.866467, 36.439766, 28.584269> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264571, 0.136260, 0.954691,
		-0.340769, 0.912893, -0.224731,
		-0.902152, -0.384786, -0.195091,
		36.595821, 36.324329, 28.525742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010792, 37.157665, 29.028482>,  <37.227329, 36.593681, 28.662306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010792, 37.157665, 29.028482> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.693661, 37.279106, 29.239859>,  <36.503384, 37.351971, 29.366684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.693661, 37.279106, 29.239859>,  <37.010792, 37.157665, 29.028482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693661, 37.279106, 29.239859> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335091, 0.507100, -0.794080,
		-0.509055, -0.806646, -0.300310,
		-0.792829, 0.303599, 0.528442,
		36.455811, 37.370186, 29.398392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.285793, 36.920773, 28.698629>,  <37.010792, 37.157665, 29.028482>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.285793, 36.920773, 28.698629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.288422, 37.269897, 28.893833>,  <36.289997, 37.479374, 29.010956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.288422, 37.269897, 28.893833>,  <36.285793, 36.920773, 28.698629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288422, 37.269897, 28.893833> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501544, 0.425076, -0.753501,
		-0.865107, -0.239808, 0.440547,
		0.006570, 0.872813, 0.488011,
		36.290394, 37.531742, 29.040236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542419, 37.204517, 28.763273>,  <36.285793, 36.920773, 28.698629>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.542419, 37.204517, 28.763273> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.803577, 37.505505, 28.797949>,  <35.960274, 37.686096, 28.818754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.803577, 37.505505, 28.797949>,  <35.542419, 37.204517, 28.763273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.803577, 37.505505, 28.797949> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517802, 0.526923, -0.673968,
		-0.552819, 0.395144, 0.733657,
		0.652895, 0.752471, 0.086687,
		35.999447, 37.731247, 28.823956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.149345, 37.833920, 28.992552>,  <35.542419, 37.204517, 28.763273>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.149345, 37.833920, 28.992552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.487255, 37.936382, 28.804619>,  <35.690002, 37.997860, 28.691858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.487255, 37.936382, 28.804619>,  <35.149345, 37.833920, 28.992552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487255, 37.936382, 28.804619> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514002, 0.632661, -0.579259,
		0.148864, 0.730838, 0.666120,
		0.844773, 0.256156, -0.469833,
		35.740688, 38.013229, 28.663670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110649, 38.604973, 28.971716>,  <35.149345, 37.833920, 28.992552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110649, 38.604973, 28.971716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.389355, 38.498272, 28.705376>,  <35.556580, 38.434254, 28.545570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.389355, 38.498272, 28.705376>,  <35.110649, 38.604973, 28.971716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.389355, 38.498272, 28.705376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277201, 0.756025, -0.592946,
		0.661570, 0.597721, 0.452831,
		0.696768, -0.266750, -0.665852,
		35.598385, 38.418247, 28.505619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540600, 39.232601, 28.797939>,  <35.110649, 38.604973, 28.971716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540600, 39.232601, 28.797939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.584591, 38.989460, 28.483381>,  <35.610985, 38.843575, 28.294645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.584591, 38.989460, 28.483381>,  <35.540600, 39.232601, 28.797939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.584591, 38.989460, 28.483381> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405981, 0.694714, -0.593761,
		0.907240, 0.384562, -0.170374,
		0.109976, -0.607853, -0.786397,
		35.617584, 38.807106, 28.247461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771088, 39.649879, 28.215769>,  <35.540600, 39.232601, 28.797939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.771088, 39.649879, 28.215769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.626522, 39.327831, 28.027657>,  <35.539783, 39.134602, 27.914789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.626522, 39.327831, 28.027657>,  <35.771088, 39.649879, 28.215769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.626522, 39.327831, 28.027657> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423296, 0.591079, -0.686620,
		0.830784, -0.049084, -0.554426,
		-0.361412, -0.805119, -0.470282,
		35.518097, 39.086296, 27.886572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841530, 39.808357, 27.536541>,  <35.771088, 39.649879, 28.215769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841530, 39.808357, 27.536541> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.589424, 39.499428, 27.504822>,  <35.438160, 39.314072, 27.485790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.589424, 39.499428, 27.504822>,  <35.841530, 39.808357, 27.536541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.589424, 39.499428, 27.504822> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344335, 0.369609, -0.863031,
		0.695848, -0.516630, -0.498889,
		-0.630262, -0.772323, -0.079298,
		35.400345, 39.267731, 27.481033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864815, 39.709972, 26.859879>,  <35.841530, 39.808357, 27.536541>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864815, 39.709972, 26.859879> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.522610, 39.555149, 26.997450>,  <35.317287, 39.462257, 27.079992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.522610, 39.555149, 26.997450>,  <35.864815, 39.709972, 26.859879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.522610, 39.555149, 26.997450> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464152, 0.278903, -0.840700,
		0.229467, -0.878867, -0.418255,
		-0.855516, -0.387047, 0.343929,
		35.265957, 39.439034, 27.100628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590115, 39.205959, 26.394806>,  <35.864815, 39.709972, 26.859879>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590115, 39.205959, 26.394806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.273064, 39.317276, 26.611805>,  <35.082832, 39.384064, 26.742004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.273064, 39.317276, 26.611805>,  <35.590115, 39.205959, 26.394806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.273064, 39.317276, 26.611805> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521141, 0.152626, -0.839713,
		-0.316483, -0.948293, 0.024054,
		-0.792623, 0.278290, 0.542498,
		35.035278, 39.400764, 26.774555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.065350, 38.869213, 26.058392>,  <35.590115, 39.205959, 26.394806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.065350, 38.869213, 26.058392> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.866566, 39.128632, 26.289013>,  <34.747295, 39.284283, 26.427385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.866566, 39.128632, 26.289013>,  <35.065350, 38.869213, 26.058392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866566, 39.128632, 26.289013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507946, 0.321285, -0.799229,
		-0.703577, -0.690043, 0.169762,
		-0.496961, 0.648549, 0.576554,
		34.717476, 39.323196, 26.461979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448399, 38.583347, 26.057232>,  <35.065350, 38.869213, 26.058392>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.448399, 38.583347, 26.057232> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.428600, 38.979935, 26.105478>,  <34.416721, 39.217888, 26.134426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.428600, 38.979935, 26.105478>,  <34.448399, 38.583347, 26.057232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428600, 38.979935, 26.105478> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616402, 0.064695, -0.784770,
		-0.785875, -0.113192, 0.607938,
		-0.049499, 0.991465, 0.120614,
		34.413750, 39.277374, 26.141663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.800694, 38.690559, 25.701199>,  <34.448399, 38.583347, 26.057232>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.800694, 38.690559, 25.701199> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.965542, 39.051918, 25.748575>,  <34.064449, 39.268734, 25.777000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.965542, 39.051918, 25.748575>,  <33.800694, 38.690559, 25.701199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.965542, 39.051918, 25.748575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483966, 0.327187, -0.811619,
		-0.771969, 0.277161, 0.572055,
		0.412118, 0.903400, 0.118441,
		34.089176, 39.322937, 25.784107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.343716, 39.244442, 25.540674>,  <33.800694, 38.690559, 25.701199>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.343716, 39.244442, 25.540674> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.700603, 39.414356, 25.479364>,  <33.914738, 39.516304, 25.442577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.700603, 39.414356, 25.479364>,  <33.343716, 39.244442, 25.540674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.700603, 39.414356, 25.479364> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261854, 0.210110, -0.941959,
		-0.367928, 0.880573, 0.298697,
		0.892223, 0.424788, -0.153276,
		33.968269, 39.541794, 25.433382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192688, 39.956249, 25.079113>,  <33.343716, 39.244442, 25.540674>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192688, 39.956249, 25.079113> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.575539, 39.841793, 25.061117>,  <33.805248, 39.773121, 25.050320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.575539, 39.841793, 25.061117>,  <33.192688, 39.956249, 25.079113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.575539, 39.841793, 25.061117> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008485, 0.182951, -0.983085,
		0.289532, 0.940559, 0.177536,
		0.957131, -0.286142, -0.044990,
		33.862679, 39.755951, 25.047621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.906204, 40.633358, 25.210707>,  <33.192688, 39.956249, 25.079113>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.906204, 40.633358, 25.210707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.517578, 40.723324, 25.181116>,  <32.284401, 40.777306, 25.163363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.517578, 40.723324, 25.181116>,  <32.906204, 40.633358, 25.210707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.517578, 40.723324, 25.181116> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140211, -0.294780, 0.945222,
		0.190790, 0.928718, 0.317934,
		-0.971566, 0.224917, -0.073975,
		32.226109, 40.790798, 25.158924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.591564, 41.164303, 25.742096>,  <32.906204, 40.633358, 25.210707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.591564, 41.164303, 25.742096> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.292606, 40.927380, 25.621716>,  <32.113232, 40.785225, 25.549488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.292606, 40.927380, 25.621716>,  <32.591564, 41.164303, 25.742096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.292606, 40.927380, 25.621716> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194155, -0.238482, 0.951541,
		-0.635375, 0.769610, 0.063241,
		-0.747397, -0.592307, -0.300949,
		32.068386, 40.749687, 25.531431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.001362, 41.201576, 26.226189>,  <32.591564, 41.164303, 25.742096>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.001362, 41.201576, 26.226189> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.936085, 40.859112, 26.030085>,  <31.896917, 40.653633, 25.912422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.936085, 40.859112, 26.030085>,  <32.001362, 41.201576, 26.226189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.936085, 40.859112, 26.030085> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250511, -0.444678, 0.859945,
		-0.954260, 0.263154, -0.141909,
		-0.163194, -0.856161, -0.490261,
		31.887127, 40.602264, 25.883007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.452707, 40.939369, 26.627478>,  <32.001362, 41.201576, 26.226189>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.452707, 40.939369, 26.627478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.595930, 40.621277, 26.431765>,  <31.681864, 40.430420, 26.314337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.595930, 40.621277, 26.431765>,  <31.452707, 40.939369, 26.627478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.595930, 40.621277, 26.431765> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042475, -0.509611, 0.859356,
		-0.932734, -0.328478, -0.148691,
		0.358055, -0.795235, -0.489284,
		31.703346, 40.382706, 26.284979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.122087, 40.446869, 26.898129>,  <31.452707, 40.939369, 26.627478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.122087, 40.446869, 26.898129> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.402079, 40.232838, 26.708933>,  <31.570074, 40.104420, 26.595415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.402079, 40.232838, 26.708933>,  <31.122087, 40.446869, 26.898129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.402079, 40.232838, 26.708933> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099361, -0.582892, 0.806452,
		-0.707219, -0.611496, -0.354845,
		0.699978, -0.535080, -0.472991,
		31.612072, 40.072315, 26.567036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.960150, 39.712868, 27.020796>,  <31.122087, 40.446869, 26.898129>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.960150, 39.712868, 27.020796> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.341108, 39.725437, 26.899502>,  <31.569683, 39.732979, 26.826725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.341108, 39.725437, 26.899502>,  <30.960150, 39.712868, 27.020796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.341108, 39.725437, 26.899502> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242188, -0.682109, 0.689981,
		-0.185156, -0.730575, -0.657249,
		0.952398, 0.031423, -0.303233,
		31.626827, 39.734863, 26.808533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.183756, 39.057995, 26.875450>,  <30.960150, 39.712868, 27.020796>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.183756, 39.057995, 26.875450> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.524628, 39.251976, 26.954050>,  <31.729151, 39.368366, 27.001209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.524628, 39.251976, 26.954050>,  <31.183756, 39.057995, 26.875450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.524628, 39.251976, 26.954050> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284909, -0.745031, 0.603122,
		0.438886, -0.457982, -0.773066,
		0.852177, 0.484955, 0.196500,
		31.780281, 39.397461, 27.013000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.749887, 38.549747, 26.956318>,  <31.183756, 39.057995, 26.875450>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.749887, 38.549747, 26.956318> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.881403, 38.882648, 27.134871>,  <31.960312, 39.082390, 27.242002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.881403, 38.882648, 27.134871>,  <31.749887, 38.549747, 26.956318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.881403, 38.882648, 27.134871> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262120, -0.534510, 0.803488,
		0.907299, -0.147170, -0.393890,
		0.328787, 0.832250, 0.446384,
		31.980040, 39.132324, 27.268785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.306751, 38.249664, 27.377981>,  <31.749887, 38.549747, 26.956318>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.306751, 38.249664, 27.377981> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.205048, 38.610706, 27.516922>,  <32.144024, 38.827332, 27.600286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.205048, 38.610706, 27.516922>,  <32.306751, 38.249664, 27.377981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.205048, 38.610706, 27.516922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119777, -0.327000, 0.937403,
		0.959690, 0.279950, -0.024968,
		-0.254262, 0.902607, 0.347350,
		32.128769, 38.881489, 27.621126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.916885, 38.508778, 27.756062>,  <32.306751, 38.249664, 27.377981>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.916885, 38.508778, 27.756062> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.572304, 38.657772, 27.894138>,  <32.365555, 38.747169, 27.976984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.572304, 38.657772, 27.894138>,  <32.916885, 38.508778, 27.756062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.572304, 38.657772, 27.894138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234252, -0.311635, 0.920874,
		0.450586, 0.874150, 0.181203,
		-0.861451, 0.372486, 0.345190,
		32.313869, 38.769516, 27.997696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.082531, 38.662197, 28.331673>,  <32.916885, 38.508778, 27.756062>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.082531, 38.662197, 28.331673> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.683010, 38.661049, 28.351210>,  <32.443298, 38.660362, 28.362932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.683010, 38.661049, 28.351210>,  <33.082531, 38.662197, 28.331673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.683010, 38.661049, 28.351210> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042957, -0.529266, 0.847368,
		0.023421, 0.848451, 0.528755,
		-0.998802, -0.002867, 0.048843,
		32.383369, 38.660191, 28.365862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.831730, 38.710075, 29.044674>,  <33.082531, 38.662197, 28.331673>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.831730, 38.710075, 29.044674> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.514099, 38.552433, 28.859581>,  <32.323521, 38.457848, 28.748526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.514099, 38.552433, 28.859581>,  <32.831730, 38.710075, 29.044674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.514099, 38.552433, 28.859581> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101411, -0.664729, 0.740169,
		-0.599294, 0.634680, 0.487882,
		-0.794080, -0.394102, -0.462732,
		32.275875, 38.434204, 28.720762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<33.131115, 42.859116, 22.321402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.824688, 42.627522, 22.209745>,  <32.640831, 42.488567, 22.142752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.824688, 42.627522, 22.209745>,  <33.131115, 42.859116, 22.321402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.824688, 42.627522, 22.209745> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290229, -0.075906, 0.953942,
		-0.573504, 0.811799, -0.109888,
		-0.766068, -0.578983, -0.279140,
		32.594868, 42.453827, 22.126003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.585674, 43.217682, 22.692202>,  <33.131115, 42.859116, 22.321402>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.585674, 43.217682, 22.692202> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.489437, 42.845554, 22.581482>,  <32.431694, 42.622276, 22.515049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.489437, 42.845554, 22.581482>,  <32.585674, 43.217682, 22.692202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.489437, 42.845554, 22.581482> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268586, -0.210231, 0.940034,
		-0.932726, 0.300507, -0.199292,
		-0.240589, -0.930322, -0.276800,
		32.417259, 42.566460, 22.498442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.901482, 43.062756, 23.027670>,  <32.585674, 43.217682, 22.692202>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.901482, 43.062756, 23.027670> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.030422, 42.698006, 22.926018>,  <32.107784, 42.479156, 22.865026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.030422, 42.698006, 22.926018>,  <31.901482, 43.062756, 23.027670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.030422, 42.698006, 22.926018> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399057, -0.374340, 0.837032,
		-0.858396, -0.168405, -0.484557,
		0.322349, -0.911872, -0.254129,
		32.127129, 42.424446, 22.849779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.343088, 42.675625, 23.208651>,  <31.901482, 43.062756, 23.027670>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.343088, 42.675625, 23.208651> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.642870, 42.412739, 23.176687>,  <31.822739, 42.255009, 23.157509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.642870, 42.412739, 23.176687>,  <31.343088, 42.675625, 23.208651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.642870, 42.412739, 23.176687> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307618, -0.452557, 0.836997,
		-0.586250, -0.602710, -0.541342,
		0.749454, -0.657216, -0.079907,
		31.867706, 42.215572, 23.152716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.014532, 42.033859, 23.305450>,  <31.343088, 42.675625, 23.208651>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.014532, 42.033859, 23.305450> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.407467, 41.983910, 23.361198>,  <31.643227, 41.953941, 23.394648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.407467, 41.983910, 23.361198>,  <31.014532, 42.033859, 23.305450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.407467, 41.983910, 23.361198> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183482, -0.496383, 0.848492,
		-0.036772, -0.859076, -0.510526,
		0.982335, -0.124873, 0.139372,
		31.702168, 41.946449, 23.403009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.138735, 41.304939, 23.392067>,  <31.014532, 42.033859, 23.305450>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.138735, 41.304939, 23.392067> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.456553, 41.467270, 23.572735>,  <31.647243, 41.564667, 23.681135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.456553, 41.467270, 23.572735>,  <31.138735, 41.304939, 23.392067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.456553, 41.467270, 23.572735> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091948, -0.654861, 0.750135,
		0.600203, -0.637546, -0.483002,
		0.794545, 0.405822, 0.451671,
		31.694916, 41.589016, 23.708237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.571531, 40.785419, 23.526316>,  <31.138735, 41.304939, 23.392067>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.571531, 40.785419, 23.526316> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.703810, 41.064083, 23.780972>,  <31.783176, 41.231281, 23.933765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.703810, 41.064083, 23.780972>,  <31.571531, 40.785419, 23.526316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.703810, 41.064083, 23.780972> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008391, -0.676737, 0.736177,
		0.943700, -0.238108, -0.229639,
		0.330695, 0.696658, 0.636639,
		31.803019, 41.273079, 23.971964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.049904, 40.405090, 24.005423>,  <31.571531, 40.785419, 23.526316>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.049904, 40.405090, 24.005423> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.020855, 40.761421, 24.184826>,  <32.003426, 40.975220, 24.292467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.020855, 40.761421, 24.184826>,  <32.049904, 40.405090, 24.005423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.020855, 40.761421, 24.184826> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221799, -0.424008, 0.878079,
		0.972384, 0.163246, -0.166792,
		-0.072622, 0.890825, 0.448506,
		31.999069, 41.028667, 24.319378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.672020, 40.498837, 24.340443>,  <32.049904, 40.405090, 24.005423>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.672020, 40.498837, 24.340443> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.380047, 40.702141, 24.523254>,  <32.204865, 40.824123, 24.632940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.380047, 40.702141, 24.523254>,  <32.672020, 40.498837, 24.340443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.380047, 40.702141, 24.523254> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271757, -0.397722, 0.876336,
		0.627175, 0.763865, 0.152188,
		-0.729931, 0.508258, 0.457027,
		32.161068, 40.854618, 24.660362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.463387, 40.370506, 24.425535>,  <32.672020, 40.498837, 24.340443>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.463387, 40.370506, 24.425535> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748913, 40.100933, 24.501728>,  <33.920227, 39.939190, 24.547443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748913, 40.100933, 24.501728>,  <33.463387, 40.370506, 24.425535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.748913, 40.100933, 24.501728> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324250, 0.076950, -0.942836,
		0.620753, 0.734772, 0.273452,
		0.713812, -0.673935, 0.190483,
		33.963055, 39.898754, 24.558872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.055164, 40.637028, 24.370272>,  <33.463387, 40.370506, 24.425535>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.055164, 40.637028, 24.370272> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088047, 40.249252, 24.277803>,  <34.107777, 40.016586, 24.222322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088047, 40.249252, 24.277803>,  <34.055164, 40.637028, 24.370272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.088047, 40.249252, 24.277803> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332691, 0.245344, -0.910562,
		0.939446, -0.002052, 0.342691,
		0.082209, -0.969434, -0.231170,
		34.112709, 39.958424, 24.208452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738426, 40.677895, 24.045561>,  <34.055164, 40.637028, 24.370272>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738426, 40.677895, 24.045561> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.573734, 40.320526, 23.973709>,  <34.474918, 40.106106, 23.930597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.573734, 40.320526, 23.973709>,  <34.738426, 40.677895, 24.045561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.573734, 40.320526, 23.973709> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368952, 0.016811, -0.929296,
		0.833277, -0.448897, 0.322709,
		-0.411733, -0.893425, -0.179629,
		34.450214, 40.052498, 23.919821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251678, 40.328323, 23.687277>,  <34.738426, 40.677895, 24.045561>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251678, 40.328323, 23.687277> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901447, 40.162159, 23.588644>,  <34.691311, 40.062458, 23.529465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901447, 40.162159, 23.588644>,  <35.251678, 40.328323, 23.687277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.901447, 40.162159, 23.588644> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244952, 0.058174, -0.967789,
		0.416378, -0.907770, 0.050821,
		-0.875573, -0.415414, -0.246582,
		34.638775, 40.037537, 23.514669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.376980, 39.696507, 23.226950>,  <35.251678, 40.328323, 23.687277>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.376980, 39.696507, 23.226950> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.017410, 39.844177, 23.132589>,  <34.801670, 39.932781, 23.075974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.017410, 39.844177, 23.132589>,  <35.376980, 39.696507, 23.226950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017410, 39.844177, 23.132589> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204205, -0.123318, -0.971130,
		-0.387609, -0.921142, 0.035466,
		-0.898921, 0.369176, -0.235901,
		34.747734, 39.954929, 23.061819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.188332, 39.296345, 22.747017>,  <35.376980, 39.696507, 23.226950>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.188332, 39.296345, 22.747017> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903549, 39.571281, 22.689484>,  <34.732681, 39.736244, 22.654963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903549, 39.571281, 22.689484>,  <35.188332, 39.296345, 22.747017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903549, 39.571281, 22.689484> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020863, -0.225440, -0.974034,
		-0.701917, -0.690465, 0.174843,
		-0.711953, 0.687338, -0.143835,
		34.689964, 39.777481, 22.646334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.878494, 39.080299, 22.217451>,  <35.188332, 39.296345, 22.747017>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.878494, 39.080299, 22.217451> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.695217, 39.435703, 22.227280>,  <34.585251, 39.648945, 22.233177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.695217, 39.435703, 22.227280>,  <34.878494, 39.080299, 22.217451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.695217, 39.435703, 22.227280> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075766, -0.011498, -0.997059,
		-0.885617, -0.458708, 0.072587,
		-0.458193, 0.888513, 0.024572,
		34.557758, 39.702255, 22.234652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.322197, 39.179291, 21.665678>,  <34.878494, 39.080299, 22.217451>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.322197, 39.179291, 21.665678> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.452133, 39.539894, 21.780056>,  <34.530094, 39.756256, 21.848682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.452133, 39.539894, 21.780056>,  <34.322197, 39.179291, 21.665678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452133, 39.539894, 21.780056> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200453, 0.229847, -0.952360,
		-0.924282, 0.366682, -0.106046,
		0.324839, 0.901507, 0.285947,
		34.549583, 39.810345, 21.865841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.976395, 39.534756, 21.271513>,  <34.322197, 39.179291, 21.665678>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.976395, 39.534756, 21.271513> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270954, 39.782894, 21.379505>,  <34.447689, 39.931778, 21.444300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270954, 39.782894, 21.379505>,  <33.976395, 39.534756, 21.271513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.270954, 39.782894, 21.379505> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197958, 0.184018, -0.962782,
		-0.646940, 0.762435, 0.012708,
		0.736398, 0.620346, 0.269979,
		34.491875, 39.968998, 21.460499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922306, 40.104668, 20.818283>,  <33.976395, 39.534756, 21.271513>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922306, 40.104668, 20.818283> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303192, 40.108337, 20.940403>,  <34.531723, 40.110538, 21.013676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303192, 40.108337, 20.940403>,  <33.922306, 40.104668, 20.818283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.303192, 40.108337, 20.940403> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300628, 0.148548, -0.942102,
		-0.053993, 0.988863, 0.138692,
		0.952212, 0.009172, 0.305300,
		34.588856, 40.111088, 21.031994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.221657, 40.751629, 20.590929>,  <33.922306, 40.104668, 20.818283>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.221657, 40.751629, 20.590929> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.525143, 40.503357, 20.670042>,  <34.707233, 40.354393, 20.717510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.525143, 40.503357, 20.670042>,  <34.221657, 40.751629, 20.590929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525143, 40.503357, 20.670042> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457971, 0.292296, -0.839539,
		0.463270, 0.727548, 0.506019,
		0.758712, -0.620675, 0.197784,
		34.752758, 40.317154, 20.729378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804550, 41.132393, 20.391321>,  <34.221657, 40.751629, 20.590929>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.804550, 41.132393, 20.391321> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.941566, 40.757591, 20.418734>,  <35.023777, 40.532711, 20.435181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.941566, 40.757591, 20.418734>,  <34.804550, 41.132393, 20.391321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.941566, 40.757591, 20.418734> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728490, 0.218836, -0.649163,
		0.593270, 0.272287, 0.757556,
		0.342539, -0.937001, 0.068530,
		35.044327, 40.476490, 20.439293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.459179, 41.211811, 20.348022>,  <34.804550, 41.132393, 20.391321>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.459179, 41.211811, 20.348022> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410957, 40.834263, 20.225014>,  <35.382023, 40.607735, 20.151209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410957, 40.834263, 20.225014>,  <35.459179, 41.211811, 20.348022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410957, 40.834263, 20.225014> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694239, 0.141268, -0.705745,
		0.709577, -0.298573, 0.638243,
		-0.120553, -0.943874, -0.307521,
		35.374790, 40.551102, 20.132757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082420, 40.773129, 20.336933>,  <35.459179, 41.211811, 20.348022>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082420, 40.773129, 20.336933> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.862953, 40.572769, 20.069183>,  <35.731274, 40.452553, 19.908533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.862953, 40.572769, 20.069183>,  <36.082420, 40.773129, 20.336933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.862953, 40.572769, 20.069183> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736157, 0.090050, -0.670793,
		0.396277, -0.860809, 0.319332,
		-0.548669, -0.500899, -0.669375,
		35.698353, 40.422501, 19.868370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<30.830589, 36.690479, 19.011164> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.037479, 36.999924, 19.157589>,  <31.161613, 37.185589, 19.245443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.037479, 36.999924, 19.157589>,  <30.830589, 36.690479, 19.011164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.037479, 36.999924, 19.157589> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016846, -0.436840, 0.899382,
		0.855683, -0.459016, -0.238977,
		0.517225, 0.773612, 0.366064,
		31.192646, 37.232006, 19.267408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.393162, 36.372646, 19.422367>,  <30.830589, 36.690479, 19.011164>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.393162, 36.372646, 19.422367> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.380095, 36.748684, 19.558111>,  <31.372255, 36.974304, 19.639557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.380095, 36.748684, 19.558111>,  <31.393162, 36.372646, 19.422367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.380095, 36.748684, 19.558111> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203693, -0.326151, 0.923111,
		0.978490, 0.099280, -0.180836,
		-0.032666, 0.940090, 0.339358,
		31.370295, 37.030712, 19.659918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.810726, 36.404320, 19.953075>,  <31.393162, 36.372646, 19.422367>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.810726, 36.404320, 19.953075> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.624447, 36.749256, 20.032558>,  <31.512680, 36.956219, 20.080248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.624447, 36.749256, 20.032558>,  <31.810726, 36.404320, 19.953075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.624447, 36.749256, 20.032558> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293630, -0.061248, 0.953955,
		0.834810, 0.502602, -0.224687,
		-0.465698, 0.862346, 0.198709,
		31.484737, 37.007961, 20.092171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.253151, 36.750542, 20.365103>,  <31.810726, 36.404320, 19.953075>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.253151, 36.750542, 20.365103> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.912733, 36.946163, 20.441582>,  <31.708483, 37.063534, 20.487469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.912733, 36.946163, 20.441582>,  <32.253151, 36.750542, 20.365103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.912733, 36.946163, 20.441582> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284992, 0.124366, 0.950428,
		0.441028, 0.863345, -0.245216,
		-0.851043, 0.489049, 0.191197,
		31.657419, 37.092876, 20.498941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.432377, 37.414364, 20.801147>,  <32.253151, 36.750542, 20.365103>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.432377, 37.414364, 20.801147> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.052689, 37.298683, 20.850679>,  <31.824875, 37.229275, 20.880398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.052689, 37.298683, 20.850679>,  <32.432377, 37.414364, 20.801147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.052689, 37.298683, 20.850679> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174211, -0.155453, 0.972361,
		-0.261961, 0.944561, 0.197942,
		-0.949224, -0.289204, 0.123830,
		31.767921, 37.211922, 20.887829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.150028, 37.736057, 21.413572>,  <32.432377, 37.414364, 20.801147>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.150028, 37.736057, 21.413572> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.955898, 37.392868, 21.346228>,  <31.839420, 37.186954, 21.305820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.955898, 37.392868, 21.346228>,  <32.150028, 37.736057, 21.413572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.955898, 37.392868, 21.346228> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139074, -0.265858, 0.953928,
		-0.863204, 0.439547, 0.248348,
		-0.485321, -0.857973, -0.168361,
		31.810303, 37.135475, 21.295719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.807055, 37.731861, 21.969479>,  <32.150028, 37.736057, 21.413572>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.807055, 37.731861, 21.969479> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.737827, 37.361130, 21.836189>,  <31.696291, 37.138691, 21.756216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.737827, 37.361130, 21.836189>,  <31.807055, 37.731861, 21.969479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.737827, 37.361130, 21.836189> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011999, -0.336317, 0.941672,
		-0.984837, 0.166971, 0.047084,
		-0.173067, -0.926829, -0.333221,
		31.685907, 37.083080, 21.736223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.241665, 37.522556, 22.333298>,  <31.807055, 37.731861, 21.969479>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.241665, 37.522556, 22.333298> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.386354, 37.171471, 22.207588>,  <31.473167, 36.960819, 22.132162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.386354, 37.171471, 22.207588>,  <31.241665, 37.522556, 22.333298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.386354, 37.171471, 22.207588> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011464, -0.341264, 0.939898,
		-0.932215, -0.336379, -0.133505,
		0.361723, -0.877717, -0.314275,
		31.494871, 36.908154, 22.113306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.911413, 36.984489, 22.669352>,  <31.241665, 37.522556, 22.333298>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.911413, 36.984489, 22.669352> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.249224, 36.813957, 22.539724>,  <31.451910, 36.711639, 22.461948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.249224, 36.813957, 22.539724>,  <30.911413, 36.984489, 22.669352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.249224, 36.813957, 22.539724> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121671, -0.436565, 0.891407,
		-0.521512, -0.792245, -0.316817,
		0.844524, -0.426332, -0.324067,
		31.502581, 36.686058, 22.442505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.831049, 36.216576, 22.836525>,  <30.911413, 36.984489, 22.669352>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.831049, 36.216576, 22.836525> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.219753, 36.292992, 22.781124>,  <31.452976, 36.338840, 22.747885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.219753, 36.292992, 22.781124>,  <30.831049, 36.216576, 22.836525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.219753, 36.292992, 22.781124> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215355, -0.478130, 0.851478,
		0.096448, -0.857260, -0.505770,
		0.971761, 0.191043, -0.138500,
		31.511282, 36.350304, 22.739574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.129208, 35.557491, 22.946199>,  <30.831049, 36.216576, 22.836525>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.129208, 35.557491, 22.946199> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.395956, 35.851219, 22.996889>,  <31.556005, 36.027454, 23.027304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.395956, 35.851219, 22.996889>,  <31.129208, 35.557491, 22.946199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.395956, 35.851219, 22.996889> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204707, -0.344048, 0.916366,
		0.716504, -0.585156, -0.379756,
		0.666871, 0.734318, 0.126726,
		31.596018, 36.071514, 23.034906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.763891, 35.245770, 23.271748>,  <31.129208, 35.557491, 22.946199>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.763891, 35.245770, 23.271748> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.813017, 35.636662, 23.340960>,  <31.842493, 35.871197, 23.382486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.813017, 35.636662, 23.340960>,  <31.763891, 35.245770, 23.271748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813017, 35.636662, 23.340960> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379801, -0.207358, 0.901529,
		0.916879, -0.045005, -0.396619,
		0.122816, 0.977229, 0.173029,
		31.849861, 35.929829, 23.392868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.425171, 35.273472, 23.435532>,  <31.763891, 35.245770, 23.271748>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.425171, 35.273472, 23.435532> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.215958, 35.578430, 23.587942>,  <32.090427, 35.761406, 23.679388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.215958, 35.578430, 23.587942>,  <32.425171, 35.273472, 23.435532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.215958, 35.578430, 23.587942> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424081, -0.154991, 0.892263,
		0.739316, 0.628272, -0.242253,
		-0.523037, 0.762399, 0.381026,
		32.059048, 35.807148, 23.702250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.884109, 35.525551, 23.985991>,  <32.425171, 35.273472, 23.435532>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.884109, 35.525551, 23.985991> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.513603, 35.652149, 24.067842>,  <32.291302, 35.728107, 24.116953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.513603, 35.652149, 24.067842>,  <32.884109, 35.525551, 23.985991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.513603, 35.652149, 24.067842> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139689, -0.215978, 0.966354,
		0.350039, 0.923681, 0.155841,
		-0.926261, 0.316493, 0.204629,
		32.235725, 35.747097, 24.129230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.543720, 35.884945, 24.007793>,  <32.884109, 35.525551, 23.985991>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.543720, 35.884945, 24.007793> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.878147, 35.669197, 23.967648>,  <34.078804, 35.539749, 23.943560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.878147, 35.669197, 23.967648>,  <33.543720, 35.884945, 24.007793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.878147, 35.669197, 23.967648> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059813, 0.271459, -0.960590,
		0.545360, 0.797112, 0.259219,
		0.836065, -0.539372, -0.100365,
		34.128967, 35.507385, 23.937538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.055767, 36.340118, 23.837587>,  <33.543720, 35.884945, 24.007793>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.055767, 36.340118, 23.837587> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.181355, 35.977913, 23.723413>,  <34.256706, 35.760590, 23.654909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.181355, 35.977913, 23.723413>,  <34.055767, 36.340118, 23.837587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.181355, 35.977913, 23.723413> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117174, 0.335294, -0.934799,
		0.942174, 0.260054, 0.211375,
		0.313971, -0.905511, -0.285434,
		34.275547, 35.706261, 23.637783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654270, 36.551090, 23.396776>,  <34.055767, 36.340118, 23.837587>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654270, 36.551090, 23.396776> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.579079, 36.167831, 23.310415>,  <34.533966, 35.937874, 23.258598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.579079, 36.167831, 23.310415>,  <34.654270, 36.551090, 23.396776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.579079, 36.167831, 23.310415> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150614, 0.189101, -0.970338,
		0.970557, -0.214918, 0.108765,
		-0.187975, -0.958150, -0.215903,
		34.522686, 35.880386, 23.245644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.231548, 36.266655, 23.096037>,  <34.654270, 36.551090, 23.396776>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.231548, 36.266655, 23.096037> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.906380, 36.072884, 22.966742>,  <34.711277, 35.956623, 22.889164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.906380, 36.072884, 22.966742>,  <35.231548, 36.266655, 23.096037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906380, 36.072884, 22.966742> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128060, 0.392760, -0.910681,
		0.568114, -0.781709, -0.257249,
		-0.812925, -0.484427, -0.323239,
		34.662502, 35.927555, 22.869770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.518467, 35.914986, 22.466591>,  <35.231548, 36.266655, 23.096037>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.518467, 35.914986, 22.466591> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.120331, 35.945087, 22.442490>,  <34.881447, 35.963150, 22.428028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.120331, 35.945087, 22.442490>,  <35.518467, 35.914986, 22.466591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120331, 35.945087, 22.442490> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071482, 0.156746, -0.985049,
		-0.064690, -0.984767, -0.161396,
		-0.995342, 0.075259, -0.060253,
		34.821728, 35.967667, 22.424414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418766, 35.597496, 21.885206>,  <35.518467, 35.914986, 22.466591>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418766, 35.597496, 21.885206> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.062820, 35.769707, 21.945580>,  <34.849251, 35.873032, 21.981804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.062820, 35.769707, 21.945580>,  <35.418766, 35.597496, 21.885206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062820, 35.769707, 21.945580> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093032, 0.152644, -0.983893,
		-0.446632, -0.889576, -0.095780,
		-0.889868, 0.430528, 0.150935,
		34.795860, 35.898865, 21.990860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009212, 35.356747, 21.370350>,  <35.418766, 35.597496, 21.885206>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.009212, 35.356747, 21.370350> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.824543, 35.696026, 21.474203>,  <34.713741, 35.899593, 21.536514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.824543, 35.696026, 21.474203>,  <35.009212, 35.356747, 21.370350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824543, 35.696026, 21.474203> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158228, 0.209252, -0.964975,
		-0.872822, -0.486588, 0.037602,
		-0.461677, 0.848202, 0.259632,
		34.686039, 35.950485, 21.552094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.392025, 35.360199, 21.027229>,  <35.009212, 35.356747, 21.370350>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.392025, 35.360199, 21.027229> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.457741, 35.741585, 21.128363>,  <34.497169, 35.970417, 21.189043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.457741, 35.741585, 21.128363>,  <34.392025, 35.360199, 21.027229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.457741, 35.741585, 21.128363> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153077, 0.277853, -0.948349,
		-0.974463, 0.117097, 0.191600,
		0.164286, 0.953460, 0.252833,
		34.507027, 36.027622, 21.204212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.829254, 35.724174, 20.766205>,  <34.392025, 35.360199, 21.027229>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.829254, 35.724174, 20.766205> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.118870, 35.996887, 20.808029>,  <34.292641, 36.160515, 20.833124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.118870, 35.996887, 20.808029>,  <33.829254, 35.724174, 20.766205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.118870, 35.996887, 20.808029> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031041, 0.183645, -0.982502,
		-0.689058, 0.708126, 0.154130,
		0.724041, 0.681786, 0.104561,
		34.336082, 36.201424, 20.839397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.640419, 36.223640, 20.294350>,  <33.829254, 35.724174, 20.766205>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.640419, 36.223640, 20.294350> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.016006, 36.331203, 20.380167>,  <34.241360, 36.395741, 20.431658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.016006, 36.331203, 20.380167>,  <33.640419, 36.223640, 20.294350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016006, 36.331203, 20.380167> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083305, 0.427357, -0.900237,
		-0.333768, 0.863165, 0.378873,
		0.938967, 0.268909, 0.214544,
		34.297695, 36.411877, 20.444530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.765915, 36.991169, 20.177788>,  <33.640419, 36.223640, 20.294350>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.765915, 36.991169, 20.177788> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.104786, 36.779938, 20.154352>,  <34.308109, 36.653198, 20.140291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.104786, 36.779938, 20.154352>,  <33.765915, 36.991169, 20.177788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.104786, 36.779938, 20.154352> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179806, 0.388711, -0.903645,
		0.499968, 0.755009, 0.424257,
		0.847173, -0.528077, -0.058588,
		34.358936, 36.621513, 20.136776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185059, 37.456802, 19.850813>,  <33.765915, 36.991169, 20.177788>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185059, 37.456802, 19.850813> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.338070, 37.092167, 19.790577>,  <34.429874, 36.873386, 19.754435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.338070, 37.092167, 19.790577>,  <34.185059, 37.456802, 19.850813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.338070, 37.092167, 19.790577> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257976, 0.261881, -0.929982,
		0.887199, 0.316893, 0.335345,
		0.382525, -0.911591, -0.150590,
		34.452827, 36.818691, 19.745399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897709, 37.653618, 19.665466>,  <34.185059, 37.456802, 19.850813>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897709, 37.653618, 19.665466> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.777691, 37.293152, 19.540329>,  <34.705681, 37.076870, 19.465246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.777691, 37.293152, 19.540329>,  <34.897709, 37.653618, 19.665466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.777691, 37.293152, 19.540329> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435231, 0.162505, -0.885532,
		0.848852, -0.401855, 0.343458,
		-0.300042, -0.901169, -0.312842,
		34.687679, 37.022800, 19.446476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418961, 37.472839, 19.094429>,  <34.897709, 37.653618, 19.665466>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418961, 37.472839, 19.094429> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.126656, 37.208553, 19.025787>,  <34.951275, 37.049980, 18.984602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.126656, 37.208553, 19.025787>,  <35.418961, 37.472839, 19.094429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126656, 37.208553, 19.025787> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059835, 0.188420, -0.980264,
		0.680009, -0.726604, -0.098156,
		-0.730758, -0.660715, -0.171604,
		34.907429, 37.010338, 18.974306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.168419, 37.535694, 18.887867>,  <35.418961, 37.472839, 19.094429>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.168419, 37.535694, 18.887867> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.503326, 37.718964, 18.768492>,  <36.704269, 37.828926, 18.696867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.503326, 37.718964, 18.768492>,  <36.168419, 37.535694, 18.887867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.503326, 37.718964, 18.768492> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401983, -0.145774, 0.903969,
		0.370670, -0.876828, -0.306229,
		0.837266, 0.458173, -0.298436,
		36.754505, 37.856415, 18.678961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758904, 37.105415, 18.939709>,  <36.168419, 37.535694, 18.887867>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758904, 37.105415, 18.939709> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.877678, 37.487076, 18.954771>,  <36.948944, 37.716072, 18.963808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.877678, 37.487076, 18.954771>,  <36.758904, 37.105415, 18.939709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.877678, 37.487076, 18.954771> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480727, -0.183445, 0.857467,
		0.825064, -0.236512, -0.513159,
		0.296937, 0.954154, 0.037656,
		36.966759, 37.773323, 18.966068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343502, 37.121784, 19.372314>,  <36.758904, 37.105415, 18.939709>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.343502, 37.121784, 19.372314> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.252380, 37.510849, 19.390341>,  <37.197708, 37.744289, 19.401157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.252380, 37.510849, 19.390341>,  <37.343502, 37.121784, 19.372314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252380, 37.510849, 19.390341> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349960, 0.038596, 0.935969,
		0.908644, 0.228988, -0.349186,
		-0.227803, 0.972664, 0.045066,
		37.184040, 37.802647, 19.403860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940178, 37.427063, 19.499514>,  <37.343502, 37.121784, 19.372314>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940178, 37.427063, 19.499514> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.652458, 37.663883, 19.644884>,  <37.479828, 37.805977, 19.732107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.652458, 37.663883, 19.644884>,  <37.940178, 37.427063, 19.499514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.652458, 37.663883, 19.644884> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466939, 0.024693, 0.883945,
		0.514370, 0.805519, -0.294216,
		-0.719299, 0.592055, 0.363427,
		37.436668, 37.841499, 19.753912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348030, 37.911682, 19.858082>,  <37.940178, 37.427063, 19.499514>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348030, 37.911682, 19.858082> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.975887, 37.940723, 20.001841>,  <37.752602, 37.958149, 20.088095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.975887, 37.940723, 20.001841>,  <38.348030, 37.911682, 19.858082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.975887, 37.940723, 20.001841> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351735, -0.100053, 0.930737,
		0.103530, 0.992330, 0.067549,
		-0.930357, 0.072600, 0.359396,
		37.696781, 37.962505, 20.109659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338066, 38.324650, 20.508083>,  <38.348030, 37.911682, 19.858082>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338066, 38.324650, 20.508083> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.015423, 38.088840, 20.525269>,  <37.821838, 37.947353, 20.535580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.015423, 38.088840, 20.525269>,  <38.338066, 38.324650, 20.508083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015423, 38.088840, 20.525269> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142997, -0.124091, 0.981913,
		-0.573533, 0.798160, 0.184393,
		-0.806605, -0.589527, 0.042964,
		37.773441, 37.911983, 20.538158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114460, 38.517017, 21.133547>,  <38.338066, 38.324650, 20.508083>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.114460, 38.517017, 21.133547> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.901646, 38.191250, 21.040895>,  <37.773956, 37.995789, 20.985304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.901646, 38.191250, 21.040895>,  <38.114460, 38.517017, 21.133547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.901646, 38.191250, 21.040895> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025543, -0.288875, 0.957026,
		-0.846334, 0.503259, 0.174495,
		-0.532039, -0.814421, -0.231630,
		37.742035, 37.946922, 20.971407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616211, 38.484451, 21.603432>,  <38.114460, 38.517017, 21.133547>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616211, 38.484451, 21.603432> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.627861, 38.111095, 21.460361>,  <37.634850, 37.887081, 21.374519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.627861, 38.111095, 21.460361>,  <37.616211, 38.484451, 21.603432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627861, 38.111095, 21.460361> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047958, -0.358722, 0.932212,
		-0.998425, -0.009996, -0.055211,
		0.029124, -0.933391, -0.357678,
		37.636597, 37.831078, 21.353058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154621, 38.149811, 22.001705>,  <37.616211, 38.484451, 21.603432>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154621, 38.149811, 22.001705> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.374992, 37.849815, 21.855284>,  <37.507214, 37.669819, 21.767431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.374992, 37.849815, 21.855284>,  <37.154621, 38.149811, 22.001705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374992, 37.849815, 21.855284> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057640, -0.403379, 0.913216,
		-0.832561, -0.524214, -0.179002,
		0.550926, -0.749990, -0.366053,
		37.540272, 37.624817, 21.745468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851879, 37.595146, 22.329826>,  <37.154621, 38.149811, 22.001705>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851879, 37.595146, 22.329826> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.210682, 37.477596, 22.197754>,  <37.425964, 37.407066, 22.118511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.210682, 37.477596, 22.197754>,  <36.851879, 37.595146, 22.329826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210682, 37.477596, 22.197754> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167891, -0.464483, 0.869522,
		-0.408889, -0.835402, -0.367307,
		0.897008, -0.293870, -0.330179,
		37.479782, 37.389435, 22.098700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931618, 36.940578, 22.566126>,  <36.851879, 37.595146, 22.329826>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.931618, 36.940578, 22.566126> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.307091, 37.062042, 22.500797>,  <37.532375, 37.134918, 22.461599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.307091, 37.062042, 22.500797>,  <36.931618, 36.940578, 22.566126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307091, 37.062042, 22.500797> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302792, -0.499417, 0.811726,
		0.164922, -0.811403, -0.560737,
		0.938679, 0.303658, -0.163322,
		37.588696, 37.153141, 22.451801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349529, 36.363541, 22.717152>,  <36.931618, 36.940578, 22.566126>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349529, 36.363541, 22.717152> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.602440, 36.672573, 22.740274>,  <37.754185, 36.857994, 22.754148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.602440, 36.672573, 22.740274>,  <37.349529, 36.363541, 22.717152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602440, 36.672573, 22.740274> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425254, -0.408459, 0.807664,
		0.647599, -0.486084, -0.586803,
		0.632277, 0.772582, 0.057809,
		37.792122, 36.904346, 22.757616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032951, 36.091873, 22.799175>,  <37.349529, 36.363541, 22.717152>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.032951, 36.091873, 22.799175> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.037319, 36.464466, 22.944626>,  <38.039940, 36.688023, 23.031897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.037319, 36.464466, 22.944626>,  <38.032951, 36.091873, 22.799175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.037319, 36.464466, 22.944626> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185625, -0.359217, 0.914607,
		0.982560, 0.057512, -0.176828,
		0.010919, 0.931480, 0.363628,
		38.040596, 36.743912, 23.053715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620899, 36.113091, 23.240107>,  <38.032951, 36.091873, 22.799175>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.620899, 36.113091, 23.240107> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.398060, 36.423065, 23.359518>,  <38.264355, 36.609051, 23.431164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.398060, 36.423065, 23.359518>,  <38.620899, 36.113091, 23.240107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.398060, 36.423065, 23.359518> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096040, -0.296945, 0.950052,
		0.824874, 0.557943, 0.091003,
		-0.557099, 0.774934, 0.298527,
		38.230930, 36.655544, 23.449076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.592678, 39.663963, 19.287081> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.250256, 39.869843, 19.268101>,  <36.044800, 39.993370, 19.256712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.250256, 39.869843, 19.268101>,  <36.592678, 39.663963, 19.287081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.250256, 39.869843, 19.268101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141030, 0.144270, -0.979437,
		-0.497268, -0.845147, -0.196091,
		-0.856058, 0.514697, -0.047451,
		35.993439, 40.024250, 19.253866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210827, 39.380692, 18.676186>,  <36.592678, 39.663963, 19.287081>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210827, 39.380692, 18.676186> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.036560, 39.729832, 18.764126>,  <35.931999, 39.939316, 18.816889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.036560, 39.729832, 18.764126>,  <36.210827, 39.380692, 18.676186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.036560, 39.729832, 18.764126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169460, 0.319416, -0.932340,
		-0.884013, -0.368933, -0.287071,
		-0.435666, 0.872847, 0.219849,
		35.905861, 39.991684, 18.830080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978680, 39.540966, 18.015591>,  <36.210827, 39.380692, 18.676186>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978680, 39.540966, 18.015591> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.931721, 39.882626, 18.218231>,  <35.903545, 40.087620, 18.339815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.931721, 39.882626, 18.218231>,  <35.978680, 39.540966, 18.015591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931721, 39.882626, 18.218231> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020344, 0.512091, -0.858690,
		-0.992876, -0.090504, -0.077496,
		-0.117400, 0.854150, 0.506602,
		35.896500, 40.138870, 18.370213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.392639, 39.823536, 17.602652>,  <35.978680, 39.540966, 18.015591>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.392639, 39.823536, 17.602652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.576283, 40.117035, 17.802986>,  <35.686470, 40.293133, 17.923187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.576283, 40.117035, 17.802986>,  <35.392639, 39.823536, 17.602652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.576283, 40.117035, 17.802986> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037804, 0.579391, -0.814172,
		-0.887575, 0.354861, 0.293743,
		0.459110, 0.733744, 0.500838,
		35.714016, 40.337158, 17.953238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.990589, 40.460659, 17.545376>,  <35.392639, 39.823536, 17.602652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.990589, 40.460659, 17.545376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.371460, 40.540169, 17.638187>,  <35.599983, 40.587875, 17.693874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.371460, 40.540169, 17.638187>,  <34.990589, 40.460659, 17.545376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.371460, 40.540169, 17.638187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078316, 0.575265, -0.814210,
		-0.295325, 0.793447, 0.532189,
		0.952182, 0.198778, 0.232030,
		35.657116, 40.599804, 17.707796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.019188, 41.130043, 17.345499>,  <34.990589, 40.460659, 17.545376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.019188, 41.130043, 17.345499> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.399914, 41.007469, 17.350269>,  <35.628349, 40.933926, 17.353132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.399914, 41.007469, 17.350269>,  <35.019188, 41.130043, 17.345499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.399914, 41.007469, 17.350269> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124667, 0.351107, -0.927999,
		0.280182, 0.884773, 0.372392,
		0.951817, -0.306433, 0.011928,
		35.685459, 40.915539, 17.353848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410175, 41.767464, 17.169479>,  <35.019188, 41.130043, 17.345499>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410175, 41.767464, 17.169479> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.655193, 41.459579, 17.097551>,  <35.802204, 41.274849, 17.054396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.655193, 41.459579, 17.097551>,  <35.410175, 41.767464, 17.169479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.655193, 41.459579, 17.097551> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299522, 0.436557, -0.848354,
		0.731486, 0.465798, 0.497956,
		0.612548, -0.769708, -0.179819,
		35.838959, 41.228668, 17.043606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014683, 42.023388, 16.906103>,  <35.410175, 41.767464, 17.169479>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014683, 42.023388, 16.906103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.045727, 41.642303, 16.788584>,  <36.064354, 41.413654, 16.718073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.045727, 41.642303, 16.788584>,  <36.014683, 42.023388, 16.906103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045727, 41.642303, 16.788584> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330103, 0.302620, -0.894121,
		0.940749, -0.027592, 0.337979,
		0.077609, -0.952712, -0.293798,
		36.069008, 41.356491, 16.700445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.560513, 42.037945, 16.421320>,  <36.014683, 42.023388, 16.906103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.560513, 42.037945, 16.421320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.306488, 41.735939, 16.356028>,  <36.154072, 41.554733, 16.316853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.306488, 41.735939, 16.356028>,  <36.560513, 42.037945, 16.421320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.306488, 41.735939, 16.356028> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034442, 0.238776, -0.970464,
		0.771694, -0.610682, -0.177642,
		-0.635061, -0.755019, -0.163229,
		36.115971, 41.509434, 16.307058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.727932, 41.765598, 15.864322>,  <36.560513, 42.037945, 16.421320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.727932, 41.765598, 15.864322> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.372589, 41.582191, 15.873990>,  <36.159382, 41.472149, 15.879791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.372589, 41.582191, 15.873990>,  <36.727932, 41.765598, 15.864322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.372589, 41.582191, 15.873990> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109451, 0.160345, -0.980974,
		0.445919, -0.874100, -0.192629,
		-0.888356, -0.458518, 0.024170,
		36.106083, 41.444637, 15.881241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.689915, 41.285332, 15.312204>,  <36.727932, 41.765598, 15.864322>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.689915, 41.285332, 15.312204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.300777, 41.334274, 15.390802>,  <36.067295, 41.363640, 15.437961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.300777, 41.334274, 15.390802>,  <36.689915, 41.285332, 15.312204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300777, 41.334274, 15.390802> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175281, 0.165046, -0.970586,
		-0.151184, -0.978667, -0.139117,
		-0.972841, 0.122353, 0.196494,
		36.008926, 41.370979, 15.449751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406097, 40.894737, 14.903781>,  <36.689915, 41.285332, 15.312204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406097, 40.894737, 14.903781> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.142628, 41.176964, 15.008340>,  <35.984547, 41.346298, 15.071075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.142628, 41.176964, 15.008340>,  <36.406097, 40.894737, 14.903781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.142628, 41.176964, 15.008340> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189165, 0.180967, -0.965126,
		-0.728262, -0.685150, 0.014270,
		-0.658673, 0.705563, 0.261398,
		35.945026, 41.388634, 15.086760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824963, 40.756584, 14.493757>,  <36.406097, 40.894737, 14.903781>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.824963, 40.756584, 14.493757> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.800640, 41.138859, 14.608973>,  <35.786049, 41.368225, 14.678102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.800640, 41.138859, 14.608973>,  <35.824963, 40.756584, 14.493757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.800640, 41.138859, 14.608973> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258557, 0.263643, -0.929323,
		-0.964081, -0.130980, 0.231069,
		-0.060803, 0.955686, 0.288039,
		35.782398, 41.425564, 14.695384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.554871, 40.046146, 14.252955>,  <35.824963, 40.756584, 14.493757>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.554871, 40.046146, 14.252955> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.495213, 40.135807, 14.638186>,  <35.459419, 40.189602, 14.869324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.495213, 40.135807, 14.638186>,  <35.554871, 40.046146, 14.252955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.495213, 40.135807, 14.638186> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763730, -0.644753, 0.031787,
		0.628070, -0.730788, 0.267351,
		-0.149146, 0.224149, 0.963075,
		35.450470, 40.203053, 14.927108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.361172, 39.682880, 13.634665>,  <35.554871, 40.046146, 14.252955>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.361172, 39.682880, 13.634665> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.440125, 39.337765, 13.448490>,  <35.487495, 39.130695, 13.336785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.440125, 39.337765, 13.448490>,  <35.361172, 39.682880, 13.634665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.440125, 39.337765, 13.448490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342695, -0.384098, 0.857338,
		-0.918478, -0.328723, 0.219862,
		0.197378, -0.862792, -0.465437,
		35.499336, 39.078926, 13.308859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090012, 39.152691, 14.044005>,  <35.361172, 39.682880, 13.634665>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090012, 39.152691, 14.044005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.350548, 38.954578, 13.814067>,  <35.506870, 38.835712, 13.676104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.350548, 38.954578, 13.814067>,  <35.090012, 39.152691, 14.044005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350548, 38.954578, 13.814067> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341190, -0.485510, 0.804903,
		-0.677748, -0.720400, -0.147248,
		0.651343, -0.495282, -0.574847,
		35.545952, 38.805992, 13.641613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027416, 38.469761, 14.314400>,  <35.090012, 39.152691, 14.044005>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027416, 38.469761, 14.314400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.376652, 38.489876, 14.120412>,  <35.586193, 38.501945, 14.004020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.376652, 38.489876, 14.120412>,  <35.027416, 38.469761, 14.314400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.376652, 38.489876, 14.120412> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437334, -0.520514, 0.733351,
		-0.215552, -0.852371, -0.476447,
		0.873084, 0.050291, -0.484969,
		35.638577, 38.504963, 13.974921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.285534, 37.848000, 14.395224>,  <35.027416, 38.469761, 14.314400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.285534, 37.848000, 14.395224> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.577362, 38.115387, 14.337432>,  <35.752460, 38.275818, 14.302757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.577362, 38.115387, 14.337432>,  <35.285534, 37.848000, 14.395224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577362, 38.115387, 14.337432> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531519, -0.421281, 0.734854,
		0.430359, -0.612923, -0.662658,
		0.729574, 0.668466, -0.144478,
		35.796234, 38.315926, 14.294088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823029, 37.473621, 14.478816>,  <35.285534, 37.848000, 14.395224>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.823029, 37.473621, 14.478816> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.988182, 37.835785, 14.518330>,  <36.087273, 38.053085, 14.542038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.988182, 37.835785, 14.518330>,  <35.823029, 37.473621, 14.478816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.988182, 37.835785, 14.518330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438549, -0.292692, 0.849710,
		0.798250, -0.307509, -0.517914,
		0.412883, 0.905411, 0.098783,
		36.112045, 38.107407, 14.547964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305798, 37.307301, 14.868034>,  <35.823029, 37.473621, 14.478816>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305798, 37.307301, 14.868034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.332417, 37.704205, 14.909955>,  <36.348389, 37.942348, 14.935107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.332417, 37.704205, 14.909955>,  <36.305798, 37.307301, 14.868034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.332417, 37.704205, 14.909955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397463, -0.122705, 0.909377,
		0.915202, -0.018863, -0.402554,
		0.066549, 0.992264, 0.104802,
		36.352383, 38.001884, 14.941396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023186, 37.478893, 15.078505>,  <36.305798, 37.307301, 14.868034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.023186, 37.478893, 15.078505> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.772079, 37.763161, 15.205542>,  <36.621418, 37.933720, 15.281764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.772079, 37.763161, 15.205542>,  <37.023186, 37.478893, 15.078505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.772079, 37.763161, 15.205542> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293213, -0.162060, 0.942212,
		0.721070, 0.684606, -0.106642,
		-0.627762, 0.710669, 0.317592,
		36.583752, 37.976360, 15.300819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468906, 38.022923, 15.461112>,  <37.023186, 37.478893, 15.078505>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468906, 38.022923, 15.461112> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.083546, 38.020790, 15.568319>,  <36.852329, 38.019508, 15.632644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.083546, 38.020790, 15.568319>,  <37.468906, 38.022923, 15.461112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.083546, 38.020790, 15.568319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263235, 0.170215, 0.949597,
		-0.050686, 0.985392, -0.162581,
		-0.963399, -0.005334, 0.268017,
		36.794525, 38.019188, 15.648725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567825, 38.473179, 15.987842>,  <37.468906, 38.022923, 15.461112>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.567825, 38.473179, 15.987842> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.211304, 38.299206, 16.039083>,  <36.997391, 38.194824, 16.069828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.211304, 38.299206, 16.039083>,  <37.567825, 38.473179, 15.987842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211304, 38.299206, 16.039083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035934, 0.213891, 0.976196,
		-0.451979, 0.874692, -0.175014,
		-0.891305, -0.434931, 0.128106,
		36.943913, 38.168728, 16.077515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197189, 38.952396, 16.367073>,  <37.567825, 38.473179, 15.987842>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.197189, 38.952396, 16.367073> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.037060, 38.590214, 16.423496>,  <36.940983, 38.372906, 16.457350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.037060, 38.590214, 16.423496>,  <37.197189, 38.952396, 16.367073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037060, 38.590214, 16.423496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145622, 0.089120, 0.985318,
		-0.904731, 0.414984, 0.096177,
		-0.400320, -0.905453, 0.141060,
		36.916965, 38.318577, 16.465815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758743, 39.038792, 16.866077>,  <37.197189, 38.952396, 16.367073>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758743, 39.038792, 16.866077> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.773270, 38.639061, 16.868494>,  <36.781986, 38.399223, 16.869944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.773270, 38.639061, 16.868494>,  <36.758743, 39.038792, 16.866077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.773270, 38.639061, 16.868494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029835, 0.007128, 0.999530,
		-0.998895, -0.036116, 0.030074,
		0.036313, -0.999322, 0.006042,
		36.784164, 38.339264, 16.870306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304096, 38.962677, 17.444027>,  <36.758743, 39.038792, 16.866077>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304096, 38.962677, 17.444027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.500019, 38.617439, 17.394791>,  <36.617573, 38.410297, 17.365250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.500019, 38.617439, 17.394791>,  <36.304096, 38.962677, 17.444027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.500019, 38.617439, 17.394791> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069702, -0.101966, 0.992343,
		-0.869041, -0.494635, 0.010217,
		0.489806, -0.863099, -0.123090,
		36.646961, 38.358509, 17.357864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.972416, 38.519592, 17.939631>,  <36.304096, 38.962677, 17.444027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.972416, 38.519592, 17.939631> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.333469, 38.363750, 17.866457>,  <36.550102, 38.270245, 17.822552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.333469, 38.363750, 17.866457>,  <35.972416, 38.519592, 17.939631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.333469, 38.363750, 17.866457> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139491, -0.137290, 0.980660,
		-0.407185, -0.910692, -0.069576,
		0.902631, -0.389604, -0.182936,
		36.604259, 38.246868, 17.811577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911854, 37.888756, 18.174320>,  <35.972416, 38.519592, 17.939631>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911854, 37.888756, 18.174320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.301273, 37.976940, 18.198349>,  <36.534924, 38.029850, 18.212767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.301273, 37.976940, 18.198349>,  <35.911854, 37.888756, 18.174320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301273, 37.976940, 18.198349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032077, -0.392160, 0.919338,
		0.226235, -0.893089, -0.388857,
		0.973544, 0.220460, 0.060073,
		36.593338, 38.043079, 18.216372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.475346, 37.288662, 18.317631>,  <35.911854, 37.888756, 18.174320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.475346, 37.288662, 18.317631> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.119633, 37.144375, 18.430098>,  <34.906204, 37.057804, 18.497578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.119633, 37.144375, 18.430098>,  <35.475346, 37.288662, 18.317631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119633, 37.144375, 18.430098> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311921, 0.028747, -0.949673,
		0.334481, -0.932232, -0.138079,
		-0.889285, -0.360717, 0.281168,
		34.852848, 37.036160, 18.514448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334412, 36.798584, 17.853947>,  <35.475346, 37.288662, 18.317631>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.334412, 36.798584, 17.853947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.984756, 36.905048, 18.016451>,  <34.774963, 36.968925, 18.113953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.984756, 36.905048, 18.016451>,  <35.334412, 36.798584, 17.853947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984756, 36.905048, 18.016451> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422719, -0.005043, -0.906247,
		-0.239155, -0.963917, 0.116918,
		-0.874136, 0.266157, 0.406259,
		34.722515, 36.984894, 18.138329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935268, 36.485573, 17.392862>,  <35.334412, 36.798584, 17.853947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935268, 36.485573, 17.392862> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.734798, 36.765400, 17.596601>,  <34.614517, 36.933296, 17.718845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.734798, 36.765400, 17.596601>,  <34.935268, 36.485573, 17.392862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.734798, 36.765400, 17.596601> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486431, 0.259058, -0.834430,
		-0.715688, -0.665957, 0.210456,
		-0.501175, 0.699564, 0.509347,
		34.584446, 36.975269, 17.749405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278080, 36.346169, 17.197998>,  <34.935268, 36.485573, 17.392862>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278080, 36.346169, 17.197998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.284779, 36.713165, 17.356956>,  <34.288795, 36.933365, 17.452332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.284779, 36.713165, 17.356956>,  <34.278080, 36.346169, 17.197998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.284779, 36.713165, 17.356956> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557235, 0.338565, -0.758197,
		-0.830186, -0.208748, 0.516929,
		0.016742, 0.917495, 0.397394,
		34.289803, 36.988415, 17.476175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560242, 36.497997, 17.430645>,  <34.278080, 36.346169, 17.197998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560242, 36.497997, 17.430645> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.758774, 36.836452, 17.352972>,  <33.877895, 37.039524, 17.306368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.758774, 36.836452, 17.352972>,  <33.560242, 36.497997, 17.430645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.758774, 36.836452, 17.352972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686706, 0.245814, -0.684113,
		-0.531120, 0.472894, 0.703053,
		0.496333, 0.846136, -0.194183,
		33.907673, 37.090294, 17.294718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.125477, 36.925564, 17.123676>,  <33.560242, 36.497997, 17.430645>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.125477, 36.925564, 17.123676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.458744, 37.111755, 17.004238>,  <33.658703, 37.223469, 16.932575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.458744, 37.111755, 17.004238>,  <33.125477, 36.925564, 17.123676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.458744, 37.111755, 17.004238> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433454, 0.214354, -0.875311,
		-0.343434, 0.858709, 0.380357,
		0.833169, 0.465479, -0.298594,
		33.708694, 37.251400, 16.914660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.925476, 37.559090, 16.828482>,  <33.125477, 36.925564, 17.123676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.925476, 37.559090, 16.828482> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.286350, 37.494396, 16.668530>,  <33.502876, 37.455582, 16.572557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.286350, 37.494396, 16.668530>,  <32.925476, 37.559090, 16.828482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.286350, 37.494396, 16.668530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345952, 0.282412, -0.894741,
		0.257642, 0.945561, 0.198836,
		0.902185, -0.161735, -0.399880,
		33.557007, 37.445877, 16.548565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785461, 38.325577, 16.932640>,  <32.925476, 37.559090, 16.828482>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.785461, 38.325577, 16.932640> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.428982, 38.505745, 16.954153>,  <32.215096, 38.613846, 16.967062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.428982, 38.505745, 16.954153>,  <32.785461, 38.325577, 16.932640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.428982, 38.505745, 16.954153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122894, -0.353868, 0.927186,
		0.436657, 0.819694, 0.370719,
		-0.891194, 0.450422, 0.053783,
		32.161625, 38.640873, 16.970287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.741520, 38.499058, 17.631773>,  <32.785461, 38.325577, 16.932640>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.741520, 38.499058, 17.631773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.362221, 38.558685, 17.519629>,  <32.134640, 38.594463, 17.452341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.362221, 38.558685, 17.519629>,  <32.741520, 38.499058, 17.631773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.362221, 38.558685, 17.519629> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316760, -0.382673, 0.867885,
		0.022089, 0.911778, 0.410088,
		-0.948248, 0.149070, -0.280363,
		32.077747, 38.603405, 17.435520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.329655, 38.879501, 18.136889>,  <32.741520, 38.499058, 17.631773>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.329655, 38.879501, 18.136889> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.071957, 38.653774, 17.930395>,  <31.917339, 38.518337, 17.806499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.071957, 38.653774, 17.930395>,  <32.329655, 38.879501, 18.136889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.071957, 38.653774, 17.930395> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310701, -0.423661, 0.850868,
		-0.698868, 0.708560, 0.097606,
		-0.644243, -0.564318, -0.516233,
		31.878683, 38.484478, 17.775524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.678171, 38.941227, 18.518091>,  <32.329655, 38.879501, 18.136889>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.678171, 38.941227, 18.518091> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.634310, 38.616985, 18.287996>,  <31.607992, 38.422440, 18.149939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.634310, 38.616985, 18.287996>,  <31.678171, 38.941227, 18.518091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.634310, 38.616985, 18.287996> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377227, -0.501493, 0.778591,
		-0.919606, 0.302372, -0.250790,
		-0.109654, -0.810602, -0.575239,
		31.601414, 38.373806, 18.115425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.092669, 38.685104, 18.726112>,  <31.678171, 38.941227, 18.518091>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.092669, 38.685104, 18.726112> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.228975, 38.359371, 18.538181>,  <31.310759, 38.163933, 18.425423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.228975, 38.359371, 18.538181>,  <31.092669, 38.685104, 18.726112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.228975, 38.359371, 18.538181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364600, -0.575096, 0.732346,
		-0.866572, -0.078258, -0.492878,
		0.340764, -0.814334, -0.469829,
		31.331205, 38.115070, 18.397232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.516062, 38.125809, 18.721973>,  <31.092669, 38.685104, 18.726112>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.516062, 38.125809, 18.721973> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.879412, 37.964005, 18.679581>,  <31.097422, 37.866924, 18.654146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.879412, 37.964005, 18.679581>,  <30.516062, 38.125809, 18.721973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.879412, 37.964005, 18.679581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130052, -0.514162, 0.847776,
		-0.397422, -0.756314, -0.519658,
		0.908373, -0.404507, -0.105979,
		31.151924, 37.842651, 18.647787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.396500, 37.538158, 18.866226>,  <30.516062, 38.125809, 18.721973>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.396500, 37.538158, 18.866226> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.791277, 37.562447, 18.925896>,  <31.028143, 37.577019, 18.961699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.791277, 37.562447, 18.925896>,  <30.396500, 37.538158, 18.866226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.791277, 37.562447, 18.925896> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085171, -0.589349, 0.803377,
		0.136696, -0.805594, -0.576483,
		0.986945, 0.060718, 0.149175,
		31.087360, 37.580662, 18.970648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<33.396107, 42.854313, 15.199131> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.758961, 42.750385, 15.331557>,  <33.976673, 42.688030, 15.411013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.758961, 42.750385, 15.331557>,  <33.396107, 42.854313, 15.199131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.758961, 42.750385, 15.331557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418561, -0.475218, 0.773934,
		-0.043751, -0.840633, -0.539835,
		0.907134, -0.259814, 0.331065,
		34.031101, 42.672440, 15.430877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312977, 42.251579, 15.599944>,  <33.396107, 42.854313, 15.199131>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312977, 42.251579, 15.599944> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.667545, 42.380833, 15.732518>,  <33.880287, 42.458385, 15.812062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.667545, 42.380833, 15.732518>,  <33.312977, 42.251579, 15.599944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.667545, 42.380833, 15.732518> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215607, -0.345375, 0.913362,
		0.409607, -0.881080, -0.236477,
		0.886417, 0.323133, 0.331435,
		33.933472, 42.477772, 15.831948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.552315, 41.748310, 16.004717>,  <33.312977, 42.251579, 15.599944>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.552315, 41.748310, 16.004717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.742905, 42.076740, 16.130449>,  <33.857258, 42.273800, 16.205889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.742905, 42.076740, 16.130449>,  <33.552315, 41.748310, 16.004717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.742905, 42.076740, 16.130449> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219015, -0.235406, 0.946899,
		0.851470, -0.520020, 0.067661,
		0.476478, 0.821074, 0.314333,
		33.885849, 42.323063, 16.224749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018360, 41.548218, 16.482162>,  <33.552315, 41.748310, 16.004717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018360, 41.548218, 16.482162> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.961357, 41.934399, 16.569433>,  <33.927155, 42.166107, 16.621796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.961357, 41.934399, 16.569433>,  <34.018360, 41.548218, 16.482162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.961357, 41.934399, 16.569433> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181579, -0.242187, 0.953087,
		0.972995, 0.096210, 0.209819,
		-0.142512, 0.965448, 0.218177,
		33.918602, 42.224033, 16.634886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.336357, 41.604298, 17.089682>,  <34.018360, 41.548218, 16.482162>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.336357, 41.604298, 17.089682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.102585, 41.928844, 17.085249>,  <33.962322, 42.123573, 17.082588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.102585, 41.928844, 17.085249>,  <34.336357, 41.604298, 17.089682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102585, 41.928844, 17.085249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178920, -0.115530, 0.977057,
		0.791475, 0.573002, 0.212689,
		-0.584428, 0.811370, -0.011083,
		33.927258, 42.172256, 17.081924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523598, 41.912857, 17.671038>,  <34.336357, 41.604298, 17.089682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523598, 41.912857, 17.671038> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.181446, 42.107048, 17.598778>,  <33.976154, 42.223560, 17.555422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.181446, 42.107048, 17.598778>,  <34.523598, 41.912857, 17.671038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.181446, 42.107048, 17.598778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187385, 0.035125, 0.981658,
		0.482914, 0.873546, 0.060925,
		-0.855384, 0.485473, -0.180652,
		33.924831, 42.252689, 17.544582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.481632, 42.560631, 18.048954>,  <34.523598, 41.912857, 17.671038>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.481632, 42.560631, 18.048954> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.101223, 42.477436, 17.957479>,  <33.872978, 42.427517, 17.902596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.101223, 42.477436, 17.957479>,  <34.481632, 42.560631, 18.048954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.101223, 42.477436, 17.957479> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240691, 0.034023, 0.970005,
		-0.193971, 0.977539, -0.082418,
		-0.951022, -0.207990, -0.228685,
		33.815918, 42.415039, 17.888874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039970, 43.039822, 18.427349>,  <34.481632, 42.560631, 18.048954>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039970, 43.039822, 18.427349> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.788151, 42.751266, 18.311926>,  <33.637058, 42.578133, 18.242672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.788151, 42.751266, 18.311926>,  <34.039970, 43.039822, 18.427349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788151, 42.751266, 18.311926> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396355, -0.021252, 0.917851,
		-0.668263, 0.692201, -0.272549,
		-0.629546, -0.721392, -0.288559,
		33.599289, 42.534847, 18.225359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.426212, 43.199726, 18.738111>,  <34.039970, 43.039822, 18.427349>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.426212, 43.199726, 18.738111> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.356625, 42.815189, 18.652739>,  <33.314873, 42.584465, 18.601515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.356625, 42.815189, 18.652739>,  <33.426212, 43.199726, 18.738111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356625, 42.815189, 18.652739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465839, -0.110610, 0.877929,
		-0.867599, 0.252159, -0.428588,
		-0.173971, -0.961343, -0.213431,
		33.304432, 42.526787, 18.588709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.689507, 43.120300, 18.839308>,  <33.426212, 43.199726, 18.738111>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.689507, 43.120300, 18.839308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.866161, 42.762455, 18.866503>,  <32.972153, 42.547749, 18.882820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.866161, 42.762455, 18.866503>,  <32.689507, 43.120300, 18.839308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.866161, 42.762455, 18.866503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559562, -0.215414, 0.800305,
		-0.701320, -0.391485, -0.595727,
		0.441635, -0.894615, 0.067985,
		32.998653, 42.494072, 18.886898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.159428, 42.607323, 18.966412>,  <32.689507, 43.120300, 18.839308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.159428, 42.607323, 18.966412> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.485191, 42.430542, 19.116831>,  <32.680649, 42.324474, 19.207083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.485191, 42.430542, 19.116831>,  <32.159428, 42.607323, 18.966412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.485191, 42.430542, 19.116831> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458898, -0.093877, 0.883515,
		-0.355171, -0.892112, -0.279267,
		0.814411, -0.441954, 0.376046,
		32.729515, 42.297955, 19.229645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.921820, 42.134224, 19.425421>,  <32.159428, 42.607323, 18.966412>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.921820, 42.134224, 19.425421> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.303177, 42.165466, 19.542000>,  <32.531990, 42.184212, 19.611948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.303177, 42.165466, 19.542000>,  <31.921820, 42.134224, 19.425421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.303177, 42.165466, 19.542000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285716, -0.076817, 0.955230,
		0.097001, -0.993981, -0.050919,
		0.953392, 0.078110, 0.291448,
		32.589195, 42.188900, 19.629435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.421841, 41.581081, 19.617411>,  <31.921820, 42.134224, 19.425421>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.421841, 41.581081, 19.617411> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.046480, 41.719299, 19.617962>,  <30.821264, 41.802231, 19.618294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.046480, 41.719299, 19.617962>,  <31.421841, 41.581081, 19.617411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.046480, 41.719299, 19.617962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090673, 0.250093, -0.963967,
		-0.333439, -0.904462, -0.266019,
		-0.938401, 0.345545, 0.001380,
		30.764959, 41.822964, 19.618376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.124388, 41.302803, 19.133480>,  <31.421841, 41.581081, 19.617411>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.124388, 41.302803, 19.133480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.903496, 41.633324, 19.177776>,  <30.770960, 41.831638, 19.204353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.903496, 41.633324, 19.177776>,  <31.124388, 41.302803, 19.133480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.903496, 41.633324, 19.177776> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071308, 0.179159, -0.981232,
		-0.830636, -0.533970, -0.157859,
		-0.552231, 0.826304, 0.110739,
		30.737827, 41.881214, 19.210999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.729488, 41.362827, 18.501657>,  <31.124388, 41.302803, 19.133480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.729488, 41.362827, 18.501657> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.701395, 41.722191, 18.675060>,  <30.684540, 41.937809, 18.779102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.701395, 41.722191, 18.675060>,  <30.729488, 41.362827, 18.501657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.701395, 41.722191, 18.675060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179824, 0.438864, -0.880376,
		-0.981189, 0.016125, -0.192378,
		-0.070232, 0.898409, 0.433508,
		30.680325, 41.991714, 18.805113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.200447, 41.620346, 18.095076>,  <30.729488, 41.362827, 18.501657>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.200447, 41.620346, 18.095076> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.399612, 41.924183, 18.262455>,  <30.519112, 42.106487, 18.362883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.399612, 41.924183, 18.262455>,  <30.200447, 41.620346, 18.095076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.399612, 41.924183, 18.262455> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109563, 0.423551, -0.899222,
		-0.860279, 0.493580, 0.127668,
		0.497912, 0.759594, 0.418451,
		30.548986, 42.152061, 18.387991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.860832, 42.196808, 17.798204>,  <30.200447, 41.620346, 18.095076>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.860832, 42.196808, 17.798204> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.208649, 42.346035, 17.927649>,  <30.417337, 42.435570, 18.005316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.208649, 42.346035, 17.927649>,  <29.860832, 42.196808, 17.798204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.208649, 42.346035, 17.927649> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127680, 0.463171, -0.877024,
		-0.477074, 0.803925, 0.355112,
		0.869539, 0.373065, 0.323612,
		30.469511, 42.457954, 18.024733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.858341, 42.921139, 17.657141>,  <29.860832, 42.196808, 17.798204>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.858341, 42.921139, 17.657141> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.240698, 42.804413, 17.670511>,  <30.470112, 42.734375, 17.678534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.240698, 42.804413, 17.670511>,  <29.858341, 42.921139, 17.657141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.240698, 42.804413, 17.670511> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152468, 0.395700, -0.905635,
		0.251055, 0.870783, 0.422739,
		0.955889, -0.291819, 0.033424,
		30.527464, 42.716866, 17.680538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.129143, 43.454830, 17.238499>,  <29.858341, 42.921139, 17.657141>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.129143, 43.454830, 17.238499> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.418131, 43.181694, 17.281879>,  <30.591524, 43.017811, 17.307907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.418131, 43.181694, 17.281879>,  <30.129143, 43.454830, 17.238499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.418131, 43.181694, 17.281879> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379952, 0.261064, -0.887402,
		0.577644, 0.682328, 0.448059,
		0.722471, -0.682843, 0.108450,
		30.634872, 42.976841, 17.314415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.780315, 43.788677, 17.069977>,  <30.129143, 43.454830, 17.238499>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.780315, 43.788677, 17.069977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.897326, 43.412117, 17.002811>,  <30.967531, 43.186180, 16.962513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.897326, 43.412117, 17.002811>,  <30.780315, 43.788677, 17.069977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.897326, 43.412117, 17.002811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362541, 0.271664, -0.891495,
		0.884869, 0.199910, 0.420765,
		0.292525, -0.941401, -0.167912,
		30.985083, 43.129696, 16.952438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.230797, 43.877930, 16.567749>,  <30.780315, 43.788677, 17.069977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.230797, 43.877930, 16.567749> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.180429, 43.481224, 16.577101>,  <31.150209, 43.243202, 16.582712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.180429, 43.481224, 16.577101>,  <31.230797, 43.877930, 16.567749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.180429, 43.481224, 16.577101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452321, -0.078372, -0.888405,
		0.882922, -0.101292, 0.458464,
		-0.125919, -0.991765, 0.023380,
		31.142654, 43.183693, 16.584114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.838490, 43.561054, 16.509249>,  <31.230797, 43.877930, 16.567749>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.838490, 43.561054, 16.509249> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.565197, 43.309048, 16.361584>,  <31.401222, 43.157845, 16.272985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.565197, 43.309048, 16.361584>,  <31.838490, 43.561054, 16.509249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.565197, 43.309048, 16.361584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501556, -0.037470, -0.864313,
		0.530697, -0.775679, 0.341588,
		-0.683229, -0.630014, -0.369162,
		31.360228, 43.120045, 16.250835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.269604, 43.111961, 16.127409>,  <31.838490, 43.561054, 16.509249>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.269604, 43.111961, 16.127409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.895954, 43.033215, 16.008303>,  <31.671766, 42.985966, 15.936838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.895954, 43.033215, 16.008303>,  <32.269604, 43.111961, 16.127409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.895954, 43.033215, 16.008303> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339586, -0.233017, -0.911254,
		0.110008, -0.952338, 0.284518,
		-0.934120, -0.196864, -0.297767,
		31.615719, 42.974155, 15.918973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.365280, 42.452797, 15.805409>,  <32.269604, 43.111961, 16.127409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.365280, 42.452797, 15.805409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.056355, 42.672928, 15.678490>,  <31.871000, 42.805004, 15.602338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.056355, 42.672928, 15.678490>,  <32.365280, 42.452797, 15.805409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.056355, 42.672928, 15.678490> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408303, 0.047394, -0.911615,
		-0.486645, -0.833605, -0.261302,
		-0.772312, 0.550323, -0.317299,
		31.824661, 42.838024, 15.583300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.212959, 42.209625, 15.131222>,  <32.365280, 42.452797, 15.805409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.212959, 42.209625, 15.131222> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.024441, 42.562290, 15.140586>,  <31.911329, 42.773888, 15.146204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.024441, 42.562290, 15.140586>,  <32.212959, 42.209625, 15.131222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.024441, 42.562290, 15.140586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221031, 0.143767, -0.964612,
		-0.853828, -0.449447, -0.262631,
		-0.471300, 0.881662, 0.023410,
		31.883051, 42.826790, 15.147609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.164845, 41.439384, 14.821940>,  <32.212959, 42.209625, 15.131222>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.164845, 41.439384, 14.821940> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.951164, 41.130264, 14.684882>,  <31.822956, 40.944790, 14.602647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.951164, 41.130264, 14.684882>,  <32.164845, 41.439384, 14.821940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.951164, 41.130264, 14.684882> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450699, -0.603275, 0.657973,
		-0.715194, 0.197057, 0.670571,
		-0.534197, -0.772805, -0.342646,
		31.790905, 40.898422, 14.582088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.931385, 41.229229, 15.419449>,  <32.164845, 41.439384, 14.821940>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.931385, 41.229229, 15.419449> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.880753, 40.927258, 15.162058>,  <31.850372, 40.746075, 15.007624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.880753, 40.927258, 15.162058>,  <31.931385, 41.229229, 15.419449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.880753, 40.927258, 15.162058> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182686, -0.655341, 0.732908,
		-0.974989, -0.024781, 0.220869,
		-0.126582, -0.754926, -0.643477,
		31.842777, 40.700779, 14.969015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.366657, 40.897602, 15.672521>,  <31.931385, 41.229229, 15.419449>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.366657, 40.897602, 15.672521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.592535, 40.636311, 15.470765>,  <31.728062, 40.479534, 15.349711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.592535, 40.636311, 15.470765>,  <31.366657, 40.897602, 15.672521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.592535, 40.636311, 15.470765> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101414, -0.551603, 0.827919,
		-0.819047, -0.518672, -0.245239,
		0.564693, -0.653234, -0.504389,
		31.761944, 40.440342, 15.319448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.049414, 40.186832, 15.877669>,  <31.366657, 40.897602, 15.672521>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.049414, 40.186832, 15.877669> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.412584, 40.119934, 15.723942>,  <31.630486, 40.079796, 15.631705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.412584, 40.119934, 15.723942>,  <31.049414, 40.186832, 15.877669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.412584, 40.119934, 15.723942> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115237, -0.781993, 0.612542,
		-0.402980, -0.600429, -0.690718,
		0.907925, -0.167246, -0.384319,
		31.684961, 40.069759, 15.608646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.028349, 39.506428, 15.625421>,  <31.049414, 40.186832, 15.877669>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.028349, 39.506428, 15.625421> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.409735, 39.611576, 15.684485>,  <31.638567, 39.674664, 15.719924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.409735, 39.611576, 15.684485>,  <31.028349, 39.506428, 15.625421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.409735, 39.611576, 15.684485> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131639, -0.803551, 0.580498,
		0.271251, -0.534046, -0.800761,
		0.953465, 0.262872, 0.147662,
		31.695774, 39.690437, 15.728785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.396650, 38.836945, 15.627151>,  <31.028349, 39.506428, 15.625421>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.396650, 38.836945, 15.627151> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.651436, 39.090080, 15.803237>,  <31.804308, 39.241962, 15.908889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.651436, 39.090080, 15.803237>,  <31.396650, 38.836945, 15.627151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.651436, 39.090080, 15.803237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159807, -0.667038, 0.727683,
		0.754148, -0.393158, -0.526011,
		0.636963, 0.632841, 0.440216,
		31.842525, 39.279934, 15.935302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.961660, 38.376999, 15.756740>,  <31.396650, 38.836945, 15.627151>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.961660, 38.376999, 15.756740> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.014317, 38.696266, 15.991889>,  <32.045910, 38.887825, 16.132978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.014317, 38.696266, 15.991889>,  <31.961660, 38.376999, 15.756740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.014317, 38.696266, 15.991889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164922, -0.602404, 0.780967,
		0.977482, -0.005855, -0.210937,
		0.131642, 0.798170, 0.587874,
		32.053810, 38.935719, 16.168251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.404934, 38.117840, 16.317127>,  <31.961660, 38.376999, 15.756740>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.404934, 38.117840, 16.317127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.239037, 38.461452, 16.437159>,  <32.139496, 38.667622, 16.509178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.239037, 38.461452, 16.437159>,  <32.404934, 38.117840, 16.317127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.239037, 38.461452, 16.437159> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128882, -0.381915, 0.915167,
		0.900763, 0.340889, 0.269112,
		-0.414748, 0.859032, 0.300080,
		32.114613, 38.719162, 16.527184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.142464, 38.349709, 16.234037>,  <32.404934, 38.117840, 16.317127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.142464, 38.349709, 16.234037> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.406155, 38.060730, 16.150612>,  <33.564369, 37.887344, 16.100557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.406155, 38.060730, 16.150612>,  <33.142464, 38.349709, 16.234037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.406155, 38.060730, 16.150612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092008, 0.197784, -0.975918,
		0.746295, 0.662539, 0.063914,
		0.659225, -0.722442, -0.208564,
		33.603924, 37.843998, 16.088043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539829, 38.699924, 15.805003>,  <33.142464, 38.349709, 16.234037>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.539829, 38.699924, 15.805003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.591282, 38.309124, 15.736977>,  <33.622154, 38.074642, 15.696160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.591282, 38.309124, 15.736977>,  <33.539829, 38.699924, 15.805003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.591282, 38.309124, 15.736977> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035823, 0.166802, -0.985339,
		0.991046, 0.132834, -0.013544,
		0.128627, -0.977002, -0.170067,
		33.629871, 38.016022, 15.685957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084358, 38.598320, 15.290649>,  <33.539829, 38.699924, 15.805003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084358, 38.598320, 15.290649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.898907, 38.244736, 15.266469>,  <33.787636, 38.032585, 15.251961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.898907, 38.244736, 15.266469>,  <34.084358, 38.598320, 15.290649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.898907, 38.244736, 15.266469> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051060, 0.094769, -0.994189,
		0.884556, -0.457849, -0.089073,
		-0.463630, -0.883964, -0.060450,
		33.759819, 37.979546, 15.248334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.428799, 38.236443, 14.739305>,  <34.084358, 38.598320, 15.290649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.428799, 38.236443, 14.739305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.076614, 38.048851, 14.767143>,  <33.865303, 37.936295, 14.783846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.076614, 38.048851, 14.767143>,  <34.428799, 38.236443, 14.739305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.076614, 38.048851, 14.767143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068590, -0.019250, -0.997459,
		0.469126, -0.883000, -0.015218,
		-0.880463, -0.468978, 0.069596,
		33.812477, 37.908157, 14.788022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503899, 37.678909, 14.285944>,  <34.428799, 38.236443, 14.739305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503899, 37.678909, 14.285944> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.114887, 37.742577, 14.353893>,  <33.881481, 37.780777, 14.394663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.114887, 37.742577, 14.353893>,  <34.503899, 37.678909, 14.285944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.114887, 37.742577, 14.353893> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188856, -0.112810, -0.975504,
		-0.136118, -0.980783, 0.139773,
		-0.972525, 0.159181, 0.169871,
		33.823128, 37.790329, 14.404855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.156246, 37.080101, 13.974806>,  <34.503899, 37.678909, 14.285944>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.156246, 37.080101, 13.974806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.924580, 37.405594, 13.994453>,  <33.785580, 37.600887, 14.006242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.924580, 37.405594, 13.994453>,  <34.156246, 37.080101, 13.974806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.924580, 37.405594, 13.994453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173995, -0.064527, -0.982630,
		-0.796425, -0.577652, 0.178956,
		-0.579166, 0.813729, 0.049118,
		33.750832, 37.649712, 14.009189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.700424, 36.932522, 13.510448>,  <34.156246, 37.080101, 13.974806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.700424, 36.932522, 13.510448> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.629768, 37.320877, 13.575171>,  <33.587376, 37.553890, 13.614003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.629768, 37.320877, 13.575171>,  <33.700424, 36.932522, 13.510448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.629768, 37.320877, 13.575171> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026764, 0.159591, -0.986820,
		-0.983911, -0.178643, -0.002206,
		-0.176641, 0.970885, 0.161804,
		33.576775, 37.612141, 13.623712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.068245, 37.035263, 13.242864>,  <33.700424, 36.932522, 13.510448>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.068245, 37.035263, 13.242864> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.233334, 37.399422, 13.254435>,  <33.332386, 37.617916, 13.261377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.233334, 37.399422, 13.254435>,  <33.068245, 37.035263, 13.242864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.233334, 37.399422, 13.254435> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264171, 0.150031, -0.952735,
		-0.871708, 0.385572, 0.302421,
		0.412721, 0.910398, 0.028927,
		33.357151, 37.672543, 13.263113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.548782, 37.630547, 13.009082>,  <33.068245, 37.035263, 13.242864>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.548782, 37.630547, 13.009082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.923122, 37.768913, 12.982169>,  <33.147728, 37.851933, 12.966022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.923122, 37.768913, 12.982169>,  <32.548782, 37.630547, 13.009082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.923122, 37.768913, 12.982169> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126463, 0.151461, -0.980340,
		-0.328924, 0.925960, 0.185491,
		0.935851, 0.345915, -0.067281,
		33.203876, 37.872688, 12.961985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.173176, 35.123981, 28.493465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.435600, 35.425861, 28.494814>,  <33.593056, 35.606991, 28.495623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.435600, 35.425861, 28.494814>,  <33.173176, 35.123981, 28.493465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435600, 35.425861, 28.494814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196209, -0.166248, -0.966366,
		-0.728758, 0.634655, -0.257148,
		0.656059, 0.754702, 0.003370,
		33.632420, 35.652271, 28.495825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.093170, 35.599728, 27.884928>,  <33.173176, 35.123981, 28.493465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.093170, 35.599728, 27.884928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.471039, 35.615749, 28.015152>,  <33.697762, 35.625362, 28.093287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.471039, 35.615749, 28.015152>,  <33.093170, 35.599728, 27.884928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.471039, 35.615749, 28.015152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327899, -0.088962, -0.940515,
		-0.008714, 0.995229, -0.097175,
		0.944673, 0.040059, 0.325559,
		33.754440, 35.627766, 28.112820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379559, 36.062649, 27.416086>,  <33.093170, 35.599728, 27.884928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.379559, 36.062649, 27.416086> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.672985, 35.846043, 27.580353>,  <33.849041, 35.716080, 27.678913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.672985, 35.846043, 27.580353>,  <33.379559, 36.062649, 27.416086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672985, 35.846043, 27.580353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483310, -0.009156, -0.875402,
		0.477800, 0.840644, 0.255001,
		0.733566, -0.541511, 0.410666,
		33.893055, 35.683590, 27.703552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923939, 36.343594, 27.185152>,  <33.379559, 36.062649, 27.416086>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923939, 36.343594, 27.185152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.030148, 35.969128, 27.277319>,  <34.093872, 35.744450, 27.332619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.030148, 35.969128, 27.277319>,  <33.923939, 36.343594, 27.185152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.030148, 35.969128, 27.277319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388125, -0.114980, -0.914406,
		0.882530, 0.332223, 0.332820,
		0.265520, -0.936166, 0.230417,
		34.109802, 35.688278, 27.346443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.680504, 36.268364, 27.003130>,  <33.923939, 36.343594, 27.185152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.680504, 36.268364, 27.003130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.501801, 35.910751, 27.016504>,  <34.394577, 35.696182, 27.024529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.501801, 35.910751, 27.016504>,  <34.680504, 36.268364, 27.003130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.501801, 35.910751, 27.016504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270130, -0.170426, -0.947621,
		0.852900, -0.414324, 0.317643,
		-0.446757, -0.894031, 0.033435,
		34.367775, 35.642544, 27.026535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.039692, 35.945763, 26.527882>,  <34.680504, 36.268364, 27.003130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.039692, 35.945763, 26.527882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.755043, 35.671608, 26.589634>,  <34.584251, 35.507114, 26.626686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.755043, 35.671608, 26.589634>,  <35.039692, 35.945763, 26.527882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.755043, 35.671608, 26.589634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290276, -0.486944, -0.823787,
		0.639790, -0.541413, 0.545473,
		-0.711624, -0.685388, 0.154383,
		34.541557, 35.465992, 26.635948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330360, 35.219654, 26.380730>,  <35.039692, 35.945763, 26.527882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.330360, 35.219654, 26.380730> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.934711, 35.219032, 26.321886>,  <34.697323, 35.218658, 26.286579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.934711, 35.219032, 26.321886>,  <35.330360, 35.219654, 26.380730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934711, 35.219032, 26.321886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138801, -0.341270, -0.929661,
		-0.048759, -0.939964, 0.337773,
		-0.989120, -0.001554, -0.147108,
		34.637978, 35.218567, 26.277754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144814, 34.492374, 26.054363>,  <35.330360, 35.219654, 26.380730>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144814, 34.492374, 26.054363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.868259, 34.770088, 25.974403>,  <34.702328, 34.936714, 25.926428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.868259, 34.770088, 25.974403>,  <35.144814, 34.492374, 26.054363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.868259, 34.770088, 25.974403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121296, -0.161213, -0.979437,
		-0.712230, -0.701417, 0.027247,
		-0.691387, 0.694280, -0.199900,
		34.660843, 34.978371, 25.914434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673550, 34.183800, 25.521290>,  <35.144814, 34.492374, 26.054363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.673550, 34.183800, 25.521290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.532681, 34.557964, 25.508747>,  <34.448158, 34.782463, 25.501221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.532681, 34.557964, 25.508747>,  <34.673550, 34.183800, 25.521290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.532681, 34.557964, 25.508747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186331, -0.102909, -0.977083,
		-0.917198, -0.338263, 0.210537,
		-0.352177, 0.935408, -0.031359,
		34.427029, 34.838585, 25.499340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.024368, 34.199715, 25.147015>,  <34.673550, 34.183800, 25.521290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.024368, 34.199715, 25.147015> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.147152, 34.579453, 25.120117>,  <34.220821, 34.807297, 25.103979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.147152, 34.579453, 25.120117>,  <34.024368, 34.199715, 25.147015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147152, 34.579453, 25.120117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191942, -0.007451, -0.981378,
		-0.932166, 0.314152, 0.179931,
		0.306962, 0.949343, -0.067244,
		34.239239, 34.864254, 25.099943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560558, 34.567383, 24.747511>,  <34.024368, 34.199715, 25.147015>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560558, 34.567383, 24.747511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.882473, 34.802368, 24.713549>,  <34.075623, 34.943359, 24.693171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.882473, 34.802368, 24.713549>,  <33.560558, 34.567383, 24.747511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.882473, 34.802368, 24.713549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099698, -0.007227, -0.994992,
		-0.585131, 0.809222, 0.052752,
		0.804787, 0.587459, -0.084906,
		34.123909, 34.978607, 24.688076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.369602, 35.191441, 24.478640>,  <33.560558, 34.567383, 24.747511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.369602, 35.191441, 24.478640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.755894, 35.162746, 24.378870>,  <33.987671, 35.145531, 24.319008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.755894, 35.162746, 24.378870>,  <33.369602, 35.191441, 24.478640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.755894, 35.162746, 24.378870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254167, -0.066963, -0.964839,
		0.052515, 0.995173, -0.082902,
		0.965734, -0.071739, -0.249424,
		34.045612, 35.141224, 24.304043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.956268, 35.870663, 24.612125>,  <33.369602, 35.191441, 24.478640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.956268, 35.870663, 24.612125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.557743, 35.837811, 24.602171>,  <32.318630, 35.818100, 24.596199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.557743, 35.837811, 24.602171>,  <32.956268, 35.870663, 24.612125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.557743, 35.837811, 24.602171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013456, -0.136907, 0.990493,
		-0.084752, 0.987174, 0.135297,
		-0.996311, -0.082126, -0.024887,
		32.258850, 35.813171, 24.594706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.669769, 36.299644, 25.144499>,  <32.956268, 35.870663, 24.612125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.669769, 36.299644, 25.144499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.346054, 36.072403, 25.084743>,  <32.151825, 35.936058, 25.048891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.346054, 36.072403, 25.084743>,  <32.669769, 36.299644, 25.144499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.346054, 36.072403, 25.084743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133441, -0.069867, 0.988591,
		-0.572059, 0.819987, -0.019265,
		-0.809285, -0.568103, -0.149388,
		32.103268, 35.901974, 25.039927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.132675, 36.600948, 25.605831>,  <32.669769, 36.299644, 25.144499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.132675, 36.600948, 25.605831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.015926, 36.224228, 25.539112>,  <31.945877, 35.998196, 25.499081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.015926, 36.224228, 25.539112>,  <32.132675, 36.600948, 25.605831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.015926, 36.224228, 25.539112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310070, -0.071805, 0.947998,
		-0.904804, 0.328411, -0.271067,
		-0.291869, -0.941802, -0.166800,
		31.928366, 35.941689, 25.489073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.464657, 36.527214, 25.982569>,  <32.132675, 36.600948, 25.605831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.464657, 36.527214, 25.982569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.595549, 36.154766, 25.918158>,  <31.674084, 35.931297, 25.879511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.595549, 36.154766, 25.918158>,  <31.464657, 36.527214, 25.982569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.595549, 36.154766, 25.918158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266706, -0.254487, 0.929572,
		-0.906526, -0.261236, -0.331612,
		0.327228, -0.931124, -0.161026,
		31.693718, 35.875427, 25.869850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.937571, 36.069641, 26.257025>,  <31.464657, 36.527214, 25.982569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.937571, 36.069641, 26.257025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.286383, 35.874981, 26.236109>,  <31.495670, 35.758186, 26.223558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.286383, 35.874981, 26.236109>,  <30.937571, 36.069641, 26.257025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.286383, 35.874981, 26.236109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090702, -0.265660, 0.959791,
		-0.480972, -0.832225, -0.275804,
		0.872032, -0.486649, -0.052291,
		31.547993, 35.728985, 26.220421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.794281, 35.371376, 26.387323>,  <30.937571, 36.069641, 26.257025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.794281, 35.371376, 26.387323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.190523, 35.377819, 26.441645>,  <31.428268, 35.381687, 26.474237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.190523, 35.377819, 26.441645>,  <30.794281, 35.371376, 26.387323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.190523, 35.377819, 26.441645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122991, -0.329247, 0.936199,
		0.059798, -0.944106, -0.324172,
		0.990605, 0.016112, 0.135805,
		31.487705, 35.382652, 26.482386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.951824, 34.772522, 26.723417>,  <30.794281, 35.371376, 26.387323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.951824, 34.772522, 26.723417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.246000, 35.031395, 26.803705>,  <31.422506, 35.186718, 26.851879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.246000, 35.031395, 26.803705>,  <30.951824, 34.772522, 26.723417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.246000, 35.031395, 26.803705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036359, -0.258109, 0.965431,
		0.676616, -0.717313, -0.166293,
		0.735438, 0.647180, 0.200721,
		31.466631, 35.225548, 26.863922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.442839, 34.410049, 27.196390>,  <30.951824, 34.772522, 26.723417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.442839, 34.410049, 27.196390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.541317, 34.794804, 27.243994>,  <31.600405, 35.025658, 27.272556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.541317, 34.794804, 27.243994>,  <31.442839, 34.410049, 27.196390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.541317, 34.794804, 27.243994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138356, -0.086651, 0.986585,
		0.959294, -0.259360, 0.111749,
		0.246197, 0.961886, 0.119008,
		31.615175, 35.083370, 27.279696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.981213, 34.402477, 27.722826>,  <31.442839, 34.410049, 27.196390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.981213, 34.402477, 27.722826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.801012, 34.759411, 27.734098>,  <31.692892, 34.973572, 27.740862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.801012, 34.759411, 27.734098>,  <31.981213, 34.402477, 27.722826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.801012, 34.759411, 27.734098> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037755, -0.012498, 0.999209,
		0.891978, 0.451207, -0.028060,
		-0.450500, 0.892332, 0.028183,
		31.665863, 35.027111, 27.742554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.253201, 34.590702, 28.346865>,  <31.981213, 34.402477, 27.722826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.253201, 34.590702, 28.346865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.962486, 34.849461, 28.254505>,  <31.788059, 35.004715, 28.199089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.962486, 34.849461, 28.254505>,  <32.253201, 34.590702, 28.346865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.962486, 34.849461, 28.254505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291049, 0.014451, 0.956599,
		0.622155, 0.762443, 0.177776,
		-0.726783, 0.646894, -0.230899,
		31.744452, 35.043530, 28.185236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.302769, 35.039696, 28.930340>,  <32.253201, 34.590702, 28.346865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.302769, 35.039696, 28.930340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.943624, 35.080494, 28.759016>,  <31.728140, 35.104973, 28.656221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.943624, 35.080494, 28.759016>,  <32.302769, 35.039696, 28.930340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.943624, 35.080494, 28.759016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419766, 0.095243, 0.902622,
		0.132856, 0.990215, -0.042701,
		-0.897856, 0.101994, -0.428312,
		31.674267, 35.111092, 28.630522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.960466, 35.673779, 29.258751>,  <32.302769, 35.039696, 28.930340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.960466, 35.673779, 29.258751> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.667923, 35.454803, 29.096060>,  <31.492397, 35.323418, 28.998446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.667923, 35.454803, 29.096060>,  <31.960466, 35.673779, 29.258751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.667923, 35.454803, 29.096060> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527063, 0.075222, 0.846491,
		-0.432803, 0.833461, -0.343547,
		-0.731359, -0.547435, -0.406730,
		31.448515, 35.290573, 28.974041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.265106, 36.005272, 29.223885>,  <31.960466, 35.673779, 29.258751>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.265106, 36.005272, 29.223885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.194792, 35.611595, 29.232494>,  <31.152603, 35.375389, 29.237659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.194792, 35.611595, 29.232494>,  <31.265106, 36.005272, 29.223885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.194792, 35.611595, 29.232494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585806, 0.122151, 0.801193,
		-0.791158, 0.128231, -0.598018,
		-0.175786, -0.984193, 0.021522,
		31.142056, 35.316338, 29.238951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.556915, 35.988579, 29.577850>,  <31.265106, 36.005272, 29.223885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.556915, 35.988579, 29.577850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.690254, 35.611782, 29.593510>,  <30.770258, 35.385704, 29.602905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.690254, 35.611782, 29.593510>,  <30.556915, 35.988579, 29.577850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.690254, 35.611782, 29.593510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628128, -0.190931, 0.754321,
		-0.703090, -0.276039, -0.655338,
		0.333347, -0.941992, 0.039146,
		30.790258, 35.329185, 29.605253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.038069, 36.181831, 29.004473>,  <30.556915, 35.988579, 29.577850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.038069, 36.181831, 29.004473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.967436, 36.565750, 29.091757>,  <29.925056, 36.796101, 29.144127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.967436, 36.565750, 29.091757>,  <30.038069, 36.181831, 29.004473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.967436, 36.565750, 29.091757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454143, 0.117239, -0.883181,
		-0.873254, -0.255054, 0.415181,
		-0.176583, 0.959793, 0.218210,
		29.914461, 36.853687, 29.157221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.324459, 36.339333, 28.853075>,  <30.038069, 36.181831, 29.004473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.324459, 36.339333, 28.853075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.551353, 36.667904, 28.829407>,  <29.687490, 36.865047, 28.815205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.551353, 36.667904, 28.829407>,  <29.324459, 36.339333, 28.853075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.551353, 36.667904, 28.829407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470768, 0.264456, -0.841689,
		-0.675738, 0.505292, 0.536710,
		0.567235, 0.821427, -0.059172,
		29.721523, 36.914333, 28.811655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.905104, 36.903072, 28.676872>,  <29.324459, 36.339333, 28.853075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.905104, 36.903072, 28.676872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.277815, 37.001427, 28.570044>,  <29.501442, 37.060440, 28.505947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.277815, 37.001427, 28.570044>,  <28.905104, 36.903072, 28.676872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.277815, 37.001427, 28.570044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340899, 0.339737, -0.876565,
		-0.124804, 0.907809, 0.400383,
		0.931779, 0.245889, -0.267071,
		29.557348, 37.075191, 28.489922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.878082, 37.572247, 28.428352>,  <28.905104, 36.903072, 28.676872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.878082, 37.572247, 28.428352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.211721, 37.418457, 28.270130>,  <29.411905, 37.326183, 28.175198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.211721, 37.418457, 28.270130>,  <28.878082, 37.572247, 28.428352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.211721, 37.418457, 28.270130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269610, 0.341448, -0.900402,
		0.481238, 0.857669, 0.181144,
		0.834099, -0.384469, -0.395554,
		29.461950, 37.303116, 28.151464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.212790, 38.124332, 28.098713>,  <28.878082, 37.572247, 28.428352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.212790, 38.124332, 28.098713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.355347, 37.786392, 27.939108>,  <29.440882, 37.583630, 27.843344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.355347, 37.786392, 27.939108>,  <29.212790, 38.124332, 28.098713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.355347, 37.786392, 27.939108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159841, 0.365631, -0.916933,
		0.920562, 0.390568, -0.004733,
		0.356394, -0.844850, -0.399015,
		29.462265, 37.532936, 27.819403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.784565, 38.393360, 27.680450>,  <29.212790, 38.124332, 28.098713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.784565, 38.393360, 27.680450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.705252, 38.026718, 27.541584>,  <29.657663, 37.806732, 27.458263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.705252, 38.026718, 27.541584>,  <29.784565, 38.393360, 27.680450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.705252, 38.026718, 27.541584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080619, 0.337748, -0.937778,
		0.976824, -0.213933, 0.006926,
		-0.198282, -0.916602, -0.347167,
		29.645767, 37.751736, 27.437433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.299622, 38.196793, 27.184900>,  <29.784565, 38.393360, 27.680450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.299622, 38.196793, 27.184900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.979134, 37.982979, 27.077330>,  <29.786840, 37.854691, 27.012787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.979134, 37.982979, 27.077330>,  <30.299622, 38.196793, 27.184900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.979134, 37.982979, 27.077330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038393, 0.402583, -0.914578,
		0.597139, -0.743102, -0.302035,
		-0.801218, -0.534534, -0.268928,
		29.738768, 37.822620, 26.996651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.448265, 38.040005, 26.566103>,  <30.299622, 38.196793, 27.184900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.448265, 38.040005, 26.566103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.057335, 37.955322, 26.567616>,  <29.822777, 37.904514, 26.568523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.057335, 37.955322, 26.567616>,  <30.448265, 38.040005, 26.566103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.057335, 37.955322, 26.567616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065525, 0.285399, -0.956166,
		0.201346, -0.934734, -0.292800,
		-0.977326, -0.211705, 0.003784,
		29.764137, 37.891811, 26.568750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.303493, 37.794163, 25.926163>,  <30.448265, 38.040005, 26.566103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.303493, 37.794163, 25.926163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.933775, 37.899323, 26.036839>,  <29.711945, 37.962418, 26.103245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.933775, 37.899323, 26.036839>,  <30.303493, 37.794163, 25.926163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.933775, 37.899323, 26.036839> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201507, 0.279540, -0.938750,
		-0.324148, -0.923439, -0.205400,
		-0.924296, 0.262904, 0.276692,
		29.656487, 37.978195, 26.119846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.739782, 37.375599, 25.583605>,  <30.303493, 37.794163, 25.926163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.739782, 37.375599, 25.583605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.608639, 37.734356, 25.702328>,  <29.529953, 37.949612, 25.773561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.608639, 37.734356, 25.702328>,  <29.739782, 37.375599, 25.583605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.608639, 37.734356, 25.702328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121041, 0.271703, -0.954739,
		-0.936940, -0.348946, 0.019480,
		-0.327859, 0.896891, 0.296806,
		29.510281, 38.003422, 25.791370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.254934, 37.567238, 25.072094>,  <29.739782, 37.375599, 25.583605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.254934, 37.567238, 25.072094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.294470, 37.909107, 25.275963>,  <29.318192, 38.114227, 25.398285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.294470, 37.909107, 25.275963>,  <29.254934, 37.567238, 25.072094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.294470, 37.909107, 25.275963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303678, 0.513654, -0.802458,
		-0.947634, -0.075463, 0.310314,
		0.098838, 0.854672, 0.509673,
		29.324121, 38.165508, 25.428865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.635210, 38.011127, 24.893978>,  <29.254934, 37.567238, 25.072094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.635210, 38.011127, 24.893978> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.908251, 38.265270, 25.038410>,  <29.072075, 38.417755, 25.125071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.908251, 38.265270, 25.038410>,  <28.635210, 38.011127, 24.893978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.908251, 38.265270, 25.038410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184871, 0.628156, -0.755806,
		-0.707020, 0.449161, 0.546239,
		0.682602, 0.635354, 0.361082,
		29.113031, 38.455875, 25.146734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.315495, 38.675472, 24.963440>,  <28.635210, 38.011127, 24.893978>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.315495, 38.675472, 24.963440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.710649, 38.724937, 24.925938>,  <28.947742, 38.754616, 24.903437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.710649, 38.724937, 24.925938>,  <28.315495, 38.675472, 24.963440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.710649, 38.724937, 24.925938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153897, 0.703032, -0.694306,
		-0.019948, 0.700324, 0.713547,
		0.987885, 0.123663, -0.093754,
		29.007015, 38.762035, 24.897812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.386702, 39.362938, 24.690630>,  <28.315495, 38.675472, 24.963440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.386702, 39.362938, 24.690630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.751703, 39.211868, 24.627773>,  <28.970705, 39.121227, 24.590059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.751703, 39.211868, 24.627773>,  <28.386702, 39.362938, 24.690630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.751703, 39.211868, 24.627773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198502, 0.744712, -0.637182,
		0.357675, 0.550239, 0.754523,
		0.912505, -0.377678, -0.157141,
		29.025455, 39.098564, 24.580631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.875998, 39.984596, 24.737032>,  <28.386702, 39.362938, 24.690630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.875998, 39.984596, 24.737032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.060411, 39.688587, 24.541149>,  <29.171061, 39.510983, 24.423620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.060411, 39.688587, 24.541149>,  <28.875998, 39.984596, 24.737032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.060411, 39.688587, 24.541149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305400, 0.650462, -0.695435,
		0.833173, 0.171064, 0.525889,
		0.461035, -0.740024, -0.489705,
		29.198721, 39.466579, 24.394238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.567417, 40.245296, 24.478939>,  <28.875998, 39.984596, 24.737032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.567417, 40.245296, 24.478939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.505383, 39.924191, 24.248627>,  <29.468163, 39.731529, 24.110439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.505383, 39.924191, 24.248627>,  <29.567417, 40.245296, 24.478939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.505383, 39.924191, 24.248627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442675, 0.464574, -0.766948,
		0.883169, -0.373825, 0.283314,
		-0.155084, -0.802761, -0.575781,
		29.458857, 39.683361, 24.075893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.244394, 40.049530, 24.119690>,  <29.567417, 40.245296, 24.478939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.244394, 40.049530, 24.119690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.964497, 39.868755, 23.898382>,  <29.796558, 39.760292, 23.765596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.964497, 39.868755, 23.898382>,  <30.244394, 40.049530, 24.119690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.964497, 39.868755, 23.898382> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425634, 0.358255, -0.830957,
		0.573753, -0.816949, -0.058326,
		-0.699745, -0.451938, -0.553271,
		29.754574, 39.733173, 23.732401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.672031, 39.698544, 23.579876>,  <30.244394, 40.049530, 24.119690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.672031, 39.698544, 23.579876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.298569, 39.775055, 23.458746>,  <30.074492, 39.820961, 23.386068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.298569, 39.775055, 23.458746>,  <30.672031, 39.698544, 23.579876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.298569, 39.775055, 23.458746> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357594, 0.449684, -0.818481,
		-0.020381, -0.872466, -0.488249,
		-0.933655, 0.191276, -0.302824,
		30.018473, 39.832439, 23.367899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.688639, 39.492222, 22.879398>,  <30.672031, 39.698544, 23.579876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.688639, 39.492222, 22.879398> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.369772, 39.733543, 22.888781>,  <30.178452, 39.878338, 22.894409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.369772, 39.733543, 22.888781>,  <30.688639, 39.492222, 22.879398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.369772, 39.733543, 22.888781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355511, 0.500436, -0.789415,
		-0.487997, -0.620955, -0.613412,
		-0.797164, 0.603306, 0.023455,
		30.130623, 39.914536, 22.895817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.374550, 39.472546, 22.270985>,  <30.688639, 39.492222, 22.879398>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.374550, 39.472546, 22.270985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.229729, 39.819336, 22.407963>,  <30.142836, 40.027412, 22.490149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.229729, 39.819336, 22.407963>,  <30.374550, 39.472546, 22.270985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.229729, 39.819336, 22.407963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260553, 0.446846, -0.855828,
		-0.895003, -0.220629, -0.387675,
		-0.362051, 0.866979, 0.342443,
		30.121113, 40.079430, 22.510696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.902950, 39.716286, 21.700157>,  <30.374550, 39.472546, 22.270985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.902950, 39.716286, 21.700157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.013447, 40.025234, 21.928940>,  <30.079744, 40.210602, 22.066210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.013447, 40.025234, 21.928940>,  <29.902950, 39.716286, 21.700157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.013447, 40.025234, 21.928940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179066, 0.543329, -0.820200,
		-0.944260, 0.328990, 0.011784,
		0.276241, 0.772372, 0.571955,
		30.096319, 40.256947, 22.100527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.526134, 40.164928, 21.352329>,  <29.902950, 39.716286, 21.700157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.526134, 40.164928, 21.352329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.774155, 40.375763, 21.584782>,  <29.922966, 40.502266, 21.724253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.774155, 40.375763, 21.584782>,  <29.526134, 40.164928, 21.352329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.774155, 40.375763, 21.584782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075124, 0.697416, -0.712718,
		-0.780957, 0.485579, 0.392836,
		0.620051, 0.527090, 0.581130,
		29.960171, 40.533890, 21.759121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.294390, 40.851852, 21.323622>,  <29.526134, 40.164928, 21.352329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.294390, 40.851852, 21.323622> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.674572, 40.889690, 21.442072>,  <29.902681, 40.912392, 21.513142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.674572, 40.889690, 21.442072>,  <29.294390, 40.851852, 21.323622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.674572, 40.889690, 21.442072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138704, 0.723465, -0.676284,
		-0.278207, 0.683850, 0.674500,
		0.950454, 0.094591, 0.296125,
		29.959707, 40.918068, 21.530910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.341461, 41.537724, 21.224409>,  <29.294390, 40.851852, 21.323622>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.341461, 41.537724, 21.224409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.720821, 41.416542, 21.261829>,  <29.948437, 41.343834, 21.284283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.720821, 41.416542, 21.261829>,  <29.341461, 41.537724, 21.224409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.720821, 41.416542, 21.261829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284422, 0.682460, -0.673314,
		0.140139, 0.665180, 0.733414,
		0.948401, -0.302957, 0.093552,
		30.005342, 41.325653, 21.289896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.792274, 42.126492, 21.262911>,  <29.341461, 41.537724, 21.224409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.792274, 42.126492, 21.262911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.041945, 41.830109, 21.163803>,  <30.191746, 41.652279, 21.104338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.041945, 41.830109, 21.163803>,  <29.792274, 42.126492, 21.262911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.041945, 41.830109, 21.163803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317817, 0.530505, -0.785847,
		0.713722, 0.411760, 0.566617,
		0.624174, -0.740957, -0.247769,
		30.229197, 41.607822, 21.089472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.389517, 42.434872, 21.087469>,  <29.792274, 42.126492, 21.262911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.389517, 42.434872, 21.087469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.426891, 42.072044, 20.923275>,  <30.449316, 41.854347, 20.824759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.426891, 42.072044, 20.923275>,  <30.389517, 42.434872, 21.087469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.426891, 42.072044, 20.923275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312660, 0.418163, -0.852868,
		0.945258, -0.048653, 0.322676,
		0.093436, -0.907068, -0.410484,
		30.454922, 41.799923, 20.800129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.093472, 42.383854, 20.741892>,  <30.389517, 42.434872, 21.087469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.093472, 42.383854, 20.741892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.848284, 42.110291, 20.583635>,  <30.701170, 41.946152, 20.488682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.848284, 42.110291, 20.583635>,  <31.093472, 42.383854, 20.741892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.848284, 42.110291, 20.583635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137719, 0.400594, -0.905847,
		0.778010, -0.609745, -0.151365,
		-0.612971, -0.683912, -0.395639,
		30.664392, 41.905117, 20.464943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.502588, 41.943531, 20.301741>,  <31.093472, 42.383854, 20.741892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.502588, 41.943531, 20.301741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.117842, 41.930801, 20.193075>,  <30.886993, 41.923164, 20.127876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.117842, 41.930801, 20.193075>,  <31.502588, 41.943531, 20.301741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.117842, 41.930801, 20.193075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214159, 0.530222, -0.820366,
		0.170149, -0.847261, -0.503187,
		-0.961866, -0.031822, -0.271666,
		30.829283, 41.921253, 20.111576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.079369, 41.548225, 19.953979>,  <31.502588, 41.943531, 20.301741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.079369, 41.548225, 19.953979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.400803, 41.776730, 20.020815>,  <32.593662, 41.913834, 20.060917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.400803, 41.776730, 20.020815>,  <32.079369, 41.548225, 19.953979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.400803, 41.776730, 20.020815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235253, 0.046977, 0.970798,
		0.546729, -0.819424, 0.172140,
		0.803582, 0.571260, 0.167088,
		32.641876, 41.948109, 20.070942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.406242, 41.261555, 20.518476>,  <32.079369, 41.548225, 19.953979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.406242, 41.261555, 20.518476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.551807, 41.633949, 20.506920>,  <32.639149, 41.857384, 20.499987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.551807, 41.633949, 20.506920>,  <32.406242, 41.261555, 20.518476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.551807, 41.633949, 20.506920> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196753, 0.107155, 0.974580,
		0.910414, -0.348980, 0.222169,
		0.363915, 0.930984, -0.028892,
		32.660980, 41.913246, 20.498253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.003880, 41.300213, 20.976923>,  <32.406242, 41.261555, 20.518476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.003880, 41.300213, 20.976923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.873230, 41.676067, 20.936131>,  <32.794842, 41.901581, 20.911655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.873230, 41.676067, 20.936131>,  <33.003880, 41.300213, 20.976923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.873230, 41.676067, 20.936131> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204182, 0.035206, 0.978300,
		0.922838, 0.340355, 0.180358,
		-0.326620, 0.939638, -0.101983,
		32.775246, 41.957958, 20.905535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.238098, 41.654057, 21.612240>,  <33.003880, 41.300213, 20.976923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.238098, 41.654057, 21.612240> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.972382, 41.911762, 21.460642>,  <32.812950, 42.066387, 21.369684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.972382, 41.911762, 21.460642>,  <33.238098, 41.654057, 21.612240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.972382, 41.911762, 21.460642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266985, 0.269073, 0.925375,
		0.698166, 0.715905, -0.006733,
		-0.664292, 0.644268, -0.378993,
		32.773094, 42.105042, 21.346945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.344624, 42.229084, 21.941126>,  <33.238098, 41.654057, 21.612240>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.344624, 42.229084, 21.941126> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.962631, 42.237225, 21.822739>,  <32.733437, 42.242111, 21.751707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.962631, 42.237225, 21.822739>,  <33.344624, 42.229084, 21.941126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.962631, 42.237225, 21.822739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291965, 0.112412, 0.949800,
		0.052604, 0.993453, -0.101408,
		-0.954981, 0.020356, -0.295967,
		32.676136, 42.243332, 21.733948>
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
