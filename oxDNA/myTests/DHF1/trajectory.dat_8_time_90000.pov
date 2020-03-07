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
	<3.833065, 5.158082, 0.710324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.210947, 5.136263, 0.580983>,  <4.437676, 5.123171, 0.503379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.210947, 5.136263, 0.580983>,  <3.833065, 5.158082, 0.710324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.210947, 5.136263, 0.580983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261656, 0.468962, -0.843570,
		0.197655, 0.881532, 0.428758,
		0.944705, -0.054549, -0.323351,
		4.494359, 5.119898, 0.483978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.846601, 4.673123, 1.188496>,  <3.833065, 5.158082, 0.710324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.846601, 4.673123, 1.188496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.134483, 4.618466, 1.460775>,  <4.307213, 4.585672, 1.624143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.134483, 4.618466, 1.460775>,  <3.846601, 4.673123, 1.188496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.134483, 4.618466, 1.460775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674275, -0.371218, 0.638397,
		0.165457, -0.918437, -0.359302,
		0.719707, -0.136640, 0.680700,
		4.350395, 4.577474, 1.664985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.922402, 4.015869, 1.341947>,  <3.846601, 4.673123, 1.188496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.922402, 4.015869, 1.341947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.006155, 4.209707, 1.681670>,  <4.056407, 4.326010, 1.885504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.006155, 4.209707, 1.681670>,  <3.922402, 4.015869, 1.341947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.006155, 4.209707, 1.681670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689727, -0.542484, 0.479570,
		0.693134, -0.686206, 0.220652,
		0.209384, 0.484596, 0.849309,
		4.068970, 4.355086, 1.936463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.853710, 3.506840, 1.924850>,  <3.922402, 4.015869, 1.341947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.853710, 3.506840, 1.924850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.826574, 3.874614, 2.079789>,  <3.810293, 4.095278, 2.172752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.826574, 3.874614, 2.079789>,  <3.853710, 3.506840, 1.924850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.826574, 3.874614, 2.079789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799371, -0.282404, 0.530333,
		0.596995, -0.273656, 0.754128,
		-0.067840, 0.919434, 0.387347,
		3.806222, 4.150444, 2.195993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.457650, 2.978013, 2.276863>,  <3.853710, 3.506840, 1.924850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.457650, 2.978013, 2.276863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.317341, 3.108849, 2.627854>,  <3.233155, 3.187350, 2.838449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.317341, 3.108849, 2.627854>,  <3.457650, 2.978013, 2.276863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.317341, 3.108849, 2.627854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172015, 0.943579, -0.282965,
		-0.920526, 0.051683, -0.387247,
		-0.350774, 0.327089, 0.877480,
		3.212109, 3.206975, 2.891098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.095752, 3.582656, 2.242669>,  <3.457650, 2.978013, 2.276863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.095752, 3.582656, 2.242669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.221743, 3.603703, 2.621725>,  <3.297337, 3.616330, 2.849159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.221743, 3.603703, 2.621725>,  <3.095752, 3.582656, 2.242669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.221743, 3.603703, 2.621725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192847, 0.974086, -0.118182,
		-0.929300, 0.219974, 0.296668,
		0.314977, 0.052615, 0.947640,
		3.316236, 3.619487, 2.906017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.842141, 4.182625, 2.749623>,  <3.095752, 3.582656, 2.242669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.842141, 4.182625, 2.749623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.212378, 4.053363, 2.828465>,  <3.434520, 3.975806, 2.875771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.212378, 4.053363, 2.828465>,  <2.842141, 4.182625, 2.749623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.212378, 4.053363, 2.828465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361075, 0.910052, -0.203543,
		-0.113602, 0.259568, 0.959020,
		0.925591, -0.323156, 0.197107,
		3.490055, 3.956416, 2.887598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.228599, 4.673177, 3.127673>,  <2.842141, 4.182625, 2.749623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.228599, 4.673177, 3.127673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.497044, 4.466613, 2.914908>,  <3.658111, 4.342674, 2.787250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.497044, 4.466613, 2.914908>,  <3.228599, 4.673177, 3.127673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.497044, 4.466613, 2.914908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334402, 0.851212, -0.404491,
		0.661652, 0.093587, 0.743948,
		0.671113, -0.516410, -0.531910,
		3.698377, 4.311690, 2.755335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.009137, -0.583432, 2.078592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.227863, -0.348753, 2.317515>,  <0.359099, -0.207945, 2.460869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.227863, -0.348753, 2.317515>,  <0.009137, -0.583432, 2.078592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.227863, -0.348753, 2.317515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403508, 0.440426, -0.802001,
		-0.733603, 0.679566, 0.004094,
		0.546816, 0.586699, 0.597308,
		0.391908, -0.172743, 2.496708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.067162, 0.239680, 1.969315>,  <0.009137, -0.583432, 2.078592>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.067162, 0.239680, 1.969315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.278802, 0.186726, 2.162977>,  <0.486380, 0.154953, 2.279174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.278802, 0.186726, 2.162977>,  <-0.067162, 0.239680, 1.969315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.278802, 0.186726, 2.162977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448702, 0.636218, -0.627609,
		-0.224941, 0.760067, 0.609673,
		0.864909, -0.132387, 0.484155,
		0.538275, 0.147010, 2.308224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.321395, 0.869809, 2.310754>,  <-0.067162, 0.239680, 1.969315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.321395, 0.869809, 2.310754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.545128, 0.595654, 2.124253>,  <0.679368, 0.431160, 2.012352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.545128, 0.595654, 2.124253>,  <0.321395, 0.869809, 2.310754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.545128, 0.595654, 2.124253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467792, 0.725326, -0.505047,
		0.684338, 0.064380, 0.726317,
		0.559332, -0.685388, -0.466252,
		0.712927, 0.390037, 1.984377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.071167, 0.959522, 2.465923>,  <0.321395, 0.869809, 2.310754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.071167, 0.959522, 2.465923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.000546, 0.830657, 2.093893>,  <0.958173, 0.753338, 1.870674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.000546, 0.830657, 2.093893>,  <1.071167, 0.959522, 2.465923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.000546, 0.830657, 2.093893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470008, 0.802638, -0.367239,
		0.864825, -0.501980, 0.009711,
		-0.176553, -0.322162, -0.930076,
		0.947580, 0.734009, 1.814870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.694763, 0.972692, 2.073365>,  <1.071167, 0.959522, 2.465923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.694763, 0.972692, 2.073365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.417044, 1.034123, 1.792121>,  <1.250412, 1.070982, 1.623375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.417044, 1.034123, 1.792121>,  <1.694763, 0.972692, 2.073365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.417044, 1.034123, 1.792121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556043, 0.734718, -0.388593,
		0.456908, -0.660759, -0.595510,
		-0.694299, 0.153578, -0.703110,
		1.208754, 1.080197, 1.581188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.077860, 1.002733, 1.468714>,  <1.694763, 0.972692, 2.073365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.077860, 1.002733, 1.468714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.716317, 1.170806, 1.436493>,  <1.499391, 1.271650, 1.417160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.716317, 1.170806, 1.436493>,  <2.077860, 1.002733, 1.468714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.716317, 1.170806, 1.436493> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426347, 0.868918, -0.251416,
		-0.035647, -0.261588, -0.964521,
		-0.903857, 0.420183, -0.080553,
		1.445160, 1.296861, 1.412327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.091546, 1.379534, 0.830015>,  <2.077860, 1.002733, 1.468714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.091546, 1.379534, 0.830015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.853803, 1.524248, 1.117306>,  <1.711157, 1.611077, 1.289680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.853803, 1.524248, 1.117306>,  <2.091546, 1.379534, 0.830015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.853803, 1.524248, 1.117306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366096, 0.916909, -0.158909,
		-0.716039, 0.168491, -0.677421,
		-0.594358, 0.361786, 0.718226,
		1.675495, 1.632784, 1.332774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.036639, 2.131530, 0.628014>,  <2.091546, 1.379534, 0.830015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.036639, 2.131530, 0.628014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.915536, 2.086992, 1.006630>,  <1.842874, 2.060270, 1.233800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.915536, 2.086992, 1.006630>,  <2.036639, 2.131530, 0.628014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.915536, 2.086992, 1.006630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386150, 0.893652, 0.228636,
		-0.871336, 0.434728, -0.227565,
		-0.302758, -0.111345, 0.946541,
		1.824708, 2.053589, 1.290593>
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
