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
	<23.877470, 35.508724, 35.038826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.264217, 35.415737, 35.081024>,  <24.496265, 35.359947, 35.106342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.264217, 35.415737, 35.081024>,  <23.877470, 35.508724, 35.038826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.264217, 35.415737, 35.081024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216964, 0.530550, -0.819416,
		0.134515, 0.815155, 0.563408,
		0.966867, -0.232463, 0.105492,
		24.554277, 35.345997, 35.112671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.387962, 36.088074, 35.221771>,  <23.877470, 35.508724, 35.038826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.387962, 36.088074, 35.221771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.577671, 35.807571, 35.008862>,  <24.691496, 35.639271, 34.881115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.577671, 35.807571, 35.008862>,  <24.387962, 36.088074, 35.221771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.577671, 35.807571, 35.008862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080278, 0.636524, -0.767068,
		0.876711, 0.321068, 0.358180,
		0.474271, -0.701251, -0.532273,
		24.719952, 35.597195, 34.849178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.006762, 36.342342, 34.771790>,  <24.387962, 36.088074, 35.221771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.006762, 36.342342, 34.771790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.796635, 36.025539, 34.647362>,  <24.670559, 35.835457, 34.572704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.796635, 36.025539, 34.647362>,  <25.006762, 36.342342, 34.771790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.796635, 36.025539, 34.647362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149284, 0.445685, -0.882655,
		0.837710, -0.417235, -0.352359,
		-0.525316, -0.792011, -0.311068,
		24.639040, 35.787937, 34.554043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.285887, 36.456093, 34.085392>,  <25.006762, 36.342342, 34.771790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.285887, 36.456093, 34.085392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.612011, 36.448067, 34.316864>,  <25.807686, 36.443253, 34.455746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.612011, 36.448067, 34.316864>,  <25.285887, 36.456093, 34.085392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.612011, 36.448067, 34.316864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476869, -0.590132, 0.651414,
		0.328428, -0.807057, -0.490707,
		0.815310, -0.020060, 0.578677,
		25.856604, 36.442047, 34.490467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.816961, 36.251888, 33.533543>,  <25.285887, 36.456093, 34.085392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.816961, 36.251888, 33.533543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.204643, 36.284760, 33.440685>,  <26.437252, 36.304482, 33.384972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.204643, 36.284760, 33.440685>,  <25.816961, 36.251888, 33.533543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.204643, 36.284760, 33.440685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194023, -0.835353, 0.514334,
		-0.151653, -0.543536, -0.825573,
		0.969204, 0.082180, -0.232142,
		26.495405, 36.309414, 33.371044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.069374, 35.724545, 33.072456>,  <25.816961, 36.251888, 33.533543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.069374, 35.724545, 33.072456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.354563, 35.854702, 33.320904>,  <26.525675, 35.932796, 33.469975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.354563, 35.854702, 33.320904>,  <26.069374, 35.724545, 33.072456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.354563, 35.854702, 33.320904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029079, -0.871325, 0.489844,
		0.700591, -0.367306, -0.611767,
		0.712971, 0.325390, 0.621123,
		26.568455, 35.952320, 33.507240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.768492, 35.396320, 33.015793>,  <26.069374, 35.724545, 33.072456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.768492, 35.396320, 33.015793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.665903, 35.525211, 33.380295>,  <26.604351, 35.602547, 33.598995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.665903, 35.525211, 33.380295>,  <26.768492, 35.396320, 33.015793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.665903, 35.525211, 33.380295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042593, -0.938110, 0.343709,
		0.965613, 0.126964, 0.226872,
		-0.256470, 0.322226, 0.911259,
		26.588963, 35.621880, 33.653671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.493414, 35.669086, 32.690796>,  <26.768492, 35.396320, 33.015793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.493414, 35.669086, 32.690796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.240133, 35.605415, 32.387821>,  <27.088165, 35.567211, 32.206036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.240133, 35.605415, 32.387821>,  <27.493414, 35.669086, 32.690796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.240133, 35.605415, 32.387821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518909, 0.813413, 0.262855,
		0.574271, 0.559483, -0.597654,
		-0.633203, -0.159178, -0.757441,
		27.050173, 35.557663, 32.160587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.452993, 36.322624, 32.267506>,  <27.493414, 35.669086, 32.690796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.452993, 36.322624, 32.267506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.160839, 36.050102, 32.286942>,  <26.985546, 35.886589, 32.298603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.160839, 36.050102, 32.286942>,  <27.452993, 36.322624, 32.267506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.160839, 36.050102, 32.286942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563416, 0.641158, 0.521037,
		-0.386137, 0.353182, -0.852151,
		-0.730384, -0.681307, 0.048586,
		26.941725, 35.845711, 32.301517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.738565, 36.171558, 31.523914>,  <27.452993, 36.322624, 32.267506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.738565, 36.171558, 31.523914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.073828, 36.361614, 31.416777>,  <28.274984, 36.475647, 31.352493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.073828, 36.361614, 31.416777>,  <27.738565, 36.171558, 31.523914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.073828, 36.361614, 31.416777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425680, 0.876859, 0.223418,
		0.341016, -0.073242, 0.937200,
		0.838156, 0.475136, -0.267845,
		28.325274, 36.504154, 31.336424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.961544, 36.749126, 32.008240>,  <27.738565, 36.171558, 31.523914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.961544, 36.749126, 32.008240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.135544, 36.853695, 31.663582>,  <28.239943, 36.916435, 31.456787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.135544, 36.853695, 31.663582>,  <27.961544, 36.749126, 32.008240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.135544, 36.853695, 31.663582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441536, 0.895909, 0.048913,
		0.784744, 0.359171, 0.505147,
		0.434998, 0.261424, -0.861646,
		28.266043, 36.932121, 31.405088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.132900, 37.475674, 32.034760>,  <27.961544, 36.749126, 32.008240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.132900, 37.475674, 32.034760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.147087, 37.416729, 31.639380>,  <28.155600, 37.381363, 31.402153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.147087, 37.416729, 31.639380>,  <28.132900, 37.475674, 32.034760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.147087, 37.416729, 31.639380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357605, 0.921708, -0.150244,
		0.933199, 0.358802, -0.020010,
		0.035465, -0.147363, -0.988446,
		28.157726, 37.372520, 31.342846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.532286, 38.001575, 31.722681>,  <28.132900, 37.475674, 32.034760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.532286, 38.001575, 31.722681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.313057, 37.869488, 31.415285>,  <28.181520, 37.790237, 31.230848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.313057, 37.869488, 31.415285>,  <28.532286, 38.001575, 31.722681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.313057, 37.869488, 31.415285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261240, 0.940388, -0.217770,
		0.794588, 0.081407, -0.601666,
		-0.548072, -0.330217, -0.768488,
		28.148636, 37.770424, 31.184738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.472454, 38.523926, 31.259556>,  <28.532286, 38.001575, 31.722681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.472454, 38.523926, 31.259556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.181463, 38.293179, 31.110964>,  <28.006868, 38.154728, 31.021809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.181463, 38.293179, 31.110964>,  <28.472454, 38.523926, 31.259556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.181463, 38.293179, 31.110964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472123, 0.813721, -0.339054,
		0.497873, -0.071269, -0.864317,
		-0.727477, -0.576870, -0.371482,
		27.963221, 38.120117, 30.999519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.317934, 38.830811, 30.569818>,  <28.472454, 38.523926, 31.259556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.317934, 38.830811, 30.569818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.999418, 38.609543, 30.667738>,  <27.808308, 38.476784, 30.726490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.999418, 38.609543, 30.667738>,  <28.317934, 38.830811, 30.569818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.999418, 38.609543, 30.667738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596480, 0.785365, -0.165572,
		-0.100666, -0.277860, -0.955333,
		-0.796290, -0.553169, 0.244797,
		27.760530, 38.443592, 30.741177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.817234, 38.829010, 29.930779>,  <28.317934, 38.830811, 30.569818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.817234, 38.829010, 29.930779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.611311, 38.748676, 30.264158>,  <27.487757, 38.700474, 30.464186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.611311, 38.748676, 30.264158>,  <27.817234, 38.829010, 29.930779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.611311, 38.748676, 30.264158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576181, 0.800925, -0.162896,
		-0.634815, -0.564078, -0.528040,
		-0.514807, -0.200837, 0.833449,
		27.456869, 38.688423, 30.514193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.029400, 38.972309, 29.746368>,  <27.817234, 38.829010, 29.930779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.029400, 38.972309, 29.746368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.017767, 38.952885, 30.145727>,  <27.010788, 38.941231, 30.385342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.017767, 38.952885, 30.145727>,  <27.029400, 38.972309, 29.746368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.017767, 38.952885, 30.145727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772135, 0.635402, 0.008416,
		-0.634792, -0.770653, -0.055973,
		-0.029080, -0.048561, 0.998396,
		27.009043, 38.938316, 30.445246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.321375, 38.904655, 30.015181>,  <27.029400, 38.972309, 29.746368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.321375, 38.904655, 30.015181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.536907, 39.079159, 30.303440>,  <26.666227, 39.183861, 30.476397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.536907, 39.079159, 30.303440>,  <26.321375, 38.904655, 30.015181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.536907, 39.079159, 30.303440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705726, 0.700904, 0.103364,
		-0.460013, -0.564277, 0.685551,
		0.538831, 0.436262, 0.720650,
		26.698557, 39.210037, 30.519634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.875620, 39.192493, 30.509523>,  <26.321375, 38.904655, 30.015181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.875620, 39.192493, 30.509523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.210123, 39.409470, 30.541599>,  <26.410826, 39.539654, 30.560844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.210123, 39.409470, 30.541599>,  <25.875620, 39.192493, 30.509523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.210123, 39.409470, 30.541599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545781, 0.837514, 0.026329,
		-0.052877, -0.065783, 0.996432,
		0.836258, 0.542441, 0.080188,
		26.461000, 39.572201, 30.565657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.633844, 39.675819, 31.023439>,  <25.875620, 39.192493, 30.509523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.633844, 39.675819, 31.023439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.988857, 39.816132, 30.903946>,  <26.201864, 39.900318, 30.832251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.988857, 39.816132, 30.903946>,  <25.633844, 39.675819, 31.023439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.988857, 39.816132, 30.903946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266828, 0.919892, 0.287405,
		0.375617, -0.175371, 0.910031,
		0.887533, 0.350776, -0.298733,
		26.255117, 39.921364, 30.814325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.798910, 40.157066, 31.569851>,  <25.633844, 39.675819, 31.023439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.798910, 40.157066, 31.569851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.993368, 40.259533, 31.235655>,  <26.110043, 40.321011, 31.035137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.993368, 40.259533, 31.235655>,  <25.798910, 40.157066, 31.569851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.993368, 40.259533, 31.235655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369959, 0.926497, 0.068800,
		0.791703, 0.275650, 0.545183,
		0.486146, 0.256165, -0.835489,
		26.139212, 40.336384, 30.985008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.203760, 40.704342, 31.823370>,  <25.798910, 40.157066, 31.569851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.203760, 40.704342, 31.823370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.158554, 40.736179, 31.427210>,  <26.131430, 40.755283, 31.189514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.158554, 40.736179, 31.427210>,  <26.203760, 40.704342, 31.823370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.158554, 40.736179, 31.427210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246178, 0.963463, 0.105521,
		0.962613, 0.255740, -0.089291,
		-0.113015, 0.079595, -0.990400,
		26.124649, 40.760059, 31.130091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.529671, 41.234711, 31.651583>,  <26.203760, 40.704342, 31.823370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.529671, 41.234711, 31.651583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.304951, 41.214008, 31.321321>,  <26.170118, 41.201588, 31.123165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.304951, 41.214008, 31.321321>,  <26.529671, 41.234711, 31.651583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.304951, 41.214008, 31.321321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286796, 0.948333, 0.135694,
		0.775970, 0.313026, -0.547617,
		-0.561799, -0.051760, -0.825653,
		26.136412, 41.198479, 31.073626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.726187, 41.859047, 31.410364>,  <26.529671, 41.234711, 31.651583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.726187, 41.859047, 31.410364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.407040, 41.741817, 31.199646>,  <26.215551, 41.671482, 31.073215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.407040, 41.741817, 31.199646>,  <26.726187, 41.859047, 31.410364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.407040, 41.741817, 31.199646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367182, 0.929327, 0.039111,
		0.478102, 0.224635, -0.849092,
		-0.797869, -0.293072, -0.526795,
		26.167679, 41.653896, 31.041607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.745037, 42.198826, 30.758780>,  <26.726187, 41.859047, 31.410364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.745037, 42.198826, 30.758780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.380795, 42.097069, 30.889061>,  <26.162249, 42.036015, 30.967230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.380795, 42.097069, 30.889061>,  <26.745037, 42.198826, 30.758780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.380795, 42.097069, 30.889061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260592, 0.965119, 0.025234,
		-0.320762, -0.061898, -0.945135,
		-0.910606, -0.254389, 0.325704,
		26.107613, 42.020752, 30.986773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.271523, 42.584114, 30.374062>,  <26.745037, 42.198826, 30.758780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.271523, 42.584114, 30.374062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.126692, 42.495369, 30.736206>,  <26.039793, 42.442123, 30.953493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.126692, 42.495369, 30.736206>,  <26.271523, 42.584114, 30.374062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.126692, 42.495369, 30.736206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146928, 0.972704, 0.179607,
		-0.920496, -0.067991, -0.384792,
		-0.362077, -0.221864, 0.905360,
		26.018068, 42.428810, 31.007814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.463942, 42.740707, 30.552158>,  <26.271523, 42.584114, 30.374062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.463942, 42.740707, 30.552158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.700266, 42.736927, 30.874861>,  <25.842060, 42.734657, 31.068481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.700266, 42.736927, 30.874861>,  <25.463942, 42.740707, 30.552158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.700266, 42.736927, 30.874861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228787, 0.956922, 0.178763,
		-0.773692, -0.290190, 0.563196,
		0.590810, -0.009455, 0.806755,
		25.877508, 42.734089, 31.116888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.184517, 43.045795, 31.111439>,  <25.463942, 42.740707, 30.552158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.184517, 43.045795, 31.111439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.562006, 43.036171, 31.243380>,  <25.788500, 43.030396, 31.322544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.562006, 43.036171, 31.243380>,  <25.184517, 43.045795, 31.111439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.562006, 43.036171, 31.243380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057795, 0.970004, 0.236121,
		-0.325642, -0.241897, 0.914026,
		0.943725, -0.024065, 0.329854,
		25.845123, 43.028950, 31.342337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.073864, 43.355347, 31.705482>,  <25.184517, 43.045795, 31.111439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.073864, 43.355347, 31.705482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.459393, 43.411064, 31.614578>,  <25.690710, 43.444496, 31.560036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.459393, 43.411064, 31.614578>,  <25.073864, 43.355347, 31.705482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.459393, 43.411064, 31.614578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092491, 0.974389, 0.204967,
		0.249992, -0.176532, 0.952019,
		0.963820, 0.139294, -0.227262,
		25.748539, 43.452854, 31.546400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.478317, 43.783989, 32.158741>,  <25.073864, 43.355347, 31.705482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.478317, 43.783989, 32.158741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.686333, 43.846199, 31.822794>,  <25.811142, 43.883526, 31.621227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.686333, 43.846199, 31.822794>,  <25.478317, 43.783989, 32.158741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.686333, 43.846199, 31.822794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012494, 0.981793, 0.189542,
		0.854051, -0.109062, 0.508627,
		0.520039, 0.155524, -0.839864,
		25.842344, 43.892857, 31.570835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.894348, 44.332546, 32.295567>,  <25.478317, 43.783989, 32.158741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.894348, 44.332546, 32.295567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.904057, 44.286709, 31.898319>,  <25.909882, 44.259205, 31.659971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.904057, 44.286709, 31.898319>,  <25.894348, 44.332546, 32.295567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.904057, 44.286709, 31.898319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015088, 0.993253, -0.114980,
		0.999592, 0.017775, 0.022377,
		0.024270, -0.114596, -0.993116,
		25.911337, 44.252331, 31.600384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.452805, 44.718388, 32.053440>,  <25.894348, 44.332546, 32.295567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.452805, 44.718388, 32.053440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.224112, 44.675713, 31.728050>,  <26.086895, 44.650108, 31.532816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.224112, 44.675713, 31.728050>,  <26.452805, 44.718388, 32.053440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.224112, 44.675713, 31.728050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165383, 0.956169, -0.241639,
		0.803598, -0.272688, -0.529028,
		-0.571732, -0.106689, -0.813474,
		26.052591, 44.643707, 31.484009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.830999, 45.015644, 31.431036>,  <26.452805, 44.718388, 32.053440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.830999, 45.015644, 31.431036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.433109, 45.046150, 31.403599>,  <26.194376, 45.064453, 31.387136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.433109, 45.046150, 31.403599>,  <26.830999, 45.015644, 31.431036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.433109, 45.046150, 31.403599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092010, 0.959023, -0.267971,
		0.045345, -0.272869, -0.960982,
		-0.994726, 0.076269, -0.068593,
		26.134691, 45.069031, 31.383020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.413465, 45.060200, 31.122372>,  <26.830999, 45.015644, 31.431036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.413465, 45.060200, 31.122372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.693527, 45.340351, 31.177870>,  <27.861565, 45.508442, 31.211168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.693527, 45.340351, 31.177870>,  <27.413465, 45.060200, 31.122372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.693527, 45.340351, 31.177870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661102, -0.709333, 0.244522,
		0.269676, -0.079477, -0.959666,
		0.700156, 0.700379, 0.138747,
		27.903574, 45.550465, 31.219494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.113989, 44.941124, 30.690075>,  <27.413465, 45.060200, 31.122372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.113989, 44.941124, 30.690075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.235712, 45.124660, 31.023989>,  <28.308746, 45.234783, 31.224337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.235712, 45.124660, 31.023989>,  <28.113989, 44.941124, 30.690075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.235712, 45.124660, 31.023989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801426, -0.597010, 0.035999,
		0.514891, 0.658061, -0.549402,
		0.304309, 0.458840, 0.834782,
		28.327005, 45.262314, 31.274424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.867504, 45.132748, 30.650015>,  <28.113989, 44.941124, 30.690075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.867504, 45.132748, 30.650015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.681036, 45.048965, 30.993832>,  <28.569155, 44.998695, 31.200121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.681036, 45.048965, 30.993832>,  <28.867504, 45.132748, 30.650015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.681036, 45.048965, 30.993832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720481, -0.653708, 0.231458,
		0.513410, 0.727183, 0.455647,
		-0.466172, -0.209452, 0.859542,
		28.541183, 44.986130, 31.251694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.402122, 45.018314, 31.252487>,  <28.867504, 45.132748, 30.650015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.402122, 45.018314, 31.252487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.068087, 44.811913, 31.328768>,  <28.867666, 44.688072, 31.374537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.068087, 44.811913, 31.328768>,  <29.402122, 45.018314, 31.252487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.068087, 44.811913, 31.328768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549214, -0.762185, 0.342692,
		-0.031481, 0.390914, 0.919889,
		-0.835089, -0.516004, 0.190701,
		28.817560, 44.657112, 31.385979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.621309, 44.723217, 31.841167>,  <29.402122, 45.018314, 31.252487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.621309, 44.723217, 31.841167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.297523, 44.524593, 31.715818>,  <29.103252, 44.405418, 31.640610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.297523, 44.524593, 31.715818>,  <29.621309, 44.723217, 31.841167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.297523, 44.524593, 31.715818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423790, -0.863469, 0.273541,
		-0.406415, 0.088617, 0.909381,
		-0.809462, -0.496557, -0.313371,
		29.054686, 44.375626, 31.621807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.571716, 44.178902, 32.235897>,  <29.621309, 44.723217, 31.841167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.571716, 44.178902, 32.235897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.306927, 44.069263, 31.956852>,  <29.148054, 44.003479, 31.789425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.306927, 44.069263, 31.956852>,  <29.571716, 44.178902, 32.235897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.306927, 44.069263, 31.956852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341313, -0.938871, 0.045011,
		-0.667306, -0.208309, 0.715060,
		-0.661973, -0.274095, -0.697613,
		29.108335, 43.987034, 31.747568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.234312, 43.560303, 32.564564>,  <29.571716, 44.178902, 32.235897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.234312, 43.560303, 32.564564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.151175, 43.550617, 32.173420>,  <29.101292, 43.544807, 31.938732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.151175, 43.550617, 32.173420>,  <29.234312, 43.560303, 32.564564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.151175, 43.550617, 32.173420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322048, -0.945651, -0.045035,
		-0.923627, -0.324279, 0.204343,
		-0.207842, -0.024213, -0.977863,
		29.088821, 43.543354, 31.880060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.815685, 42.982910, 32.528595>,  <29.234312, 43.560303, 32.564564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.815685, 42.982910, 32.528595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.984308, 43.049824, 32.172100>,  <29.085482, 43.089973, 31.958202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.984308, 43.049824, 32.172100>,  <28.815685, 42.982910, 32.528595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.984308, 43.049824, 32.172100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380615, -0.924711, 0.006465,
		-0.823056, -0.341944, -0.453491,
		0.421559, 0.167284, -0.891238,
		29.110775, 43.100010, 31.904728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.558283, 42.451077, 32.161118>,  <28.815685, 42.982910, 32.528595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.558283, 42.451077, 32.161118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.893072, 42.574654, 31.980440>,  <29.093946, 42.648800, 31.872034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.893072, 42.574654, 31.980440>,  <28.558283, 42.451077, 32.161118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.893072, 42.574654, 31.980440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282367, -0.950846, -0.127127,
		-0.468767, -0.021142, -0.883069,
		0.836974, 0.308942, -0.451695,
		29.144165, 42.667336, 31.844931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.652029, 42.036491, 31.503780>,  <28.558283, 42.451077, 32.161118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.652029, 42.036491, 31.503780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.010319, 42.187256, 31.598110>,  <29.225292, 42.277714, 31.654709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.010319, 42.187256, 31.598110>,  <28.652029, 42.036491, 31.503780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.010319, 42.187256, 31.598110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436842, -0.844786, -0.309041,
		0.082740, 0.379834, -0.921347,
		0.895725, 0.376913, 0.235825,
		29.279036, 42.300331, 31.668858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.042599, 41.959476, 30.852152>,  <28.652029, 42.036491, 31.503780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.042599, 41.959476, 30.852152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.284081, 42.005146, 31.167747>,  <29.428970, 42.032547, 31.357105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.284081, 42.005146, 31.167747>,  <29.042599, 41.959476, 30.852152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.284081, 42.005146, 31.167747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560130, -0.764982, -0.317896,
		0.567269, 0.633852, -0.525774,
		0.603706, 0.114169, 0.788990,
		29.465193, 42.039398, 31.404444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.734610, 41.706364, 30.622967>,  <29.042599, 41.959476, 30.852152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.734610, 41.706364, 30.622967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.756330, 41.700478, 31.022333>,  <29.769363, 41.696945, 31.261953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.756330, 41.700478, 31.022333>,  <29.734610, 41.706364, 30.622967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.756330, 41.700478, 31.022333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327093, -0.944460, -0.031712,
		0.943431, 0.328297, -0.046474,
		0.054304, -0.014717, 0.998416,
		29.772621, 41.696064, 31.321857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.285170, 41.339005, 30.739344>,  <29.734610, 41.706364, 30.622967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.285170, 41.339005, 30.739344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.086393, 41.330414, 31.086351>,  <29.967127, 41.325260, 31.294556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.086393, 41.330414, 31.086351>,  <30.285170, 41.339005, 30.739344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.086393, 41.330414, 31.086351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245871, -0.962212, 0.117024,
		0.832224, 0.271452, 0.483442,
		-0.496941, -0.021474, 0.867519,
		29.937311, 41.323971, 31.346607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.753756, 41.080070, 31.125618>,  <30.285170, 41.339005, 30.739344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.753756, 41.080070, 31.125618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.421484, 41.026443, 31.341766>,  <30.222120, 40.994267, 31.471455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.421484, 41.026443, 31.341766>,  <30.753756, 41.080070, 31.125618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.421484, 41.026443, 31.341766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322894, -0.906682, 0.271416,
		0.453556, 0.399941, 0.796451,
		-0.830679, -0.134067, 0.540370,
		30.172281, 40.986225, 31.503878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.001429, 40.890259, 31.719774>,  <30.753756, 41.080070, 31.125618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.001429, 40.890259, 31.719774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.625019, 40.758926, 31.752457>,  <30.399174, 40.680126, 31.772066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.625019, 40.758926, 31.752457>,  <31.001429, 40.890259, 31.719774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.625019, 40.758926, 31.752457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337581, -0.894939, 0.291759,
		-0.022672, 0.302135, 0.952996,
		-0.941024, -0.328328, 0.081705,
		30.342712, 40.660427, 31.776968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.760553, 40.652027, 32.386288>,  <31.001429, 40.890259, 31.719774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.760553, 40.652027, 32.386288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.535540, 40.461430, 32.116028>,  <30.400532, 40.347069, 31.953871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.535540, 40.461430, 32.116028>,  <30.760553, 40.652027, 32.386288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.535540, 40.461430, 32.116028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269489, -0.878259, 0.395014,
		-0.781622, 0.040128, 0.622461,
		-0.562533, -0.476498, -0.675652,
		30.366779, 40.318481, 31.913332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.504353, 40.050167, 32.775242>,  <30.760553, 40.652027, 32.386288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.504353, 40.050167, 32.775242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.407814, 39.970036, 32.395428>,  <30.349892, 39.921955, 32.167538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.407814, 39.970036, 32.395428>,  <30.504353, 40.050167, 32.775242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.407814, 39.970036, 32.395428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232486, -0.961903, 0.143850,
		-0.942180, -0.186037, 0.278725,
		-0.241345, -0.200332, -0.949537,
		30.335411, 39.909935, 32.110565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.113928, 39.438847, 32.882938>,  <30.504353, 40.050167, 32.775242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.113928, 39.438847, 32.882938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.238157, 39.466145, 32.503700>,  <30.312695, 39.482525, 32.276157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.238157, 39.466145, 32.503700>,  <30.113928, 39.438847, 32.882938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.238157, 39.466145, 32.503700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252212, -0.967585, 0.012971,
		-0.916478, -0.243150, -0.317721,
		0.310575, 0.068246, -0.948096,
		30.331329, 39.486618, 32.219273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.826553, 38.831139, 32.558922>,  <30.113928, 39.438847, 32.882938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.826553, 38.831139, 32.558922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.111092, 38.970642, 32.314838>,  <30.281815, 39.054344, 32.168388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.111092, 38.970642, 32.314838>,  <29.826553, 38.831139, 32.558922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.111092, 38.970642, 32.314838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315153, -0.934303, -0.166604,
		-0.628226, -0.073796, -0.774523,
		0.711345, 0.348758, -0.610210,
		30.324495, 39.075268, 32.131775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.917381, 38.400455, 31.922222>,  <29.826553, 38.831139, 32.558922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.917381, 38.400455, 31.922222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.271839, 38.577606, 31.976793>,  <30.484514, 38.683895, 32.009537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.271839, 38.577606, 31.976793>,  <29.917381, 38.400455, 31.922222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.271839, 38.577606, 31.976793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445133, -0.895336, 0.015186,
		0.128872, 0.047271, -0.990534,
		0.886143, 0.442876, 0.136426,
		30.537682, 38.710468, 32.017719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.353994, 38.050220, 31.470325>,  <29.917381, 38.400455, 31.922222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.353994, 38.050220, 31.470325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.584572, 38.229534, 31.743603>,  <30.722919, 38.337124, 31.907570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.584572, 38.229534, 31.743603>,  <30.353994, 38.050220, 31.470325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.584572, 38.229534, 31.743603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539247, -0.836871, 0.094130,
		0.613941, 0.314149, -0.724146,
		0.576445, 0.448283, 0.683193,
		30.757505, 38.364017, 31.948561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.083221, 37.780045, 31.330246>,  <30.353994, 38.050220, 31.470325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.083221, 37.780045, 31.330246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.083237, 37.947189, 31.693651>,  <31.083246, 38.047478, 31.911694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.083237, 37.947189, 31.693651>,  <31.083221, 37.780045, 31.330246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.083237, 37.947189, 31.693651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653536, -0.687657, 0.316256,
		0.756895, 0.593733, -0.273112,
		0.000036, 0.417861, 0.908511,
		31.083248, 38.072548, 31.966204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.797464, 37.737843, 31.565044>,  <31.083221, 37.780045, 31.330246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.797464, 37.737843, 31.565044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.588602, 37.776173, 31.904024>,  <31.463285, 37.799171, 32.107410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.588602, 37.776173, 31.904024>,  <31.797464, 37.737843, 31.565044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.588602, 37.776173, 31.904024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470520, -0.796391, 0.379963,
		0.711313, 0.597142, 0.370750,
		-0.522154, 0.095828, 0.847450,
		31.431955, 37.804920, 32.158260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.281452, 37.752506, 32.096230>,  <31.797464, 37.737843, 31.565044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.281452, 37.752506, 32.096230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919027, 37.630253, 32.213284>,  <31.701572, 37.556900, 32.283516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919027, 37.630253, 32.213284>,  <32.281452, 37.752506, 32.096230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.919027, 37.630253, 32.213284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394475, -0.860332, 0.322829,
		0.153095, 0.407941, 0.900081,
		-0.906064, -0.305636, 0.292635,
		31.647207, 37.538563, 32.301075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.394470, 37.246986, 32.558670>,  <32.281452, 37.752506, 32.096230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.394470, 37.246986, 32.558670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.015789, 37.161224, 32.462509>,  <31.788582, 37.109768, 32.404812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.015789, 37.161224, 32.462509>,  <32.394470, 37.246986, 32.558670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.015789, 37.161224, 32.462509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204995, -0.976682, 0.063788,
		-0.248468, 0.011108, 0.968576,
		-0.946700, -0.214402, -0.240397,
		31.731779, 37.096905, 32.390388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.776390, 36.716740, 32.132648>,  <32.394470, 37.246986, 32.558670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.776390, 36.716740, 32.132648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.776741, 37.060970, 31.928921>,  <32.776951, 37.267509, 31.806683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.776741, 37.060970, 31.928921>,  <32.776390, 36.716740, 32.132648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.776741, 37.060970, 31.928921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273866, 0.489645, 0.827795,
		0.961767, -0.140209, -0.235254,
		0.000873, 0.860575, -0.509323,
		32.777004, 37.319141, 31.776123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.535133, 37.104290, 32.009235>,  <32.776390, 36.716740, 32.132648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.535133, 37.104290, 32.009235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.242668, 37.375637, 32.038097>,  <33.067188, 37.538445, 32.055416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.242668, 37.375637, 32.038097>,  <33.535133, 37.104290, 32.009235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.242668, 37.375637, 32.038097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514256, 0.478580, 0.711689,
		0.448258, 0.557470, -0.698779,
		-0.731167, 0.678372, 0.072155,
		33.023319, 37.579147, 32.059742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.774048, 37.750298, 32.124180>,  <33.535133, 37.104290, 32.009235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.774048, 37.750298, 32.124180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.418850, 37.803501, 32.300262>,  <33.205730, 37.835423, 32.405910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.418850, 37.803501, 32.300262>,  <33.774048, 37.750298, 32.124180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.418850, 37.803501, 32.300262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455632, 0.383995, 0.803086,
		-0.062220, 0.913705, -0.401586,
		-0.887991, 0.133008, 0.440206,
		33.152454, 37.843403, 32.432323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.768887, 38.441204, 32.484344>,  <33.774048, 37.750298, 32.124180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.768887, 38.441204, 32.484344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.478176, 38.226639, 32.655949>,  <33.303749, 38.097900, 32.758911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.478176, 38.226639, 32.655949>,  <33.768887, 38.441204, 32.484344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.478176, 38.226639, 32.655949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276789, 0.342918, 0.897661,
		-0.628632, 0.771149, -0.100754,
		-0.726781, -0.536410, 0.429015,
		33.260143, 38.065716, 32.784653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233093, 38.800518, 32.892365>,  <33.768887, 38.441204, 32.484344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233093, 38.800518, 32.892365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.214233, 38.435589, 33.055061>,  <33.202915, 38.216629, 33.152679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.214233, 38.435589, 33.055061>,  <33.233093, 38.800518, 32.892365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.214233, 38.435589, 33.055061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057678, 0.404029, 0.912926,
		-0.997221, 0.066508, 0.033570,
		-0.047154, -0.912325, 0.406743,
		33.200089, 38.161892, 33.177086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.364017, 38.834026, 33.520393>,  <33.233093, 38.800518, 32.892365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.364017, 38.834026, 33.520393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279739, 38.446774, 33.574543>,  <33.229172, 38.214420, 33.607033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279739, 38.446774, 33.574543>,  <33.364017, 38.834026, 33.520393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.279739, 38.446774, 33.574543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064541, 0.124402, 0.990130,
		-0.975418, 0.217356, 0.036273,
		-0.210698, -0.968132, 0.135373,
		33.216530, 38.156334, 33.615154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.819530, 38.885937, 33.943398>,  <33.364017, 38.834026, 33.520393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.819530, 38.885937, 33.943398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987572, 38.525581, 33.987045>,  <33.088394, 38.309368, 34.013233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987572, 38.525581, 33.987045>,  <32.819530, 38.885937, 33.943398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.987572, 38.525581, 33.987045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052277, 0.144074, 0.988185,
		-0.905971, -0.409432, 0.107621,
		0.420100, -0.900893, 0.109123,
		33.113602, 38.255314, 34.019783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.534832, 38.592491, 34.485394>,  <32.819530, 38.885937, 33.943398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.534832, 38.592491, 34.485394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.867764, 38.371361, 34.469284>,  <33.067520, 38.238682, 34.459618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.867764, 38.371361, 34.469284>,  <32.534832, 38.592491, 34.485394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.867764, 38.371361, 34.469284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092088, 0.066261, 0.993544,
		-0.546586, -0.830660, 0.106059,
		0.832324, -0.552824, -0.040276,
		33.117462, 38.205513, 34.457203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.379238, 38.136784, 35.031570>,  <32.534832, 38.592491, 34.485394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.379238, 38.136784, 35.031570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.769348, 38.145786, 34.943630>,  <33.003414, 38.151188, 34.890865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.769348, 38.145786, 34.943630>,  <32.379238, 38.136784, 35.031570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.769348, 38.145786, 34.943630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220137, -0.010980, 0.975407,
		0.019540, -0.999686, -0.015663,
		0.975273, 0.022507, -0.219854,
		33.061932, 38.152538, 34.877674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.657909, 37.542137, 35.389267>,  <32.379238, 38.136784, 35.031570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.657909, 37.542137, 35.389267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987301, 37.762432, 35.334743>,  <33.184937, 37.894608, 35.302029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987301, 37.762432, 35.334743>,  <32.657909, 37.542137, 35.389267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.987301, 37.762432, 35.334743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169327, -0.009259, 0.985516,
		0.541496, -0.834629, -0.100879,
		0.823475, 0.550735, -0.136311,
		33.234344, 37.927654, 35.293850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.241940, 37.211472, 35.757927>,  <32.657909, 37.542137, 35.389267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.241940, 37.211472, 35.757927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.395668, 37.578979, 35.721771>,  <33.487904, 37.799484, 35.700077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.395668, 37.578979, 35.721771>,  <33.241940, 37.211472, 35.757927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.395668, 37.578979, 35.721771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230145, -0.000529, 0.973156,
		0.894055, -0.394803, -0.211652,
		0.384317, 0.918766, -0.090389,
		33.510963, 37.854610, 35.694656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.832558, 37.193108, 36.157375>,  <33.241940, 37.211472, 35.757927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.832558, 37.193108, 36.157375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.720085, 37.573921, 36.109104>,  <33.652603, 37.802410, 36.080143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.720085, 37.573921, 36.109104>,  <33.832558, 37.193108, 36.157375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.720085, 37.573921, 36.109104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177711, 0.175231, 0.968356,
		0.943058, 0.250835, -0.218458,
		-0.281178, 0.952038, -0.120677,
		33.635731, 37.859531, 36.072903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288242, 37.609962, 36.519058>,  <33.832558, 37.193108, 36.157375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288242, 37.609962, 36.519058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957302, 37.829739, 36.472382>,  <33.758739, 37.961605, 36.444378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957302, 37.829739, 36.472382>,  <34.288242, 37.609962, 36.519058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957302, 37.829739, 36.472382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054681, 0.127974, 0.990269,
		0.559023, 0.825677, -0.075835,
		-0.827347, 0.549436, -0.116689,
		33.709099, 37.994568, 36.437374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443333, 38.194035, 36.990715>,  <34.288242, 37.609962, 36.519058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.443333, 38.194035, 36.990715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.050591, 38.160725, 36.922565>,  <33.814945, 38.140739, 36.881676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.050591, 38.160725, 36.922565>,  <34.443333, 38.194035, 36.990715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.050591, 38.160725, 36.922565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178701, 0.105694, 0.978210,
		-0.063452, 0.990906, -0.118657,
		-0.981855, -0.083274, -0.170370,
		33.756035, 38.135742, 36.871456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.106003, 38.765854, 37.363838>,  <34.443333, 38.194035, 36.990715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.106003, 38.765854, 37.363838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832489, 38.482964, 37.291988>,  <33.668381, 38.313229, 37.248878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832489, 38.482964, 37.291988>,  <34.106003, 38.765854, 37.363838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.832489, 38.482964, 37.291988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304712, 0.053081, 0.950964,
		-0.663014, 0.704989, -0.251797,
		-0.683785, -0.707229, -0.179626,
		33.627354, 38.270794, 37.238102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549263, 39.006203, 37.698860>,  <34.106003, 38.765854, 37.363838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549263, 39.006203, 37.698860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432533, 38.626778, 37.649742>,  <33.362495, 38.399124, 37.620274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432533, 38.626778, 37.649742>,  <33.549263, 39.006203, 37.698860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.432533, 38.626778, 37.649742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413718, 0.009433, 0.910357,
		-0.862368, 0.316463, -0.395188,
		-0.291822, -0.948558, -0.122791,
		33.344986, 38.342209, 37.612904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.953564, 38.909363, 38.057693>,  <33.549263, 39.006203, 37.698860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.953564, 38.909363, 38.057693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037140, 38.521580, 38.006329>,  <33.087288, 38.288910, 37.975510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037140, 38.521580, 38.006329>,  <32.953564, 38.909363, 38.057693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.037140, 38.521580, 38.006329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513126, -0.220467, 0.829515,
		-0.832493, -0.107430, -0.543521,
		0.208943, -0.969460, -0.128412,
		33.099823, 38.230743, 37.967804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.410511, 38.512676, 38.180397>,  <32.953564, 38.909363, 38.057693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.410511, 38.512676, 38.180397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.726006, 38.274918, 38.243114>,  <32.915302, 38.132263, 38.280743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.726006, 38.274918, 38.243114>,  <32.410511, 38.512676, 38.180397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.726006, 38.274918, 38.243114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386377, -0.280976, 0.878502,
		-0.478125, -0.753489, -0.451277,
		0.788739, -0.594397, 0.156789,
		32.962627, 38.096600, 38.290150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126175, 37.788345, 38.310226>,  <32.410511, 38.512676, 38.180397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126175, 37.788345, 38.310226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475742, 37.831028, 38.499916>,  <32.685482, 37.856636, 38.613728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475742, 37.831028, 38.499916>,  <32.126175, 37.788345, 38.310226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475742, 37.831028, 38.499916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387194, -0.436981, 0.811867,
		0.293856, -0.893119, -0.340569,
		0.873916, 0.106706, 0.474220,
		32.737919, 37.863041, 38.642181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.973566, 37.265152, 38.839634>,  <32.126175, 37.788345, 38.310226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.973566, 37.265152, 38.839634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331566, 37.427841, 38.912907>,  <32.546364, 37.525455, 38.956871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331566, 37.427841, 38.912907>,  <31.973566, 37.265152, 38.839634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.331566, 37.427841, 38.912907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045757, -0.324785, 0.944680,
		0.443718, -0.853868, -0.272072,
		0.894997, 0.406723, 0.183183,
		32.600063, 37.549858, 38.967861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.428329, 36.675705, 38.993267>,  <31.973566, 37.265152, 38.839634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.428329, 36.675705, 38.993267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.510418, 37.016350, 39.186195>,  <32.559669, 37.220737, 39.301952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.510418, 37.016350, 39.186195>,  <32.428329, 36.675705, 38.993267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.510418, 37.016350, 39.186195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191809, -0.448258, 0.873083,
		0.959737, -0.271687, 0.071357,
		0.205219, 0.851617, 0.482321,
		32.571983, 37.271835, 39.330891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.788731, 36.480148, 39.658550>,  <32.428329, 36.675705, 38.993267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.788731, 36.480148, 39.658550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.708492, 36.861652, 39.748089>,  <32.660351, 37.090553, 39.801811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.708492, 36.861652, 39.748089>,  <32.788731, 36.480148, 39.658550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.708492, 36.861652, 39.748089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098250, -0.246922, 0.964042,
		0.974735, 0.171388, 0.143237,
		-0.200593, 0.953759, 0.223845,
		32.648315, 37.147781, 39.815243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031200, 36.454582, 40.291100>,  <32.788731, 36.480148, 39.658550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031200, 36.454582, 40.291100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.806927, 36.785355, 40.274025>,  <32.672363, 36.983818, 40.263783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.806927, 36.785355, 40.274025>,  <33.031200, 36.454582, 40.291100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.806927, 36.785355, 40.274025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099232, -0.015926, 0.994937,
		0.822061, 0.562083, 0.090987,
		-0.560686, 0.826928, -0.042685,
		32.638721, 37.033432, 40.261219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.249672, 36.851387, 40.794540>,  <33.031200, 36.454582, 40.291100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.249672, 36.851387, 40.794540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878731, 36.990562, 40.739471>,  <32.656166, 37.074066, 40.706429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878731, 36.990562, 40.739471>,  <33.249672, 36.851387, 40.794540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.878731, 36.990562, 40.739471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164317, -0.048104, 0.985234,
		0.336176, 0.936283, 0.101781,
		-0.927354, 0.347936, -0.137676,
		32.600525, 37.094944, 40.698170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.170509, 37.419472, 41.259090>,  <33.249672, 36.851387, 40.794540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.170509, 37.419472, 41.259090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.801048, 37.301189, 41.161587>,  <32.579372, 37.230221, 41.103085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.801048, 37.301189, 41.161587>,  <33.170509, 37.419472, 41.259090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.801048, 37.301189, 41.161587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211798, -0.136208, 0.967775,
		-0.319380, 0.945518, 0.063179,
		-0.923655, -0.295706, -0.243761,
		32.523952, 37.212479, 41.088459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.712971, 37.660778, 41.788589>,  <33.170509, 37.419472, 41.259090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.712971, 37.660778, 41.788589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484287, 37.378616, 41.620998>,  <32.347076, 37.209320, 41.520443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484287, 37.378616, 41.620998>,  <32.712971, 37.660778, 41.788589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.484287, 37.378616, 41.620998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279397, -0.312755, 0.907811,
		-0.771415, 0.636070, -0.018282,
		-0.571713, -0.705407, -0.418980,
		32.312775, 37.166996, 41.495304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.033276, 37.652687, 42.116829>,  <32.712971, 37.660778, 41.788589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.033276, 37.652687, 42.116829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.062130, 37.285934, 41.959793>,  <32.079445, 37.065884, 41.865574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.062130, 37.285934, 41.959793>,  <32.033276, 37.652687, 42.116829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.062130, 37.285934, 41.959793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361619, -0.390874, 0.846433,
		-0.929531, 0.080906, -0.359759,
		0.072139, -0.916882, -0.392587,
		32.083771, 37.010872, 41.842018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.476528, 37.322323, 42.206207>,  <32.033276, 37.652687, 42.116829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.476528, 37.322323, 42.206207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.736116, 37.020298, 42.168861>,  <31.891869, 36.839081, 42.146454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.736116, 37.020298, 42.168861>,  <31.476528, 37.322323, 42.206207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.736116, 37.020298, 42.168861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464902, -0.490700, 0.736940,
		-0.602251, -0.434846, -0.669480,
		0.648968, -0.755064, -0.093364,
		31.930807, 36.793777, 42.140854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.031807, 36.784481, 42.326660>,  <31.476528, 37.322323, 42.206207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.031807, 36.784481, 42.326660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.394783, 36.619019, 42.356155>,  <31.612570, 36.519741, 42.373852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.394783, 36.619019, 42.356155>,  <31.031807, 36.784481, 42.326660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.394783, 36.619019, 42.356155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360185, -0.675432, 0.643474,
		-0.216371, -0.610475, -0.761908,
		0.907442, -0.413657, 0.073740,
		31.667015, 36.494923, 42.378277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.872740, 36.083519, 42.259655>,  <31.031807, 36.784481, 42.326660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.872740, 36.083519, 42.259655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.232702, 36.093594, 42.433796>,  <31.448681, 36.099640, 42.538280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.232702, 36.093594, 42.433796>,  <30.872740, 36.083519, 42.259655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.232702, 36.093594, 42.433796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290537, -0.709852, 0.641637,
		0.325197, -0.703900, -0.631483,
		0.899908, 0.025189, 0.435351,
		31.502674, 36.101151, 42.564400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.003376, 35.423447, 42.408272>,  <30.872740, 36.083519, 42.259655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.003376, 35.423447, 42.408272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.274847, 35.585464, 42.653332>,  <31.437731, 35.682674, 42.800365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.274847, 35.585464, 42.653332>,  <31.003376, 35.423447, 42.408272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.274847, 35.585464, 42.653332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175786, -0.720341, 0.670975,
		0.713087, -0.563072, -0.417680,
		0.678680, 0.405042, 0.612646,
		31.478451, 35.706978, 42.837124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.364611, 34.902000, 42.671455>,  <31.003376, 35.423447, 42.408272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.364611, 34.902000, 42.671455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.421169, 35.186253, 42.947140>,  <31.455105, 35.356804, 43.112549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.421169, 35.186253, 42.947140>,  <31.364611, 34.902000, 42.671455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.421169, 35.186253, 42.947140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018276, -0.697960, 0.715903,
		0.989785, -0.088629, -0.111676,
		0.141395, 0.710631, 0.689211,
		31.463587, 35.399441, 43.153904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.027199, 34.759510, 43.042305>,  <31.364611, 34.902000, 42.671455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.027199, 34.759510, 43.042305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.809448, 34.988918, 43.287163>,  <31.678799, 35.126564, 43.434078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.809448, 34.988918, 43.287163>,  <32.027199, 34.759510, 43.042305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.809448, 34.988918, 43.287163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008818, -0.733627, 0.679495,
		0.838794, 0.364504, 0.404427,
		-0.544377, 0.573523, 0.612148,
		31.646135, 35.160976, 43.470806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.255199, 34.490005, 43.733242>,  <32.027199, 34.759510, 43.042305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.255199, 34.490005, 43.733242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.953270, 34.740761, 43.810452>,  <31.772114, 34.891212, 43.856777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.953270, 34.740761, 43.810452>,  <32.255199, 34.490005, 43.733242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.953270, 34.740761, 43.810452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177106, -0.478127, 0.860249,
		0.631569, 0.615148, 0.471925,
		-0.754820, 0.626888, 0.193024,
		31.726824, 34.928825, 43.868359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.392410, 34.656307, 44.408653>,  <32.255199, 34.490005, 43.733242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.392410, 34.656307, 44.408653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.004608, 34.725952, 44.339664>,  <31.771927, 34.767738, 44.298271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.004608, 34.725952, 44.339664>,  <32.392410, 34.656307, 44.408653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.004608, 34.725952, 44.339664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236639, -0.482022, 0.843597,
		0.063746, 0.858685, 0.508524,
		-0.969504, 0.174113, -0.172472,
		31.713757, 34.778187, 44.287922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.107498, 35.122303, 44.970932>,  <32.392410, 34.656307, 44.408653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.107498, 35.122303, 44.970932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.821281, 34.905548, 44.794590>,  <31.649551, 34.775494, 44.688786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.821281, 34.905548, 44.794590>,  <32.107498, 35.122303, 44.970932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.821281, 34.905548, 44.794590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330867, -0.292912, 0.897067,
		-0.615245, 0.787754, 0.030297,
		-0.715543, -0.541891, -0.440854,
		31.606619, 34.742981, 44.662334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.447796, 35.157211, 45.307449>,  <32.107498, 35.122303, 44.970932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.447796, 35.157211, 45.307449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.414194, 34.807152, 45.116848>,  <31.394033, 34.597115, 45.002487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.414194, 34.807152, 45.116848>,  <31.447796, 35.157211, 45.307449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.414194, 34.807152, 45.116848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228434, -0.448547, 0.864074,
		-0.969929, 0.181434, -0.162235,
		-0.084003, -0.875150, -0.476504,
		31.388994, 34.544605, 44.973896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.957649, 34.900906, 45.659092>,  <31.447796, 35.157211, 45.307449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.957649, 34.900906, 45.659092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.082115, 34.571529, 45.469307>,  <31.156794, 34.373901, 45.355434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.082115, 34.571529, 45.469307>,  <30.957649, 34.900906, 45.659092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.082115, 34.571529, 45.469307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121107, -0.529535, 0.839598,
		-0.942608, -0.203790, -0.264497,
		0.311162, -0.823445, -0.474464,
		31.175465, 34.324497, 45.326969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.423038, 34.387417, 45.734669>,  <30.957649, 34.900906, 45.659092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.423038, 34.387417, 45.734669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.730177, 34.157673, 45.621166>,  <30.914461, 34.019825, 45.553062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.730177, 34.157673, 45.621166>,  <30.423038, 34.387417, 45.734669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.730177, 34.157673, 45.621166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101549, -0.546461, 0.831305,
		-0.632534, -0.609499, -0.477924,
		0.767847, -0.574361, -0.283761,
		30.960531, 33.985363, 45.536037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.212868, 33.797298, 45.984886>,  <30.423038, 34.387417, 45.734669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.212868, 33.797298, 45.984886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.602097, 33.744080, 45.909595>,  <30.835634, 33.712147, 45.864422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.602097, 33.744080, 45.909595>,  <30.212868, 33.797298, 45.984886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.602097, 33.744080, 45.909595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072637, -0.597987, 0.798208,
		-0.218759, -0.790385, -0.572220,
		0.973072, -0.133051, -0.188226,
		30.894018, 33.704163, 45.853127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.477753, 33.079876, 45.776535>,  <30.212868, 33.797298, 45.984886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.477753, 33.079876, 45.776535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.766043, 33.290218, 45.957211>,  <30.939016, 33.416424, 46.065617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.766043, 33.290218, 45.957211>,  <30.477753, 33.079876, 45.776535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.766043, 33.290218, 45.957211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169275, -0.765364, 0.620937,
		0.672236, -0.371065, -0.640632,
		0.720725, 0.525859, 0.451693,
		30.982260, 33.447975, 46.092720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.694897, 32.610928, 46.224594>,  <30.477753, 33.079876, 45.776535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.694897, 32.610928, 46.224594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.956924, 32.880615, 46.361015>,  <31.114141, 33.042427, 46.442867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.956924, 32.880615, 46.361015>,  <30.694897, 32.610928, 46.224594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.956924, 32.880615, 46.361015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165842, -0.568682, 0.805666,
		0.737144, -0.471205, -0.484339,
		0.655069, 0.674216, 0.341055,
		31.153444, 33.082878, 46.463333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.379364, 32.306789, 46.387096>,  <30.694897, 32.610928, 46.224594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.379364, 32.306789, 46.387096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.335709, 32.639812, 46.604332>,  <31.309515, 32.839626, 46.734673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.335709, 32.639812, 46.604332>,  <31.379364, 32.306789, 46.387096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.335709, 32.639812, 46.604332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139079, -0.528185, 0.837662,
		0.984249, 0.166954, -0.058144,
		-0.109140, 0.832554, 0.543085,
		31.302967, 32.889580, 46.767258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.929659, 32.354618, 46.939671>,  <31.379364, 32.306789, 46.387096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.929659, 32.354618, 46.939671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.630331, 32.580383, 47.079075>,  <31.450735, 32.715843, 47.162716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.630331, 32.580383, 47.079075>,  <31.929659, 32.354618, 46.939671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.630331, 32.580383, 47.079075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007176, -0.518471, 0.855065,
		0.663300, 0.642363, 0.383932,
		-0.748319, 0.564409, 0.348512,
		31.405836, 32.749706, 47.183628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.193237, 32.378498, 47.573307>,  <31.929659, 32.354618, 46.939671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.193237, 32.378498, 47.573307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.805805, 32.473907, 47.601444>,  <31.573345, 32.531155, 47.618328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.805805, 32.473907, 47.601444>,  <32.193237, 32.378498, 47.573307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.805805, 32.473907, 47.601444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044662, -0.445124, 0.894354,
		0.244640, 0.863116, 0.441793,
		-0.968585, 0.238526, 0.070347,
		31.515230, 32.545464, 47.622547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.060520, 32.541866, 48.263279>,  <32.193237, 32.378498, 47.573307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.060520, 32.541866, 48.263279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.681450, 32.468460, 48.158791>,  <31.454008, 32.424416, 48.096100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.681450, 32.468460, 48.158791>,  <32.060520, 32.541866, 48.263279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.681450, 32.468460, 48.158791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183853, -0.355186, 0.916538,
		-0.260977, 0.916606, 0.302862,
		-0.947676, -0.183513, -0.261216,
		31.397148, 32.413406, 48.080425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.715240, 32.752468, 48.880230>,  <32.060520, 32.541866, 48.263279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.715240, 32.752468, 48.880230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.476278, 32.529682, 48.649445>,  <31.332901, 32.396011, 48.510971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.476278, 32.529682, 48.649445>,  <31.715240, 32.752468, 48.880230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.476278, 32.529682, 48.649445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298004, -0.513762, 0.804514,
		-0.744514, 0.652559, 0.140945,
		-0.597405, -0.556969, -0.576968,
		31.297056, 32.362591, 48.476353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.029034, 32.790295, 49.123867>,  <31.715240, 32.752468, 48.880230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.029034, 32.790295, 49.123867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.057306, 32.434093, 48.944088>,  <31.074270, 32.220371, 48.836220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.057306, 32.434093, 48.944088>,  <31.029034, 32.790295, 49.123867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.057306, 32.434093, 48.944088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275707, -0.450464, 0.849157,
		-0.958639, 0.063896, -0.277359,
		0.070683, -0.890505, -0.449449,
		31.078510, 32.166943, 48.809254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.467339, 32.484783, 49.209904>,  <31.029034, 32.790295, 49.123867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.467339, 32.484783, 49.209904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.752653, 32.208866, 49.160244>,  <30.923841, 32.043316, 49.130447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.752653, 32.208866, 49.160244>,  <30.467339, 32.484783, 49.209904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.752653, 32.208866, 49.160244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063135, -0.239653, 0.968804,
		-0.698026, -0.683194, -0.214491,
		0.713284, -0.689792, -0.124151,
		30.966639, 32.001930, 49.122997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.247581, 31.781605, 49.426720>,  <30.467339, 32.484783, 49.209904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.247581, 31.781605, 49.426720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.633673, 31.863979, 49.491119>,  <30.865328, 31.913404, 49.529758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.633673, 31.863979, 49.491119>,  <30.247581, 31.781605, 49.426720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.633673, 31.863979, 49.491119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151932, -0.059233, 0.986615,
		0.212718, -0.976771, -0.025885,
		0.965229, 0.205938, 0.161003,
		30.923241, 31.925760, 49.539421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.662209, 31.743738, 50.096291>,  <30.247581, 31.781605, 49.426720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.662209, 31.743738, 50.096291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.403103, 31.685219, 50.395355>,  <30.247639, 31.650108, 50.574795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.403103, 31.685219, 50.395355>,  <30.662209, 31.743738, 50.096291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.403103, 31.685219, 50.395355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648442, -0.409275, -0.641886,
		0.399904, -0.900606, 0.170249,
		-0.647765, -0.146296, 0.747661,
		30.208773, 31.641331, 50.619652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.468678, 31.061647, 50.103725>,  <30.662209, 31.743738, 50.096291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.468678, 31.061647, 50.103725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.153891, 31.244921, 50.269012>,  <29.965019, 31.354885, 50.368187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.153891, 31.244921, 50.269012>,  <30.468678, 31.061647, 50.103725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.153891, 31.244921, 50.269012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572965, -0.294241, -0.764940,
		-0.228890, -0.838747, 0.494077,
		-0.786969, 0.458176, 0.413224,
		29.917801, 31.382376, 50.392979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.970863, 30.602867, 49.941422>,  <30.468678, 31.061647, 50.103725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.970863, 30.602867, 49.941422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.801514, 30.946196, 50.057377>,  <29.699903, 31.152193, 50.126949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.801514, 30.946196, 50.057377>,  <29.970863, 30.602867, 49.941422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.801514, 30.946196, 50.057377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827317, -0.235904, -0.509799,
		-0.369187, -0.455665, 0.809982,
		-0.423375, 0.858323, 0.289887,
		29.674501, 31.203691, 50.144344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.602892, 30.724834, 49.210686>,  <29.970863, 30.602867, 49.941422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.602892, 30.724834, 49.210686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.500900, 30.377125, 49.041286>,  <29.439705, 30.168499, 48.939648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.500900, 30.377125, 49.041286>,  <29.602892, 30.724834, 49.210686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.500900, 30.377125, 49.041286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216762, 0.375440, -0.901143,
		0.942337, -0.321572, 0.092695,
		-0.254981, -0.869273, -0.423495,
		29.424406, 30.116343, 48.914238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.124243, 30.500546, 48.821953>,  <29.602892, 30.724834, 49.210686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.124243, 30.500546, 48.821953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.762289, 30.371222, 48.711205>,  <29.545116, 30.293627, 48.644756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.762289, 30.371222, 48.711205>,  <30.124243, 30.500546, 48.821953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.762289, 30.371222, 48.711205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107174, 0.456440, -0.883276,
		0.411941, -0.828937, -0.378376,
		-0.904886, -0.323305, -0.276867,
		29.490824, 30.274229, 48.628143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.074749, 30.104624, 48.235912>,  <30.124243, 30.500546, 48.821953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.074749, 30.104624, 48.235912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.699127, 30.242102, 48.232967>,  <29.473755, 30.324589, 48.231201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.699127, 30.242102, 48.232967>,  <30.074749, 30.104624, 48.235912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.699127, 30.242102, 48.232967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140252, 0.363465, -0.920990,
		-0.313861, -0.865892, -0.389516,
		-0.939053, 0.343693, -0.007365,
		29.417412, 30.345209, 48.230759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.633961, 29.733551, 47.681396>,  <30.074749, 30.104624, 48.235912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.633961, 29.733551, 47.681396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.578436, 30.111393, 47.800358>,  <29.545120, 30.338099, 47.871735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.578436, 30.111393, 47.800358>,  <29.633961, 29.733551, 47.681396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.578436, 30.111393, 47.800358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324659, 0.327123, -0.887461,
		-0.935589, -0.026636, -0.352084,
		-0.138813, 0.944606, 0.297405,
		29.536793, 30.394775, 47.889580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.132341, 30.106976, 47.226418>,  <29.633961, 29.733551, 47.681396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.132341, 30.106976, 47.226418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.444792, 30.301495, 47.383060>,  <29.632263, 30.418205, 47.477047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.444792, 30.301495, 47.383060>,  <29.132341, 30.106976, 47.226418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.444792, 30.301495, 47.383060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288844, 0.274595, -0.917151,
		-0.553541, 0.829525, 0.074030,
		0.781128, 0.486298, 0.391603,
		29.679131, 30.447384, 47.500542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.261456, 30.659960, 46.860115>,  <29.132341, 30.106976, 47.226418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.261456, 30.659960, 46.860115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.609398, 30.646179, 47.056953>,  <29.818163, 30.637911, 47.175056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.609398, 30.646179, 47.056953>,  <29.261456, 30.659960, 46.860115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.609398, 30.646179, 47.056953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465968, 0.384843, -0.796725,
		-0.161930, 0.922339, 0.350813,
		0.869858, -0.034454, 0.492098,
		29.870356, 30.635843, 47.204582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.720453, 31.251431, 46.587116>,  <29.261456, 30.659960, 46.860115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.720453, 31.251431, 46.587116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.009346, 31.053459, 46.780373>,  <30.182682, 30.934675, 46.896328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.009346, 31.053459, 46.780373>,  <29.720453, 31.251431, 46.587116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.009346, 31.053459, 46.780373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653873, 0.260887, -0.710203,
		0.225456, 0.828844, 0.512043,
		0.722232, -0.494930, 0.483140,
		30.226015, 30.904980, 46.925316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.226645, 31.704300, 46.563892>,  <29.720453, 31.251431, 46.587116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.226645, 31.704300, 46.563892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.383394, 31.344093, 46.639263>,  <30.477444, 31.127970, 46.684486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.383394, 31.344093, 46.639263>,  <30.226645, 31.704300, 46.563892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.383394, 31.344093, 46.639263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664202, 0.135200, -0.735226,
		0.636608, 0.413269, 0.651106,
		0.391875, -0.900517, 0.188424,
		30.500957, 31.073938, 46.695789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.896307, 31.782568, 46.545322>,  <30.226645, 31.704300, 46.563892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.896307, 31.782568, 46.545322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.891367, 31.384348, 46.507954>,  <30.888403, 31.145416, 46.485531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.891367, 31.384348, 46.507954>,  <30.896307, 31.782568, 46.545322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.891367, 31.384348, 46.507954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676812, 0.060452, -0.733670,
		0.736053, -0.072290, 0.673053,
		-0.012349, -0.995550, -0.093422,
		30.887663, 31.085684, 46.479927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.601116, 31.530018, 46.632870>,  <30.896307, 31.782568, 46.545322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.601116, 31.530018, 46.632870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.410765, 31.256218, 46.411961>,  <31.296555, 31.091938, 46.279415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.410765, 31.256218, 46.411961>,  <31.601116, 31.530018, 46.632870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.410765, 31.256218, 46.411961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694520, 0.092796, -0.713464,
		0.539614, -0.723084, 0.431238,
		-0.475877, -0.684499, -0.552270,
		31.268002, 31.050869, 46.246281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.093811, 31.106592, 46.362835>,  <31.601116, 31.530018, 46.632870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.093811, 31.106592, 46.362835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.782431, 31.060133, 46.116089>,  <31.595602, 31.032257, 45.968040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.782431, 31.060133, 46.116089>,  <32.093811, 31.106592, 46.362835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.782431, 31.060133, 46.116089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625927, -0.069663, -0.776764,
		0.047249, -0.990785, 0.126931,
		-0.778449, -0.116151, -0.616868,
		31.548897, 31.025288, 45.931030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.489441, 30.851015, 45.708630>,  <32.093811, 31.106592, 46.362835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.489441, 30.851015, 45.708630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.131786, 30.939152, 45.552696>,  <31.917194, 30.992035, 45.459137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.131786, 30.939152, 45.552696>,  <32.489441, 30.851015, 45.708630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.131786, 30.939152, 45.552696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419072, 0.104962, -0.901865,
		-0.157803, -0.969759, -0.186190,
		-0.894134, 0.220344, -0.389836,
		31.863546, 31.005255, 45.435745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.519295, 30.535849, 45.112034>,  <32.489441, 30.851015, 45.708630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.519295, 30.535849, 45.112034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.214584, 30.792177, 45.073986>,  <32.031757, 30.945974, 45.051155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.214584, 30.792177, 45.073986>,  <32.519295, 30.535849, 45.112034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.214584, 30.792177, 45.073986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155151, 0.037901, -0.987163,
		-0.628991, -0.766753, -0.128296,
		-0.761774, 0.640822, -0.095123,
		31.986052, 30.984425, 45.045448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121300, 30.348459, 44.618763>,  <32.519295, 30.535849, 45.112034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.121300, 30.348459, 44.618763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.010609, 30.732775, 44.625813>,  <31.944195, 30.963364, 44.630043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.010609, 30.732775, 44.625813>,  <32.121300, 30.348459, 44.618763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.010609, 30.732775, 44.625813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167323, 0.066236, -0.983675,
		-0.946269, -0.269262, -0.179091,
		-0.276728, 0.960787, 0.017623,
		31.927589, 31.021011, 44.631100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.713520, 30.390738, 44.026630>,  <32.121300, 30.348459, 44.618763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.713520, 30.390738, 44.026630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.846651, 30.754122, 44.127766>,  <31.926529, 30.972153, 44.188446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.846651, 30.754122, 44.127766>,  <31.713520, 30.390738, 44.026630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.846651, 30.754122, 44.127766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015483, 0.273352, -0.961789,
		-0.942860, 0.316196, 0.105045,
		0.332828, 0.908460, 0.252837,
		31.946499, 31.026659, 44.203617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.247917, 30.826200, 43.659405>,  <31.713520, 30.390738, 44.026630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.247917, 30.826200, 43.659405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.557137, 31.057838, 43.762978>,  <31.742668, 31.196821, 43.825119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.557137, 31.057838, 43.762978>,  <31.247917, 30.826200, 43.659405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.557137, 31.057838, 43.762978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062384, 0.336799, -0.939508,
		-0.631272, 0.742438, 0.224236,
		0.773048, 0.579096, 0.258928,
		31.789051, 31.231567, 43.840656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.184484, 31.550325, 43.454933>,  <31.247917, 30.826200, 43.659405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.184484, 31.550325, 43.454933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.579237, 31.494606, 43.487579>,  <31.816088, 31.461174, 43.507168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.579237, 31.494606, 43.487579>,  <31.184484, 31.550325, 43.454933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.579237, 31.494606, 43.487579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141503, 0.502896, -0.852685,
		0.077731, 0.853049, 0.516010,
		0.986881, -0.139297, 0.081618,
		31.875301, 31.452818, 43.512066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.407909, 32.135681, 43.121326>,  <31.184484, 31.550325, 43.454933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.407909, 32.135681, 43.121326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.725870, 31.893934, 43.142738>,  <31.916647, 31.748886, 43.155586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.725870, 31.893934, 43.142738>,  <31.407909, 32.135681, 43.121326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.725870, 31.893934, 43.142738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417283, 0.480521, -0.771346,
		0.440458, 0.635481, 0.634162,
		0.794903, -0.604371, 0.053526,
		31.964340, 31.712624, 43.158794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.035454, 32.459114, 43.356686>,  <31.407909, 32.135681, 43.121326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.035454, 32.459114, 43.356686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.133095, 32.142521, 43.132553>,  <32.191681, 31.952566, 42.998074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.133095, 32.142521, 43.132553>,  <32.035454, 32.459114, 43.356686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.133095, 32.142521, 43.132553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526040, 0.593486, -0.609144,
		0.814675, -0.146062, 0.561223,
		0.244105, -0.791480, -0.560333,
		32.206326, 31.905077, 42.964455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.626217, 32.529140, 43.120354>,  <32.035454, 32.459114, 43.356686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.626217, 32.529140, 43.120354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513535, 32.249207, 42.857792>,  <32.445923, 32.081245, 42.700256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513535, 32.249207, 42.857792>,  <32.626217, 32.529140, 43.120354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.513535, 32.249207, 42.857792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435546, 0.516300, -0.737384,
		0.854951, -0.493621, 0.159366,
		-0.281708, -0.699838, -0.656405,
		32.429024, 32.039257, 42.660870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.190578, 32.423206, 42.692711>,  <32.626217, 32.529140, 43.120354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.190578, 32.423206, 42.692711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.879566, 32.293980, 42.476906>,  <32.692959, 32.216446, 42.347420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.879566, 32.293980, 42.476906>,  <33.190578, 32.423206, 42.692711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.879566, 32.293980, 42.476906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400987, 0.406186, -0.821110,
		0.484415, -0.854776, -0.186277,
		-0.777529, -0.323063, -0.539517,
		32.646309, 32.197060, 42.315052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.434074, 32.173195, 42.157654>,  <33.190578, 32.423206, 42.692711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.434074, 32.173195, 42.157654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.059853, 32.231655, 42.029041>,  <32.835320, 32.266731, 41.951874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.059853, 32.231655, 42.029041>,  <33.434074, 32.173195, 42.157654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.059853, 32.231655, 42.029041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353132, 0.370215, -0.859208,
		-0.006535, -0.917378, -0.397964,
		-0.935551, 0.146149, -0.321535,
		32.779186, 32.275501, 41.932579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401970, 31.790970, 41.557034>,  <33.434074, 32.173195, 42.157654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.401970, 31.790970, 41.557034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.112301, 32.066269, 41.539635>,  <32.938499, 32.231449, 41.529194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.112301, 32.066269, 41.539635>,  <33.401970, 31.790970, 41.557034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.112301, 32.066269, 41.539635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267453, 0.222155, -0.937612,
		-0.635644, -0.690627, -0.344952,
		-0.724172, 0.688246, -0.043499,
		32.895050, 32.272743, 41.526585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.123447, 31.741600, 40.893055>,  <33.401970, 31.790970, 41.557034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.123447, 31.741600, 40.893055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.012428, 32.106140, 41.014652>,  <32.945816, 32.324863, 41.087608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.012428, 32.106140, 41.014652>,  <33.123447, 31.741600, 40.893055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.012428, 32.106140, 41.014652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193320, 0.362927, -0.911543,
		-0.941061, -0.194227, -0.276911,
		-0.277545, 0.911350, 0.303989,
		32.929165, 32.379547, 41.105850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.854839, 32.033566, 40.379471>,  <33.123447, 31.741600, 40.893055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.854839, 32.033566, 40.379471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.910900, 32.366562, 40.593876>,  <32.944538, 32.566360, 40.722519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.910900, 32.366562, 40.593876>,  <32.854839, 32.033566, 40.379471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.910900, 32.366562, 40.593876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208255, 0.504464, -0.837942,
		-0.967981, 0.229066, -0.102670,
		0.140151, 0.832493, 0.536016,
		32.952946, 32.616310, 40.754681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.384525, 32.517673, 40.018429>,  <32.854839, 32.033566, 40.379471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.384525, 32.517673, 40.018429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.636513, 32.746265, 40.228783>,  <32.787704, 32.883419, 40.354996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.636513, 32.746265, 40.228783>,  <32.384525, 32.517673, 40.018429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.636513, 32.746265, 40.228783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217814, 0.519954, -0.825957,
		-0.745454, 0.634869, 0.203076,
		0.629964, 0.571480, 0.525886,
		32.825500, 32.917709, 40.386547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.086670, 33.170639, 39.929989>,  <32.384525, 32.517673, 40.018429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.086670, 33.170639, 39.929989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.473221, 33.195049, 40.029903>,  <32.705151, 33.209694, 40.089851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.473221, 33.195049, 40.029903>,  <32.086670, 33.170639, 39.929989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.473221, 33.195049, 40.029903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194827, 0.460182, -0.866184,
		-0.167801, 0.885725, 0.432821,
		0.966377, 0.061021, 0.249782,
		32.763134, 33.213356, 40.104839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.202942, 33.890579, 39.893349>,  <32.086670, 33.170639, 39.929989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.202942, 33.890579, 39.893349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.572224, 33.739235, 39.866390>,  <32.793793, 33.648426, 39.850216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.572224, 33.739235, 39.866390>,  <32.202942, 33.890579, 39.893349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.572224, 33.739235, 39.866390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170906, 0.561250, -0.809809,
		0.344226, 0.736098, 0.582811,
		0.923201, -0.378363, -0.067393,
		32.849182, 33.625725, 39.846172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.565708, 34.468433, 39.785316>,  <32.202942, 33.890579, 39.893349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.565708, 34.468433, 39.785316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.775593, 34.161915, 39.637005>,  <32.901524, 33.978004, 39.548019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.775593, 34.161915, 39.637005>,  <32.565708, 34.468433, 39.785316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.775593, 34.161915, 39.637005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195377, 0.532328, -0.823684,
		0.828556, 0.359755, 0.429034,
		0.524711, -0.766292, -0.370776,
		32.933006, 33.932026, 39.525772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.073849, 34.826603, 39.437885>,  <32.565708, 34.468433, 39.785316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.073849, 34.826603, 39.437885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.116440, 34.455303, 39.295326>,  <33.141994, 34.232525, 39.209789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.116440, 34.455303, 39.295326>,  <33.073849, 34.826603, 39.437885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116440, 34.455303, 39.295326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226062, 0.371653, -0.900428,
		0.968276, 0.015310, 0.249415,
		0.106482, -0.928245, -0.356402,
		33.148384, 34.176830, 39.188404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696560, 34.785858, 39.067245>,  <33.073849, 34.826603, 39.437885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696560, 34.785858, 39.067245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.506245, 34.473686, 38.904984>,  <33.392056, 34.286385, 38.807625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.506245, 34.473686, 38.904984>,  <33.696560, 34.785858, 39.067245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.506245, 34.473686, 38.904984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374304, 0.237706, -0.896322,
		0.795941, -0.578299, 0.179019,
		-0.475788, -0.780427, -0.405660,
		33.363506, 34.239559, 38.783287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157375, 34.466244, 38.689690>,  <33.696560, 34.785858, 39.067245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157375, 34.466244, 38.689690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802608, 34.373302, 38.529991>,  <33.589748, 34.317539, 38.434174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802608, 34.373302, 38.529991>,  <34.157375, 34.466244, 38.689690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802608, 34.373302, 38.529991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352547, 0.217991, -0.910050,
		0.298487, -0.947888, -0.111423,
		-0.886914, -0.232356, -0.399242,
		33.536533, 34.303596, 38.410217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349136, 34.047279, 38.190563>,  <34.157375, 34.466244, 38.689690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349136, 34.047279, 38.190563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.981998, 34.172195, 38.092556>,  <33.761715, 34.247143, 38.033752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.981998, 34.172195, 38.092556>,  <34.349136, 34.047279, 38.190563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.981998, 34.172195, 38.092556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265019, 0.022596, -0.963978,
		-0.295503, -0.949718, -0.103502,
		-0.917847, 0.312289, -0.245017,
		33.706646, 34.265881, 38.019051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163204, 33.627956, 37.610695>,  <34.349136, 34.047279, 38.190563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163204, 33.627956, 37.610695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931778, 33.954182, 37.606415>,  <33.792923, 34.149918, 37.603848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931778, 33.954182, 37.606415>,  <34.163204, 33.627956, 37.610695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931778, 33.954182, 37.606415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008836, -0.006854, -0.999938,
		-0.815589, -0.578622, -0.003241,
		-0.578564, 0.815567, -0.010703,
		33.758209, 34.198853, 37.603203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.810379, 33.606506, 36.929363>,  <34.163204, 33.627956, 37.610695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.810379, 33.606506, 36.929363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.686764, 33.970951, 37.038452>,  <33.612595, 34.189617, 37.103905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.686764, 33.970951, 37.038452>,  <33.810379, 33.606506, 36.929363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.686764, 33.970951, 37.038452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161980, 0.232150, -0.959098,
		-0.937155, -0.340572, 0.075838,
		-0.309036, 0.911107, 0.272726,
		33.594051, 34.244282, 37.120270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.027725, 33.778358, 36.781097>,  <33.810379, 33.606506, 36.929363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.027725, 33.778358, 36.781097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254883, 34.107174, 36.764366>,  <33.391178, 34.304462, 36.754326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254883, 34.107174, 36.764366>,  <33.027725, 33.778358, 36.781097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254883, 34.107174, 36.764366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155845, 0.057486, -0.986107,
		-0.808214, 0.566522, 0.160756,
		0.567893, 0.822039, -0.041829,
		33.425251, 34.353786, 36.751816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.783955, 34.008438, 36.206078>,  <33.027725, 33.778358, 36.781097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.783955, 34.008438, 36.206078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066174, 34.286037, 36.263451>,  <33.235504, 34.452599, 36.297874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066174, 34.286037, 36.263451>,  <32.783955, 34.008438, 36.206078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.066174, 34.286037, 36.263451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108503, 0.305803, -0.945892,
		-0.700309, 0.651807, 0.291059,
		0.705545, 0.693998, 0.143434,
		33.277836, 34.494236, 36.306480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.508888, 34.710857, 36.201244>,  <32.783955, 34.008438, 36.206078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.508888, 34.710857, 36.201244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.897285, 34.705482, 36.105747>,  <33.130322, 34.702259, 36.048450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.897285, 34.705482, 36.105747>,  <32.508888, 34.710857, 36.201244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.897285, 34.705482, 36.105747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198067, 0.514196, -0.834489,
		0.133970, 0.857568, 0.496618,
		0.970990, -0.013433, -0.238743,
		33.188583, 34.701454, 36.034126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.691711, 35.389477, 35.987556>,  <32.508888, 34.710857, 36.201244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.691711, 35.389477, 35.987556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.998066, 35.180344, 35.837856>,  <33.181877, 35.054863, 35.748035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.998066, 35.180344, 35.837856>,  <32.691711, 35.389477, 35.987556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.998066, 35.180344, 35.837856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131512, 0.442368, -0.887139,
		0.629384, 0.728665, 0.270044,
		0.765886, -0.522837, -0.374247,
		33.227833, 35.023491, 35.725582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.091610, 35.900520, 35.646557>,  <32.691711, 35.389477, 35.987556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.091610, 35.900520, 35.646557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.175339, 35.544151, 35.485340>,  <33.225574, 35.330330, 35.388611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.175339, 35.544151, 35.485340>,  <33.091610, 35.900520, 35.646557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.175339, 35.544151, 35.485340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224659, 0.357334, -0.906554,
		0.951690, 0.280305, -0.125357,
		0.209318, -0.890921, -0.403045,
		33.238132, 35.276875, 35.364426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.690895, 36.067299, 35.091816>,  <33.091610, 35.900520, 35.646557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.690895, 36.067299, 35.091816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.500057, 35.720852, 35.032188>,  <33.385555, 35.512981, 34.996414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.500057, 35.720852, 35.032188>,  <33.690895, 36.067299, 35.091816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.500057, 35.720852, 35.032188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216132, 0.280032, -0.935344,
		0.851862, -0.414029, -0.320797,
		-0.477093, -0.866119, -0.149064,
		33.356930, 35.461018, 34.987469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.830101, 35.918198, 34.338543>,  <33.690895, 36.067299, 35.091816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.830101, 35.918198, 34.338543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.505161, 35.702213, 34.426659>,  <33.310196, 35.572624, 34.479527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.505161, 35.702213, 34.426659>,  <33.830101, 35.918198, 34.338543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505161, 35.702213, 34.426659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314417, 0.087391, -0.945254,
		0.491148, -0.837142, -0.240765,
		-0.812352, -0.539960, 0.220289,
		33.261456, 35.540226, 34.492744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.013546, 35.245426, 34.000645>,  <33.830101, 35.918198, 34.338543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.013546, 35.245426, 34.000645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630585, 35.344162, 34.060585>,  <33.400810, 35.403404, 34.096550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630585, 35.344162, 34.060585>,  <34.013546, 35.245426, 34.000645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630585, 35.344162, 34.060585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181536, -0.110932, -0.977107,
		-0.224563, -0.962687, 0.151016,
		-0.957401, 0.246837, 0.149852,
		33.343365, 35.418213, 34.105541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434448, 34.700832, 33.628471>,  <34.013546, 35.245426, 34.000645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434448, 34.700832, 33.628471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.741901, 34.576790, 33.404671>,  <34.926373, 34.502365, 33.270390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.741901, 34.576790, 33.404671>,  <34.434448, 34.700832, 33.628471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.741901, 34.576790, 33.404671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314670, -0.578216, 0.752761,
		-0.556943, -0.754656, -0.346858,
		0.768634, -0.310099, -0.559501,
		34.972492, 34.483757, 33.236820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399704, 33.942413, 33.636620>,  <34.434448, 34.700832, 33.628471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399704, 33.942413, 33.636620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.766403, 34.093632, 33.584984>,  <34.986423, 34.184361, 33.554005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.766403, 34.093632, 33.584984>,  <34.399704, 33.942413, 33.636620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766403, 34.093632, 33.584984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366242, -0.666359, 0.649486,
		0.159515, -0.642689, -0.749336,
		0.916745, 0.378042, -0.129085,
		35.041428, 34.207043, 33.546257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.854855, 33.343693, 33.564796>,  <34.399704, 33.942413, 33.636620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.854855, 33.343693, 33.564796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088985, 33.648411, 33.675842>,  <35.229462, 33.831242, 33.742470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088985, 33.648411, 33.675842>,  <34.854855, 33.343693, 33.564796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088985, 33.648411, 33.675842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377728, -0.559173, 0.738002,
		0.717437, -0.327109, -0.615048,
		0.585325, 0.761791, 0.277614,
		35.264584, 33.876949, 33.759125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572605, 33.064716, 33.527714>,  <34.854855, 33.343693, 33.564796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572605, 33.064716, 33.527714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.545525, 33.380749, 33.771416>,  <35.529278, 33.570366, 33.917637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.545525, 33.380749, 33.771416>,  <35.572605, 33.064716, 33.527714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.545525, 33.380749, 33.771416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303510, -0.565407, 0.766940,
		0.950420, 0.236836, -0.201520,
		-0.067698, 0.790078, 0.609257,
		35.525215, 33.617771, 33.954193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.200233, 33.108356, 33.864559>,  <35.572605, 33.064716, 33.527714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.200233, 33.108356, 33.864559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924004, 33.301731, 34.079739>,  <35.758263, 33.417755, 34.208847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924004, 33.301731, 34.079739>,  <36.200233, 33.108356, 33.864559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924004, 33.301731, 34.079739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337676, -0.442228, 0.830909,
		0.639590, 0.755460, 0.142147,
		-0.690579, 0.483441, 0.537945,
		35.716831, 33.446762, 34.241123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.544628, 33.207954, 34.421783>,  <36.200233, 33.108356, 33.864559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.544628, 33.207954, 34.421783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.191498, 33.311783, 34.578369>,  <35.979622, 33.374081, 34.672321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.191498, 33.311783, 34.578369>,  <36.544628, 33.207954, 34.421783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191498, 33.311783, 34.578369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241997, -0.462952, 0.852710,
		0.402567, 0.847526, 0.345890,
		-0.882824, 0.259568, 0.391467,
		35.926651, 33.389652, 34.695808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683132, 33.552322, 35.134777>,  <36.544628, 33.207954, 34.421783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.683132, 33.552322, 35.134777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.317295, 33.390640, 35.130032>,  <36.097794, 33.293633, 35.127186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.317295, 33.390640, 35.130032>,  <36.683132, 33.552322, 35.134777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.317295, 33.390640, 35.130032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144274, -0.353570, 0.924215,
		-0.377767, 0.843568, 0.381688,
		-0.914591, -0.404205, -0.011862,
		36.042919, 33.269379, 35.126472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494617, 33.682598, 35.854366>,  <36.683132, 33.552322, 35.134777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.494617, 33.682598, 35.854366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.216194, 33.424831, 35.727730>,  <36.049141, 33.270172, 35.651749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.216194, 33.424831, 35.727730>,  <36.494617, 33.682598, 35.854366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.216194, 33.424831, 35.727730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012813, -0.429723, 0.902870,
		-0.717868, 0.632509, 0.290856,
		-0.696061, -0.644415, -0.316589,
		36.007378, 33.231506, 35.632751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032497, 33.680012, 36.313835>,  <36.494617, 33.682598, 35.854366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.032497, 33.680012, 36.313835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.979507, 33.319077, 36.149773>,  <35.947712, 33.102516, 36.051334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.979507, 33.319077, 36.149773>,  <36.032497, 33.680012, 36.313835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.979507, 33.319077, 36.149773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070803, -0.404135, 0.911955,
		-0.988654, 0.149854, -0.010349,
		-0.132478, -0.902341, -0.410160,
		35.939766, 33.048374, 36.026726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.475502, 33.526432, 36.626583>,  <36.032497, 33.680012, 36.313835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.475502, 33.526432, 36.626583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665707, 33.196056, 36.505444>,  <35.779831, 32.997833, 36.432758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665707, 33.196056, 36.505444>,  <35.475502, 33.526432, 36.626583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665707, 33.196056, 36.505444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178287, -0.427594, 0.886215,
		-0.861453, -0.367412, -0.350580,
		0.475512, -0.825937, -0.302848,
		35.808361, 32.948277, 36.414589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033180, 33.034752, 36.859444>,  <35.475502, 33.526432, 36.626583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.033180, 33.034752, 36.859444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.372860, 32.835041, 36.790642>,  <35.576668, 32.715214, 36.749359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.372860, 32.835041, 36.790642>,  <35.033180, 33.034752, 36.859444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.372860, 32.835041, 36.790642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210963, -0.619351, 0.756240,
		-0.484101, -0.605913, -0.631281,
		0.849200, -0.499273, -0.172003,
		35.627621, 32.685261, 36.739040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781307, 32.404396, 36.859547>,  <35.033180, 33.034752, 36.859444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781307, 32.404396, 36.859547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.174225, 32.374901, 36.928440>,  <35.409977, 32.357204, 36.969776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.174225, 32.374901, 36.928440>,  <34.781307, 32.404396, 36.859547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.174225, 32.374901, 36.928440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184941, -0.528640, 0.828454,
		0.029963, -0.845637, -0.532916,
		0.982293, -0.073735, 0.172233,
		35.468914, 32.352779, 36.980110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.921608, 31.636190, 36.990818>,  <34.781307, 32.404396, 36.859547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.921608, 31.636190, 36.990818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234913, 31.829340, 37.147449>,  <35.422894, 31.945230, 37.241428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234913, 31.829340, 37.147449>,  <34.921608, 31.636190, 36.990818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.234913, 31.829340, 37.147449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095829, -0.528562, 0.843468,
		0.614265, -0.698180, -0.367728,
		0.783260, 0.482874, 0.391583,
		35.469891, 31.974201, 37.264923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493896, 31.177431, 37.159443>,  <34.921608, 31.636190, 36.990818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493896, 31.177431, 37.159443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520027, 31.483541, 37.415596>,  <35.535706, 31.667208, 37.569286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520027, 31.483541, 37.415596>,  <35.493896, 31.177431, 37.159443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520027, 31.483541, 37.415596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162217, -0.641359, 0.749896,
		0.984590, 0.054891, -0.166040,
		0.065329, 0.765275, 0.640380,
		35.539627, 31.713123, 37.607712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794361, 30.860836, 37.762825>,  <35.493896, 31.177431, 37.159443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794361, 30.860836, 37.762825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.705605, 31.225452, 37.901302>,  <35.652351, 31.444223, 37.984390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.705605, 31.225452, 37.901302>,  <35.794361, 30.860836, 37.762825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705605, 31.225452, 37.901302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154481, -0.383428, 0.910559,
		0.962756, 0.148565, 0.225896,
		-0.221892, 0.911543, 0.346197,
		35.639038, 31.498915, 38.005161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895199, 30.729088, 38.483818>,  <35.794361, 30.860836, 37.762825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.895199, 30.729088, 38.483818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.663715, 31.055212, 38.476219>,  <35.524826, 31.250887, 38.471661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.663715, 31.055212, 38.476219>,  <35.895199, 30.729088, 38.483818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.663715, 31.055212, 38.476219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323514, -0.208125, 0.923051,
		0.748619, 0.540327, 0.384209,
		-0.578713, 0.815310, -0.018997,
		35.490101, 31.299805, 38.470520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908142, 30.876524, 39.144451>,  <35.895199, 30.729088, 38.483818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908142, 30.876524, 39.144451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618534, 31.121986, 39.018456>,  <35.444767, 31.269264, 38.942860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618534, 31.121986, 39.018456>,  <35.908142, 30.876524, 39.144451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.618534, 31.121986, 39.018456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444009, -0.065163, 0.893650,
		0.527868, 0.786880, 0.319648,
		-0.724024, 0.613656, -0.314985,
		35.401325, 31.306084, 38.923962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.935802, 31.399099, 39.635426>,  <35.908142, 30.876524, 39.144451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.935802, 31.399099, 39.635426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.582607, 31.394791, 39.447716>,  <35.370689, 31.392206, 39.335091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.582607, 31.394791, 39.447716>,  <35.935802, 31.399099, 39.635426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582607, 31.394791, 39.447716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462676, -0.148653, 0.873976,
		-0.079173, 0.988831, 0.126275,
		-0.882985, -0.010771, -0.469277,
		35.317711, 31.391560, 39.306934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.560074, 31.826548, 40.001141>,  <35.935802, 31.399099, 39.635426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.560074, 31.826548, 40.001141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.286045, 31.605804, 39.810932>,  <35.121628, 31.473358, 39.696808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.286045, 31.605804, 39.810932>,  <35.560074, 31.826548, 40.001141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.286045, 31.605804, 39.810932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472330, -0.160462, 0.866693,
		-0.554594, 0.818356, -0.150730,
		-0.685076, -0.551857, -0.475525,
		35.080521, 31.440247, 39.668274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.914101, 32.179783, 40.032822>,  <35.560074, 31.826548, 40.001141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.914101, 32.179783, 40.032822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.855541, 31.785114, 40.004410>,  <34.820404, 31.548313, 39.987362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.855541, 31.785114, 40.004410>,  <34.914101, 32.179783, 40.032822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.855541, 31.785114, 40.004410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404865, -0.005748, 0.914358,
		-0.902580, 0.162619, -0.398628,
		-0.146400, -0.986672, -0.071027,
		34.811623, 31.489113, 39.983101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434387, 32.053318, 40.536812>,  <34.914101, 32.179783, 40.032822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434387, 32.053318, 40.536812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566608, 31.683134, 40.462772>,  <34.645939, 31.461023, 40.418350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566608, 31.683134, 40.462772>,  <34.434387, 32.053318, 40.536812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566608, 31.683134, 40.462772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318577, -0.294020, 0.901144,
		-0.888395, -0.238906, -0.392019,
		0.330550, -0.925460, -0.185096,
		34.665775, 31.405497, 40.407242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.896835, 31.691647, 40.896065>,  <34.434387, 32.053318, 40.536812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.896835, 31.691647, 40.896065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.209728, 31.445797, 40.855366>,  <34.397465, 31.298286, 40.830944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.209728, 31.445797, 40.855366>,  <33.896835, 31.691647, 40.896065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.209728, 31.445797, 40.855366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214101, -0.418595, 0.882575,
		-0.585046, -0.668591, -0.459029,
		0.782229, -0.614626, -0.101752,
		34.444397, 31.261410, 40.824841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.578060, 31.065067, 41.138554>,  <33.896835, 31.691647, 40.896065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.578060, 31.065067, 41.138554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.974262, 31.017635, 41.166370>,  <34.211983, 30.989176, 41.183060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.974262, 31.017635, 41.166370>,  <33.578060, 31.065067, 41.138554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.974262, 31.017635, 41.166370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132024, -0.679668, 0.721541,
		-0.038299, -0.723872, -0.688871,
		0.990506, -0.118582, 0.069538,
		34.271416, 30.982061, 41.187233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.759380, 30.285707, 41.170773>,  <33.578060, 31.065067, 41.138554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.759380, 30.285707, 41.170773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.066921, 30.486671, 41.328991>,  <34.251446, 30.607250, 41.423920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.066921, 30.486671, 41.328991>,  <33.759380, 30.285707, 41.170773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.066921, 30.486671, 41.328991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191360, -0.409450, 0.892038,
		0.610125, -0.761534, -0.218664,
		0.768849, 0.502412, 0.395542,
		34.297577, 30.637396, 41.447655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189644, 29.755978, 41.519829>,  <33.759380, 30.285707, 41.170773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.189644, 29.755978, 41.519829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.253967, 30.120453, 41.671555>,  <34.292561, 30.339138, 41.762589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.253967, 30.120453, 41.671555>,  <34.189644, 29.755978, 41.519829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.253967, 30.120453, 41.671555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118348, -0.363742, 0.923951,
		0.979865, -0.193470, 0.049344,
		0.160808, 0.911187, 0.379315,
		34.302208, 30.393808, 41.785351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.580372, 29.581091, 42.194267>,  <34.189644, 29.755978, 41.519829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.580372, 29.581091, 42.194267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.455677, 29.959600, 42.228645>,  <34.380859, 30.186707, 42.249271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.455677, 29.959600, 42.228645>,  <34.580372, 29.581091, 42.194267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.455677, 29.959600, 42.228645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079620, -0.116154, 0.990035,
		0.946828, 0.301784, 0.111551,
		-0.311734, 0.946274, 0.085950,
		34.362156, 30.243483, 42.254429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.888233, 29.828428, 42.784920>,  <34.580372, 29.581091, 42.194267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.888233, 29.828428, 42.784920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.572296, 30.069227, 42.738007>,  <34.382736, 30.213707, 42.709858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.572296, 30.069227, 42.738007>,  <34.888233, 29.828428, 42.784920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.572296, 30.069227, 42.738007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261146, -0.157075, 0.952434,
		0.554940, 0.782897, 0.281273,
		-0.789838, 0.601997, -0.117283,
		34.335346, 30.249826, 42.702820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.928448, 30.412182, 43.278313>,  <34.888233, 29.828428, 42.784920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.928448, 30.412182, 43.278313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541340, 30.361092, 43.191490>,  <34.309074, 30.330437, 43.139397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541340, 30.361092, 43.191490>,  <34.928448, 30.412182, 43.278313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541340, 30.361092, 43.191490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209540, -0.069786, 0.975307,
		-0.139720, 0.989351, 0.040773,
		-0.967766, -0.127727, -0.217059,
		34.251011, 30.322773, 43.126373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.539780, 30.790226, 43.831295>,  <34.928448, 30.412182, 43.278313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.539780, 30.790226, 43.831295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.281746, 30.544540, 43.649479>,  <34.126926, 30.397129, 43.540390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.281746, 30.544540, 43.649479>,  <34.539780, 30.790226, 43.831295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.281746, 30.544540, 43.649479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272278, -0.371039, 0.887803,
		-0.713951, 0.696472, 0.072116,
		-0.645088, -0.614212, -0.454538,
		34.088219, 30.360277, 43.513119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.868801, 30.928740, 44.170681>,  <34.539780, 30.790226, 43.831295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.868801, 30.928740, 44.170681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832996, 30.571251, 43.994839>,  <33.811512, 30.356758, 43.889336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832996, 30.571251, 43.994839>,  <33.868801, 30.928740, 44.170681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.832996, 30.571251, 43.994839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366436, -0.380865, 0.848921,
		-0.926128, 0.237073, -0.293400,
		-0.089511, -0.893721, -0.439602,
		33.806145, 30.303135, 43.862957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.231636, 30.781206, 44.219204>,  <33.868801, 30.928740, 44.170681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.231636, 30.781206, 44.219204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439472, 30.440096, 44.198021>,  <33.564175, 30.235430, 44.185310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439472, 30.440096, 44.198021>,  <33.231636, 30.781206, 44.219204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439472, 30.440096, 44.198021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300937, -0.240659, 0.922779,
		-0.799665, -0.463530, -0.381675,
		0.519589, -0.852774, -0.052954,
		33.595348, 30.184263, 44.182137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.820343, 30.192274, 44.484211>,  <33.231636, 30.781206, 44.219204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.820343, 30.192274, 44.484211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.183765, 30.025265, 44.489849>,  <33.401817, 29.925058, 44.493233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.183765, 30.025265, 44.489849>,  <32.820343, 30.192274, 44.484211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.183765, 30.025265, 44.489849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229176, -0.469924, 0.852438,
		-0.349286, -0.777720, -0.522639,
		0.908558, -0.417521, 0.014097,
		33.456333, 29.900007, 44.494080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.660332, 29.496058, 44.495583>,  <32.820343, 30.192274, 44.484211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.660332, 29.496058, 44.495583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.033588, 29.539030, 44.632812>,  <33.257542, 29.564814, 44.715149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.033588, 29.539030, 44.632812>,  <32.660332, 29.496058, 44.495583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.033588, 29.539030, 44.632812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163419, -0.723244, 0.670979,
		0.320210, -0.682185, -0.657335,
		0.933145, 0.107433, 0.343072,
		33.313534, 29.571260, 44.735733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.893490, 28.814110, 44.652218>,  <32.660332, 29.496058, 44.495583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.893490, 28.814110, 44.652218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137520, 29.065783, 44.844856>,  <33.283939, 29.216787, 44.960442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137520, 29.065783, 44.844856>,  <32.893490, 28.814110, 44.652218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137520, 29.065783, 44.844856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320160, -0.360237, 0.876200,
		0.724781, -0.688736, -0.018332,
		0.610074, 0.629184, 0.481598,
		33.320541, 29.254538, 44.989334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.739258, 28.510307, 45.245647>,  <32.893490, 28.814110, 44.652218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.739258, 28.510307, 45.245647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987728, 28.804001, 45.355225>,  <33.136810, 28.980217, 45.420971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987728, 28.804001, 45.355225>,  <32.739258, 28.510307, 45.245647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.987728, 28.804001, 45.355225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302841, -0.097506, 0.948040,
		0.722793, -0.671860, 0.161788,
		0.621175, 0.734232, 0.273944,
		33.174080, 29.024271, 45.437408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.257523, 28.296270, 45.733849>,  <32.739258, 28.510307, 45.245647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.257523, 28.296270, 45.733849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.163715, 28.681883, 45.783890>,  <33.107433, 28.913250, 45.813915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.163715, 28.681883, 45.783890>,  <33.257523, 28.296270, 45.733849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.163715, 28.681883, 45.783890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280085, -0.190240, 0.940936,
		0.930889, 0.185625, 0.314625,
		-0.234516, 0.964029, 0.125102,
		33.093361, 28.971092, 45.821419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.358959, 28.364555, 46.445950>,  <33.257523, 28.296270, 45.733849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.358959, 28.364555, 46.445950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.147953, 28.685061, 46.333019>,  <33.021351, 28.877363, 46.265263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.147953, 28.685061, 46.333019>,  <33.358959, 28.364555, 46.445950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.147953, 28.685061, 46.333019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413358, 0.048255, 0.909289,
		0.742204, 0.596363, 0.305753,
		-0.527513, 0.801263, -0.282327,
		32.989700, 28.925440, 46.248322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.514572, 28.900814, 46.918087>,  <33.358959, 28.364555, 46.445950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.514572, 28.900814, 46.918087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.160427, 28.965542, 46.743752>,  <32.947941, 29.004377, 46.639149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.160427, 28.965542, 46.743752>,  <33.514572, 28.900814, 46.918087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.160427, 28.965542, 46.743752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424998, 0.098319, 0.899839,
		0.188462, 0.981911, -0.018275,
		-0.885358, 0.161819, -0.435840,
		32.894821, 29.014088, 46.612999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.268963, 29.512442, 47.176971>,  <33.514572, 28.900814, 46.918087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.268963, 29.512442, 47.176971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.936443, 29.317921, 47.069298>,  <32.736931, 29.201208, 47.004696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.936443, 29.317921, 47.069298>,  <33.268963, 29.512442, 47.176971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.936443, 29.317921, 47.069298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421115, 0.234945, 0.876049,
		-0.362781, 0.841612, -0.400098,
		-0.831295, -0.486302, -0.269182,
		32.687054, 29.172029, 46.988544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749924, 30.059446, 47.545059>,  <33.268963, 29.512442, 47.176971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749924, 30.059446, 47.545059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.050434, 30.205450, 47.765003>,  <34.230740, 30.293053, 47.896969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.050434, 30.205450, 47.765003>,  <33.749924, 30.059446, 47.545059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.050434, 30.205450, 47.765003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244078, 0.620410, -0.745330,
		-0.613193, 0.694160, 0.377010,
		0.751279, 0.365012, 0.549860,
		34.275818, 30.314953, 47.929962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.634129, 30.784960, 47.627762>,  <33.749924, 30.059446, 47.545059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.634129, 30.784960, 47.627762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.023308, 30.711445, 47.683743>,  <34.256817, 30.667336, 47.717331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.023308, 30.711445, 47.683743>,  <33.634129, 30.784960, 47.627762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.023308, 30.711445, 47.683743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230086, 0.716932, -0.658079,
		0.020607, 0.672481, 0.739827,
		0.972952, -0.183785, 0.139954,
		34.315193, 30.656309, 47.725727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948879, 31.404202, 47.745197>,  <33.634129, 30.784960, 47.627762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948879, 31.404202, 47.745197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237392, 31.162687, 47.609432>,  <34.410500, 31.017778, 47.527973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237392, 31.162687, 47.609432>,  <33.948879, 31.404202, 47.745197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237392, 31.162687, 47.609432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274603, 0.699135, -0.660154,
		0.635885, 0.382952, 0.670073,
		0.721279, -0.603786, -0.339410,
		34.453777, 30.981552, 47.507610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382946, 31.817572, 47.520054>,  <33.948879, 31.404202, 47.745197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.382946, 31.817572, 47.520054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.538601, 31.497337, 47.337784>,  <34.631992, 31.305197, 47.228424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.538601, 31.497337, 47.337784>,  <34.382946, 31.817572, 47.520054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.538601, 31.497337, 47.337784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255217, 0.568994, -0.781735,
		0.885120, 0.187906, 0.425739,
		0.389135, -0.800586, -0.455671,
		34.655342, 31.257162, 47.201084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.050381, 31.981909, 47.311817>,  <34.382946, 31.817572, 47.520054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.050381, 31.981909, 47.311817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.943871, 31.675272, 47.078087>,  <34.879963, 31.491289, 46.937851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.943871, 31.675272, 47.078087>,  <35.050381, 31.981909, 47.311817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943871, 31.675272, 47.078087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342202, 0.491535, -0.800806,
		0.901106, -0.413194, 0.131443,
		-0.266280, -0.766592, -0.584321,
		34.863987, 31.445293, 46.902790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557407, 32.008961, 46.839733>,  <35.050381, 31.981909, 47.311817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.557407, 32.008961, 46.839733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.307056, 31.774256, 46.634216>,  <35.156845, 31.633432, 46.510906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.307056, 31.774256, 46.634216>,  <35.557407, 32.008961, 46.839733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307056, 31.774256, 46.634216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063951, 0.617949, -0.783613,
		0.777294, -0.523305, -0.349237,
		-0.625879, -0.586763, -0.513793,
		35.119293, 31.598227, 46.480080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864540, 31.876850, 46.219215>,  <35.557407, 32.008961, 46.839733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864540, 31.876850, 46.219215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.475342, 31.818283, 46.147846>,  <35.241821, 31.783144, 46.105022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.475342, 31.818283, 46.147846>,  <35.864540, 31.876850, 46.219215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475342, 31.818283, 46.147846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115166, 0.361957, -0.925053,
		0.200023, -0.920625, -0.335322,
		-0.972999, -0.146414, -0.178424,
		35.183441, 31.774359, 46.094318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864510, 31.526739, 45.618816>,  <35.864540, 31.876850, 46.219215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864510, 31.526739, 45.618816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.491451, 31.669207, 45.641857>,  <35.267616, 31.754686, 45.655682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.491451, 31.669207, 45.641857>,  <35.864510, 31.526739, 45.618816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491451, 31.669207, 45.641857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032180, 0.241127, -0.969960,
		-0.359357, -0.902775, -0.236348,
		-0.932645, 0.356167, 0.057599,
		35.211658, 31.776056, 45.659138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.654423, 31.295881, 45.039246>,  <35.864510, 31.526739, 45.618816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.654423, 31.295881, 45.039246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.396099, 31.578737, 45.154400>,  <35.241104, 31.748451, 45.223492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.396099, 31.578737, 45.154400>,  <35.654423, 31.295881, 45.039246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.396099, 31.578737, 45.154400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119483, 0.278816, -0.952883,
		-0.754091, -0.649779, -0.095571,
		-0.645810, 0.707141, 0.287890,
		35.202354, 31.790880, 45.240768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181141, 31.311371, 44.504715>,  <35.654423, 31.295881, 45.039246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.181141, 31.311371, 44.504715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.137005, 31.667004, 44.682415>,  <35.110523, 31.880383, 44.789036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.137005, 31.667004, 44.682415>,  <35.181141, 31.311371, 44.504715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137005, 31.667004, 44.682415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110037, 0.433304, -0.894505,
		-0.987784, -0.147584, 0.050021,
		-0.110340, 0.889082, 0.444250,
		35.103901, 31.933727, 44.815689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648247, 31.622471, 44.191841>,  <35.181141, 31.311371, 44.504715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648247, 31.622471, 44.191841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.801445, 31.948128, 44.366417>,  <34.893364, 32.143520, 44.471165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.801445, 31.948128, 44.366417>,  <34.648247, 31.622471, 44.191841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801445, 31.948128, 44.366417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009584, 0.475946, -0.879422,
		-0.923699, 0.332634, 0.190090,
		0.382998, 0.814143, 0.436443,
		34.916344, 32.192371, 44.497349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224091, 32.165470, 43.927944>,  <34.648247, 31.622471, 44.191841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224091, 32.165470, 43.927944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.584198, 32.303978, 44.033482>,  <34.800262, 32.387081, 44.096806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.584198, 32.303978, 44.033482>,  <34.224091, 32.165470, 43.927944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584198, 32.303978, 44.033482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088727, 0.739298, -0.667507,
		-0.426197, 0.577525, 0.696291,
		0.900269, 0.346269, 0.263844,
		34.854279, 32.407860, 44.112637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.160782, 32.933262, 44.017307>,  <34.224091, 32.165470, 43.927944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.160782, 32.933262, 44.017307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.539963, 32.838245, 43.932487>,  <34.767471, 32.781235, 43.881596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.539963, 32.838245, 43.932487>,  <34.160782, 32.933262, 44.017307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539963, 32.838245, 43.932487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012032, 0.638740, -0.769329,
		0.318188, 0.731838, 0.602636,
		0.947951, -0.237540, -0.212045,
		34.824348, 32.766983, 43.868874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538502, 33.572510, 43.823338>,  <34.160782, 32.933262, 44.017307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538502, 33.572510, 43.823338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.757866, 33.283142, 43.655567>,  <34.889484, 33.109524, 43.554905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.757866, 33.283142, 43.655567>,  <34.538502, 33.572510, 43.823338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757866, 33.283142, 43.655567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094837, 0.444535, -0.890727,
		0.830814, 0.528261, 0.175181,
		0.548411, -0.723414, -0.419425,
		34.922390, 33.066116, 43.529739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066021, 33.940498, 43.473949>,  <34.538502, 33.572510, 43.823338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066021, 33.940498, 43.473949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.096874, 33.578617, 43.306351>,  <35.115387, 33.361488, 43.205791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.096874, 33.578617, 43.306351>,  <35.066021, 33.940498, 43.473949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.096874, 33.578617, 43.306351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319019, 0.420554, -0.849330,
		0.944604, -0.068154, 0.321058,
		0.077137, -0.904704, -0.418999,
		35.120014, 33.307205, 43.180653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.783978, 33.940197, 43.228497>,  <35.066021, 33.940498, 43.473949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.783978, 33.940197, 43.228497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563316, 33.679703, 43.020050>,  <35.430920, 33.523407, 42.894981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563316, 33.679703, 43.020050>,  <35.783978, 33.940197, 43.228497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563316, 33.679703, 43.020050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457074, 0.286579, -0.841996,
		0.697681, -0.702682, 0.139570,
		-0.551657, -0.651238, -0.521118,
		35.397820, 33.484333, 42.863716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243309, 33.421387, 42.856033>,  <35.783978, 33.940197, 43.228497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243309, 33.421387, 42.856033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887257, 33.376083, 42.679474>,  <35.673626, 33.348900, 42.573536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887257, 33.376083, 42.679474>,  <36.243309, 33.421387, 42.856033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887257, 33.376083, 42.679474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452503, -0.105122, -0.885545,
		0.053899, -0.987988, 0.144825,
		-0.890132, -0.113263, -0.441402,
		35.620216, 33.342106, 42.547054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418056, 33.005436, 42.413975>,  <36.243309, 33.421387, 42.856033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.418056, 33.005436, 42.413975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.069584, 33.141132, 42.272015>,  <35.860500, 33.222549, 42.186840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.069584, 33.141132, 42.272015>,  <36.418056, 33.005436, 42.413975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.069584, 33.141132, 42.272015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360278, -0.049332, -0.931539,
		-0.333529, -0.939403, -0.079245,
		-0.871182, 0.339245, -0.354900,
		35.808228, 33.242905, 42.165546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.230412, 32.576271, 41.818832>,  <36.418056, 33.005436, 42.413975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.230412, 32.576271, 41.818832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024410, 32.916149, 41.773609>,  <35.900810, 33.120075, 41.746475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024410, 32.916149, 41.773609>,  <36.230412, 32.576271, 41.818832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024410, 32.916149, 41.773609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277971, 0.040783, -0.959723,
		-0.810864, -0.525691, -0.257195,
		-0.515007, 0.849698, -0.113057,
		35.869907, 33.171059, 41.739693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793739, 32.446476, 41.298595>,  <36.230412, 32.576271, 41.818832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793739, 32.446476, 41.298595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.841900, 32.843506, 41.305420>,  <35.870796, 33.081726, 41.309517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.841900, 32.843506, 41.305420>,  <35.793739, 32.446476, 41.298595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.841900, 32.843506, 41.305420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049714, 0.011138, -0.998702,
		-0.991479, 0.121097, -0.048004,
		0.120405, 0.992578, 0.017063,
		35.878021, 33.141281, 41.310539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521244, 32.655048, 40.550453>,  <35.793739, 32.446476, 41.298595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521244, 32.655048, 40.550453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708263, 32.980396, 40.688919>,  <35.820477, 33.175606, 40.771999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708263, 32.980396, 40.688919>,  <35.521244, 32.655048, 40.550453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708263, 32.980396, 40.688919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513142, 0.069128, -0.855516,
		-0.719780, 0.577625, -0.385053,
		0.467549, 0.813370, 0.346161,
		35.848530, 33.224407, 40.792767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.320599, 33.292957, 40.076069>,  <35.521244, 32.655048, 40.550453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.320599, 33.292957, 40.076069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.682877, 33.371788, 40.226200>,  <35.900242, 33.419086, 40.316280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.682877, 33.371788, 40.226200>,  <35.320599, 33.292957, 40.076069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.682877, 33.371788, 40.226200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293549, 0.347209, -0.890660,
		-0.305851, 0.916845, 0.256613,
		0.905696, 0.197081, 0.375333,
		35.954586, 33.430912, 40.338799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578682, 33.807709, 39.640682>,  <35.320599, 33.292957, 40.076069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578682, 33.807709, 39.640682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.900074, 33.679924, 39.841621>,  <36.092911, 33.603252, 39.962185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.900074, 33.679924, 39.841621>,  <35.578682, 33.807709, 39.640682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.900074, 33.679924, 39.841621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563069, 0.133809, -0.815505,
		0.193303, 0.938104, 0.287392,
		0.803484, -0.319461, 0.502352,
		36.141121, 33.584087, 39.992329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010551, 34.181805, 39.247349>,  <35.578682, 33.807709, 39.640682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010551, 34.181805, 39.247349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.227394, 33.919403, 39.457409>,  <36.357498, 33.761963, 39.583443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.227394, 33.919403, 39.457409>,  <36.010551, 34.181805, 39.247349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.227394, 33.919403, 39.457409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807313, 0.233173, -0.542103,
		0.233173, 0.717834, 0.656007,
		0.542103, -0.656007, 0.525147,
		36.390026, 33.722603, 39.614952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606594, 34.477917, 39.348129>,  <36.010551, 34.181805, 39.247349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.606594, 34.477917, 39.348129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.695538, 34.088512, 39.369434>,  <36.748905, 33.854870, 39.382217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.695538, 34.088512, 39.369434>,  <36.606594, 34.477917, 39.348129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695538, 34.088512, 39.369434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776185, 0.143700, -0.613911,
		0.589994, 0.177849, 0.787576,
		0.222359, -0.973509, 0.053262,
		36.762245, 33.796459, 39.385414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352600, 34.418377, 39.423386>,  <36.606594, 34.477917, 39.348129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.352600, 34.418377, 39.423386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224300, 34.070084, 39.274284>,  <37.147320, 33.861107, 39.184822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224300, 34.070084, 39.274284>,  <37.352600, 34.418377, 39.423386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224300, 34.070084, 39.274284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653894, 0.081150, -0.752222,
		0.685232, -0.485017, 0.543337,
		-0.320748, -0.870732, -0.372756,
		37.128075, 33.808865, 39.162457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980103, 34.071785, 39.330299>,  <37.352600, 34.418377, 39.423386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980103, 34.071785, 39.330299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.698063, 33.889683, 39.112831>,  <37.528839, 33.780422, 38.982349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.698063, 33.889683, 39.112831>,  <37.980103, 34.071785, 39.330299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698063, 33.889683, 39.112831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634531, -0.062806, -0.770341,
		0.316556, -0.888143, 0.333158,
		-0.705098, -0.455255, -0.543673,
		37.486534, 33.753105, 38.949730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.343624, 33.456947, 39.088840>,  <37.980103, 34.071785, 39.330299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.343624, 33.456947, 39.088840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.035278, 33.510990, 38.839836>,  <37.850269, 33.543415, 38.690434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.035278, 33.510990, 38.839836>,  <38.343624, 33.456947, 39.088840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035278, 33.510990, 38.839836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550536, -0.350289, -0.757765,
		-0.320437, -0.926846, 0.195644,
		-0.770863, 0.135106, -0.622508,
		37.804020, 33.551521, 38.653084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.402779, 32.933601, 38.599453>,  <38.343624, 33.456947, 39.088840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.402779, 32.933601, 38.599453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.143929, 33.172188, 38.409523>,  <37.988621, 33.315338, 38.295563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.143929, 33.172188, 38.409523>,  <38.402779, 32.933601, 38.599453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.143929, 33.172188, 38.409523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378287, -0.289528, -0.879246,
		-0.661915, -0.748601, -0.038274,
		-0.647123, 0.596464, -0.474828,
		37.949791, 33.351128, 38.267075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198189, 32.590115, 37.988075>,  <38.402779, 32.933601, 38.599453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198189, 32.590115, 37.988075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.127098, 32.973438, 37.898579>,  <38.084442, 33.203434, 37.844883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.127098, 32.973438, 37.898579>,  <38.198189, 32.590115, 37.988075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.127098, 32.973438, 37.898579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394320, -0.138957, -0.908407,
		-0.901624, -0.249673, -0.353184,
		-0.177727, 0.958308, -0.223738,
		38.073780, 33.260929, 37.831459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.970570, 32.571293, 37.245762>,  <38.198189, 32.590115, 37.988075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.970570, 32.571293, 37.245762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.097794, 32.941109, 37.329731>,  <38.174126, 33.162998, 37.380112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.097794, 32.941109, 37.329731>,  <37.970570, 32.571293, 37.245762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.097794, 32.941109, 37.329731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381904, 0.077717, -0.920928,
		-0.867749, 0.373077, -0.328367,
		0.318058, 0.924540, 0.209919,
		38.193211, 33.218472, 37.392708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670666, 32.952068, 36.734901>,  <37.970570, 32.571293, 37.245762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.670666, 32.952068, 36.734901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.981709, 33.161797, 36.873703>,  <38.168335, 33.287632, 36.956982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.981709, 33.161797, 36.873703>,  <37.670666, 32.952068, 36.734901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.981709, 33.161797, 36.873703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247719, 0.251770, -0.935547,
		-0.577892, 0.813449, 0.065895,
		0.777609, 0.524321, 0.347002,
		38.214993, 33.319092, 36.977802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683964, 33.529537, 36.411568>,  <37.670666, 32.952068, 36.734901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683964, 33.529537, 36.411568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.059841, 33.498463, 36.544796>,  <38.285370, 33.479816, 36.624733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.059841, 33.498463, 36.544796>,  <37.683964, 33.529537, 36.411568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059841, 33.498463, 36.544796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337717, 0.364546, -0.867786,
		-0.054003, 0.927939, 0.368799,
		0.939697, -0.077687, 0.333068,
		38.341751, 33.475155, 36.644718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997723, 34.134342, 36.172249>,  <37.683964, 33.529537, 36.411568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.997723, 34.134342, 36.172249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.327862, 33.929703, 36.267799>,  <38.525944, 33.806919, 36.325130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.327862, 33.929703, 36.267799>,  <37.997723, 34.134342, 36.172249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327862, 33.929703, 36.267799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508082, 0.488413, -0.709440,
		0.246279, 0.706906, 0.663047,
		0.825348, -0.511603, 0.238880,
		38.575466, 33.776222, 36.339462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446358, 34.584122, 35.976986>,  <37.997723, 34.134342, 36.172249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446358, 34.584122, 35.976986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.646931, 34.243755, 36.039593>,  <38.767273, 34.039536, 36.077156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.646931, 34.243755, 36.039593>,  <38.446358, 34.584122, 35.976986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.646931, 34.243755, 36.039593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650477, 0.251488, -0.716682,
		0.570477, 0.461181, 0.679609,
		0.501434, -0.850920, 0.156519,
		38.797359, 33.988480, 36.086548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160976, 34.778484, 36.124813>,  <38.446358, 34.584122, 35.976986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.160976, 34.778484, 36.124813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.182056, 34.418076, 35.952587>,  <39.194706, 34.201832, 35.849251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.182056, 34.418076, 35.952587>,  <39.160976, 34.778484, 36.124813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182056, 34.418076, 35.952587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606290, 0.371473, -0.703151,
		0.793496, -0.223990, 0.565856,
		0.052702, -0.901020, -0.430565,
		39.197868, 34.147770, 35.823418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877224, 34.654667, 36.132381>,  <39.160976, 34.778484, 36.124813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877224, 34.654667, 36.132381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.718800, 34.421818, 35.848331>,  <39.623745, 34.282108, 35.677902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.718800, 34.421818, 35.848331>,  <39.877224, 34.654667, 36.132381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.718800, 34.421818, 35.848331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790578, 0.177176, -0.586170,
		0.467039, -0.793563, 0.390042,
		-0.396057, -0.582123, -0.710121,
		39.599983, 34.247181, 35.635296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.385326, 34.299866, 35.765224>,  <39.877224, 34.654667, 36.132381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.385326, 34.299866, 35.765224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.082565, 34.288940, 35.504044>,  <39.900909, 34.282387, 35.347336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.082565, 34.288940, 35.504044>,  <40.385326, 34.299866, 35.765224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.082565, 34.288940, 35.504044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630937, 0.229870, -0.740998,
		0.170333, -0.972838, -0.156757,
		-0.756905, -0.027313, -0.652954,
		39.855495, 34.280746, 35.308159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.736229, 33.962055, 35.272999>,  <40.385326, 34.299866, 35.765224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.736229, 33.962055, 35.272999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.420784, 34.143047, 35.106457>,  <40.231518, 34.251640, 35.006531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.420784, 34.143047, 35.106457>,  <40.736229, 33.962055, 35.272999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.420784, 34.143047, 35.106457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568346, 0.277972, -0.774413,
		-0.234671, -0.847345, -0.476377,
		-0.788614, 0.452479, -0.416353,
		40.184200, 34.278790, 34.981552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.806038, 33.797218, 34.607243>,  <40.736229, 33.962055, 35.272999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.806038, 33.797218, 34.607243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.551243, 34.105564, 34.605354>,  <40.398365, 34.290573, 34.604221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.551243, 34.105564, 34.605354>,  <40.806038, 33.797218, 34.607243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.551243, 34.105564, 34.605354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614881, 0.504375, -0.606241,
		-0.464945, -0.389070, -0.795267,
		-0.636983, 0.770863, -0.004725,
		40.360149, 34.336823, 34.603935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.590168, 33.998096, 33.914051>,  <40.806038, 33.797218, 34.607243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.590168, 33.998096, 33.914051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.585381, 34.308918, 34.165783>,  <40.582508, 34.495411, 34.316822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.585381, 34.308918, 34.165783>,  <40.590168, 33.998096, 33.914051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.585381, 34.308918, 34.165783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772233, 0.407003, -0.487858,
		-0.635227, 0.480149, -0.604933,
		-0.011965, 0.777049, 0.629326,
		40.581791, 34.542034, 34.354580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.890884, 34.521217, 33.604893>,  <40.590168, 33.998096, 33.914051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.890884, 34.521217, 33.604893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.905251, 34.643223, 33.985561>,  <40.913868, 34.716427, 34.213963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.905251, 34.643223, 33.985561>,  <40.890884, 34.521217, 33.604893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.905251, 34.643223, 33.985561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839437, 0.507521, -0.194340,
		-0.542270, 0.805846, -0.237815,
		0.035912, 0.305015, 0.951670,
		40.916023, 34.734726, 34.271061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.884113, 35.319851, 33.661362>,  <40.890884, 34.521217, 33.604893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.884113, 35.319851, 33.661362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.053875, 35.171120, 33.991604>,  <41.155731, 35.081882, 34.189751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.053875, 35.171120, 33.991604>,  <40.884113, 35.319851, 33.661362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.053875, 35.171120, 33.991604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899524, 0.277486, -0.337427,
		-0.103632, 0.885860, 0.452230,
		0.424401, -0.371824, 0.825609,
		41.181194, 35.059574, 34.239288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.322945, 35.819874, 33.941883>,  <40.884113, 35.319851, 33.661362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.322945, 35.819874, 33.941883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.453403, 35.446411, 34.001083>,  <41.531681, 35.222332, 34.036606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.453403, 35.446411, 34.001083>,  <41.322945, 35.819874, 33.941883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.453403, 35.446411, 34.001083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903236, 0.261593, -0.340197,
		0.278911, 0.244638, 0.928634,
		0.326149, -0.933660, 0.148004,
		41.551247, 35.166313, 34.045486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.891083, 35.876934, 34.338558>,  <41.322945, 35.819874, 33.941883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.891083, 35.876934, 34.338558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.929722, 35.531044, 34.141415>,  <41.952908, 35.323509, 34.023129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.929722, 35.531044, 34.141415>,  <41.891083, 35.876934, 34.338558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.929722, 35.531044, 34.141415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944466, 0.235900, -0.228771,
		0.314091, -0.443389, 0.839496,
		0.096602, -0.864730, -0.492860,
		41.958702, 35.271626, 33.993557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.478802, 35.660522, 34.563587>,  <41.891083, 35.876934, 34.338558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.478802, 35.660522, 34.563587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.397247, 35.542397, 34.190231>,  <42.348316, 35.471523, 33.966217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.397247, 35.542397, 34.190231>,  <42.478802, 35.660522, 34.563587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.397247, 35.542397, 34.190231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900624, 0.317204, -0.297083,
		0.383808, -0.901206, 0.201292,
		-0.203883, -0.295311, -0.933393,
		42.336082, 35.453804, 33.910213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.216946, 35.353119, 34.275284>,  <42.478802, 35.660522, 34.563587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.216946, 35.353119, 34.275284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.956779, 35.462559, 33.991844>,  <42.800682, 35.528221, 33.821781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.956779, 35.462559, 33.991844>,  <43.216946, 35.353119, 34.275284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.956779, 35.462559, 33.991844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753957, 0.119232, -0.646012,
		-0.092262, -0.954424, -0.283834,
		-0.650412, 0.273601, -0.708595,
		42.761658, 35.544640, 33.779266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.575958, 35.623550, 34.808357>,  <43.216946, 35.353119, 34.275284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.575958, 35.623550, 34.808357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.941856, 35.622501, 34.646744>,  <44.161396, 35.621872, 34.549778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.941856, 35.622501, 34.646744>,  <43.575958, 35.623550, 34.808357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.941856, 35.622501, 34.646744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138672, 0.937200, -0.320040,
		0.379497, 0.348782, 0.856932,
		0.914741, -0.002621, -0.404031,
		44.216278, 35.621716, 34.525536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.978477, 36.234985, 35.094837>,  <43.575958, 35.623550, 34.808357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.978477, 36.234985, 35.094837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.201462, 36.141693, 34.776127>,  <44.335251, 36.085716, 34.584900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.201462, 36.141693, 34.776127>,  <43.978477, 36.234985, 35.094837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.201462, 36.141693, 34.776127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224541, 0.881601, -0.415163,
		0.799264, 0.410344, 0.439085,
		0.557457, -0.233232, -0.796771,
		44.368698, 36.071724, 34.537094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.552921, 36.769390, 35.023651>,  <43.978477, 36.234985, 35.094837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.552921, 36.769390, 35.023651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.459507, 36.598877, 34.674080>,  <44.403458, 36.496571, 34.464336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.459507, 36.598877, 34.674080>,  <44.552921, 36.769390, 35.023651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.459507, 36.598877, 34.674080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302913, 0.885948, -0.351198,
		0.923961, 0.182706, -0.336026,
		-0.233536, -0.426280, -0.873926,
		44.389446, 36.470993, 34.411903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.939896, 37.166782, 34.497368>,  <44.552921, 36.769390, 35.023651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.939896, 37.166782, 34.497368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.626751, 37.008698, 34.305145>,  <44.438866, 36.913845, 34.189812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.626751, 37.008698, 34.305145>,  <44.939896, 37.166782, 34.497368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.626751, 37.008698, 34.305145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266296, 0.910867, -0.315291,
		0.562335, -0.118857, -0.818323,
		-0.782858, -0.395215, -0.480561,
		44.391895, 36.890133, 34.160976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.964401, 37.497036, 33.893456>,  <44.939896, 37.166782, 34.497368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.964401, 37.497036, 33.893456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.594814, 37.344799, 33.878353>,  <44.373062, 37.253456, 33.869293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.594814, 37.344799, 33.878353>,  <44.964401, 37.497036, 33.893456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.594814, 37.344799, 33.878353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312944, 0.809090, -0.497433,
		0.219868, -0.447799, -0.866680,
		-0.923972, -0.380592, -0.037757,
		44.317623, 37.230621, 33.867027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.777679, 37.408131, 33.169285>,  <44.964401, 37.497036, 33.893456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.777679, 37.408131, 33.169285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.427177, 37.406513, 33.362015>,  <44.216877, 37.405544, 33.477654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.427177, 37.406513, 33.362015>,  <44.777679, 37.408131, 33.169285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.427177, 37.406513, 33.362015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325578, 0.742120, -0.585881,
		-0.355203, -0.670255, -0.651606,
		-0.876259, -0.004042, 0.481823,
		44.164299, 37.405300, 33.506561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.269512, 37.441776, 32.663246>,  <44.777679, 37.408131, 33.169285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.269512, 37.441776, 32.663246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.086796, 37.561466, 32.998341>,  <43.977165, 37.633278, 33.199398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.086796, 37.561466, 32.998341>,  <44.269512, 37.441776, 32.663246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.086796, 37.561466, 32.998341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292933, 0.838613, -0.459258,
		-0.839960, -0.455187, -0.295419,
		-0.456790, 0.299221, 0.837741,
		43.949760, 37.651234, 33.249664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.667736, 37.753166, 32.465099>,  <44.269512, 37.441776, 32.663246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.667736, 37.753166, 32.465099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.726997, 37.898109, 32.833176>,  <43.762554, 37.985077, 33.054020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.726997, 37.898109, 32.833176>,  <43.667736, 37.753166, 32.465099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.726997, 37.898109, 32.833176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193898, 0.923041, -0.332264,
		-0.969770, -0.129196, 0.207014,
		0.148155, 0.362359, 0.920188,
		43.771442, 38.006817, 33.109234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.056606, 38.194885, 32.506569>,  <43.667736, 37.753166, 32.465099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.056606, 38.194885, 32.506569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.312309, 38.282345, 32.801472>,  <43.465733, 38.334820, 32.978413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.312309, 38.282345, 32.801472>,  <43.056606, 38.194885, 32.506569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.312309, 38.282345, 32.801472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119937, 0.975343, -0.185259,
		-0.759581, 0.030005, 0.649721,
		0.639260, 0.218645, 0.737253,
		43.504086, 38.347939, 33.022648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.700161, 38.640713, 32.931957>,  <43.056606, 38.194885, 32.506569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.700161, 38.640713, 32.931957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.087669, 38.706371, 33.006287>,  <43.320175, 38.745766, 33.050884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.087669, 38.706371, 33.006287>,  <42.700161, 38.640713, 32.931957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.087669, 38.706371, 33.006287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125686, 0.971157, -0.202625,
		-0.213722, 0.172943, 0.961464,
		0.968775, 0.164148, 0.185821,
		43.378304, 38.755615, 33.062035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.774899, 39.223663, 33.481804>,  <42.700161, 38.640713, 32.931957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.774899, 39.223663, 33.481804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.115597, 39.183994, 33.276009>,  <43.320015, 39.160194, 33.152531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.115597, 39.183994, 33.276009>,  <42.774899, 39.223663, 33.481804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.115597, 39.183994, 33.276009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029568, 0.971264, -0.236162,
		0.523124, 0.216362, 0.824335,
		0.851743, -0.099168, -0.514489,
		43.371120, 39.154243, 33.121662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.066727, 39.845104, 33.634361>,  <42.774899, 39.223663, 33.481804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.066727, 39.845104, 33.634361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.239365, 39.746529, 33.287262>,  <43.342949, 39.687386, 33.079002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.239365, 39.746529, 33.287262>,  <43.066727, 39.845104, 33.634361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.239365, 39.746529, 33.287262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130833, 0.968890, -0.210085,
		0.892529, -0.022858, 0.450411,
		0.431596, -0.246435, -0.867753,
		43.368843, 39.672600, 33.026936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.570038, 40.356487, 33.682533>,  <43.066727, 39.845104, 33.634361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.570038, 40.356487, 33.682533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.556065, 40.223652, 33.305492>,  <43.547680, 40.143951, 33.079269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.556065, 40.223652, 33.305492>,  <43.570038, 40.356487, 33.682533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.556065, 40.223652, 33.305492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089832, 0.938316, -0.333906,
		0.995344, -0.096342, -0.002950,
		-0.034937, -0.332087, -0.942602,
		43.545582, 40.124027, 33.022713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.983253, 40.773338, 33.322735>,  <43.570038, 40.356487, 33.682533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.983253, 40.773338, 33.322735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.817005, 40.592281, 33.007172>,  <43.717258, 40.483646, 32.817833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.817005, 40.592281, 33.007172>,  <43.983253, 40.773338, 33.322735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.817005, 40.592281, 33.007172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116439, 0.833755, -0.539717,
		0.902056, -0.316175, -0.293817,
		-0.415616, -0.452643, -0.788909,
		43.692322, 40.456490, 32.770500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.359184, 40.877808, 32.816216>,  <43.983253, 40.773338, 33.322735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.359184, 40.877808, 32.816216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.016609, 40.826557, 32.616180>,  <43.811062, 40.795807, 32.496159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.016609, 40.826557, 32.616180>,  <44.359184, 40.877808, 32.816216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.016609, 40.826557, 32.616180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141434, 0.873411, -0.465994,
		0.496491, -0.469826, -0.729904,
		-0.856442, -0.128128, -0.500089,
		43.759678, 40.788120, 32.466152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.620129, 40.934242, 32.220070>,  <44.359184, 40.877808, 32.816216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.620129, 40.934242, 32.220070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.226597, 41.005779, 32.216312>,  <43.990479, 41.048702, 32.214058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.226597, 41.005779, 32.216312>,  <44.620129, 40.934242, 32.220070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.226597, 41.005779, 32.216312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160908, 0.859692, -0.484807,
		-0.078632, -0.478480, -0.874571,
		-0.983832, 0.178847, -0.009392,
		43.931446, 41.059433, 32.213493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.378757, 41.067513, 31.429167>,  <44.620129, 40.934242, 32.220070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.378757, 41.067513, 31.429167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.098885, 41.213398, 31.674908>,  <43.930962, 41.300930, 31.822351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.098885, 41.213398, 31.674908>,  <44.378757, 41.067513, 31.429167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.098885, 41.213398, 31.674908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011055, 0.865312, -0.501112,
		-0.714370, -0.343827, -0.609474,
		-0.699681, 0.364717, 0.614352,
		43.888981, 41.322815, 31.859213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.903984, 41.489792, 31.053879>,  <44.378757, 41.067513, 31.429167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.903984, 41.489792, 31.053879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.863663, 41.605824, 31.434551>,  <43.839470, 41.675442, 31.662954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.863663, 41.605824, 31.434551>,  <43.903984, 41.489792, 31.053879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.863663, 41.605824, 31.434551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093215, 0.949591, -0.299313,
		-0.990530, -0.118883, -0.068685,
		-0.100806, 0.290076, 0.951680,
		43.833420, 41.692848, 31.720055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.388771, 41.896332, 31.090328>,  <43.903984, 41.489792, 31.053879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.388771, 41.896332, 31.090328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.557453, 42.027340, 31.428534>,  <43.658661, 42.105946, 31.631456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.557453, 42.027340, 31.428534>,  <43.388771, 41.896332, 31.090328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.557453, 42.027340, 31.428534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094956, 0.943308, -0.318046,
		-0.901748, 0.053834, 0.428896,
		0.421703, 0.327524, 0.845515,
		43.683964, 42.125599, 31.682188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.912014, 42.351742, 31.516954>,  <43.388771, 41.896332, 31.090328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.912014, 42.351742, 31.516954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.289501, 42.446136, 31.609650>,  <43.515995, 42.502773, 31.665268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.289501, 42.446136, 31.609650>,  <42.912014, 42.351742, 31.516954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.289501, 42.446136, 31.609650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198743, 0.964666, -0.172977,
		-0.264372, 0.117186, 0.957275,
		0.943721, 0.235982, 0.231740,
		43.572617, 42.516930, 31.679173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.127132, 42.795273, 31.022770>,  <42.912014, 42.351742, 31.516954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.127132, 42.795273, 31.022770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.838898, 42.545769, 30.901655>,  <42.665958, 42.396069, 30.828987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.838898, 42.545769, 30.901655>,  <43.127132, 42.795273, 31.022770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.838898, 42.545769, 30.901655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456758, 0.755587, -0.469532,
		0.521655, -0.200039, -0.829373,
		-0.720588, -0.623757, -0.302787,
		42.622723, 42.358643, 30.810820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.991982, 42.817219, 30.239117>,  <43.127132, 42.795273, 31.022770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.991982, 42.817219, 30.239117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.650837, 42.723923, 30.425972>,  <42.446148, 42.667946, 30.538086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.650837, 42.723923, 30.425972>,  <42.991982, 42.817219, 30.239117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.650837, 42.723923, 30.425972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473951, 0.721204, -0.505208,
		-0.219067, -0.652276, -0.725635,
		-0.852866, -0.233241, 0.467139,
		42.394978, 42.653950, 30.566114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.581688, 42.588474, 29.768312>,  <42.991982, 42.817219, 30.239117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.581688, 42.588474, 29.768312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.356789, 42.751339, 30.056229>,  <42.221848, 42.849056, 30.228979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.356789, 42.751339, 30.056229>,  <42.581688, 42.588474, 29.768312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.356789, 42.751339, 30.056229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475147, 0.553331, -0.684149,
		-0.676841, -0.726667, -0.117647,
		-0.562246, 0.407160, 0.719791,
		42.188114, 42.873486, 30.272165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.990974, 42.593945, 29.462469>,  <42.581688, 42.588474, 29.768312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.990974, 42.593945, 29.462469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.994167, 42.874802, 29.747267>,  <41.996082, 43.043316, 29.918146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.994167, 42.874802, 29.747267>,  <41.990974, 42.593945, 29.462469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.994167, 42.874802, 29.747267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234128, 0.693537, -0.681315,
		-0.972173, -0.161258, 0.169928,
		0.007984, 0.702141, 0.711993,
		41.996563, 43.085445, 29.960865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.399220, 42.200897, 29.891151>,  <41.990974, 42.593945, 29.462469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.399220, 42.200897, 29.891151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.745098, 42.003689, 29.852711>,  <41.952625, 41.885365, 29.829647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.745098, 42.003689, 29.852711>,  <41.399220, 42.200897, 29.891151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.745098, 42.003689, 29.852711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434688, -0.830347, 0.348670,
		-0.251700, -0.259718, -0.932306,
		0.864693, -0.493022, -0.096102,
		42.004505, 41.855782, 29.823879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.912292, 41.793900, 29.555592>,  <41.399220, 42.200897, 29.891151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.912292, 41.793900, 29.555592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.037766, 42.167877, 29.489281>,  <41.113049, 42.392265, 29.449493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.037766, 42.167877, 29.489281>,  <40.912292, 41.793900, 29.555592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.037766, 42.167877, 29.489281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933046, -0.335893, -0.128849,
		-0.176150, -0.114260, -0.977710,
		0.313683, 0.934944, -0.165778,
		41.131870, 42.448360, 29.439547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.719612, 41.117645, 29.894745>,  <40.912292, 41.793900, 29.555592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.719612, 41.117645, 29.894745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.359058, 40.950901, 29.847879>,  <40.142727, 40.850857, 29.819759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.359058, 40.950901, 29.847879>,  <40.719612, 41.117645, 29.894745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.359058, 40.950901, 29.847879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313499, -0.441613, -0.840653,
		0.298691, -0.794486, 0.528749,
		-0.901389, -0.416858, -0.117165,
		40.088642, 40.825844, 29.812731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.606445, 40.365211, 29.998184>,  <40.719612, 41.117645, 29.894745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.606445, 40.365211, 29.998184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.333363, 40.463173, 29.722815>,  <40.169510, 40.521950, 29.557592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.333363, 40.463173, 29.722815>,  <40.606445, 40.365211, 29.998184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.333363, 40.463173, 29.722815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392721, -0.671519, -0.628357,
		-0.616176, -0.699345, 0.362276,
		-0.682714, 0.244905, -0.688421,
		40.128548, 40.536644, 29.516289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162430, 39.987263, 29.525284>,  <40.606445, 40.365211, 29.998184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.162430, 39.987263, 29.525284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.997200, 40.237015, 29.790468>,  <39.898064, 40.386868, 29.949579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.997200, 40.237015, 29.790468>,  <40.162430, 39.987263, 29.525284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.997200, 40.237015, 29.790468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815667, 0.070118, -0.574257,
		-0.405041, -0.777966, 0.480323,
		-0.413073, 0.624381, 0.662962,
		39.873280, 40.424328, 29.989357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.499542, 39.328217, 29.569080>,  <40.162430, 39.987263, 29.525284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.499542, 39.328217, 29.569080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.615505, 39.659637, 29.377474>,  <40.685085, 39.858490, 29.262510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.615505, 39.659637, 29.377474>,  <40.499542, 39.328217, 29.569080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.615505, 39.659637, 29.377474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952721, -0.297420, 0.062160,
		-0.090966, -0.474388, -0.875603,
		0.289910, 0.828551, -0.479015,
		40.702477, 39.908203, 29.233768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.921059, 39.122070, 28.869164>,  <40.499542, 39.328217, 29.569080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.921059, 39.122070, 28.869164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.020771, 39.436810, 29.094988>,  <41.080597, 39.625652, 29.230482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.020771, 39.436810, 29.094988>,  <40.921059, 39.122070, 28.869164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.020771, 39.436810, 29.094988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893872, -0.411256, 0.178496,
		0.372629, 0.460150, -0.805860,
		0.249280, 0.786849, 0.564561,
		41.095554, 39.672863, 29.264357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.394356, 39.558018, 28.531898>,  <40.921059, 39.122070, 28.869164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.394356, 39.558018, 28.531898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.433369, 39.557415, 28.929991>,  <41.456776, 39.557053, 29.168846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.433369, 39.557415, 28.929991>,  <41.394356, 39.558018, 28.531898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.433369, 39.557415, 28.929991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924709, -0.369592, -0.091183,
		0.367967, 0.929193, -0.034654,
		0.097534, -0.001508, 0.995231,
		41.462627, 39.556961, 29.228559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.048862, 39.800182, 28.546356>,  <41.394356, 39.558018, 28.531898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.048862, 39.800182, 28.546356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.971302, 39.631611, 28.900713>,  <41.924767, 39.530468, 29.113327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.971302, 39.631611, 28.900713>,  <42.048862, 39.800182, 28.546356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.971302, 39.631611, 28.900713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943254, -0.328241, 0.050307,
		0.269585, 0.845375, 0.461155,
		-0.193898, -0.421424, 0.885892,
		41.913132, 39.505184, 29.166481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.640289, 39.886337, 29.012135>,  <42.048862, 39.800182, 28.546356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.640289, 39.886337, 29.012135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.425503, 39.567249, 29.121902>,  <42.296631, 39.375797, 29.187763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.425503, 39.567249, 29.121902>,  <42.640289, 39.886337, 29.012135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.425503, 39.567249, 29.121902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812024, -0.576926, -0.088165,
		0.228651, 0.175494, 0.957560,
		-0.536969, -0.797720, 0.274420,
		42.264412, 39.327934, 29.204229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.107552, 39.582932, 29.587141>,  <42.640289, 39.886337, 29.012135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.107552, 39.582932, 29.587141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.891739, 39.278469, 29.443174>,  <42.762249, 39.095791, 29.356794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.891739, 39.278469, 29.443174>,  <43.107552, 39.582932, 29.587141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.891739, 39.278469, 29.443174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775451, -0.615749, 0.139748,
		-0.327990, -0.203700, 0.922458,
		-0.539536, -0.761157, -0.359919,
		42.729877, 39.050121, 29.335199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.267815, 39.019840, 29.953857>,  <43.107552, 39.582932, 29.587141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.267815, 39.019840, 29.953857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.096390, 38.808289, 29.660839>,  <42.993534, 38.681358, 29.485029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.096390, 38.808289, 29.660839>,  <43.267815, 39.019840, 29.953857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.096390, 38.808289, 29.660839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648952, -0.744305, 0.157705,
		-0.628643, -0.407799, 0.662199,
		-0.428566, -0.528876, -0.732544,
		42.967819, 38.649628, 29.441076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.989384, 38.321877, 30.195728>,  <43.267815, 39.019840, 29.953857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.989384, 38.321877, 30.195728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.077454, 38.273861, 29.808510>,  <43.130295, 38.245052, 29.576180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.077454, 38.273861, 29.808510>,  <42.989384, 38.321877, 30.195728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.077454, 38.273861, 29.808510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640875, -0.730361, 0.236329,
		-0.735392, -0.672431, -0.083879,
		0.220177, -0.120038, -0.968046,
		43.143509, 38.237850, 29.518097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.985157, 37.643890, 30.179935>,  <42.989384, 38.321877, 30.195728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.985157, 37.643890, 30.179935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.164356, 37.719810, 29.830473>,  <43.271873, 37.765362, 29.620796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.164356, 37.719810, 29.830473>,  <42.985157, 37.643890, 30.179935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.164356, 37.719810, 29.830473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603429, -0.785238, 0.138833,
		-0.659676, -0.589386, -0.466317,
		0.447996, 0.189804, -0.873656,
		43.298756, 37.776752, 29.568377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.909897, 36.978127, 29.763403>,  <42.985157, 37.643890, 30.179935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.909897, 36.978127, 29.763403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.199532, 37.207878, 29.610674>,  <43.373314, 37.345730, 29.519037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.199532, 37.207878, 29.610674>,  <42.909897, 36.978127, 29.763403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.199532, 37.207878, 29.610674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679422, -0.689261, 0.251604,
		-0.118659, -0.441601, -0.889330,
		0.724089, 0.574376, -0.381821,
		43.416759, 37.380192, 29.496128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.378380, 36.500885, 29.375368>,  <42.909897, 36.978127, 29.763403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.378380, 36.500885, 29.375368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.604599, 36.823521, 29.444149>,  <43.740330, 37.017101, 29.485416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.604599, 36.823521, 29.444149>,  <43.378380, 36.500885, 29.375368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.604599, 36.823521, 29.444149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735256, -0.587558, 0.337896,
		0.373576, -0.064666, -0.925343,
		0.565543, 0.806594, 0.171952,
		43.774261, 37.065498, 29.495735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.020164, 36.359344, 29.198404>,  <43.378380, 36.500885, 29.375368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.020164, 36.359344, 29.198404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.103737, 36.667374, 29.439510>,  <44.153881, 36.852192, 29.584175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.103737, 36.667374, 29.439510>,  <44.020164, 36.359344, 29.198404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.103737, 36.667374, 29.439510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868632, -0.429292, 0.247360,
		0.449249, 0.471901, -0.758607,
		0.208934, 0.770077, 0.602767,
		44.166416, 36.898396, 29.620340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.682316, 36.447521, 29.106421>,  <44.020164, 36.359344, 29.198404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.682316, 36.447521, 29.106421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.602501, 36.646767, 29.443958>,  <44.554611, 36.766312, 29.646481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.602501, 36.646767, 29.443958>,  <44.682316, 36.447521, 29.106421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.602501, 36.646767, 29.443958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871705, -0.303102, 0.385046,
		0.447566, 0.812414, -0.373724,
		-0.199540, 0.498110, 0.843842,
		44.542641, 36.796200, 29.697111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.337811, 36.702950, 29.422859>,  <44.682316, 36.447521, 29.106421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.337811, 36.702950, 29.422859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.104366, 36.768810, 29.740925>,  <44.964298, 36.808327, 29.931765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.104366, 36.768810, 29.740925>,  <45.337811, 36.702950, 29.422859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.104366, 36.768810, 29.740925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699547, -0.395305, 0.595289,
		0.412348, 0.903672, 0.115523,
		-0.583613, 0.164652, 0.795164,
		44.929283, 36.818207, 29.979473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.679203, 37.177383, 29.975229>,  <45.337811, 36.702950, 29.422859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.679203, 37.177383, 29.975229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.418182, 36.951847, 30.177721>,  <45.261570, 36.816525, 30.299215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.418182, 36.951847, 30.177721>,  <45.679203, 37.177383, 29.975229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.418182, 36.951847, 30.177721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696897, -0.184263, 0.693096,
		-0.297515, 0.805067, 0.513178,
		-0.652548, -0.563839, 0.506228,
		45.222420, 36.782696, 30.329590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.666969, 37.401329, 30.736479>,  <45.679203, 37.177383, 29.975229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.666969, 37.401329, 30.736479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.506664, 37.035358, 30.755644>,  <45.410480, 36.815777, 30.767143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.506664, 37.035358, 30.755644>,  <45.666969, 37.401329, 30.736479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.506664, 37.035358, 30.755644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687308, -0.265659, 0.676043,
		-0.605800, 0.303867, 0.735303,
		-0.400767, -0.914926, 0.047914,
		45.386433, 36.760880, 30.770018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.620033, 37.260101, 31.551344>,  <45.666969, 37.401329, 30.736479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.620033, 37.260101, 31.551344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.562317, 36.906273, 31.373934>,  <45.527687, 36.693977, 31.267487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.562317, 36.906273, 31.373934>,  <45.620033, 37.260101, 31.551344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.562317, 36.906273, 31.373934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485200, -0.453881, 0.747377,
		-0.862417, -0.107363, 0.494682,
		-0.144287, -0.884570, -0.443527,
		45.519032, 36.640903, 31.240875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.360168, 36.831947, 32.097424>,  <45.620033, 37.260101, 31.551344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.360168, 36.831947, 32.097424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.482075, 36.576210, 31.815046>,  <45.555218, 36.422768, 31.645618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.482075, 36.576210, 31.815046>,  <45.360168, 36.831947, 32.097424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.482075, 36.576210, 31.815046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389962, -0.592469, 0.704919,
		-0.868936, -0.490125, 0.068757,
		0.304762, -0.639342, -0.705948,
		45.573502, 36.384407, 31.603262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.109005, 36.218582, 32.245960>,  <45.360168, 36.831947, 32.097424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.109005, 36.218582, 32.245960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.435043, 36.128197, 32.032581>,  <45.630665, 36.073967, 31.904554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.435043, 36.128197, 32.032581>,  <45.109005, 36.218582, 32.245960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.435043, 36.128197, 32.032581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287104, -0.642214, 0.710727,
		-0.503180, -0.732464, -0.458592,
		0.815096, -0.225960, -0.533443,
		45.679573, 36.060410, 31.872549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.217945, 35.448315, 32.342545>,  <45.109005, 36.218582, 32.245960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.217945, 35.448315, 32.342545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.576492, 35.578419, 32.222065>,  <45.791622, 35.656483, 32.149776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.576492, 35.578419, 32.222065>,  <45.217945, 35.448315, 32.342545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.576492, 35.578419, 32.222065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439827, -0.567640, 0.695943,
		0.055394, -0.756298, -0.651877,
		0.896373, 0.325264, -0.301197,
		45.845406, 35.675999, 32.131706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.636353, 34.825886, 32.207001>,  <45.217945, 35.448315, 32.342545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.636353, 34.825886, 32.207001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.885460, 35.129742, 32.281940>,  <46.034924, 35.312057, 32.326904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.885460, 35.129742, 32.281940>,  <45.636353, 34.825886, 32.207001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.885460, 35.129742, 32.281940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486784, -0.563656, 0.667333,
		0.612534, -0.324399, -0.720810,
		0.622771, 0.759643, 0.187346,
		46.072292, 35.357635, 32.338146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.263378, 34.499546, 32.319088>,  <45.636353, 34.825886, 32.207001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.263378, 34.499546, 32.319088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.306023, 34.862461, 32.481792>,  <46.331608, 35.080212, 32.579414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.306023, 34.862461, 32.481792>,  <46.263378, 34.499546, 32.319088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.306023, 34.862461, 32.481792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568005, -0.391346, 0.724029,
		0.816091, 0.153853, -0.557069,
		0.106612, 0.907291, 0.406763,
		46.338005, 35.134647, 32.603821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.044792, 34.563908, 32.396191>,  <46.263378, 34.499546, 32.319088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.044792, 34.563908, 32.396191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.828812, 34.803619, 32.632603>,  <46.699223, 34.947449, 32.774448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.828812, 34.803619, 32.632603>,  <47.044792, 34.563908, 32.396191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.828812, 34.803619, 32.632603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501016, -0.335404, 0.797801,
		0.676342, 0.726887, -0.119150,
		-0.539948, 0.599283, 0.591030,
		46.666828, 34.983406, 32.809914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.427269, 34.934513, 32.826569>,  <47.044792, 34.563908, 32.396191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.427269, 34.934513, 32.826569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.068901, 34.930027, 33.004196>,  <46.853878, 34.927338, 33.110775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.068901, 34.930027, 33.004196>,  <47.427269, 34.934513, 32.826569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.068901, 34.930027, 33.004196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401229, -0.449433, 0.798139,
		0.190631, 0.893244, 0.407155,
		-0.895921, -0.011212, 0.444071,
		46.800125, 34.926662, 33.137417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.437870, 35.174656, 33.483479>,  <47.427269, 34.934513, 32.826569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.437870, 35.174656, 33.483479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.129818, 34.919540, 33.488071>,  <46.944988, 34.766472, 33.490826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.129818, 34.919540, 33.488071>,  <47.437870, 35.174656, 33.483479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.129818, 34.919540, 33.488071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464772, -0.548698, 0.694923,
		-0.436912, 0.540516, 0.718993,
		-0.770127, -0.637788, 0.011484,
		46.898781, 34.728203, 33.491516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.197670, 34.964039, 34.194714>,  <47.437870, 35.174656, 33.483479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.197670, 34.964039, 34.194714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.071465, 34.668571, 33.956448>,  <46.995739, 34.491291, 33.813488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.071465, 34.668571, 33.956448>,  <47.197670, 34.964039, 34.194714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.071465, 34.668571, 33.956448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215972, -0.667156, 0.712923,
		-0.924016, 0.096293, 0.370031,
		-0.315518, -0.738668, -0.595666,
		46.976810, 34.446972, 33.777748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.867191, 34.599117, 34.528782>,  <47.197670, 34.964039, 34.194714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.867191, 34.599117, 34.528782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.745560, 34.940567, 34.697948>,  <47.672581, 35.145439, 34.799450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.745560, 34.940567, 34.697948>,  <47.867191, 34.599117, 34.528782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.745560, 34.940567, 34.697948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449422, -0.519974, 0.726393,
		0.839974, 0.030812, 0.541752,
		-0.304078, 0.853626, 0.422917,
		47.654335, 35.196655, 34.824825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.137688, 37.945374, 43.718369> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.791630, 37.825207, 43.557732>,  <34.583996, 37.753105, 43.461349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.791630, 37.825207, 43.557732>,  <35.137688, 37.945374, 43.718369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791630, 37.825207, 43.557732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302338, 0.326481, -0.895545,
		0.400150, -0.896192, -0.191625,
		-0.865142, -0.300417, -0.401595,
		34.532085, 37.735081, 43.437252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318851, 37.879707, 43.015377>,  <35.137688, 37.945374, 43.718369>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.318851, 37.879707, 43.015377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.924786, 37.834450, 42.963757>,  <34.688347, 37.807293, 42.932785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.924786, 37.834450, 42.963757>,  <35.318851, 37.879707, 43.015377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.924786, 37.834450, 42.963757> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093579, 0.276206, -0.956532,
		0.143873, -0.954415, -0.261519,
		-0.985162, -0.113146, -0.129052,
		34.629238, 37.800507, 42.925041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176884, 37.433529, 42.466606>,  <35.318851, 37.879707, 43.015377>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.176884, 37.433529, 42.466606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.849026, 37.659748, 42.503147>,  <34.652309, 37.795479, 42.525070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.849026, 37.659748, 42.503147>,  <35.176884, 37.433529, 42.466606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849026, 37.659748, 42.503147> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048083, 0.226812, -0.972751,
		-0.570853, -0.792916, -0.213098,
		-0.819643, 0.565544, 0.091351,
		34.603134, 37.829411, 42.530552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741512, 37.291988, 41.795414>,  <35.176884, 37.433529, 42.466606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.741512, 37.291988, 41.795414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.618042, 37.629108, 41.971783>,  <34.543961, 37.831379, 42.077602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.618042, 37.629108, 41.971783>,  <34.741512, 37.291988, 41.795414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.618042, 37.629108, 41.971783> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207609, 0.392684, -0.895934,
		-0.928234, -0.368093, 0.053760,
		-0.308676, 0.842797, 0.440922,
		34.525440, 37.881947, 42.104057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.087475, 37.426208, 41.466869>,  <34.741512, 37.291988, 41.795414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.087475, 37.426208, 41.466869> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.221195, 37.774349, 41.611492>,  <34.301430, 37.983234, 41.698265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.221195, 37.774349, 41.611492>,  <34.087475, 37.426208, 41.466869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221195, 37.774349, 41.611492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097965, 0.349462, -0.931815,
		-0.937360, 0.346931, 0.031562,
		0.334305, 0.870354, 0.361558,
		34.321487, 38.035454, 41.719959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.763618, 38.033566, 41.048512>,  <34.087475, 37.426208, 41.466869>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.763618, 38.033566, 41.048512> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.095791, 38.165600, 41.228031>,  <34.295094, 38.244820, 41.335743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.095791, 38.165600, 41.228031>,  <33.763618, 38.033566, 41.048512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.095791, 38.165600, 41.228031> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212490, 0.557019, -0.802856,
		-0.515000, 0.762085, 0.392429,
		0.830435, 0.330084, 0.448800,
		34.344921, 38.264626, 41.362671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.714207, 38.733673, 40.906467>,  <33.763618, 38.033566, 41.048512>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.714207, 38.733673, 40.906467> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.096081, 38.642033, 40.982456>,  <34.325207, 38.587048, 41.028049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.096081, 38.642033, 40.982456>,  <33.714207, 38.733673, 40.906467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.096081, 38.642033, 40.982456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279403, 0.470037, -0.837257,
		0.102518, 0.852397, 0.512748,
		0.954685, -0.229097, 0.189975,
		34.382488, 38.573303, 41.039448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.073414, 39.320763, 40.780792>,  <33.714207, 38.733673, 40.906467>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.073414, 39.320763, 40.780792> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.358322, 39.041405, 40.752735>,  <34.529266, 38.873791, 40.735901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.358322, 39.041405, 40.752735>,  <34.073414, 39.320763, 40.780792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358322, 39.041405, 40.752735> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403377, 0.489063, -0.773372,
		0.574425, 0.522553, 0.630060,
		0.712267, -0.698395, -0.070145,
		34.572002, 38.831886, 40.731693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.717545, 39.618366, 40.692772>,  <34.073414, 39.320763, 40.780792>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.717545, 39.618366, 40.692772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.793797, 39.243378, 40.576279>,  <34.839546, 39.018387, 40.506382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.793797, 39.243378, 40.576279>,  <34.717545, 39.618366, 40.692772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793797, 39.243378, 40.576279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329582, 0.340569, -0.880561,
		0.924681, 0.071879, 0.373895,
		0.190631, -0.937468, -0.291228,
		34.850986, 38.962139, 40.488911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290024, 39.665356, 40.357121>,  <34.717545, 39.618366, 40.692772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290024, 39.665356, 40.357121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.188129, 39.305721, 40.214710>,  <35.126991, 39.089939, 40.129265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.188129, 39.305721, 40.214710>,  <35.290024, 39.665356, 40.357121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.188129, 39.305721, 40.214710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472218, 0.205632, -0.857161,
		0.843872, -0.386471, 0.372183,
		-0.254735, -0.899086, -0.356026,
		35.111710, 39.035995, 40.107903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949501, 39.326290, 40.029346>,  <35.290024, 39.665356, 40.357121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949501, 39.326290, 40.029346> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.620041, 39.156971, 39.878391>,  <35.422363, 39.055382, 39.787819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.620041, 39.156971, 39.878391>,  <35.949501, 39.326290, 40.029346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620041, 39.156971, 39.878391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390608, 0.058976, -0.918666,
		0.411124, -0.904070, 0.116767,
		-0.823652, -0.423296, -0.377383,
		35.372944, 39.029984, 39.765175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147411, 38.846558, 39.524254>,  <35.949501, 39.326290, 40.029346>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147411, 38.846558, 39.524254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.782200, 38.958988, 39.406021>,  <35.563072, 39.026447, 39.335083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.782200, 38.958988, 39.406021>,  <36.147411, 38.846558, 39.524254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.782200, 38.958988, 39.406021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318259, 0.037671, -0.947255,
		-0.255113, -0.958947, -0.123849,
		-0.913033, 0.281073, -0.295583,
		35.508289, 39.043308, 39.317345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048309, 38.370510, 39.020145>,  <36.147411, 38.846558, 39.524254>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048309, 38.370510, 39.020145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.750473, 38.617882, 38.919647>,  <35.571770, 38.766304, 38.859348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.750473, 38.617882, 38.919647>,  <36.048309, 38.370510, 39.020145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750473, 38.617882, 38.919647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220020, -0.127976, -0.967064,
		-0.630216, -0.775348, -0.040777,
		-0.744593, 0.618432, -0.251245,
		35.527096, 38.803410, 38.844273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583675, 37.996506, 38.501629>,  <36.048309, 38.370510, 39.020145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.583675, 37.996506, 38.501629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.562984, 38.394890, 38.472252>,  <35.550571, 38.633919, 38.454624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.562984, 38.394890, 38.472252>,  <35.583675, 37.996506, 38.501629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.562984, 38.394890, 38.472252> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106588, -0.067614, -0.992002,
		-0.992957, -0.059140, -0.102660,
		-0.051726, 0.995957, -0.073441,
		35.547466, 38.693676, 38.450218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154209, 38.174171, 37.957005>,  <35.583675, 37.996506, 38.501629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.154209, 38.174171, 37.957005> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.367119, 38.505939, 38.024815>,  <35.494865, 38.705002, 38.065498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.367119, 38.505939, 38.024815>,  <35.154209, 38.174171, 37.957005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.367119, 38.505939, 38.024815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179712, 0.084978, -0.980042,
		-0.827275, 0.552121, -0.103825,
		0.532278, 0.829422, 0.169523,
		35.526802, 38.754765, 38.075672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992344, 38.569191, 37.424961>,  <35.154209, 38.174171, 37.957005>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992344, 38.569191, 37.424961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.342560, 38.733086, 37.527363>,  <35.552689, 38.831421, 37.588802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.342560, 38.733086, 37.527363>,  <34.992344, 38.569191, 37.424961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.342560, 38.733086, 37.527363> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265481, 0.034701, -0.963491,
		-0.403661, 0.911544, -0.078395,
		0.875544, 0.409736, 0.256005,
		35.605225, 38.856007, 37.604164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141788, 38.973129, 36.832470>,  <34.992344, 38.569191, 37.424961>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141788, 38.973129, 36.832470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.492413, 38.944618, 37.022865>,  <35.702785, 38.927509, 37.137104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.492413, 38.944618, 37.022865>,  <35.141788, 38.973129, 36.832470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492413, 38.944618, 37.022865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462662, -0.147760, -0.874134,
		0.132642, 0.986451, -0.096541,
		0.876556, -0.071281, 0.475993,
		35.755379, 38.923233, 37.165665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651745, 39.460083, 36.467674>,  <35.141788, 38.973129, 36.832470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651745, 39.460083, 36.467674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.882923, 39.208637, 36.675835>,  <36.021629, 39.057770, 36.800732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.882923, 39.208637, 36.675835>,  <35.651745, 39.460083, 36.467674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882923, 39.208637, 36.675835> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553736, -0.166345, -0.815908,
		0.599461, 0.759716, 0.251950,
		0.577948, -0.628618, 0.520399,
		36.056309, 39.020050, 36.831955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336742, 39.695503, 36.412380>,  <35.651745, 39.460083, 36.467674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.336742, 39.695503, 36.412380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.368336, 39.302731, 36.481159>,  <36.387291, 39.067066, 36.522427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.368336, 39.302731, 36.481159>,  <36.336742, 39.695503, 36.412380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.368336, 39.302731, 36.481159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693116, -0.069877, -0.717431,
		0.716485, 0.175849, 0.675075,
		0.078987, -0.981934, 0.171950,
		36.392033, 39.008152, 36.532745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005363, 39.627411, 36.193897>,  <36.336742, 39.695503, 36.412380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005363, 39.627411, 36.193897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.860847, 39.257191, 36.239208>,  <36.774139, 39.035061, 36.266396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.860847, 39.257191, 36.239208>,  <37.005363, 39.627411, 36.193897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860847, 39.257191, 36.239208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753487, -0.361345, -0.549260,
		0.549298, -0.113090, 0.827938,
		-0.361288, -0.925549, 0.113274,
		36.752460, 38.979527, 36.273190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.603146, 39.059139, 36.338543>,  <37.005363, 39.627411, 36.193897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.603146, 39.059139, 36.338543> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.290062, 38.862679, 36.185635>,  <37.102211, 38.744801, 36.093891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.290062, 38.862679, 36.185635>,  <37.603146, 39.059139, 36.338543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290062, 38.862679, 36.185635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554268, -0.270697, -0.787090,
		0.283101, -0.827945, 0.484108,
		-0.782714, -0.491152, -0.382269,
		37.055248, 38.715332, 36.070953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791111, 38.329514, 36.138195>,  <37.603146, 39.059139, 36.338543>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791111, 38.329514, 36.138195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.478325, 38.444530, 35.916977>,  <37.290653, 38.513542, 35.784248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.478325, 38.444530, 35.916977>,  <37.791111, 38.329514, 36.138195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.478325, 38.444530, 35.916977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466354, -0.318809, -0.825151,
		-0.413581, -0.903150, 0.115200,
		-0.781962, 0.287542, -0.553041,
		37.243736, 38.530792, 35.751064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091946, 37.722630, 35.714233>,  <37.791111, 38.329514, 36.138195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.091946, 37.722630, 35.714233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.434326, 37.519600, 35.753639>,  <38.639755, 37.397781, 35.777283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.434326, 37.519600, 35.753639>,  <38.091946, 37.722630, 35.714233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434326, 37.519600, 35.753639> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244909, -0.230201, 0.941821,
		-0.455368, -0.830285, -0.321352,
		0.855955, -0.507577, 0.098518,
		38.691113, 37.367329, 35.783195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041641, 37.520004, 36.367123>,  <38.091946, 37.722630, 35.714233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041641, 37.520004, 36.367123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.413269, 37.381313, 36.315575>,  <38.636246, 37.298100, 36.284645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.413269, 37.381313, 36.315575>,  <38.041641, 37.520004, 36.367123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413269, 37.381313, 36.315575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047850, -0.232810, 0.971344,
		-0.366796, -0.908614, -0.199706,
		0.929070, -0.346729, -0.128871,
		38.691990, 37.277294, 36.276913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987305, 36.861874, 36.387123>,  <38.041641, 37.520004, 36.367123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.987305, 36.861874, 36.387123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.364574, 36.947990, 36.488377>,  <38.590935, 36.999660, 36.549129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.364574, 36.947990, 36.488377>,  <37.987305, 36.861874, 36.387123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364574, 36.947990, 36.488377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175318, -0.324737, 0.929414,
		0.282300, -0.920975, -0.268537,
		0.943170, 0.215294, 0.253137,
		38.647526, 37.012577, 36.564316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204247, 36.366112, 36.829536>,  <37.987305, 36.861874, 36.387123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204247, 36.366112, 36.829536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.474792, 36.648701, 36.912888>,  <38.637119, 36.818256, 36.962898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.474792, 36.648701, 36.912888>,  <38.204247, 36.366112, 36.829536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474792, 36.648701, 36.912888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078010, -0.212603, 0.974020,
		0.732421, -0.675051, -0.088686,
		0.676368, 0.706474, 0.208375,
		38.677704, 36.860641, 36.975399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503311, 36.062485, 37.389851>,  <38.204247, 36.366112, 36.829536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.503311, 36.062485, 37.389851> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.617382, 36.445595, 37.404507>,  <38.685825, 36.675461, 37.413300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.617382, 36.445595, 37.404507>,  <38.503311, 36.062485, 37.389851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.617382, 36.445595, 37.404507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106432, -0.006348, 0.994300,
		0.952548, -0.287450, 0.100127,
		0.285175, 0.957775, 0.036641,
		38.702934, 36.732925, 37.415501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019890, 36.073498, 37.882320>,  <38.503311, 36.062485, 37.389851>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.019890, 36.073498, 37.882320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.904987, 36.453953, 37.837040>,  <38.836044, 36.682228, 37.809872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.904987, 36.453953, 37.837040>,  <39.019890, 36.073498, 37.882320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.904987, 36.453953, 37.837040> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173302, 0.064624, 0.982746,
		0.942044, 0.301923, 0.146271,
		-0.287261, 0.951139, -0.113202,
		38.818810, 36.739296, 37.803078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453037, 36.546772, 38.288116>,  <39.019890, 36.073498, 37.882320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.453037, 36.546772, 38.288116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.098392, 36.718895, 38.220299>,  <38.885605, 36.822170, 38.179607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.098392, 36.718895, 38.220299>,  <39.453037, 36.546772, 38.288116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.098392, 36.718895, 38.220299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144032, 0.091470, 0.985337,
		0.439509, 0.898035, -0.019120,
		-0.886615, 0.430310, -0.169547,
		38.832409, 36.847988, 38.169434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346558, 36.852936, 38.884220>,  <39.453037, 36.546772, 38.288116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346558, 36.852936, 38.884220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.979530, 36.920860, 38.740425>,  <38.759312, 36.961613, 38.654148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.979530, 36.920860, 38.740425>,  <39.346558, 36.852936, 38.884220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.979530, 36.920860, 38.740425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344733, 0.110614, 0.932161,
		0.198053, 0.979250, -0.042957,
		-0.917570, 0.169808, -0.359487,
		38.704258, 36.971802, 38.632580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.072319, 37.512486, 39.239635>,  <39.346558, 36.852936, 38.884220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.072319, 37.512486, 39.239635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.753574, 37.299583, 39.125298>,  <38.562328, 37.171841, 39.056694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.753574, 37.299583, 39.125298>,  <39.072319, 37.512486, 39.239635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753574, 37.299583, 39.125298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437628, 0.182344, 0.880473,
		-0.416518, 0.826711, -0.378236,
		-0.796865, -0.532260, -0.285842,
		38.514515, 37.139904, 39.039543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502502, 37.899796, 39.400238>,  <39.072319, 37.512486, 39.239635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.502502, 37.899796, 39.400238> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.337791, 37.539059, 39.347908>,  <38.238964, 37.322617, 39.316509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.337791, 37.539059, 39.347908>,  <38.502502, 37.899796, 39.400238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.337791, 37.539059, 39.347908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686416, 0.212528, 0.695460,
		-0.599395, 0.376171, -0.706555,
		-0.411775, -0.901846, -0.130822,
		38.214260, 37.268505, 39.308662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800129, 37.967155, 39.458366>,  <38.502502, 37.899796, 39.400238>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.800129, 37.967155, 39.458366> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.820499, 37.571545, 39.513828>,  <37.832722, 37.334179, 39.547108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.820499, 37.571545, 39.513828>,  <37.800129, 37.967155, 39.458366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.820499, 37.571545, 39.513828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584316, 0.083087, 0.807262,
		-0.809926, -0.122133, -0.573675,
		0.050929, -0.989030, 0.138659,
		37.835777, 37.274837, 39.555428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114391, 37.755909, 39.731773>,  <37.800129, 37.967155, 39.458366>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.114391, 37.755909, 39.731773> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.341797, 37.438316, 39.817924>,  <37.478241, 37.247761, 39.869614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.341797, 37.438316, 39.817924>,  <37.114391, 37.755909, 39.731773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.341797, 37.438316, 39.817924> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540663, -0.163278, 0.825241,
		-0.620058, -0.585609, -0.522102,
		0.568517, -0.793979, 0.215376,
		37.512352, 37.200123, 39.882538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656242, 37.191025, 39.922035>,  <37.114391, 37.755909, 39.731773>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656242, 37.191025, 39.922035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.023228, 37.110649, 40.059372>,  <37.243420, 37.062424, 40.141773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.023228, 37.110649, 40.059372>,  <36.656242, 37.191025, 39.922035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.023228, 37.110649, 40.059372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361390, -0.060184, 0.930471,
		-0.166304, -0.977753, -0.127834,
		0.917464, -0.200939, 0.343341,
		37.298466, 37.050369, 40.162373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605244, 36.632656, 40.371548>,  <36.656242, 37.191025, 39.922035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605244, 36.632656, 40.371548> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.943027, 36.817509, 40.479862>,  <37.145699, 36.928421, 40.544849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.943027, 36.817509, 40.479862>,  <36.605244, 36.632656, 40.371548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943027, 36.817509, 40.479862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312270, 0.014029, 0.949890,
		0.435176, -0.886700, 0.156157,
		0.844458, 0.462133, 0.270784,
		37.196365, 36.956150, 40.561096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.917850, 36.144241, 40.842461>,  <36.605244, 36.632656, 40.371548>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.917850, 36.144241, 40.842461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.084232, 36.501938, 40.908562>,  <37.184063, 36.716557, 40.948223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.084232, 36.501938, 40.908562>,  <36.917850, 36.144241, 40.842461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.084232, 36.501938, 40.908562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248352, -0.063109, 0.966612,
		0.874816, -0.443108, 0.195836,
		0.415954, 0.894244, 0.165255,
		37.209019, 36.770210, 40.958138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542915, 36.024395, 41.372570>,  <36.917850, 36.144241, 40.842461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542915, 36.024395, 41.372570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.427742, 36.406536, 41.399109>,  <37.358639, 36.635818, 41.415031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.427742, 36.406536, 41.399109>,  <37.542915, 36.024395, 41.372570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.427742, 36.406536, 41.399109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011808, -0.072818, 0.997275,
		0.957578, 0.286363, 0.032248,
		-0.287931, 0.955350, 0.066348,
		37.341362, 36.693142, 41.419014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.802231, 36.286133, 41.989086>,  <37.542915, 36.024395, 41.372570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.802231, 36.286133, 41.989086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.564732, 36.600407, 41.919609>,  <37.422234, 36.788971, 41.877922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.564732, 36.600407, 41.919609>,  <37.802231, 36.286133, 41.989086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564732, 36.600407, 41.919609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106510, 0.290702, 0.950867,
		0.797572, 0.546074, -0.256286,
		-0.593746, 0.785682, -0.173693,
		37.386608, 36.836113, 41.867500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997822, 36.879501, 42.522926>,  <37.802231, 36.286133, 41.989086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.997822, 36.879501, 42.522926> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.627541, 36.962883, 42.396675>,  <37.405373, 37.012913, 42.320927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.627541, 36.962883, 42.396675>,  <37.997822, 36.879501, 42.522926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627541, 36.962883, 42.396675> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254627, 0.273631, 0.927519,
		0.279706, 0.938975, -0.200225,
		-0.925705, 0.208450, -0.315625,
		37.349831, 37.025417, 42.301987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.284695, 37.951126, 43.069984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.074238, 37.657223, 42.898727>,  <36.947964, 37.480881, 42.795975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.074238, 37.657223, 42.898727>,  <37.284695, 37.951126, 43.069984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.074238, 37.657223, 42.898727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149211, -0.415890, 0.897091,
		-0.837201, 0.535884, 0.109186,
		-0.526146, -0.734754, -0.428144,
		36.916393, 37.436798, 42.770283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677578, 37.918007, 43.402054>,  <37.284695, 37.951126, 43.069984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677578, 37.918007, 43.402054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.744301, 37.556805, 43.243687>,  <36.784336, 37.340084, 43.148666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.744301, 37.556805, 43.243687>,  <36.677578, 37.918007, 43.402054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.744301, 37.556805, 43.243687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280886, -0.428423, 0.858812,
		-0.945134, -0.032050, -0.325107,
		0.166808, -0.903010, -0.395914,
		36.794342, 37.285900, 43.124912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091263, 37.582596, 43.468758>,  <36.677578, 37.918007, 43.402054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.091263, 37.582596, 43.468758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.345020, 37.277840, 43.416500>,  <36.497272, 37.094986, 43.385147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.345020, 37.277840, 43.416500>,  <36.091263, 37.582596, 43.468758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.345020, 37.277840, 43.416500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366139, -0.445001, 0.817261,
		-0.680801, -0.470630, -0.561263,
		0.634391, -0.761893, -0.130641,
		36.535339, 37.049271, 43.377308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709877, 36.977501, 43.437263>,  <36.091263, 37.582596, 43.468758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709877, 36.977501, 43.437263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.081375, 36.858799, 43.526142>,  <36.304272, 36.787579, 43.579468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.081375, 36.858799, 43.526142>,  <35.709877, 36.977501, 43.437263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.081375, 36.858799, 43.526142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345041, -0.472734, 0.810845,
		-0.135583, -0.829734, -0.541442,
		0.928743, -0.296756, 0.222198,
		36.359997, 36.769772, 43.592800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.633621, 36.150021, 43.590370>,  <35.709877, 36.977501, 43.437263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.633621, 36.150021, 43.590370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.980896, 36.277901, 43.742180>,  <36.189262, 36.354630, 43.833267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.980896, 36.277901, 43.742180>,  <35.633621, 36.150021, 43.590370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.980896, 36.277901, 43.742180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152129, -0.556512, 0.816793,
		0.472342, -0.766867, -0.434521,
		0.868188, 0.319703, 0.379526,
		36.241352, 36.373810, 43.856037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966644, 35.536072, 43.785156>,  <35.633621, 36.150021, 43.590370>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.966644, 35.536072, 43.785156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.073112, 35.855606, 44.000938>,  <36.136993, 36.047329, 44.130405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.073112, 35.855606, 44.000938>,  <35.966644, 35.536072, 43.785156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.073112, 35.855606, 44.000938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148711, -0.518909, 0.841795,
		0.952385, -0.304284, -0.019323,
		0.266171, 0.798840, 0.539451,
		36.152966, 36.095257, 44.162773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314484, 35.193245, 44.382759>,  <35.966644, 35.536072, 43.785156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.314484, 35.193245, 44.382759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.255470, 35.569904, 44.503780>,  <36.220062, 35.795898, 44.576393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.255470, 35.569904, 44.503780>,  <36.314484, 35.193245, 44.382759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.255470, 35.569904, 44.503780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197017, -0.327752, 0.923993,
		0.969236, 0.076711, 0.233874,
		-0.147533, 0.941644, 0.302556,
		36.211212, 35.852398, 44.594547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851974, 35.355461, 44.881336>,  <36.314484, 35.193245, 44.382759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851974, 35.355461, 44.881336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.574730, 35.634830, 44.952663>,  <36.408382, 35.802452, 44.995461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.574730, 35.634830, 44.952663>,  <36.851974, 35.355461, 44.881336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.574730, 35.634830, 44.952663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031142, -0.218136, 0.975421,
		0.720157, 0.681629, 0.129443,
		-0.693112, 0.698426, 0.178319,
		36.366795, 35.844357, 45.006161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056175, 35.672913, 45.565228>,  <36.851974, 35.355461, 44.881336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056175, 35.672913, 45.565228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.672737, 35.759571, 45.491291>,  <36.442677, 35.811565, 45.446930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.672737, 35.759571, 45.491291>,  <37.056175, 35.672913, 45.565228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.672737, 35.759571, 45.491291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255185, -0.365315, 0.895224,
		0.126420, 0.905323, 0.405473,
		-0.958592, 0.216644, -0.184842,
		36.385159, 35.824566, 45.435837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807133, 36.178425, 46.114025>,  <37.056175, 35.672913, 45.565228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807133, 36.178425, 46.114025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.504234, 35.965698, 45.962368>,  <36.322495, 35.838062, 45.871372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.504234, 35.965698, 45.962368>,  <36.807133, 36.178425, 46.114025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.504234, 35.965698, 45.962368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202948, -0.360177, 0.910541,
		-0.620801, 0.766449, 0.164811,
		-0.757244, -0.531817, -0.379147,
		36.277061, 35.806152, 45.848625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342106, 36.230110, 46.623203>,  <36.807133, 36.178425, 46.114025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.342106, 36.230110, 46.623203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.193623, 35.916710, 46.423874>,  <36.104530, 35.728668, 46.304276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.193623, 35.916710, 46.423874>,  <36.342106, 36.230110, 46.623203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.193623, 35.916710, 46.423874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332688, -0.388820, 0.859149,
		-0.866903, 0.484713, -0.116327,
		-0.371210, -0.783500, -0.498328,
		36.082260, 35.681660, 46.274376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689602, 36.077385, 46.885578>,  <36.342106, 36.230110, 46.623203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.689602, 36.077385, 46.885578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.810726, 35.730473, 46.727531>,  <35.883400, 35.522324, 46.632702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.810726, 35.730473, 46.727531>,  <35.689602, 36.077385, 46.885578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.810726, 35.730473, 46.727531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257534, -0.473625, 0.842232,
		-0.917595, -0.153282, -0.366776,
		0.302813, -0.867285, -0.395121,
		35.901569, 35.470287, 46.608994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259037, 35.621941, 47.090084>,  <35.689602, 36.077385, 46.885578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259037, 35.621941, 47.090084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.538479, 35.353432, 46.991005>,  <35.706142, 35.192326, 46.931557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.538479, 35.353432, 46.991005>,  <35.259037, 35.621941, 47.090084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.538479, 35.353432, 46.991005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231535, -0.539644, 0.809430,
		-0.677016, -0.508116, -0.532417,
		0.698599, -0.671270, -0.247700,
		35.748058, 35.152050, 46.916695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000748, 34.983757, 47.315460>,  <35.259037, 35.621941, 47.090084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.000748, 34.983757, 47.315460> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.369606, 34.855938, 47.228241>,  <35.590919, 34.779247, 47.175911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.369606, 34.855938, 47.228241>,  <35.000748, 34.983757, 47.315460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369606, 34.855938, 47.228241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039796, -0.639019, 0.768160,
		-0.384798, -0.699676, -0.601983,
		0.922142, -0.319543, -0.218049,
		35.646248, 34.760075, 47.162827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940876, 34.222645, 47.209545>,  <35.000748, 34.983757, 47.315460>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940876, 34.222645, 47.209545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.318996, 34.309647, 47.306786>,  <35.545868, 34.361847, 47.365131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.318996, 34.309647, 47.306786>,  <34.940876, 34.222645, 47.209545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.318996, 34.309647, 47.306786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020003, -0.782505, 0.622323,
		0.325583, -0.583420, -0.744054,
		0.945302, 0.217501, 0.243101,
		35.602589, 34.374897, 47.379715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300838, 33.562378, 47.188553>,  <34.940876, 34.222645, 47.209545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300838, 33.562378, 47.188553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.513126, 33.822231, 47.406292>,  <35.640499, 33.978142, 47.536934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.513126, 33.822231, 47.406292>,  <35.300838, 33.562378, 47.188553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.513126, 33.822231, 47.406292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067693, -0.672699, 0.736813,
		0.844840, -0.354192, -0.400990,
		0.530719, 0.649633, 0.544347,
		35.672340, 34.017120, 47.569595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830910, 33.186794, 47.555176>,  <35.300838, 33.562378, 47.188553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830910, 33.186794, 47.555176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.809113, 33.525810, 47.766350>,  <35.796036, 33.729218, 47.893055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.809113, 33.525810, 47.766350>,  <35.830910, 33.186794, 47.555176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809113, 33.525810, 47.766350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139173, -0.517112, 0.844527,
		0.988768, 0.119494, -0.089776,
		-0.054492, 0.847535, 0.527934,
		35.792767, 33.780071, 47.924728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291088, 33.127296, 48.096504>,  <35.830910, 33.186794, 47.555176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291088, 33.127296, 48.096504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.043655, 33.418896, 48.213753>,  <35.895195, 33.593853, 48.284103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.043655, 33.418896, 48.213753>,  <36.291088, 33.127296, 48.096504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043655, 33.418896, 48.213753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063384, -0.418150, 0.906164,
		0.783159, 0.541957, 0.304867,
		-0.618582, 0.728994, 0.293126,
		35.858082, 33.637592, 48.301689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558018, 33.316017, 48.778210>,  <36.291088, 33.127296, 48.096504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.558018, 33.316017, 48.778210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.182808, 33.448677, 48.737968>,  <35.957684, 33.528275, 48.713825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.182808, 33.448677, 48.737968>,  <36.558018, 33.316017, 48.778210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.182808, 33.448677, 48.737968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234386, -0.393240, 0.889059,
		0.255297, 0.857537, 0.446602,
		-0.938023, 0.331651, -0.100602,
		35.901402, 33.548172, 48.707787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.463303, 33.659725, 49.367554>,  <36.558018, 33.316017, 48.778210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.463303, 33.659725, 49.367554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.099621, 33.547783, 49.244255>,  <35.881413, 33.480618, 49.170277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.099621, 33.547783, 49.244255>,  <36.463303, 33.659725, 49.367554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099621, 33.547783, 49.244255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218241, -0.310146, 0.925300,
		-0.354556, 0.908564, 0.220910,
		-0.909209, -0.279859, -0.308250,
		35.826859, 33.463825, 49.151779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.157211, 33.684895, 49.949203>,  <36.463303, 33.659725, 49.367554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.157211, 33.684895, 49.949203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.903477, 33.470181, 49.726681>,  <35.751236, 33.341351, 49.593166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.903477, 33.470181, 49.726681>,  <36.157211, 33.684895, 49.949203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903477, 33.470181, 49.726681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297041, -0.495126, 0.816466,
		-0.713711, 0.683160, 0.154629,
		-0.634338, -0.536789, -0.556303,
		35.713177, 33.309143, 49.559792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502625, 33.667622, 50.357506>,  <36.157211, 33.684895, 49.949203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502625, 33.667622, 50.357506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.524261, 33.339359, 50.129963>,  <35.537243, 33.142403, 49.993439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.524261, 33.339359, 50.129963>,  <35.502625, 33.667622, 50.357506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.524261, 33.339359, 50.129963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425011, -0.534432, 0.730581,
		-0.903570, 0.202249, -0.377698,
		0.054095, -0.820657, -0.568855,
		35.540489, 33.093163, 49.959305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865681, 33.183147, 50.232227>,  <35.502625, 33.667622, 50.357506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.865681, 33.183147, 50.232227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.184673, 32.942860, 50.209755>,  <35.376068, 32.798687, 50.196274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.184673, 32.942860, 50.209755>,  <34.865681, 33.183147, 50.232227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184673, 32.942860, 50.209755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334288, -0.517447, 0.787718,
		-0.502264, -0.609415, -0.613469,
		0.797485, -0.600717, -0.056175,
		35.423920, 32.762642, 50.192902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134708, 33.391571, 50.218582>,  <34.865681, 33.183147, 50.232227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.134708, 33.391571, 50.218582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.735783, 33.396400, 50.247463>,  <33.496426, 33.399296, 50.264793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.735783, 33.396400, 50.247463>,  <34.134708, 33.391571, 50.218582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.735783, 33.396400, 50.247463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070050, 0.129161, -0.989146,
		-0.021265, -0.991550, -0.127969,
		-0.997317, 0.012070, 0.072204,
		33.436588, 33.400021, 50.269123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018803, 33.355213, 49.537045>,  <34.134708, 33.391571, 50.218582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018803, 33.355213, 49.537045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.639973, 33.385639, 49.661789>,  <33.412674, 33.403896, 49.736637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.639973, 33.385639, 49.661789>,  <34.018803, 33.355213, 49.537045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.639973, 33.385639, 49.661789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315684, -0.044498, -0.947820,
		-0.058228, -0.996109, 0.066159,
		-0.947076, 0.076075, 0.311865,
		33.355850, 33.408459, 49.755348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.788601, 32.909668, 49.110935>,  <34.018803, 33.355213, 49.537045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.788601, 32.909668, 49.110935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.496876, 33.156548, 49.229034>,  <33.321842, 33.304676, 49.299892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.496876, 33.156548, 49.229034>,  <33.788601, 32.909668, 49.110935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.496876, 33.156548, 49.229034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190497, 0.231289, -0.954052,
		-0.657125, -0.752046, -0.051109,
		-0.729313, 0.617196, 0.295248,
		33.278084, 33.341705, 49.317608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.217258, 32.788982, 48.608700>,  <33.788601, 32.909668, 49.110935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.217258, 32.788982, 48.608700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.122910, 33.129375, 48.796398>,  <33.066299, 33.333611, 48.909019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.122910, 33.129375, 48.796398>,  <33.217258, 32.788982, 48.608700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122910, 33.129375, 48.796398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330429, 0.383869, -0.862242,
		-0.913882, -0.358434, 0.190643,
		-0.235875, 0.850981, 0.469247,
		33.052147, 33.384670, 48.937172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.618443, 33.024834, 48.206226>,  <33.217258, 32.788982, 48.608700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.618443, 33.024834, 48.206226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.757732, 33.351826, 48.389732>,  <32.841305, 33.548019, 48.499836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.757732, 33.351826, 48.389732>,  <32.618443, 33.024834, 48.206226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757732, 33.351826, 48.389732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125536, 0.525655, -0.841384,
		-0.928967, 0.235400, 0.285670,
		0.348226, 0.817480, 0.458765,
		32.862202, 33.597069, 48.527363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.103386, 33.499931, 48.042915>,  <32.618443, 33.024834, 48.206226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.103386, 33.499931, 48.042915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.435558, 33.695919, 48.148979>,  <32.634861, 33.813511, 48.212616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.435558, 33.695919, 48.148979>,  <32.103386, 33.499931, 48.042915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.435558, 33.695919, 48.148979> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004892, 0.482336, -0.875973,
		-0.557096, 0.726140, 0.402945,
		0.830434, 0.489972, 0.265155,
		32.684689, 33.842911, 48.228527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.932709, 34.245495, 48.051060>,  <32.103386, 33.499931, 48.042915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.932709, 34.245495, 48.051060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.328152, 34.202953, 48.008450>,  <32.565418, 34.177429, 47.982883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.328152, 34.202953, 48.008450>,  <31.932709, 34.245495, 48.051060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.328152, 34.202953, 48.008450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008059, 0.669288, -0.742959,
		0.150310, 0.735353, 0.660805,
		0.988606, -0.106349, -0.106527,
		32.624733, 34.171047, 47.976490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.206676, 34.864254, 47.996624>,  <31.932709, 34.245495, 48.051060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.206676, 34.864254, 47.996624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.487534, 34.638294, 47.823242>,  <32.656048, 34.502720, 47.719212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.487534, 34.638294, 47.823242>,  <32.206676, 34.864254, 47.996624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.487534, 34.638294, 47.823242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103093, 0.682994, -0.723112,
		0.704532, 0.463043, 0.537797,
		0.702144, -0.564899, -0.433454,
		32.698177, 34.468826, 47.693207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.448338, 35.324711, 47.536999>,  <32.206676, 34.864254, 47.996624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.448338, 35.324711, 47.536999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.645058, 35.003380, 47.402657>,  <32.763088, 34.810581, 47.322052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.645058, 35.003380, 47.402657>,  <32.448338, 35.324711, 47.536999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.645058, 35.003380, 47.402657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270909, 0.507761, -0.817794,
		0.827492, 0.311202, 0.467345,
		0.491798, -0.803326, -0.335860,
		32.792599, 34.762383, 47.301899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.027645, 35.564682, 47.364857>,  <32.448338, 35.324711, 47.536999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.027645, 35.564682, 47.364857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.016117, 35.219139, 47.163692>,  <33.009201, 35.011814, 47.042995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.016117, 35.219139, 47.163692>,  <33.027645, 35.564682, 47.364857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.016117, 35.219139, 47.163692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409340, 0.448800, -0.794367,
		0.911927, -0.228757, 0.340676,
		-0.028821, -0.863857, -0.502912,
		33.007469, 34.959984, 47.012817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.547295, 35.431267, 47.000916>,  <33.027645, 35.564682, 47.364857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.547295, 35.431267, 47.000916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.335854, 35.167583, 46.786991>,  <33.208988, 35.009373, 46.658638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.335854, 35.167583, 46.786991>,  <33.547295, 35.431267, 47.000916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.335854, 35.167583, 46.786991> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313497, 0.433884, -0.844668,
		0.788859, -0.614156, -0.022692,
		-0.528603, -0.659210, -0.534809,
		33.177273, 34.969822, 46.626549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.014809, 35.070145, 46.676334>,  <33.547295, 35.431267, 47.000916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.014809, 35.070145, 46.676334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.670815, 35.075111, 46.472271>,  <33.464417, 35.078091, 46.349831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.670815, 35.075111, 46.472271>,  <34.014809, 35.070145, 46.676334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.670815, 35.075111, 46.472271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452713, 0.479942, -0.751469,
		0.235517, -0.877212, -0.418366,
		-0.859989, 0.012416, -0.510161,
		33.412819, 35.078835, 46.319221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.218369, 34.856182, 45.968201>,  <34.014809, 35.070145, 46.676334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.218369, 34.856182, 45.968201> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.859970, 35.032623, 45.947720>,  <33.644932, 35.138489, 45.935429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.859970, 35.032623, 45.947720>,  <34.218369, 34.856182, 45.968201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.859970, 35.032623, 45.947720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330719, 0.585898, -0.739830,
		-0.296338, -0.679819, -0.670843,
		-0.895996, 0.441100, -0.051205,
		33.591171, 35.164955, 45.932358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.136570, 35.052666, 45.323322>,  <34.218369, 34.856182, 45.968201>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.136570, 35.052666, 45.323322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.834579, 35.289894, 45.435238>,  <33.653385, 35.432232, 45.502388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.834579, 35.289894, 45.435238>,  <34.136570, 35.052666, 45.323322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.834579, 35.289894, 45.435238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246126, 0.651750, -0.717387,
		-0.607814, -0.472744, -0.638024,
		-0.754973, 0.593072, 0.279788,
		33.608089, 35.467815, 45.519173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.841091, 35.191380, 44.729443>,  <34.136570, 35.052666, 45.323322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.841091, 35.191380, 44.729443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.731667, 35.486240, 44.976597>,  <33.666012, 35.663155, 45.124889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.731667, 35.486240, 44.976597>,  <33.841091, 35.191380, 44.729443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731667, 35.486240, 44.976597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169383, 0.669266, -0.723459,
		-0.946823, -0.093251, -0.307944,
		-0.273560, 0.737149, 0.617881,
		33.649597, 35.707386, 45.161961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390053, 35.705383, 44.366020>,  <33.841091, 35.191380, 44.729443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390053, 35.705383, 44.366020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.500538, 35.916477, 44.687317>,  <33.566830, 36.043133, 44.880096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.500538, 35.916477, 44.687317>,  <33.390053, 35.705383, 44.366020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.500538, 35.916477, 44.687317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073313, 0.821753, -0.565109,
		-0.958295, 0.214980, 0.188292,
		0.276216, 0.527737, 0.803242,
		33.583405, 36.074799, 44.928291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.996765, 36.212162, 44.246693>,  <33.390053, 35.705383, 44.366020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.996765, 36.212162, 44.246693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.263397, 36.357761, 44.506897>,  <33.423378, 36.445122, 44.663021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.263397, 36.357761, 44.506897>,  <32.996765, 36.212162, 44.246693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.263397, 36.357761, 44.506897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044693, 0.851585, -0.522308,
		-0.744090, 0.377236, 0.551384,
		0.666583, 0.364001, 0.650515,
		33.463371, 36.466961, 44.702053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.921780, 36.913452, 44.353088>,  <32.996765, 36.212162, 44.246693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.921780, 36.913452, 44.353088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.280510, 36.881092, 44.527061>,  <33.495747, 36.861675, 44.631443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.280510, 36.881092, 44.527061>,  <32.921780, 36.913452, 44.353088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.280510, 36.881092, 44.527061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306889, 0.821878, -0.479934,
		-0.318635, 0.563891, 0.761905,
		0.896823, -0.080896, 0.434931,
		33.549557, 36.856823, 44.657539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146236, 37.589458, 44.662746>,  <32.921780, 36.913452, 44.353088>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.146236, 37.589458, 44.662746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.453915, 37.362724, 44.544739>,  <33.638523, 37.226685, 44.473934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.453915, 37.362724, 44.544739>,  <33.146236, 37.589458, 44.662746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.453915, 37.362724, 44.544739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372748, 0.772998, -0.513355,
		0.519036, 0.284903, 0.805873,
		0.769195, -0.566837, -0.295017,
		33.684673, 37.192673, 44.456234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.603485, 38.104721, 44.440422>,  <33.146236, 37.589458, 44.662746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.603485, 38.104721, 44.440422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.770363, 37.773998, 44.289509>,  <33.870491, 37.575565, 44.198959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.770363, 37.773998, 44.289509>,  <33.603485, 38.104721, 44.440422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.770363, 37.773998, 44.289509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431677, 0.545598, -0.718316,
		0.799751, 0.136815, 0.584534,
		0.417197, -0.826803, -0.377283,
		33.895523, 37.525959, 44.176323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361210, 38.231567, 44.282417>,  <33.603485, 38.104721, 44.440422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361210, 38.231567, 44.282417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.253139, 37.934650, 44.037140>,  <34.188297, 37.756500, 43.889973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.253139, 37.934650, 44.037140>,  <34.361210, 38.231567, 44.282417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.253139, 37.934650, 44.037140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491124, 0.441538, -0.750894,
		0.828132, -0.504026, 0.245266,
		-0.270176, -0.742295, -0.613191,
		34.172089, 37.711964, 43.853184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.719391, 42.994804, 31.769753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.319893, 43.014797, 31.768448>,  <44.080193, 43.026794, 31.767666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.319893, 43.014797, 31.768448>,  <44.719391, 42.994804, 31.769753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.319893, 43.014797, 31.768448> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045846, -0.885972, 0.461467,
		0.020178, 0.461037, 0.887151,
		-0.998745, 0.049984, -0.003260,
		44.020271, 43.029793, 31.767469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.586525, 42.814407, 32.408199>,  <44.719391, 42.994804, 31.769753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.586525, 42.814407, 32.408199> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.278423, 42.730934, 32.167149>,  <44.093563, 42.680851, 32.022518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.278423, 42.730934, 32.167149>,  <44.586525, 42.814407, 32.408199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.278423, 42.730934, 32.167149> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100661, -0.893320, 0.438003,
		-0.629741, 0.398035, 0.667078,
		-0.770255, -0.208679, -0.602627,
		44.047348, 42.668331, 31.986361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.084843, 42.452240, 32.860168>,  <44.586525, 42.814407, 32.408199>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.084843, 42.452240, 32.860168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.003071, 42.343842, 32.483921>,  <43.954006, 42.278801, 32.258171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.003071, 42.343842, 32.483921>,  <44.084843, 42.452240, 32.860168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.003071, 42.343842, 32.483921> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003262, -0.961098, 0.276189,
		-0.978875, 0.053394, 0.197365,
		-0.204434, -0.270998, -0.940620,
		43.941742, 42.262543, 32.201736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.549164, 42.084938, 32.915955>,  <44.084843, 42.452240, 32.860168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.549164, 42.084938, 32.915955> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.630150, 41.957993, 32.545380>,  <43.678741, 41.881824, 32.323032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.630150, 41.957993, 32.545380>,  <43.549164, 42.084938, 32.915955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.630150, 41.957993, 32.545380> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145606, -0.945272, 0.291991,
		-0.968404, 0.075777, -0.237594,
		0.202465, -0.317360, -0.926440,
		43.690891, 41.862785, 32.267448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.958172, 41.688374, 32.708290>,  <43.549164, 42.084938, 32.915955>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.958172, 41.688374, 32.708290> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.221672, 41.583847, 32.426083>,  <43.379772, 41.521130, 32.256756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.221672, 41.583847, 32.426083>,  <42.958172, 41.688374, 32.708290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.221672, 41.583847, 32.426083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297083, -0.951887, 0.075178,
		-0.691222, 0.160075, -0.704690,
		0.658752, -0.261316, -0.705521,
		43.419296, 41.505451, 32.214428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.611881, 41.282284, 32.201344>,  <42.958172, 41.688374, 32.708290>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.611881, 41.282284, 32.201344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.001572, 41.192963, 32.188599>,  <43.235386, 41.139370, 32.180954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.001572, 41.192963, 32.188599>,  <42.611881, 41.282284, 32.201344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.001572, 41.192963, 32.188599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211915, -0.954499, 0.209818,
		-0.077260, -0.197659, -0.977221,
		0.974229, -0.223298, -0.031858,
		43.293842, 41.125973, 32.179043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.585438, 40.563026, 31.990921>,  <42.611881, 41.282284, 32.201344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.585438, 40.563026, 31.990921> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.954815, 40.626358, 32.130741>,  <43.176441, 40.664356, 32.214634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.954815, 40.626358, 32.130741>,  <42.585438, 40.563026, 31.990921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.954815, 40.626358, 32.130741> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026894, -0.935375, 0.352634,
		0.382794, -0.316236, -0.868023,
		0.923443, 0.158330, 0.349551,
		43.231846, 40.673859, 32.235607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.014893, 40.070847, 31.696297>,  <42.585438, 40.563026, 31.990921>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.014893, 40.070847, 31.696297> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.179192, 40.163242, 32.049099>,  <43.277771, 40.218678, 32.260780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.179192, 40.163242, 32.049099>,  <43.014893, 40.070847, 31.696297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.179192, 40.163242, 32.049099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090913, -0.972931, 0.212463,
		0.907206, -0.007083, -0.420627,
		0.410746, 0.230988, 0.882004,
		43.302414, 40.232540, 32.313702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.672832, 39.726376, 31.751976>,  <43.014893, 40.070847, 31.696297>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.672832, 39.726376, 31.751976> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.634224, 39.828152, 32.136879>,  <43.611057, 39.889217, 32.367821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.634224, 39.828152, 32.136879>,  <43.672832, 39.726376, 31.751976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.634224, 39.828152, 32.136879> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057512, -0.963731, 0.260603,
		0.993668, 0.080496, 0.078390,
		-0.096525, 0.254444, 0.962258,
		43.605267, 39.904484, 32.425556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.249943, 39.401077, 32.084728>,  <43.672832, 39.726376, 31.751976>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.249943, 39.401077, 32.084728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.998520, 39.477497, 32.386303>,  <43.847668, 39.523350, 32.567249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.998520, 39.477497, 32.386303>,  <44.249943, 39.401077, 32.084728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.998520, 39.477497, 32.386303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247960, -0.869554, 0.427074,
		0.737180, 0.455386, 0.499188,
		-0.628554, 0.191052, 0.753935,
		43.809952, 39.534813, 32.612484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.535889, 39.093765, 32.551189>,  <44.249943, 39.401077, 32.084728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.535889, 39.093765, 32.551189> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.177856, 39.112537, 32.728558>,  <43.963036, 39.123802, 32.834980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.177856, 39.112537, 32.728558>,  <44.535889, 39.093765, 32.551189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.177856, 39.112537, 32.728558> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204444, -0.840564, 0.501653,
		0.396268, 0.539676, 0.742779,
		-0.895083, 0.046933, 0.443422,
		43.909332, 39.126617, 32.861584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.700642, 38.839039, 33.213276>,  <44.535889, 39.093765, 32.551189>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.700642, 38.839039, 33.213276> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.301571, 38.822735, 33.191425>,  <44.062130, 38.812954, 33.178314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.301571, 38.822735, 33.191425>,  <44.700642, 38.839039, 33.213276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.301571, 38.822735, 33.191425> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012054, -0.894381, 0.447144,
		-0.067080, 0.445446, 0.892793,
		-0.997675, -0.040756, -0.054626,
		44.002270, 38.810509, 33.175037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.328075, 38.793633, 33.944302>,  <44.700642, 38.839039, 33.213276>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.328075, 38.793633, 33.944302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.084827, 38.639782, 33.666527>,  <43.938877, 38.547470, 33.499863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.084827, 38.639782, 33.666527>,  <44.328075, 38.793633, 33.944302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.084827, 38.639782, 33.666527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041667, -0.858113, 0.511767,
		-0.792748, 0.340153, 0.505813,
		-0.608124, -0.384626, -0.694441,
		43.902390, 38.524395, 33.458195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.857754, 38.454922, 34.347122>,  <44.328075, 38.793633, 33.944302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.857754, 38.454922, 34.347122> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.837940, 38.314346, 33.973164>,  <43.826054, 38.230000, 33.748787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.837940, 38.314346, 33.973164>,  <43.857754, 38.454922, 34.347122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.837940, 38.314346, 33.973164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027236, -0.936176, 0.350474,
		-0.998401, -0.008103, 0.055944,
		-0.049534, -0.351438, -0.934900,
		43.823082, 38.208916, 33.692692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.298740, 38.021137, 34.394707>,  <43.857754, 38.454922, 34.347122>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.298740, 38.021137, 34.394707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.497231, 37.928963, 34.059887>,  <43.616325, 37.873657, 33.858994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.497231, 37.928963, 34.059887>,  <43.298740, 38.021137, 34.394707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.497231, 37.928963, 34.059887> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075302, -0.949074, 0.305921,
		-0.864920, -0.214838, -0.453606,
		0.496229, -0.230440, -0.837051,
		43.646099, 37.859829, 33.808773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.003754, 37.471783, 34.086548>,  <43.298740, 38.021137, 34.394707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.003754, 37.471783, 34.086548> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.367924, 37.456112, 33.921822>,  <43.586426, 37.446709, 33.822987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.367924, 37.456112, 33.921822>,  <43.003754, 37.471783, 34.086548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.367924, 37.456112, 33.921822> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047399, -0.979071, 0.197920,
		-0.410954, -0.199711, -0.889512,
		0.910423, -0.039174, -0.411820,
		43.641052, 37.444359, 33.798275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.158169, 36.747337, 33.969685>,  <43.003754, 37.471783, 34.086548>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.158169, 36.747337, 33.969685> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.524429, 36.895901, 33.908195>,  <43.744186, 36.985039, 33.871304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.524429, 36.895901, 33.908195>,  <43.158169, 36.747337, 33.969685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.524429, 36.895901, 33.908195> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392781, -0.908004, 0.145777,
		-0.085436, -0.193860, -0.977302,
		0.915655, 0.371411, -0.153721,
		43.799126, 37.007324, 33.862080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.502548, 36.289310, 33.498951>,  <43.158169, 36.747337, 33.969685>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.502548, 36.289310, 33.498951> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.793064, 36.473553, 33.703049>,  <43.967373, 36.584099, 33.825508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.793064, 36.473553, 33.703049>,  <43.502548, 36.289310, 33.498951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.793064, 36.473553, 33.703049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458021, -0.877778, 0.140434,
		0.512564, 0.131706, -0.848488,
		0.726288, 0.460607, 0.510242,
		44.010952, 36.611736, 33.856121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.184345, 36.027699, 33.166759>,  <43.502548, 36.289310, 33.498951>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.184345, 36.027699, 33.166759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.228542, 36.154221, 33.543640>,  <44.255058, 36.230133, 33.769768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.228542, 36.154221, 33.543640>,  <44.184345, 36.027699, 33.166759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.228542, 36.154221, 33.543640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478912, -0.847631, 0.228397,
		0.870882, 0.425996, -0.245136,
		0.110489, 0.316306, 0.942201,
		44.261688, 36.249111, 33.826302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.866909, 35.803429, 33.406548>,  <44.184345, 36.027699, 33.166759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.866909, 35.803429, 33.406548> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.691990, 35.887695, 33.756268>,  <44.587040, 35.938255, 33.966099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.691990, 35.887695, 33.756268>,  <44.866909, 35.803429, 33.406548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.691990, 35.887695, 33.756268> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318068, -0.873111, 0.369471,
		0.841194, 0.439653, 0.314798,
		-0.437293, 0.210670, 0.874296,
		44.560802, 35.950897, 34.018555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.420525, 35.742268, 33.850422>,  <44.866909, 35.803429, 33.406548>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.420525, 35.742268, 33.850422> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.068359, 35.696621, 34.034527>,  <44.857059, 35.669235, 34.144989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.068359, 35.696621, 34.034527>,  <45.420525, 35.742268, 33.850422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.068359, 35.696621, 34.034527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281252, -0.907122, 0.313093,
		0.381788, 0.405103, 0.830740,
		-0.880417, -0.114112, 0.460265,
		44.804234, 35.662388, 34.172607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.074467, 35.861862, 33.574085>,  <45.420525, 35.742268, 33.850422>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.074467, 35.861862, 33.574085> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.354736, 35.662689, 33.369686>,  <46.522896, 35.543186, 33.247047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.354736, 35.662689, 33.369686>,  <46.074467, 35.861862, 33.574085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.354736, 35.662689, 33.369686> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286206, 0.459898, -0.840583,
		0.653563, 0.735224, 0.179725,
		0.700672, -0.497935, -0.510998,
		46.564938, 35.513309, 33.216385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.537422, 36.247829, 33.204262>,  <46.074467, 35.861862, 33.574085>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.537422, 36.247829, 33.204262> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.514961, 35.906738, 32.996529>,  <46.501484, 35.702084, 32.871887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.514961, 35.906738, 32.996529>,  <46.537422, 36.247829, 33.204262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.514961, 35.906738, 32.996529> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248444, 0.515726, -0.819940,
		0.967017, 0.082982, -0.240815,
		-0.056155, -0.852726, -0.519332,
		46.498116, 35.650921, 32.840729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.951771, 36.302624, 32.601200>,  <46.537422, 36.247829, 33.204262>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.951771, 36.302624, 32.601200> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.689648, 36.011250, 32.521252>,  <46.532375, 35.836426, 32.473282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.689648, 36.011250, 32.521252>,  <46.951771, 36.302624, 32.601200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.689648, 36.011250, 32.521252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234020, 0.447370, -0.863189,
		0.718199, -0.518878, -0.463634,
		-0.655306, -0.728440, -0.199873,
		46.493057, 35.792717, 32.461288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.988129, 36.164124, 31.789753>,  <46.951771, 36.302624, 32.601200>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.988129, 36.164124, 31.789753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.630234, 36.009808, 31.879740>,  <46.415497, 35.917217, 31.933731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.630234, 36.009808, 31.879740>,  <46.988129, 36.164124, 31.789753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.630234, 36.009808, 31.879740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376046, 0.379103, -0.845500,
		0.240898, -0.841100, -0.484272,
		-0.894739, -0.385787, 0.224967,
		46.361813, 35.894070, 31.947229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.773693, 35.714603, 31.204386>,  <46.988129, 36.164124, 31.789753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.773693, 35.714603, 31.204386> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.443336, 35.823727, 31.401758>,  <46.245121, 35.889198, 31.520182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.443336, 35.823727, 31.401758>,  <46.773693, 35.714603, 31.204386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.443336, 35.823727, 31.401758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417884, 0.291340, -0.860520,
		-0.378509, -0.916897, -0.126616,
		-0.825896, 0.272804, 0.493431,
		46.195568, 35.905567, 31.549788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.149437, 35.602337, 30.744057>,  <46.773693, 35.714603, 31.204386>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.149437, 35.602337, 30.744057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.966740, 35.834694, 31.013557>,  <45.857121, 35.974110, 31.175259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.966740, 35.834694, 31.013557>,  <46.149437, 35.602337, 30.744057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.966740, 35.834694, 31.013557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706541, 0.223319, -0.671512,
		-0.540540, -0.782744, 0.308427,
		-0.456745, 0.580896, 0.673754,
		45.829716, 36.008961, 31.215683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.501038, 35.470585, 30.643642>,  <46.149437, 35.602337, 30.744057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.501038, 35.470585, 30.643642> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.506668, 35.830509, 30.818062>,  <45.510048, 36.046463, 30.922712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.506668, 35.830509, 30.818062>,  <45.501038, 35.470585, 30.643642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.506668, 35.830509, 30.818062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649500, 0.339790, -0.680215,
		-0.760231, -0.273637, 0.589212,
		0.014076, 0.899814, 0.436046,
		45.510891, 36.100452, 30.948875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.845886, 35.622688, 30.792046>,  <45.501038, 35.470585, 30.643642>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.845886, 35.622688, 30.792046> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.036911, 35.973583, 30.772491>,  <45.151524, 36.184120, 30.760759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.036911, 35.973583, 30.772491>,  <44.845886, 35.622688, 30.792046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.036911, 35.973583, 30.772491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755114, 0.381358, -0.533262,
		-0.449156, 0.291578, 0.844536,
		0.477558, 0.877239, -0.048885,
		45.180180, 36.236755, 30.757826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.284508, 36.078159, 30.874693>,  <44.845886, 35.622688, 30.792046>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.284508, 36.078159, 30.874693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.583675, 36.286392, 30.709959>,  <44.763176, 36.411331, 30.611118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.583675, 36.286392, 30.709959>,  <44.284508, 36.078159, 30.874693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.583675, 36.286392, 30.709959> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660242, 0.519413, -0.542486,
		-0.068494, 0.677648, 0.732189,
		0.747923, 0.520579, -0.411835,
		44.808052, 36.442566, 30.586409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.117455, 36.762230, 30.942265>,  <44.284508, 36.078159, 30.874693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.117455, 36.762230, 30.942265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.376846, 36.776150, 30.638088>,  <44.532482, 36.784500, 30.455584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.376846, 36.776150, 30.638088>,  <44.117455, 36.762230, 30.942265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.376846, 36.776150, 30.638088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656126, 0.532062, -0.535171,
		0.385977, 0.845990, 0.367863,
		0.648475, 0.034801, -0.760440,
		44.571388, 36.786591, 30.409956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.206779, 37.451393, 30.756374>,  <44.117455, 36.762230, 30.942265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.206779, 37.451393, 30.756374> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.322189, 37.239510, 30.437334>,  <44.391434, 37.112381, 30.245911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.322189, 37.239510, 30.437334>,  <44.206779, 37.451393, 30.756374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.322189, 37.239510, 30.437334> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563282, 0.579713, -0.588767,
		0.774252, 0.619148, -0.131113,
		0.288526, -0.529707, -0.797598,
		44.408749, 37.080597, 30.198055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.417862, 37.945435, 30.331198>,  <44.206779, 37.451393, 30.756374>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.417862, 37.945435, 30.331198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.300732, 37.612019, 30.143808>,  <44.230453, 37.411968, 30.031376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.300732, 37.612019, 30.143808>,  <44.417862, 37.945435, 30.331198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.300732, 37.612019, 30.143808> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590014, 0.543068, -0.597462,
		0.752419, 0.101450, -0.650826,
		-0.292830, -0.833538, -0.468471,
		44.212883, 37.361958, 30.003267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.462189, 38.127850, 29.667252>,  <44.417862, 37.945435, 30.331198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.462189, 38.127850, 29.667252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.232922, 37.802185, 29.630112>,  <44.095360, 37.606789, 29.607828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.232922, 37.802185, 29.630112>,  <44.462189, 38.127850, 29.667252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.232922, 37.802185, 29.630112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637849, 0.514415, -0.573172,
		0.514415, -0.269303, -0.814158,
		0.573172, 0.814158, 0.092848,
		44.060970, 37.557938, 29.602257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.411102, 38.071301, 28.915426>,  <44.462189, 38.127850, 29.667252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.411102, 38.071301, 28.915426> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.104576, 37.905697, 29.111940>,  <43.920662, 37.806335, 29.229849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.104576, 37.905697, 29.111940>,  <44.411102, 38.071301, 28.915426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.104576, 37.905697, 29.111940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637271, 0.586874, -0.499464,
		-0.081540, -0.695828, -0.713565,
		-0.766314, -0.414008, 0.491285,
		43.874683, 37.781494, 29.259325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.925507, 38.087837, 28.441418>,  <44.411102, 38.071301, 28.915426>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.925507, 38.087837, 28.441418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.734402, 37.982826, 28.776754>,  <43.619740, 37.919819, 28.977957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.734402, 37.982826, 28.776754>,  <43.925507, 38.087837, 28.441418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.734402, 37.982826, 28.776754> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828693, 0.451407, -0.330907,
		-0.291560, -0.852825, -0.433225,
		-0.477766, -0.262531, 0.838342,
		43.591072, 37.904068, 29.028257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.176945, 38.011349, 28.269138>,  <43.925507, 38.087837, 28.441418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.176945, 38.011349, 28.269138> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.171162, 38.076939, 28.663681>,  <43.167690, 38.116295, 28.900408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.171162, 38.076939, 28.663681>,  <43.176945, 38.011349, 28.269138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.171162, 38.076939, 28.663681> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732108, 0.670149, -0.122143,
		-0.681035, -0.723887, 0.110358,
		-0.014461, 0.163977, 0.986358,
		43.166824, 38.126133, 28.959589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.458370, 38.104027, 28.406670>,  <43.176945, 38.011349, 28.269138>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.458370, 38.104027, 28.406670> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.611351, 38.259064, 28.742170>,  <42.703140, 38.352085, 28.943470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.611351, 38.259064, 28.742170>,  <42.458370, 38.104027, 28.406670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.611351, 38.259064, 28.742170> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797338, 0.597138, 0.087627,
		-0.466886, -0.702281, 0.537418,
		0.382452, 0.387592, 0.838751,
		42.726086, 38.375340, 28.993795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.966682, 38.047417, 29.018070>,  <42.458370, 38.104027, 28.406670>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.966682, 38.047417, 29.018070> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.200043, 38.356098, 29.119356>,  <42.340061, 38.541306, 29.180128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.200043, 38.356098, 29.119356>,  <41.966682, 38.047417, 29.018070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.200043, 38.356098, 29.119356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791018, 0.469173, 0.392640,
		0.184200, -0.429364, 0.884147,
		0.583403, 0.771701, 0.253213,
		42.375065, 38.587608, 29.195320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.654430, 38.329830, 29.735380>,  <41.966682, 38.047417, 29.018070>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.654430, 38.329830, 29.735380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.841373, 38.641514, 29.568331>,  <41.953537, 38.828526, 29.468102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.841373, 38.641514, 29.568331>,  <41.654430, 38.329830, 29.735380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.841373, 38.641514, 29.568331> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815538, 0.562352, 0.136594,
		0.341287, 0.276751, 0.898294,
		0.467355, 0.779211, -0.417624,
		41.981579, 38.875278, 29.443043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.605305, 38.899376, 30.274273>,  <41.654430, 38.329830, 29.735380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.605305, 38.899376, 30.274273> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.674141, 39.082687, 29.925478>,  <41.715443, 39.192673, 29.716200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.674141, 39.082687, 29.925478>,  <41.605305, 38.899376, 30.274273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.674141, 39.082687, 29.925478> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637992, 0.726312, 0.255806,
		0.750567, 0.512301, 0.417368,
		0.172090, 0.458277, -0.871990,
		41.725769, 39.220169, 29.663881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.335949, 39.591618, 30.454206>,  <41.605305, 38.899376, 30.274273>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.335949, 39.591618, 30.454206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.421547, 39.574482, 30.063848>,  <41.472904, 39.564201, 29.829634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.421547, 39.574482, 30.063848>,  <41.335949, 39.591618, 30.454206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.421547, 39.574482, 30.063848> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591804, 0.789136, -0.164416,
		0.777158, 0.612722, 0.143517,
		0.213996, -0.042843, -0.975895,
		41.485744, 39.561630, 29.771080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.273502, 36.236664, 40.312954> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.025070, 36.513779, 40.166363>,  <37.876011, 36.680046, 40.078407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.025070, 36.513779, 40.166363>,  <38.273502, 36.236664, 40.312954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.025070, 36.513779, 40.166363> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354371, -0.168844, -0.919735,
		-0.699056, -0.701101, -0.140636,
		-0.621081, 0.692784, -0.366481,
		37.838745, 36.721615, 40.056419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.038380, 35.957924, 39.708912>,  <38.273502, 36.236664, 40.312954>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.038380, 35.957924, 39.708912> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978882, 36.352703, 39.684250>,  <37.943184, 36.589573, 39.669453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978882, 36.352703, 39.684250>,  <38.038380, 35.957924, 39.708912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978882, 36.352703, 39.684250> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266152, -0.020091, -0.963721,
		-0.952385, -0.159759, -0.259691,
		-0.148745, 0.986952, -0.061655,
		37.934258, 36.648788, 39.665752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.760490, 36.054638, 39.127728>,  <38.038380, 35.957924, 39.708912>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.760490, 36.054638, 39.127728> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881603, 36.432030, 39.181648>,  <37.954269, 36.658466, 39.214001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881603, 36.432030, 39.181648>,  <37.760490, 36.054638, 39.127728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.881603, 36.432030, 39.181648> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334534, 0.027229, -0.941990,
		-0.892418, 0.330312, -0.307382,
		0.302781, 0.943479, 0.134800,
		37.972439, 36.715073, 39.222088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479885, 36.494587, 38.617607>,  <37.760490, 36.054638, 39.127728>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.479885, 36.494587, 38.617607> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807178, 36.684376, 38.747448>,  <38.003555, 36.798248, 38.825352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807178, 36.684376, 38.747448>,  <37.479885, 36.494587, 38.617607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.807178, 36.684376, 38.747448> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240050, 0.231076, -0.942857,
		-0.522370, 0.849399, 0.075177,
		0.818234, 0.474474, 0.324605,
		38.052650, 36.826717, 38.844830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.458855, 37.060768, 38.209229>,  <37.479885, 36.494587, 38.617607>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.458855, 37.060768, 38.209229> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838936, 37.015667, 38.325436>,  <38.066986, 36.988605, 38.395161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838936, 37.015667, 38.325436>,  <37.458855, 37.060768, 38.209229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.838936, 37.015667, 38.325436> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310683, 0.270317, -0.911265,
		0.024213, 0.956147, 0.291886,
		0.950205, -0.112749, 0.290514,
		38.123997, 36.981842, 38.412590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810020, 37.595253, 37.836662>,  <37.458855, 37.060768, 38.209229>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810020, 37.595253, 37.836662> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112843, 37.354122, 37.937439>,  <38.294537, 37.209446, 37.997906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112843, 37.354122, 37.937439>,  <37.810020, 37.595253, 37.836662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112843, 37.354122, 37.937439> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390366, 0.108122, -0.914289,
		0.523915, 0.790514, 0.317176,
		0.757051, -0.602825, 0.251943,
		38.339958, 37.173275, 38.013023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407227, 37.981857, 37.670898>,  <37.810020, 37.595253, 37.836662>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407227, 37.981857, 37.670898> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527771, 37.602375, 37.709122>,  <38.600098, 37.374683, 37.732056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527771, 37.602375, 37.709122>,  <38.407227, 37.981857, 37.670898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527771, 37.602375, 37.709122> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477270, 0.063327, -0.876472,
		0.825465, 0.309746, 0.471874,
		0.301366, -0.948708, 0.095558,
		38.618179, 37.317764, 37.737789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129307, 37.975368, 37.456497>,  <38.407227, 37.981857, 37.670898>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.129307, 37.975368, 37.456497> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003525, 37.596020, 37.439934>,  <38.928055, 37.368412, 37.429996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003525, 37.596020, 37.439934>,  <39.129307, 37.975368, 37.456497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.003525, 37.596020, 37.439934> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342414, -0.072635, -0.936737,
		0.885363, -0.308745, 0.347575,
		-0.314460, -0.948367, -0.041410,
		38.909187, 37.311508, 37.427509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706085, 37.582222, 37.238876>,  <39.129307, 37.975368, 37.456497>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.706085, 37.582222, 37.238876> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.373161, 37.379471, 37.149136>,  <39.173405, 37.257820, 37.095291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.373161, 37.379471, 37.149136>,  <39.706085, 37.582222, 37.238876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.373161, 37.379471, 37.149136> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314172, -0.097912, -0.944303,
		0.456677, -0.856441, 0.240739,
		-0.832311, -0.506875, -0.224356,
		39.123466, 37.227409, 37.081829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.987652, 37.093761, 36.798656>,  <39.706085, 37.582222, 37.238876>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.987652, 37.093761, 36.798656> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.592999, 37.102135, 36.734013>,  <39.356205, 37.107159, 36.695225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.592999, 37.102135, 36.734013>,  <39.987652, 37.093761, 36.798656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.592999, 37.102135, 36.734013> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154308, -0.198852, -0.967805,
		-0.052397, -0.979806, 0.192963,
		-0.986632, 0.020934, -0.161611,
		39.297009, 37.108418, 36.685528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.951393, 36.658985, 36.310871>,  <39.987652, 37.093761, 36.798656>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.951393, 36.658985, 36.310871> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.609001, 36.864605, 36.288746>,  <39.403568, 36.987976, 36.275471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.609001, 36.864605, 36.288746>,  <39.951393, 36.658985, 36.310871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.609001, 36.864605, 36.288746> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005789, -0.097450, -0.995224,
		-0.516985, -0.852207, 0.080439,
		-0.855975, 0.514050, -0.055314,
		39.352207, 37.018818, 36.272152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404846, 36.341267, 35.922451>,  <39.951393, 36.658985, 36.310871>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.404846, 36.341267, 35.922451> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340317, 36.734726, 35.890442>,  <39.301598, 36.970802, 35.871235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340317, 36.734726, 35.890442>,  <39.404846, 36.341267, 35.922451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340317, 36.734726, 35.890442> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119842, -0.060958, -0.990920,
		-0.979598, -0.169452, -0.108048,
		-0.161327, 0.983651, -0.080022,
		39.291920, 37.029823, 35.866436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958607, 36.115543, 35.395916>,  <39.404846, 36.341267, 35.922451>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.958607, 36.115543, 35.395916> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.089035, 36.169399, 35.770199>,  <40.167290, 36.201714, 35.994770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.089035, 36.169399, 35.770199>,  <39.958607, 36.115543, 35.395916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.089035, 36.169399, 35.770199> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911225, 0.308294, 0.273175,
		-0.251694, -0.941715, 0.223210,
		0.326067, 0.134638, 0.935710,
		40.186855, 36.209789, 36.050911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.112133, 35.466557, 34.974087>,  <39.958607, 36.115543, 35.395916>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.112133, 35.466557, 34.974087> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.155487, 35.196758, 34.681973>,  <40.181499, 35.034882, 34.506706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.155487, 35.196758, 34.681973>,  <40.112133, 35.466557, 34.974087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.155487, 35.196758, 34.681973> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732346, -0.550944, 0.400162,
		-0.672251, 0.491446, -0.553678,
		0.108387, -0.674493, -0.730281,
		40.188004, 34.994411, 34.462887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477909, 35.332348, 34.521004>,  <40.112133, 35.466557, 34.974087>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.477909, 35.332348, 34.521004> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.726192, 35.020351, 34.552841>,  <39.875164, 34.833153, 34.571945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.726192, 35.020351, 34.552841>,  <39.477909, 35.332348, 34.521004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726192, 35.020351, 34.552841> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718471, -0.525215, 0.456014,
		-0.313881, -0.340240, -0.886406,
		0.620708, -0.779991, 0.079598,
		39.912403, 34.786354, 34.576721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100948, 34.702667, 34.406471>,  <39.477909, 35.332348, 34.521004>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100948, 34.702667, 34.406471> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435200, 34.593575, 34.597191>,  <39.635750, 34.528118, 34.711620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435200, 34.593575, 34.597191>,  <39.100948, 34.702667, 34.406471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.435200, 34.593575, 34.597191> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520710, -0.669668, 0.529533,
		0.174872, -0.690767, -0.701613,
		0.835632, -0.272736, 0.476796,
		39.685890, 34.511753, 34.740231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906673, 33.981091, 34.524845>,  <39.100948, 34.702667, 34.406471>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.906673, 33.981091, 34.524845> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217030, 34.068066, 34.761730>,  <39.403244, 34.120251, 34.903862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217030, 34.068066, 34.761730>,  <38.906673, 33.981091, 34.524845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.217030, 34.068066, 34.761730> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419080, -0.524023, 0.741466,
		0.471551, -0.823482, -0.315464,
		0.775894, 0.217434, 0.592209,
		39.449799, 34.133297, 34.939392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090347, 33.313782, 34.820457>,  <38.906673, 33.981091, 34.524845>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090347, 33.313782, 34.820457> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234898, 33.602184, 35.056950>,  <39.321629, 33.775227, 35.198845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234898, 33.602184, 35.056950>,  <39.090347, 33.313782, 34.820457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.234898, 33.602184, 35.056950> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373713, -0.468926, 0.800279,
		0.854253, -0.510150, 0.099994,
		0.361373, 0.721010, 0.591231,
		39.343311, 33.818489, 35.234318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325806, 32.912655, 35.323654>,  <39.090347, 33.313782, 34.820457>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325806, 32.912655, 35.323654> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.259281, 33.278484, 35.471107>,  <39.219368, 33.497982, 35.559578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.259281, 33.278484, 35.471107>,  <39.325806, 32.912655, 35.323654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.259281, 33.278484, 35.471107> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304464, -0.403197, 0.862980,
		0.937893, 0.031285, 0.345511,
		-0.166308, 0.914578, 0.368630,
		39.209389, 33.552856, 35.581696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211628, 32.814529, 35.979172>,  <39.325806, 32.912655, 35.323654>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.211628, 32.814529, 35.979172> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146137, 33.206158, 36.027538>,  <39.106842, 33.441135, 36.056561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146137, 33.206158, 36.027538>,  <39.211628, 32.814529, 35.979172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146137, 33.206158, 36.027538> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340314, -0.171104, 0.924613,
		0.925949, 0.110230, 0.361204,
		-0.163723, 0.979067, 0.120921,
		39.097019, 33.499878, 36.063816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.552361, 32.995796, 36.649361>,  <39.211628, 32.814529, 35.979172>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.552361, 32.995796, 36.649361> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249405, 33.237030, 36.549240>,  <39.067631, 33.381771, 36.489166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249405, 33.237030, 36.549240>,  <39.552361, 32.995796, 36.649361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.249405, 33.237030, 36.549240> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433664, -0.178013, 0.883316,
		0.488156, 0.777561, 0.396361,
		-0.757389, 0.603084, -0.250302,
		39.022186, 33.417953, 36.474148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562859, 33.492126, 37.147163>,  <39.552361, 32.995796, 36.649361>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562859, 33.492126, 37.147163> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194450, 33.515785, 36.993168>,  <38.973404, 33.529980, 36.900772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194450, 33.515785, 36.993168>,  <39.562859, 33.492126, 37.147163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.194450, 33.515785, 36.993168> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387070, -0.028663, 0.921605,
		0.043478, 0.997838, 0.049294,
		-0.921025, 0.059150, -0.384987,
		38.918144, 33.533531, 36.877670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150978, 34.014465, 37.537716>,  <39.562859, 33.492126, 37.147163>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.150978, 34.014465, 37.537716> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.864838, 33.790333, 37.370720>,  <38.693153, 33.655853, 37.270523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.864838, 33.790333, 37.370720>,  <39.150978, 34.014465, 37.537716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864838, 33.790333, 37.370720> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539002, 0.062266, 0.840000,
		-0.444684, 0.825924, -0.346562,
		-0.715356, -0.560332, -0.417486,
		38.650230, 33.622234, 37.245476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.609180, 34.451153, 37.507267>,  <39.150978, 34.014465, 37.537716>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.609180, 34.451153, 37.507267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478935, 34.073429, 37.488293>,  <38.400787, 33.846794, 37.476910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478935, 34.073429, 37.488293>,  <38.609180, 34.451153, 37.507267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478935, 34.073429, 37.488293> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577127, 0.158760, 0.801074,
		-0.748934, 0.288216, -0.596682,
		-0.325612, -0.944313, -0.047437,
		38.381252, 33.790134, 37.474060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845562, 34.463924, 37.520481>,  <38.609180, 34.451153, 37.507267>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.845562, 34.463924, 37.520481> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911850, 34.087166, 37.637356>,  <37.951622, 33.861111, 37.707481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911850, 34.087166, 37.637356>,  <37.845562, 34.463924, 37.520481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.911850, 34.087166, 37.637356> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788856, 0.051198, 0.612442,
		-0.591815, -0.331986, -0.734534,
		0.165716, -0.941894, 0.292189,
		37.961563, 33.804596, 37.725014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210796, 34.172337, 37.629471>,  <37.845562, 34.463924, 37.520481>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.210796, 34.172337, 37.629471> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442860, 33.921574, 37.837471>,  <37.582100, 33.771114, 37.962273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442860, 33.921574, 37.837471>,  <37.210796, 34.172337, 37.629471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.442860, 33.921574, 37.837471> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697166, -0.052097, 0.715014,
		-0.421157, -0.777350, -0.467283,
		0.580160, -0.626907, 0.520001,
		37.616909, 33.733501, 37.993473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855602, 33.516460, 37.771839>,  <37.210796, 34.172337, 37.629471>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855602, 33.516460, 37.771839> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137661, 33.587364, 38.046459>,  <37.306896, 33.629906, 38.211231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137661, 33.587364, 38.046459>,  <36.855602, 33.516460, 37.771839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137661, 33.587364, 38.046459> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688911, -0.057907, 0.722529,
		0.167829, -0.982460, 0.081281,
		0.705149, 0.177257, 0.686546,
		37.349205, 33.640541, 38.252422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.658295, 33.080654, 38.291435>,  <36.855602, 33.516460, 37.771839>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.658295, 33.080654, 38.291435> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920685, 33.310707, 38.486954>,  <37.078117, 33.448738, 38.604263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920685, 33.310707, 38.486954>,  <36.658295, 33.080654, 38.291435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920685, 33.310707, 38.486954> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629974, 0.060492, 0.774256,
		0.415734, -0.815818, 0.402001,
		0.655970, 0.575136, 0.488796,
		37.117477, 33.483246, 38.633595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506424, 32.524452, 37.737453>,  <36.658295, 33.080654, 38.291435>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.506424, 32.524452, 37.737453> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178482, 32.351971, 37.586777>,  <35.981716, 32.248482, 37.496368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178482, 32.351971, 37.586777>,  <36.506424, 32.524452, 37.737453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178482, 32.351971, 37.586777> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154214, 0.467292, -0.870549,
		0.551410, -0.771817, -0.316615,
		-0.819857, -0.431204, -0.376695,
		35.932526, 32.222610, 37.473770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764275, 32.134438, 37.146854>,  <36.506424, 32.524452, 37.737453>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764275, 32.134438, 37.146854> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377419, 32.225052, 37.100689>,  <36.145306, 32.279419, 37.072990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377419, 32.225052, 37.100689>,  <36.764275, 32.134438, 37.146854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.377419, 32.225052, 37.100689> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218091, 0.505906, -0.834563,
		-0.130673, -0.832310, -0.538688,
		-0.967140, 0.226537, -0.115411,
		36.087276, 32.293015, 37.066067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614254, 31.866747, 36.513103>,  <36.764275, 32.134438, 37.146854>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614254, 31.866747, 36.513103> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307751, 32.117336, 36.570210>,  <36.123848, 32.267689, 36.604473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307751, 32.117336, 36.570210>,  <36.614254, 31.866747, 36.513103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307751, 32.117336, 36.570210> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021785, 0.196736, -0.980214,
		-0.642165, -0.754206, -0.137102,
		-0.766257, 0.626473, 0.142767,
		36.077873, 32.305279, 36.613041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.378704, 31.875055, 35.929989>,  <36.614254, 31.866747, 36.513103>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.378704, 31.875055, 35.929989> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.211655, 32.205650, 36.080990>,  <36.111423, 32.404007, 36.171589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.211655, 32.205650, 36.080990>,  <36.378704, 31.875055, 35.929989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.211655, 32.205650, 36.080990> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119814, 0.361746, -0.924546,
		-0.900684, -0.431345, -0.052050,
		-0.417627, 0.826487, 0.377500,
		36.086365, 32.453598, 36.194241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600426, 31.864994, 35.682575>,  <36.378704, 31.875055, 35.929989>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600426, 31.864994, 35.682575> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734406, 32.230530, 35.774406>,  <35.814793, 32.449852, 35.829506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734406, 32.230530, 35.774406>,  <35.600426, 31.864994, 35.682575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734406, 32.230530, 35.774406> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254373, 0.322310, -0.911817,
		-0.907249, 0.247017, 0.340415,
		0.334953, 0.913837, 0.229581,
		35.834892, 32.504681, 35.843281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.231537, 32.256832, 35.250565>,  <35.600426, 31.864994, 35.682575>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.231537, 32.256832, 35.250565> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.448044, 32.571381, 35.369663>,  <35.577946, 32.760109, 35.441124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.448044, 32.571381, 35.369663>,  <35.231537, 32.256832, 35.250565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448044, 32.571381, 35.369663> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204998, 0.466829, -0.860260,
		-0.815480, 0.404591, 0.413882,
		0.541266, 0.786370, 0.297749,
		35.610424, 32.807293, 35.458988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.813869, 32.834270, 35.215721>,  <35.231537, 32.256832, 35.250565>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.813869, 32.834270, 35.215721> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192562, 32.959274, 35.184669>,  <35.419777, 33.034279, 35.166039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192562, 32.959274, 35.184669>,  <34.813869, 32.834270, 35.215721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192562, 32.959274, 35.184669> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238259, 0.517656, -0.821745,
		-0.216620, 0.796472, 0.564543,
		0.946736, 0.312514, -0.077632,
		35.476582, 33.053028, 35.161381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662544, 33.579407, 35.057289>,  <34.813869, 32.834270, 35.215721>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.662544, 33.579407, 35.057289> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045525, 33.514374, 34.961903>,  <35.275311, 33.475353, 34.904671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045525, 33.514374, 34.961903>,  <34.662544, 33.579407, 35.057289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.045525, 33.514374, 34.961903> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039349, 0.744987, -0.665918,
		0.285917, 0.646963, 0.706887,
		0.957446, -0.162582, -0.238461,
		35.332760, 33.465599, 34.890366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975597, 34.211903, 34.967804>,  <34.662544, 33.579407, 35.057289>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.975597, 34.211903, 34.967804> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225979, 33.989689, 34.748875>,  <35.376205, 33.856361, 34.617516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225979, 33.989689, 34.748875>,  <34.975597, 34.211903, 34.967804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.225979, 33.989689, 34.748875> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087676, 0.647240, -0.757228,
		0.774918, 0.521975, 0.356433,
		0.625951, -0.555539, -0.547322,
		35.413765, 33.823029, 34.584679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.585857, 34.657455, 34.731541>,  <34.975597, 34.211903, 34.967804>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.585857, 34.657455, 34.731541> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537716, 34.350182, 34.480015>,  <35.508831, 34.165817, 34.329098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537716, 34.350182, 34.480015>,  <35.585857, 34.657455, 34.731541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537716, 34.350182, 34.480015> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145925, 0.640233, -0.754194,
		0.981947, 0.000988, -0.189153,
		-0.120357, -0.768181, -0.628819,
		35.501610, 34.119728, 34.291370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059563, 34.741123, 34.250263>,  <35.585857, 34.657455, 34.731541>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059563, 34.741123, 34.250263> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789551, 34.500694, 34.079128>,  <35.627544, 34.356438, 33.976448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789551, 34.500694, 34.079128>,  <36.059563, 34.741123, 34.250263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.789551, 34.500694, 34.079128> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020681, 0.595080, -0.803400,
		0.737502, -0.533470, -0.414126,
		-0.675028, -0.601074, -0.427840,
		35.587044, 34.320374, 33.950775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.220638, 34.798676, 33.566830>,  <36.059563, 34.741123, 34.250263>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.220638, 34.798676, 33.566830> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861526, 34.622566, 33.571739>,  <35.646061, 34.516899, 33.574684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861526, 34.622566, 33.571739>,  <36.220638, 34.798676, 33.566830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861526, 34.622566, 33.571739> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192513, 0.367189, -0.910006,
		0.396143, -0.819349, -0.414413,
		-0.897780, -0.440272, 0.012276,
		35.592194, 34.490482, 33.575420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.446033, 30.417044, 40.813820> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.128578, 30.659575, 40.793789>,  <34.938107, 30.805094, 40.781773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.128578, 30.659575, 40.793789>,  <35.446033, 30.417044, 40.813820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.128578, 30.659575, 40.793789> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097446, 0.045440, -0.994203,
		-0.600539, -0.793914, -0.095147,
		-0.793635, 0.606329, -0.050076,
		34.890488, 30.841473, 40.778767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079987, 30.198360, 40.145699>,  <35.446033, 30.417044, 40.813820>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079987, 30.198360, 40.145699> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.934540, 30.559393, 40.237904>,  <34.847271, 30.776012, 40.293224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.934540, 30.559393, 40.237904>,  <35.079987, 30.198360, 40.145699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934540, 30.559393, 40.237904> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076233, 0.217787, -0.973015,
		-0.928426, -0.371373, -0.010384,
		-0.363613, 0.902580, 0.230510,
		34.825455, 30.830168, 40.307056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.542088, 30.292459, 39.712559>,  <35.079987, 30.198360, 40.145699>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.542088, 30.292459, 39.712559> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.647068, 30.662825, 39.821224>,  <34.710056, 30.885044, 39.886425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.647068, 30.662825, 39.821224>,  <34.542088, 30.292459, 39.712559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.647068, 30.662825, 39.821224> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037050, 0.271654, -0.961681,
		-0.964233, 0.262461, 0.036992,
		0.262453, 0.925915, 0.271662,
		34.725803, 30.940599, 39.902721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259838, 30.622593, 39.130924>,  <34.542088, 30.292459, 39.712559>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259838, 30.622593, 39.130924> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.509369, 30.873951, 39.316811>,  <34.659088, 31.024765, 39.428341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.509369, 30.873951, 39.316811>,  <34.259838, 30.622593, 39.130924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509369, 30.873951, 39.316811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322818, 0.334336, -0.885442,
		-0.711778, 0.702381, 0.005710,
		0.623827, 0.628395, 0.464714,
		34.696518, 31.062469, 39.456226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.162521, 31.277802, 38.797531>,  <34.259838, 30.622593, 39.130924>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.162521, 31.277802, 38.797531> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.529888, 31.336838, 38.944351>,  <34.750309, 31.372259, 39.032444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.529888, 31.336838, 38.944351>,  <34.162521, 31.277802, 38.797531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529888, 31.336838, 38.944351> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312282, 0.299132, -0.901665,
		-0.242874, 0.942728, 0.228638,
		0.918418, 0.147592, 0.367049,
		34.805412, 31.381115, 39.054466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292480, 31.906328, 38.574295>,  <34.162521, 31.277802, 38.797531>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292480, 31.906328, 38.574295> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.635773, 31.731491, 38.681923>,  <34.841747, 31.626589, 38.746498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.635773, 31.731491, 38.681923>,  <34.292480, 31.906328, 38.574295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635773, 31.731491, 38.681923> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441001, 0.359731, -0.822260,
		0.262614, 0.824343, 0.501490,
		0.858226, -0.437095, 0.269066,
		34.893242, 31.600363, 38.762642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716476, 32.351357, 38.401039>,  <34.292480, 31.906328, 38.574295>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.716476, 32.351357, 38.401039> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.965496, 32.038967, 38.421112>,  <35.114906, 31.851534, 38.433155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.965496, 32.038967, 38.421112>,  <34.716476, 32.351357, 38.401039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965496, 32.038967, 38.421112> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607735, 0.442062, -0.659727,
		0.493041, 0.441213, 0.749828,
		0.622550, -0.780969, 0.050186,
		35.152260, 31.804676, 38.436169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.351860, 32.663296, 38.480339>,  <34.716476, 32.351357, 38.401039>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.351860, 32.663296, 38.480339> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.425648, 32.301022, 38.327652>,  <35.469921, 32.083656, 38.236042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.425648, 32.301022, 38.327652>,  <35.351860, 32.663296, 38.480339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.425648, 32.301022, 38.327652> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532211, 0.418560, -0.735906,
		0.826270, -0.067402, 0.559227,
		0.184469, -0.905684, -0.381716,
		35.480988, 32.029316, 38.213139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.999187, 32.716068, 38.248589>,  <35.351860, 32.663296, 38.480339>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.999187, 32.716068, 38.248589> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.847157, 32.395252, 38.064297>,  <35.755939, 32.202763, 37.953724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.847157, 32.395252, 38.064297>,  <35.999187, 32.716068, 38.248589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.847157, 32.395252, 38.064297> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335064, 0.344890, -0.876803,
		0.862134, -0.487623, 0.137652,
		-0.380075, -0.802044, -0.460726,
		35.733135, 32.154640, 37.926079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468082, 32.712288, 38.876511>,  <35.999187, 32.716068, 38.248589>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.468082, 32.712288, 38.876511> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.713978, 33.021774, 38.937778>,  <36.861515, 33.207466, 38.974541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.713978, 33.021774, 38.937778>,  <36.468082, 32.712288, 38.876511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.713978, 33.021774, 38.937778> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395845, 0.134679, 0.908388,
		0.682205, -0.619052, 0.389064,
		0.614738, 0.773716, 0.153170,
		36.898399, 33.253887, 38.983730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895142, 32.515369, 39.445869>,  <36.468082, 32.712288, 38.876511>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895142, 32.515369, 39.445869> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.847523, 32.910439, 39.405220>,  <36.818951, 33.147480, 39.380829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.847523, 32.910439, 39.405220>,  <36.895142, 32.515369, 39.445869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847523, 32.910439, 39.405220> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377960, 0.049567, 0.924494,
		0.918136, 0.148468, 0.367401,
		-0.119047, 0.987674, -0.101624,
		36.811810, 33.206741, 39.374733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022549, 32.798210, 40.157658>,  <36.895142, 32.515369, 39.445869>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022549, 32.798210, 40.157658> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.859539, 33.113857, 39.973827>,  <36.761734, 33.303246, 39.863529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.859539, 33.113857, 39.973827>,  <37.022549, 32.798210, 40.157658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859539, 33.113857, 39.973827> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439535, 0.271633, 0.856169,
		0.800457, 0.550911, 0.236148,
		-0.407528, 0.789121, -0.459575,
		36.737282, 33.350594, 39.835957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242256, 33.324509, 40.585312>,  <37.022549, 32.798210, 40.157658>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.242256, 33.324509, 40.585312> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.895607, 33.427521, 40.414364>,  <36.687618, 33.489326, 40.311794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.895607, 33.427521, 40.414364>,  <37.242256, 33.324509, 40.585312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.895607, 33.427521, 40.414364> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434695, 0.030806, 0.900051,
		0.244952, 0.965780, 0.085248,
		-0.866625, 0.257527, -0.427366,
		36.635620, 33.504780, 40.286156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960049, 33.932796, 41.014309>,  <37.242256, 33.324509, 40.585312>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.960049, 33.932796, 41.014309> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.655975, 33.791519, 40.796181>,  <36.473534, 33.706753, 40.665302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.655975, 33.791519, 40.796181>,  <36.960049, 33.932796, 41.014309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655975, 33.791519, 40.796181> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590561, 0.025720, 0.806583,
		-0.270858, 0.935195, -0.228136,
		-0.760180, -0.353198, -0.545323,
		36.427921, 33.685558, 40.632584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479565, 34.300606, 41.256908>,  <36.960049, 33.932796, 41.014309>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479565, 34.300606, 41.256908> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.278984, 33.991676, 41.100925>,  <36.158638, 33.806320, 41.007336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.278984, 33.991676, 41.100925>,  <36.479565, 34.300606, 41.256908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.278984, 33.991676, 41.100925> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601505, -0.012772, 0.798767,
		-0.621885, 0.635105, -0.458150,
		-0.501450, -0.772320, -0.389961,
		36.128548, 33.759979, 40.983936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821964, 34.506355, 41.309525>,  <36.479565, 34.300606, 41.256908>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.821964, 34.506355, 41.309525> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.844627, 34.106998, 41.310516>,  <35.858227, 33.867386, 41.311111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.844627, 34.106998, 41.310516>,  <35.821964, 34.506355, 41.309525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844627, 34.106998, 41.310516> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603810, -0.032284, 0.796474,
		-0.795112, -0.046627, -0.604667,
		0.056658, -0.998391, 0.002484,
		35.861626, 33.807480, 41.311260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213097, 34.312546, 41.574413>,  <35.821964, 34.506355, 41.309525>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213097, 34.312546, 41.574413> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.412827, 33.969589, 41.624294>,  <35.532665, 33.763817, 41.654224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.412827, 33.969589, 41.624294>,  <35.213097, 34.312546, 41.574413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412827, 33.969589, 41.624294> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510006, -0.174512, 0.842282,
		-0.700404, -0.484174, -0.524413,
		0.499328, -0.857392, 0.124703,
		35.562626, 33.712372, 41.661705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.680260, 33.797981, 41.789871>,  <35.213097, 34.312546, 41.574413>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.680260, 33.797981, 41.789871> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.030750, 33.641602, 41.902569>,  <35.241043, 33.547771, 41.970188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.030750, 33.641602, 41.902569>,  <34.680260, 33.797981, 41.789871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030750, 33.641602, 41.902569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430290, -0.371491, 0.822706,
		-0.216973, -0.842111, -0.493733,
		0.876227, -0.390953, 0.281748,
		35.293617, 33.524315, 41.987095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514011, 33.152626, 41.918430>,  <34.680260, 33.797981, 41.789871>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514011, 33.152626, 41.918430> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.853832, 33.232315, 42.113808>,  <35.057724, 33.280128, 42.231033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.853832, 33.232315, 42.113808>,  <34.514011, 33.152626, 41.918430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.853832, 33.232315, 42.113808> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349567, -0.480825, 0.804121,
		0.395055, -0.853884, -0.338843,
		0.849550, 0.199224, 0.488441,
		35.108696, 33.292084, 42.260342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.728153, 32.544331, 42.209824>,  <34.514011, 33.152626, 41.918430>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.728153, 32.544331, 42.209824> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.946190, 32.808270, 42.416698>,  <35.077011, 32.966633, 42.540821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.946190, 32.808270, 42.416698>,  <34.728153, 32.544331, 42.209824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.946190, 32.808270, 42.416698> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251929, -0.459459, 0.851721,
		0.799632, -0.594556, -0.084210,
		0.545087, 0.659849, 0.517184,
		35.109715, 33.006226, 42.571854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270943, 32.192997, 42.632812>,  <34.728153, 32.544331, 42.209824>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270943, 32.192997, 42.632812> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.231285, 32.554462, 42.799454>,  <35.207493, 32.771343, 42.899437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.231285, 32.554462, 42.799454>,  <35.270943, 32.192997, 42.632812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231285, 32.554462, 42.799454> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096198, -0.407999, 0.907900,
		0.990412, 0.130087, -0.046481,
		-0.099142, 0.903667, 0.416602,
		35.201542, 32.825562, 42.924435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866127, 32.320812, 43.119324>,  <35.270943, 32.192997, 42.632812>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.866127, 32.320812, 43.119324> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.558224, 32.547306, 43.237209>,  <35.373482, 32.683201, 43.307941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.558224, 32.547306, 43.237209>,  <35.866127, 32.320812, 43.119324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558224, 32.547306, 43.237209> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108359, -0.339083, 0.934495,
		0.629074, 0.751268, 0.199655,
		-0.769756, 0.566232, 0.294715,
		35.327297, 32.717175, 43.325623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.099842, 32.441273, 43.780415>,  <35.866127, 32.320812, 43.119324>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.099842, 32.441273, 43.780415> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.713009, 32.538689, 43.809917>,  <35.480907, 32.597137, 43.827618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.713009, 32.538689, 43.809917>,  <36.099842, 32.441273, 43.780415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713009, 32.538689, 43.809917> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025658, -0.195047, 0.980458,
		0.253167, 0.950076, 0.182378,
		-0.967082, 0.243540, 0.073756,
		35.422886, 32.611752, 43.832043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.205391, 36.044327, 44.257763> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.355852, 35.762043, 44.017605>,  <31.446129, 35.592670, 43.873508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.355852, 35.762043, 44.017605>,  <31.205391, 36.044327, 44.257763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.355852, 35.762043, 44.017605> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192216, 0.693325, -0.694517,
		0.906399, 0.145841, 0.396447,
		0.376155, -0.705713, -0.600397,
		31.468699, 35.550327, 43.837486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.699226, 36.382893, 43.951950>,  <31.205391, 36.044327, 44.257763>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.699226, 36.382893, 43.951950> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.674078, 36.084743, 43.686481>,  <31.658989, 35.905853, 43.527199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.674078, 36.084743, 43.686481>,  <31.699226, 36.382893, 43.951950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.674078, 36.084743, 43.686481> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233589, 0.635530, -0.735893,
		0.970300, -0.201295, 0.134154,
		-0.062872, -0.745374, -0.663675,
		31.655216, 35.861130, 43.487377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.312744, 36.285053, 43.646751>,  <31.699226, 36.382893, 43.951950>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.312744, 36.285053, 43.646751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.070656, 36.103775, 43.384968>,  <31.925404, 35.995007, 43.227898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.070656, 36.103775, 43.384968>,  <32.312744, 36.285053, 43.646751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.070656, 36.103775, 43.384968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369985, 0.567801, -0.735332,
		0.704856, -0.687178, -0.175968,
		-0.605219, -0.453198, -0.654463,
		31.889090, 35.967815, 43.188629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729919, 36.294773, 43.019405>,  <32.312744, 36.285053, 43.646751>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729919, 36.294773, 43.019405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.368519, 36.191917, 42.882259>,  <32.151676, 36.130203, 42.799973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.368519, 36.191917, 42.882259>,  <32.729919, 36.294773, 43.019405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.368519, 36.191917, 42.882259> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192814, 0.470598, -0.861023,
		0.382755, -0.844048, -0.375607,
		-0.903505, -0.257139, -0.342869,
		32.097469, 36.114777, 42.779400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.813919, 35.970768, 42.412029>,  <32.729919, 36.294773, 43.019405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.813919, 35.970768, 42.412029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.438019, 36.107498, 42.410320>,  <32.212479, 36.189537, 42.409294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.438019, 36.107498, 42.410320>,  <32.813919, 35.970768, 42.412029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.438019, 36.107498, 42.410320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147621, 0.394508, -0.906958,
		-0.308333, -0.852949, -0.421201,
		-0.939755, 0.341823, -0.004273,
		32.156094, 36.210045, 42.409039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.605278, 35.770615, 41.774837>,  <32.813919, 35.970768, 42.412029>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.605278, 35.770615, 41.774837> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.403542, 36.092674, 41.899654>,  <32.282501, 36.285912, 41.974545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.403542, 36.092674, 41.899654>,  <32.605278, 35.770615, 41.774837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403542, 36.092674, 41.899654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037743, 0.381578, -0.923566,
		-0.862680, -0.454013, -0.222834,
		-0.504340, 0.805152, 0.312044,
		32.252239, 36.334221, 41.993267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.005405, 35.822540, 41.379486>,  <32.605278, 35.770615, 41.774837>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.005405, 35.822540, 41.379486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.000935, 36.201031, 41.508816>,  <31.998251, 36.428123, 41.586414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.000935, 36.201031, 41.508816>,  <32.005405, 35.822540, 41.379486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.000935, 36.201031, 41.508816> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045603, 0.323492, -0.945131,
		-0.998897, 0.004178, -0.046767,
		-0.011180, 0.946222, 0.323326,
		31.997581, 36.484898, 41.605812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.535923, 36.209961, 41.001148>,  <32.005405, 35.822540, 41.379486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.535923, 36.209961, 41.001148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.760612, 36.509247, 41.142365>,  <31.895426, 36.688820, 41.227093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.760612, 36.509247, 41.142365>,  <31.535923, 36.209961, 41.001148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.760612, 36.509247, 41.142365> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152663, 0.325652, -0.933083,
		-0.813116, 0.578033, 0.068702,
		0.561726, 0.748217, 0.353038,
		31.929131, 36.733711, 41.248276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.422724, 36.838264, 40.610897>,  <31.535923, 36.209961, 41.001148>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.422724, 36.838264, 40.610897> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.761847, 36.960880, 40.783989>,  <31.965321, 37.034451, 40.887844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.761847, 36.960880, 40.783989>,  <31.422724, 36.838264, 40.610897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.761847, 36.960880, 40.783989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226171, 0.529053, -0.817893,
		-0.479656, 0.791286, 0.379204,
		0.847807, 0.306543, 0.432729,
		32.016190, 37.052841, 40.913807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.464924, 37.645271, 40.400524>,  <31.422724, 36.838264, 40.610897>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.464924, 37.645271, 40.400524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.815393, 37.473099, 40.487289>,  <32.025673, 37.369797, 40.539349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.815393, 37.473099, 40.487289>,  <31.464924, 37.645271, 40.400524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.815393, 37.473099, 40.487289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411585, 0.433934, -0.801435,
		0.250839, 0.791473, 0.557361,
		0.876172, -0.430433, 0.216911,
		32.078243, 37.343967, 40.552364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.036034, 38.187550, 40.372646>,  <31.464924, 37.645271, 40.400524>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.036034, 38.187550, 40.372646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.218132, 37.836830, 40.310707>,  <32.327393, 37.626400, 40.273544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.218132, 37.836830, 40.310707>,  <32.036034, 38.187550, 40.372646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.218132, 37.836830, 40.310707> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406051, 0.359229, -0.840284,
		0.792386, 0.319658, 0.519561,
		0.455245, -0.876797, -0.154850,
		32.354706, 37.573792, 40.264252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.571690, 38.387863, 40.165981>,  <32.036034, 38.187550, 40.372646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.571690, 38.387863, 40.165981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.588211, 38.006256, 40.047230>,  <32.598125, 37.777290, 39.975979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.588211, 38.006256, 40.047230>,  <32.571690, 38.387863, 40.165981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.588211, 38.006256, 40.047230> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403889, 0.287714, -0.868386,
		0.913875, -0.084038, 0.397202,
		0.041303, -0.954022, -0.296877,
		32.600601, 37.720051, 39.958168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.195324, 38.317726, 39.825821>,  <32.571690, 38.387863, 40.165981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.195324, 38.317726, 39.825821> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.979805, 38.011372, 39.685471>,  <32.850494, 37.827560, 39.601261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.979805, 38.011372, 39.685471>,  <33.195324, 38.317726, 39.825821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.979805, 38.011372, 39.685471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430951, 0.107302, -0.895973,
		0.723863, -0.633960, 0.272245,
		-0.538798, -0.765886, -0.350878,
		32.818165, 37.781605, 39.580208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782455, 37.998581, 39.523197>,  <33.195324, 38.317726, 39.825821>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782455, 37.998581, 39.523197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.443462, 37.888737, 39.341488>,  <33.240067, 37.822830, 39.232464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.443462, 37.888737, 39.341488>,  <33.782455, 37.998581, 39.523197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.443462, 37.888737, 39.341488> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472058, 0.001482, -0.881566,
		0.242764, -0.961553, 0.128378,
		-0.847482, -0.274615, -0.454268,
		33.189217, 37.806351, 39.205208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591846, 37.925720, 39.624664>,  <33.782455, 37.998581, 39.523197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591846, 37.925720, 39.624664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.747749, 38.268951, 39.758404>,  <34.841290, 38.474892, 39.838646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.747749, 38.268951, 39.758404>,  <34.591846, 37.925720, 39.624664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.747749, 38.268951, 39.758404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240958, -0.255392, 0.936330,
		0.888837, -0.445503, 0.107221,
		0.389755, 0.858080, 0.334349,
		34.864677, 38.526375, 39.858707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988522, 37.678169, 40.223801>,  <34.591846, 37.925720, 39.624664>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.988522, 37.678169, 40.223801> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.934483, 38.071484, 40.272617>,  <34.902058, 38.307472, 40.301907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.934483, 38.071484, 40.272617>,  <34.988522, 37.678169, 40.223801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934483, 38.071484, 40.272617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222862, -0.150168, 0.963215,
		0.965443, 0.102934, 0.239425,
		-0.135102, 0.983287, 0.122039,
		34.893951, 38.366470, 40.309231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.465981, 37.856194, 40.811855>,  <34.988522, 37.678169, 40.223801>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.465981, 37.856194, 40.811855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.193451, 38.147800, 40.785534>,  <35.029934, 38.322765, 40.769741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.193451, 38.147800, 40.785534>,  <35.465981, 37.856194, 40.811855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.193451, 38.147800, 40.785534> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132460, -0.034380, 0.990592,
		0.719898, 0.683630, 0.119990,
		-0.681323, 0.729019, -0.065803,
		34.989056, 38.366505, 40.765793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645603, 38.315159, 41.302593>,  <35.465981, 37.856194, 40.811855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645603, 38.315159, 41.302593> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.255398, 38.369434, 41.233364>,  <35.021275, 38.402000, 41.191826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.255398, 38.369434, 41.233364>,  <35.645603, 38.315159, 41.302593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.255398, 38.369434, 41.233364> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196533, -0.184684, 0.962947,
		0.098699, 0.973386, 0.206830,
		-0.975517, 0.135690, -0.173075,
		34.962742, 38.410141, 41.181442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.475170, 38.700104, 41.848839>,  <35.645603, 38.315159, 41.302593>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.475170, 38.700104, 41.848839> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.142708, 38.531708, 41.703537>,  <34.943230, 38.430668, 41.616356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.142708, 38.531708, 41.703537>,  <35.475170, 38.700104, 41.848839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.142708, 38.531708, 41.703537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300340, -0.209884, 0.930454,
		-0.467957, 0.882447, 0.048003,
		-0.831151, -0.420995, -0.363251,
		34.893364, 38.405411, 41.594563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935036, 39.054680, 42.208965>,  <35.475170, 38.700104, 41.848839>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935036, 39.054680, 42.208965> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.737091, 38.742931, 42.055244>,  <34.618324, 38.555882, 41.963013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.737091, 38.742931, 42.055244>,  <34.935036, 39.054680, 42.208965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.737091, 38.742931, 42.055244> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473881, -0.128657, 0.871140,
		-0.728385, 0.613210, -0.305661,
		-0.494866, -0.779372, -0.384300,
		34.588631, 38.509121, 41.939953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184654, 39.078445, 42.428268>,  <34.935036, 39.054680, 42.208965>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184654, 39.078445, 42.428268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.266052, 38.699417, 42.329723>,  <34.314892, 38.472000, 42.270596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.266052, 38.699417, 42.329723>,  <34.184654, 39.078445, 42.428268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266052, 38.699417, 42.329723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428622, -0.312451, 0.847736,
		-0.880269, -0.066915, -0.469734,
		0.203495, -0.947574, -0.246360,
		34.327099, 38.415146, 42.255814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.590225, 38.643333, 42.612637>,  <34.184654, 39.078445, 42.428268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.590225, 38.643333, 42.612637> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.905140, 38.397259, 42.596081>,  <34.094090, 38.249615, 42.586147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.905140, 38.397259, 42.596081>,  <33.590225, 38.643333, 42.612637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905140, 38.397259, 42.596081> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308102, -0.450664, 0.837840,
		-0.534086, -0.646870, -0.544345,
		0.787290, -0.615192, -0.041391,
		34.141327, 38.212700, 42.583664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.392166, 38.122093, 42.960304>,  <33.590225, 38.643333, 42.612637>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.392166, 38.122093, 42.960304> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.780289, 38.029774, 42.931339>,  <34.013161, 37.974384, 42.913960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.780289, 38.029774, 42.931339>,  <33.392166, 38.122093, 42.960304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.780289, 38.029774, 42.931339> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071571, -0.559886, 0.825472,
		-0.231059, -0.795776, -0.559778,
		0.970304, -0.230797, -0.072413,
		34.071381, 37.960533, 42.909615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.323380, 37.442802, 42.877781>,  <33.392166, 38.122093, 42.960304>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.323380, 37.442802, 42.877781> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.678192, 37.554356, 43.024971>,  <33.891079, 37.621288, 43.113285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.678192, 37.554356, 43.024971>,  <33.323380, 37.442802, 42.877781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.678192, 37.554356, 43.024971> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161283, -0.559616, 0.812907,
		0.432631, -0.780419, -0.451415,
		0.887028, 0.278884, 0.367976,
		33.944302, 37.638020, 43.135365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.673370, 36.799088, 43.078136>,  <33.323380, 37.442802, 42.877781>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.673370, 36.799088, 43.078136> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.818657, 37.092999, 43.307281>,  <33.905827, 37.269344, 43.444771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.818657, 37.092999, 43.307281>,  <33.673370, 36.799088, 43.078136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818657, 37.092999, 43.307281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231928, -0.524199, 0.819405,
		0.902377, -0.430484, -0.019981,
		0.363215, 0.734778, 0.572867,
		33.927620, 37.313431, 43.479141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170723, 36.449097, 43.517742>,  <33.673370, 36.799088, 43.078136>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170723, 36.449097, 43.517742> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.098133, 36.784061, 43.723965>,  <34.054577, 36.985043, 43.847698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.098133, 36.784061, 43.723965>,  <34.170723, 36.449097, 43.517742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.098133, 36.784061, 43.723965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068177, -0.512288, 0.856103,
		0.981029, 0.190512, 0.035876,
		-0.181477, 0.837416, 0.515558,
		34.043690, 37.035286, 43.878632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.719532, 36.594288, 44.079880>,  <34.170723, 36.449097, 43.517742>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.719532, 36.594288, 44.079880> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.379215, 36.768505, 44.197491>,  <34.175026, 36.873035, 44.268059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.379215, 36.768505, 44.197491>,  <34.719532, 36.594288, 44.079880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.379215, 36.768505, 44.197491> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060558, -0.474533, 0.878152,
		0.521995, 0.764934, 0.377355,
		-0.850796, 0.435539, 0.294027,
		34.123978, 36.899166, 44.285698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879883, 36.595989, 44.776546>,  <34.719532, 36.594288, 44.079880>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.879883, 36.595989, 44.776546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.488949, 36.679134, 44.760540>,  <34.254387, 36.729023, 44.750935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.488949, 36.679134, 44.760540>,  <34.879883, 36.595989, 44.776546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.488949, 36.679134, 44.760540> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152732, -0.561535, 0.813235,
		0.146572, 0.800918, 0.580558,
		-0.977338, 0.207867, -0.040020,
		34.195747, 36.741493, 44.748535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.496132, 36.751522, 45.246780>,  <34.879883, 36.595989, 44.776546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.496132, 36.751522, 45.246780> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.760769, 36.460758, 45.173141>,  <35.919552, 36.286301, 45.128960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.760769, 36.460758, 45.173141>,  <35.496132, 36.751522, 45.246780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760769, 36.460758, 45.173141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244378, 0.441117, -0.863537,
		0.708922, 0.526323, 0.469482,
		0.661596, -0.726911, -0.184096,
		35.959248, 36.242683, 45.117912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.104633, 37.061958, 44.991241>,  <35.496132, 36.751522, 45.246780>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.104633, 37.061958, 44.991241> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.129765, 36.682529, 44.867138>,  <36.144844, 36.454872, 44.792675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.129765, 36.682529, 44.867138>,  <36.104633, 37.061958, 44.991241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129765, 36.682529, 44.867138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400661, 0.308692, -0.862658,
		0.914069, -0.070106, 0.399453,
		0.062831, -0.948575, -0.310255,
		36.148613, 36.397957, 44.774063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853191, 37.003750, 44.903759>,  <36.104633, 37.061958, 44.991241>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853191, 37.003750, 44.903759> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.660664, 36.729389, 44.685448>,  <36.545147, 36.564774, 44.554462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.660664, 36.729389, 44.685448>,  <36.853191, 37.003750, 44.903759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660664, 36.729389, 44.685448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520388, 0.277441, -0.807603,
		0.705354, -0.672734, 0.223394,
		-0.481323, -0.685897, -0.545777,
		36.516266, 36.523621, 44.521713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.373192, 36.711830, 44.369785>,  <36.853191, 37.003750, 44.903759>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.373192, 36.711830, 44.369785> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.017315, 36.610703, 44.217720>,  <36.803787, 36.550026, 44.126480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.017315, 36.610703, 44.217720>,  <37.373192, 36.711830, 44.369785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.017315, 36.610703, 44.217720> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315799, 0.260572, -0.912345,
		0.329719, -0.931764, -0.151989,
		-0.889695, -0.252820, -0.380166,
		36.750408, 36.534859, 44.103672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530079, 36.226608, 43.751717>,  <37.373192, 36.711830, 44.369785>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.530079, 36.226608, 43.751717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.164101, 36.383595, 43.714111>,  <36.944511, 36.477787, 43.691547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.164101, 36.383595, 43.714111>,  <37.530079, 36.226608, 43.751717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.164101, 36.383595, 43.714111> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212515, 0.270499, -0.938972,
		-0.343081, -0.879092, -0.330898,
		-0.914950, 0.392464, -0.094017,
		36.889614, 36.501335, 43.685905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204994, 35.986771, 43.063713>,  <37.530079, 36.226608, 43.751717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.204994, 35.986771, 43.063713> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.003620, 36.315899, 43.169182>,  <36.882797, 36.513374, 43.232464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.003620, 36.315899, 43.169182>,  <37.204994, 35.986771, 43.063713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003620, 36.315899, 43.169182> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091576, 0.252632, -0.963219,
		-0.859168, -0.509061, -0.051832,
		-0.503431, 0.822821, 0.263671,
		36.852592, 36.562744, 43.248283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855751, 36.201138, 42.420952>,  <37.204994, 35.986771, 43.063713>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855751, 36.201138, 42.420952> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.842918, 36.526562, 42.653191>,  <36.835217, 36.721817, 42.792534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.842918, 36.526562, 42.653191>,  <36.855751, 36.201138, 42.420952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.842918, 36.526562, 42.653191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003775, 0.580791, -0.814044,
		-0.999478, -0.028310, -0.015564,
		-0.032085, 0.813561, 0.580594,
		36.833294, 36.770630, 42.827370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286934, 36.490398, 42.267975>,  <36.855751, 36.201138, 42.420952>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286934, 36.490398, 42.267975> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.514301, 36.779308, 42.425571>,  <36.650723, 36.952652, 42.520130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.514301, 36.779308, 42.425571>,  <36.286934, 36.490398, 42.267975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.514301, 36.779308, 42.425571> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056841, 0.443252, -0.894593,
		-0.820774, 0.530897, 0.210897,
		0.568417, 0.722272, 0.393987,
		36.684826, 36.995991, 42.543766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.058773, 37.162334, 42.094444>,  <36.286934, 36.490398, 42.267975>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.058773, 37.162334, 42.094444> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.453957, 37.138145, 42.151402>,  <36.691067, 37.123634, 42.185574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.453957, 37.138145, 42.151402>,  <36.058773, 37.162334, 42.094444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453957, 37.138145, 42.151402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151084, 0.179357, -0.972113,
		0.033243, 0.981924, 0.186334,
		0.987962, -0.060468, 0.142391,
		36.750343, 37.120007, 42.194118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.417053, 37.675766, 41.722454>,  <36.058773, 37.162334, 42.094444>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.417053, 37.675766, 41.722454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.736771, 37.443474, 41.784271>,  <36.928600, 37.304100, 41.821362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.736771, 37.443474, 41.784271>,  <36.417053, 37.675766, 41.722454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736771, 37.443474, 41.784271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281261, 0.134252, -0.950194,
		0.531056, 0.802952, 0.270643,
		0.799294, -0.580728, 0.154544,
		36.976559, 37.269257, 41.830635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029522, 37.980576, 41.375820>,  <36.417053, 37.675766, 41.722454>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029522, 37.980576, 41.375820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.137981, 37.596786, 41.406513>,  <37.203056, 37.366512, 41.424931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.137981, 37.596786, 41.406513>,  <37.029522, 37.980576, 41.375820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137981, 37.596786, 41.406513> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399340, 0.039601, -0.915947,
		0.875790, 0.278997, 0.393895,
		0.271145, -0.959475, 0.076733,
		37.219326, 37.308945, 41.429535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788074, 37.921860, 41.257580>,  <37.029522, 37.980576, 41.375820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.788074, 37.921860, 41.257580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.621517, 37.572849, 41.155361>,  <37.521584, 37.363441, 41.094028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.621517, 37.572849, 41.155361>,  <37.788074, 37.921860, 41.257580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621517, 37.572849, 41.155361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446387, 0.048668, -0.893515,
		0.792057, -0.486129, 0.369221,
		-0.416395, -0.872530, -0.255550,
		37.496597, 37.311089, 41.078697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316898, 37.510796, 40.982624>,  <37.788074, 37.921860, 41.257580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.316898, 37.510796, 40.982624> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.970345, 37.352428, 40.860882>,  <37.762413, 37.257408, 40.787834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.970345, 37.352428, 40.860882>,  <38.316898, 37.510796, 40.982624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970345, 37.352428, 40.860882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359194, -0.070640, -0.930586,
		0.346933, -0.915566, 0.203411,
		-0.866382, -0.395915, -0.304359,
		37.710430, 37.233654, 40.769573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.554008, 36.879963, 40.623032>,  <38.316898, 37.510796, 40.982624>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.554008, 36.879963, 40.623032> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.176174, 36.933338, 40.503063>,  <37.949474, 36.965363, 40.431084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.176174, 36.933338, 40.503063>,  <38.554008, 36.879963, 40.623032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.176174, 36.933338, 40.503063> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279809, -0.150476, -0.948190,
		-0.171667, -0.979565, 0.104796,
		-0.944583, 0.133450, -0.299923,
		37.892799, 36.973370, 40.413086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<24.978781, 41.632084, 31.127239> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.324743, 41.811958, 31.038050>,  <25.532320, 41.919884, 30.984537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.324743, 41.811958, 31.038050>,  <24.978781, 41.632084, 31.127239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.324743, 41.811958, 31.038050> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364211, -0.867939, -0.337686,
		-0.345380, 0.210858, -0.914468,
		0.864906, 0.449689, -0.222972,
		25.584215, 41.946865, 30.971159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.008928, 41.397388, 30.487692>,  <24.978781, 41.632084, 31.127239>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.008928, 41.397388, 30.487692> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.368288, 41.488678, 30.637777>,  <25.583904, 41.543453, 30.727829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.368288, 41.488678, 30.637777>,  <25.008928, 41.397388, 30.487692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.368288, 41.488678, 30.637777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357199, -0.876787, -0.321951,
		0.255506, 0.423268, -0.869230,
		0.898402, 0.228228, 0.375215,
		25.637808, 41.557148, 30.750341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.381830, 40.977448, 30.059959>,  <25.008928, 41.397388, 30.487692>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.381830, 40.977448, 30.059959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.622766, 41.071873, 30.364973>,  <25.767328, 41.128529, 30.547981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.622766, 41.071873, 30.364973>,  <25.381830, 40.977448, 30.059959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.622766, 41.071873, 30.364973> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519470, -0.841235, -0.149915,
		0.606083, 0.486415, -0.629336,
		0.602340, 0.236060, 0.762536,
		25.803469, 41.142693, 30.593735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.086824, 40.900230, 29.820076>,  <25.381830, 40.977448, 30.059959>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.086824, 40.900230, 29.820076> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.073763, 40.855984, 30.217407>,  <26.065926, 40.829437, 30.455805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.073763, 40.855984, 30.217407>,  <26.086824, 40.900230, 29.820076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.073763, 40.855984, 30.217407> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592562, -0.802488, -0.069883,
		0.804863, 0.586326, 0.091748,
		-0.032653, -0.110612, 0.993327,
		26.063967, 40.822800, 30.515406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.721987, 40.506184, 29.804480>,  <26.086824, 40.900230, 29.820076>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.721987, 40.506184, 29.804480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.555912, 40.502491, 30.168356>,  <26.456266, 40.500275, 30.386681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.555912, 40.502491, 30.168356>,  <26.721987, 40.506184, 29.804480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.555912, 40.502491, 30.168356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516598, -0.825479, 0.227403,
		0.748830, 0.564358, 0.347496,
		-0.415188, -0.009230, 0.909689,
		26.431356, 40.499722, 30.441263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.238689, 40.409039, 30.232002>,  <26.721987, 40.506184, 29.804480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.238689, 40.409039, 30.232002> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.917294, 40.281849, 30.433315>,  <26.724455, 40.205536, 30.554104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.917294, 40.281849, 30.433315>,  <27.238689, 40.409039, 30.232002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.917294, 40.281849, 30.433315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469950, -0.857753, 0.208344,
		0.365443, 0.403920, 0.838630,
		-0.803491, -0.317976, 0.503282,
		26.676247, 40.186455, 30.584299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.515114, 40.253967, 30.867216>,  <27.238689, 40.409039, 30.232002>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.515114, 40.253967, 30.867216> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.199682, 40.025867, 30.775166>,  <27.010424, 39.889008, 30.719934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.199682, 40.025867, 30.775166>,  <27.515114, 40.253967, 30.867216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.199682, 40.025867, 30.775166> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534264, -0.820641, 0.202757,
		-0.304474, 0.036941, 0.951804,
		-0.788579, -0.570249, -0.230128,
		26.963108, 39.854794, 30.706127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.481703, 39.715679, 31.421257>,  <27.515114, 40.253967, 30.867216>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.481703, 39.715679, 31.421257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.232582, 39.558434, 31.150681>,  <27.083109, 39.464085, 30.988335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.232582, 39.558434, 31.150681>,  <27.481703, 39.715679, 31.421257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.232582, 39.558434, 31.150681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431414, -0.893833, 0.122252,
		-0.652686, -0.215688, 0.726278,
		-0.622803, -0.393118, -0.676443,
		27.045742, 39.440498, 30.947748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.152397, 39.063702, 31.758842>,  <27.481703, 39.715679, 31.421257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.152397, 39.063702, 31.758842> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.117615, 39.022987, 31.362442>,  <27.096745, 38.998558, 31.124601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.117615, 39.022987, 31.362442>,  <27.152397, 39.063702, 31.758842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.117615, 39.022987, 31.362442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521020, -0.852518, 0.041844,
		-0.849104, -0.512691, 0.127163,
		-0.086956, -0.101785, -0.990999,
		27.091528, 38.992451, 31.065142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.908552, 38.420567, 31.707405>,  <27.152397, 39.063702, 31.758842>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.908552, 38.420567, 31.707405> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.058170, 38.513832, 31.348356>,  <27.147942, 38.569790, 31.132927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.058170, 38.513832, 31.348356>,  <26.908552, 38.420567, 31.707405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.058170, 38.513832, 31.348356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436849, -0.898074, -0.051243,
		-0.818079, -0.372959, -0.437776,
		0.374044, 0.233163, -0.897623,
		27.170383, 38.583782, 31.079069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.790432, 37.751595, 31.339518>,  <26.908552, 38.420567, 31.707405>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.790432, 37.751595, 31.339518> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.082163, 37.949570, 31.150578>,  <27.257202, 38.068356, 31.037214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.082163, 37.949570, 31.150578>,  <26.790432, 37.751595, 31.339518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.082163, 37.949570, 31.150578> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459634, -0.865853, -0.197573,
		-0.506771, -0.073012, -0.858983,
		0.729328, 0.494942, -0.472348,
		27.300961, 38.098053, 31.008873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.869715, 37.414387, 30.740191>,  <26.790432, 37.751595, 31.339518>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.869715, 37.414387, 30.740191> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.200665, 37.630020, 30.803230>,  <27.399235, 37.759399, 30.841055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.200665, 37.630020, 30.803230>,  <26.869715, 37.414387, 30.740191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.200665, 37.630020, 30.803230> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557206, -0.823081, -0.109812,
		0.070520, 0.178672, -0.981378,
		0.827374, 0.539086, 0.157601,
		27.448877, 37.791744, 30.850510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.413895, 37.320431, 30.241121>,  <26.869715, 37.414387, 30.740191>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.413895, 37.320431, 30.241121> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.640688, 37.473099, 30.533110>,  <27.776764, 37.564701, 30.708303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.640688, 37.473099, 30.533110>,  <27.413895, 37.320431, 30.241121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.640688, 37.473099, 30.533110> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591601, -0.805314, -0.038442,
		0.573185, 0.453648, -0.682395,
		0.566981, 0.381671, 0.729972,
		27.810781, 37.587601, 30.752102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.211288, 37.238609, 30.058996>,  <27.413895, 37.320431, 30.241121>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.211288, 37.238609, 30.058996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.175966, 37.267403, 30.456392>,  <28.154774, 37.284679, 30.694830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.175966, 37.267403, 30.456392>,  <28.211288, 37.238609, 30.058996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.175966, 37.267403, 30.456392> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681528, -0.723021, 0.112961,
		0.726445, 0.687065, 0.014789,
		-0.088304, 0.071981, 0.993489,
		28.149475, 37.288998, 30.754438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.879642, 37.212681, 30.286009>,  <28.211288, 37.238609, 30.058996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.879642, 37.212681, 30.286009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.681684, 37.130459, 30.623726>,  <28.562910, 37.081127, 30.826357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.681684, 37.130459, 30.623726>,  <28.879642, 37.212681, 30.286009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.681684, 37.130459, 30.623726> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634570, -0.749262, 0.189548,
		0.593634, 0.629568, 0.501241,
		-0.494894, -0.205550, 0.844292,
		28.533216, 37.068794, 30.877014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.343235, 37.161140, 30.744886>,  <28.879642, 37.212681, 30.286009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.343235, 37.161140, 30.744886> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.054428, 36.950161, 30.923990>,  <28.881144, 36.823574, 31.031452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.054428, 36.950161, 30.923990>,  <29.343235, 37.161140, 30.744886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.054428, 36.950161, 30.923990> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676049, -0.675470, 0.294446,
		0.147143, 0.515303, 0.844282,
		-0.722016, -0.527450, 0.447761,
		28.837824, 36.791927, 31.058319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.475395, 37.163143, 31.503887>,  <29.343235, 37.161140, 30.744886>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.475395, 37.163143, 31.503887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.273172, 36.843357, 31.374107>,  <29.151838, 36.651485, 31.296240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.273172, 36.843357, 31.374107>,  <29.475395, 37.163143, 31.503887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.273172, 36.843357, 31.374107> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654131, -0.600365, 0.460081,
		-0.562607, 0.020363, 0.826473,
		-0.505555, -0.799466, -0.324450,
		29.121506, 36.603516, 31.276772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.295227, 36.782051, 32.103634>,  <29.475395, 37.163143, 31.503887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.295227, 36.782051, 32.103634> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.325912, 36.549152, 31.779881>,  <29.344324, 36.409412, 31.585627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.325912, 36.549152, 31.779881>,  <29.295227, 36.782051, 32.103634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.325912, 36.549152, 31.779881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604136, -0.618648, 0.502290,
		-0.793181, -0.527511, 0.304296,
		0.076711, -0.582243, -0.809388,
		29.348927, 36.374481, 31.537064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.842480, 36.512058, 32.368744>,  <29.295227, 36.782051, 32.103634>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.842480, 36.512058, 32.368744> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.991848, 36.230419, 32.127151>,  <30.081469, 36.061436, 31.982195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.991848, 36.230419, 32.127151>,  <29.842480, 36.512058, 32.368744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.991848, 36.230419, 32.127151> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000229, -0.651153, 0.758947,
		-0.927662, -0.283269, -0.243316,
		0.373422, -0.704101, -0.603984,
		30.103874, 36.019188, 31.945955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.495293, 36.770111, 32.420013>,  <29.842480, 36.512058, 32.368744>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.495293, 36.770111, 32.420013> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.871702, 36.899387, 32.460056>,  <31.097548, 36.976952, 32.484081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.871702, 36.899387, 32.460056>,  <30.495293, 36.770111, 32.420013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.871702, 36.899387, 32.460056> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329347, 0.942761, 0.052266,
		-0.077488, -0.082155, 0.993603,
		0.941024, 0.323190, 0.100110,
		31.154009, 36.996346, 32.490089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.530527, 37.250847, 32.898087>,  <30.495293, 36.770111, 32.420013>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.530527, 37.250847, 32.898087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.872240, 37.331333, 32.706371>,  <31.077267, 37.379627, 32.591343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.872240, 37.331333, 32.706371>,  <30.530527, 37.250847, 32.898087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.872240, 37.331333, 32.706371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263135, 0.962574, -0.064894,
		0.448289, 0.181554, 0.875257,
		0.854281, 0.201220, -0.479285,
		31.128525, 37.391701, 32.562588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.770811, 37.858414, 33.235485>,  <30.530527, 37.250847, 32.898087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.770811, 37.858414, 33.235485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.963715, 37.840855, 32.885513>,  <31.079456, 37.830318, 32.675529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.963715, 37.840855, 32.885513>,  <30.770811, 37.858414, 33.235485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.963715, 37.840855, 32.885513> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203447, 0.965825, -0.160598,
		0.852077, 0.255451, 0.456847,
		0.482259, -0.043898, -0.874928,
		31.108393, 37.827686, 32.623035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.153790, 38.547043, 33.231285>,  <30.770811, 37.858414, 33.235485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.153790, 38.547043, 33.231285> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.105423, 38.381001, 32.870605>,  <31.076403, 38.281376, 32.654198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.105423, 38.381001, 32.870605>,  <31.153790, 38.547043, 33.231285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.105423, 38.381001, 32.870605> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327398, 0.874216, -0.358547,
		0.937118, 0.251862, -0.241611,
		-0.120916, -0.415104, -0.901703,
		31.069149, 38.256470, 32.600094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.704033, 38.871483, 32.631821>,  <31.153790, 38.547043, 33.231285>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.704033, 38.871483, 32.631821> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.375977, 38.726765, 32.454517>,  <31.179142, 38.639935, 32.348137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.375977, 38.726765, 32.454517>,  <31.704033, 38.871483, 32.631821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.375977, 38.726765, 32.454517> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170060, 0.893833, -0.414900,
		0.546305, -0.264896, -0.794595,
		-0.820140, -0.361791, -0.443257,
		31.129934, 38.618229, 32.321541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.684263, 39.268784, 32.142944>,  <31.704033, 38.871483, 32.631821>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.684263, 39.268784, 32.142944> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.319666, 39.105152, 32.125797>,  <31.100908, 39.006973, 32.115509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.319666, 39.105152, 32.125797>,  <31.684263, 39.268784, 32.142944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.319666, 39.105152, 32.125797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379871, 0.877183, -0.293681,
		0.157740, -0.251405, -0.954942,
		-0.911491, -0.409080, -0.042866,
		31.046219, 38.982430, 32.112938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.368185, 39.310997, 31.413475>,  <31.684263, 39.268784, 32.142944>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.368185, 39.310997, 31.413475> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.044334, 39.257961, 31.642185>,  <30.850025, 39.226143, 31.779411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.044334, 39.257961, 31.642185>,  <31.368185, 39.310997, 31.413475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.044334, 39.257961, 31.642185> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451335, 0.763411, -0.462060,
		-0.375240, -0.632159, -0.677916,
		-0.809624, -0.132584, 0.571778,
		30.801447, 39.218185, 31.813719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.846786, 39.440022, 31.032253>,  <31.368185, 39.310997, 31.413475>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.846786, 39.440022, 31.032253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.689363, 39.462254, 31.399300>,  <30.594910, 39.475594, 31.619528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.689363, 39.462254, 31.399300>,  <30.846786, 39.440022, 31.032253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.689363, 39.462254, 31.399300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542836, 0.791518, -0.280763,
		-0.741916, -0.608613, -0.281336,
		-0.393559, 0.055583, 0.917617,
		30.571297, 39.478928, 31.674585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.160234, 39.578213, 30.903156>,  <30.846786, 39.440022, 31.032253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.160234, 39.578213, 30.903156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.213610, 39.678638, 31.286648>,  <30.245636, 39.738895, 31.516743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.213610, 39.678638, 31.286648>,  <30.160234, 39.578213, 30.903156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.213610, 39.678638, 31.286648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509270, 0.847257, -0.150995,
		-0.850199, -0.468103, 0.240919,
		0.133439, 0.251069, 0.958728,
		30.253641, 39.753960, 31.574266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.464106, 39.766167, 31.170591>,  <30.160234, 39.578213, 30.903156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.464106, 39.766167, 31.170591> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.743862, 39.927551, 31.406582>,  <29.911716, 40.024384, 31.548176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.743862, 39.927551, 31.406582>,  <29.464106, 39.766167, 31.170591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.743862, 39.927551, 31.406582> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524922, 0.850169, 0.040870,
		-0.485088, -0.338275, 0.806387,
		0.699390, 0.403464, 0.589974,
		29.953680, 40.048592, 31.583574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.130194, 40.216526, 31.719969>,  <29.464106, 39.766167, 31.170591>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.130194, 40.216526, 31.719969> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.506569, 40.351913, 31.723494>,  <29.732393, 40.433147, 31.725609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.506569, 40.351913, 31.723494>,  <29.130194, 40.216526, 31.719969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.506569, 40.351913, 31.723494> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337328, 0.939367, -0.061634,
		-0.029137, 0.055022, 0.998060,
		0.940936, 0.338469, 0.008810,
		29.788849, 40.453453, 31.726137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.046537, 40.859619, 32.102108>,  <29.130194, 40.216526, 31.719969>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.046537, 40.859619, 32.102108> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.412739, 40.887703, 31.943651>,  <29.632460, 40.904552, 31.848577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.412739, 40.887703, 31.943651>,  <29.046537, 40.859619, 32.102108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.412739, 40.887703, 31.943651> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104412, 0.992379, -0.065431,
		0.388527, 0.101264, 0.915856,
		0.915503, 0.070205, -0.396140,
		29.687389, 40.908764, 31.824810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.418680, 41.277523, 32.484943>,  <29.046537, 40.859619, 32.102108>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.418680, 41.277523, 32.484943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.565659, 41.287388, 32.113056>,  <29.653845, 41.293308, 31.889923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.565659, 41.287388, 32.113056>,  <29.418680, 41.277523, 32.484943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.565659, 41.287388, 32.113056> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105414, 0.994311, -0.015285,
		0.924052, 0.103622, 0.367954,
		0.367445, 0.024664, -0.929718,
		29.675892, 41.294788, 31.834141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.966295, 41.814400, 32.548634>,  <29.418680, 41.277523, 32.484943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.966295, 41.814400, 32.548634> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.861511, 41.768185, 32.165379>,  <29.798641, 41.740456, 31.935425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.861511, 41.768185, 32.165379>,  <29.966295, 41.814400, 32.548634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.861511, 41.768185, 32.165379> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104014, 0.990405, -0.090989,
		0.959457, 0.075825, -0.271463,
		-0.261959, -0.115536, -0.958138,
		29.782923, 41.733524, 31.877937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.467270, 42.077946, 32.192047>,  <29.966295, 41.814400, 32.548634>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.467270, 42.077946, 32.192047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.123205, 42.091892, 31.988514>,  <29.916767, 42.100258, 31.866394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.123205, 42.091892, 31.988514>,  <30.467270, 42.077946, 32.192047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.123205, 42.091892, 31.988514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040173, 0.999193, 0.000550,
		0.508440, -0.019968, -0.860866,
		-0.860160, 0.034863, -0.508832,
		29.865158, 42.102352, 31.835865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.426899, 42.813614, 31.988190>,  <30.467270, 42.077946, 32.192047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.426899, 42.813614, 31.988190> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.080486, 42.645802, 31.879391>,  <29.872639, 42.545113, 31.814112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.080486, 42.645802, 31.879391>,  <30.426899, 42.813614, 31.988190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.080486, 42.645802, 31.879391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362473, 0.901516, -0.236395,
		0.344384, -0.106134, -0.932810,
		-0.866033, -0.419529, -0.271997,
		29.820677, 42.519943, 31.797792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.287949, 42.979374, 31.345417>,  <30.426899, 42.813614, 31.988190>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.287949, 42.979374, 31.345417> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.926624, 42.903465, 31.499308>,  <29.709829, 42.857922, 31.591642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.926624, 42.903465, 31.499308>,  <30.287949, 42.979374, 31.345417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.926624, 42.903465, 31.499308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336650, 0.869443, -0.361573,
		-0.265883, -0.456131, -0.849265,
		-0.903312, -0.189769, 0.384727,
		29.655630, 42.846535, 31.614725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.804489, 43.361595, 30.884937>,  <30.287949, 42.979374, 31.345417>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.804489, 43.361595, 30.884937> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.595816, 43.283733, 31.217192>,  <29.470612, 43.237019, 31.416544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.595816, 43.283733, 31.217192>,  <29.804489, 43.361595, 30.884937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.595816, 43.283733, 31.217192> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503147, 0.856475, -0.115299,
		-0.688975, -0.478082, -0.544748,
		-0.521686, -0.194650, 0.830635,
		29.439310, 43.225338, 31.466383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.043369, 43.620823, 30.592110>,  <29.804489, 43.361595, 30.884937>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.043369, 43.620823, 30.592110> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.051771, 43.582142, 30.990147>,  <29.056812, 43.558933, 31.228968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.051771, 43.582142, 30.990147>,  <29.043369, 43.620823, 30.592110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.051771, 43.582142, 30.990147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624246, 0.776187, 0.088608,
		-0.780946, -0.623042, -0.044066,
		0.021003, -0.096706, 0.995091,
		29.058073, 43.553131, 31.288673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.300116, 43.637039, 30.825356>,  <29.043369, 43.620823, 30.592110>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.300116, 43.637039, 30.825356> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.556444, 43.737282, 31.115608>,  <28.710241, 43.797428, 31.289761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.556444, 43.737282, 31.115608>,  <28.300116, 43.637039, 30.825356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.556444, 43.737282, 31.115608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533252, 0.825275, 0.185911,
		-0.552257, -0.506081, 0.662491,
		0.640824, 0.250604, 0.725632,
		28.748692, 43.812462, 31.333298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.876474, 43.781067, 31.371128>,  <28.300116, 43.637039, 30.825356>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.876474, 43.781067, 31.371128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.225885, 43.965290, 31.434172>,  <28.435532, 44.075825, 31.471998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.225885, 43.965290, 31.434172>,  <27.876474, 43.781067, 31.371128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.225885, 43.965290, 31.434172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473499, 0.879034, 0.055654,
		-0.112914, -0.123244, 0.985932,
		0.873527, 0.460554, 0.157611,
		28.487944, 44.103455, 31.481455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.793371, 44.164505, 31.959486>,  <27.876474, 43.781067, 31.371128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.793371, 44.164505, 31.959486> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.105017, 44.332985, 31.773769>,  <28.292004, 44.434074, 31.662338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.105017, 44.332985, 31.773769>,  <27.793371, 44.164505, 31.959486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.105017, 44.332985, 31.773769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361467, 0.906965, 0.216230,
		0.512174, -0.000641, 0.858881,
		0.779114, 0.421204, -0.464293,
		28.338751, 44.459347, 31.634481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.097342, 44.646648, 32.437008>,  <27.793371, 44.164505, 31.959486>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.097342, 44.646648, 32.437008> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.223253, 44.747990, 32.071117>,  <28.298800, 44.808796, 31.851583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.223253, 44.747990, 32.071117>,  <28.097342, 44.646648, 32.437008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.223253, 44.747990, 32.071117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291415, 0.942969, 0.160893,
		0.903323, 0.215920, 0.370658,
		0.314779, 0.253353, -0.914728,
		28.317686, 44.823997, 31.796700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.096157, 32.936462, 44.351345> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.735565, 32.771587, 44.298534>,  <35.519211, 32.672661, 44.266846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.735565, 32.771587, 44.298534>,  <36.096157, 32.936462, 44.351345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.735565, 32.771587, 44.298534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001429, -0.302206, 0.953242,
		-0.432817, 0.859518, 0.271844,
		-0.901481, -0.412191, -0.132028,
		35.465122, 32.647930, 44.258926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781006, 32.987190, 45.019638>,  <36.096157, 32.936462, 44.351345>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.781006, 32.987190, 45.019638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.486153, 32.788033, 44.836884>,  <35.309242, 32.668537, 44.727230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.486153, 32.788033, 44.836884>,  <35.781006, 32.987190, 45.019638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.486153, 32.788033, 44.836884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337862, -0.313990, 0.887276,
		-0.585225, 0.808402, 0.063232,
		-0.737130, -0.497892, -0.456883,
		35.265015, 32.638664, 44.699818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178154, 33.093430, 45.409714>,  <35.781006, 32.987190, 45.019638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178154, 33.093430, 45.409714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.102142, 32.744354, 45.229801>,  <35.056534, 32.534908, 45.121853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.102142, 32.744354, 45.229801>,  <35.178154, 33.093430, 45.409714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.102142, 32.744354, 45.229801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217078, -0.409441, 0.886135,
		-0.957479, 0.266028, -0.111637,
		-0.190028, -0.872690, -0.449780,
		35.045135, 32.482548, 45.094868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535309, 32.829391, 45.634411>,  <35.178154, 33.093430, 45.409714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535309, 32.829391, 45.634411> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.706909, 32.496376, 45.494217>,  <34.809872, 32.296566, 45.410099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.706909, 32.496376, 45.494217>,  <34.535309, 32.829391, 45.634411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706909, 32.496376, 45.494217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163057, -0.453005, 0.876470,
		-0.888463, -0.318860, -0.330092,
		0.429005, -0.832535, -0.350486,
		34.835609, 32.246616, 45.389072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.040676, 32.315384, 45.740067>,  <34.535309, 32.829391, 45.634411>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.040676, 32.315384, 45.740067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.404434, 32.152653, 45.705437>,  <34.622688, 32.055016, 45.684658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.404434, 32.152653, 45.705437>,  <34.040676, 32.315384, 45.740067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.404434, 32.152653, 45.705437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188487, -0.588615, 0.786133,
		-0.370779, -0.698586, -0.611964,
		0.909393, -0.406829, -0.086572,
		34.677254, 32.030605, 45.679466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907391, 31.621685, 45.805988>,  <34.040676, 32.315384, 45.740067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.907391, 31.621685, 45.805988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.291447, 31.663557, 45.909660>,  <34.521881, 31.688681, 45.971863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.291447, 31.663557, 45.909660>,  <33.907391, 31.621685, 45.805988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.291447, 31.663557, 45.909660> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090210, -0.761573, 0.641770,
		0.264570, -0.639568, -0.721772,
		0.960138, 0.104682, 0.259185,
		34.579487, 31.694962, 45.987415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.181152, 30.863605, 45.959328>,  <33.907391, 31.621685, 45.805988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.181152, 30.863605, 45.959328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.468414, 31.090721, 46.120258>,  <34.640774, 31.226990, 46.216816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.468414, 31.090721, 46.120258>,  <34.181152, 30.863605, 45.959328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.468414, 31.090721, 46.120258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088791, -0.648192, 0.756282,
		0.690191, -0.507408, -0.515920,
		0.718159, 0.567789, 0.402323,
		34.683861, 31.261057, 46.240955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778522, 30.469883, 46.095303>,  <34.181152, 30.863605, 45.959328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778522, 30.469883, 46.095303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.785854, 30.776678, 46.351864>,  <34.790253, 30.960754, 46.505802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.785854, 30.776678, 46.351864>,  <34.778522, 30.469883, 46.095303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.785854, 30.776678, 46.351864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063208, -0.641115, 0.764837,
		0.997832, 0.026526, -0.060229,
		0.018326, 0.766986, 0.641402,
		34.791351, 31.006773, 46.544285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136906, 30.215979, 46.617424>,  <34.778522, 30.469883, 46.095303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136906, 30.215979, 46.617424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.990993, 30.541281, 46.798775>,  <34.903446, 30.736462, 46.907585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.990993, 30.541281, 46.798775>,  <35.136906, 30.215979, 46.617424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990993, 30.541281, 46.798775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119822, -0.441877, 0.889037,
		0.923352, 0.378628, 0.063743,
		-0.364781, 0.813256, 0.453376,
		34.881557, 30.785257, 46.934788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.427319, 30.246941, 47.194263>,  <35.136906, 30.215979, 46.617424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.427319, 30.246941, 47.194263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.145130, 30.503096, 47.315731>,  <34.975815, 30.656788, 47.388611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.145130, 30.503096, 47.315731>,  <35.427319, 30.246941, 47.194263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.145130, 30.503096, 47.315731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143558, -0.548699, 0.823602,
		0.694046, 0.537435, 0.479025,
		-0.705472, 0.640386, 0.303669,
		34.933487, 30.695211, 47.406830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.612850, 30.450211, 47.840813>,  <35.427319, 30.246941, 47.194263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.612850, 30.450211, 47.840813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.216293, 30.468496, 47.791752>,  <34.978359, 30.479467, 47.762314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.216293, 30.468496, 47.791752>,  <35.612850, 30.450211, 47.840813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.216293, 30.468496, 47.791752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130209, -0.440367, 0.888326,
		-0.013405, 0.896654, 0.442530,
		-0.991396, 0.045713, -0.122655,
		34.918873, 30.482210, 47.754955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356869, 30.564249, 48.523930>,  <35.612850, 30.450211, 47.840813>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356869, 30.564249, 48.523930> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.010597, 30.481604, 48.341541>,  <34.802834, 30.432016, 48.232109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.010597, 30.481604, 48.341541>,  <35.356869, 30.564249, 48.523930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010597, 30.481604, 48.341541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334144, -0.439754, 0.833645,
		-0.372758, 0.874030, 0.311647,
		-0.865679, -0.206613, -0.455973,
		34.750893, 30.419621, 48.204750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962749, 30.685719, 49.012951>,  <35.356869, 30.564249, 48.523930>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.962749, 30.685719, 49.012951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.783665, 30.450310, 48.743671>,  <34.676212, 30.309065, 48.582104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.783665, 30.450310, 48.743671>,  <34.962749, 30.685719, 49.012951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.783665, 30.450310, 48.743671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281772, -0.621656, 0.730854,
		-0.848622, 0.516900, 0.112493,
		-0.447711, -0.588522, -0.673199,
		34.649353, 30.273754, 48.541710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.255932, 31.329590, 48.750362>,  <34.962749, 30.685719, 49.012951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.255932, 31.329590, 48.750362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.553516, 31.349266, 48.483799>,  <35.732067, 31.361073, 48.323860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.553516, 31.349266, 48.483799>,  <35.255932, 31.329590, 48.750362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553516, 31.349266, 48.483799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623114, 0.411260, -0.665278,
		0.241339, 0.910190, 0.336615,
		0.743966, 0.049191, -0.666405,
		35.776707, 31.364023, 48.283878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402493, 32.015144, 48.605343>,  <35.255932, 31.329590, 48.750362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402493, 32.015144, 48.605343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.480927, 31.789347, 48.284618>,  <35.527985, 31.653868, 48.092182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.480927, 31.789347, 48.284618>,  <35.402493, 32.015144, 48.605343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.480927, 31.789347, 48.284618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671523, 0.518558, -0.529296,
		0.714569, 0.642219, -0.277390,
		0.196081, -0.564493, -0.801811,
		35.539749, 31.619999, 48.044075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910816, 32.611565, 48.789875>,  <35.402493, 32.015144, 48.605343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.910816, 32.611565, 48.789875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.140099, 32.828014, 49.036003>,  <35.277668, 32.957886, 49.183681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.140099, 32.828014, 49.036003>,  <34.910816, 32.611565, 48.789875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140099, 32.828014, 49.036003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147322, 0.670637, -0.727009,
		-0.806059, 0.507376, 0.304694,
		0.573206, 0.541124, 0.615321,
		35.312061, 32.990353, 49.220600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663395, 33.297825, 48.674515>,  <34.910816, 32.611565, 48.789875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.663395, 33.297825, 48.674515> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.014149, 33.340515, 48.861996>,  <35.224602, 33.366127, 48.974483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.014149, 33.340515, 48.861996>,  <34.663395, 33.297825, 48.674515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.014149, 33.340515, 48.861996> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213090, 0.787708, -0.578021,
		-0.430893, 0.606734, 0.667986,
		0.876883, 0.106724, 0.468707,
		35.277214, 33.372532, 49.002609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677082, 33.997448, 48.854427>,  <34.663395, 33.297825, 48.674515>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677082, 33.997448, 48.854427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.054626, 33.870552, 48.817558>,  <35.281151, 33.794415, 48.795437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.054626, 33.870552, 48.817558>,  <34.677082, 33.997448, 48.854427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054626, 33.870552, 48.817558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165557, 0.695675, -0.699019,
		0.285876, 0.644514, 0.709138,
		0.943857, -0.317235, -0.092173,
		35.337784, 33.775383, 48.789906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.103859, 34.604504, 48.648014>,  <34.677082, 33.997448, 48.854427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.103859, 34.604504, 48.648014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.328896, 34.291882, 48.540184>,  <35.463917, 34.104309, 48.475487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.328896, 34.291882, 48.540184>,  <35.103859, 34.604504, 48.648014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.328896, 34.291882, 48.540184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306551, 0.500029, -0.809937,
		0.767802, 0.373024, 0.520896,
		0.562589, -0.781553, -0.269572,
		35.497673, 34.057415, 48.459312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764374, 34.927708, 48.608509>,  <35.103859, 34.604504, 48.648014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764374, 34.927708, 48.608509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.754623, 34.587555, 48.398270>,  <35.748772, 34.383465, 48.272125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.754623, 34.587555, 48.398270>,  <35.764374, 34.927708, 48.608509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.754623, 34.587555, 48.398270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313156, 0.492801, -0.811838,
		0.949389, -0.184385, 0.254290,
		-0.024376, -0.850382, -0.525601,
		35.747311, 34.332439, 48.240589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389370, 34.881378, 48.310440>,  <35.764374, 34.927708, 48.608509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389370, 34.881378, 48.310440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.166313, 34.628246, 48.095570>,  <36.032478, 34.476368, 47.966648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.166313, 34.628246, 48.095570>,  <36.389370, 34.881378, 48.310440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166313, 34.628246, 48.095570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296608, 0.452508, -0.840988,
		0.775282, -0.628299, -0.064633,
		-0.557639, -0.632832, -0.537180,
		35.999020, 34.438396, 47.934414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775890, 34.720718, 47.757778>,  <36.389370, 34.881378, 48.310440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775890, 34.720718, 47.757778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.408161, 34.623154, 47.634266>,  <36.187523, 34.564613, 47.560158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.408161, 34.623154, 47.634266>,  <36.775890, 34.720718, 47.757778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.408161, 34.623154, 47.634266> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175224, 0.448860, -0.876254,
		0.352330, -0.859669, -0.369909,
		-0.919326, -0.243914, -0.308781,
		36.132362, 34.549980, 47.541630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.917778, 34.520359, 47.079094>,  <36.775890, 34.720718, 47.757778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.917778, 34.520359, 47.079094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.523113, 34.584743, 47.088829>,  <36.286316, 34.623375, 47.094669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.523113, 34.584743, 47.088829>,  <36.917778, 34.520359, 47.079094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.523113, 34.584743, 47.088829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047341, 0.426752, -0.903129,
		-0.155756, -0.889929, -0.428680,
		-0.986660, 0.160962, 0.024339,
		36.227116, 34.633034, 47.096130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686348, 34.404987, 46.463337>,  <36.917778, 34.520359, 47.079094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686348, 34.404987, 46.463337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.378738, 34.621246, 46.599751>,  <36.194172, 34.751003, 46.681599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.378738, 34.621246, 46.599751>,  <36.686348, 34.404987, 46.463337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378738, 34.621246, 46.599751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024475, 0.508224, -0.860877,
		-0.638755, -0.670379, -0.377603,
		-0.769021, 0.540648, 0.341038,
		36.148033, 34.783440, 46.702061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.116600, 34.430798, 45.891014>,  <36.686348, 34.404987, 46.463337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.116600, 34.430798, 45.891014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.028034, 34.749588, 46.115803>,  <35.974895, 34.940861, 46.250675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.028034, 34.749588, 46.115803>,  <36.116600, 34.430798, 45.891014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.028034, 34.749588, 46.115803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064979, 0.562934, -0.823944,
		-0.973013, -0.218947, -0.072854,
		-0.221412, 0.796974, 0.561969,
		35.961609, 34.988682, 46.284393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.472122, 34.737549, 45.648300>,  <36.116600, 34.430798, 45.891014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.472122, 34.737549, 45.648300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.661884, 35.046055, 45.818050>,  <35.775742, 35.231159, 45.919903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.661884, 35.046055, 45.818050>,  <35.472122, 34.737549, 45.648300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.661884, 35.046055, 45.818050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006292, 0.479095, -0.877741,
		-0.880285, 0.419073, 0.222431,
		0.474403, 0.771262, 0.424377,
		35.804207, 35.277435, 45.945362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189983, 35.289291, 45.317108>,  <35.472122, 34.737549, 45.648300>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.189983, 35.289291, 45.317108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.513210, 35.448273, 45.491032>,  <35.707146, 35.543663, 45.595387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.513210, 35.448273, 45.491032>,  <35.189983, 35.289291, 45.317108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.513210, 35.448273, 45.491032> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139141, 0.588438, -0.796480,
		-0.572422, 0.704109, 0.420195,
		0.808067, 0.397456, 0.434805,
		35.755630, 35.567509, 45.621471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138798, 36.111511, 45.261723>,  <35.189983, 35.289291, 45.317108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.138798, 36.111511, 45.261723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.524921, 36.024475, 45.319450>,  <35.756596, 35.972256, 45.354088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.524921, 36.024475, 45.319450>,  <35.138798, 36.111511, 45.261723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.524921, 36.024475, 45.319450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249229, 0.603077, -0.757749,
		0.077838, 0.767433, 0.636386,
		0.965311, -0.217587, 0.144324,
		35.814514, 35.959198, 45.362747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567631, 36.538063, 45.428715>,  <35.138798, 36.111511, 45.261723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.567631, 36.538063, 45.428715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.220596, 36.562614, 45.231323>,  <34.012375, 36.577343, 45.112888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.220596, 36.562614, 45.231323>,  <34.567631, 36.538063, 45.428715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.220596, 36.562614, 45.231323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408957, -0.652639, 0.637822,
		-0.282917, 0.755179, 0.591323,
		-0.867590, 0.061375, -0.493478,
		33.960320, 36.581028, 45.083279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990421, 36.722004, 45.950619>,  <34.567631, 36.538063, 45.428715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990421, 36.722004, 45.950619> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.852436, 36.529030, 45.628559>,  <33.769646, 36.413246, 45.435326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.852436, 36.529030, 45.628559>,  <33.990421, 36.722004, 45.950619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.852436, 36.529030, 45.628559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370319, -0.718261, 0.589037,
		-0.862476, 0.501356, 0.069119,
		-0.344963, -0.482435, -0.805144,
		33.748947, 36.384300, 45.387016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.304577, 36.664494, 46.023727>,  <33.990421, 36.722004, 45.950619>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.304577, 36.664494, 46.023727> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.401100, 36.382294, 45.757179>,  <33.459015, 36.212975, 45.597252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.401100, 36.382294, 45.757179>,  <33.304577, 36.664494, 46.023727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.401100, 36.382294, 45.757179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512995, -0.675611, 0.529514,
		-0.823776, 0.214069, -0.524945,
		0.241307, -0.705495, -0.666369,
		33.473492, 36.170647, 45.557270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.701206, 36.290356, 45.858913>,  <33.304577, 36.664494, 46.023727>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.701206, 36.290356, 45.858913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.005787, 36.040253, 45.790516>,  <33.188538, 35.890190, 45.749477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.005787, 36.040253, 45.790516>,  <32.701206, 36.290356, 45.858913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.005787, 36.040253, 45.790516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510599, -0.741063, 0.436021,
		-0.399344, -0.244700, -0.883542,
		0.761455, -0.625258, -0.170995,
		33.234222, 35.852676, 45.739216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.352383, 35.610065, 45.726913>,  <32.701206, 36.290356, 45.858913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.352383, 35.610065, 45.726913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.724098, 35.484043, 45.804028>,  <32.947128, 35.408428, 45.850296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.724098, 35.484043, 45.804028>,  <32.352383, 35.610065, 45.726913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724098, 35.484043, 45.804028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365970, -0.714789, 0.595938,
		-0.049955, -0.624351, -0.779545,
		0.929285, -0.315061, 0.192787,
		33.002884, 35.389526, 45.861862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.362999, 34.917809, 45.611748>,  <32.352383, 35.610065, 45.726913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.362999, 34.917809, 45.611748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.666744, 34.997616, 45.859478>,  <32.848991, 35.045498, 46.008114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.666744, 34.997616, 45.859478>,  <32.362999, 34.917809, 45.611748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.666744, 34.997616, 45.859478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240652, -0.798214, 0.552214,
		0.604527, -0.568373, -0.558121,
		0.759364, 0.199515, 0.619322,
		32.894554, 35.057468, 46.045273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.540447, 34.262287, 45.834599>,  <32.362999, 34.917809, 45.611748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.540447, 34.262287, 45.834599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.706711, 34.509499, 46.101513>,  <32.806469, 34.657825, 46.261662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.706711, 34.509499, 46.101513>,  <32.540447, 34.262287, 45.834599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706711, 34.509499, 46.101513> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174224, -0.665978, 0.725341,
		0.892679, -0.417750, -0.169144,
		0.415657, 0.618028, 0.667286,
		32.831409, 34.694908, 46.301701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.205746, 33.652969, 45.899696>,  <32.540447, 34.262287, 45.834599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.205746, 33.652969, 45.899696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.808155, 33.687252, 45.872375>,  <31.569601, 33.707821, 45.855984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.808155, 33.687252, 45.872375>,  <32.205746, 33.652969, 45.899696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.808155, 33.687252, 45.872375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082211, 0.170976, -0.981839,
		-0.072469, -0.981541, -0.176992,
		-0.993976, 0.085704, -0.068303,
		31.509962, 33.712963, 45.851883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.036201, 33.317291, 45.246300>,  <32.205746, 33.652969, 45.899696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.036201, 33.317291, 45.246300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.725149, 33.549911, 45.341873>,  <31.538517, 33.689484, 45.399216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.725149, 33.549911, 45.341873>,  <32.036201, 33.317291, 45.246300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.725149, 33.549911, 45.341873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011172, 0.392753, -0.919576,
		-0.628620, -0.712423, -0.311914,
		-0.777632, 0.581549, 0.238933,
		31.491859, 33.724377, 45.413551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.694681, 33.326893, 44.627274>,  <32.036201, 33.317291, 45.246300>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.694681, 33.326893, 44.627274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.542643, 33.631626, 44.837090>,  <31.451420, 33.814465, 44.962978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.542643, 33.631626, 44.837090>,  <31.694681, 33.326893, 44.627274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.542643, 33.631626, 44.837090> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208384, 0.481995, -0.851033,
		-0.901168, -0.432780, -0.024450,
		-0.380095, 0.761829, 0.524543,
		31.428614, 33.860176, 44.994453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.103418, 33.498936, 44.263428>,  <31.694681, 33.326893, 44.627274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.103418, 33.498936, 44.263428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.175468, 33.818245, 44.493320>,  <31.218699, 34.009830, 44.631256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.175468, 33.818245, 44.493320>,  <31.103418, 33.498936, 44.263428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.175468, 33.818245, 44.493320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189144, 0.601497, -0.776161,
		-0.965287, 0.031097, 0.259332,
		0.180124, 0.798270, 0.574735,
		31.229506, 34.057724, 44.665741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.637905, 34.113659, 44.062195>,  <31.103418, 33.498936, 44.263428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.637905, 34.113659, 44.062195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.917465, 34.326195, 44.253704>,  <31.085201, 34.453716, 44.368610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.917465, 34.326195, 44.253704>,  <30.637905, 34.113659, 44.062195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.917465, 34.326195, 44.253704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049706, 0.703870, -0.708588,
		-0.713491, 0.471433, 0.518344,
		0.698899, 0.531336, 0.478772,
		31.127134, 34.485596, 44.397335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.475166, 34.858009, 43.986893>,  <30.637905, 34.113659, 44.062195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.475166, 34.858009, 43.986893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.861807, 34.837914, 44.087418>,  <31.093790, 34.825855, 44.147732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.861807, 34.837914, 44.087418>,  <30.475166, 34.858009, 43.986893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.861807, 34.837914, 44.087418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208217, 0.725691, -0.655758,
		-0.149432, 0.686184, 0.711914,
		0.966600, -0.050242, 0.251317,
		31.151787, 34.822842, 44.162811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.647932, 35.459557, 44.158123>,  <30.475166, 34.858009, 43.986893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.647932, 35.459557, 44.158123> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.993196, 35.287907, 44.051689>,  <31.200356, 35.184917, 43.987827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.993196, 35.287907, 44.051689>,  <30.647932, 35.459557, 44.158123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.993196, 35.287907, 44.051689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119391, 0.685494, -0.718223,
		0.490608, 0.588175, 0.642926,
		0.863162, -0.429126, -0.266086,
		31.252146, 35.159168, 43.971863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<31.563833, 28.770588, 46.438972> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.880289, 28.939634, 46.615829>,  <32.070164, 29.041061, 46.721943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.880289, 28.939634, 46.615829>,  <31.563833, 28.770588, 46.438972>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.880289, 28.939634, 46.615829> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356487, 0.268800, -0.894798,
		-0.497005, 0.865530, 0.062001,
		0.791140, 0.422616, 0.442145,
		32.117630, 29.066420, 46.748474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.724936, 29.384359, 46.089596>,  <31.563833, 28.770588, 46.438972>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.724936, 29.384359, 46.089596> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.073498, 29.266916, 46.246796>,  <32.282635, 29.196451, 46.341114>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.073498, 29.266916, 46.246796>,  <31.724936, 29.384359, 46.089596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.073498, 29.266916, 46.246796> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456159, 0.190240, -0.869326,
		0.180477, 0.936805, 0.299708,
		0.871405, -0.293608, 0.392998,
		32.334919, 29.178833, 46.364697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.180141, 29.876738, 45.798645>,  <31.724936, 29.384359, 46.089596>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.180141, 29.876738, 45.798645> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.419319, 29.585688, 45.933121>,  <32.562824, 29.411058, 46.013805>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.419319, 29.585688, 45.933121>,  <32.180141, 29.876738, 45.798645>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.419319, 29.585688, 45.933121> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669839, 0.223267, -0.708144,
		0.440202, 0.648626, 0.620892,
		0.597945, -0.727624, 0.336192,
		32.598701, 29.367401, 46.033978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.801079, 30.234978, 46.012062>,  <32.180141, 29.876738, 45.798645>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.801079, 30.234978, 46.012062> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.867779, 29.849195, 45.930069>,  <32.907799, 29.617725, 45.880871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.867779, 29.849195, 45.930069>,  <32.801079, 30.234978, 46.012062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.867779, 29.849195, 45.930069> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616026, 0.264232, -0.742087,
		0.769874, -0.002536, 0.638191,
		0.166748, -0.964456, -0.204987,
		32.917805, 29.559858, 45.868572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560532, 30.225937, 45.840691>,  <32.801079, 30.234978, 46.012062>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560532, 30.225937, 45.840691> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.442314, 29.879295, 45.679871>,  <33.371384, 29.671310, 45.583378>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.442314, 29.879295, 45.679871>,  <33.560532, 30.225937, 45.840691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442314, 29.879295, 45.679871> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678617, 0.105774, -0.726836,
		0.672407, -0.487655, 0.556831,
		-0.295547, -0.866605, -0.402054,
		33.353649, 29.619314, 45.559254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.158737, 29.989075, 45.636208>,  <33.560532, 30.225937, 45.840691>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.158737, 29.989075, 45.636208> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.885448, 29.787832, 45.424511>,  <33.721478, 29.667088, 45.297493>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.885448, 29.787832, 45.424511>,  <34.158737, 29.989075, 45.636208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.885448, 29.787832, 45.424511> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493533, 0.216018, -0.842473,
		0.538178, -0.836792, 0.100712,
		-0.683220, -0.503106, -0.529241,
		33.680481, 29.636900, 45.265739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.587906, 29.757793, 45.054279>,  <34.158737, 29.989075, 45.636208>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.587906, 29.757793, 45.054279> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.201118, 29.698656, 44.971214>,  <33.969048, 29.663174, 44.921375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.201118, 29.698656, 44.971214>,  <34.587906, 29.757793, 45.054279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201118, 29.698656, 44.971214> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190182, 0.124035, -0.973882,
		0.169741, -0.981202, -0.091820,
		-0.966964, -0.147845, -0.207660,
		33.911030, 29.654303, 44.908916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597595, 29.233686, 44.463631>,  <34.587906, 29.757793, 45.054279>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.597595, 29.233686, 44.463631> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.254349, 29.438488, 44.479088>,  <34.048401, 29.561369, 44.488361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.254349, 29.438488, 44.479088>,  <34.597595, 29.233686, 44.463631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.254349, 29.438488, 44.479088> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032482, 0.129237, -0.991082,
		-0.512430, -0.849206, -0.127531,
		-0.858114, 0.512002, 0.038641,
		33.996914, 29.592089, 44.490681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.175034, 29.051270, 43.969418>,  <34.597595, 29.233686, 44.463631>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.175034, 29.051270, 43.969418> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.014359, 29.409859, 44.044231>,  <33.917953, 29.625013, 44.089119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.014359, 29.409859, 44.044231>,  <34.175034, 29.051270, 43.969418>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.014359, 29.409859, 44.044231> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138224, 0.261246, -0.955325,
		-0.905286, -0.357889, -0.228853,
		-0.401687, 0.896474, 0.187034,
		33.893852, 29.678801, 44.100342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.716824, 29.093206, 43.394779>,  <34.175034, 29.051270, 43.969418>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.716824, 29.093206, 43.394779> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.712879, 29.467175, 43.536667>,  <33.710510, 29.691555, 43.621799>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.712879, 29.467175, 43.536667>,  <33.716824, 29.093206, 43.394779>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.712879, 29.467175, 43.536667> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251309, 0.345664, -0.904080,
		-0.967857, 0.080226, -0.238363,
		-0.009863, 0.934923, 0.354715,
		33.709919, 29.747652, 43.643082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.208588, 29.515831, 43.074593>,  <33.716824, 29.093206, 43.394779>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.208588, 29.515831, 43.074593> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.484520, 29.779013, 43.195412>,  <33.650078, 29.936922, 43.267902>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.484520, 29.779013, 43.195412>,  <33.208588, 29.515831, 43.074593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484520, 29.779013, 43.195412> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185575, 0.242565, -0.952220,
		-0.699782, 0.712923, 0.045229,
		0.689831, 0.657953, 0.302044,
		33.691471, 29.976398, 43.286026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.043758, 30.187689, 42.703556>,  <33.208588, 29.515831, 43.074593>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.043758, 30.187689, 42.703556> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.417229, 30.231840, 42.839828>,  <33.641312, 30.258331, 42.921593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.417229, 30.231840, 42.839828>,  <33.043758, 30.187689, 42.703556>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417229, 30.231840, 42.839828> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279617, 0.369680, -0.886088,
		-0.223748, 0.922580, 0.314298,
		0.933676, 0.110377, 0.340684,
		33.697330, 30.264954, 42.942032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.996559, 30.837345, 43.230049>,  <33.043758, 30.187689, 42.703556>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.996559, 30.837345, 43.230049> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.691322, 31.095184, 43.211369>,  <32.508179, 31.249887, 43.200161>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.691322, 31.095184, 43.211369>,  <32.996559, 30.837345, 43.230049>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.691322, 31.095184, 43.211369> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168446, -0.128605, 0.977285,
		0.623951, 0.753626, 0.206718,
		-0.763093, 0.644599, -0.046702,
		32.462395, 31.288565, 43.197357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120586, 31.339293, 43.748192>,  <32.996559, 30.837345, 43.230049>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120586, 31.339293, 43.748192> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.731644, 31.400995, 43.678085>,  <32.498276, 31.438017, 43.636021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.731644, 31.400995, 43.678085>,  <33.120586, 31.339293, 43.748192>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.731644, 31.400995, 43.678085> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190238, -0.088237, 0.977765,
		0.135363, 0.984083, 0.115144,
		-0.972361, 0.154258, -0.175266,
		32.439934, 31.447273, 43.625507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.911739, 31.851412, 44.171558>,  <33.120586, 31.339293, 43.748192>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.911739, 31.851412, 44.171558> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.579567, 31.654861, 44.066536>,  <32.380264, 31.536932, 44.003521>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.579567, 31.654861, 44.066536>,  <32.911739, 31.851412, 44.171558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.579567, 31.654861, 44.066536> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247207, -0.097344, 0.964060,
		-0.499274, 0.865491, -0.040634,
		-0.830430, -0.491375, -0.262557,
		32.330437, 31.507448, 43.987770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.316753, 32.193108, 44.580799>,  <32.911739, 31.851412, 44.171558>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.316753, 32.193108, 44.580799> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.180359, 31.841070, 44.448639>,  <32.098522, 31.629848, 44.369343>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.180359, 31.841070, 44.448639>,  <32.316753, 32.193108, 44.580799>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.180359, 31.841070, 44.448639> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551916, -0.097097, 0.828227,
		-0.760997, 0.464769, -0.452629,
		-0.340986, -0.880092, -0.330404,
		32.078064, 31.577042, 44.349518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.672033, 32.283558, 44.668896>,  <32.316753, 32.193108, 44.580799>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.672033, 32.283558, 44.668896> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.761391, 31.893671, 44.666935>,  <31.815004, 31.659739, 44.665760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.761391, 31.893671, 44.666935>,  <31.672033, 32.283558, 44.668896>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.761391, 31.893671, 44.666935> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669645, -0.157121, 0.725871,
		-0.708288, -0.158873, -0.687813,
		0.223391, -0.974716, -0.004898,
		31.828407, 31.601255, 44.665466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.076031, 31.900019, 44.846111>,  <31.672033, 32.283558, 44.668896>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.076031, 31.900019, 44.846111> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.335867, 31.602961, 44.911236>,  <31.491768, 31.424726, 44.950310>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.335867, 31.602961, 44.911236>,  <31.076031, 31.900019, 44.846111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.335867, 31.602961, 44.911236> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499191, -0.255095, 0.828091,
		-0.573446, -0.619195, -0.536430,
		0.649590, -0.742647, 0.162814,
		31.530745, 31.380167, 44.960079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.696232, 31.297897, 45.021313>,  <31.076031, 31.900019, 44.846111>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.696232, 31.297897, 45.021313> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.062586, 31.226007, 45.164898>,  <31.282398, 31.182875, 45.251049>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.062586, 31.226007, 45.164898>,  <30.696232, 31.297897, 45.021313>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.062586, 31.226007, 45.164898> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398289, -0.295000, 0.868528,
		-0.050200, -0.938443, -0.341768,
		0.915885, -0.179722, 0.358962,
		31.337351, 31.172091, 45.272587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.768950, 30.564142, 45.078888>,  <30.696232, 31.297897, 45.021313>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.768950, 30.564142, 45.078888> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.989265, 30.755068, 45.352764>,  <31.121456, 30.869623, 45.517090>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.989265, 30.755068, 45.352764>,  <30.768950, 30.564142, 45.078888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.989265, 30.755068, 45.352764> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505692, -0.461782, 0.728720,
		0.664007, -0.747614, -0.012971,
		0.550791, 0.477316, 0.684689,
		31.154503, 30.898262, 45.558170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.783361, 30.087494, 45.489231>,  <30.768950, 30.564142, 45.078888>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.783361, 30.087494, 45.489231> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.922525, 30.383966, 45.718876>,  <31.006023, 30.561850, 45.856663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.922525, 30.383966, 45.718876>,  <30.783361, 30.087494, 45.489231>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.922525, 30.383966, 45.718876> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536959, -0.344452, 0.770082,
		0.768527, -0.576196, 0.278146,
		0.347910, 0.741182, 0.574114,
		31.026899, 30.606321, 45.891109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.819714, 29.788305, 46.171104>,  <30.783361, 30.087494, 45.489231>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.819714, 29.788305, 46.171104> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.827591, 30.178488, 46.258823>,  <30.832317, 30.412598, 46.311455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.827591, 30.178488, 46.258823>,  <30.819714, 29.788305, 46.171104>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.827591, 30.178488, 46.258823> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408862, -0.192308, 0.892104,
		0.912384, -0.107233, 0.395040,
		0.019694, 0.975458, 0.219302,
		30.833500, 30.471125, 46.324615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.052784, 29.840384, 46.795567>,  <30.819714, 29.788305, 46.171104>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.052784, 29.840384, 46.795567> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.874077, 30.196585, 46.761135>,  <30.766853, 30.410305, 46.740479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.874077, 30.196585, 46.761135>,  <31.052784, 29.840384, 46.795567>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.874077, 30.196585, 46.761135> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374881, -0.098980, 0.921774,
		0.812320, 0.444085, 0.378053,
		-0.446766, 0.890501, -0.086076,
		30.740047, 30.463736, 46.735313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.119637, 30.068604, 47.418373>,  <31.052784, 29.840384, 46.795567>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.119637, 30.068604, 47.418373> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.832468, 30.304811, 47.270927>,  <30.660168, 30.446537, 47.182461>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.832468, 30.304811, 47.270927>,  <31.119637, 30.068604, 47.418373>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.832468, 30.304811, 47.270927> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477910, -0.033088, 0.877785,
		0.506153, 0.806344, 0.305971,
		-0.717921, 0.590521, -0.368612,
		30.617092, 30.481968, 47.160343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.962122, 30.449631, 47.923836>,  <31.119637, 30.068604, 47.418373>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.962122, 30.449631, 47.923836> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.644745, 30.515154, 47.689362>,  <30.454319, 30.554468, 47.548676>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.644745, 30.515154, 47.689362>,  <30.962122, 30.449631, 47.923836>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.644745, 30.515154, 47.689362> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555116, 0.200182, 0.807325,
		0.249592, 0.965968, -0.067899,
		-0.793441, 0.163810, -0.586188,
		30.406712, 30.564297, 47.513504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.625957, 30.933096, 48.258121>,  <30.962122, 30.449631, 47.923836>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.625957, 30.933096, 48.258121> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.344193, 30.768188, 48.027004>,  <30.175135, 30.669245, 47.888336>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.344193, 30.768188, 48.027004>,  <30.625957, 30.933096, 48.258121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.344193, 30.768188, 48.027004> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676739, 0.144568, 0.721889,
		-0.214081, 0.899520, -0.380833,
		-0.704410, -0.412267, -0.577791,
		30.132870, 30.644508, 47.853668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.479925, 31.582834, 47.752182>,  <30.625957, 30.933096, 48.258121>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.479925, 31.582834, 47.752182> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.645864, 31.854004, 47.994938>,  <30.745428, 32.016705, 48.140591>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.645864, 31.854004, 47.994938>,  <30.479925, 31.582834, 47.752182>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.645864, 31.854004, 47.994938> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232268, 0.565998, -0.791010,
		-0.879745, 0.469112, 0.077345,
		0.414850, 0.677923, 0.606894,
		30.770319, 32.057381, 48.177006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.302933, 32.202843, 47.493767>,  <30.479925, 31.582834, 47.752182>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.302933, 32.202843, 47.493767> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.617371, 32.280331, 47.728554>,  <30.806034, 32.326824, 47.869427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.617371, 32.280331, 47.728554>,  <30.302933, 32.202843, 47.493767>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.617371, 32.280331, 47.728554> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275859, 0.739847, -0.613619,
		-0.553131, 0.644283, 0.528153,
		0.786096, 0.193716, 0.586964,
		30.853199, 32.338444, 47.904644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.213457, 32.922325, 47.759552>,  <30.302933, 32.202843, 47.493767>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.213457, 32.922325, 47.759552> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.590023, 32.796574, 47.710720>,  <30.815962, 32.721123, 47.681423>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.590023, 32.796574, 47.710720>,  <30.213457, 32.922325, 47.759552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.590023, 32.796574, 47.710720> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180994, 0.776401, -0.603690,
		0.284569, 0.546228, 0.787817,
		0.941415, -0.314381, -0.122076,
		30.872448, 32.702259, 47.674099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.518892, 33.583546, 47.559830>,  <30.213457, 32.922325, 47.759552>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.518892, 33.583546, 47.559830> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.790960, 33.311699, 47.449924>,  <30.954201, 33.148590, 47.383984>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.790960, 33.311699, 47.449924>,  <30.518892, 33.583546, 47.559830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.790960, 33.311699, 47.449924> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378075, 0.646346, -0.662795,
		0.628035, 0.346933, 0.696570,
		0.680170, -0.679614, -0.274761,
		30.995012, 33.107815, 47.367496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.026743, 34.006447, 47.410137>,  <30.518892, 33.583546, 47.559830>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.026743, 34.006447, 47.410137> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.131241, 33.663761, 47.232243>,  <31.193939, 33.458149, 47.125507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.131241, 33.663761, 47.232243>,  <31.026743, 34.006447, 47.410137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.131241, 33.663761, 47.232243> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282507, 0.508419, -0.813449,
		0.923007, 0.086868, 0.374849,
		0.261243, -0.856717, -0.444734,
		31.209614, 33.406746, 47.098824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.644772, 34.059116, 47.093994>,  <31.026743, 34.006447, 47.410137>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.644772, 34.059116, 47.093994> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.487234, 33.751614, 46.892441>,  <31.392712, 33.567112, 46.771511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.487234, 33.751614, 46.892441>,  <31.644772, 34.059116, 47.093994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.487234, 33.751614, 46.892441> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220899, 0.452958, -0.863732,
		0.892239, -0.451482, -0.008575,
		-0.393843, -0.768761, -0.503879,
		31.369081, 33.520985, 46.741276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.085884, 33.909309, 46.556545>,  <31.644772, 34.059116, 47.093994>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.085884, 33.909309, 46.556545> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.734962, 33.766972, 46.427731>,  <31.524410, 33.681568, 46.350441>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.734962, 33.766972, 46.427731>,  <32.085884, 33.909309, 46.556545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.734962, 33.766972, 46.427731> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220774, 0.296575, -0.929140,
		0.426142, -0.886237, -0.181624,
		-0.877304, -0.355848, -0.322041,
		31.471771, 33.660217, 46.331120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.790176, 33.830494, 46.357193>,  <32.085884, 33.909309, 46.556545>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.790176, 33.830494, 46.357193> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.827900, 34.178833, 46.550163>,  <32.850533, 34.387836, 46.665947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.827900, 34.178833, 46.550163>,  <32.790176, 33.830494, 46.357193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.827900, 34.178833, 46.550163> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052676, -0.488271, 0.871101,
		0.994149, -0.056736, -0.091919,
		0.094304, 0.870846, 0.482426,
		32.856190, 34.440086, 46.694893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.266842, 33.688629, 46.783024>,  <32.790176, 33.830494, 46.357193>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.266842, 33.688629, 46.783024> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.123447, 34.022327, 46.950603>,  <33.037411, 34.222546, 47.051151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.123447, 34.022327, 46.950603>,  <33.266842, 33.688629, 46.783024>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123447, 34.022327, 46.950603> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050487, -0.430798, 0.901035,
		0.932168, 0.344162, 0.112317,
		-0.358488, 0.834245, 0.418952,
		33.015900, 34.272602, 47.076290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702759, 33.796879, 47.324291>,  <33.266842, 33.688629, 46.783024>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.702759, 33.796879, 47.324291> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.400791, 34.028339, 47.447746>,  <33.219608, 34.167213, 47.521820>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.400791, 34.028339, 47.447746>,  <33.702759, 33.796879, 47.324291>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.400791, 34.028339, 47.447746> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053223, -0.415011, 0.908258,
		0.653651, 0.702091, 0.282503,
		-0.754922, 0.578648, 0.308640,
		33.174313, 34.201935, 47.540337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934055, 34.097599, 48.037384>,  <33.702759, 33.796879, 47.324291>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934055, 34.097599, 48.037384> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.537647, 34.102928, 47.984158>,  <33.299805, 34.106125, 47.952221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.537647, 34.102928, 47.984158>,  <33.934055, 34.097599, 48.037384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.537647, 34.102928, 47.984158> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124433, -0.456428, 0.881016,
		-0.048996, 0.889660, 0.453986,
		-0.991018, 0.013324, -0.133066,
		33.240341, 34.106926, 47.944237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812031, 34.355824, 48.646206>,  <33.934055, 34.097599, 48.037384>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812031, 34.355824, 48.646206> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.472759, 34.189957, 48.514362>,  <33.269196, 34.090435, 48.435257>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.472759, 34.189957, 48.514362>,  <33.812031, 34.355824, 48.646206>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.472759, 34.189957, 48.514362> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201425, -0.323014, 0.924711,
		-0.489917, 0.850712, 0.190449,
		-0.848180, -0.414670, -0.329605,
		33.218304, 34.065556, 48.415482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.199333, 34.744553, 49.009701>,  <33.812031, 34.355824, 48.646206>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.199333, 34.744553, 49.009701> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.116264, 34.375793, 48.878868>,  <33.066422, 34.154537, 48.800369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.116264, 34.375793, 48.878868>,  <33.199333, 34.744553, 49.009701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116264, 34.375793, 48.878868> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081149, -0.316984, 0.944953,
		-0.974826, 0.222784, -0.008982,
		-0.207673, -0.921894, -0.327083,
		33.053963, 34.099224, 48.780743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.697884, 34.495193, 49.460686>,  <33.199333, 34.744553, 49.009701>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.697884, 34.495193, 49.460686> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.825985, 34.154430, 49.294945>,  <32.902847, 33.949970, 49.195499>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.825985, 34.154430, 49.294945>,  <32.697884, 34.495193, 49.460686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.825985, 34.154430, 49.294945> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109497, -0.467741, 0.877057,
		-0.940982, -0.235511, -0.243078,
		0.320254, -0.851912, -0.414348,
		32.922062, 33.898857, 49.170639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.256527, 34.072166, 49.715630>,  <32.697884, 34.495193, 49.460686>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.256527, 34.072166, 49.715630> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.583229, 33.871998, 49.600750>,  <32.779251, 33.751896, 49.531822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.583229, 33.871998, 49.600750>,  <32.256527, 34.072166, 49.715630>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.583229, 33.871998, 49.600750> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011810, -0.512153, 0.858813,
		-0.576862, -0.698048, -0.424215,
		0.816756, -0.500427, -0.287198,
		32.828255, 33.721870, 49.514591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.135956, 33.446045, 49.963295>,  <32.256527, 34.072166, 49.715630>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.135956, 33.446045, 49.963295> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.529167, 33.414604, 49.896984>,  <32.765095, 33.395741, 49.857197>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.529167, 33.414604, 49.896984>,  <32.135956, 33.446045, 49.963295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.529167, 33.414604, 49.896984> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130555, -0.335156, 0.933073,
		-0.128906, -0.938878, -0.319204,
		0.983025, -0.078605, -0.165779,
		32.824074, 33.391022, 49.847252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.135979, 38.436111, 35.046047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.467232, 38.438374, 35.270248>,  <36.665985, 38.439732, 35.404770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.467232, 38.438374, 35.270248>,  <36.135979, 38.436111, 35.046047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.467232, 38.438374, 35.270248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558802, 0.086876, 0.824738,
		-0.044035, -0.996203, 0.075102,
		0.828131, 0.005650, 0.560506,
		36.715672, 38.440067, 35.438400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.017742, 38.035961, 35.684547>,  <36.135979, 38.436111, 35.046047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.017742, 38.035961, 35.684547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.343872, 38.240849, 35.792534>,  <36.539551, 38.363781, 35.857327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.343872, 38.240849, 35.792534>,  <36.017742, 38.035961, 35.684547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343872, 38.240849, 35.792534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408099, 0.177613, 0.895494,
		0.410735, -0.840291, 0.353847,
		0.815324, 0.512215, 0.269970,
		36.588470, 38.394512, 35.873524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279503, 37.700985, 36.315826>,  <36.017742, 38.035961, 35.684547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279503, 37.700985, 36.315826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.408417, 38.079544, 36.307194>,  <36.485767, 38.306679, 36.302013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.408417, 38.079544, 36.307194>,  <36.279503, 37.700985, 36.315826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.408417, 38.079544, 36.307194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335562, 0.135531, 0.932217,
		0.885171, -0.293202, 0.361255,
		0.322289, 0.946395, -0.021581,
		36.505104, 38.363464, 36.300720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589561, 37.747742, 36.895245>,  <36.279503, 37.700985, 36.315826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589561, 37.747742, 36.895245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.513496, 38.125614, 36.788357>,  <36.467857, 38.352337, 36.724224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.513496, 38.125614, 36.788357>,  <36.589561, 37.747742, 36.895245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.513496, 38.125614, 36.788357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313690, 0.199456, 0.928341,
		0.930289, 0.260361, 0.258409,
		-0.190162, 0.944685, -0.267224,
		36.456448, 38.409019, 36.708191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858368, 38.297161, 37.513847>,  <36.589561, 37.747742, 36.895245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858368, 38.297161, 37.513847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.597763, 38.509361, 37.296925>,  <36.441399, 38.636681, 37.166771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.597763, 38.509361, 37.296925>,  <36.858368, 38.297161, 37.513847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597763, 38.509361, 37.296925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436126, 0.323004, 0.839918,
		0.620742, 0.783735, 0.020921,
		-0.651516, 0.530497, -0.542310,
		36.402309, 38.668510, 37.134232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893269, 38.965210, 37.819000>,  <36.858368, 38.297161, 37.513847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893269, 38.965210, 37.819000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.544151, 38.955223, 37.624020>,  <36.334682, 38.949230, 37.507030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.544151, 38.955223, 37.624020>,  <36.893269, 38.965210, 37.819000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.544151, 38.955223, 37.624020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457118, 0.391899, 0.798410,
		0.171101, 0.919670, -0.353458,
		-0.872793, -0.024963, -0.487452,
		36.282314, 38.947735, 37.477783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574295, 39.686234, 37.885593>,  <36.893269, 38.965210, 37.819000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.574295, 39.686234, 37.885593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.299015, 39.410919, 37.793823>,  <36.133846, 39.245731, 37.738762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.299015, 39.410919, 37.793823>,  <36.574295, 39.686234, 37.885593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.299015, 39.410919, 37.793823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541743, 0.277173, 0.793529,
		-0.482587, 0.670398, -0.563627,
		-0.688203, -0.688288, -0.229424,
		36.092552, 39.204433, 37.724995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929047, 39.975388, 38.129440>,  <36.574295, 39.686234, 37.885593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929047, 39.975388, 38.129440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.815914, 39.592743, 38.101437>,  <35.748035, 39.363155, 38.084633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.815914, 39.592743, 38.101437>,  <35.929047, 39.975388, 38.129440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815914, 39.592743, 38.101437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693632, 0.153575, 0.703768,
		-0.662480, 0.247611, -0.706971,
		-0.282834, -0.956611, -0.070010,
		35.731064, 39.305759, 38.080433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181602, 39.973740, 38.211460>,  <35.929047, 39.975388, 38.129440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.181602, 39.973740, 38.211460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.258842, 39.587170, 38.279274>,  <35.305187, 39.355228, 38.319962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.258842, 39.587170, 38.279274>,  <35.181602, 39.973740, 38.211460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258842, 39.587170, 38.279274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551316, 0.036061, 0.833517,
		-0.811642, -0.254421, -0.525840,
		0.193102, -0.966421, 0.169536,
		35.316772, 39.297245, 38.330135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588654, 39.627991, 38.527538>,  <35.181602, 39.973740, 38.211460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.588654, 39.627991, 38.527538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.872242, 39.365524, 38.630924>,  <35.042393, 39.208042, 38.692955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.872242, 39.365524, 38.630924>,  <34.588654, 39.627991, 38.527538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.872242, 39.365524, 38.630924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347545, -0.006168, 0.937643,
		-0.613658, -0.754589, -0.232421,
		0.708968, -0.656169, 0.258468,
		35.084934, 39.168674, 38.708466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281891, 39.207996, 38.995361>,  <34.588654, 39.627991, 38.527538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.281891, 39.207996, 38.995361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.664852, 39.141808, 39.090019>,  <34.894630, 39.102097, 39.146812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.664852, 39.141808, 39.090019>,  <34.281891, 39.207996, 38.995361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664852, 39.141808, 39.090019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263874, -0.168556, 0.949716,
		-0.117266, -0.971703, -0.205040,
		0.957402, -0.165474, 0.236641,
		34.952072, 39.092167, 39.161011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297440, 38.571781, 39.198502>,  <34.281891, 39.207996, 38.995361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297440, 38.571781, 39.198502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.627037, 38.733559, 39.357224>,  <34.824795, 38.830627, 39.452457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.627037, 38.733559, 39.357224>,  <34.297440, 38.571781, 39.198502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627037, 38.733559, 39.357224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297076, -0.287956, 0.910399,
		0.482472, -0.868046, -0.117123,
		0.823995, 0.404448, 0.396806,
		34.874237, 38.854893, 39.476265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081284, 37.933784, 38.873890>,  <34.297440, 38.571781, 39.198502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.081284, 37.933784, 38.873890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.687141, 37.909313, 38.810226>,  <33.450657, 37.894630, 38.772030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.687141, 37.909313, 38.810226>,  <34.081284, 37.933784, 38.873890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687141, 37.909313, 38.810226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157729, 0.027566, -0.987098,
		0.064787, -0.997746, -0.017511,
		-0.985355, -0.061189, -0.159160,
		33.391533, 37.890961, 38.762478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.983753, 37.280483, 38.470413>,  <34.081284, 37.933784, 38.873890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.983753, 37.280483, 38.470413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.699829, 37.558842, 38.426792>,  <33.529472, 37.725857, 38.400620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.699829, 37.558842, 38.426792>,  <33.983753, 37.280483, 38.470413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.699829, 37.558842, 38.426792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192714, 0.042945, -0.980315,
		-0.677514, -0.716857, -0.164592,
		-0.709814, 0.695896, -0.109053,
		33.486885, 37.767612, 38.394077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687122, 37.080894, 37.869053>,  <33.983753, 37.280483, 38.470413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.687122, 37.080894, 37.869053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507000, 37.437122, 37.894722>,  <33.398926, 37.650860, 37.910126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507000, 37.437122, 37.894722>,  <33.687122, 37.080894, 37.869053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507000, 37.437122, 37.894722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047967, 0.095901, -0.994234,
		-0.891587, -0.444627, -0.085902,
		-0.450301, 0.890567, 0.064177,
		33.371910, 37.704292, 37.913975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.107330, 37.106461, 37.373955>,  <33.687122, 37.080894, 37.869053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.107330, 37.106461, 37.373955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.175934, 37.492046, 37.455303>,  <33.217098, 37.723396, 37.504112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.175934, 37.492046, 37.455303>,  <33.107330, 37.106461, 37.373955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.175934, 37.492046, 37.455303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141560, 0.228405, -0.963220,
		-0.974959, 0.136415, 0.175633,
		0.171513, 0.963962, 0.203374,
		33.227386, 37.781235, 37.516315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.584267, 37.465134, 37.047176>,  <33.107330, 37.106461, 37.373955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.584267, 37.465134, 37.047176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.891979, 37.713963, 37.105450>,  <33.076607, 37.863262, 37.140411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.891979, 37.713963, 37.105450>,  <32.584267, 37.465134, 37.047176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.891979, 37.713963, 37.105450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042825, 0.277710, -0.959710,
		-0.637470, 0.732051, 0.240278,
		0.769284, 0.622077, 0.145681,
		33.122765, 37.900585, 37.149155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.478127, 38.082165, 36.632450>,  <32.584267, 37.465134, 37.047176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.478127, 38.082165, 36.632450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.868122, 38.108353, 36.717411>,  <33.102119, 38.124065, 36.768387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.868122, 38.108353, 36.717411>,  <32.478127, 38.082165, 36.632450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.868122, 38.108353, 36.717411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187890, 0.267720, -0.944999,
		-0.118731, 0.961270, 0.248722,
		0.974987, 0.065469, 0.212400,
		33.160618, 38.127995, 36.781132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.720608, 38.800198, 36.318886>,  <32.478127, 38.082165, 36.632450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.720608, 38.800198, 36.318886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.027195, 38.546459, 36.359142>,  <33.211147, 38.394215, 36.383297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.027195, 38.546459, 36.359142>,  <32.720608, 38.800198, 36.318886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.027195, 38.546459, 36.359142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122630, -0.009278, -0.992409,
		0.630465, 0.772993, 0.070678,
		0.766469, -0.634347, 0.100641,
		33.257137, 38.356155, 36.389336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.185600, 39.052830, 35.915348>,  <32.720608, 38.800198, 36.318886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.185600, 39.052830, 35.915348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337299, 38.686283, 35.966644>,  <33.428318, 38.466354, 35.997421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337299, 38.686283, 35.966644>,  <33.185600, 39.052830, 35.915348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337299, 38.686283, 35.966644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303214, -0.007860, -0.952890,
		0.874203, 0.400267, 0.274874,
		0.379250, -0.916365, 0.128238,
		33.451073, 38.411373, 36.005116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862759, 39.064274, 35.618610>,  <33.185600, 39.052830, 35.915348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862759, 39.064274, 35.618610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.716354, 38.692223, 35.630589>,  <33.628513, 38.468990, 35.637775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.716354, 38.692223, 35.630589>,  <33.862759, 39.064274, 35.618610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.716354, 38.692223, 35.630589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287419, -0.143593, -0.946980,
		0.885115, -0.337994, 0.319893,
		-0.366008, -0.930130, 0.029950,
		33.606552, 38.413185, 35.639572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184433, 38.777645, 35.056381>,  <33.862759, 39.064274, 35.618610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184433, 38.777645, 35.056381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901585, 38.505581, 35.133694>,  <33.731876, 38.342342, 35.180080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901585, 38.505581, 35.133694>,  <34.184433, 38.777645, 35.056381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901585, 38.505581, 35.133694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000981, -0.272405, -0.962182,
		0.707090, -0.680570, 0.191956,
		-0.707123, -0.680162, 0.193283,
		33.689449, 38.301533, 35.191677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.369522, 38.169144, 34.642914>,  <34.184433, 38.777645, 35.056381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.369522, 38.169144, 34.642914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.977085, 38.176655, 34.719971>,  <33.741623, 38.181160, 34.766205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.977085, 38.176655, 34.719971>,  <34.369522, 38.169144, 34.642914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.977085, 38.176655, 34.719971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192288, -0.208229, -0.958992,
		0.022105, -0.977900, 0.207902,
		-0.981089, 0.018778, 0.192641,
		33.682758, 38.182289, 34.777763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.087002, 37.433418, 34.470226>,  <34.369522, 38.169144, 34.642914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.087002, 37.433418, 34.470226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786510, 37.697308, 34.461967>,  <33.606216, 37.855640, 34.457012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786510, 37.697308, 34.461967>,  <34.087002, 37.433418, 34.470226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786510, 37.697308, 34.461967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193058, -0.249532, -0.948927,
		-0.631180, -0.708872, 0.314820,
		-0.751225, 0.659723, -0.020647,
		33.561142, 37.895226, 34.455772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.593811, 37.015305, 34.188881>,  <34.087002, 37.433418, 34.470226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.593811, 37.015305, 34.188881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.458168, 37.384579, 34.116501>,  <33.376781, 37.606144, 34.073071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.458168, 37.384579, 34.116501>,  <33.593811, 37.015305, 34.188881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.458168, 37.384579, 34.116501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160559, -0.246324, -0.955796,
		-0.926946, -0.295061, 0.231754,
		-0.339104, 0.923181, -0.180954,
		33.356438, 37.661533, 34.062214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.883865, 36.961418, 33.955246>,  <33.593811, 37.015305, 34.188881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.883865, 36.961418, 33.955246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.051632, 37.301071, 33.826836>,  <33.152290, 37.504864, 33.749790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.051632, 37.301071, 33.826836>,  <32.883865, 36.961418, 33.955246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.051632, 37.301071, 33.826836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226086, -0.244786, -0.942849,
		-0.879191, 0.468025, 0.089311,
		0.419415, 0.849136, -0.321028,
		33.177456, 37.555813, 33.730526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.877930, 36.879704, 33.224411>,  <32.883865, 36.961418, 33.955246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.877930, 36.879704, 33.224411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986633, 37.264347, 33.239635>,  <33.051857, 37.495132, 33.248768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986633, 37.264347, 33.239635>,  <32.877930, 36.879704, 33.224411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.986633, 37.264347, 33.239635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080267, 0.062058, -0.994840,
		-0.959012, 0.267300, 0.094050,
		0.271758, 0.961613, 0.038059,
		33.068161, 37.552830, 33.251053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.705746, 36.265354, 33.626423>,  <32.877930, 36.879704, 33.224411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.705746, 36.265354, 33.626423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574837, 35.889397, 33.587452>,  <32.496292, 35.663822, 33.564072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574837, 35.889397, 33.587452>,  <32.705746, 36.265354, 33.626423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.574837, 35.889397, 33.587452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434955, -0.241373, 0.867498,
		-0.838872, 0.241533, 0.487806,
		-0.327273, -0.939894, -0.097425,
		32.476654, 35.607430, 33.558224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.187279, 36.107960, 34.217041>,  <32.705746, 36.265354, 33.626423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.187279, 36.107960, 34.217041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.389175, 35.815578, 34.033325>,  <32.510311, 35.640152, 33.923096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.389175, 35.815578, 34.033325>,  <32.187279, 36.107960, 34.217041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.389175, 35.815578, 34.033325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354491, -0.309613, 0.882313,
		-0.787130, -0.608152, 0.102842,
		0.504739, -0.730952, -0.459291,
		32.540596, 35.596294, 33.895538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.079792, 35.546265, 34.604507>,  <32.187279, 36.107960, 34.217041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.079792, 35.546265, 34.604507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.425819, 35.478016, 34.415806>,  <32.633434, 35.437069, 34.302586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.425819, 35.478016, 34.415806>,  <32.079792, 35.546265, 34.604507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.425819, 35.478016, 34.415806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405279, -0.316529, 0.857647,
		-0.295661, -0.933111, -0.204666,
		0.865063, -0.170626, -0.471756,
		32.685337, 35.426830, 34.274281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.249710, 34.817818, 34.639683>,  <32.079792, 35.546265, 34.604507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.249710, 34.817818, 34.639683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.580166, 35.039574, 34.599396>,  <32.778439, 35.172626, 34.575222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.580166, 35.039574, 34.599396>,  <32.249710, 34.817818, 34.639683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.580166, 35.039574, 34.599396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382802, -0.421055, 0.822299,
		0.413464, -0.717891, -0.560072,
		0.826142, 0.554388, -0.100718,
		32.828007, 35.205891, 34.569180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.797321, 34.368439, 34.704681>,  <32.249710, 34.817818, 34.639683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.797321, 34.368439, 34.704681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.957127, 34.722786, 34.799023>,  <33.053009, 34.935394, 34.855625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.957127, 34.722786, 34.799023>,  <32.797321, 34.368439, 34.704681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.957127, 34.722786, 34.799023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529111, -0.432919, 0.729810,
		0.748620, -0.166777, -0.641680,
		0.399511, 0.885870, 0.235849,
		33.076981, 34.988548, 34.869778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.540512, 34.209270, 34.746330>,  <32.797321, 34.368439, 34.704681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.540512, 34.209270, 34.746330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450462, 34.544338, 34.945377>,  <33.396431, 34.745380, 35.064808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450462, 34.544338, 34.945377>,  <33.540512, 34.209270, 34.746330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.450462, 34.544338, 34.945377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566904, -0.302763, 0.766130,
		0.792425, 0.454580, -0.406719,
		-0.225128, 0.837670, 0.497620,
		33.382923, 34.795639, 35.094662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.229870, 34.396053, 35.186283>,  <33.540512, 34.209270, 34.746330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.229870, 34.396053, 35.186283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905903, 34.568588, 35.345272>,  <33.711525, 34.672112, 35.440666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905903, 34.568588, 35.345272>,  <34.229870, 34.396053, 35.186283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905903, 34.568588, 35.345272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295426, -0.285425, 0.911732,
		0.506715, 0.855849, 0.103741,
		-0.809915, 0.431341, 0.397470,
		33.662930, 34.697990, 35.464512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484646, 34.722408, 35.798328>,  <34.229870, 34.396053, 35.186283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484646, 34.722408, 35.798328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.093559, 34.752106, 35.876869>,  <33.858906, 34.769924, 35.923992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.093559, 34.752106, 35.876869>,  <34.484646, 34.722408, 35.798328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093559, 34.752106, 35.876869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182639, -0.160246, 0.970033,
		0.103483, 0.984281, 0.143116,
		-0.977719, 0.074243, 0.196351,
		33.800243, 34.774380, 35.935776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376026, 35.172657, 36.423668>,  <34.484646, 34.722408, 35.798328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.376026, 35.172657, 36.423668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.027714, 34.977310, 36.400890>,  <33.818726, 34.860100, 36.387222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.027714, 34.977310, 36.400890>,  <34.376026, 35.172657, 36.423668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.027714, 34.977310, 36.400890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049389, -0.202113, 0.978116,
		-0.489191, 0.848909, 0.200116,
		-0.870777, -0.488369, -0.056945,
		33.766479, 34.830799, 36.383808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.833977, 35.555687, 36.841866>,  <34.376026, 35.172657, 36.423668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.833977, 35.555687, 36.841866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.700630, 35.179733, 36.812237>,  <33.620621, 34.954163, 36.794460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.700630, 35.179733, 36.812237>,  <33.833977, 35.555687, 36.841866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.700630, 35.179733, 36.812237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169842, -0.017409, 0.985317,
		-0.927372, 0.341055, -0.153828,
		-0.333369, -0.939882, -0.074070,
		33.600620, 34.897770, 36.790016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187691, 35.441765, 37.291592>,  <33.833977, 35.555687, 36.841866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187691, 35.441765, 37.291592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.325825, 35.070026, 37.239357>,  <33.408707, 34.846981, 37.208015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.325825, 35.070026, 37.239357>,  <33.187691, 35.441765, 37.291592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.325825, 35.070026, 37.239357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287054, -0.237075, 0.928114,
		-0.893500, -0.283028, -0.348645,
		0.345337, -0.929349, -0.130583,
		33.429424, 34.791222, 37.200184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.749458, 35.077541, 37.585533>,  <33.187691, 35.441765, 37.291592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.749458, 35.077541, 37.585533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.068764, 34.837807, 37.609463>,  <33.260345, 34.693966, 37.623821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.068764, 34.837807, 37.609463>,  <32.749458, 35.077541, 37.585533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.068764, 34.837807, 37.609463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281688, -0.283689, 0.916609,
		-0.532387, -0.748542, -0.395284,
		0.798258, -0.599337, 0.059823,
		33.308243, 34.658005, 37.627411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.417229, 34.460812, 37.780071>,  <32.749458, 35.077541, 37.585533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.417229, 34.460812, 37.780071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.810860, 34.421982, 37.839615>,  <33.047039, 34.398682, 37.875343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.810860, 34.421982, 37.839615>,  <32.417229, 34.460812, 37.780071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.810860, 34.421982, 37.839615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175466, -0.397800, 0.900537,
		-0.028205, -0.912322, -0.408502,
		0.984082, -0.097078, 0.148861,
		33.106083, 34.392857, 37.884274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.342796, 33.915039, 38.230595>,  <32.417229, 34.460812, 37.780071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.342796, 33.915039, 38.230595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.731380, 34.007526, 38.251770>,  <32.964531, 34.063019, 38.264477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.731380, 34.007526, 38.251770>,  <32.342796, 33.915039, 38.230595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.731380, 34.007526, 38.251770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096409, -0.588796, 0.802512,
		0.216724, -0.774505, -0.594283,
		0.971461, 0.231218, 0.052937,
		33.022820, 34.076893, 38.267651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.719135, 33.299915, 38.229820>,  <32.342796, 33.915039, 38.230595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.719135, 33.299915, 38.229820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.907749, 33.593975, 38.424637>,  <33.020916, 33.770412, 38.541527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.907749, 33.593975, 38.424637>,  <32.719135, 33.299915, 38.229820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.907749, 33.593975, 38.424637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027875, -0.564445, 0.825000,
		0.881409, -0.375437, -0.286646,
		0.471531, 0.735152, 0.487041,
		33.049210, 33.814522, 38.570747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267017, 32.949963, 38.635990>,  <32.719135, 33.299915, 38.229820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267017, 32.949963, 38.635990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.203194, 33.306400, 38.805927>,  <33.164898, 33.520264, 38.907890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.203194, 33.306400, 38.805927>,  <33.267017, 32.949963, 38.635990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.203194, 33.306400, 38.805927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066568, -0.419667, 0.905234,
		0.984941, 0.172719, 0.007643,
		-0.159559, 0.891093, 0.424845,
		33.155327, 33.573727, 38.933380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.706852, 32.952545, 39.190971>,  <33.267017, 32.949963, 38.635990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.706852, 32.952545, 39.190971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.483002, 33.268547, 39.291134>,  <33.348690, 33.458149, 39.351231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.483002, 33.268547, 39.291134>,  <33.706852, 32.952545, 39.190971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.483002, 33.268547, 39.291134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002519, -0.300533, 0.953768,
		0.828741, 0.534384, 0.166196,
		-0.559626, 0.790008, 0.250410,
		33.315113, 33.505550, 39.366257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973785, 33.071060, 39.849480>,  <33.706852, 32.952545, 39.190971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.973785, 33.071060, 39.849480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.610981, 33.239132, 39.838295>,  <33.393299, 33.339973, 39.831585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.610981, 33.239132, 39.838295>,  <33.973785, 33.071060, 39.849480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.610981, 33.239132, 39.838295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145124, -0.249552, 0.957425,
		0.395308, 0.872455, 0.287324,
		-0.907012, 0.420175, -0.027964,
		33.338879, 33.365185, 39.829906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948338, 33.530235, 40.416660>,  <33.973785, 33.071060, 39.849480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948338, 33.530235, 40.416660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.572826, 33.421741, 40.331680>,  <33.347519, 33.356644, 40.280693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.572826, 33.421741, 40.331680>,  <33.948338, 33.530235, 40.416660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.572826, 33.421741, 40.331680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119036, -0.323315, 0.938775,
		-0.323315, 0.906587, 0.271233,
		-0.938775, -0.271233, -0.212449,
		33.291195, 33.340370, 40.267944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.732536, 33.661140, 41.055275>,  <33.948338, 33.530235, 40.416660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.732536, 33.661140, 41.055275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450924, 33.453789, 40.861111>,  <33.281956, 33.329376, 40.744614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450924, 33.453789, 40.861111>,  <33.732536, 33.661140, 41.055275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.450924, 33.453789, 40.861111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248496, -0.460483, 0.852177,
		-0.665274, 0.720582, 0.195380,
		-0.704032, -0.518380, -0.485409,
		33.239716, 33.298275, 40.715488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.155556, 33.717926, 41.343719>,  <33.732536, 33.661140, 41.055275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.155556, 33.717926, 41.343719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.087406, 33.374447, 41.150387>,  <33.046516, 33.168358, 41.034386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.087406, 33.374447, 41.150387>,  <33.155556, 33.717926, 41.343719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.087406, 33.374447, 41.150387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366079, -0.400244, 0.840114,
		-0.914855, 0.320071, -0.246161,
		-0.170372, -0.858696, -0.483336,
		33.036293, 33.116837, 41.005386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.476254, 33.530376, 41.498981>,  <33.155556, 33.717926, 41.343719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.476254, 33.530376, 41.498981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.620827, 33.175964, 41.382832>,  <32.707569, 32.963318, 41.313141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.620827, 33.175964, 41.382832>,  <32.476254, 33.530376, 41.498981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.620827, 33.175964, 41.382832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432996, -0.435308, 0.789317,
		-0.825761, -0.159554, -0.540982,
		0.361432, -0.886030, -0.290374,
		32.729256, 32.910156, 41.295719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.851288, 32.990894, 41.418324>,  <32.476254, 33.530376, 41.498981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.851288, 32.990894, 41.418324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193722, 32.792881, 41.477741>,  <32.399181, 32.674072, 41.513390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193722, 32.792881, 41.477741>,  <31.851288, 32.990894, 41.418324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.193722, 32.792881, 41.477741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422316, -0.504328, 0.753195,
		-0.297941, -0.707530, -0.640806,
		0.856084, -0.495031, 0.148541,
		32.450546, 32.644371, 41.522305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.615456, 32.322277, 41.473328>,  <31.851288, 32.990894, 41.418324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.615456, 32.322277, 41.473328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.990236, 32.319984, 41.613091>,  <32.215107, 32.318611, 41.696949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.990236, 32.319984, 41.613091>,  <31.615456, 32.322277, 41.473328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.990236, 32.319984, 41.613091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277428, -0.620170, 0.733773,
		0.212490, -0.784446, -0.582659,
		0.936953, -0.005727, 0.349407,
		32.271324, 32.318268, 41.717911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.746338, 31.620331, 41.565781>,  <31.615456, 32.322277, 41.473328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.746338, 31.620331, 41.565781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.010056, 31.807598, 41.801117>,  <32.168285, 31.919958, 41.942318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.010056, 31.807598, 41.801117>,  <31.746338, 31.620331, 41.565781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.010056, 31.807598, 41.801117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016381, -0.773364, 0.633750,
		0.751705, -0.427467, -0.502207,
		0.659296, 0.468167, 0.588344,
		32.207844, 31.948048, 41.977619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.267498, 31.072025, 41.775490>,  <31.746338, 31.620331, 41.565781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.267498, 31.072025, 41.775490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.295662, 31.378298, 42.031231>,  <32.312561, 31.562061, 42.184677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.295662, 31.378298, 42.031231>,  <32.267498, 31.072025, 41.775490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.295662, 31.378298, 42.031231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061431, -0.636398, 0.768911,
		0.995625, -0.093418, 0.002226,
		0.070413, 0.765683, 0.639352,
		32.316788, 31.608004, 42.223038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.567490, 30.835732, 42.323635>,  <32.267498, 31.072025, 41.775490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.567490, 30.835732, 42.323635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458168, 31.168682, 42.516491>,  <32.392574, 31.368452, 42.632206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458168, 31.168682, 42.516491>,  <32.567490, 30.835732, 42.323635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.458168, 31.168682, 42.516491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074490, -0.518029, 0.852113,
		0.959040, 0.196969, 0.203582,
		-0.273302, 0.832375, 0.482139,
		32.376179, 31.418394, 42.661133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.305523, 30.967539, 42.510727>,  <32.567490, 30.835732, 42.323635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.305523, 30.967539, 42.510727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.633247, 30.747206, 42.574364>,  <33.829884, 30.615005, 42.612545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.633247, 30.747206, 42.574364>,  <33.305523, 30.967539, 42.510727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.633247, 30.747206, 42.574364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404937, 0.359486, -0.840711,
		0.405900, 0.753228, 0.517584,
		0.819311, -0.550834, 0.159094,
		33.879040, 30.581955, 42.622093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789078, 31.432779, 42.378624>,  <33.305523, 30.967539, 42.510727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789078, 31.432779, 42.378624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.959793, 31.072083, 42.351151>,  <34.062222, 30.855665, 42.334667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.959793, 31.072083, 42.351151>,  <33.789078, 31.432779, 42.378624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.959793, 31.072083, 42.351151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457655, 0.280856, -0.843606,
		0.780004, 0.328608, 0.532551,
		0.426786, -0.901741, -0.068680,
		34.087830, 30.801559, 42.330547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.521748, 31.534458, 42.348980>,  <33.789078, 31.432779, 42.378624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.521748, 31.534458, 42.348980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.403194, 31.200338, 42.163754>,  <34.332062, 30.999866, 42.052616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.403194, 31.200338, 42.163754>,  <34.521748, 31.534458, 42.348980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.403194, 31.200338, 42.163754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545092, 0.250186, -0.800176,
		0.784240, -0.489573, 0.381165,
		-0.296383, -0.835300, -0.463068,
		34.314281, 30.949749, 42.024834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.223381, 31.380730, 41.992764>,  <34.521748, 31.534458, 42.348980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.223381, 31.380730, 41.992764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.958408, 31.139318, 41.815254>,  <34.799423, 30.994473, 41.708748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.958408, 31.139318, 41.815254>,  <35.223381, 31.380730, 41.992764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.958408, 31.139318, 41.815254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307870, 0.320726, -0.895740,
		0.682934, -0.729993, -0.026652,
		-0.662432, -0.603527, -0.443777,
		34.759678, 30.958260, 41.682121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604729, 30.963701, 41.353584>,  <35.223381, 31.380730, 41.992764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.604729, 30.963701, 41.353584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.209347, 30.983517, 41.296318>,  <34.972118, 30.995407, 41.261959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.209347, 30.983517, 41.296318>,  <35.604729, 30.963701, 41.353584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.209347, 30.983517, 41.296318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151046, 0.394947, -0.906202,
		0.011649, -0.917367, -0.397871,
		-0.988458, 0.049540, -0.143165,
		34.912807, 30.998379, 41.253368>
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
