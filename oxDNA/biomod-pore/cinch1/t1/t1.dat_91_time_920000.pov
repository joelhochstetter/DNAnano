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
	right 1.6 * <0.581683, 0, 0.813415>
	location <-54.4937, 30, 90.4225>
	look_at <30, 30, 30>
	direction <84.4937, 0, -60.4225>
	angle 67.0682
}


# declare cpy_camera_pos = <-54.4937, 30, 90.4225>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 48
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <0.231732, -1, 1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <-0.231732, 1, -1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<43.276508, 32.625511, 22.872013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.986145, 32.353489, 22.830864>,  <42.811928, 32.190277, 22.806175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.986145, 32.353489, 22.830864>,  <43.276508, 32.625511, 22.872013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.986145, 32.353489, 22.830864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577298, 0.683740, -0.446348,
		0.373879, -0.264620, -0.888927,
		-0.725908, -0.680056, -0.102871,
		42.768372, 32.149471, 22.800003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.777584, 32.849209, 22.311460>,  <43.276508, 32.625511, 22.872013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.777584, 32.849209, 22.311460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.570133, 32.533909, 22.443943>,  <42.445663, 32.344730, 22.523432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.570133, 32.533909, 22.443943>,  <42.777584, 32.849209, 22.311460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.570133, 32.533909, 22.443943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838346, 0.392729, -0.378073,
		0.167940, -0.473744, -0.864501,
		-0.518625, -0.788245, 0.331207,
		42.414547, 32.297436, 22.543304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.367531, 32.540421, 21.695122>,  <42.777584, 32.849209, 22.311460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.367531, 32.540421, 21.695122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.197598, 32.436306, 22.041939>,  <42.095638, 32.373837, 22.250029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.197598, 32.436306, 22.041939>,  <42.367531, 32.540421, 21.695122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.197598, 32.436306, 22.041939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817410, 0.521903, -0.243840,
		-0.389045, -0.812323, -0.434484,
		-0.424835, -0.260287, 0.867044,
		42.070148, 32.358219, 22.302052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.580284, 32.496281, 21.536613>,  <42.367531, 32.540421, 21.695122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.580284, 32.496281, 21.536613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.606617, 32.483311, 21.935535>,  <41.622417, 32.475529, 22.174889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.606617, 32.483311, 21.935535>,  <41.580284, 32.496281, 21.536613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.606617, 32.483311, 21.935535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899780, 0.430128, 0.073384,
		-0.431348, -0.902185, -0.000859,
		0.065836, -0.032427, 0.997303,
		41.626369, 32.473583, 22.234726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811802, 32.375351, 21.431465>,  <41.580284, 32.496281, 21.536613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.811802, 32.375351, 21.431465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.480343, 32.189064, 21.555687>,  <40.281467, 32.077293, 21.630220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.480343, 32.189064, 21.555687>,  <40.811802, 32.375351, 21.431465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.480343, 32.189064, 21.555687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300622, 0.838256, 0.454922,
		-0.472188, 0.283613, -0.834627,
		-0.828652, -0.465716, 0.310554,
		40.231747, 32.049351, 21.648853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.303356, 32.411369, 20.756317>,  <40.811802, 32.375351, 21.431465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.303356, 32.411369, 20.756317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.972691, 32.636162, 20.767727>,  <39.774292, 32.771038, 20.774572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.972691, 32.636162, 20.767727>,  <40.303356, 32.411369, 20.756317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.972691, 32.636162, 20.767727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300895, 0.398637, 0.866343,
		0.475496, 0.724754, -0.498634,
		-0.826660, 0.561979, 0.028525,
		39.724693, 32.804756, 20.776285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.510574, 33.118301, 20.874388>,  <40.303356, 32.411369, 20.756317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.510574, 33.118301, 20.874388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.133499, 33.115864, 21.007832>,  <39.907253, 33.114403, 21.087898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.133499, 33.115864, 21.007832>,  <40.510574, 33.118301, 20.874388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.133499, 33.115864, 21.007832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271757, 0.566107, 0.778248,
		-0.193598, 0.824309, -0.532010,
		-0.942692, -0.006090, 0.333609,
		39.850693, 33.114037, 21.107914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.421108, 33.742588, 21.138706>,  <40.510574, 33.118301, 20.874388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.421108, 33.742588, 21.138706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.138199, 33.507839, 21.296360>,  <39.968452, 33.366989, 21.390953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.138199, 33.507839, 21.296360>,  <40.421108, 33.742588, 21.138706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.138199, 33.507839, 21.296360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290456, 0.267052, 0.918868,
		-0.644515, 0.764370, -0.018418,
		-0.707274, -0.586875, 0.394134,
		39.926018, 33.331776, 21.414600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.047756, 34.201614, 21.631689>,  <40.421108, 33.742588, 21.138706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.047756, 34.201614, 21.631689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.009655, 33.823257, 21.755764>,  <39.986794, 33.596245, 21.830210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.009655, 33.823257, 21.755764>,  <40.047756, 34.201614, 21.631689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.009655, 33.823257, 21.755764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192883, 0.288161, 0.937955,
		-0.976588, 0.149173, 0.154998,
		-0.095253, -0.945892, 0.310188,
		39.981079, 33.539490, 21.848820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646053, 34.293213, 22.122810>,  <40.047756, 34.201614, 21.631689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646053, 34.293213, 22.122810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.777187, 33.922878, 22.198017>,  <39.855869, 33.700676, 22.243141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.777187, 33.922878, 22.198017>,  <39.646053, 34.293213, 22.122810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.777187, 33.922878, 22.198017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016933, 0.193225, 0.981008,
		-0.944582, -0.324795, 0.047670,
		0.327837, -0.925836, 0.188016,
		39.875538, 33.645126, 22.254421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118031, 34.038876, 22.498413>,  <39.646053, 34.293213, 22.122810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.118031, 34.038876, 22.498413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.450813, 33.840908, 22.598740>,  <39.650482, 33.722126, 22.658936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.450813, 33.840908, 22.598740>,  <39.118031, 34.038876, 22.498413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.450813, 33.840908, 22.598740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179478, 0.187695, 0.965690,
		-0.525016, -0.848425, 0.067327,
		0.831953, -0.494920, 0.250817,
		39.700397, 33.692432, 22.673985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988613, 33.894817, 23.133739>,  <39.118031, 34.038876, 22.498413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988613, 33.894817, 23.133739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.382172, 33.826839, 23.111607>,  <39.618309, 33.786053, 23.098326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.382172, 33.826839, 23.111607>,  <38.988613, 33.894817, 23.133739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.382172, 33.826839, 23.111607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101635, 0.277342, 0.955380,
		-0.147019, -0.945621, 0.290149,
		0.983898, -0.169948, -0.055334,
		39.677341, 33.775856, 23.095007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.127468, 33.687038, 23.752743>,  <38.988613, 33.894817, 23.133739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.127468, 33.687038, 23.752743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.470352, 33.816288, 23.592350>,  <39.676083, 33.893837, 23.496115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.470352, 33.816288, 23.592350>,  <39.127468, 33.687038, 23.752743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.470352, 33.816288, 23.592350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269710, 0.381613, 0.884097,
		0.438696, -0.866003, 0.239971,
		0.857207, 0.323127, -0.400982,
		39.727516, 33.913227, 23.472055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.520344, 33.689220, 24.268179>,  <39.127468, 33.687038, 23.752743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.520344, 33.689220, 24.268179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.721241, 33.930443, 24.020283>,  <39.841778, 34.075176, 23.871546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.721241, 33.930443, 24.020283>,  <39.520344, 33.689220, 24.268179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.721241, 33.930443, 24.020283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205358, 0.613006, 0.762923,
		0.839988, -0.510442, 0.184036,
		0.502243, 0.603053, -0.619741,
		39.871914, 34.111359, 23.834360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.076595, 33.777615, 24.663593>,  <39.520344, 33.689220, 24.268179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.076595, 33.777615, 24.663593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.067612, 34.077179, 24.398678>,  <40.062222, 34.256916, 24.239729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.067612, 34.077179, 24.398678>,  <40.076595, 33.777615, 24.663593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.067612, 34.077179, 24.398678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217048, 0.650310, 0.728003,
		0.975902, -0.127399, -0.177155,
		-0.022459, 0.748911, -0.662290,
		40.060875, 34.301853, 24.199991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725075, 34.094410, 24.816198>,  <40.076595, 33.777615, 24.663593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.725075, 34.094410, 24.816198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.489838, 34.357552, 24.627998>,  <40.348694, 34.515438, 24.515078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.489838, 34.357552, 24.627998>,  <40.725075, 34.094410, 24.816198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.489838, 34.357552, 24.627998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279427, 0.711171, 0.645102,
		0.758991, 0.247910, -0.602058,
		-0.588094, 0.657858, -0.470499,
		40.313408, 34.554909, 24.486849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.159977, 34.672859, 24.614489>,  <40.725075, 34.094410, 24.816198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.159977, 34.672859, 24.614489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.784389, 34.805336, 24.651684>,  <40.559036, 34.884823, 24.674002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.784389, 34.805336, 24.651684>,  <41.159977, 34.672859, 24.614489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.784389, 34.805336, 24.651684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294671, 0.634914, 0.714180,
		0.177488, 0.697996, -0.693758,
		-0.938971, 0.331188, 0.092989,
		40.502697, 34.904694, 24.679581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.265156, 35.344872, 24.700930>,  <41.159977, 34.672859, 24.614489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.265156, 35.344872, 24.700930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.885262, 35.280060, 24.808067>,  <40.657326, 35.241173, 24.872351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.885262, 35.280060, 24.808067>,  <41.265156, 35.344872, 24.700930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.885262, 35.280060, 24.808067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088402, 0.681973, 0.726015,
		-0.300299, 0.713203, -0.633373,
		-0.949740, -0.162030, 0.267844,
		40.600338, 35.231449, 24.888420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.004776, 35.936424, 24.652489>,  <41.265156, 35.344872, 24.700930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.004776, 35.936424, 24.652489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.719597, 35.761303, 24.871593>,  <40.548489, 35.656231, 25.003056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.719597, 35.761303, 24.871593>,  <41.004776, 35.936424, 24.652489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.719597, 35.761303, 24.871593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034043, 0.758622, 0.650641,
		-0.700395, 0.482518, -0.525950,
		-0.712943, -0.437801, 0.547761,
		40.505714, 35.629963, 25.035921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.508644, 36.418182, 24.782326>,  <41.004776, 35.936424, 24.652489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.508644, 36.418182, 24.782326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.473881, 36.149670, 25.076763>,  <40.453022, 35.988564, 25.253426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.473881, 36.149670, 25.076763>,  <40.508644, 36.418182, 24.782326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.473881, 36.149670, 25.076763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003587, 0.738673, 0.674055,
		-0.996210, 0.061219, -0.061787,
		-0.086905, -0.671279, 0.736093,
		40.447807, 35.948284, 25.297590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.063507, 36.659473, 25.150377>,  <40.508644, 36.418182, 24.782326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.063507, 36.659473, 25.150377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.209831, 36.388889, 25.406059>,  <40.297626, 36.226540, 25.559467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.209831, 36.388889, 25.406059>,  <40.063507, 36.659473, 25.150377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.209831, 36.388889, 25.406059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040001, 0.674745, 0.736966,
		-0.929829, -0.295160, 0.219770,
		0.365812, -0.676461, 0.639204,
		40.319576, 36.185951, 25.597820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.644459, 36.647369, 25.733185>,  <40.063507, 36.659473, 25.150377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.644459, 36.647369, 25.733185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.990623, 36.505711, 25.874969>,  <40.198322, 36.420715, 25.960039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.990623, 36.505711, 25.874969>,  <39.644459, 36.647369, 25.733185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.990623, 36.505711, 25.874969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031969, 0.666950, 0.744417,
		-0.500043, -0.655558, 0.565864,
		0.865411, -0.354150, 0.354461,
		40.250248, 36.399467, 25.981308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469997, 36.545322, 26.412457>,  <39.644459, 36.647369, 25.733185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.469997, 36.545322, 26.412457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.867813, 36.572258, 26.380566>,  <40.106503, 36.588421, 26.361431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.867813, 36.572258, 26.380566>,  <39.469997, 36.545322, 26.412457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.867813, 36.572258, 26.380566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031860, 0.531567, 0.846417,
		0.099380, -0.844335, 0.526518,
		0.994539, 0.067342, -0.079728,
		40.166176, 36.592461, 26.356647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786789, 36.281197, 27.103786>,  <39.469997, 36.545322, 26.412457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.786789, 36.281197, 27.103786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.054283, 36.510609, 26.914532>,  <40.214779, 36.648258, 26.800980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.054283, 36.510609, 26.914532>,  <39.786789, 36.281197, 27.103786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.054283, 36.510609, 26.914532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190569, 0.482882, 0.854698,
		0.718665, -0.661730, 0.213621,
		0.668733, 0.573532, -0.473136,
		40.254902, 36.682667, 26.772591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.276722, 36.335934, 27.575937>,  <39.786789, 36.281197, 27.103786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.276722, 36.335934, 27.575937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.354763, 36.624424, 27.310074>,  <40.401588, 36.797520, 27.150557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.354763, 36.624424, 27.310074>,  <40.276722, 36.335934, 27.575937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.354763, 36.624424, 27.310074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269947, 0.612017, 0.743346,
		0.942903, -0.324448, -0.075289,
		0.195099, 0.721227, -0.664656,
		40.413292, 36.840794, 27.110678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.891888, 36.741386, 27.854603>,  <40.276722, 36.335934, 27.575937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.891888, 36.741386, 27.854603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.697117, 36.957958, 27.580448>,  <40.580254, 37.087902, 27.415955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.697117, 36.957958, 27.580448>,  <40.891888, 36.741386, 27.854603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.697117, 36.957958, 27.580448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120106, 0.818748, 0.561450,
		0.865147, 0.191065, -0.463698,
		-0.486925, 0.541429, -0.685389,
		40.551041, 37.120388, 27.374832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.345623, 37.326050, 27.422544>,  <40.891888, 36.741386, 27.854603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.345623, 37.326050, 27.422544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.955807, 37.392944, 27.482281>,  <40.721916, 37.433083, 27.518124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.955807, 37.392944, 27.482281>,  <41.345623, 37.326050, 27.422544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.955807, 37.392944, 27.482281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219561, 0.846812, 0.484461,
		-0.045444, 0.504916, -0.861971,
		-0.974540, 0.167239, 0.149343,
		40.663445, 37.443115, 27.527084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.283161, 38.110146, 27.291630>,  <41.345623, 37.326050, 27.422544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.283161, 38.110146, 27.291630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.015724, 37.956947, 27.546597>,  <40.855263, 37.865028, 27.699575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.015724, 37.956947, 27.546597>,  <41.283161, 38.110146, 27.291630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.015724, 37.956947, 27.546597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178904, 0.749146, 0.637788,
		-0.721790, 0.540455, -0.432352,
		-0.668591, -0.383000, 0.637415,
		40.815147, 37.842049, 27.737822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.997040, 38.790417, 27.671297>,  <41.283161, 38.110146, 27.291630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.997040, 38.790417, 27.671297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.883636, 38.480415, 27.897213>,  <40.815594, 38.294415, 28.032763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.883636, 38.480415, 27.897213>,  <40.997040, 38.790417, 27.671297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.883636, 38.480415, 27.897213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161617, 0.619145, 0.768465,
		-0.945253, 0.126585, -0.300786,
		-0.283507, -0.775006, 0.564791,
		40.798584, 38.247913, 28.066650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.225769, 38.789169, 27.899616>,  <40.997040, 38.790417, 27.671297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.225769, 38.789169, 27.899616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.478886, 38.619034, 28.158432>,  <40.630756, 38.516953, 28.313723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.478886, 38.619034, 28.158432>,  <40.225769, 38.789169, 27.899616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.478886, 38.619034, 28.158432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338321, 0.599767, 0.725133,
		-0.696501, -0.677766, 0.235627,
		0.632792, -0.425338, 0.647041,
		40.668724, 38.491432, 28.352545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004951, 39.071682, 28.406853>,  <40.225769, 38.789169, 27.899616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.004951, 39.071682, 28.406853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.349182, 38.932121, 28.555275>,  <40.555721, 38.848385, 28.644329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.349182, 38.932121, 28.555275>,  <40.004951, 39.071682, 28.406853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.349182, 38.932121, 28.555275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151954, 0.519470, 0.840869,
		-0.486130, -0.780013, 0.394026,
		0.860574, -0.348899, 0.371056,
		40.607353, 38.827454, 28.666592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860367, 39.018898, 29.160378>,  <40.004951, 39.071682, 28.406853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.860367, 39.018898, 29.160378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.251457, 39.016819, 29.076447>,  <40.486111, 39.015572, 29.026089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.251457, 39.016819, 29.076447>,  <39.860367, 39.018898, 29.160378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.251457, 39.016819, 29.076447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152849, 0.702770, 0.694803,
		0.143846, -0.711398, 0.687911,
		0.977725, -0.005202, -0.209827,
		40.544773, 39.015259, 29.013498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.777645, 38.380295, 29.500193>,  <39.860367, 39.018898, 29.160378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.777645, 38.380295, 29.500193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.446831, 38.591427, 29.577560>,  <39.248341, 38.718105, 29.623981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.446831, 38.591427, 29.577560>,  <39.777645, 38.380295, 29.500193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.446831, 38.591427, 29.577560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349059, -0.212479, -0.912694,
		-0.440648, -0.822344, 0.359970,
		-0.827035, 0.527828, 0.193418,
		39.198719, 38.749775, 29.635586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185085, 37.989040, 29.407921>,  <39.777645, 38.380295, 29.500193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185085, 37.989040, 29.407921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.141026, 38.377464, 29.323158>,  <39.114590, 38.610519, 29.272301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.141026, 38.377464, 29.323158>,  <39.185085, 37.989040, 29.407921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.141026, 38.377464, 29.323158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291960, -0.235409, -0.927007,
		-0.950066, -0.040244, 0.309442,
		-0.110152, 0.971063, -0.211904,
		39.107979, 38.668785, 29.259586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435410, 38.204758, 29.237757>,  <39.185085, 37.989040, 29.407921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.435410, 38.204758, 29.237757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.718853, 38.420506, 29.055790>,  <38.888920, 38.549953, 28.946609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.718853, 38.420506, 29.055790>,  <38.435410, 38.204758, 29.237757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.718853, 38.420506, 29.055790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401379, -0.222121, -0.888570,
		-0.580318, 0.812243, 0.059096,
		0.708609, 0.539373, -0.454918,
		38.931435, 38.582317, 28.919315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036446, 38.582813, 28.721792>,  <38.435410, 38.204758, 29.237757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036446, 38.582813, 28.721792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.416370, 38.487293, 28.640957>,  <38.644325, 38.429981, 28.592455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.416370, 38.487293, 28.640957>,  <38.036446, 38.582813, 28.721792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.416370, 38.487293, 28.640957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302740, -0.538891, -0.786095,
		0.078813, 0.807820, -0.584136,
		0.949809, -0.238796, -0.202088,
		38.701313, 38.415653, 28.580330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233147, 38.774830, 28.011312>,  <38.036446, 38.582813, 28.721792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.233147, 38.774830, 28.011312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.470600, 38.476273, 28.131641>,  <38.613071, 38.297138, 28.203838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.470600, 38.476273, 28.131641>,  <38.233147, 38.774830, 28.011312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470600, 38.476273, 28.131641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238364, -0.520127, -0.820153,
		0.768623, 0.415166, -0.486679,
		0.593634, -0.746395, 0.300821,
		38.648689, 38.252354, 28.221888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.741043, 38.667202, 27.511574>,  <38.233147, 38.774830, 28.011312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.741043, 38.667202, 27.511574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.687740, 38.319263, 27.701565>,  <38.655758, 38.110500, 27.815559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.687740, 38.319263, 27.701565>,  <38.741043, 38.667202, 27.511574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687740, 38.319263, 27.701565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250977, -0.434011, -0.865242,
		0.958777, -0.234507, -0.160478,
		-0.133257, -0.869851, 0.474976,
		38.647762, 38.058308, 27.844057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160912, 38.121078, 27.202566>,  <38.741043, 38.667202, 27.511574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.160912, 38.121078, 27.202566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.896202, 37.909184, 27.414768>,  <38.737377, 37.782047, 27.542089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.896202, 37.909184, 27.414768>,  <39.160912, 38.121078, 27.202566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.896202, 37.909184, 27.414768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139362, -0.608364, -0.781327,
		0.736634, -0.590996, 0.328777,
		-0.661777, -0.529733, 0.530504,
		38.697670, 37.750263, 27.573919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439415, 37.405739, 27.151896>,  <39.160912, 38.121078, 27.202566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.439415, 37.405739, 27.151896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.057049, 37.404449, 27.269348>,  <38.827629, 37.403675, 27.339819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.057049, 37.404449, 27.269348>,  <39.439415, 37.405739, 27.151896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.057049, 37.404449, 27.269348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188312, -0.760523, -0.621404,
		0.225318, -0.649303, 0.726387,
		-0.955914, -0.003226, 0.293631,
		38.770275, 37.403481, 27.357437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262753, 36.727306, 27.303921>,  <39.439415, 37.405739, 27.151896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.262753, 36.727306, 27.303921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.921181, 36.915146, 27.214230>,  <38.716236, 37.027847, 27.160416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.921181, 36.915146, 27.214230>,  <39.262753, 36.727306, 27.303921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.921181, 36.915146, 27.214230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268235, -0.766444, -0.583621,
		-0.445923, -0.438228, 0.780454,
		-0.853933, 0.469595, -0.224227,
		38.665001, 37.056023, 27.146961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770050, 36.117626, 27.139372>,  <39.262753, 36.727306, 27.303921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770050, 36.117626, 27.139372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600567, 36.451118, 26.997742>,  <38.498878, 36.651215, 26.912764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600567, 36.451118, 26.997742>,  <38.770050, 36.117626, 27.139372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600567, 36.451118, 26.997742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294747, -0.496530, -0.816445,
		-0.856502, -0.241571, 0.456122,
		-0.423707, 0.833728, -0.354077,
		38.473454, 36.701237, 26.891520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141518, 35.929821, 26.843397>,  <38.770050, 36.117626, 27.139372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.141518, 35.929821, 26.843397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.209721, 36.287037, 26.676826>,  <38.250645, 36.501366, 26.576883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.209721, 36.287037, 26.676826>,  <38.141518, 35.929821, 26.843397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.209721, 36.287037, 26.676826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299782, -0.355566, -0.885270,
		-0.938646, 0.275785, 0.207089,
		0.170510, 0.893037, -0.416426,
		38.260872, 36.554947, 26.551899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558212, 36.177753, 26.592464>,  <38.141518, 35.929821, 26.843397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.558212, 36.177753, 26.592464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.815022, 36.384769, 26.366203>,  <37.969105, 36.508980, 26.230448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.815022, 36.384769, 26.366203>,  <37.558212, 36.177753, 26.592464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.815022, 36.384769, 26.366203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472236, -0.314280, -0.823542,
		-0.603991, 0.795850, 0.042629,
		0.642019, 0.517543, -0.565651,
		38.007626, 36.540031, 26.196508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.129292, 36.452629, 26.097326>,  <37.558212, 36.177753, 26.592464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.129292, 36.452629, 26.097326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.500179, 36.462082, 25.947819>,  <37.722713, 36.467754, 25.858114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.500179, 36.462082, 25.947819>,  <37.129292, 36.452629, 26.097326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.500179, 36.462082, 25.947819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353753, -0.272423, -0.894787,
		-0.122966, 0.961887, -0.244237,
		0.927221, 0.023628, -0.373769,
		37.778347, 36.469170, 25.835688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009918, 36.566971, 25.327278>,  <37.129292, 36.452629, 26.097326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009918, 36.566971, 25.327278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.398975, 36.474949, 25.340168>,  <37.632412, 36.419735, 25.347902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.398975, 36.474949, 25.340168>,  <37.009918, 36.566971, 25.327278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398975, 36.474949, 25.340168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038305, -0.295664, -0.954524,
		0.229117, 0.927178, -0.296388,
		0.972645, -0.230051, 0.032226,
		37.690769, 36.405933, 25.349836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331631, 36.828320, 24.677450>,  <37.009918, 36.566971, 25.327278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331631, 36.828320, 24.677450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.604031, 36.550549, 24.770412>,  <37.767471, 36.383884, 24.826189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.604031, 36.550549, 24.770412>,  <37.331631, 36.828320, 24.677450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.604031, 36.550549, 24.770412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014031, -0.304934, -0.952270,
		0.732153, 0.651753, -0.197915,
		0.680996, -0.694430, 0.232403,
		37.808331, 36.342220, 24.840134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834808, 36.900269, 24.162283>,  <37.331631, 36.828320, 24.677450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.834808, 36.900269, 24.162283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.866257, 36.532974, 24.317547>,  <37.885124, 36.312599, 24.410706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.866257, 36.532974, 24.317547>,  <37.834808, 36.900269, 24.162283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.866257, 36.532974, 24.317547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098788, -0.380271, -0.919584,
		0.991998, 0.110645, 0.060813,
		0.078622, -0.918233, 0.388158,
		37.889843, 36.257504, 24.433994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.462238, 36.576077, 23.889490>,  <37.834808, 36.900269, 24.162283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.462238, 36.576077, 23.889490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.227234, 36.280415, 24.021233>,  <38.086231, 36.103016, 24.100279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.227234, 36.280415, 24.021233>,  <38.462238, 36.576077, 23.889490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.227234, 36.280415, 24.021233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052278, -0.440828, -0.896068,
		0.807525, -0.509232, 0.297633,
		-0.587512, -0.739157, 0.329358,
		38.050980, 36.058666, 24.120039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868404, 35.908600, 23.782181>,  <38.462238, 36.576077, 23.889490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.868404, 35.908600, 23.782181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.482296, 35.808292, 23.811504>,  <38.250633, 35.748108, 23.829100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.482296, 35.808292, 23.811504>,  <38.868404, 35.908600, 23.782181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.482296, 35.808292, 23.811504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058226, -0.480022, -0.875322,
		0.254692, -0.840651, 0.477951,
		-0.965267, -0.250767, 0.073310,
		38.192715, 35.733063, 23.833498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840378, 35.202255, 23.497484>,  <38.868404, 35.908600, 23.782181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.840378, 35.202255, 23.497484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.457142, 35.316681, 23.503674>,  <38.227200, 35.385338, 23.507387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.457142, 35.316681, 23.503674>,  <38.840378, 35.202255, 23.497484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457142, 35.316681, 23.503674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120106, -0.352042, -0.928246,
		-0.260088, -0.891199, 0.371644,
		-0.958086, 0.286063, 0.015476,
		38.169716, 35.402500, 23.508316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491364, 34.540089, 23.302090>,  <38.840378, 35.202255, 23.497484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491364, 34.540089, 23.302090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.234669, 34.837170, 23.225594>,  <38.080654, 35.015419, 23.179695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.234669, 34.837170, 23.225594>,  <38.491364, 34.540089, 23.302090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.234669, 34.837170, 23.225594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140688, -0.359130, -0.922623,
		-0.753913, -0.565173, 0.334955,
		-0.641733, 0.742702, -0.191240,
		38.042149, 35.059978, 23.168222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851250, 34.223640, 23.115871>,  <38.491364, 34.540089, 23.302090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851250, 34.223640, 23.115871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.873714, 34.590916, 22.959015>,  <37.887192, 34.811283, 22.864901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.873714, 34.590916, 22.959015>,  <37.851250, 34.223640, 23.115871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.873714, 34.590916, 22.959015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431837, -0.331784, -0.838711,
		-0.900202, 0.216440, 0.377877,
		0.056157, 0.918190, -0.392139,
		37.890560, 34.866371, 22.841373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334633, 34.168228, 22.706839>,  <37.851250, 34.223640, 23.115871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.334633, 34.168228, 22.706839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.513401, 34.503777, 22.582542>,  <37.620663, 34.705105, 22.507965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.513401, 34.503777, 22.582542>,  <37.334633, 34.168228, 22.706839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513401, 34.503777, 22.582542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255941, -0.212936, -0.942949,
		-0.857180, 0.500952, 0.119537,
		0.446919, 0.838871, -0.310739,
		37.647476, 34.755440, 22.489321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949348, 34.536186, 22.190319>,  <37.334633, 34.168228, 22.706839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949348, 34.536186, 22.190319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.319199, 34.660686, 22.102516>,  <37.541111, 34.735386, 22.049833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.319199, 34.660686, 22.102516>,  <36.949348, 34.536186, 22.190319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.319199, 34.660686, 22.102516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188748, -0.126126, -0.973892,
		-0.330811, 0.941921, -0.057871,
		0.924629, 0.311251, -0.219510,
		37.596588, 34.754063, 22.036663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.784153, 34.793571, 21.638874>,  <36.949348, 34.536186, 22.190319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.784153, 34.793571, 21.638874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.183025, 34.766918, 21.625088>,  <37.422348, 34.750927, 21.616816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.183025, 34.766918, 21.625088>,  <36.784153, 34.793571, 21.638874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183025, 34.766918, 21.625088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051286, -0.270261, -0.961420,
		0.054744, 0.960479, -0.272917,
		0.997183, -0.066629, -0.034464,
		37.482182, 34.746929, 21.614748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134007, 35.223961, 21.087934>,  <36.784153, 34.793571, 21.638874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.134007, 35.223961, 21.087934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.382683, 34.918949, 21.159542>,  <37.531887, 34.735943, 21.202507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.382683, 34.918949, 21.159542>,  <37.134007, 35.223961, 21.087934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.382683, 34.918949, 21.159542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085082, -0.292945, -0.952336,
		0.778629, 0.576826, -0.246999,
		0.621690, -0.762532, 0.179018,
		37.569191, 34.690189, 21.213247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461742, 35.118896, 20.424820>,  <37.134007, 35.223961, 21.087934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461742, 35.118896, 20.424820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.449913, 34.791500, 20.654324>,  <37.442818, 34.595062, 20.792027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.449913, 34.791500, 20.654324>,  <37.461742, 35.118896, 20.424820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.449913, 34.791500, 20.654324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215484, -0.555293, -0.803253,
		0.976060, -0.147388, -0.159952,
		-0.029570, -0.818490, 0.573759,
		37.441044, 34.545952, 20.826450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953571, 35.054543, 19.947418>,  <37.461742, 35.118896, 20.424820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953571, 35.054543, 19.947418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.850758, 35.422836, 20.064842>,  <36.789070, 35.643814, 20.135298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.850758, 35.422836, 20.064842>,  <36.953571, 35.054543, 19.947418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850758, 35.422836, 20.064842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057247, 0.317741, -0.946448,
		-0.964705, -0.226464, -0.134380,
		-0.257034, 0.920736, 0.293562,
		36.773647, 35.699059, 20.152910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304092, 35.256866, 19.636526>,  <36.953571, 35.054543, 19.947418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304092, 35.256866, 19.636526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.531574, 35.569736, 19.738335>,  <36.668064, 35.757458, 19.799419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.531574, 35.569736, 19.738335>,  <36.304092, 35.256866, 19.636526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531574, 35.569736, 19.738335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011992, 0.301518, -0.953385,
		-0.822454, 0.545248, 0.162096,
		0.568706, 0.782171, 0.254523,
		36.702187, 35.804386, 19.814692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.953411, 35.962708, 19.517054>,  <36.304092, 35.256866, 19.636526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.953411, 35.962708, 19.517054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.349762, 36.013855, 19.534073>,  <36.587574, 36.044544, 19.544285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.349762, 36.013855, 19.534073>,  <35.953411, 35.962708, 19.517054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.349762, 36.013855, 19.534073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013545, 0.408635, -0.912597,
		-0.134079, 0.903696, 0.406639,
		0.990878, 0.127868, 0.042549,
		36.647026, 36.052216, 19.546837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620708, 35.698704, 20.143171>,  <35.953411, 35.962708, 19.517054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620708, 35.698704, 20.143171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.832809, 36.028164, 20.062733>,  <35.960072, 36.225838, 20.014469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.832809, 36.028164, 20.062733>,  <35.620708, 35.698704, 20.143171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.832809, 36.028164, 20.062733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151814, 0.325589, 0.933244,
		0.834138, -0.464326, 0.297685,
		0.530252, 0.823646, -0.201095,
		35.991886, 36.275257, 20.002403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901844, 35.802597, 20.068340>,  <35.620708, 35.698704, 20.143171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901844, 35.802597, 20.068340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590221, 35.741074, 19.825222>,  <34.403248, 35.704159, 19.679352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590221, 35.741074, 19.825222>,  <34.901844, 35.802597, 20.068340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590221, 35.741074, 19.825222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396163, -0.630611, 0.667372,
		-0.485929, 0.760706, 0.430348,
		-0.779056, -0.153808, -0.607796,
		34.356506, 35.694931, 19.642883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.217091, 35.727116, 20.417496>,  <34.901844, 35.802597, 20.068340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.217091, 35.727116, 20.417496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147545, 35.537445, 20.072258>,  <34.105816, 35.423641, 19.865116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147545, 35.537445, 20.072258>,  <34.217091, 35.727116, 20.417496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147545, 35.537445, 20.072258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557648, -0.674971, 0.483158,
		-0.811665, 0.565307, -0.147069,
		-0.173865, -0.474175, -0.863093,
		34.095387, 35.395191, 19.813330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.477562, 35.349670, 20.410707>,  <34.217091, 35.727116, 20.417496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.477562, 35.349670, 20.410707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.099766, 35.423733, 20.519268>,  <32.873089, 35.468170, 20.584404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.099766, 35.423733, 20.519268>,  <33.477562, 35.349670, 20.410707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.099766, 35.423733, 20.519268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281751, -0.881367, -0.379221,
		0.168988, -0.434637, 0.884609,
		-0.944489, 0.185156, 0.271399,
		32.816418, 35.479279, 20.600687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216045, 34.781769, 20.784700>,  <33.477562, 35.349670, 20.410707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.216045, 34.781769, 20.784700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.892971, 34.957695, 20.627625>,  <32.699127, 35.063251, 20.533379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.892971, 34.957695, 20.627625>,  <33.216045, 34.781769, 20.784700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.892971, 34.957695, 20.627625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305076, -0.881669, -0.359983,
		-0.504547, -0.170954, 0.846290,
		-0.807689, 0.439811, -0.392689,
		32.650665, 35.089638, 20.509817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.605476, 34.451473, 21.002510>,  <33.216045, 34.781769, 20.784700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.605476, 34.451473, 21.002510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.479031, 34.621948, 20.663467>,  <32.403164, 34.724232, 20.460041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.479031, 34.621948, 20.663467>,  <32.605476, 34.451473, 21.002510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.479031, 34.621948, 20.663467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392838, -0.872030, -0.291962,
		-0.863569, 0.240679, 0.443083,
		-0.316112, 0.426189, -0.847606,
		32.384197, 34.749805, 20.409185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.979406, 34.199848, 20.942448>,  <32.605476, 34.451473, 21.002510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.979406, 34.199848, 20.942448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.044781, 34.350376, 20.577663>,  <32.084003, 34.440693, 20.358793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.044781, 34.350376, 20.577663>,  <31.979406, 34.199848, 20.942448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.044781, 34.350376, 20.577663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502676, -0.763633, -0.405194,
		-0.848885, 0.524644, 0.064361,
		0.163435, 0.376316, -0.911962,
		32.093811, 34.463272, 20.304075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.334660, 34.283218, 20.602945>,  <31.979406, 34.199848, 20.942448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.334660, 34.283218, 20.602945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.575556, 34.269199, 20.283928>,  <31.720093, 34.260788, 20.092518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.575556, 34.269199, 20.283928>,  <31.334660, 34.283218, 20.602945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.575556, 34.269199, 20.283928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524931, -0.770069, -0.362547,
		-0.601459, 0.636997, -0.482164,
		0.602241, -0.035046, -0.797545,
		31.756227, 34.258686, 20.044664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.873476, 34.111713, 20.017323>,  <31.334660, 34.283218, 20.602945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.873476, 34.111713, 20.017323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.250217, 34.007553, 19.932369>,  <31.476261, 33.945057, 19.881397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.250217, 34.007553, 19.932369>,  <30.873476, 34.111713, 20.017323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.250217, 34.007553, 19.932369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312366, -0.911456, -0.267723,
		-0.123862, 0.318496, -0.939797,
		0.941852, -0.260400, -0.212382,
		31.532774, 33.929432, 19.868654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.796650, 33.727524, 19.400452>,  <30.873476, 34.111713, 20.017323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.796650, 33.727524, 19.400452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.153803, 33.607624, 19.534859>,  <31.368095, 33.535683, 19.615503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.153803, 33.607624, 19.534859>,  <30.796650, 33.727524, 19.400452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.153803, 33.607624, 19.534859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140685, -0.894579, -0.424190,
		0.427744, 0.331480, -0.840926,
		0.892884, -0.299750, 0.336017,
		31.421669, 33.517700, 19.635664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.841175, 33.153324, 19.041769>,  <30.796650, 33.727524, 19.400452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.841175, 33.153324, 19.041769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.155439, 33.117519, 19.286629>,  <31.343998, 33.096039, 19.433544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.155439, 33.117519, 19.286629>,  <30.841175, 33.153324, 19.041769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.155439, 33.117519, 19.286629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097614, -0.959148, -0.265530,
		0.610907, 0.268371, -0.744828,
		0.785661, -0.089508, 0.612148,
		31.391138, 33.090668, 19.470272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.438000, 32.936203, 18.657822>,  <30.841175, 33.153324, 19.041769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.438000, 32.936203, 18.657822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479334, 32.813805, 19.036385>,  <31.504133, 32.740364, 19.263523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479334, 32.813805, 19.036385>,  <31.438000, 32.936203, 18.657822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.479334, 32.813805, 19.036385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130974, -0.939029, -0.317915,
		0.985986, 0.156806, -0.056956,
		0.103334, -0.306000, 0.946407,
		31.510334, 32.722004, 19.320307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.685673, 32.375675, 18.518263>,  <31.438000, 32.936203, 18.657822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.685673, 32.375675, 18.518263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.607117, 32.314774, 18.905716>,  <31.559982, 32.278233, 19.138187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.607117, 32.314774, 18.905716>,  <31.685673, 32.375675, 18.518263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.607117, 32.314774, 18.905716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072225, -0.982941, -0.169146,
		0.977862, -0.103178, 0.182044,
		-0.196391, -0.152253, 0.968633,
		31.548199, 32.269096, 19.196306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.166946, 31.870476, 18.687704>,  <31.685673, 32.375675, 18.518263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.166946, 31.870476, 18.687704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.871817, 31.844776, 18.956474>,  <31.694738, 31.829357, 19.117737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.871817, 31.844776, 18.956474>,  <32.166946, 31.870476, 18.687704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.871817, 31.844776, 18.956474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127685, -0.990772, 0.045471,
		0.662802, 0.119344, 0.739223,
		-0.737828, -0.064249, 0.671924,
		31.650469, 31.825500, 19.158051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.447777, 31.499218, 19.086140>,  <32.166946, 31.870476, 18.687704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.447777, 31.499218, 19.086140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.062630, 31.474815, 19.191330>,  <31.831541, 31.460173, 19.254444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.062630, 31.474815, 19.191330>,  <32.447777, 31.499218, 19.086140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.062630, 31.474815, 19.191330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111779, -0.976801, 0.182661,
		0.245733, 0.205274, 0.947353,
		-0.962871, -0.061008, 0.262977,
		31.773767, 31.456512, 19.270224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.451672, 31.177906, 19.729378>,  <32.447777, 31.499218, 19.086140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.451672, 31.177906, 19.729378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.089661, 31.127262, 19.566944>,  <31.872456, 31.096876, 19.469484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.089661, 31.127262, 19.566944>,  <32.451672, 31.177906, 19.729378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.089661, 31.127262, 19.566944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018347, -0.965405, 0.260108,
		-0.424967, 0.227953, 0.876037,
		-0.905023, -0.126609, -0.406083,
		31.818153, 31.089279, 19.445120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.092773, 30.814806, 20.226805>,  <32.451672, 31.177906, 19.729378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.092773, 30.814806, 20.226805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.874598, 30.750183, 19.897831>,  <31.743692, 30.711409, 19.700447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.874598, 30.750183, 19.897831>,  <32.092773, 30.814806, 20.226805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.874598, 30.750183, 19.897831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003086, -0.981627, 0.190785,
		-0.838145, 0.101524, 0.535916,
		-0.545439, -0.161559, -0.822433,
		31.710966, 30.701715, 19.651102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.648218, 30.328281, 20.507692>,  <32.092773, 30.814806, 20.226805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.648218, 30.328281, 20.507692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.624346, 30.296921, 20.109638>,  <31.610022, 30.278105, 19.870806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.624346, 30.296921, 20.109638>,  <31.648218, 30.328281, 20.507692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.624346, 30.296921, 20.109638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251933, -0.963455, 0.091017,
		-0.965903, 0.256139, 0.037748,
		-0.059681, -0.078404, -0.995134,
		31.606441, 30.273399, 19.811098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.028994, 30.077896, 20.348970>,  <31.648218, 30.328281, 20.507692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.028994, 30.077896, 20.348970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.260080, 29.967236, 20.041801>,  <31.398733, 29.900839, 19.857500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.260080, 29.967236, 20.041801>,  <31.028994, 30.077896, 20.348970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.260080, 29.967236, 20.041801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279804, -0.950928, 0.132082,
		-0.766781, 0.138562, -0.626775,
		0.577717, -0.276653, -0.767924,
		31.433395, 29.884239, 19.811424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.680204, 29.570374, 20.132391>,  <31.028994, 30.077896, 20.348970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.680204, 29.570374, 20.132391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.031080, 29.513233, 19.949032>,  <31.241606, 29.478949, 19.839016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.031080, 29.513233, 19.949032>,  <30.680204, 29.570374, 20.132391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.031080, 29.513233, 19.949032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097929, -0.987877, 0.120455,
		-0.470048, -0.060771, -0.880546,
		0.877192, -0.142850, -0.458398,
		31.294237, 29.470379, 19.811512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.591301, 28.941885, 19.703751>,  <30.680204, 29.570374, 20.132391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.591301, 28.941885, 19.703751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.986437, 28.987381, 19.746147>,  <31.223518, 29.014679, 19.771585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.986437, 28.987381, 19.746147>,  <30.591301, 28.941885, 19.703751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.986437, 28.987381, 19.746147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099337, -0.986196, 0.132478,
		0.119596, -0.120338, -0.985503,
		0.987840, 0.113741, 0.105991,
		31.282789, 29.021503, 19.777945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.869719, 28.454826, 19.169720>,  <30.591301, 28.941885, 19.703751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.869719, 28.454826, 19.169720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.154583, 28.526466, 19.441235>,  <31.325502, 28.569450, 19.604143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.154583, 28.526466, 19.441235>,  <30.869719, 28.454826, 19.169720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.154583, 28.526466, 19.441235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190103, -0.979982, 0.059124,
		0.675787, 0.086933, -0.731952,
		0.712160, 0.179101, 0.678786,
		31.368231, 28.580196, 19.644871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.425243, 27.987961, 18.976789>,  <30.869719, 28.454826, 19.169720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.425243, 27.987961, 18.976789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.504593, 28.071728, 19.359787>,  <31.552202, 28.121988, 19.589586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.504593, 28.071728, 19.359787>,  <31.425243, 27.987961, 18.976789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.504593, 28.071728, 19.359787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286357, -0.946667, 0.147722,
		0.937362, 0.244881, -0.247761,
		0.198373, 0.209417, 0.957493,
		31.564104, 28.134552, 19.647036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.054317, 27.668089, 19.157200>,  <31.425243, 27.987961, 18.976789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.054317, 27.668089, 19.157200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.871176, 27.702812, 19.511112>,  <31.761292, 27.723646, 19.723459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.871176, 27.702812, 19.511112>,  <32.054317, 27.668089, 19.157200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.871176, 27.702812, 19.511112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282982, -0.929228, 0.237606,
		0.842787, 0.359166, 0.400886,
		-0.457855, 0.086808, 0.884779,
		31.733820, 27.728855, 19.776546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.562515, 27.455750, 19.523930>,  <32.054317, 27.668089, 19.157200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.562515, 27.455750, 19.523930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.241257, 27.431854, 19.761040>,  <32.048500, 27.417517, 19.903305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.241257, 27.431854, 19.761040>,  <32.562515, 27.455750, 19.523930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.241257, 27.431854, 19.761040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371290, -0.828305, 0.419588,
		0.465932, 0.557084, 0.687433,
		-0.803150, -0.059738, 0.592774,
		32.000313, 27.413933, 19.938871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771442, 27.254416, 20.198219>,  <32.562515, 27.455750, 19.523930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771442, 27.254416, 20.198219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.381699, 27.164440, 20.200150>,  <32.147854, 27.110455, 20.201307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.381699, 27.164440, 20.200150>,  <32.771442, 27.254416, 20.198219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.381699, 27.164440, 20.200150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204803, -0.877851, 0.432936,
		-0.093150, 0.422824, 0.901412,
		-0.974361, -0.224939, 0.004824,
		32.089390, 27.096958, 20.201597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.779888, 26.935474, 20.771286>,  <32.771442, 27.254416, 20.198219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.779888, 26.935474, 20.771286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441750, 26.835205, 20.582584>,  <32.238865, 26.775043, 20.469364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441750, 26.835205, 20.582584>,  <32.779888, 26.935474, 20.771286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.441750, 26.835205, 20.582584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014016, -0.893175, 0.449490,
		-0.534036, 0.373363, 0.758555,
		-0.845346, -0.250676, -0.471755,
		32.188145, 26.760002, 20.441057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.379887, 26.583960, 21.270716>,  <32.779888, 26.935474, 20.771286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.379887, 26.583960, 21.270716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.262081, 26.455299, 20.910759>,  <32.191399, 26.378103, 20.694786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.262081, 26.455299, 20.910759>,  <32.379887, 26.583960, 21.270716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.262081, 26.455299, 20.910759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007934, -0.940800, 0.338870,
		-0.955614, 0.106942, 0.274527,
		-0.294514, -0.321650, -0.899890,
		32.173725, 26.358805, 20.640791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.933435, 25.975441, 21.385098>,  <32.379887, 26.583960, 21.270716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.933435, 25.975441, 21.385098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.051720, 25.946583, 21.004078>,  <32.122692, 25.929268, 20.775467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.051720, 25.946583, 21.004078>,  <31.933435, 25.975441, 21.385098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.051720, 25.946583, 21.004078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070236, -0.992803, 0.096999,
		-0.952692, -0.095587, -0.288516,
		0.295711, -0.072147, -0.952549,
		32.140434, 25.924938, 20.718313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.586220, 25.479912, 21.112658>,  <31.933435, 25.975441, 21.385098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.586220, 25.479912, 21.112658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.863394, 25.481701, 20.824265>,  <32.029697, 25.482775, 20.651228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.863394, 25.481701, 20.824265>,  <31.586220, 25.479912, 21.112658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.863394, 25.481701, 20.824265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042529, -0.998493, 0.034680,
		-0.719743, -0.054694, -0.692083,
		0.692937, 0.004473, -0.720984,
		32.071274, 25.483044, 20.607969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.450872, 25.002079, 20.568024>,  <31.586220, 25.479912, 21.112658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.450872, 25.002079, 20.568024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.847429, 25.047825, 20.542515>,  <32.085361, 25.075272, 20.527210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.847429, 25.047825, 20.542515>,  <31.450872, 25.002079, 20.568024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.847429, 25.047825, 20.542515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105001, -0.985311, -0.134676,
		-0.078237, 0.126820, -0.988835,
		0.991390, 0.114365, -0.063772,
		32.144848, 25.082134, 20.523384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.643431, 24.515865, 20.026142>,  <31.450872, 25.002079, 20.568024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.643431, 24.515865, 20.026142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.004932, 24.604939, 20.172367>,  <32.221832, 24.658382, 20.260101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.004932, 24.604939, 20.172367>,  <31.643431, 24.515865, 20.026142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.004932, 24.604939, 20.172367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275370, -0.956305, -0.098240,
		0.327713, 0.189450, -0.925588,
		0.903756, 0.222684, 0.365563,
		32.276058, 24.671743, 20.282036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.185059, 24.243954, 19.540039>,  <31.643431, 24.515865, 20.026142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.185059, 24.243954, 19.540039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.356869, 24.309029, 19.895351>,  <32.459953, 24.348074, 20.108540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.356869, 24.309029, 19.895351>,  <32.185059, 24.243954, 19.540039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.356869, 24.309029, 19.895351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408102, -0.912436, -0.030225,
		0.805583, 0.375492, -0.458304,
		0.429522, 0.162686, 0.888281,
		32.485725, 24.357834, 20.161837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.864891, 24.000963, 19.433044>,  <32.185059, 24.243954, 19.540039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.864891, 24.000963, 19.433044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779716, 23.993118, 19.823792>,  <32.728611, 23.988411, 20.058241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779716, 23.993118, 19.823792>,  <32.864891, 24.000963, 19.433044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.779716, 23.993118, 19.823792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437320, -0.895974, 0.077339,
		0.873733, 0.443672, 0.199364,
		-0.212938, -0.019612, 0.976869,
		32.715836, 23.987234, 20.116852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451920, 23.755054, 19.750269>,  <32.864891, 24.000963, 19.433044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451920, 23.755054, 19.750269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.139935, 23.695904, 19.993511>,  <32.952744, 23.660414, 20.139456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.139935, 23.695904, 19.993511>,  <33.451920, 23.755054, 19.750269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.139935, 23.695904, 19.993511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311369, -0.934575, 0.172101,
		0.542869, 0.323577, 0.774978,
		-0.779963, -0.147876, 0.608104,
		32.905945, 23.651541, 20.175943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.846672, 23.362564, 20.165739>,  <33.451920, 23.755054, 19.750269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.846672, 23.362564, 20.165739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.459660, 23.309986, 20.252090>,  <33.227451, 23.278440, 20.303902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.459660, 23.309986, 20.252090>,  <33.846672, 23.362564, 20.165739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.459660, 23.309986, 20.252090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209661, -0.894397, 0.395090,
		0.141150, 0.427523, 0.892917,
		-0.967533, -0.131443, 0.215879,
		33.169399, 23.270554, 20.316854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.757957, 23.084568, 20.858564>,  <33.846672, 23.362564, 20.165739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.757957, 23.084568, 20.858564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.403927, 23.005642, 20.689941>,  <33.191509, 22.958286, 20.588768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.403927, 23.005642, 20.689941>,  <33.757957, 23.084568, 20.858564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.403927, 23.005642, 20.689941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006973, -0.911215, 0.411873,
		-0.465398, 0.361598, 0.807869,
		-0.885074, -0.197317, -0.421556,
		33.138405, 22.946447, 20.563475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.266598, 22.779654, 21.365114>,  <33.757957, 23.084568, 20.858564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.266598, 22.779654, 21.365114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.158005, 22.662113, 20.998520>,  <33.092850, 22.591589, 20.778563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.158005, 22.662113, 20.998520>,  <33.266598, 22.779654, 21.365114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158005, 22.662113, 20.998520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190982, -0.916866, 0.350544,
		-0.943303, 0.270201, 0.192797,
		-0.271487, -0.293849, -0.916487,
		33.076557, 22.573959, 20.723574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.625061, 22.355715, 21.442308>,  <33.266598, 22.779654, 21.365114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.625061, 22.355715, 21.442308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.775208, 22.246056, 21.088146>,  <32.865295, 22.180260, 20.875648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.775208, 22.246056, 21.088146>,  <32.625061, 22.355715, 21.442308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.775208, 22.246056, 21.088146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009148, -0.956306, 0.292225,
		-0.926830, -0.101593, -0.361476,
		0.375369, -0.274150, -0.885404,
		32.887817, 22.163811, 20.822525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.262817, 21.812439, 21.309473>,  <32.625061, 22.355715, 21.442308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.262817, 21.812439, 21.309473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.571758, 21.770557, 21.058872>,  <32.757122, 21.745428, 20.908512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.571758, 21.770557, 21.058872>,  <32.262817, 21.812439, 21.309473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.571758, 21.770557, 21.058872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014806, -0.983085, 0.182552,
		-0.635019, -0.150271, -0.757740,
		0.772355, -0.104705, -0.626502,
		32.803463, 21.739145, 20.870922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.070034, 21.178513, 20.943871>,  <32.262817, 21.812439, 21.309473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.070034, 21.178513, 20.943871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459202, 21.236160, 20.871578>,  <32.692703, 21.270750, 20.828203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459202, 21.236160, 20.871578>,  <32.070034, 21.178513, 20.943871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.459202, 21.236160, 20.871578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157502, -0.985574, 0.061942,
		-0.169197, -0.088730, -0.981580,
		0.972916, 0.144121, -0.180731,
		32.751076, 21.279396, 20.817358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.313202, 20.571598, 20.522568>,  <32.070034, 21.178513, 20.943871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.313202, 20.571598, 20.522568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666351, 20.718365, 20.639805>,  <32.878242, 20.806425, 20.710146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666351, 20.718365, 20.639805>,  <32.313202, 20.571598, 20.522568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.666351, 20.718365, 20.639805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370540, -0.927715, 0.045214,
		0.288495, 0.068683, -0.955015,
		0.882876, 0.366915, 0.293091,
		32.931213, 20.828440, 20.727732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904541, 20.377411, 20.064798>,  <32.313202, 20.571598, 20.522568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904541, 20.377411, 20.064798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.011177, 20.441456, 20.444965>,  <33.075157, 20.479883, 20.673065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.011177, 20.441456, 20.444965>,  <32.904541, 20.377411, 20.064798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.011177, 20.441456, 20.444965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448360, -0.893510, 0.024762,
		0.853173, 0.419528, -0.309988,
		0.266589, 0.160112, 0.950418,
		33.091152, 20.489489, 20.730091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.437042, 19.847803, 20.125942>,  <32.904541, 20.377411, 20.064798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.437042, 19.847803, 20.125942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.396591, 19.994339, 20.495930>,  <33.372322, 20.082260, 20.717922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.396591, 19.994339, 20.495930>,  <33.437042, 19.847803, 20.125942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.396591, 19.994339, 20.495930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368407, -0.849851, 0.376868,
		0.924148, 0.378877, -0.049020,
		-0.101127, 0.366341, 0.924969,
		33.366253, 20.104240, 20.773420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.155079, 19.898058, 20.412535>,  <33.437042, 19.847803, 20.125942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.155079, 19.898058, 20.412535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861649, 19.873363, 20.683254>,  <33.685589, 19.858547, 20.845686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861649, 19.873363, 20.683254>,  <34.155079, 19.898058, 20.412535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.861649, 19.873363, 20.683254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383418, -0.859837, 0.337153,
		0.561122, 0.506823, 0.654425,
		-0.733576, -0.061735, 0.676798,
		33.641575, 19.854843, 20.886293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.428905, 19.721792, 21.053024>,  <34.155079, 19.898058, 20.412535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.428905, 19.721792, 21.053024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.044224, 19.616253, 21.023354>,  <33.813416, 19.552929, 21.005552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.044224, 19.616253, 21.023354>,  <34.428905, 19.721792, 21.053024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.044224, 19.616253, 21.023354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256541, -0.961836, 0.095173,
		-0.096455, 0.072500, 0.992693,
		-0.961708, -0.263846, -0.074175,
		33.755711, 19.537100, 21.001101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.447624, 19.057201, 21.448164>,  <34.428905, 19.721792, 21.053024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.447624, 19.057201, 21.448164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.096729, 19.087730, 21.258587>,  <33.886192, 19.106049, 21.144840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.096729, 19.087730, 21.258587>,  <34.447624, 19.057201, 21.448164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.096729, 19.087730, 21.258587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119347, -0.990957, 0.061323,
		-0.464976, 0.110358, 0.878418,
		-0.877242, 0.076323, -0.473942,
		33.833557, 19.110628, 21.116404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.712360, 18.896152, 21.871040>,  <34.447624, 19.057201, 21.448164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.712360, 18.896152, 21.871040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745743, 18.786667, 21.487766>,  <33.765774, 18.720976, 21.257803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745743, 18.786667, 21.487766>,  <33.712360, 18.896152, 21.871040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745743, 18.786667, 21.487766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172367, -0.951009, 0.256654,
		-0.981491, 0.143739, -0.126547,
		0.083456, -0.273716, -0.958183,
		33.770779, 18.704552, 21.200312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.156765, 18.534746, 21.766037>,  <33.712360, 18.896152, 21.871040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.156765, 18.534746, 21.766037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.400238, 18.415741, 21.471828>,  <33.546322, 18.344337, 21.295303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.400238, 18.415741, 21.471828>,  <33.156765, 18.534746, 21.766037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.400238, 18.415741, 21.471828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159885, -0.954010, 0.253579,
		-0.777138, -0.036750, -0.628256,
		0.608681, -0.297515, -0.735522,
		33.582844, 18.326487, 21.251171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233521, 17.845392, 21.993191>,  <33.156765, 18.534746, 21.766037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233521, 17.845392, 21.993191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.446320, 17.862926, 21.654945>,  <33.573997, 17.873447, 21.451998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.446320, 17.862926, 21.654945>,  <33.233521, 17.845392, 21.993191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.446320, 17.862926, 21.654945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230924, -0.968315, 0.095080,
		-0.814651, -0.245855, -0.525260,
		0.531994, 0.043838, -0.845613,
		33.605919, 17.876078, 21.401262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.650272, 18.015917, 22.298717>,  <33.233521, 17.845392, 21.993191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.650272, 18.015917, 22.298717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.268005, 17.964157, 22.404507>,  <32.038643, 17.933102, 22.467979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.268005, 17.964157, 22.404507>,  <32.650272, 18.015917, 22.298717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.268005, 17.964157, 22.404507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038145, 0.945090, 0.324576,
		-0.291952, 0.300100, -0.908132,
		-0.955672, -0.129401, 0.264474,
		31.981304, 17.925337, 22.483849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.060200, 18.576506, 22.124538>,  <32.650272, 18.015917, 22.298717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.060200, 18.576506, 22.124538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.959482, 18.413433, 22.475628>,  <31.899052, 18.315590, 22.686281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.959482, 18.413433, 22.475628>,  <32.060200, 18.576506, 22.124538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.959482, 18.413433, 22.475628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171839, 0.911366, 0.374011,
		-0.952403, -0.056653, -0.299533,
		-0.251795, -0.407680, 0.877722,
		31.883944, 18.291128, 22.738945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.438087, 18.837591, 22.296244>,  <32.060200, 18.576506, 22.124538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.438087, 18.837591, 22.296244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.653269, 18.722866, 22.613316>,  <31.782377, 18.654032, 22.803558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.653269, 18.722866, 22.613316>,  <31.438087, 18.837591, 22.296244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.653269, 18.722866, 22.613316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137947, 0.897710, 0.418434,
		-0.831610, -0.334447, 0.443363,
		0.537955, -0.286813, 0.792681,
		31.814655, 18.636822, 22.851120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.129644, 18.831850, 23.000690>,  <31.438087, 18.837591, 22.296244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.129644, 18.831850, 23.000690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.519302, 18.920197, 23.019699>,  <31.753098, 18.973204, 23.031105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.519302, 18.920197, 23.019699>,  <31.129644, 18.831850, 23.000690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.519302, 18.920197, 23.019699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225566, 0.962641, 0.149807,
		-0.012661, -0.156653, 0.987573,
		0.974146, 0.220866, 0.047524,
		31.811546, 18.986456, 23.033957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.179897, 19.317398, 23.565977>,  <31.129644, 18.831850, 23.000690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.179897, 19.317398, 23.565977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.474323, 19.368267, 23.300034>,  <31.650978, 19.398788, 23.140467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.474323, 19.368267, 23.300034>,  <31.179897, 19.317398, 23.565977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.474323, 19.368267, 23.300034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051463, 0.968838, 0.242290,
		0.674952, -0.212557, 0.706583,
		0.736065, 0.127171, -0.664858,
		31.695143, 19.406418, 23.100576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.598013, 19.928431, 23.833141>,  <31.179897, 19.317398, 23.565977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.598013, 19.928431, 23.833141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.716541, 19.858883, 23.457489>,  <31.787659, 19.817154, 23.232098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.716541, 19.858883, 23.457489>,  <31.598013, 19.928431, 23.833141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.716541, 19.858883, 23.457489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418541, 0.907486, -0.035949,
		0.858497, -0.382411, 0.341680,
		0.296323, -0.173869, -0.939129,
		31.805439, 19.806723, 23.175751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.361401, 20.133184, 23.749184>,  <31.598013, 19.928431, 23.833141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.361401, 20.133184, 23.749184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.161617, 20.148464, 23.402985>,  <32.041748, 20.157633, 23.195265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.161617, 20.148464, 23.402985>,  <32.361401, 20.133184, 23.749184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.161617, 20.148464, 23.402985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304830, 0.942891, -0.134294,
		0.810939, -0.330903, -0.482578,
		-0.499457, 0.038200, -0.865496,
		32.011780, 20.159924, 23.143335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.786301, 20.674509, 23.346519>,  <32.361401, 20.133184, 23.749184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.786301, 20.674509, 23.346519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439510, 20.648865, 23.148834>,  <32.231438, 20.633478, 23.030224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439510, 20.648865, 23.148834>,  <32.786301, 20.674509, 23.346519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.439510, 20.648865, 23.148834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091804, 0.954172, -0.284828,
		0.489826, -0.292309, -0.821356,
		-0.866973, -0.064112, -0.494213,
		32.179417, 20.629631, 23.000570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.887039, 21.163044, 22.764334>,  <32.786301, 20.674509, 23.346519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.887039, 21.163044, 22.764334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.490757, 21.120056, 22.797684>,  <32.252987, 21.094263, 22.817694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.490757, 21.120056, 22.797684>,  <32.887039, 21.163044, 22.764334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.490757, 21.120056, 22.797684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107586, 0.994191, 0.003076,
		-0.083221, -0.005923, -0.996513,
		-0.990707, -0.107467, 0.083375,
		32.193546, 21.087816, 22.822697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.705750, 21.644167, 22.341789>,  <32.887039, 21.163044, 22.764334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.705750, 21.644167, 22.341789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.376060, 21.581146, 22.559353>,  <32.178246, 21.543333, 22.689890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.376060, 21.581146, 22.559353>,  <32.705750, 21.644167, 22.341789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.376060, 21.581146, 22.559353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168158, 0.985286, 0.030585,
		-0.540722, -0.066253, -0.838588,
		-0.824222, -0.157553, 0.543907,
		32.128796, 21.533880, 22.722525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.102062, 22.028833, 22.008789>,  <32.705750, 21.644167, 22.341789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.102062, 22.028833, 22.008789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.969584, 21.964272, 22.380650>,  <31.890095, 21.925533, 22.603765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.969584, 21.964272, 22.380650>,  <32.102062, 22.028833, 22.008789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.969584, 21.964272, 22.380650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264860, 0.961551, 0.072584,
		-0.905624, -0.222188, -0.361216,
		-0.331201, -0.161405, 0.929653,
		31.870224, 21.915850, 22.659546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.406672, 22.298433, 22.061680>,  <32.102062, 22.028833, 22.008789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.406672, 22.298433, 22.061680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.526743, 22.298157, 22.443233>,  <31.598785, 22.297991, 22.672165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.526743, 22.298157, 22.443233>,  <31.406672, 22.298433, 22.061680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.526743, 22.298157, 22.443233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120350, 0.991981, 0.038593,
		-0.946261, -0.126385, 0.297686,
		0.300177, -0.000692, 0.953883,
		31.616796, 22.297949, 22.729399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.058245, 22.782335, 22.276754>,  <31.406672, 22.298433, 22.061680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.058245, 22.782335, 22.276754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.334730, 22.723484, 22.559761>,  <31.500622, 22.688173, 22.729565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.334730, 22.723484, 22.559761>,  <31.058245, 22.782335, 22.276754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.334730, 22.723484, 22.559761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005740, 0.980141, 0.198216,
		-0.722629, -0.132948, 0.678330,
		0.691212, -0.147130, 0.707516,
		31.542093, 22.679344, 22.772017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.813850, 23.041443, 22.850439>,  <31.058245, 22.782335, 22.276754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.813850, 23.041443, 22.850439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.209208, 23.048038, 22.910843>,  <31.446423, 23.051996, 22.947084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.209208, 23.048038, 22.910843>,  <30.813850, 23.041443, 22.850439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.209208, 23.048038, 22.910843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045419, 0.980697, 0.190183,
		-0.144959, -0.194835, 0.970065,
		0.988394, 0.016491, 0.151010,
		31.505726, 23.052986, 22.956146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.827507, 23.519686, 23.480038>,  <30.813850, 23.041443, 22.850439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.827507, 23.519686, 23.480038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.198483, 23.486549, 23.334164>,  <31.421068, 23.466667, 23.246639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.198483, 23.486549, 23.334164>,  <30.827507, 23.519686, 23.480038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.198483, 23.486549, 23.334164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224294, 0.903518, 0.365169,
		0.299251, -0.420468, 0.856537,
		0.927438, -0.082839, -0.364687,
		31.476713, 23.461699, 23.224758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.216877, 23.872271, 24.033607>,  <30.827507, 23.519686, 23.480038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.216877, 23.872271, 24.033607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.427608, 23.870659, 23.693623>,  <31.554049, 23.869692, 23.489632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.427608, 23.870659, 23.693623>,  <31.216877, 23.872271, 24.033607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.427608, 23.870659, 23.693623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164993, 0.981452, 0.097616,
		0.833803, -0.191665, 0.517724,
		0.526830, -0.004028, -0.849961,
		31.585657, 23.869450, 23.438635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.941471, 24.060535, 24.149454>,  <31.216877, 23.872271, 24.033607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.941471, 24.060535, 24.149454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.824430, 24.179638, 23.785976>,  <31.754206, 24.251101, 23.567890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.824430, 24.179638, 23.785976>,  <31.941471, 24.060535, 24.149454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.824430, 24.179638, 23.785976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402289, 0.900428, 0.165510,
		0.867495, -0.317128, -0.383253,
		-0.292604, 0.297757, -0.908693,
		31.736649, 24.268965, 23.513369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.426174, 24.729465, 23.941381>,  <31.941471, 24.060535, 24.149454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.426174, 24.729465, 23.941381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104584, 24.721989, 23.703636>,  <31.911629, 24.717503, 23.560989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104584, 24.721989, 23.703636>,  <32.426174, 24.729465, 23.941381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104584, 24.721989, 23.703636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027002, 0.999622, 0.005086,
		0.594042, 0.020138, -0.804182,
		-0.803981, -0.018693, -0.594362,
		31.863390, 24.716381, 23.525328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.535896, 25.302856, 23.539530>,  <32.426174, 24.729465, 23.941381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.535896, 25.302856, 23.539530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.145710, 25.242413, 23.475498>,  <31.911598, 25.206146, 23.437078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.145710, 25.242413, 23.475498>,  <32.535896, 25.302856, 23.539530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.145710, 25.242413, 23.475498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151086, 0.988443, -0.012390,
		0.160102, 0.012100, -0.987026,
		-0.975469, -0.151110, -0.160080,
		31.853069, 25.197079, 23.427475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.460945, 25.771200, 23.046095>,  <32.535896, 25.302856, 23.539530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.460945, 25.771200, 23.046095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104286, 25.679745, 23.202393>,  <31.890289, 25.624872, 23.296171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104286, 25.679745, 23.202393>,  <32.460945, 25.771200, 23.046095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104286, 25.679745, 23.202393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199274, 0.973205, 0.114727,
		-0.406507, 0.024431, -0.913321,
		-0.891651, -0.228638, 0.390746,
		31.836790, 25.611153, 23.319616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.857025, 26.123642, 22.587076>,  <32.460945, 25.771200, 23.046095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.857025, 26.123642, 22.587076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.709770, 26.079033, 22.956299>,  <31.621418, 26.052267, 23.177834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.709770, 26.079033, 22.956299>,  <31.857025, 26.123642, 22.587076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.709770, 26.079033, 22.956299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338724, 0.940641, -0.021442,
		-0.865876, -0.320555, -0.384061,
		-0.368137, -0.111525, 0.923059,
		31.599329, 26.045576, 23.233217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.251976, 26.397982, 22.440716>,  <31.857025, 26.123642, 22.587076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.251976, 26.397982, 22.440716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.272202, 26.397160, 22.840202>,  <31.284338, 26.396667, 23.079895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.272202, 26.397160, 22.840202>,  <31.251976, 26.397982, 22.440716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.272202, 26.397160, 22.840202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210516, 0.977508, 0.012668,
		-0.976282, -0.210887, 0.048996,
		0.050566, -0.002053, 0.998719,
		31.287371, 26.396544, 23.139818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.683645, 26.690971, 22.762533>,  <31.251976, 26.397982, 22.440716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.683645, 26.690971, 22.762533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.927353, 26.744526, 23.075165>,  <31.073578, 26.776659, 23.262743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.927353, 26.744526, 23.075165>,  <30.683645, 26.690971, 22.762533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.927353, 26.744526, 23.075165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241254, 0.970215, 0.021866,
		-0.755371, -0.201881, 0.623425,
		0.609271, 0.133887, 0.781577,
		31.110134, 26.784693, 23.309637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.293108, 27.082737, 23.343815>,  <30.683645, 26.690971, 22.762533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.293108, 27.082737, 23.343815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.681248, 27.128448, 23.429008>,  <30.914131, 27.155876, 23.480125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.681248, 27.128448, 23.429008>,  <30.293108, 27.082737, 23.343815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.681248, 27.128448, 23.429008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140619, 0.983606, 0.112893,
		-0.196592, -0.139495, 0.970512,
		0.970349, 0.114279, 0.212985,
		30.972353, 27.162731, 23.492905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.433710, 27.596579, 23.906298>,  <30.293108, 27.082737, 23.343815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.433710, 27.596579, 23.906298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.776825, 27.582897, 23.701153>,  <30.982695, 27.574688, 23.578066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.776825, 27.582897, 23.701153>,  <30.433710, 27.596579, 23.906298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.776825, 27.582897, 23.701153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045424, 0.998924, 0.009359,
		0.511991, -0.031324, 0.858419,
		0.857789, -0.034201, -0.512863,
		31.034163, 27.572638, 23.547295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.779436, 28.168465, 24.213036>,  <30.433710, 27.596579, 23.906298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.779436, 28.168465, 24.213036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.969786, 28.084320, 23.871441>,  <31.083996, 28.033833, 23.666485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.969786, 28.084320, 23.871441>,  <30.779436, 28.168465, 24.213036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.969786, 28.084320, 23.871441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290736, 0.954015, -0.072993,
		0.830070, -0.213548, 0.515152,
		0.475875, -0.210363, -0.853985,
		31.112549, 28.021212, 23.615246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.535677, 28.510458, 24.279934>,  <30.779436, 28.168465, 24.213036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.535677, 28.510458, 24.279934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.447660, 28.446362, 23.895039>,  <31.394850, 28.407904, 23.664101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.447660, 28.446362, 23.895039>,  <31.535677, 28.510458, 24.279934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.447660, 28.446362, 23.895039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200822, 0.957846, -0.205431,
		0.954593, -0.238444, -0.178595,
		-0.220050, -0.160237, -0.962238,
		31.381647, 28.398291, 23.606367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.035515, 28.871138, 23.946520>,  <31.535677, 28.510458, 24.279934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.035515, 28.871138, 23.946520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.742044, 28.837364, 23.676826>,  <31.565962, 28.817101, 23.515011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.742044, 28.837364, 23.676826>,  <32.035515, 28.871138, 23.946520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.742044, 28.837364, 23.676826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059771, 0.980384, -0.187814,
		0.676865, -0.178095, -0.714239,
		-0.733677, -0.084434, -0.674232,
		31.521942, 28.812035, 23.474556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.262630, 29.168266, 23.323236>,  <32.035515, 28.871138, 23.946520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.262630, 29.168266, 23.323236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.868177, 29.167423, 23.256866>,  <31.631504, 29.166918, 23.217045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.868177, 29.167423, 23.256866>,  <32.262630, 29.168266, 23.323236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.868177, 29.167423, 23.256866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052646, 0.944290, -0.324877,
		0.157368, -0.329108, -0.931087,
		-0.986136, -0.002107, -0.165927,
		31.572336, 29.166792, 23.207088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.123951, 29.574656, 22.659496>,  <32.262630, 29.168266, 23.323236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.123951, 29.574656, 22.659496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.750170, 29.574646, 22.801933>,  <31.525902, 29.574640, 22.887396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.750170, 29.574646, 22.801933>,  <32.123951, 29.574656, 22.659496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.750170, 29.574646, 22.801933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080615, 0.974051, -0.211486,
		-0.346848, -0.226329, -0.910204,
		-0.934451, -0.000023, 0.356093,
		31.469835, 29.574638, 22.908762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.815266, 30.004377, 22.197672>,  <32.123951, 29.574656, 22.659496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.815266, 30.004377, 22.197672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.573486, 29.993595, 22.516148>,  <31.428419, 29.987125, 22.707233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.573486, 29.993595, 22.516148>,  <31.815266, 30.004377, 22.197672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.573486, 29.993595, 22.516148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057332, 0.998308, -0.009727,
		-0.794580, -0.051527, -0.604969,
		-0.604447, -0.026955, 0.796189,
		31.392153, 29.985508, 22.755005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.260424, 30.446135, 21.962734>,  <31.815266, 30.004377, 22.197672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.260424, 30.446135, 21.962734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.235561, 30.437935, 22.361877>,  <31.220644, 30.433016, 22.601362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.235561, 30.437935, 22.361877>,  <31.260424, 30.446135, 21.962734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.235561, 30.437935, 22.361877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133977, 0.990912, 0.012009,
		-0.989033, -0.132943, -0.064339,
		-0.062158, -0.020498, 0.997856,
		31.216913, 30.431786, 22.661234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.564638, 30.768450, 22.208944>,  <31.260424, 30.446135, 21.962734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.564638, 30.768450, 22.208944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.840687, 30.785664, 22.497910>,  <31.006317, 30.795992, 22.671288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.840687, 30.785664, 22.497910>,  <30.564638, 30.768450, 22.208944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.840687, 30.785664, 22.497910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181051, 0.976753, 0.114775,
		-0.700679, -0.210002, 0.681871,
		0.690123, 0.043033, 0.722412,
		31.047724, 30.798574, 22.714634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.326139, 31.240873, 22.655485>,  <30.564638, 30.768450, 22.208944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.326139, 31.240873, 22.655485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.701714, 31.251656, 22.792698>,  <30.927059, 31.258125, 22.875025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.701714, 31.251656, 22.792698>,  <30.326139, 31.240873, 22.655485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.701714, 31.251656, 22.792698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053292, 0.996290, 0.067575,
		-0.339937, -0.081729, 0.936890,
		0.938937, 0.026957, 0.343031,
		30.983395, 31.259743, 22.895607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.302706, 31.566601, 23.263815>,  <30.326139, 31.240873, 22.655485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.302706, 31.566601, 23.263815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.671005, 31.604885, 23.112522>,  <30.891985, 31.627855, 23.021748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.671005, 31.604885, 23.112522>,  <30.302706, 31.566601, 23.263815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.671005, 31.604885, 23.112522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072088, 0.994486, 0.076169,
		0.383435, -0.042867, 0.922573,
		0.920750, 0.095712, -0.378230,
		30.947229, 31.633598, 22.999052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.602703, 32.103321, 23.745218>,  <30.302706, 31.566601, 23.263815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.602703, 32.103321, 23.745218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.836170, 32.083405, 23.421032>,  <30.976250, 32.071457, 23.226521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.836170, 32.083405, 23.421032>,  <30.602703, 32.103321, 23.745218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.836170, 32.083405, 23.421032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145799, 0.988322, 0.044285,
		0.798796, -0.144013, 0.584111,
		0.583668, -0.049788, -0.810465,
		31.011271, 32.068470, 23.177893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.100107, 32.539219, 23.871342>,  <30.602703, 32.103321, 23.745218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.100107, 32.539219, 23.871342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.114208, 32.493580, 23.474205>,  <31.122669, 32.466194, 23.235922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.114208, 32.493580, 23.474205>,  <31.100107, 32.539219, 23.871342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.114208, 32.493580, 23.474205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034507, 0.992729, -0.115314,
		0.998782, 0.038325, 0.031060,
		0.035253, -0.114102, -0.992843,
		31.124784, 32.459351, 23.176352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.399633, 33.253376, 23.630009>,  <31.100107, 32.539219, 23.871342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.399633, 33.253376, 23.630009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.261024, 33.110466, 23.283073>,  <31.177858, 33.024719, 23.074913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.261024, 33.110466, 23.283073>,  <31.399633, 33.253376, 23.630009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.261024, 33.110466, 23.283073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138922, 0.933977, -0.329224,
		0.927698, 0.006409, -0.373276,
		-0.346521, -0.357277, -0.867339,
		31.157068, 33.003284, 23.022871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.792526, 33.562057, 22.984262>,  <31.399633, 33.253376, 23.630009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.792526, 33.562057, 22.984262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.424538, 33.453850, 22.870796>,  <31.203745, 33.388924, 22.802715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.424538, 33.453850, 22.870796>,  <31.792526, 33.562057, 22.984262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.424538, 33.453850, 22.870796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183343, 0.936602, -0.298599,
		0.346461, -0.222695, -0.911247,
		-0.919973, -0.270523, -0.283667,
		31.148546, 33.372692, 22.785696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.665316, 33.779369, 22.267828>,  <31.792526, 33.562057, 22.984262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.665316, 33.779369, 22.267828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.293406, 33.703941, 22.394291>,  <31.070259, 33.658684, 22.470169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.293406, 33.703941, 22.394291>,  <31.665316, 33.779369, 22.267828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.293406, 33.703941, 22.394291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334575, 0.791081, -0.512103,
		-0.153539, -0.581920, -0.798620,
		-0.929777, -0.188571, 0.316158,
		31.014473, 33.647369, 22.489138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.269087, 33.884060, 21.708630>,  <31.665316, 33.779369, 22.267828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.269087, 33.884060, 21.708630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.001007, 33.906033, 22.004688>,  <30.840160, 33.919216, 22.182323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.001007, 33.906033, 22.004688>,  <31.269087, 33.884060, 21.708630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.001007, 33.906033, 22.004688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478515, 0.730326, -0.487491,
		-0.567326, -0.680887, -0.463178,
		-0.670197, 0.054929, 0.740148,
		30.799948, 33.922512, 22.226732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.671503, 34.076927, 21.259499>,  <31.269087, 33.884060, 21.708630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.671503, 34.076927, 21.259499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.595650, 34.141361, 21.646919>,  <30.550137, 34.180023, 21.879372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.595650, 34.141361, 21.646919>,  <30.671503, 34.076927, 21.259499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.595650, 34.141361, 21.646919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583057, 0.775210, -0.243091,
		-0.789989, -0.610819, -0.053084,
		-0.189636, 0.161089, 0.968550,
		30.538759, 34.189690, 21.937485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.970724, 34.099236, 21.437044>,  <30.671503, 34.076927, 21.259499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.970724, 34.099236, 21.437044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.149504, 34.331715, 21.709057>,  <30.256771, 34.471203, 21.872265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.149504, 34.331715, 21.709057>,  <29.970724, 34.099236, 21.437044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.149504, 34.331715, 21.709057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459900, 0.801321, -0.382592,
		-0.767287, -0.141748, 0.625443,
		0.446948, 0.581199, 0.680033,
		30.283588, 34.506073, 21.913067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.523094, 34.548573, 21.557440>,  <29.970724, 34.099236, 21.437044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.523094, 34.548573, 21.557440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.828798, 34.745716, 21.723812>,  <30.012220, 34.864002, 21.823635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.828798, 34.745716, 21.723812>,  <29.523094, 34.548573, 21.557440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.828798, 34.745716, 21.723812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440620, 0.869994, -0.221279,
		-0.470916, -0.014152, 0.882065,
		0.764259, 0.492859, 0.415929,
		30.058077, 34.893574, 21.848591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.271233, 35.127972, 21.777294>,  <29.523094, 34.548573, 21.557440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.271233, 35.127972, 21.777294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.656744, 35.234573, 21.781414>,  <29.888050, 35.298534, 21.783886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.656744, 35.234573, 21.781414>,  <29.271233, 35.127972, 21.777294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.656744, 35.234573, 21.781414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258735, 0.943648, -0.206359,
		-0.064717, 0.196219, 0.978422,
		0.963778, 0.266507, 0.010301,
		29.945877, 35.314526, 21.784504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.743559, 35.028896, 22.243431>,  <29.271233, 35.127972, 21.777294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.743559, 35.028896, 22.243431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.353365, 34.986210, 22.166443>,  <28.119249, 34.960598, 22.120249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.353365, 34.986210, 22.166443>,  <28.743559, 35.028896, 22.243431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.353365, 34.986210, 22.166443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027208, -0.809383, 0.586651,
		-0.218387, 0.577505, 0.786636,
		-0.975483, -0.106714, -0.192472,
		28.060720, 34.954197, 22.108702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.378443, 35.132660, 22.905336>,  <28.743559, 35.028896, 22.243431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.378443, 35.132660, 22.905336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.174023, 34.907204, 22.645756>,  <28.051371, 34.771931, 22.490007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.174023, 34.907204, 22.645756>,  <28.378443, 35.132660, 22.905336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.174023, 34.907204, 22.645756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029242, -0.743150, 0.668485,
		-0.859053, 0.360607, 0.363306,
		-0.511051, -0.563641, -0.648950,
		28.020708, 34.738113, 22.451071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.786316, 34.870731, 23.257944>,  <28.378443, 35.132660, 22.905336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.786316, 34.870731, 23.257944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.813560, 34.616898, 22.950005>,  <27.829906, 34.464600, 22.765242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.813560, 34.616898, 22.950005>,  <27.786316, 34.870731, 23.257944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.813560, 34.616898, 22.950005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126127, -0.770927, 0.624310,
		-0.989673, 0.054576, -0.132547,
		0.068112, -0.634581, -0.769849,
		27.833994, 34.426525, 22.719049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.510471, 34.342682, 23.568604>,  <27.786316, 34.870731, 23.257944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.510471, 34.342682, 23.568604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.641758, 34.204361, 23.216991>,  <27.720530, 34.121368, 23.006023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.641758, 34.204361, 23.216991>,  <27.510471, 34.342682, 23.568604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.641758, 34.204361, 23.216991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214079, -0.933598, 0.287340,
		-0.920024, 0.093872, -0.380454,
		0.328218, -0.345807, -0.879029,
		27.740223, 34.100620, 22.953283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.003317, 33.852966, 23.388638>,  <27.510471, 34.342682, 23.568604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.003317, 33.852966, 23.388638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.342070, 33.748600, 23.203289>,  <27.545322, 33.685982, 23.092081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.342070, 33.748600, 23.203289>,  <27.003317, 33.852966, 23.388638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.342070, 33.748600, 23.203289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159129, -0.955771, 0.247346,
		-0.507411, -0.135738, -0.850946,
		0.846884, -0.260916, -0.463369,
		27.596134, 33.670326, 23.064278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.898342, 33.320042, 22.743959>,  <27.003317, 33.852966, 23.388638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.898342, 33.320042, 22.743959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.262602, 33.285683, 22.905621>,  <27.481157, 33.265068, 23.002617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.262602, 33.285683, 22.905621>,  <26.898342, 33.320042, 22.743959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.262602, 33.285683, 22.905621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150731, -0.979804, 0.131392,
		0.384704, -0.180571, -0.905206,
		0.910650, -0.085896, 0.404152,
		27.535797, 33.259914, 23.026867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.164043, 32.717617, 22.411249>,  <26.898342, 33.320042, 22.743959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.164043, 32.717617, 22.411249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.453669, 32.772331, 22.681664>,  <27.627443, 32.805161, 22.843912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.453669, 32.772331, 22.681664>,  <27.164043, 32.717617, 22.411249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.453669, 32.772331, 22.681664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175622, -0.984395, 0.011085,
		0.667002, 0.110701, -0.736786,
		0.724062, 0.136789, 0.676035,
		27.670887, 32.813370, 22.884474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.745617, 32.229481, 22.254333>,  <27.164043, 32.717617, 22.411249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.745617, 32.229481, 22.254333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.818834, 32.350983, 22.628334>,  <27.862764, 32.423882, 22.852736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.818834, 32.350983, 22.628334>,  <27.745617, 32.229481, 22.254333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.818834, 32.350983, 22.628334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236263, -0.936789, 0.258080,
		0.954293, 0.173667, -0.243239,
		0.183044, 0.303753, 0.935002,
		27.873747, 32.442108, 22.908834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.327456, 31.978001, 22.418056>,  <27.745617, 32.229481, 22.254333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.327456, 31.978001, 22.418056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.148716, 32.027851, 22.772411>,  <28.041473, 32.057762, 22.985023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.148716, 32.027851, 22.772411>,  <28.327456, 31.978001, 22.418056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.148716, 32.027851, 22.772411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175777, -0.958715, 0.223534,
		0.877172, 0.255604, 0.406492,
		-0.446847, 0.124625, 0.885888,
		28.014662, 32.065239, 23.038177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.840094, 31.718430, 23.006029>,  <28.327456, 31.978001, 22.418056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.840094, 31.718430, 23.006029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.466272, 31.701328, 23.147327>,  <28.241980, 31.691067, 23.232107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.466272, 31.701328, 23.147327>,  <28.840094, 31.718430, 23.006029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.466272, 31.701328, 23.147327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176977, -0.917103, 0.357213,
		0.308690, 0.396350, 0.864648,
		-0.934553, -0.042755, 0.353246,
		28.185905, 31.688501, 23.253302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.940371, 31.534145, 23.634546>,  <28.840094, 31.718430, 23.006029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.940371, 31.534145, 23.634546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.564737, 31.441025, 23.533413>,  <28.339357, 31.385153, 23.472733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.564737, 31.441025, 23.533413>,  <28.940371, 31.534145, 23.634546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.564737, 31.441025, 23.533413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113744, -0.904714, 0.410553,
		-0.324318, 0.356786, 0.876083,
		-0.939085, -0.232799, -0.252832,
		28.283012, 31.371185, 23.457563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.652552, 31.032701, 24.281929>,  <28.940371, 31.534145, 23.634546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.652552, 31.032701, 24.281929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.394793, 31.025581, 23.976135>,  <28.240137, 31.021309, 23.792660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.394793, 31.025581, 23.976135>,  <28.652552, 31.032701, 24.281929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.394793, 31.025581, 23.976135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106812, -0.987833, 0.113032,
		-0.757193, 0.154494, 0.634657,
		-0.644398, -0.017798, -0.764483,
		28.201473, 31.020243, 23.746790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.928600, 30.850206, 24.540249>,  <28.652552, 31.032701, 24.281929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.928600, 30.850206, 24.540249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.964499, 30.739273, 24.157619>,  <27.986036, 30.672712, 23.928041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.964499, 30.739273, 24.157619>,  <27.928600, 30.850206, 24.540249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.964499, 30.739273, 24.157619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030557, -0.960763, 0.275683,
		-0.995496, 0.004489, -0.094697,
		0.089744, -0.277335, -0.956573,
		27.991423, 30.656073, 23.870647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.643946, 30.159170, 24.529812>,  <27.928600, 30.850206, 24.540249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.643946, 30.159170, 24.529812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.844227, 30.180325, 24.184212>,  <27.964396, 30.193018, 23.976851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.844227, 30.180325, 24.184212>,  <27.643946, 30.159170, 24.529812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.844227, 30.180325, 24.184212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032875, -0.998573, -0.042073,
		-0.864995, -0.007338, -0.501726,
		0.500702, 0.052888, -0.864003,
		27.994438, 30.196190, 23.925011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.439291, 29.503712, 24.240803>,  <27.643946, 30.159170, 24.529812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.439291, 29.503712, 24.240803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.740461, 29.615044, 24.002262>,  <27.921164, 29.681843, 23.859138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.740461, 29.615044, 24.002262>,  <27.439291, 29.503712, 24.240803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.740461, 29.615044, 24.002262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172371, -0.957934, -0.229458,
		-0.635130, 0.069972, -0.769230,
		0.752927, 0.278329, -0.596351,
		27.966339, 29.698542, 23.823357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.356215, 29.073856, 23.604216>,  <27.439291, 29.503712, 24.240803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.356215, 29.073856, 23.604216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.741434, 29.177170, 23.634743>,  <27.972567, 29.239159, 23.653059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.741434, 29.177170, 23.634743>,  <27.356215, 29.073856, 23.604216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.741434, 29.177170, 23.634743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266606, -0.954406, -0.134277,
		0.038154, 0.149662, -0.988001,
		0.963050, 0.258284, 0.076316,
		28.030350, 29.254656, 23.657637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.683554, 28.787924, 23.028687>,  <27.356215, 29.073856, 23.604216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.683554, 28.787924, 23.028687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.986834, 28.860382, 23.279228>,  <28.168802, 28.903856, 23.429552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.986834, 28.860382, 23.279228>,  <27.683554, 28.787924, 23.028687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.986834, 28.860382, 23.279228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362475, -0.915611, -0.173975,
		0.541981, 0.358945, -0.759878,
		0.758201, 0.181146, 0.626353,
		28.214294, 28.914726, 23.467134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.233534, 28.310442, 22.796139>,  <27.683554, 28.787924, 23.028687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.233534, 28.310442, 22.796139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.361168, 28.415417, 23.160404>,  <28.437748, 28.478401, 23.378963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.361168, 28.415417, 23.160404>,  <28.233534, 28.310442, 22.796139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.361168, 28.415417, 23.160404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421567, -0.899901, 0.111624,
		0.848802, 0.348289, -0.397782,
		0.319087, 0.262439, 0.910664,
		28.456894, 28.494148, 23.433603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.952602, 28.062857, 22.843046>,  <28.233534, 28.310442, 22.796139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.952602, 28.062857, 22.843046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.820068, 28.135502, 23.213394>,  <28.740547, 28.179089, 23.435602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.820068, 28.135502, 23.213394>,  <28.952602, 28.062857, 22.843046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.820068, 28.135502, 23.213394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271654, -0.921384, 0.277950,
		0.903561, 0.343610, 0.255950,
		-0.331334, 0.181615, 0.925869,
		28.720669, 28.189987, 23.491156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.477308, 28.036411, 23.398874>,  <28.952602, 28.062857, 22.843046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.477308, 28.036411, 23.398874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.135164, 27.921021, 23.570988>,  <28.929878, 27.851786, 23.674255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.135164, 27.921021, 23.570988>,  <29.477308, 28.036411, 23.398874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.135164, 27.921021, 23.570988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409883, -0.884810, 0.221600,
		0.316795, 0.365914, 0.875071,
		-0.855358, -0.288475, 0.430285,
		28.878557, 27.834478, 23.700073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.658514, 27.578238, 23.982931>,  <29.477308, 28.036411, 23.398874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.658514, 27.578238, 23.982931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.275101, 27.478954, 23.926918>,  <29.045053, 27.419384, 23.893311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.275101, 27.478954, 23.926918>,  <29.658514, 27.578238, 23.982931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.275101, 27.478954, 23.926918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229684, -0.963718, 0.135990,
		-0.168704, 0.098188, 0.980764,
		-0.958532, -0.248207, -0.140031,
		28.987541, 27.404491, 23.884909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.450556, 27.020966, 24.554413>,  <29.658514, 27.578238, 23.982931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.450556, 27.020966, 24.554413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.207607, 26.992626, 24.237911>,  <29.061838, 26.975622, 24.048010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.207607, 26.992626, 24.237911>,  <29.450556, 27.020966, 24.554413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.207607, 26.992626, 24.237911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063932, -0.997144, 0.040211,
		-0.791840, -0.026163, 0.610167,
		-0.607372, -0.070850, -0.791251,
		29.025396, 26.971371, 24.000536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.120455, 26.347090, 24.678820>,  <29.450556, 27.020966, 24.554413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.120455, 26.347090, 24.678820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.036940, 26.424713, 24.295414>,  <28.986832, 26.471287, 24.065371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.036940, 26.424713, 24.295414>,  <29.120455, 26.347090, 24.678820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.036940, 26.424713, 24.295414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235732, -0.941229, -0.241905,
		-0.949125, -0.276459, 0.150769,
		-0.208785, 0.194057, -0.958515,
		28.974304, 26.482931, 24.007860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.618177, 25.765135, 24.498934>,  <29.120455, 26.347090, 24.678820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.618177, 25.765135, 24.498934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.737587, 25.911079, 24.146172>,  <28.809233, 25.998646, 23.934513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.737587, 25.911079, 24.146172>,  <28.618177, 25.765135, 24.498934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.737587, 25.911079, 24.146172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030826, -0.927244, -0.373186,
		-0.953905, 0.084219, -0.288051,
		0.298522, 0.364863, -0.881907,
		28.827145, 26.020538, 23.881599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.233723, 25.330509, 23.990841>,  <28.618177, 25.765135, 24.498934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.233723, 25.330509, 23.990841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.522724, 25.526211, 23.795448>,  <28.696125, 25.643631, 23.678213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.522724, 25.526211, 23.795448>,  <28.233723, 25.330509, 23.990841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.522724, 25.526211, 23.795448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024496, -0.724220, -0.689134,
		-0.690931, 0.485937, -0.535238,
		0.722506, 0.489255, -0.488483,
		28.739475, 25.672987, 23.648903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.100510, 25.273317, 23.317186>,  <28.233723, 25.330509, 23.990841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.100510, 25.273317, 23.317186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.484043, 25.385746, 23.300991>,  <28.714163, 25.453203, 23.291273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.484043, 25.385746, 23.300991>,  <28.100510, 25.273317, 23.317186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.484043, 25.385746, 23.300991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119387, -0.528359, -0.840585,
		-0.257658, 0.801146, -0.540164,
		0.958832, 0.281072, -0.040489,
		28.771692, 25.470068, 23.288845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.341755, 25.523214, 22.508589>,  <28.100510, 25.273317, 23.317186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.341755, 25.523214, 22.508589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.650429, 25.386597, 22.723194>,  <28.835634, 25.304626, 22.851957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.650429, 25.386597, 22.723194>,  <28.341755, 25.523214, 22.508589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.650429, 25.386597, 22.723194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203582, -0.666538, -0.717134,
		0.602540, 0.662627, -0.444827,
		0.771687, -0.341543, 0.536515,
		28.881935, 25.284134, 22.884150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.779123, 25.477894, 21.944550>,  <28.341755, 25.523214, 22.508589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.779123, 25.477894, 21.944550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.912838, 25.251095, 22.245686>,  <28.993067, 25.115015, 22.426367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.912838, 25.251095, 22.245686>,  <28.779123, 25.477894, 21.944550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.912838, 25.251095, 22.245686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299432, -0.693510, -0.655274,
		0.893640, 0.444474, -0.062055,
		0.334288, -0.566998, 0.752838,
		29.013124, 25.080996, 22.471537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.551315, 25.413736, 21.748587>,  <28.779123, 25.477894, 21.944550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.551315, 25.413736, 21.748587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.397915, 25.127571, 21.982204>,  <29.305874, 24.955872, 22.122375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.397915, 25.127571, 21.982204>,  <29.551315, 25.413736, 21.748587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.397915, 25.127571, 21.982204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399979, -0.698673, -0.593189,
		0.832432, 0.006116, 0.554093,
		-0.383502, -0.715415, 0.584044,
		29.282864, 24.912947, 22.157417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.983686, 24.868225, 21.624758>,  <29.551315, 25.413736, 21.748587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.983686, 24.868225, 21.624758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.709337, 24.651684, 21.819290>,  <29.544727, 24.521759, 21.936008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.709337, 24.651684, 21.819290>,  <29.983686, 24.868225, 21.624758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.709337, 24.651684, 21.819290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271886, -0.810521, -0.518781,
		0.675024, -0.223591, 0.703100,
		-0.685872, -0.541353, 0.486330,
		29.503576, 24.489279, 21.965189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.341475, 24.331570, 21.838173>,  <29.983686, 24.868225, 21.624758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.341475, 24.331570, 21.838173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.952402, 24.246727, 21.800426>,  <29.718960, 24.195822, 21.777779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.952402, 24.246727, 21.800426>,  <30.341475, 24.331570, 21.838173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.952402, 24.246727, 21.800426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231653, -0.860174, -0.454354,
		0.015200, -0.463801, 0.885809,
		-0.972680, -0.212107, -0.094366,
		29.660599, 24.183096, 21.772116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.229725, 23.717337, 22.267658>,  <30.341475, 24.331570, 21.838173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.229725, 23.717337, 22.267658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.959969, 23.699593, 21.972843>,  <29.798115, 23.688946, 21.795954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.959969, 23.699593, 21.972843>,  <30.229725, 23.717337, 22.267658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.959969, 23.699593, 21.972843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343247, -0.902614, -0.259748,
		-0.653740, -0.428158, 0.623943,
		-0.674393, -0.044358, -0.737039,
		29.757650, 23.686285, 21.751732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.141027, 23.029276, 22.273548>,  <30.229725, 23.717337, 22.267658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.141027, 23.029276, 22.273548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.911642, 23.112457, 21.956589>,  <29.774010, 23.162365, 21.766413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.911642, 23.112457, 21.956589>,  <30.141027, 23.029276, 22.273548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.911642, 23.112457, 21.956589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018403, -0.963733, -0.266235,
		-0.819023, -0.167258, 0.548840,
		-0.573465, 0.207952, -0.792397,
		29.739603, 23.174843, 21.718870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.489420, 22.659203, 22.392233>,  <30.141027, 23.029276, 22.273548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.489420, 22.659203, 22.392233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.556358, 22.697063, 21.999695>,  <29.596521, 22.719780, 21.764172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.556358, 22.697063, 21.999695>,  <29.489420, 22.659203, 22.392233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.556358, 22.697063, 21.999695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009370, -0.995183, -0.097584,
		-0.985854, 0.025526, -0.165651,
		0.167344, 0.094651, -0.981344,
		29.606562, 22.725458, 21.705292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.948196, 22.204563, 22.037035>,  <29.489420, 22.659203, 22.392233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.948196, 22.204563, 22.037035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.255730, 22.280018, 21.792637>,  <29.440248, 22.325291, 21.645998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.255730, 22.280018, 21.792637>,  <28.948196, 22.204563, 22.037035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.255730, 22.280018, 21.792637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016545, -0.961047, -0.275890,
		-0.639238, 0.202004, -0.742004,
		0.768831, 0.188636, -0.610995,
		29.486380, 22.336609, 21.609339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.821117, 21.775442, 21.523506>,  <28.948196, 22.204563, 22.037035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.821117, 21.775442, 21.523506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.200148, 21.867718, 21.435070>,  <29.427567, 21.923082, 21.382010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.200148, 21.867718, 21.435070>,  <28.821117, 21.775442, 21.523506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.200148, 21.867718, 21.435070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126580, -0.906328, -0.403170,
		-0.293386, 0.354049, -0.888017,
		0.947577, 0.230689, -0.221089,
		29.484421, 21.936924, 21.368744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.951555, 21.672186, 20.760723>,  <28.821117, 21.775442, 21.523506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.951555, 21.672186, 20.760723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.299837, 21.650021, 20.956192>,  <29.508806, 21.636723, 21.073473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.299837, 21.650021, 20.956192>,  <28.951555, 21.672186, 20.760723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.299837, 21.650021, 20.956192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130883, -0.931692, -0.338850,
		0.474069, 0.358998, -0.803977,
		0.870706, -0.055411, 0.488673,
		29.561049, 21.633398, 21.102795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.511858, 21.415819, 20.246695>,  <28.951555, 21.672186, 20.760723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.511858, 21.415819, 20.246695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.579426, 21.357956, 20.636677>,  <29.619967, 21.323238, 20.870667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.579426, 21.357956, 20.636677>,  <29.511858, 21.415819, 20.246695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.579426, 21.357956, 20.636677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008609, -0.989350, -0.145303,
		0.985592, 0.016151, -0.168365,
		0.168918, -0.144659, 0.974957,
		29.630102, 21.314558, 20.929163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.470346, 21.025835, 19.723162>,  <29.511858, 21.415819, 20.246695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.470346, 21.025835, 19.723162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.240164, 20.817509, 19.470940>,  <29.102055, 20.692513, 19.319607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.240164, 20.817509, 19.470940>,  <29.470346, 21.025835, 19.723162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.240164, 20.817509, 19.470940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362815, 0.853561, -0.373898,
		0.732951, 0.013613, -0.680146,
		-0.575456, -0.520816, -0.630557,
		29.067528, 20.661264, 19.281773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.653566, 21.235285, 19.074457>,  <29.470346, 21.025835, 19.723162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.653566, 21.235285, 19.074457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.272949, 21.114410, 19.051651>,  <29.044579, 21.041885, 19.037968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.272949, 21.114410, 19.051651>,  <29.653566, 21.235285, 19.074457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.272949, 21.114410, 19.051651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274796, 0.918773, -0.283451,
		0.138037, -0.254049, -0.957291,
		-0.951542, -0.302186, -0.057013,
		28.987486, 21.023754, 19.034548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.455011, 21.424175, 18.403044>,  <29.653566, 21.235285, 19.074457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.455011, 21.424175, 18.403044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.125576, 21.378082, 18.625187>,  <28.927916, 21.350426, 18.758472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.125576, 21.378082, 18.625187>,  <29.455011, 21.424175, 18.403044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.125576, 21.378082, 18.625187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371626, 0.849327, -0.374883,
		-0.428483, -0.515135, -0.742319,
		-0.823588, -0.115234, 0.555360,
		28.878500, 21.343512, 18.791796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.766197, 21.618410, 18.036970>,  <29.455011, 21.424175, 18.403044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.766197, 21.618410, 18.036970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.675203, 21.664001, 18.423805>,  <28.620607, 21.691357, 18.655907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.675203, 21.664001, 18.423805>,  <28.766197, 21.618410, 18.036970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.675203, 21.664001, 18.423805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427638, 0.880545, -0.204368,
		-0.874859, -0.460054, -0.151567,
		-0.227482, 0.113977, 0.967089,
		28.606958, 21.698195, 18.713932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.025095, 21.939457, 18.057047>,  <28.766197, 21.618410, 18.036970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.025095, 21.939457, 18.057047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.187174, 22.005856, 18.416660>,  <28.284420, 22.045694, 18.632429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.187174, 22.005856, 18.416660>,  <28.025095, 21.939457, 18.057047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.187174, 22.005856, 18.416660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358229, 0.933570, -0.010918,
		-0.841124, -0.317637, 0.437742,
		0.405195, 0.165995, 0.899034,
		28.308733, 22.055655, 18.686371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.511450, 22.250883, 18.536100>,  <28.025095, 21.939457, 18.057047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.511450, 22.250883, 18.536100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.856323, 22.343571, 18.716297>,  <28.063248, 22.399183, 18.824415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.856323, 22.343571, 18.716297>,  <27.511450, 22.250883, 18.536100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.856323, 22.343571, 18.716297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318225, 0.939642, 0.125719,
		-0.394168, -0.251750, 0.883886,
		0.862186, 0.231721, 0.450490,
		28.114979, 22.413088, 18.851444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.196833, 22.640751, 19.069777>,  <27.511450, 22.250883, 18.536100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.196833, 22.640751, 19.069777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.582125, 22.737606, 19.116348>,  <27.813299, 22.795719, 19.144291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.582125, 22.737606, 19.116348>,  <27.196833, 22.640751, 19.069777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.582125, 22.737606, 19.116348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267602, 0.903360, 0.335158,
		-0.024025, -0.353991, 0.934940,
		0.963230, 0.242139, 0.116432,
		27.871094, 22.810247, 19.151278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.314381, 22.931900, 19.764545>,  <27.196833, 22.640751, 19.069777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.314381, 22.931900, 19.764545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.608261, 23.069790, 19.530834>,  <27.784590, 23.152525, 19.390608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.608261, 23.069790, 19.530834>,  <27.314381, 22.931900, 19.764545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.608261, 23.069790, 19.530834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149375, 0.922335, 0.356351,
		0.661742, -0.174535, 0.729133,
		0.734700, 0.344727, -0.584277,
		27.828671, 23.173208, 19.355551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.764389, 23.271143, 20.215816>,  <27.314381, 22.931900, 19.764545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.764389, 23.271143, 20.215816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.821215, 23.429852, 19.853073>,  <27.855310, 23.525076, 19.635427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.821215, 23.429852, 19.853073>,  <27.764389, 23.271143, 20.215816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.821215, 23.429852, 19.853073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163303, 0.912991, 0.373872,
		0.976294, 0.094979, 0.194497,
		0.142064, 0.396771, -0.906858,
		27.863834, 23.548883, 19.581017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.206329, 23.916216, 20.369226>,  <27.764389, 23.271143, 20.215816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.206329, 23.916216, 20.369226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.044258, 23.964390, 20.006718>,  <27.947016, 23.993294, 19.789213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.044258, 23.964390, 20.006718>,  <28.206329, 23.916216, 20.369226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.044258, 23.964390, 20.006718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179326, 0.961560, 0.207954,
		0.896478, 0.246776, -0.368006,
		-0.405178, 0.120433, -0.906271,
		27.922705, 24.000519, 19.734837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.521614, 24.458990, 20.098654>,  <28.206329, 23.916216, 20.369226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.521614, 24.458990, 20.098654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.179996, 24.435421, 19.891914>,  <27.975025, 24.421280, 19.767870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.179996, 24.435421, 19.891914>,  <28.521614, 24.458990, 20.098654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.179996, 24.435421, 19.891914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089486, 0.995394, 0.034389,
		0.512444, 0.075621, -0.855385,
		-0.854045, -0.058922, -0.516850,
		27.923782, 24.417744, 19.736858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.691067, 24.968678, 19.687752>,  <28.521614, 24.458990, 20.098654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.691067, 24.968678, 19.687752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.297834, 24.895840, 19.695683>,  <28.061895, 24.852137, 19.700441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.297834, 24.895840, 19.695683>,  <28.691067, 24.968678, 19.687752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.297834, 24.895840, 19.695683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181063, 0.982435, 0.045131,
		-0.027696, 0.040778, -0.998784,
		-0.983081, -0.182093, 0.019826,
		28.002911, 24.841211, 19.701630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.381126, 25.240444, 19.037495>,  <28.691067, 24.968678, 19.687752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.381126, 25.240444, 19.037495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.115286, 25.210003, 19.334820>,  <27.955782, 25.191738, 19.513214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.115286, 25.210003, 19.334820>,  <28.381126, 25.240444, 19.037495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.115286, 25.210003, 19.334820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060573, 0.997013, 0.047922,
		-0.744740, -0.013176, -0.667224,
		-0.664600, -0.076105, 0.743313,
		27.915905, 25.187172, 19.557814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.974573, 25.840666, 18.885855>,  <28.381126, 25.240444, 19.037495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.974573, 25.840666, 18.885855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.888550, 25.733662, 19.261555>,  <27.836935, 25.669460, 19.486975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.888550, 25.733662, 19.261555>,  <27.974573, 25.840666, 18.885855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.888550, 25.733662, 19.261555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086614, 0.963187, 0.254495,
		-0.972752, -0.026621, -0.230314,
		-0.215061, -0.267509, 0.939248,
		27.824032, 25.653408, 19.543329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.397652, 26.259089, 19.127237>,  <27.974573, 25.840666, 18.885855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.397652, 26.259089, 19.127237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.574141, 26.138245, 19.465244>,  <27.680035, 26.065739, 19.668049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.574141, 26.138245, 19.465244>,  <27.397652, 26.259089, 19.127237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.574141, 26.138245, 19.465244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059143, 0.929794, 0.363299,
		-0.895447, -0.210272, 0.392379,
		0.441223, -0.302108, 0.845017,
		27.706507, 26.047613, 19.718750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.043205, 26.570654, 19.566698>,  <27.397652, 26.259089, 19.127237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.043205, 26.570654, 19.566698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.351486, 26.461388, 19.796967>,  <27.536455, 26.395828, 19.935127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.351486, 26.461388, 19.796967>,  <27.043205, 26.570654, 19.566698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.351486, 26.461388, 19.796967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061445, 0.867376, 0.493845,
		-0.634226, -0.415980, 0.651704,
		0.770702, -0.273165, 0.575672,
		27.582697, 26.379438, 19.969667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.742878, 26.676174, 20.208876>,  <27.043205, 26.570654, 19.566698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.742878, 26.676174, 20.208876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.136435, 26.647236, 20.274261>,  <27.372568, 26.629873, 20.313494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.136435, 26.647236, 20.274261>,  <26.742878, 26.676174, 20.208876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.136435, 26.647236, 20.274261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010538, 0.889378, 0.457051,
		-0.178448, -0.451412, 0.874291,
		0.983893, -0.072347, 0.163465,
		27.431602, 26.625532, 20.323301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.750629, 26.876436, 20.945312>,  <26.742878, 26.676174, 20.208876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.750629, 26.876436, 20.945312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.101776, 26.930927, 20.761665>,  <27.312464, 26.963623, 20.651476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.101776, 26.930927, 20.761665>,  <26.750629, 26.876436, 20.945312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.101776, 26.930927, 20.761665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059077, 0.920560, 0.386107,
		0.475246, -0.366074, 0.800082,
		0.877867, 0.136230, -0.459119,
		27.365137, 26.971796, 20.623930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.157282, 27.210733, 21.436367>,  <26.750629, 26.876436, 20.945312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.157282, 27.210733, 21.436367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.362074, 27.281799, 21.100197>,  <27.484949, 27.324440, 20.898495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.362074, 27.281799, 21.100197>,  <27.157282, 27.210733, 21.436367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.362074, 27.281799, 21.100197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184069, 0.932960, 0.309362,
		0.839045, -0.313083, 0.444952,
		0.511979, 0.177667, -0.840424,
		27.515667, 27.335100, 20.848070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.807423, 27.443806, 21.693806>,  <27.157282, 27.210733, 21.436367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.807423, 27.443806, 21.693806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.746313, 27.583282, 21.323925>,  <27.709648, 27.666969, 21.101997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.746313, 27.583282, 21.323925>,  <27.807423, 27.443806, 21.693806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.746313, 27.583282, 21.323925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070631, 0.937145, 0.341716,
		0.985734, -0.013107, -0.167800,
		-0.152774, 0.348693, -0.924702,
		27.700481, 27.687891, 21.046515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.259666, 28.012184, 21.610573>,  <27.807423, 27.443806, 21.693806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.259666, 28.012184, 21.610573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.982803, 28.067806, 21.327282>,  <27.816687, 28.101179, 21.157309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.982803, 28.067806, 21.327282>,  <28.259666, 28.012184, 21.610573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.982803, 28.067806, 21.327282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018552, 0.977513, 0.210056,
		0.721509, 0.158531, -0.674013,
		-0.692157, 0.139053, -0.708226,
		27.775156, 28.109522, 21.114815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.612219, 28.632286, 21.250620>,  <28.259666, 28.012184, 21.610573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.612219, 28.632286, 21.250620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.222034, 28.596519, 21.170139>,  <27.987925, 28.575060, 21.121851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.222034, 28.596519, 21.170139>,  <28.612219, 28.632286, 21.250620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.222034, 28.596519, 21.170139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108487, 0.990386, 0.085829,
		0.191593, 0.105551, -0.975782,
		-0.975460, -0.089415, -0.201202,
		27.929396, 28.569695, 21.109779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.416107, 29.157873, 20.755760>,  <28.612219, 28.632286, 21.250620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.416107, 29.157873, 20.755760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.054996, 29.058048, 20.895882>,  <27.838329, 28.998154, 20.979954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.054996, 29.058048, 20.895882>,  <28.416107, 29.157873, 20.755760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.054996, 29.058048, 20.895882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218087, 0.967593, 0.127285,
		-0.370715, 0.038514, -0.927948,
		-0.902778, -0.249560, 0.350302,
		27.784163, 28.983181, 21.000973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.934898, 29.633898, 20.531605>,  <28.416107, 29.157873, 20.755760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.934898, 29.633898, 20.531605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.730812, 29.490498, 20.844311>,  <27.608360, 29.404457, 21.031935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.730812, 29.490498, 20.844311>,  <27.934898, 29.633898, 20.531605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.730812, 29.490498, 20.844311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521738, 0.851637, 0.050031,
		-0.683717, -0.382350, -0.621563,
		-0.510217, -0.358500, 0.781765,
		27.577747, 29.382948, 21.078840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.250153, 29.689539, 20.417418>,  <27.934898, 29.633898, 20.531605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.250153, 29.689539, 20.417418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.250067, 29.638763, 20.814182>,  <27.250015, 29.608297, 21.052240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.250067, 29.638763, 20.814182>,  <27.250153, 29.689539, 20.417418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.250067, 29.638763, 20.814182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714115, 0.694385, 0.088709,
		-0.700028, -0.708319, -0.090798,
		-0.000214, -0.126939, 0.991911,
		27.250002, 29.600681, 21.111755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.625946, 29.792473, 20.605263>,  <27.250153, 29.689539, 20.417418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.625946, 29.792473, 20.605263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.805086, 29.859798, 20.956512>,  <26.912571, 29.900194, 21.167261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.805086, 29.859798, 20.956512>,  <26.625946, 29.792473, 20.605263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.805086, 29.859798, 20.956512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649050, 0.736685, 0.189816,
		-0.614951, -0.654954, 0.439170,
		0.447850, 0.168316, 0.878123,
		26.939442, 29.910294, 21.219950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.041355, 29.813704, 21.028940>,  <26.625946, 29.792473, 20.605263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.041355, 29.813704, 21.028940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.338539, 29.982971, 21.236378>,  <26.516850, 30.084532, 21.360840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.338539, 29.982971, 21.236378>,  <26.041355, 29.813704, 21.028940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.338539, 29.982971, 21.236378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580258, 0.793400, 0.183895,
		-0.333632, -0.437544, 0.835012,
		0.742960, 0.423169, 0.518592,
		26.561428, 30.109922, 21.391954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.768711, 30.113037, 21.636545>,  <26.041355, 29.813704, 21.028940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.768711, 30.113037, 21.636545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.109032, 30.309425, 21.561623>,  <26.313225, 30.427258, 21.516670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.109032, 30.309425, 21.561623>,  <25.768711, 30.113037, 21.636545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.109032, 30.309425, 21.561623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478113, 0.871159, 0.111759,
		0.218042, -0.005532, 0.975924,
		0.850803, 0.490969, -0.187304,
		26.364273, 30.456717, 21.505432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.652800, 30.721725, 21.987339>,  <25.768711, 30.113037, 21.636545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.652800, 30.721725, 21.987339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.946190, 30.773636, 21.720455>,  <26.122225, 30.804783, 21.560324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.946190, 30.773636, 21.720455>,  <25.652800, 30.721725, 21.987339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.946190, 30.773636, 21.720455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419097, 0.859157, -0.293610,
		0.535135, 0.494982, 0.684560,
		0.733477, 0.129776, -0.667211,
		26.166233, 30.812569, 21.520292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.789276, 31.422138, 21.982790>,  <25.652800, 30.721725, 21.987339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.789276, 31.422138, 21.982790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.925009, 31.289600, 21.630638>,  <26.006449, 31.210077, 21.419348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.925009, 31.289600, 21.630638>,  <25.789276, 31.422138, 21.982790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.925009, 31.289600, 21.630638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434542, 0.774847, -0.459113,
		0.834283, 0.538353, 0.118947,
		0.339331, -0.331342, -0.880379,
		26.026808, 31.190197, 21.366524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.189791, 32.026245, 21.669331>,  <25.789276, 31.422138, 21.982790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.189791, 32.026245, 21.669331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.068871, 31.766552, 21.390156>,  <25.996319, 31.610737, 21.222651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.068871, 31.766552, 21.390156>,  <26.189791, 32.026245, 21.669331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.068871, 31.766552, 21.390156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284736, 0.760267, -0.583883,
		0.909692, 0.022219, -0.414688,
		-0.302301, -0.649230, -0.697936,
		25.978180, 31.571783, 21.180775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.389753, 32.310997, 21.116577>,  <26.189791, 32.026245, 21.669331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.389753, 32.310997, 21.116577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.091995, 32.072968, 20.995407>,  <25.913340, 31.930151, 20.922705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.091995, 32.072968, 20.995407>,  <26.389753, 32.310997, 21.116577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.091995, 32.072968, 20.995407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399147, 0.760234, -0.512568,
		0.535310, -0.260641, -0.803436,
		-0.744395, -0.595072, -0.302926,
		25.868677, 31.894445, 20.904530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.222166, 32.593124, 20.442913>,  <26.389753, 32.310997, 21.116577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.222166, 32.593124, 20.442913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.907980, 32.364635, 20.538197>,  <25.719467, 32.227543, 20.595366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.907980, 32.364635, 20.538197>,  <26.222166, 32.593124, 20.442913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.907980, 32.364635, 20.538197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612872, 0.664291, -0.427907,
		0.086192, -0.482098, -0.871867,
		-0.785467, -0.571226, 0.238208,
		25.672340, 32.193268, 20.609659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.757599, 32.835304, 20.002340>,  <26.222166, 32.593124, 20.442913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.757599, 32.835304, 20.002340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.548374, 32.648544, 20.287552>,  <25.422838, 32.536488, 20.458679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.548374, 32.648544, 20.287552>,  <25.757599, 32.835304, 20.002340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.548374, 32.648544, 20.287552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759938, 0.634260, -0.142156,
		-0.385874, -0.616215, -0.686571,
		-0.523063, -0.466897, 0.713030,
		25.391455, 32.508476, 20.501461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.108826, 32.639561, 19.741356>,  <25.757599, 32.835304, 20.002340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.108826, 32.639561, 19.741356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.059019, 32.665142, 20.137417>,  <25.029135, 32.680492, 20.375053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.059019, 32.665142, 20.137417>,  <25.108826, 32.639561, 19.741356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.059019, 32.665142, 20.137417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831984, 0.537024, -0.139312,
		-0.540647, -0.841139, -0.013656,
		-0.124514, 0.063957, 0.990154,
		25.021664, 32.684330, 20.434464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.437281, 32.481377, 19.859737>,  <25.108826, 32.639561, 19.741356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.437281, 32.481377, 19.859737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.560711, 32.667160, 20.191776>,  <24.634769, 32.778629, 20.390999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.560711, 32.667160, 20.191776>,  <24.437281, 32.481377, 19.859737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.560711, 32.667160, 20.191776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803996, 0.593701, -0.033314,
		-0.508303, -0.657115, 0.556623,
		0.308576, 0.464456, 0.830097,
		24.653284, 32.806496, 20.440805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.854794, 32.622490, 20.287951>,  <24.437281, 32.481377, 19.859737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.854794, 32.622490, 20.287951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.106798, 32.882256, 20.458290>,  <24.258001, 33.038116, 20.560493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.106798, 32.882256, 20.458290>,  <23.854794, 32.622490, 20.287951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.106798, 32.882256, 20.458290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759543, 0.629532, 0.163656,
		-0.161806, -0.426557, 0.889869,
		0.630010, 0.649414, 0.425851,
		24.295801, 33.077080, 20.586046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.424469, 32.889404, 20.831860>,  <23.854794, 32.622490, 20.287951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.424469, 32.889404, 20.831860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.715122, 33.161530, 20.793545>,  <23.889513, 33.324806, 20.770555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.715122, 33.161530, 20.793545>,  <23.424469, 32.889404, 20.831860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.715122, 33.161530, 20.793545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665381, 0.731585, 0.148497,
		0.171100, -0.044169, 0.984263,
		0.726631, 0.680318, -0.095785,
		23.933111, 33.365623, 20.764809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.474003, 33.369644, 21.474375>,  <23.424469, 32.889404, 20.831860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.474003, 33.369644, 21.474375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.653692, 33.555157, 21.168930>,  <23.761505, 33.666466, 20.985662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.653692, 33.555157, 21.168930>,  <23.474003, 33.369644, 21.474375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.653692, 33.555157, 21.168930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532213, 0.825421, 0.188229,
		0.717599, 0.321848, 0.617629,
		0.449223, 0.463783, -0.763613,
		23.788460, 33.694290, 20.939846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.828705, 33.919270, 21.845474>,  <23.474003, 33.369644, 21.474375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.828705, 33.919270, 21.845474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.757223, 33.993858, 21.459045>,  <23.714334, 34.038612, 21.227188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.757223, 33.993858, 21.459045>,  <23.828705, 33.919270, 21.845474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.757223, 33.993858, 21.459045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776296, 0.576539, 0.254885,
		0.604507, 0.795506, 0.041727,
		-0.178706, 0.186472, -0.966071,
		23.703611, 34.049801, 21.169224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.688536, 34.658142, 21.748705>,  <23.828705, 33.919270, 21.845474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.688536, 34.658142, 21.748705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.466520, 34.469025, 21.474945>,  <23.333311, 34.355556, 21.310690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.466520, 34.469025, 21.474945>,  <23.688536, 34.658142, 21.748705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.466520, 34.469025, 21.474945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811027, 0.490416, 0.318948,
		0.184845, 0.732094, -0.655645,
		-0.555039, -0.472789, -0.684399,
		23.300009, 34.327187, 21.269625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.452532, 35.203152, 21.278303>,  <23.688536, 34.658142, 21.748705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.452532, 35.203152, 21.278303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.213236, 34.884823, 21.315781>,  <23.069658, 34.693825, 21.338266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.213236, 34.884823, 21.315781>,  <23.452532, 35.203152, 21.278303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.213236, 34.884823, 21.315781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683322, 0.567721, 0.459090,
		-0.418545, 0.210624, -0.883435,
		-0.598241, -0.795820, 0.093692,
		23.033764, 34.646076, 21.343889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.712261, 35.673576, 21.655739>,  <23.452532, 35.203152, 21.278303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.712261, 35.673576, 21.655739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.802832, 35.491394, 21.311344>,  <23.857174, 35.382084, 21.104708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.802832, 35.491394, 21.311344>,  <23.712261, 35.673576, 21.655739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.802832, 35.491394, 21.311344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432517, -0.745000, 0.507843,
		-0.872732, -0.487379, 0.028304,
		0.226425, -0.455452, -0.860985,
		23.870760, 35.354759, 21.053049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.762938, 36.514252, 21.508356>,  <23.712261, 35.673576, 21.655739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.762938, 36.514252, 21.508356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.002550, 36.221588, 21.638485>,  <24.146317, 36.045990, 21.716562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.002550, 36.221588, 21.638485>,  <23.762938, 36.514252, 21.508356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.002550, 36.221588, 21.638485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161031, 0.287907, 0.944022,
		-0.784367, -0.617885, 0.054645,
		0.599030, -0.731660, 0.325323,
		24.182259, 36.002090, 21.736082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.650959, 36.405556, 22.191891>,  <23.762938, 36.514252, 21.508356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.650959, 36.405556, 22.191891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.949127, 36.141521, 22.229061>,  <24.128029, 35.983101, 22.251364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.949127, 36.141521, 22.229061>,  <23.650959, 36.405556, 22.191891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.949127, 36.141521, 22.229061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054018, 0.198765, 0.978557,
		-0.664401, -0.724418, 0.183820,
		0.745422, -0.660084, 0.092928,
		24.172754, 35.943497, 22.256939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.193645, 36.239044, 22.831272>,  <23.650959, 36.405556, 22.191891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.193645, 36.239044, 22.831272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.909945, 35.969440, 22.913895>,  <22.739723, 35.807678, 22.963469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.909945, 35.969440, 22.913895>,  <23.193645, 36.239044, 22.831272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.909945, 35.969440, 22.913895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677261, 0.732804, 0.065696,
		-0.195644, -0.093296, -0.976227,
		-0.709254, -0.674013, 0.206554,
		22.697168, 35.767235, 22.975861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.427275, 36.228931, 22.870693>,  <23.193645, 36.239044, 22.831272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.427275, 36.228931, 22.870693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.078594, 36.360558, 22.725449>,  <21.869385, 36.439533, 22.638302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.078594, 36.360558, 22.725449>,  <22.427275, 36.228931, 22.870693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.078594, 36.360558, 22.725449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487067, 0.663258, -0.568202,
		0.053858, -0.672162, -0.738442,
		-0.871702, 0.329069, -0.363110,
		21.817083, 36.459278, 22.616516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.560057, 36.434216, 22.189131>,  <22.427275, 36.228931, 22.870693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.560057, 36.434216, 22.189131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.223295, 36.623516, 22.292847>,  <22.021238, 36.737095, 22.355076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.223295, 36.623516, 22.292847>,  <22.560057, 36.434216, 22.189131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.223295, 36.623516, 22.292847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285504, 0.798383, -0.530162,
		-0.457913, -0.372317, -0.807277,
		-0.841904, 0.473249, 0.259292,
		21.970724, 36.765491, 22.370634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.185390, 36.426849, 21.569092>,  <22.560057, 36.434216, 22.189131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.185390, 36.426849, 21.569092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.132206, 36.720711, 21.835205>,  <22.100296, 36.897026, 21.994873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.132206, 36.720711, 21.835205>,  <22.185390, 36.426849, 21.569092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.132206, 36.720711, 21.835205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580550, 0.601767, -0.548487,
		-0.803295, 0.313303, -0.506515,
		-0.132962, 0.734654, 0.665285,
		22.092318, 36.941109, 22.034790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.796682, 36.942207, 21.181694>,  <22.185390, 36.426849, 21.569092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.796682, 36.942207, 21.181694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.974533, 37.100307, 21.503212>,  <22.081244, 37.195168, 21.696123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.974533, 37.100307, 21.503212>,  <21.796682, 36.942207, 21.181694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.974533, 37.100307, 21.503212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546395, 0.591395, -0.593047,
		-0.709761, 0.702874, 0.046987,
		0.444625, 0.395248, 0.803796,
		22.107920, 37.218884, 21.744350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.652296, 37.590034, 21.135216>,  <21.796682, 36.942207, 21.181694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.652296, 37.590034, 21.135216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.977188, 37.564323, 21.367130>,  <22.172123, 37.548897, 21.506279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.977188, 37.564323, 21.367130>,  <21.652296, 37.590034, 21.135216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.977188, 37.564323, 21.367130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464357, 0.672814, -0.575929,
		-0.353067, 0.737014, 0.576328,
		0.812229, -0.064280, 0.579786,
		22.220858, 37.545040, 21.541065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.869116, 38.209320, 21.216261>,  <21.652296, 37.590034, 21.135216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.869116, 38.209320, 21.216261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.201717, 38.032528, 21.350872>,  <22.401279, 37.926453, 21.431639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.201717, 38.032528, 21.350872>,  <21.869116, 38.209320, 21.216261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.201717, 38.032528, 21.350872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555465, 0.653312, -0.514434,
		0.007512, 0.614685, 0.788737,
		0.831506, -0.441980, 0.336528,
		22.451170, 37.899933, 21.451830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.290916, 38.690422, 21.500202>,  <21.869116, 38.209320, 21.216261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.290916, 38.690422, 21.500202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.549072, 38.404842, 21.391575>,  <22.703966, 38.233494, 21.326399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.549072, 38.404842, 21.391575>,  <22.290916, 38.690422, 21.500202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.549072, 38.404842, 21.391575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446262, 0.640957, -0.624520,
		0.619938, 0.281869, 0.732276,
		0.645389, -0.713950, -0.271566,
		22.742689, 38.190659, 21.310104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.899992, 38.991199, 21.449757>,  <22.290916, 38.690422, 21.500202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.899992, 38.991199, 21.449757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.967201, 38.660400, 21.235153>,  <23.007526, 38.461922, 21.106392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.967201, 38.660400, 21.235153>,  <22.899992, 38.991199, 21.449757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.967201, 38.660400, 21.235153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517273, 0.537265, -0.666165,
		0.839164, -0.165590, 0.518057,
		0.168024, -0.826998, -0.536509,
		23.017609, 38.412300, 21.074200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.662569, 38.882431, 21.271135>,  <22.899992, 38.991199, 21.449757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.662569, 38.882431, 21.271135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.488476, 38.628895, 21.015381>,  <23.384020, 38.476772, 20.861929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.488476, 38.628895, 21.015381>,  <23.662569, 38.882431, 21.271135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.488476, 38.628895, 21.015381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618480, 0.305592, -0.723944,
		0.654259, -0.710532, 0.259016,
		-0.435232, -0.633843, -0.639387,
		23.357906, 38.438744, 20.823565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.241707, 38.626621, 20.931799>,  <23.662569, 38.882431, 21.271135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.241707, 38.626621, 20.931799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.936258, 38.539417, 20.688702>,  <23.752989, 38.487095, 20.542843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.936258, 38.539417, 20.688702>,  <24.241707, 38.626621, 20.931799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.936258, 38.539417, 20.688702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519160, 0.352295, -0.778692,
		0.383868, -0.910143, -0.155838,
		-0.763622, -0.218010, -0.607744,
		23.707172, 38.474014, 20.506378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.565197, 38.345356, 20.286018>,  <24.241707, 38.626621, 20.931799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.565197, 38.345356, 20.286018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.191822, 38.423393, 20.165596>,  <23.967796, 38.470215, 20.093342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.191822, 38.423393, 20.165596>,  <24.565197, 38.345356, 20.286018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.191822, 38.423393, 20.165596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355233, 0.385566, -0.851557,
		-0.050057, -0.901819, -0.429205,
		-0.933437, 0.195094, -0.301055,
		23.911791, 38.481922, 20.075279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.565845, 38.067909, 19.622644>,  <24.565197, 38.345356, 20.286018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.565845, 38.067909, 19.622644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.294468, 38.361279, 19.639599>,  <24.131641, 38.537300, 19.649773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.294468, 38.361279, 19.639599>,  <24.565845, 38.067909, 19.622644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.294468, 38.361279, 19.639599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193225, 0.233811, -0.952889,
		-0.708785, -0.638292, -0.300344,
		-0.678445, 0.733428, 0.042388,
		24.090935, 38.581306, 19.652315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.264488, 38.062935, 18.990171>,  <24.565845, 38.067909, 19.622644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.264488, 38.062935, 18.990171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.127981, 38.407288, 19.141129>,  <24.046078, 38.613899, 19.231703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.127981, 38.407288, 19.141129>,  <24.264488, 38.062935, 18.990171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.127981, 38.407288, 19.141129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077087, 0.425776, -0.901539,
		-0.936801, -0.278572, -0.211665,
		-0.341265, 0.860879, 0.377393,
		24.025602, 38.665550, 19.254347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.762192, 38.418545, 18.453955>,  <24.264488, 38.062935, 18.990171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.762192, 38.418545, 18.453955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.896481, 38.714458, 18.687195>,  <23.977055, 38.892006, 18.827139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.896481, 38.714458, 18.687195>,  <23.762192, 38.418545, 18.453955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.896481, 38.714458, 18.687195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432508, 0.428855, -0.793108,
		-0.836796, 0.518459, -0.175987,
		0.335721, 0.739786, 0.583102,
		23.997196, 38.936394, 18.862125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.580503, 38.945522, 18.102304>,  <23.762192, 38.418545, 18.453955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.580503, 38.945522, 18.102304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.850863, 39.087063, 18.360901>,  <24.013079, 39.171986, 18.516058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.850863, 39.087063, 18.360901>,  <23.580503, 38.945522, 18.102304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.850863, 39.087063, 18.360901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494514, 0.432669, -0.753826,
		-0.546457, 0.829210, 0.117458,
		0.675900, 0.353848, 0.646491,
		24.053633, 39.193218, 18.554848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.515732, 39.754848, 18.054468>,  <23.580503, 38.945522, 18.102304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.515732, 39.754848, 18.054468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.860826, 39.658833, 18.232487>,  <24.067883, 39.601223, 18.339298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.860826, 39.658833, 18.232487>,  <23.515732, 39.754848, 18.054468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.860826, 39.658833, 18.232487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490464, 0.611356, -0.621038,
		-0.123009, 0.754072, 0.645170,
		0.862736, -0.240039, 0.445047,
		24.119648, 39.586823, 18.366001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.004347, 40.405178, 18.069798>,  <23.515732, 39.754848, 18.054468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.004347, 40.405178, 18.069798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.243307, 40.090214, 18.130585>,  <24.386684, 39.901234, 18.167057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.243307, 40.090214, 18.130585>,  <24.004347, 40.405178, 18.069798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.243307, 40.090214, 18.130585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695955, 0.414900, -0.586092,
		0.398444, 0.455896, 0.795865,
		0.597402, -0.787411, 0.151969,
		24.422527, 39.853989, 18.176176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.661848, 40.661106, 18.280855>,  <24.004347, 40.405178, 18.069798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.661848, 40.661106, 18.280855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.733829, 40.310822, 18.101635>,  <24.777018, 40.100651, 17.994102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.733829, 40.310822, 18.101635>,  <24.661848, 40.661106, 18.280855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.733829, 40.310822, 18.101635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666205, 0.443620, -0.599476,
		0.723731, -0.190617, 0.663233,
		0.179954, -0.875709, -0.448052,
		24.787815, 40.048107, 17.967220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.417704, 40.622112, 18.278450>,  <24.661848, 40.661106, 18.280855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.417704, 40.622112, 18.278450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.239262, 40.383636, 18.011452>,  <25.132196, 40.240551, 17.851254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.239262, 40.383636, 18.011452>,  <25.417704, 40.622112, 18.278450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.239262, 40.383636, 18.011452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487363, 0.463717, -0.739894,
		0.750645, -0.655383, 0.083694,
		-0.446104, -0.596187, -0.667496,
		25.105431, 40.204781, 17.811203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.968058, 40.442787, 17.938675>,  <25.417704, 40.622112, 18.278450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.968058, 40.442787, 17.938675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.661154, 40.329777, 17.708374>,  <25.477011, 40.261971, 17.570194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.661154, 40.329777, 17.708374>,  <25.968058, 40.442787, 17.938675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.661154, 40.329777, 17.708374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406153, 0.480718, -0.777143,
		0.496349, -0.830109, -0.254078,
		-0.767253, -0.282540, -0.575755,
		25.430977, 40.245018, 17.535648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.297890, 40.174393, 17.283165>,  <25.968058, 40.442787, 17.938675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.297890, 40.174393, 17.283165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.924612, 40.266376, 17.172695>,  <25.700645, 40.321568, 17.106413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.924612, 40.266376, 17.172695>,  <26.297890, 40.174393, 17.283165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.924612, 40.266376, 17.172695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347740, 0.383803, -0.855437,
		-0.090717, -0.894324, -0.438127,
		-0.933192, 0.229957, -0.276175,
		25.644655, 40.335365, 17.089842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.149977, 39.779659, 16.730762>,  <26.297890, 40.174393, 17.283165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.149977, 39.779659, 16.730762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.911505, 40.099785, 16.705250>,  <25.768421, 40.291859, 16.689941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.911505, 40.099785, 16.705250>,  <26.149977, 39.779659, 16.730762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.911505, 40.099785, 16.705250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344648, 0.183368, -0.920649,
		-0.725112, -0.570855, -0.385146,
		-0.596180, 0.800313, -0.063782,
		25.732651, 40.339878, 16.686115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.865599, 39.740074, 16.107595>,  <26.149977, 39.779659, 16.730762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.865599, 39.740074, 16.107595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.879433, 40.120270, 16.231129>,  <25.887733, 40.348385, 16.305248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.879433, 40.120270, 16.231129>,  <25.865599, 39.740074, 16.107595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.879433, 40.120270, 16.231129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558689, 0.237838, -0.794544,
		-0.828656, 0.200021, -0.522801,
		0.034584, 0.950487, 0.308835,
		25.889809, 40.405415, 16.323780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.939775, 40.240654, 15.489604>,  <25.865599, 39.740074, 16.107595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.939775, 40.240654, 15.489604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.023201, 40.453625, 15.817758>,  <26.073256, 40.581406, 16.014650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.023201, 40.453625, 15.817758>,  <25.939775, 40.240654, 15.489604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.023201, 40.453625, 15.817758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487503, 0.670594, -0.559146,
		-0.847846, 0.516556, -0.119697,
		0.208562, 0.532422, 0.820383,
		26.085770, 40.613350, 16.063873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.460096, 39.668743, 15.432266>,  <25.939775, 40.240654, 15.489604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.460096, 39.668743, 15.432266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.614304, 39.890011, 15.136867>,  <25.706827, 40.022770, 14.959627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.614304, 39.890011, 15.136867>,  <25.460096, 39.668743, 15.432266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.614304, 39.890011, 15.136867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872819, -0.040966, -0.486323,
		-0.299272, 0.832061, 0.467024,
		0.385518, 0.553169, -0.738498,
		25.729959, 40.055962, 14.915318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.223583, 40.389359, 15.288844>,  <25.460096, 39.668743, 15.432266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.223583, 40.389359, 15.288844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.315783, 40.198250, 14.949761>,  <25.371101, 40.083584, 14.746312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.315783, 40.198250, 14.949761>,  <25.223583, 40.389359, 15.288844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.315783, 40.198250, 14.949761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937691, 0.123727, -0.324697,
		0.260015, 0.869727, -0.419484,
		0.230497, -0.477772, -0.847706,
		25.384932, 40.054916, 14.695450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.173098, 40.892982, 14.762964>,  <25.223583, 40.389359, 15.288844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.173098, 40.892982, 14.762964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.112116, 40.527046, 14.613397>,  <25.075527, 40.307484, 14.523656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.112116, 40.527046, 14.613397>,  <25.173098, 40.892982, 14.762964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.112116, 40.527046, 14.613397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831963, 0.323021, -0.451105,
		0.533475, 0.242314, -0.810363,
		-0.152455, -0.914845, -0.373920,
		25.066380, 40.252594, 14.501221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.145874, 40.981174, 14.070558>,  <25.173098, 40.892982, 14.762964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.145874, 40.981174, 14.070558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.933510, 40.665733, 14.194642>,  <24.806091, 40.476467, 14.269093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.933510, 40.665733, 14.194642>,  <25.145874, 40.981174, 14.070558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.933510, 40.665733, 14.194642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780327, 0.312180, -0.541880,
		0.330491, -0.529754, -0.781112,
		-0.530911, -0.788609, 0.310209,
		24.774237, 40.429150, 14.287705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.395840, 40.776009, 13.730983>,  <25.145874, 40.981174, 14.070558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.395840, 40.776009, 13.730983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.036196, 40.796013, 13.557038>,  <23.820410, 40.808018, 13.452672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.036196, 40.796013, 13.557038>,  <24.395840, 40.776009, 13.730983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.036196, 40.796013, 13.557038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437698, -0.114265, 0.891832,
		-0.005085, 0.992190, 0.124628,
		-0.899108, 0.050014, -0.434861,
		23.766464, 40.811016, 13.426580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.040266, 41.317200, 14.098879>,  <24.395840, 40.776009, 13.730983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.040266, 41.317200, 14.098879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.819210, 41.022472, 13.943089>,  <23.686577, 40.845634, 13.849616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.819210, 41.022472, 13.943089>,  <24.040266, 41.317200, 14.098879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.819210, 41.022472, 13.943089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402396, -0.173341, 0.898905,
		-0.729841, 0.653492, -0.200697,
		-0.552639, -0.736818, -0.389474,
		23.653418, 40.801426, 13.826247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.236681, 41.483421, 14.166705>,  <24.040266, 41.317200, 14.098879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.236681, 41.483421, 14.166705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.332321, 41.095032, 14.169265>,  <23.389706, 40.862000, 14.170800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.332321, 41.095032, 14.169265>,  <23.236681, 41.483421, 14.166705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.332321, 41.095032, 14.169265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531994, -0.125484, 0.837399,
		-0.812290, -0.203625, -0.546555,
		0.239099, -0.970974, 0.006398,
		23.404051, 40.803738, 14.171185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.662853, 41.072304, 14.567178>,  <23.236681, 41.483421, 14.166705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.662853, 41.072304, 14.567178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.972443, 40.819706, 14.585822>,  <23.158197, 40.668148, 14.597009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.972443, 40.819706, 14.585822>,  <22.662853, 41.072304, 14.567178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.972443, 40.819706, 14.585822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345350, -0.359274, 0.866981,
		-0.530752, -0.687117, -0.496157,
		0.773974, -0.631500, 0.046610,
		23.204636, 40.630257, 14.599805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.396217, 40.386326, 14.742514>,  <22.662853, 41.072304, 14.567178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.396217, 40.386326, 14.742514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.767208, 40.429298, 14.885758>,  <22.989803, 40.455082, 14.971705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.767208, 40.429298, 14.885758>,  <22.396217, 40.386326, 14.742514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.767208, 40.429298, 14.885758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315110, -0.290903, 0.903372,
		0.201224, -0.950702, -0.235954,
		0.927478, 0.107429, 0.358112,
		23.045452, 40.461529, 14.993192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.705477, 39.714699, 15.019811>,  <22.396217, 40.386326, 14.742514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.705477, 39.714699, 15.019811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.862751, 40.029881, 15.209352>,  <22.957115, 40.218990, 15.323076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.862751, 40.029881, 15.209352>,  <22.705477, 39.714699, 15.019811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.862751, 40.029881, 15.209352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315518, -0.368439, 0.874472,
		0.863629, -0.493338, 0.103748,
		0.393185, 0.787953, 0.473852,
		22.980707, 40.266266, 15.351507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.954517, 39.378693, 15.548977>,  <22.705477, 39.714699, 15.019811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.954517, 39.378693, 15.548977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.920069, 39.764317, 15.649520>,  <22.899401, 39.995689, 15.709846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.920069, 39.764317, 15.649520>,  <22.954517, 39.378693, 15.548977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.920069, 39.764317, 15.649520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333128, -0.265638, 0.904689,
		0.938940, -0.005822, 0.344031,
		-0.086120, 0.964055, 0.251357,
		22.894234, 40.053532, 15.724927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.210163, 39.435493, 16.182875>,  <22.954517, 39.378693, 15.548977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.210163, 39.435493, 16.182875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.976744, 39.759464, 16.159264>,  <22.836691, 39.953846, 16.145098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.976744, 39.759464, 16.159264>,  <23.210163, 39.435493, 16.182875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.976744, 39.759464, 16.159264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350853, -0.185899, 0.917793,
		0.732374, 0.556288, 0.392647,
		-0.583550, 0.809929, -0.059028,
		22.801678, 40.002441, 16.141556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.233065, 39.515800, 16.797195>,  <23.210163, 39.435493, 16.182875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.233065, 39.515800, 16.797195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.934662, 39.763519, 16.699257>,  <22.755621, 39.912151, 16.640493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.934662, 39.763519, 16.699257>,  <23.233065, 39.515800, 16.797195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.934662, 39.763519, 16.699257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322237, -0.013936, 0.946556,
		0.582787, 0.785034, 0.209957,
		-0.746005, 0.619296, -0.244845,
		22.710861, 39.949306, 16.625803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.146370, 40.095634, 17.336840>,  <23.233065, 39.515800, 16.797195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.146370, 40.095634, 17.336840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.803926, 40.048740, 17.135509>,  <22.598461, 40.020603, 17.014711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.803926, 40.048740, 17.135509>,  <23.146370, 40.095634, 17.336840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.803926, 40.048740, 17.135509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486703, -0.144611, 0.861515,
		-0.173787, 0.982519, 0.066743,
		-0.856106, -0.117236, -0.503327,
		22.547094, 40.013569, 16.984512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.719540, 40.530117, 17.658880>,  <23.146370, 40.095634, 17.336840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.719540, 40.530117, 17.658880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.461760, 40.287376, 17.472797>,  <22.307091, 40.141731, 17.361147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.461760, 40.287376, 17.472797>,  <22.719540, 40.530117, 17.658880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.461760, 40.287376, 17.472797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640340, 0.095800, 0.762094,
		-0.417910, 0.789022, -0.450329,
		-0.644450, -0.606850, -0.465206,
		22.268425, 40.105320, 17.333235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.048536, 40.804462, 17.721466>,  <22.719540, 40.530117, 17.658880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.048536, 40.804462, 17.721466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.962130, 40.427776, 17.618305>,  <21.910286, 40.201763, 17.556410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.962130, 40.427776, 17.618305>,  <22.048536, 40.804462, 17.721466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.962130, 40.427776, 17.618305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806153, 0.022995, 0.591260,
		-0.550867, 0.335629, -0.764132,
		-0.216015, -0.941714, -0.257901,
		21.897326, 40.145264, 17.540936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.375711, 40.866928, 17.958067>,  <22.048536, 40.804462, 17.721466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.375711, 40.866928, 17.958067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.470823, 40.486263, 17.880291>,  <21.527889, 40.257866, 17.833626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.470823, 40.486263, 17.880291>,  <21.375711, 40.866928, 17.958067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.470823, 40.486263, 17.880291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617052, -0.302592, 0.726419,
		-0.750139, -0.052748, -0.659173,
		0.237778, -0.951659, -0.194438,
		21.542156, 40.200764, 17.821960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.733877, 40.462505, 17.914093>,  <21.375711, 40.866928, 17.958067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.733877, 40.462505, 17.914093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.050833, 40.245033, 18.024754>,  <21.241005, 40.114552, 18.091150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.050833, 40.245033, 18.024754>,  <20.733877, 40.462505, 17.914093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.050833, 40.245033, 18.024754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530792, -0.390988, 0.751923,
		-0.300632, -0.742662, -0.598392,
		0.792389, -0.543674, 0.276655,
		21.288549, 40.081932, 18.107750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.371824, 39.798252, 18.122799>,  <20.733877, 40.462505, 17.914093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.371824, 39.798252, 18.122799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.732035, 39.742176, 18.287434>,  <20.948160, 39.708530, 18.386213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.732035, 39.742176, 18.287434>,  <20.371824, 39.798252, 18.122799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.732035, 39.742176, 18.287434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403256, -0.623269, 0.670016,
		0.162600, -0.769340, -0.617800,
		0.900525, -0.140187, 0.411585,
		21.002192, 39.700119, 18.410910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.356571, 39.121754, 18.086895>,  <20.371824, 39.798252, 18.122799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.356571, 39.121754, 18.086895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.601919, 39.266582, 18.367661>,  <20.749128, 39.353481, 18.536119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.601919, 39.266582, 18.367661>,  <20.356571, 39.121754, 18.086895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.601919, 39.266582, 18.367661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422676, -0.600258, 0.678995,
		0.667176, -0.713156, -0.215139,
		0.613368, 0.362076, 0.701912,
		20.785931, 39.375206, 18.578234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.571941, 38.469887, 18.444258>,  <20.356571, 39.121754, 18.086895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.571941, 38.469887, 18.444258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.682339, 38.753506, 18.703823>,  <20.748577, 38.923676, 18.859562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.682339, 38.753506, 18.703823>,  <20.571941, 38.469887, 18.444258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.682339, 38.753506, 18.703823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334823, -0.561922, 0.756397,
		0.900956, -0.426030, 0.082318,
		0.275992, 0.709043, 0.648912,
		20.765137, 38.966217, 18.898497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.062124, 38.203899, 19.008743>,  <20.571941, 38.469887, 18.444258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.062124, 38.203899, 19.008743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.871828, 38.522385, 19.158253>,  <20.757650, 38.713478, 19.247959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.871828, 38.522385, 19.158253>,  <21.062124, 38.203899, 19.008743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.871828, 38.522385, 19.158253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306241, -0.548294, 0.778197,
		0.824552, 0.255757, 0.504681,
		-0.475742, 0.796218, 0.373773,
		20.729105, 38.761250, 19.270384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.357435, 38.302650, 19.657682>,  <21.062124, 38.203899, 19.008743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.357435, 38.302650, 19.657682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.998915, 38.478828, 19.678268>,  <20.783802, 38.584538, 19.690620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.998915, 38.478828, 19.678268>,  <21.357435, 38.302650, 19.657682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.998915, 38.478828, 19.678268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201501, -0.507912, 0.837510,
		0.395021, 0.740291, 0.543993,
		-0.896301, 0.440449, 0.051467,
		20.730024, 38.610962, 19.693708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.310966, 38.185028, 20.262800>,  <21.357435, 38.302650, 19.657682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.310966, 38.185028, 20.262800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.951477, 38.313705, 20.143597>,  <20.735783, 38.390911, 20.072075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.951477, 38.313705, 20.143597>,  <21.310966, 38.185028, 20.262800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.951477, 38.313705, 20.143597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411207, -0.382186, 0.827552,
		0.152321, 0.866285, 0.475762,
		-0.898725, 0.321690, -0.298008,
		20.681860, 38.410213, 20.054193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.042227, 38.683254, 20.826916>,  <21.310966, 38.185028, 20.262800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.042227, 38.683254, 20.826916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.738487, 38.524220, 20.620880>,  <20.556244, 38.428799, 20.497259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.738487, 38.524220, 20.620880>,  <21.042227, 38.683254, 20.826916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.738487, 38.524220, 20.620880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434638, -0.279177, 0.856242,
		-0.484230, 0.874063, 0.039187,
		-0.759349, -0.397586, -0.515087,
		20.510683, 38.404945, 20.466354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.461250, 39.114616, 20.984835>,  <21.042227, 38.683254, 20.826916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.461250, 39.114616, 20.984835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.306866, 38.771358, 20.849407>,  <20.214235, 38.565403, 20.768150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.306866, 38.771358, 20.849407>,  <20.461250, 39.114616, 20.984835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.306866, 38.771358, 20.849407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516394, -0.103147, 0.850116,
		-0.764442, 0.502947, -0.403328,
		-0.385962, -0.858140, -0.338569,
		20.191078, 38.513916, 20.747837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.780033, 39.166740, 21.031551>,  <20.461250, 39.114616, 20.984835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.780033, 39.166740, 21.031551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.838388, 38.771057, 21.026169>,  <19.873402, 38.533646, 21.022940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.838388, 38.771057, 21.026169>,  <19.780033, 39.166740, 21.031551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.838388, 38.771057, 21.026169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564758, -0.094441, 0.819835,
		-0.812259, -0.112005, -0.572442,
		0.145888, -0.989209, -0.013455,
		19.882154, 38.474293, 21.022133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.138878, 38.889103, 21.254980>,  <19.780033, 39.166740, 21.031551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.138878, 38.889103, 21.254980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.397043, 38.586040, 21.293747>,  <19.551943, 38.404202, 21.317007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.397043, 38.586040, 21.293747>,  <19.138878, 38.889103, 21.254980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.397043, 38.586040, 21.293747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487395, -0.310810, 0.815992,
		-0.588122, -0.573888, -0.569881,
		0.645413, -0.757661, 0.096916,
		19.590668, 38.358742, 21.322823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.681404, 38.378727, 21.497770>,  <19.138878, 38.889103, 21.254980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.681404, 38.378727, 21.497770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.044914, 38.228130, 21.569744>,  <19.263021, 38.137772, 21.612928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.044914, 38.228130, 21.569744>,  <18.681404, 38.378727, 21.497770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.044914, 38.228130, 21.569744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342706, -0.427386, 0.836597,
		-0.238071, -0.821945, -0.517425,
		0.908777, -0.376494, 0.179938,
		19.317547, 38.115181, 21.623726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.817001, 37.532654, 21.447348>,  <18.681404, 38.378727, 21.497770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.817001, 37.532654, 21.447348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.041000, 37.736298, 21.708794>,  <19.175400, 37.858482, 21.865662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.041000, 37.736298, 21.708794>,  <18.817001, 37.532654, 21.447348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.041000, 37.736298, 21.708794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460167, -0.464909, 0.756377,
		0.688950, -0.724340, -0.026072,
		0.559995, 0.509108, 0.653616,
		19.209000, 37.889030, 21.904879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.340361, 37.206867, 21.853636>,  <18.817001, 37.532654, 21.447348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.340361, 37.206867, 21.853636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.231346, 37.515823, 22.083115>,  <19.165937, 37.701199, 22.220802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.231346, 37.515823, 22.083115>,  <19.340361, 37.206867, 21.853636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.231346, 37.515823, 22.083115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492669, -0.624200, 0.606342,
		0.826438, -0.117392, 0.550653,
		-0.272538, 0.772394, 0.573699,
		19.149586, 37.747543, 22.255224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.611996, 37.075058, 22.563757>,  <19.340361, 37.206867, 21.853636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.611996, 37.075058, 22.563757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.287464, 37.306221, 22.528507>,  <19.092745, 37.444920, 22.507357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.287464, 37.306221, 22.528507>,  <19.611996, 37.075058, 22.563757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.287464, 37.306221, 22.528507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470850, -0.556663, 0.684417,
		0.346474, 0.596781, 0.723746,
		-0.811330, 0.577909, -0.088125,
		19.044065, 37.479595, 22.502069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.304064, 37.511101, 23.258657>,  <19.611996, 37.075058, 22.563757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.304064, 37.511101, 23.258657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.008997, 37.416958, 23.005531>,  <18.831957, 37.360474, 22.853657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.008997, 37.416958, 23.005531>,  <19.304064, 37.511101, 23.258657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.008997, 37.416958, 23.005531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521390, -0.396897, 0.755397,
		-0.428950, 0.887175, 0.170065,
		-0.737668, -0.235358, -0.632814,
		18.787697, 37.346352, 22.815687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.628839, 37.821163, 23.487505>,  <19.304064, 37.511101, 23.258657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.628839, 37.821163, 23.487505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.563395, 37.478168, 23.292389>,  <18.524128, 37.272369, 23.175320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.563395, 37.478168, 23.292389>,  <18.628839, 37.821163, 23.487505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.563395, 37.478168, 23.292389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626188, -0.291810, 0.723005,
		-0.762312, 0.423740, -0.489208,
		-0.163610, -0.857491, -0.487791,
		18.514311, 37.220921, 23.146051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<30.854170, 25.877874, 17.247051> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.232719, 26.001942, 17.283215>,  <31.459848, 26.076382, 17.304913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.232719, 26.001942, 17.283215>,  <30.854170, 25.877874, 17.247051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.232719, 26.001942, 17.283215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323069, 0.906727, 0.271058,
		0.002098, -0.285730, 0.958308,
		0.946373, 0.310168, 0.090408,
		31.516632, 26.094992, 17.310337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.854317, 26.356953, 17.722361>,  <30.854170, 25.877874, 17.247051>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.854317, 26.356953, 17.722361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.199926, 26.473114, 17.557861>,  <31.407293, 26.542810, 17.459162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.199926, 26.473114, 17.557861>,  <30.854317, 26.356953, 17.722361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.199926, 26.473114, 17.557861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230776, 0.954449, 0.189127,
		0.447440, -0.068504, 0.891686,
		0.864025, 0.290403, -0.411250,
		31.459133, 26.560234, 17.434486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.122461, 26.862991, 18.167847>,  <30.854317, 26.356953, 17.722361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.122461, 26.862991, 18.167847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.281748, 26.931129, 17.807312>,  <31.377319, 26.972012, 17.590992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.281748, 26.931129, 17.807312>,  <31.122461, 26.862991, 18.167847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.281748, 26.931129, 17.807312> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225632, 0.970606, 0.083749,
		0.889110, 0.170020, 0.424945,
		0.398215, 0.170343, -0.901337,
		31.401213, 26.982233, 17.536911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.638075, 27.412331, 18.326170>,  <31.122461, 26.862991, 18.167847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.638075, 27.412331, 18.326170> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.549837, 27.412849, 17.936024>,  <31.496895, 27.413160, 17.701937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.549837, 27.412849, 17.936024>,  <31.638075, 27.412331, 18.326170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.549837, 27.412849, 17.936024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437473, 0.893640, 0.100127,
		0.871755, 0.448783, -0.196564,
		-0.220593, 0.001295, -0.975365,
		31.483660, 27.413239, 17.643414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853184, 28.084345, 18.122854>,  <31.638075, 27.412331, 18.326170>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853184, 28.084345, 18.122854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.620209, 27.974327, 17.816883>,  <31.480423, 27.908316, 17.633301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.620209, 27.974327, 17.816883>,  <31.853184, 28.084345, 18.122854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.620209, 27.974327, 17.816883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354500, 0.932761, -0.065464,
		0.731502, 0.233038, -0.640780,
		-0.582439, -0.275044, -0.764928,
		31.445477, 27.891813, 17.587404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.797056, 28.624266, 17.786419>,  <31.853184, 28.084345, 18.122854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.797056, 28.624266, 17.786419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.490868, 28.423321, 17.625580>,  <31.307154, 28.302753, 17.529076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.490868, 28.423321, 17.625580>,  <31.797056, 28.624266, 17.786419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.490868, 28.423321, 17.625580> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507991, 0.855352, -0.101579,
		0.394966, 0.126507, -0.909944,
		-0.765472, -0.502363, -0.402100,
		31.261227, 28.272612, 17.504950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.736595, 28.911545, 17.148811>,  <31.797056, 28.624266, 17.786419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.736595, 28.911545, 17.148811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.388132, 28.766949, 17.281719>,  <31.179054, 28.680191, 17.361464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.388132, 28.766949, 17.281719>,  <31.736595, 28.911545, 17.148811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.388132, 28.766949, 17.281719> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433948, 0.883464, -0.176581,
		-0.229717, -0.298018, -0.926507,
		-0.871160, -0.361492, 0.332272,
		31.126783, 28.658501, 17.381401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.358759, 29.190847, 16.695505>,  <31.736595, 28.911545, 17.148811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.358759, 29.190847, 16.695505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.092447, 29.066608, 16.966877>,  <30.932661, 28.992065, 17.129700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.092447, 29.066608, 16.966877>,  <31.358759, 29.190847, 16.695505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.092447, 29.066608, 16.966877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609098, 0.751414, -0.253727,
		-0.430974, -0.582156, -0.689460,
		-0.665779, -0.310599, 0.678430,
		30.892714, 28.973429, 17.170406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.751438, 29.239132, 16.375908>,  <31.358759, 29.190847, 16.695505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.751438, 29.239132, 16.375908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.685997, 29.254345, 16.770226>,  <30.646732, 29.263474, 17.006815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.685997, 29.254345, 16.770226>,  <30.751438, 29.239132, 16.375908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.685997, 29.254345, 16.770226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611943, 0.779868, -0.131648,
		-0.773796, -0.624787, -0.104313,
		-0.163602, 0.038035, 0.985793,
		30.636917, 29.265755, 17.065964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.002518, 29.432970, 16.428114>,  <30.751438, 29.239132, 16.375908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.002518, 29.432970, 16.428114> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.128633, 29.483932, 16.804276>,  <30.204302, 29.514511, 17.029972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.128633, 29.483932, 16.804276>,  <30.002518, 29.432970, 16.428114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.128633, 29.483932, 16.804276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586024, 0.805574, 0.087334,
		-0.746438, -0.578635, 0.328651,
		0.315288, 0.127408, 0.940405,
		30.223221, 29.522156, 17.086397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.404682, 29.477064, 16.859304>,  <30.002518, 29.432970, 16.428114>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.404682, 29.477064, 16.859304> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.699030, 29.678570, 17.040287>,  <29.875639, 29.799473, 17.148876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.699030, 29.678570, 17.040287>,  <29.404682, 29.477064, 16.859304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.699030, 29.678570, 17.040287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610260, 0.782938, 0.120795,
		-0.293394, -0.365006, 0.883567,
		0.735869, 0.503765, 0.452458,
		29.919790, 29.829699, 17.176023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.084568, 29.826962, 17.351168>,  <29.404682, 29.477064, 16.859304>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.084568, 29.826962, 17.351168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.431993, 30.024567, 17.335426>,  <29.640448, 30.143129, 17.325981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.431993, 30.024567, 17.335426>,  <29.084568, 29.826962, 17.351168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.431993, 30.024567, 17.335426> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478866, 0.857068, 0.190057,
		0.127621, -0.146230, 0.980984,
		0.868562, 0.494015, -0.039356,
		29.692562, 30.172771, 17.323620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.066505, 30.194410, 17.957123>,  <29.084568, 29.826962, 17.351168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.066505, 30.194410, 17.957123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.342758, 30.381741, 17.736687>,  <29.508511, 30.494139, 17.604425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.342758, 30.381741, 17.736687>,  <29.066505, 30.194410, 17.957123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.342758, 30.381741, 17.736687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334064, 0.882427, 0.331247,
		0.641427, -0.044670, 0.765883,
		0.690632, 0.468325, -0.551089,
		29.549948, 30.522238, 17.571360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.589638, 30.524910, 18.409395>,  <29.066505, 30.194410, 17.957123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.589638, 30.524910, 18.409395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.563000, 30.723545, 18.063225>,  <29.547016, 30.842726, 17.855522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.563000, 30.723545, 18.063225>,  <29.589638, 30.524910, 18.409395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.563000, 30.723545, 18.063225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368773, 0.793689, 0.483802,
		0.927131, 0.351366, 0.130272,
		-0.066596, 0.496589, -0.865427,
		29.543020, 30.872522, 17.803596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.753349, 31.217258, 18.609377>,  <29.589638, 30.524910, 18.409395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.753349, 31.217258, 18.609377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.572432, 31.239540, 18.253326>,  <29.463881, 31.252909, 18.039696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.572432, 31.239540, 18.253326>,  <29.753349, 31.217258, 18.609377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.572432, 31.239540, 18.253326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460996, 0.839780, 0.286797,
		0.763487, 0.540061, -0.354149,
		-0.452295, 0.055704, -0.890127,
		29.436743, 31.256252, 17.986288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.826981, 31.929232, 18.437212>,  <29.753349, 31.217258, 18.609377>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.826981, 31.929232, 18.437212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.533770, 31.761066, 18.223324>,  <29.357843, 31.660168, 18.094992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.533770, 31.761066, 18.223324>,  <29.826981, 31.929232, 18.437212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.533770, 31.761066, 18.223324> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550518, 0.828399, 0.103367,
		0.399505, 0.370143, -0.838683,
		-0.733025, -0.420415, -0.534720,
		29.313862, 31.634941, 18.062908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.560070, 32.459896, 18.115780>,  <29.826981, 31.929232, 18.437212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.560070, 32.459896, 18.115780> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.270094, 32.184902, 18.098667>,  <29.096109, 32.019905, 18.088400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.270094, 32.184902, 18.098667>,  <29.560070, 32.459896, 18.115780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.270094, 32.184902, 18.098667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651565, 0.664264, 0.366355,
		-0.223445, 0.293461, -0.929491,
		-0.724938, -0.687484, -0.042783,
		29.052612, 31.978657, 18.085833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.080807, 32.822689, 17.798037>,  <29.560070, 32.459896, 18.115780>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.080807, 32.822689, 17.798037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.873642, 32.525402, 17.967457>,  <28.749344, 32.347031, 18.069109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.873642, 32.525402, 17.967457>,  <29.080807, 32.822689, 17.798037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.873642, 32.525402, 17.967457> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710324, 0.649535, 0.271192,
		-0.476664, -0.160403, -0.864327,
		-0.517911, -0.743220, 0.423548,
		28.718269, 32.302437, 18.094521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.412455, 33.035748, 17.649637>,  <29.080807, 32.822689, 17.798037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.412455, 33.035748, 17.649637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.378284, 32.771282, 17.947784>,  <28.357782, 32.612602, 18.126673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.378284, 32.771282, 17.947784>,  <28.412455, 33.035748, 17.649637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.378284, 32.771282, 17.947784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699218, 0.572721, 0.427885,
		-0.709787, -0.484621, -0.511219,
		-0.085423, -0.661160, 0.745365,
		28.352657, 32.572933, 18.171394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.680490, 32.829849, 17.632275>,  <28.412455, 33.035748, 17.649637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.680490, 32.829849, 17.632275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.852612, 32.746643, 17.983631>,  <27.955885, 32.696720, 18.194445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.852612, 32.746643, 17.983631>,  <27.680490, 32.829849, 17.632275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.852612, 32.746643, 17.983631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697255, 0.541422, 0.469785,
		-0.573302, -0.814612, 0.087937,
		0.430303, -0.208014, 0.878390,
		27.981703, 32.684238, 18.247149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.090584, 32.551258, 18.076080>,  <27.680490, 32.829849, 17.632275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.090584, 32.551258, 18.076080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.386890, 32.683907, 18.309761>,  <27.564674, 32.763496, 18.449970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.386890, 32.683907, 18.309761>,  <27.090584, 32.551258, 18.076080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.386890, 32.683907, 18.309761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657619, 0.535492, 0.529892,
		-0.137116, -0.776710, 0.614753,
		0.740768, 0.331616, 0.584203,
		27.609121, 32.783390, 18.485022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.743549, 32.542419, 18.726643>,  <27.090584, 32.551258, 18.076080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.743549, 32.542419, 18.726643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.066544, 32.775177, 18.765362>,  <27.260340, 32.914829, 18.788593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.066544, 32.775177, 18.765362>,  <26.743549, 32.542419, 18.726643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.066544, 32.775177, 18.765362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571579, 0.731254, 0.372243,
		0.145822, -0.355909, 0.923074,
		0.807486, 0.581891, 0.096798,
		27.308790, 32.949745, 18.794401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.550737, 32.950565, 19.322794>,  <26.743549, 32.542419, 18.726643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.550737, 32.950565, 19.322794> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.870935, 33.111980, 19.145542>,  <27.063055, 33.208832, 19.039192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.870935, 33.111980, 19.145542>,  <26.550737, 32.950565, 19.322794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.870935, 33.111980, 19.145542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353154, 0.914962, 0.195261,
		0.484240, 0.000187, 0.874935,
		0.800496, 0.403540, -0.443127,
		27.111084, 33.233044, 19.012604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.048235, 32.547272, 18.875443>,  <26.550737, 32.950565, 19.322794>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.048235, 32.547272, 18.875443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.689009, 32.575989, 18.701859>,  <25.473473, 32.593220, 18.597708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.689009, 32.575989, 18.701859>,  <26.048235, 32.547272, 18.875443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.689009, 32.575989, 18.701859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066984, -0.952758, -0.296251,
		-0.434727, -0.295121, 0.850832,
		-0.898068, 0.071796, -0.433958,
		25.419588, 32.597527, 18.571671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.671757, 31.995634, 19.209330>,  <26.048235, 32.547272, 18.875443>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.671757, 31.995634, 19.209330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.515596, 32.088711, 18.853027>,  <25.421900, 32.144558, 18.639246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.515596, 32.088711, 18.853027>,  <25.671757, 31.995634, 19.209330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.515596, 32.088711, 18.853027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207790, -0.920296, -0.331479,
		-0.896889, -0.314499, 0.310933,
		-0.390400, 0.232692, -0.890754,
		25.398478, 32.158520, 18.585800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.064753, 31.597797, 19.050720>,  <25.671757, 31.995634, 19.209330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.064753, 31.597797, 19.050720> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.239874, 31.727100, 18.715141>,  <25.344948, 31.804682, 18.513794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.239874, 31.727100, 18.715141>,  <25.064753, 31.597797, 19.050720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.239874, 31.727100, 18.715141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138195, -0.946234, -0.292477,
		-0.888386, 0.012110, -0.458938,
		0.437805, 0.323255, -0.838947,
		25.371216, 31.824078, 18.463457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.870253, 31.076172, 18.479364>,  <25.064753, 31.597797, 19.050720>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.870253, 31.076172, 18.479364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.188646, 31.289566, 18.364956>,  <25.379683, 31.417603, 18.296310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.188646, 31.289566, 18.364956>,  <24.870253, 31.076172, 18.479364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.188646, 31.289566, 18.364956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465954, -0.841621, -0.273060,
		-0.386393, 0.084079, -0.918494,
		0.795982, 0.533484, -0.286019,
		25.427441, 31.449612, 18.279150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.062216, 30.836390, 17.886633>,  <24.870253, 31.076172, 18.479364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.062216, 30.836390, 17.886633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.385519, 31.058529, 17.964920>,  <25.579502, 31.191813, 18.011892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.385519, 31.058529, 17.964920>,  <25.062216, 30.836390, 17.886633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.385519, 31.058529, 17.964920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587103, -0.734652, -0.339995,
		-0.045031, 0.389711, -0.919836,
		0.808259, 0.555349, 0.195718,
		25.627996, 31.225134, 18.023636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.503082, 30.743258, 17.351643>,  <25.062216, 30.836390, 17.886633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.503082, 30.743258, 17.351643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.761684, 30.870022, 17.629230>,  <25.916845, 30.946081, 17.795784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.761684, 30.870022, 17.629230>,  <25.503082, 30.743258, 17.351643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.761684, 30.870022, 17.629230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695733, -0.618140, -0.365866,
		0.313024, 0.719353, -0.620119,
		0.646507, 0.316912, 0.693970,
		25.955637, 30.965096, 17.837421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.209236, 30.823532, 17.017975>,  <25.503082, 30.743258, 17.351643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.209236, 30.823532, 17.017975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.279402, 30.781528, 17.409527>,  <26.321501, 30.756327, 17.644457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.279402, 30.781528, 17.409527>,  <26.209236, 30.823532, 17.017975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.279402, 30.781528, 17.409527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614266, -0.765340, -0.192176,
		0.769355, 0.635002, -0.069749,
		0.175414, -0.105007, 0.978879,
		26.332026, 30.750027, 17.703190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.971666, 30.825315, 17.004091>,  <26.209236, 30.823532, 17.017975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.971666, 30.825315, 17.004091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.819040, 30.675812, 17.342255>,  <26.727465, 30.586109, 17.545153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.819040, 30.675812, 17.342255>,  <26.971666, 30.825315, 17.004091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.819040, 30.675812, 17.342255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615598, -0.785015, -0.069214,
		0.689527, 0.494021, 0.529619,
		-0.381566, -0.373757, 0.845407,
		26.704571, 30.563684, 17.595877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.557983, 30.660439, 17.367546>,  <26.971666, 30.825315, 17.004091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.557983, 30.660439, 17.367546> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.281326, 30.433811, 17.546715>,  <27.115332, 30.297834, 17.654215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.281326, 30.433811, 17.546715>,  <27.557983, 30.660439, 17.367546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.281326, 30.433811, 17.546715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635828, -0.771811, 0.005536,
		0.342574, 0.288629, 0.894056,
		-0.691640, -0.566570, 0.447920,
		27.073833, 30.263840, 17.681091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.931505, 30.303488, 17.815031>,  <27.557983, 30.660439, 17.367546>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.931505, 30.303488, 17.815031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.587429, 30.102840, 17.778263>,  <27.380983, 29.982452, 17.756203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.587429, 30.102840, 17.778263>,  <27.931505, 30.303488, 17.815031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.587429, 30.102840, 17.778263> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501713, -0.864708, 0.023742,
		-0.091391, -0.025694, 0.995483,
		-0.860193, -0.501617, -0.091918,
		27.329370, 29.952354, 17.750689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.821417, 29.921509, 18.393848>,  <27.931505, 30.303488, 17.815031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.821417, 29.921509, 18.393848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.625319, 29.752316, 18.089024>,  <27.507660, 29.650799, 17.906128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.625319, 29.752316, 18.089024>,  <27.821417, 29.921509, 18.393848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.625319, 29.752316, 18.089024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542510, -0.832411, 0.113026,
		-0.682159, -0.358016, 0.637561,
		-0.490248, -0.422985, -0.762064,
		27.478245, 29.625420, 17.860405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.461161, 29.316566, 18.655600>,  <27.821417, 29.921509, 18.393848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.461161, 29.316566, 18.655600> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.536509, 29.238102, 18.270676>,  <27.581718, 29.191023, 18.039722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.536509, 29.238102, 18.270676>,  <27.461161, 29.316566, 18.655600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.536509, 29.238102, 18.270676> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439495, -0.859423, 0.261222,
		-0.878271, -0.472136, -0.075677,
		0.188371, -0.196164, -0.962308,
		27.593019, 29.179253, 17.981983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.310116, 28.520958, 18.560810>,  <27.461161, 29.316566, 18.655600>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.310116, 28.520958, 18.560810> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.524763, 28.615349, 18.236748>,  <27.653551, 28.671984, 18.042311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.524763, 28.615349, 18.236748>,  <27.310116, 28.520958, 18.560810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.524763, 28.615349, 18.236748> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381120, -0.924373, -0.016806,
		-0.752853, -0.299749, -0.585972,
		0.536619, 0.235978, -0.810157,
		27.685749, 28.686142, 17.993700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.179873, 28.074312, 18.109903>,  <27.310116, 28.520958, 18.560810>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.179873, 28.074312, 18.109903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.534935, 28.211212, 17.986660>,  <27.747972, 28.293352, 17.912714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.534935, 28.211212, 17.986660>,  <27.179873, 28.074312, 18.109903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.534935, 28.211212, 17.986660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334996, -0.938991, -0.077931,
		-0.315983, -0.034039, -0.948154,
		0.887656, 0.342252, -0.308108,
		27.801231, 28.313889, 17.894228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.475971, 27.484327, 17.749065>,  <27.179873, 28.074312, 18.109903>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.475971, 27.484327, 17.749065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.802652, 27.715130, 17.752148>,  <27.998661, 27.853611, 17.753998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.802652, 27.715130, 17.752148>,  <27.475971, 27.484327, 17.749065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.802652, 27.715130, 17.752148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561838, -0.792048, -0.238743,
		-0.131651, 0.199313, -0.971052,
		0.816705, 0.577004, 0.007708,
		28.047665, 27.888231, 17.754459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.859158, 27.365051, 17.095594>,  <27.475971, 27.484327, 17.749065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.859158, 27.365051, 17.095594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.126463, 27.513462, 17.353512>,  <28.286846, 27.602509, 17.508263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.126463, 27.513462, 17.353512>,  <27.859158, 27.365051, 17.095594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.126463, 27.513462, 17.353512> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602785, -0.778014, -0.177042,
		0.435972, 0.506983, -0.743570,
		0.668265, 0.371027, 0.644795,
		28.326942, 27.624771, 17.546949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.456297, 27.174267, 16.809305>,  <27.859158, 27.365051, 17.095594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.456297, 27.174267, 16.809305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.574717, 27.267513, 17.179821>,  <28.645769, 27.323462, 17.402130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.574717, 27.267513, 17.179821>,  <28.456297, 27.174267, 16.809305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.574717, 27.267513, 17.179821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583839, -0.811677, 0.017671,
		0.755967, 0.535573, -0.376397,
		0.296048, 0.233114, 0.926290,
		28.663530, 27.337448, 17.457708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<29.163055, 27.132504, 16.836565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.079351, 27.099869, 17.226345>,  <29.029129, 27.080288, 17.460213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.079351, 27.099869, 17.226345>,  <29.163055, 27.132504, 16.836565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.079351, 27.099869, 17.226345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532936, -0.845027, 0.043693,
		0.819872, 0.528463, 0.220310,
		-0.209258, -0.081589, 0.974451,
		29.016575, 27.075392, 17.518681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.757526, 26.846306, 17.097364>,  <29.163055, 27.132504, 16.836565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.757526, 26.846306, 17.097364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.468229, 26.766632, 17.361862>,  <29.294651, 26.718828, 17.520561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.468229, 26.766632, 17.361862>,  <29.757526, 26.846306, 17.097364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.468229, 26.766632, 17.361862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334623, -0.938668, 0.083250,
		0.604106, 0.281478, 0.745538,
		-0.723245, -0.199182, 0.661244,
		29.251255, 26.706877, 17.560236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.014137, 26.454212, 17.513695>,  <29.757526, 26.846306, 17.097364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.014137, 26.454212, 17.513695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.638119, 26.365761, 17.617554>,  <29.412508, 26.312689, 17.679869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.638119, 26.365761, 17.617554>,  <30.014137, 26.454212, 17.513695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.638119, 26.365761, 17.617554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227736, -0.973711, -0.004753,
		0.253872, 0.054663, 0.965692,
		-0.940046, -0.221130, 0.259647,
		29.356106, 26.299421, 17.695448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.994780, 26.036236, 18.129816>,  <30.014137, 26.454212, 17.513695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.994780, 26.036236, 18.129816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.666536, 25.975864, 17.909336>,  <29.469589, 25.939640, 17.777048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.666536, 25.975864, 17.909336>,  <29.994780, 26.036236, 18.129816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.666536, 25.975864, 17.909336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204856, -0.978086, -0.037161,
		-0.533512, -0.143411, 0.833546,
		-0.820609, -0.150931, -0.551199,
		29.420353, 25.930586, 17.743977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.640375, 25.401144, 18.405792>,  <29.994780, 26.036236, 18.129816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.640375, 25.401144, 18.405792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.519707, 25.458035, 18.028694>,  <29.447306, 25.492168, 17.802435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.519707, 25.458035, 18.028694>,  <29.640375, 25.401144, 18.405792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.519707, 25.458035, 18.028694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126380, -0.974120, -0.187399,
		-0.944998, -0.175677, 0.275891,
		-0.301673, 0.142225, -0.942744,
		29.429205, 25.500702, 17.745871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.125179, 24.847481, 18.193521>,  <29.640375, 25.401144, 18.405792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.125179, 24.847481, 18.193521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.297180, 24.995514, 17.864124>,  <29.400381, 25.084333, 17.666487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.297180, 24.995514, 17.864124>,  <29.125179, 24.847481, 18.193521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.297180, 24.995514, 17.864124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271452, -0.922916, -0.273020,
		-0.861053, -0.106139, -0.497315,
		0.430002, 0.370082, -0.823491,
		29.426180, 25.106539, 17.617077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.160599, 24.255764, 17.899916>,  <29.125179, 24.847481, 18.193521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.160599, 24.255764, 17.899916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.353119, 24.502148, 17.650455>,  <29.468632, 24.649979, 17.500778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.353119, 24.502148, 17.650455>,  <29.160599, 24.255764, 17.899916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.353119, 24.502148, 17.650455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410125, -0.787044, -0.460824,
		-0.774691, -0.033980, -0.631426,
		0.481302, 0.615960, -0.623652,
		29.497509, 24.686935, 17.463360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.985113, 24.032448, 17.260798>,  <29.160599, 24.255764, 17.899916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.985113, 24.032448, 17.260798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.348864, 24.198517, 17.250443>,  <29.567114, 24.298159, 17.244228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.348864, 24.198517, 17.250443>,  <28.985113, 24.032448, 17.260798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.348864, 24.198517, 17.250443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362255, -0.820983, -0.441315,
		-0.204476, 0.391942, -0.896979,
		0.909374, 0.415173, -0.025889,
		29.621675, 24.323069, 17.242676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.233139, 24.033504, 16.592840>,  <28.985113, 24.032448, 17.260798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.233139, 24.033504, 16.592840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.554241, 24.020138, 16.830990>,  <29.746902, 24.012117, 16.973879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.554241, 24.020138, 16.830990>,  <29.233139, 24.033504, 16.592840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.554241, 24.020138, 16.830990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288524, -0.852010, -0.436844,
		0.521862, 0.522457, -0.674313,
		0.802754, -0.033417, 0.595373,
		29.795067, 24.010113, 17.009602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.804653, 23.919668, 16.169788>,  <29.233139, 24.033504, 16.592840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.804653, 23.919668, 16.169788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.906200, 23.798450, 16.537205>,  <29.967129, 23.725719, 16.757654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.906200, 23.798450, 16.537205>,  <29.804653, 23.919668, 16.169788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.906200, 23.798450, 16.537205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341570, -0.860378, -0.378259,
		0.904920, 0.409774, -0.114912,
		0.253868, -0.303044, 0.918540,
		29.982361, 23.707537, 16.812767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.441402, 23.632929, 15.961685>,  <29.804653, 23.919668, 16.169788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.441402, 23.632929, 15.961685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.318865, 23.473415, 16.307430>,  <30.245342, 23.377707, 16.514877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.318865, 23.473415, 16.307430>,  <30.441402, 23.632929, 15.961685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.318865, 23.473415, 16.307430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225186, -0.912606, -0.341234,
		0.924902, 0.090107, 0.369373,
		-0.306345, -0.398786, 0.864363,
		30.226961, 23.353779, 16.566738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.947987, 23.074699, 16.167440>,  <30.441402, 23.632929, 15.961685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.947987, 23.074699, 16.167440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.632250, 22.985790, 16.396362>,  <30.442808, 22.932446, 16.533716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.632250, 22.985790, 16.396362>,  <30.947987, 23.074699, 16.167440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.632250, 22.985790, 16.396362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227794, -0.971657, -0.063193,
		0.570130, 0.080487, 0.817602,
		-0.789342, -0.222272, 0.572305,
		30.395447, 22.919109, 16.568054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.179556, 22.689690, 16.716179>,  <30.947987, 23.074699, 16.167440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.179556, 22.689690, 16.716179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.794952, 22.583172, 16.689079>,  <30.564190, 22.519260, 16.672819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.794952, 22.583172, 16.689079>,  <31.179556, 22.689690, 16.716179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.794952, 22.583172, 16.689079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257966, -0.959729, 0.111240,
		-0.094642, 0.089481, 0.991482,
		-0.961507, -0.266296, -0.067747,
		30.506500, 22.503283, 16.668755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.069286, 22.259888, 17.304632>,  <31.179556, 22.689690, 16.716179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.069286, 22.259888, 17.304632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.763937, 22.176346, 17.060127>,  <30.580727, 22.126221, 16.913425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.763937, 22.176346, 17.060127>,  <31.069286, 22.259888, 17.304632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.763937, 22.176346, 17.060127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041165, -0.960093, 0.276636,
		-0.644644, 0.186014, 0.741507,
		-0.763373, -0.208856, -0.611261,
		30.534925, 22.113689, 16.876749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.670240, 21.785089, 17.658203>,  <31.069286, 22.259888, 17.304632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.670240, 21.785089, 17.658203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.551832, 21.737465, 17.279110>,  <30.480787, 21.708891, 17.051655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.551832, 21.737465, 17.279110>,  <30.670240, 21.785089, 17.658203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.551832, 21.737465, 17.279110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017391, -0.991365, 0.129974,
		-0.955023, 0.054957, 0.291396,
		-0.296023, -0.119060, -0.947732,
		30.463026, 21.701746, 16.994791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.112284, 21.241257, 17.713079>,  <30.670240, 21.785089, 17.658203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.112284, 21.241257, 17.713079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.182905, 21.235874, 17.319401>,  <30.225279, 21.232645, 17.083193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.182905, 21.235874, 17.319401>,  <30.112284, 21.241257, 17.713079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.182905, 21.235874, 17.319401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071967, -0.997407, 0.000725,
		-0.981656, 0.070702, -0.177065,
		0.176555, -0.013455, -0.984199,
		30.235872, 21.231838, 17.024141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.528347, 20.888361, 17.403841>,  <30.112284, 21.241257, 17.713079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.528347, 20.888361, 17.403841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.856871, 20.861023, 17.177292>,  <30.053986, 20.844620, 17.041363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.856871, 20.861023, 17.177292>,  <29.528347, 20.888361, 17.403841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.856871, 20.861023, 17.177292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086598, -0.996229, -0.005360,
		-0.563872, 0.053449, -0.824131,
		0.821310, -0.068346, -0.566374,
		30.103264, 20.840519, 17.007380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.368633, 20.514183, 16.850071>,  <29.528347, 20.888361, 17.403841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.368633, 20.514183, 16.850071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.766592, 20.484440, 16.877350>,  <30.005367, 20.466595, 16.893717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.766592, 20.484440, 16.877350>,  <29.368633, 20.514183, 16.850071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.766592, 20.484440, 16.877350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074987, -0.997162, 0.006727,
		0.067506, -0.011807, -0.997649,
		0.994897, -0.074357, 0.068199,
		30.065062, 20.462133, 16.897810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.508585, 20.046543, 16.332994>,  <29.368633, 20.514183, 16.850071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.508585, 20.046543, 16.332994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.856213, 20.061436, 16.530308>,  <30.064789, 20.070372, 16.648697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.856213, 20.061436, 16.530308>,  <29.508585, 20.046543, 16.332994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.856213, 20.061436, 16.530308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081434, -0.994328, -0.068420,
		0.487938, 0.099632, -0.867173,
		0.869071, 0.037233, 0.493284,
		30.116934, 20.072605, 16.678293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.972635, 19.636505, 15.984494>,  <29.508585, 20.046543, 16.332994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.972635, 19.636505, 15.984494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.123886, 19.670734, 16.353210>,  <30.214636, 19.691271, 16.574440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.123886, 19.670734, 16.353210>,  <29.972635, 19.636505, 15.984494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.123886, 19.670734, 16.353210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076968, -0.995177, 0.060811,
		0.922549, 0.047954, -0.382888,
		0.378126, 0.085571, 0.921791,
		30.237324, 19.696405, 16.629747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.248072, 18.990713, 16.044678>,  <29.972635, 19.636505, 15.984494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.248072, 18.990713, 16.044678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.295872, 19.129837, 16.416645>,  <30.324551, 19.213312, 16.639826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.295872, 19.129837, 16.416645>,  <30.248072, 18.990713, 16.044678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.295872, 19.129837, 16.416645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099908, -0.936088, 0.337281,
		0.987795, 0.052602, -0.146610,
		0.119499, 0.347812, 0.929918,
		30.331722, 19.234180, 16.695620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.883728, 18.678102, 16.307213>,  <30.248072, 18.990713, 16.044678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.883728, 18.678102, 16.307213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.624495, 18.781219, 16.593857>,  <30.468954, 18.843090, 16.765844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.624495, 18.781219, 16.593857>,  <30.883728, 18.678102, 16.307213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.624495, 18.781219, 16.593857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037523, -0.929015, 0.368134,
		0.760644, 0.265471, 0.592407,
		-0.648084, 0.257790, 0.716611,
		30.430069, 18.858557, 16.808840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.155970, 18.587729, 16.986137>,  <30.883728, 18.678102, 16.307213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.155970, 18.587729, 16.986137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.766588, 18.516178, 16.929016>,  <30.532959, 18.473248, 16.894743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.766588, 18.516178, 16.929016>,  <31.155970, 18.587729, 16.986137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.766588, 18.516178, 16.929016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161178, -0.978693, 0.127203,
		-0.162514, 0.100810, 0.981543,
		-0.973453, -0.178875, -0.142803,
		30.474552, 18.462515, 16.886175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.299307, 18.881207, 17.658510>,  <31.155970, 18.587729, 16.986137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.299307, 18.881207, 17.658510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.461933, 18.517250, 17.691502>,  <31.559509, 18.298876, 17.711296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.461933, 18.517250, 17.691502>,  <31.299307, 18.881207, 17.658510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.461933, 18.517250, 17.691502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638206, 0.347444, 0.687005,
		-0.653757, -0.226673, 0.721956,
		0.406565, -0.909891, 0.082480,
		31.583902, 18.244282, 17.716246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.647457, 18.700525, 18.329510>,  <31.299307, 18.881207, 17.658510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.647457, 18.700525, 18.329510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.008064, 18.582287, 18.455933>,  <32.224426, 18.511345, 18.531786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.008064, 18.582287, 18.455933>,  <31.647457, 18.700525, 18.329510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.008064, 18.582287, 18.455933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212328, 0.938541, 0.272135,
		-0.377076, -0.178226, 0.908872,
		0.901515, -0.295595, 0.316059,
		32.278519, 18.493608, 18.550751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.764330, 18.979374, 18.975439>,  <31.647457, 18.700525, 18.329510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.764330, 18.979374, 18.975439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.130615, 18.899105, 18.836185>,  <32.350388, 18.850945, 18.752634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.130615, 18.899105, 18.836185>,  <31.764330, 18.979374, 18.975439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.130615, 18.899105, 18.836185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323637, 0.881831, 0.342977,
		0.238170, -0.426739, 0.872450,
		0.915715, -0.200671, -0.348134,
		32.405331, 18.838903, 18.731745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.194191, 19.103748, 19.496813>,  <31.764330, 18.979374, 18.975439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.194191, 19.103748, 19.496813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.367218, 19.191067, 19.146904>,  <32.471035, 19.243458, 18.936958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.367218, 19.191067, 19.146904>,  <32.194191, 19.103748, 19.496813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.367218, 19.191067, 19.146904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085241, 0.955998, 0.280716,
		0.897561, -0.195997, 0.394930,
		0.432572, 0.218296, -0.874774,
		32.496990, 19.256556, 18.884472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.726849, 19.455509, 19.683449>,  <32.194191, 19.103748, 19.496813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.726849, 19.455509, 19.683449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.688389, 19.522041, 19.290901>,  <32.665314, 19.561960, 19.055372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.688389, 19.522041, 19.290901>,  <32.726849, 19.455509, 19.683449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.688389, 19.522041, 19.290901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109570, 0.981716, 0.155654,
		0.989317, -0.092562, -0.112621,
		-0.096154, 0.166331, -0.981371,
		32.659542, 19.571941, 18.996490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267422, 20.008350, 19.440474>,  <32.726849, 19.455509, 19.683449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267422, 20.008350, 19.440474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.997425, 20.019035, 19.145535>,  <32.835426, 20.025446, 18.968571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.997425, 20.019035, 19.145535>,  <33.267422, 20.008350, 19.440474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.997425, 20.019035, 19.145535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129657, 0.988088, -0.082894,
		0.726348, -0.151555, -0.670410,
		-0.674988, 0.026713, -0.737345,
		32.794930, 20.027050, 18.924332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527809, 20.533249, 19.023472>,  <33.267422, 20.008350, 19.440474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.527809, 20.533249, 19.023472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.162266, 20.515091, 18.862076>,  <32.942940, 20.504196, 18.765238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.162266, 20.515091, 18.862076>,  <33.527809, 20.533249, 19.023472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.162266, 20.515091, 18.862076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074151, 0.958360, -0.275766,
		0.399209, -0.281930, -0.872438,
		-0.913857, -0.045397, -0.403491,
		32.888107, 20.501472, 18.741028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.562172, 20.795561, 18.264545>,  <33.527809, 20.533249, 19.023472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.562172, 20.795561, 18.264545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.198051, 20.828808, 18.426754>,  <32.979580, 20.848757, 18.524078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.198051, 20.828808, 18.426754>,  <33.562172, 20.795561, 18.264545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.198051, 20.828808, 18.426754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045262, 0.953774, -0.297095,
		-0.411469, -0.288800, -0.864458,
		-0.910299, 0.083118, 0.405521,
		32.924961, 20.853743, 18.548410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.184994, 21.256592, 17.900146>,  <33.562172, 20.795561, 18.264545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.184994, 21.256592, 17.900146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.955624, 21.257576, 18.227848>,  <32.818001, 21.258167, 18.424469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.955624, 21.257576, 18.227848>,  <33.184994, 21.256592, 17.900146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.955624, 21.257576, 18.227848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098981, 0.992462, -0.072260,
		-0.813257, -0.122526, -0.568859,
		-0.573425, 0.002460, 0.819254,
		32.783596, 21.258314, 18.473625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574669, 21.593740, 17.674362>,  <33.184994, 21.256592, 17.900146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574669, 21.593740, 17.674362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.565506, 21.629753, 18.072632>,  <32.560009, 21.651361, 18.311594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.565506, 21.629753, 18.072632>,  <32.574669, 21.593740, 17.674362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.565506, 21.629753, 18.072632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253759, 0.962796, -0.092897,
		-0.966996, -0.254789, 0.000796,
		-0.022903, 0.090033, 0.995675,
		32.558636, 21.656763, 18.371334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.905769, 21.760902, 17.778345>,  <32.574669, 21.593740, 17.674362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.905769, 21.760902, 17.778345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.146847, 21.910030, 18.060555>,  <32.291492, 21.999506, 18.229881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.146847, 21.910030, 18.060555>,  <31.905769, 21.760902, 17.778345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.146847, 21.910030, 18.060555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385007, 0.910289, -0.152129,
		-0.698948, -0.179945, 0.692165,
		0.602695, 0.372819, 0.705525,
		32.327656, 22.021875, 18.272211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.486227, 22.024923, 18.281311>,  <31.905769, 21.760902, 17.778345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.486227, 22.024923, 18.281311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.841314, 22.208443, 18.296577>,  <32.054367, 22.318554, 18.305738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.841314, 22.208443, 18.296577>,  <31.486227, 22.024923, 18.281311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.841314, 22.208443, 18.296577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430734, 0.856957, -0.283007,
		-0.162553, 0.234791, 0.958358,
		0.887719, 0.458801, 0.038168,
		32.107632, 22.346083, 18.308027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.276117, 22.621767, 18.564838>,  <31.486227, 22.024923, 18.281311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.276117, 22.621767, 18.564838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.645191, 22.710022, 18.438362>,  <31.866634, 22.762976, 18.362476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.645191, 22.710022, 18.438362>,  <31.276117, 22.621767, 18.564838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.645191, 22.710022, 18.438362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294155, 0.932998, -0.207334,
		0.249258, 0.284312, 0.925763,
		0.922683, 0.220638, -0.316189,
		31.921995, 22.776213, 18.343506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.401083, 23.293507, 18.732042>,  <31.276117, 22.621767, 18.564838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.401083, 23.293507, 18.732042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.667929, 23.261574, 18.435776>,  <31.828037, 23.242414, 18.258017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.667929, 23.261574, 18.435776>,  <31.401083, 23.293507, 18.732042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.667929, 23.261574, 18.435776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185400, 0.945167, -0.268861,
		0.721515, 0.316681, 0.615735,
		0.667115, -0.079831, -0.740665,
		31.868063, 23.237625, 18.213575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.852821, 23.911911, 18.716791>,  <31.401083, 23.293507, 18.732042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.852821, 23.911911, 18.716791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.933031, 23.759815, 18.355637>,  <31.981157, 23.668558, 18.138943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.933031, 23.759815, 18.355637>,  <31.852821, 23.911911, 18.716791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.933031, 23.759815, 18.355637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061641, 0.914885, -0.398982,
		0.977748, 0.135660, 0.160017,
		0.200523, -0.380240, -0.902889,
		31.993187, 23.645742, 18.084770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.454807, 24.215406, 18.463778>,  <31.852821, 23.911911, 18.716791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.454807, 24.215406, 18.463778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.267307, 24.081978, 18.136608>,  <32.154808, 24.001921, 17.940306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.267307, 24.081978, 18.136608>,  <32.454807, 24.215406, 18.463778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.267307, 24.081978, 18.136608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098296, 0.900507, -0.423586,
		0.877844, -0.278955, -0.389324,
		-0.468751, -0.333573, -0.817925,
		32.126682, 23.981907, 17.891232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933704, 24.411037, 17.903786>,  <32.454807, 24.215406, 18.463778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.933704, 24.411037, 17.903786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.577362, 24.329163, 17.741566>,  <32.363556, 24.280037, 17.644234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.577362, 24.329163, 17.741566>,  <32.933704, 24.411037, 17.903786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577362, 24.329163, 17.741566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016649, 0.877425, -0.479426,
		0.453974, -0.433853, -0.778254,
		-0.890859, -0.204689, -0.405551,
		32.310104, 24.267756, 17.619900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.961452, 24.582907, 17.266130>,  <32.933704, 24.411037, 17.903786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.961452, 24.582907, 17.266130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.580345, 24.606533, 17.385296>,  <32.351681, 24.620708, 17.456795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.580345, 24.606533, 17.385296>,  <32.961452, 24.582907, 17.266130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.580345, 24.606533, 17.385296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017808, 0.968354, -0.248945,
		-0.303188, -0.242491, -0.921562,
		-0.952765, 0.059066, 0.297912,
		32.294518, 24.624252, 17.474669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.572716, 25.075060, 16.734745>,  <32.961452, 24.582907, 17.266130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.572716, 25.075060, 16.734745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.351475, 25.070293, 17.067955>,  <32.218731, 25.067432, 17.267881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.351475, 25.070293, 17.067955>,  <32.572716, 25.075060, 16.734745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.351475, 25.070293, 17.067955> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292359, 0.939085, -0.180683,
		-0.780130, -0.343479, -0.522896,
		-0.553104, -0.011917, 0.833027,
		32.185543, 25.066719, 17.317863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.959450, 25.362934, 16.497080>,  <32.572716, 25.075060, 16.734745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.959450, 25.362934, 16.497080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.961927, 25.421661, 16.892738>,  <31.963413, 25.456898, 17.130133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.961927, 25.421661, 16.892738>,  <31.959450, 25.362934, 16.497080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.961927, 25.421661, 16.892738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522892, 0.843631, -0.121947,
		-0.852376, -0.516461, 0.081996,
		0.006193, 0.146820, 0.989144,
		31.963785, 25.465708, 17.189482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.289963, 25.706930, 16.578070>,  <31.959450, 25.362934, 16.497080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.289963, 25.706930, 16.578070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.529884, 25.765949, 16.892639>,  <31.673838, 25.801361, 17.081381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.529884, 25.765949, 16.892639>,  <31.289963, 25.706930, 16.578070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.529884, 25.765949, 16.892639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302348, 0.951777, 0.052026,
		-0.740825, -0.268979, 0.615490,
		0.599803, 0.147550, 0.786426,
		31.709826, 25.810215, 17.128567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<24.832483, 41.220543, 17.010719> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.099369, 40.956558, 16.872578>,  <25.259501, 40.798168, 16.789692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.099369, 40.956558, 16.872578>,  <24.832483, 41.220543, 17.010719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.099369, 40.956558, 16.872578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295687, -0.660225, 0.690415,
		-0.683667, -0.358533, -0.635652,
		0.667209, -0.659968, -0.345361,
		25.299534, 40.758568, 16.768970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.417179, 40.634796, 16.782001>,  <24.832483, 41.220543, 17.010719>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.417179, 40.634796, 16.782001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.793299, 40.522934, 16.859600>,  <25.018970, 40.455818, 16.906160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.793299, 40.522934, 16.859600>,  <24.417179, 40.634796, 16.782001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.793299, 40.522934, 16.859600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331200, -0.620512, 0.710824,
		-0.078406, -0.732638, -0.676087,
		0.940297, -0.279653, 0.193998,
		25.075388, 40.439037, 16.917799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.410784, 39.933601, 16.741150>,  <24.417179, 40.634796, 16.782001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.410784, 39.933601, 16.741150> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.693794, 40.051109, 16.998241>,  <24.863602, 40.121616, 17.152496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.693794, 40.051109, 16.998241>,  <24.410784, 39.933601, 16.741150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.693794, 40.051109, 16.998241> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354959, -0.638710, 0.682681,
		0.611071, -0.711159, -0.347628,
		0.707528, 0.293773, 0.642729,
		24.906054, 40.139240, 17.191061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.593199, 39.292320, 17.035530>,  <24.410784, 39.933601, 16.741150>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.593199, 39.292320, 17.035530> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.746414, 39.573536, 17.275204>,  <24.838343, 39.742264, 17.419008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.746414, 39.573536, 17.275204>,  <24.593199, 39.292320, 17.035530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.746414, 39.573536, 17.275204> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304897, -0.516080, 0.800437,
		0.871964, -0.489286, 0.016676,
		0.383037, 0.703036, 0.599185,
		24.861324, 39.784447, 17.454960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.092909, 38.853394, 17.569771>,  <24.593199, 39.292320, 17.035530>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.092909, 38.853394, 17.569771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.014645, 39.211994, 17.728771>,  <24.967686, 39.427155, 17.824171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.014645, 39.211994, 17.728771>,  <25.092909, 38.853394, 17.569771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.014645, 39.211994, 17.728771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388226, -0.443032, 0.808086,
		0.900554, 0.003791, 0.434728,
		-0.195662, 0.896498, 0.397502,
		24.955946, 39.480942, 17.848022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.287750, 38.890198, 18.297388>,  <25.092909, 38.853394, 17.569771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.287750, 38.890198, 18.297388> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.011009, 39.175602, 18.253136>,  <24.844965, 39.346844, 18.226583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.011009, 39.175602, 18.253136>,  <25.287750, 38.890198, 18.297388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.011009, 39.175602, 18.253136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426438, -0.280141, 0.860041,
		0.582659, 0.642199, 0.498086,
		-0.691852, 0.713514, -0.110631,
		24.803453, 39.389656, 18.219946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.145296, 38.997578, 18.949652>,  <25.287750, 38.890198, 18.297388>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.145296, 38.997578, 18.949652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.849262, 39.191605, 18.763325>,  <24.671642, 39.308022, 18.651527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.849262, 39.191605, 18.763325>,  <25.145296, 38.997578, 18.949652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.849262, 39.191605, 18.763325> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572542, -0.091078, 0.814801,
		0.352807, 0.869721, 0.345126,
		-0.740083, 0.485067, -0.465820,
		24.627237, 39.337124, 18.623579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.021189, 39.514435, 19.345020>,  <25.145296, 38.997578, 18.949652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.021189, 39.514435, 19.345020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.707434, 39.443283, 19.107334>,  <24.519180, 39.400593, 18.964722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.707434, 39.443283, 19.107334>,  <25.021189, 39.514435, 19.345020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.707434, 39.443283, 19.107334> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495270, -0.397122, 0.772659,
		-0.373417, 0.900363, 0.223399,
		-0.784390, -0.177881, -0.594215,
		24.472116, 39.389919, 18.929070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.473421, 39.846172, 19.628876>,  <25.021189, 39.514435, 19.345020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.473421, 39.846172, 19.628876> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.329861, 39.560242, 19.388805>,  <24.243725, 39.388683, 19.244764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.329861, 39.560242, 19.388805>,  <24.473421, 39.846172, 19.628876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.329861, 39.560242, 19.388805> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497163, -0.397799, 0.771093,
		-0.789948, 0.575131, -0.212616,
		-0.358901, -0.714829, -0.600175,
		24.222191, 39.345795, 19.208754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.703154, 39.825775, 19.753698>,  <24.473421, 39.846172, 19.628876>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.703154, 39.825775, 19.753698> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.811401, 39.475960, 19.592724>,  <23.876350, 39.266071, 19.496140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.811401, 39.475960, 19.592724>,  <23.703154, 39.825775, 19.753698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.811401, 39.475960, 19.592724> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532364, -0.484247, 0.694329,
		-0.802093, 0.026341, -0.596618,
		0.270621, -0.874535, -0.402434,
		23.892588, 39.213600, 19.471994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.115313, 39.426010, 19.811459>,  <23.703154, 39.825775, 19.753698>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.115313, 39.426010, 19.811459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.422857, 39.173542, 19.770512>,  <23.607384, 39.022060, 19.745943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.422857, 39.173542, 19.770512>,  <23.115313, 39.426010, 19.811459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.422857, 39.173542, 19.770512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431621, -0.630427, 0.645186,
		-0.471754, -0.451876, -0.757137,
		0.768863, -0.631166, -0.102367,
		23.653517, 38.984192, 19.739801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.708134, 38.837372, 19.637875>,  <23.115313, 39.426010, 19.811459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.708134, 38.837372, 19.637875> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.064796, 38.704983, 19.761421>,  <23.278795, 38.625549, 19.835550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.064796, 38.704983, 19.761421>,  <22.708134, 38.837372, 19.637875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.064796, 38.704983, 19.761421> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452143, -0.616966, 0.644143,
		-0.022635, -0.714008, -0.699772,
		0.891658, -0.330976, 0.308869,
		23.332294, 38.605690, 19.854082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.703386, 38.148907, 19.674269>,  <22.708134, 38.837372, 19.637875>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.703386, 38.148907, 19.674269> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.997353, 38.240208, 19.929707>,  <23.173733, 38.294987, 20.082970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.997353, 38.240208, 19.929707>,  <22.703386, 38.148907, 19.674269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.997353, 38.240208, 19.929707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364128, -0.661590, 0.655522,
		0.572110, -0.714283, -0.403100,
		0.734915, 0.228250, 0.638593,
		23.217827, 38.308681, 20.121284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.704449, 37.588257, 20.097658>,  <22.703386, 38.148907, 19.674269>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.704449, 37.588257, 20.097658> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.934618, 37.843170, 20.302696>,  <23.072720, 37.996120, 20.425720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.934618, 37.843170, 20.302696>,  <22.704449, 37.588257, 20.097658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.934618, 37.843170, 20.302696> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302860, -0.416160, 0.857372,
		0.759713, -0.648596, -0.046459,
		0.575423, 0.637286, 0.512596,
		23.107244, 38.034355, 20.456474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.171829, 37.234161, 20.518885>,  <22.704449, 37.588257, 20.097658>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.171829, 37.234161, 20.518885> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.135651, 37.590252, 20.697460>,  <23.113943, 37.803905, 20.804605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.135651, 37.590252, 20.697460>,  <23.171829, 37.234161, 20.518885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.135651, 37.590252, 20.697460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246366, -0.454345, 0.856081,
		0.964947, -0.032556, 0.260418,
		-0.090449, 0.890231, 0.446440,
		23.108517, 37.857323, 20.831392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.656076, 37.318462, 21.021872>,  <23.171829, 37.234161, 20.518885>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.656076, 37.318462, 21.021872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.355032, 37.566490, 21.110497>,  <23.174406, 37.715309, 21.163671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.355032, 37.566490, 21.110497>,  <23.656076, 37.318462, 21.021872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.355032, 37.566490, 21.110497> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175784, -0.513472, 0.839909,
		0.634570, 0.593175, 0.495442,
		-0.752609, 0.620072, 0.221564,
		23.129250, 37.752510, 21.176966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.568251, 37.248711, 21.721117>,  <23.656076, 37.318462, 21.021872>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.568251, 37.248711, 21.721117> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.227549, 37.444508, 21.646385>,  <23.023127, 37.561985, 21.601547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.227549, 37.444508, 21.646385>,  <23.568251, 37.248711, 21.721117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.227549, 37.444508, 21.646385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438615, -0.471133, 0.765278,
		0.286580, 0.733776, 0.615991,
		-0.851756, 0.489496, -0.186828,
		22.972021, 37.591358, 21.590338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.213602, 37.405373, 22.334492>,  <23.568251, 37.248711, 21.721117>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.213602, 37.405373, 22.334492> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.906883, 37.465981, 22.084991>,  <22.722853, 37.502346, 21.935291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.906883, 37.465981, 22.084991>,  <23.213602, 37.405373, 22.334492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.906883, 37.465981, 22.084991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632840, -0.341046, 0.695127,
		-0.107400, 0.927755, 0.357402,
		-0.766798, 0.151522, -0.623749,
		22.676844, 37.511436, 21.897867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.623484, 37.790024, 22.739719>,  <23.213602, 37.405373, 22.334492>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.623484, 37.790024, 22.739719> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.485764, 37.582642, 22.426628>,  <22.403131, 37.458210, 22.238773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.485764, 37.582642, 22.426628>,  <22.623484, 37.790024, 22.739719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.485764, 37.582642, 22.426628> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644416, -0.475799, 0.598618,
		-0.682778, 0.710505, -0.170284,
		-0.344300, -0.518457, -0.782726,
		22.382473, 37.427105, 22.191811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.873499, 37.982395, 22.761389>,  <22.623484, 37.790024, 22.739719>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.873499, 37.982395, 22.761389> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.925224, 37.629936, 22.579460>,  <21.956261, 37.418461, 22.470303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.925224, 37.629936, 22.579460>,  <21.873499, 37.982395, 22.761389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.925224, 37.629936, 22.579460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643016, -0.423679, 0.637987,
		-0.754857, 0.209958, -0.621377,
		0.129314, -0.881143, -0.454823,
		21.964018, 37.365593, 22.443014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.214815, 37.618793, 22.324186>,  <21.873499, 37.982395, 22.761389>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.214815, 37.618793, 22.324186> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.482386, 37.415298, 22.540970>,  <21.642927, 37.293201, 22.671040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.482386, 37.415298, 22.540970>,  <21.214815, 37.618793, 22.324186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.482386, 37.415298, 22.540970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697318, -0.176951, 0.694576,
		-0.257460, -0.842538, -0.473122,
		0.668926, -0.508742, 0.541959,
		21.683064, 37.262676, 22.703558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.479918, 37.741356, 22.008219>,  <21.214815, 37.618793, 22.324186>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.479918, 37.741356, 22.008219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.114187, 37.813663, 21.863262>,  <19.894749, 37.857048, 21.776289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.114187, 37.813663, 21.863262>,  <20.479918, 37.741356, 22.008219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.114187, 37.813663, 21.863262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385796, 0.116677, -0.915177,
		-0.123151, -0.976581, -0.176420,
		-0.914328, 0.180767, -0.362392,
		19.839890, 37.867893, 21.754545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.404524, 37.337551, 21.393656>,  <20.479918, 37.741356, 22.008219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.404524, 37.337551, 21.393656> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.151630, 37.647388, 21.386787>,  <19.999895, 37.833290, 21.382666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.151630, 37.647388, 21.386787>,  <20.404524, 37.337551, 21.393656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.151630, 37.647388, 21.386787> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280013, 0.207774, -0.937242,
		-0.722410, -0.597362, -0.348256,
		-0.632232, 0.774589, -0.017172,
		19.961962, 37.879765, 21.381636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.939417, 37.200481, 20.867065>,  <20.404524, 37.337551, 21.393656>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.939417, 37.200481, 20.867065> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.945585, 37.597424, 20.916042>,  <19.949286, 37.835590, 20.945429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.945585, 37.597424, 20.916042>,  <19.939417, 37.200481, 20.867065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.945585, 37.597424, 20.916042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174052, 0.117923, -0.977651,
		-0.984616, 0.036386, -0.170903,
		0.015419, 0.992356, 0.122442,
		19.950211, 37.895130, 20.952774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.555874, 37.423122, 20.338966>,  <19.939417, 37.200481, 20.867065>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.555874, 37.423122, 20.338966> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.786169, 37.725845, 20.462753>,  <19.924345, 37.907478, 20.537025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.786169, 37.725845, 20.462753>,  <19.555874, 37.423122, 20.338966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.786169, 37.725845, 20.462753> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205113, 0.232704, -0.950672,
		-0.791490, 0.610812, -0.021255,
		0.575736, 0.756808, 0.309468,
		19.958889, 37.952888, 20.555593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.518452, 37.951694, 19.801600>,  <19.555874, 37.423122, 20.338966>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.518452, 37.951694, 19.801600> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.813156, 38.112164, 20.019314>,  <19.989979, 38.208443, 20.149942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.813156, 38.112164, 20.019314>,  <19.518452, 37.951694, 19.801600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.813156, 38.112164, 20.019314> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217811, 0.621250, -0.752733,
		-0.640110, 0.673136, 0.370334,
		0.736762, 0.401169, 0.544285,
		20.034185, 38.232513, 20.182600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.476439, 38.692791, 19.750381>,  <19.518452, 37.951694, 19.801600>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.476439, 38.692791, 19.750381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.858812, 38.649708, 19.859623>,  <20.088238, 38.623859, 19.925167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.858812, 38.649708, 19.859623>,  <19.476439, 38.692791, 19.750381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.858812, 38.649708, 19.859623> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276006, 0.646716, -0.711040,
		-0.100035, 0.755087, 0.647948,
		0.955936, -0.107708, 0.273103,
		20.145594, 38.617393, 19.941553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.679594, 39.364441, 19.879335>,  <19.476439, 38.692791, 19.750381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.679594, 39.364441, 19.879335> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.003536, 39.133438, 19.838104>,  <20.197901, 38.994835, 19.813366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.003536, 39.133438, 19.838104>,  <19.679594, 39.364441, 19.879335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.003536, 39.133438, 19.838104> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436120, 0.710219, -0.552619,
		0.392347, 0.402587, 0.827035,
		0.809854, -0.577505, -0.103076,
		20.246492, 38.960186, 19.807182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.325811, 39.829834, 19.896782>,  <19.679594, 39.364441, 19.879335>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.325811, 39.829834, 19.896782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.448946, 39.512913, 19.686073>,  <20.522827, 39.322762, 19.559649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.448946, 39.512913, 19.686073>,  <20.325811, 39.829834, 19.896782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.448946, 39.512913, 19.686073> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501266, 0.605646, -0.618002,
		0.808683, -0.073809, 0.583595,
		0.307837, -0.792304, -0.526774,
		20.541298, 39.275223, 19.528042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.101414, 39.937973, 19.819769>,  <20.325811, 39.829834, 19.896782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.101414, 39.937973, 19.819769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.998030, 39.661198, 19.550125>,  <20.935999, 39.495132, 19.388338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.998030, 39.661198, 19.550125>,  <21.101414, 39.937973, 19.819769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.998030, 39.661198, 19.550125> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672331, 0.372231, -0.639855,
		0.693663, -0.618603, 0.369002,
		-0.258462, -0.691935, -0.674109,
		20.920490, 39.453617, 19.347893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.742338, 39.657223, 19.426115>,  <21.101414, 39.937973, 19.819769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.742338, 39.657223, 19.426115> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.450842, 39.552429, 19.173038>,  <21.275944, 39.489552, 19.021193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.450842, 39.552429, 19.173038>,  <21.742338, 39.657223, 19.426115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.450842, 39.552429, 19.173038> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585693, 0.240274, -0.774101,
		0.354821, -0.934683, -0.021657,
		-0.728743, -0.261983, -0.632692,
		21.232220, 39.473835, 18.983231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.178596, 39.581776, 18.911386>,  <21.742338, 39.657223, 19.426115>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.178596, 39.581776, 18.911386> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.814547, 39.580692, 18.745659>,  <21.596117, 39.580040, 18.646221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.814547, 39.580692, 18.745659>,  <22.178596, 39.581776, 18.911386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.814547, 39.580692, 18.745659> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393997, 0.303746, -0.867470,
		0.128199, -0.952749, -0.275379,
		-0.910127, -0.002710, -0.414321,
		21.541508, 39.579880, 18.621363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.171576, 39.213226, 18.286987>,  <22.178596, 39.581776, 18.911386>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.171576, 39.213226, 18.286987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.872036, 39.474072, 18.239712>,  <21.692312, 39.630581, 18.211348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.872036, 39.474072, 18.239712>,  <22.171576, 39.213226, 18.286987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.872036, 39.474072, 18.239712> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276170, 0.144940, -0.950117,
		-0.602456, -0.744135, -0.288633,
		-0.748850, 0.652116, -0.118187,
		21.647381, 39.669704, 18.204256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.905523, 38.989006, 17.757532>,  <22.171576, 39.213226, 18.286987>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.905523, 38.989006, 17.757532> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.787369, 39.371044, 17.766891>,  <21.716476, 39.600266, 17.772507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.787369, 39.371044, 17.766891>,  <21.905523, 38.989006, 17.757532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.787369, 39.371044, 17.766891> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241549, 0.098353, -0.965391,
		-0.924339, -0.279511, -0.259754,
		-0.295385, 0.955092, 0.023396,
		21.698753, 39.657570, 17.773911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.549053, 38.927647, 17.173273>,  <21.905523, 38.989006, 17.757532>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.549053, 38.927647, 17.173273> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.651922, 39.298153, 17.283470>,  <21.713644, 39.520454, 17.349588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.651922, 39.298153, 17.283470>,  <21.549053, 38.927647, 17.173273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.651922, 39.298153, 17.283470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381985, 0.164428, -0.909423,
		-0.887665, 0.339115, -0.311532,
		0.257174, 0.926264, 0.275494,
		21.729074, 39.576031, 17.366117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.435352, 39.298965, 16.656654>,  <21.549053, 38.927647, 17.173273>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.435352, 39.298965, 16.656654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.669998, 39.554451, 16.855824>,  <21.810785, 39.707741, 16.975325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.669998, 39.554451, 16.855824>,  <21.435352, 39.298965, 16.656654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.669998, 39.554451, 16.855824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408858, 0.297157, -0.862863,
		-0.699084, 0.709748, -0.086827,
		0.586614, 0.638714, 0.497924,
		21.845982, 39.746067, 17.005201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.482697, 39.814842, 16.226965>,  <21.435352, 39.298965, 16.656654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.482697, 39.814842, 16.226965> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.792986, 39.891106, 16.467598>,  <21.979158, 39.936863, 16.611979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.792986, 39.891106, 16.467598>,  <21.482697, 39.814842, 16.226965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.792986, 39.891106, 16.467598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553592, 0.252064, -0.793725,
		-0.302971, 0.948742, 0.089983,
		0.775722, 0.190662, 0.601584,
		22.025703, 39.948303, 16.648073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.676771, 40.589512, 16.142296>,  <21.482697, 39.814842, 16.226965>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.676771, 40.589512, 16.142296> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.980812, 40.377949, 16.293293>,  <22.163237, 40.251011, 16.383892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.980812, 40.377949, 16.293293>,  <21.676771, 40.589512, 16.142296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.980812, 40.377949, 16.293293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621559, 0.422373, -0.659746,
		0.189505, 0.736107, 0.649796,
		0.760100, -0.528912, 0.377492,
		22.208841, 40.219276, 16.406540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.122694, 41.084888, 16.173128>,  <21.676771, 40.589512, 16.142296>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.122694, 41.084888, 16.173128> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.325991, 40.742344, 16.136620>,  <22.447969, 40.536816, 16.114714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.325991, 40.742344, 16.136620>,  <22.122694, 41.084888, 16.173128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.325991, 40.742344, 16.136620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675872, 0.462298, -0.574001,
		0.533749, 0.230043, 0.813752,
		0.508241, -0.856365, -0.091272,
		22.478462, 40.485435, 16.109238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.898844, 41.313259, 16.109772>,  <22.122694, 41.084888, 16.173128>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.898844, 41.313259, 16.109772> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.877289, 40.935261, 15.980731>,  <22.864355, 40.708462, 15.903307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.877289, 40.935261, 15.980731>,  <22.898844, 41.313259, 16.109772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.877289, 40.935261, 15.980731> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691283, 0.197829, -0.694976,
		0.720572, -0.260458, 0.642602,
		-0.053887, -0.945000, -0.322600,
		22.861122, 40.651760, 15.883951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.616465, 41.168343, 16.035049>,  <22.898844, 41.313259, 16.109772>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.616465, 41.168343, 16.035049> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.416231, 40.898846, 15.817615>,  <23.296091, 40.737148, 15.687154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.416231, 40.898846, 15.817615>,  <23.616465, 41.168343, 16.035049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.416231, 40.898846, 15.817615> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654005, 0.117074, -0.747377,
		0.567179, -0.729633, 0.382026,
		-0.500585, -0.673743, -0.543585,
		23.266056, 40.696724, 15.654539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.169285, 40.775017, 15.640378>,  <23.616465, 41.168343, 16.035049>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.169285, 40.775017, 15.640378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.830994, 40.705685, 15.438508>,  <23.628019, 40.664085, 15.317386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.830994, 40.705685, 15.438508>,  <24.169285, 40.775017, 15.640378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.830994, 40.705685, 15.438508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479555, 0.167901, -0.861299,
		0.234032, -0.970445, -0.058873,
		-0.845728, -0.173338, -0.504676,
		23.577274, 40.653683, 15.287106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<26.717726, 29.235100, 16.896782> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.939695, 29.299686, 17.223213>,  <27.072878, 29.338438, 17.419073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.939695, 29.299686, 17.223213>,  <26.717726, 29.235100, 16.896782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.939695, 29.299686, 17.223213> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561202, 0.796803, 0.223960,
		-0.614093, -0.582267, 0.532780,
		0.554925, 0.161465, 0.816080,
		27.106173, 29.348125, 17.468037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.344212, 29.160542, 17.501471>,  <26.717726, 29.235100, 16.896782>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.344212, 29.160542, 17.501471> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.644905, 29.409355, 17.589077>,  <26.825321, 29.558643, 17.641640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.644905, 29.409355, 17.589077>,  <26.344212, 29.160542, 17.501471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.644905, 29.409355, 17.589077> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656306, 0.673188, 0.340706,
		0.064494, -0.399861, 0.914304,
		0.751734, 0.622036, 0.219015,
		26.870426, 29.595966, 17.654781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.161753, 29.450733, 18.128756>,  <26.344212, 29.160542, 17.501471>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.161753, 29.450733, 18.128756> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.439331, 29.709175, 18.001640>,  <26.605879, 29.864241, 17.925371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.439331, 29.709175, 18.001640>,  <26.161753, 29.450733, 18.128756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.439331, 29.709175, 18.001640> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533317, 0.757751, 0.376014,
		0.483747, -0.091453, 0.870416,
		0.693946, 0.646104, -0.317787,
		26.647514, 29.903006, 17.906303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.334311, 29.933743, 18.730846>,  <26.161753, 29.450733, 18.128756>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.334311, 29.933743, 18.730846> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.467325, 30.135944, 18.412380>,  <26.547134, 30.257265, 18.221300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.467325, 30.135944, 18.412380>,  <26.334311, 29.933743, 18.730846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.467325, 30.135944, 18.412380> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499636, 0.810432, 0.305881,
		0.799865, 0.296078, 0.522066,
		0.332535, 0.505507, -0.796168,
		26.567085, 30.287596, 18.173531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.499821, 30.559259, 18.982563>,  <26.334311, 29.933743, 18.730846>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.499821, 30.559259, 18.982563> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.451424, 30.625599, 18.591084>,  <26.422386, 30.665401, 18.356195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.451424, 30.625599, 18.591084>,  <26.499821, 30.559259, 18.982563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.451424, 30.625599, 18.591084> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539014, 0.816951, 0.205073,
		0.833561, 0.552346, -0.009452,
		-0.120993, 0.165847, -0.978701,
		26.415125, 30.675352, 18.297474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.739202, 31.271975, 18.808058>,  <26.499821, 30.559259, 18.982563>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.739202, 31.271975, 18.808058> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.470100, 31.167439, 18.531189>,  <26.308640, 31.104717, 18.365068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.470100, 31.167439, 18.531189>,  <26.739202, 31.271975, 18.808058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.470100, 31.167439, 18.531189> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518182, 0.834198, 0.188681,
		0.528098, 0.485607, -0.696634,
		-0.672755, -0.261341, -0.692171,
		26.268274, 31.089037, 18.323538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.738373, 31.863052, 18.334366>,  <26.739202, 31.271975, 18.808058>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.738373, 31.863052, 18.334366> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.403263, 31.654068, 18.270912>,  <26.202196, 31.528677, 18.232840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.403263, 31.654068, 18.270912>,  <26.738373, 31.863052, 18.334366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.403263, 31.654068, 18.270912> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522552, 0.851443, -0.044531,
		0.158333, 0.045587, -0.986333,
		-0.837777, -0.522461, -0.158633,
		26.151930, 31.497330, 18.223322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.379646, 32.144943, 17.738043>,  <26.738373, 31.863052, 18.334366>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.379646, 32.144943, 17.738043> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.086124, 31.929413, 17.903549>,  <25.910011, 31.800097, 18.002853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.086124, 31.929413, 17.903549>,  <26.379646, 32.144943, 17.738043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.086124, 31.929413, 17.903549> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618204, 0.782156, -0.077819,
		-0.281699, -0.312896, -0.907051,
		-0.733804, -0.538822, 0.413766,
		25.865984, 31.767767, 18.027679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.726028, 32.324657, 17.343716>,  <26.379646, 32.144943, 17.738043>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.726028, 32.324657, 17.343716> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.630930, 32.164112, 17.697525>,  <25.573872, 32.067783, 17.909811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.630930, 32.164112, 17.697525>,  <25.726028, 32.324657, 17.343716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.630930, 32.164112, 17.697525> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699493, 0.702570, 0.130789,
		-0.673934, -0.587624, -0.447785,
		-0.237746, -0.401365, 0.884524,
		25.559607, 32.043701, 17.962883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.957541, 32.298279, 17.409889>,  <25.726028, 32.324657, 17.343716>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.957541, 32.298279, 17.409889> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.104910, 32.288925, 17.781635>,  <25.193331, 32.283314, 18.004683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.104910, 32.288925, 17.781635>,  <24.957541, 32.298279, 17.409889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.104910, 32.288925, 17.781635> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572947, 0.781553, 0.246791,
		-0.732118, -0.623400, 0.274545,
		0.368422, -0.023380, 0.929365,
		25.215437, 32.281910, 18.060444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.406796, 32.636456, 17.843121>,  <24.957541, 32.298279, 17.409889>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.406796, 32.636456, 17.843121> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.726082, 32.601494, 18.081520>,  <24.917654, 32.580517, 18.224560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.726082, 32.601494, 18.081520>,  <24.406796, 32.636456, 17.843121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.726082, 32.601494, 18.081520> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330874, 0.763174, 0.555057,
		-0.503362, -0.640255, 0.580258,
		0.798216, -0.087403, 0.595996,
		24.965548, 32.575272, 18.260319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.165117, 32.821568, 18.579933>,  <24.406796, 32.636456, 17.843121>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.165117, 32.821568, 18.579933> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.549822, 32.905956, 18.510071>,  <24.780645, 32.956589, 18.468153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.549822, 32.905956, 18.510071>,  <24.165117, 32.821568, 18.579933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.549822, 32.905956, 18.510071> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090308, 0.846304, 0.524989,
		0.258572, -0.489142, 0.832995,
		0.961761, 0.210973, -0.174658,
		24.838350, 32.969250, 18.457674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.656876, 33.212173, 19.054861>,  <24.165117, 32.821568, 18.579933>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.656876, 33.212173, 19.054861> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.983923, 33.428139, 19.134861>,  <24.180151, 33.557716, 19.182861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.983923, 33.428139, 19.134861>,  <23.656876, 33.212173, 19.054861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.983923, 33.428139, 19.134861> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282510, 0.678875, -0.677729,
		-0.501687, 0.497621, 0.707590,
		0.817617, 0.539909, 0.200000,
		24.229208, 33.590111, 19.194860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.473251, 33.714840, 19.542784>,  <23.656876, 33.212173, 19.054861>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.473251, 33.714840, 19.542784> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.768351, 33.768600, 19.278160>,  <23.945410, 33.800858, 19.119387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.768351, 33.768600, 19.278160>,  <23.473251, 33.714840, 19.542784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.768351, 33.768600, 19.278160> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415791, 0.862504, -0.288453,
		0.531830, 0.487877, 0.692195,
		0.737750, 0.134401, -0.661560,
		23.989676, 33.808922, 19.079693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.746630, 34.307156, 19.879290>,  <23.473251, 33.714840, 19.542784>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.746630, 34.307156, 19.879290> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.697325, 34.252903, 20.272514>,  <23.667742, 34.220352, 20.508450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.697325, 34.252903, 20.272514>,  <23.746630, 34.307156, 19.879290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.697325, 34.252903, 20.272514> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727808, -0.685773, -0.003358,
		0.674612, 0.715066, 0.183247,
		-0.123265, -0.135634, 0.983061,
		23.660345, 34.212212, 20.567432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.436846, 34.296162, 20.013550>,  <23.746630, 34.307156, 19.879290>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.436846, 34.296162, 20.013550> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.227573, 34.101025, 20.293060>,  <24.102009, 33.983944, 20.460768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.227573, 34.101025, 20.293060>,  <24.436846, 34.296162, 20.013550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.227573, 34.101025, 20.293060> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733608, -0.675086, 0.077958,
		0.433704, 0.553415, 0.711078,
		-0.523182, -0.487842, 0.698778,
		24.070620, 33.954674, 20.502693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.953821, 34.088764, 20.416224>,  <24.436846, 34.296162, 20.013550>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.953821, 34.088764, 20.416224> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.635311, 33.883957, 20.545086>,  <24.444204, 33.761074, 20.622404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.635311, 33.883957, 20.545086>,  <24.953821, 34.088764, 20.416224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.635311, 33.883957, 20.545086> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586227, -0.784536, 0.202093,
		0.149270, 0.349779, 0.924864,
		-0.796276, -0.512014, 0.322157,
		24.396429, 33.730354, 20.641733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.933046, 33.945858, 21.232910>,  <24.953821, 34.088764, 20.416224>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.933046, 33.945858, 21.232910> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.743219, 33.665333, 21.020138>,  <24.629324, 33.497017, 20.892475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.743219, 33.665333, 21.020138>,  <24.933046, 33.945858, 21.232910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.743219, 33.665333, 21.020138> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715284, -0.659449, 0.231290,
		-0.512987, -0.270717, 0.814590,
		-0.474566, -0.701312, -0.531928,
		24.600849, 33.454941, 20.860559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.943567, 33.290913, 21.625597>,  <24.933046, 33.945858, 21.232910>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.943567, 33.290913, 21.625597> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.861134, 33.168922, 21.253677>,  <24.811674, 33.095730, 21.030525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.861134, 33.168922, 21.253677>,  <24.943567, 33.290913, 21.625597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.861134, 33.168922, 21.253677> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554113, -0.819540, 0.145992,
		-0.806529, -0.485126, 0.337882,
		-0.206083, -0.304971, -0.929797,
		24.799309, 33.077431, 20.974739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.838551, 32.648357, 21.701855>,  <24.943567, 33.290913, 21.625597>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.838551, 32.648357, 21.701855> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.923584, 32.676014, 21.311977>,  <24.974604, 32.692608, 21.078051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.923584, 32.676014, 21.311977>,  <24.838551, 32.648357, 21.701855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.923584, 32.676014, 21.311977> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487664, -0.871896, 0.044516,
		-0.846754, -0.484786, -0.219068,
		0.212585, 0.069138, -0.974694,
		24.987360, 32.696754, 21.019569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.804323, 32.020390, 21.535622>,  <24.838551, 32.648357, 21.701855>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.804323, 32.020390, 21.535622> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.002689, 32.186485, 21.230560>,  <25.121708, 32.286144, 21.047523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.002689, 32.186485, 21.230560>,  <24.804323, 32.020390, 21.535622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.002689, 32.186485, 21.230560> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493646, -0.857352, -0.145812,
		-0.714411, -0.304171, -0.630156,
		0.495914, 0.415244, -0.762654,
		25.151464, 32.311058, 21.001764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.638706, 31.477657, 20.964470>,  <24.804323, 32.020390, 21.535622>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.638706, 31.477657, 20.964470> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.963079, 31.693703, 20.874435>,  <25.157703, 31.823330, 20.820415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.963079, 31.693703, 20.874435>,  <24.638706, 31.477657, 20.964470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.963079, 31.693703, 20.874435> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498327, -0.839099, -0.218134,
		-0.306687, 0.064725, -0.949607,
		0.810934, 0.540114, -0.225087,
		25.206360, 31.855738, 20.806910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.002182, 31.010597, 20.448154>,  <24.638706, 31.477657, 20.964470>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.002182, 31.010597, 20.448154> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.250397, 31.277466, 20.612988>,  <25.399326, 31.437588, 20.711887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.250397, 31.277466, 20.612988>,  <25.002182, 31.010597, 20.448154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.250397, 31.277466, 20.612988> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748011, -0.661348, -0.055661,
		0.235395, 0.342783, -0.909444,
		0.620539, 0.667172, 0.412084,
		25.436558, 31.477617, 20.736612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.654755, 30.799236, 20.208530>,  <25.002182, 31.010597, 20.448154>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.654755, 30.799236, 20.208530> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.754269, 31.046253, 20.506992>,  <25.813976, 31.194464, 20.686069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.754269, 31.046253, 20.506992>,  <25.654755, 30.799236, 20.208530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.754269, 31.046253, 20.506992> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744623, -0.614601, 0.260388,
		0.619389, 0.490824, -0.612739,
		0.248786, 0.617541, 0.746156,
		25.828905, 31.231516, 20.730839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.402544, 30.791142, 20.167746>,  <25.654755, 30.799236, 20.208530>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.402544, 30.791142, 20.167746> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.306595, 30.933990, 20.528839>,  <26.249025, 31.019699, 20.745495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.306595, 30.933990, 20.528839>,  <26.402544, 30.791142, 20.167746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.306595, 30.933990, 20.528839> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638966, -0.641991, 0.423757,
		0.730879, 0.678462, -0.074194,
		-0.239871, 0.357122, 0.902732,
		26.234634, 31.041126, 20.799660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.998098, 31.109289, 20.526024>,  <26.402544, 30.791142, 20.167746>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.998098, 31.109289, 20.526024> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.757420, 31.000282, 20.826344>,  <26.613012, 30.934877, 21.006535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.757420, 31.000282, 20.826344>,  <26.998098, 31.109289, 20.526024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.757420, 31.000282, 20.826344> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709004, -0.615082, 0.344945,
		0.367799, 0.739871, 0.563307,
		-0.601695, -0.272517, 0.750798,
		26.576912, 30.918528, 21.051582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.435007, 31.099680, 21.199738>,  <26.998098, 31.109289, 20.526024>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.435007, 31.099680, 21.199738> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.097473, 30.900265, 21.279140>,  <26.894953, 30.780615, 21.326782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.097473, 30.900265, 21.279140>,  <27.435007, 31.099680, 21.199738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.097473, 30.900265, 21.279140> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536060, -0.799855, 0.269950,
		0.024197, 0.334205, 0.942190,
		-0.843833, -0.498538, 0.198508,
		26.844322, 30.750704, 21.338694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.593132, 30.732330, 21.938330>,  <27.435007, 31.099680, 21.199738>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.593132, 30.732330, 21.938330> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.287613, 30.547337, 21.758232>,  <27.104301, 30.436340, 21.650173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.287613, 30.547337, 21.758232>,  <27.593132, 30.732330, 21.938330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.287613, 30.547337, 21.758232> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478482, -0.873882, 0.085938,
		-0.433203, -0.149793, 0.888762,
		-0.763800, -0.462485, -0.450242,
		27.058474, 30.408590, 21.623159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.388346, 30.923841, 22.686192>,  <27.593132, 30.732330, 21.938330>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.388346, 30.923841, 22.686192> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.643934, 30.965973, 22.990986>,  <27.797287, 30.991251, 23.173862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.643934, 30.965973, 22.990986>,  <27.388346, 30.923841, 22.686192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.643934, 30.965973, 22.990986> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181142, 0.983327, 0.015976,
		-0.747599, -0.148236, 0.647396,
		0.638970, 0.105327, 0.761986,
		27.835625, 30.997572, 23.219582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.005096, 31.295633, 23.222305>,  <27.388346, 30.923841, 22.686192>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.005096, 31.295633, 23.222305> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.381641, 31.327168, 23.353527>,  <27.607569, 31.346088, 23.432261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.381641, 31.327168, 23.353527>,  <27.005096, 31.295633, 23.222305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.381641, 31.327168, 23.353527> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122589, 0.985786, 0.114886,
		-0.314333, -0.148365, 0.937647,
		0.941364, 0.078833, 0.328053,
		27.664051, 31.350817, 23.451942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.963554, 31.787292, 23.715147>,  <27.005096, 31.295633, 23.222305>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.963554, 31.787292, 23.715147> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.338631, 31.749496, 23.581398>,  <27.563677, 31.726820, 23.501148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.338631, 31.749496, 23.581398>,  <26.963554, 31.787292, 23.715147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.338631, 31.749496, 23.581398> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131232, 0.987347, 0.089013,
		0.321729, -0.127347, 0.938229,
		0.937693, -0.094488, -0.334371,
		27.619938, 31.721149, 23.481087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.349028, 32.281925, 24.112576>,  <26.963554, 31.787292, 23.715147>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.349028, 32.281925, 24.112576> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.565281, 32.209202, 23.784023>,  <27.695032, 32.165569, 23.586893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.565281, 32.209202, 23.784023>,  <27.349028, 32.281925, 24.112576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.565281, 32.209202, 23.784023> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152132, 0.981400, -0.117093,
		0.827389, -0.061654, 0.558235,
		0.540633, -0.181807, -0.821378,
		27.727470, 32.154659, 23.537609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.928541, 32.650055, 24.217569>,  <27.349028, 32.281925, 24.112576>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.928541, 32.650055, 24.217569> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.943645, 32.576401, 23.824699>,  <27.952707, 32.532207, 23.588978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.943645, 32.576401, 23.824699>,  <27.928541, 32.650055, 24.217569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.943645, 32.576401, 23.824699> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214159, 0.961531, -0.172033,
		0.976069, -0.203845, 0.075742,
		0.037760, -0.184136, -0.982175,
		27.954973, 32.521160, 23.530046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.530777, 32.962864, 23.886986>,  <27.928541, 32.650055, 24.217569>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.530777, 32.962864, 23.886986> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.260447, 32.927055, 23.594345>,  <28.098248, 32.905571, 23.418760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.260447, 32.927055, 23.594345>,  <28.530777, 32.962864, 23.886986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.260447, 32.927055, 23.594345> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162841, 0.949932, -0.266667,
		0.718847, -0.299356, -0.627411,
		-0.675827, -0.089524, -0.731604,
		28.057699, 32.900200, 23.374865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.815233, 33.121433, 23.159803>,  <28.530777, 32.962864, 23.886986>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.815233, 33.121433, 23.159803> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.421286, 33.188175, 23.141090>,  <28.184917, 33.228222, 23.129862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.421286, 33.188175, 23.141090>,  <28.815233, 33.121433, 23.159803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.421286, 33.188175, 23.141090> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171049, 0.892786, -0.416745,
		-0.027769, -0.418442, -0.907819,
		-0.984871, 0.166854, -0.046782,
		28.125824, 33.238232, 23.127056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.813108, 33.427197, 22.567205>,  <28.815233, 33.121433, 23.159803>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.813108, 33.427197, 22.567205> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.447849, 33.491684, 22.716961>,  <28.228693, 33.530376, 22.806814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.447849, 33.491684, 22.716961>,  <28.813108, 33.427197, 22.567205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.447849, 33.491684, 22.716961> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101181, 0.800073, -0.591309,
		-0.394866, -0.577834, -0.714275,
		-0.913150, 0.161217, 0.374387,
		28.173904, 33.540051, 22.829277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.378933, 33.541698, 21.943613>,  <28.813108, 33.427197, 22.567205>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.378933, 33.541698, 21.943613> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.170685, 33.698212, 22.247150>,  <28.045736, 33.792122, 22.429274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.170685, 33.698212, 22.247150>,  <28.378933, 33.541698, 21.943613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.170685, 33.698212, 22.247150> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268941, 0.768394, -0.580725,
		-0.810323, -0.506423, -0.294810,
		-0.520623, 0.391288, 0.758845,
		28.014498, 33.815598, 22.474804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.673109, 33.675381, 21.715925>,  <28.378933, 33.541698, 21.943613>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.673109, 33.675381, 21.715925> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.764080, 33.908859, 22.027714>,  <27.818663, 34.048946, 22.214787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.764080, 33.908859, 22.027714>,  <27.673109, 33.675381, 21.715925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.764080, 33.908859, 22.027714> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339540, 0.797744, -0.498315,
		-0.912683, -0.151331, 0.379616,
		0.227426, 0.583699, 0.779470,
		27.832308, 34.083969, 22.261555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.185946, 34.033569, 21.787230>,  <27.673109, 33.675381, 21.715925>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.185946, 34.033569, 21.787230> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.465015, 34.252247, 21.972431>,  <27.632458, 34.383453, 22.083553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.465015, 34.252247, 21.972431>,  <27.185946, 34.033569, 21.787230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.465015, 34.252247, 21.972431> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185233, 0.761959, -0.620570,
		-0.692054, 0.347192, 0.632865,
		0.697674, 0.546696, 0.463005,
		27.674318, 34.416256, 22.111332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.861765, 34.711781, 21.739489>,  <27.185946, 34.033569, 21.787230>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.861765, 34.711781, 21.739489> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.239635, 34.788837, 21.845680>,  <27.466358, 34.835072, 21.909395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.239635, 34.788837, 21.845680>,  <26.861765, 34.711781, 21.739489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.239635, 34.788837, 21.845680> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017920, 0.838458, -0.544671,
		-0.327521, 0.509779, 0.795522,
		0.944674, 0.192647, 0.265477,
		27.523037, 34.846630, 21.925323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<27.718513, 27.156870, 23.817142> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.111973, 27.223179, 23.845303>,  <28.348049, 27.262964, 23.862198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.111973, 27.223179, 23.845303>,  <27.718513, 27.156870, 23.817142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.111973, 27.223179, 23.845303> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175362, 0.970645, 0.164613,
		-0.041045, -0.174267, 0.983843,
		0.983648, 0.165772, 0.070400,
		28.407066, 27.272911, 23.866423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.786055, 27.657536, 24.418100>,  <27.718513, 27.156870, 23.817142>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.786055, 27.657536, 24.418100> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.121910, 27.689423, 24.203194>,  <28.323423, 27.708555, 24.074249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.121910, 27.689423, 24.203194>,  <27.786055, 27.657536, 24.418100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.121910, 27.689423, 24.203194> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034977, 0.979182, 0.199949,
		0.542021, -0.186677, 0.819368,
		0.839636, 0.079718, -0.537267,
		28.373800, 27.713337, 24.042013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.125650, 28.337069, 24.612886>,  <27.786055, 27.657536, 24.418100>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.125650, 28.337069, 24.612886> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.308485, 28.276325, 24.262341>,  <28.418186, 28.239880, 24.052013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.308485, 28.276325, 24.262341>,  <28.125650, 28.337069, 24.612886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.308485, 28.276325, 24.262341> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200673, 0.977518, -0.064723,
		0.866489, -0.146278, 0.477284,
		0.457086, -0.151859, -0.876362,
		28.445610, 28.230768, 23.999432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.787079, 28.634020, 24.656761>,  <28.125650, 28.337069, 24.612886>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.787079, 28.634020, 24.656761> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.678896, 28.615349, 24.272121>,  <28.613987, 28.604145, 24.041338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.678896, 28.615349, 24.272121>,  <28.787079, 28.634020, 24.656761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.678896, 28.615349, 24.272121> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089732, 0.995698, -0.023097,
		0.958542, 0.080039, -0.273481,
		-0.270456, -0.046679, -0.961600,
		28.597759, 28.601345, 23.983641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.232563, 29.151279, 24.349474>,  <28.787079, 28.634020, 24.656761>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.232563, 29.151279, 24.349474> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.943840, 29.091095, 24.079258>,  <28.770607, 29.054985, 23.917128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.943840, 29.091095, 24.079258>,  <29.232563, 29.151279, 24.349474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.943840, 29.091095, 24.079258> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040363, 0.983573, -0.175939,
		0.690916, -0.099727, -0.716023,
		-0.721807, -0.150460, -0.675541,
		28.727299, 29.045958, 23.876596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.254620, 29.734425, 23.754618>,  <29.232563, 29.151279, 24.349474>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.254620, 29.734425, 23.754618> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.885906, 29.590019, 23.698071>,  <28.664679, 29.503376, 23.664143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.885906, 29.590019, 23.698071>,  <29.254620, 29.734425, 23.754618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.885906, 29.590019, 23.698071> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339948, 0.927913, -0.153012,
		0.186417, -0.092986, -0.978060,
		-0.921783, -0.361014, -0.141368,
		28.609371, 29.481714, 23.655661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.052425, 30.005922, 23.154642>,  <29.254620, 29.734425, 23.754618>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.052425, 30.005922, 23.154642> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.714632, 29.900932, 23.341385>,  <28.511955, 29.837938, 23.453430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.714632, 29.900932, 23.341385>,  <29.052425, 30.005922, 23.154642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.714632, 29.900932, 23.341385> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326695, 0.943180, -0.060680,
		-0.424403, -0.203763, -0.882249,
		-0.844483, -0.262474, 0.466857,
		28.461287, 29.822189, 23.481441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.570993, 30.255211, 22.765356>,  <29.052425, 30.005922, 23.154642>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.570993, 30.255211, 22.765356> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.394970, 30.245510, 23.124413>,  <28.289356, 30.239691, 23.339846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.394970, 30.245510, 23.124413>,  <28.570993, 30.255211, 22.765356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.394970, 30.245510, 23.124413> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292644, 0.948934, -0.117829,
		-0.848945, -0.314541, -0.424683,
		-0.440058, -0.024251, 0.897641,
		28.262953, 30.238235, 23.393705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.000841, 30.462006, 22.577391>,  <28.570993, 30.255211, 22.765356>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.000841, 30.462006, 22.577391> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.017172, 30.505795, 22.974651>,  <28.026970, 30.532068, 23.213007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.017172, 30.505795, 22.974651>,  <28.000841, 30.462006, 22.577391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.017172, 30.505795, 22.974651> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230713, 0.968152, -0.097231,
		-0.972165, -0.225163, 0.064783,
		0.040827, 0.109471, 0.993151,
		28.029419, 30.538635, 23.272596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.513809, 30.053427, 22.357916>,  <28.000841, 30.462006, 22.577391>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.513809, 30.053427, 22.357916> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.339714, 30.027687, 21.998711>,  <27.235256, 30.012243, 21.783188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.339714, 30.027687, 21.998711>,  <27.513809, 30.053427, 22.357916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.339714, 30.027687, 21.998711> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367961, -0.923048, -0.112194,
		-0.821688, -0.379264, 0.425426,
		-0.435240, -0.064351, -0.898011,
		27.209143, 30.008381, 21.729307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.028889, 29.460493, 22.395868>,  <27.513809, 30.053427, 22.357916>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.028889, 29.460493, 22.395868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.117682, 29.521004, 22.010571>,  <27.170958, 29.557310, 21.779392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.117682, 29.521004, 22.010571>,  <27.028889, 29.460493, 22.395868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.117682, 29.521004, 22.010571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154351, -0.980887, -0.118475,
		-0.962756, -0.122378, -0.241090,
		0.221983, 0.151275, -0.963244,
		27.184277, 29.566387, 21.721598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.031424, 28.757679, 22.100548>,  <27.028889, 29.460493, 22.395868>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.031424, 28.757679, 22.100548> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.178188, 28.958469, 21.787270>,  <27.266247, 29.078943, 21.599302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.178188, 28.958469, 21.787270>,  <27.031424, 28.757679, 22.100548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.178188, 28.958469, 21.787270> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274647, -0.862839, -0.424356,
		-0.888789, -0.059402, -0.454451,
		0.366910, 0.501977, -0.783196,
		27.288261, 29.109062, 21.552311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.681364, 28.596872, 21.538750>,  <27.031424, 28.757679, 22.100548>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.681364, 28.596872, 21.538750> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.027872, 28.728901, 21.388748>,  <27.235777, 28.808119, 21.298748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.027872, 28.728901, 21.388748>,  <26.681364, 28.596872, 21.538750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.027872, 28.728901, 21.388748> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137481, -0.879168, -0.456248,
		-0.480285, 0.343678, -0.806977,
		0.866271, 0.330073, -0.375002,
		27.287754, 28.827923, 21.276247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.648344, 28.445946, 20.854219>,  <26.681364, 28.596872, 21.538750>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.648344, 28.445946, 20.854219> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.041801, 28.493313, 20.908516>,  <27.277876, 28.521732, 20.941093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.041801, 28.493313, 20.908516>,  <26.648344, 28.445946, 20.854219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.041801, 28.493313, 20.908516> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171130, -0.849554, -0.498971,
		0.056233, 0.514038, -0.855922,
		0.983642, 0.118416, 0.135741,
		27.336895, 28.528837, 20.949238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.970377, 28.357418, 20.193985>,  <26.648344, 28.445946, 20.854219>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.970377, 28.357418, 20.193985> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.240694, 28.282143, 20.479050>,  <27.402884, 28.236977, 20.650089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.240694, 28.282143, 20.479050>,  <26.970377, 28.357418, 20.193985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.240694, 28.282143, 20.479050> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203400, -0.881706, -0.425704,
		0.708472, 0.432643, -0.557572,
		0.675792, -0.188189, 0.712664,
		27.443432, 28.225685, 20.692848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.511131, 28.106972, 19.797333>,  <26.970377, 28.357418, 20.193985>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.511131, 28.106972, 19.797333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.545200, 27.992855, 20.179192>,  <27.565641, 27.924385, 20.408308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.545200, 27.992855, 20.179192>,  <27.511131, 28.106972, 19.797333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.545200, 27.992855, 20.179192> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198061, -0.934162, -0.296838,
		0.976482, 0.214362, -0.023061,
		0.085174, -0.285290, 0.954649,
		27.570753, 27.907269, 20.465586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.047949, 27.694101, 19.745893>,  <27.511131, 28.106972, 19.797333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.047949, 27.694101, 19.745893> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.880640, 27.586559, 20.092941>,  <27.780254, 27.522034, 20.301170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.880640, 27.586559, 20.092941>,  <28.047949, 27.694101, 19.745893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.880640, 27.586559, 20.092941> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168070, -0.961605, -0.216953,
		0.892636, 0.055076, 0.447400,
		-0.418273, -0.268854, 0.867620,
		27.755157, 27.505903, 20.353228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.553713, 27.336100, 20.142260>,  <28.047949, 27.694101, 19.745893>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.553713, 27.336100, 20.142260> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.186626, 27.220715, 20.251499>,  <27.966373, 27.151484, 20.317043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.186626, 27.220715, 20.251499>,  <28.553713, 27.336100, 20.142260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.186626, 27.220715, 20.251499> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252533, -0.954360, -0.159450,
		0.306628, -0.077364, 0.948680,
		-0.917718, -0.288465, 0.273097,
		27.911310, 27.134174, 20.333427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.694510, 26.692226, 20.434589>,  <28.553713, 27.336100, 20.142260>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.694510, 26.692226, 20.434589> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.296034, 26.668209, 20.409275>,  <28.056950, 26.653799, 20.394087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.296034, 26.668209, 20.409275>,  <28.694510, 26.692226, 20.434589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.296034, 26.668209, 20.409275> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070921, -0.979844, -0.186751,
		-0.050799, -0.190527, 0.980367,
		-0.996188, -0.060042, -0.063287,
		27.997177, 26.650196, 20.390289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.615631, 26.086655, 20.677860>,  <28.694510, 26.692226, 20.434589>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.615631, 26.086655, 20.677860> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.275074, 26.177189, 20.488586>,  <28.070740, 26.231510, 20.375023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.275074, 26.177189, 20.488586>,  <28.615631, 26.086655, 20.677860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.275074, 26.177189, 20.488586> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138604, -0.967124, -0.213211,
		-0.505884, -0.115942, 0.854774,
		-0.851393, 0.226335, -0.473183,
		28.019655, 26.245089, 20.346632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.169014, 25.650311, 20.870157>,  <28.615631, 26.086655, 20.677860>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.169014, 25.650311, 20.870157> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.020184, 25.769001, 20.518360>,  <27.930885, 25.840216, 20.307281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.020184, 25.769001, 20.518360>,  <28.169014, 25.650311, 20.870157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.020184, 25.769001, 20.518360> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006309, -0.948312, -0.317276,
		-0.928181, -0.112502, 0.354717,
		-0.372076, 0.296727, -0.879495,
		27.908560, 25.858019, 20.254511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.547440, 25.298298, 20.777504>,  <28.169014, 25.650311, 20.870157>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.547440, 25.298298, 20.777504> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.645920, 25.410583, 20.406433>,  <27.705008, 25.477955, 20.183790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.645920, 25.410583, 20.406433>,  <27.547440, 25.298298, 20.777504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.645920, 25.410583, 20.406433> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188693, -0.924942, -0.329965,
		-0.950673, 0.256284, -0.174753,
		0.246201, 0.280715, -0.927677,
		27.719780, 25.494799, 20.128130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.008232, 24.971203, 20.461414>,  <27.547440, 25.298298, 20.777504>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.008232, 24.971203, 20.461414> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.262369, 25.070576, 20.168941>,  <27.414850, 25.130199, 19.993458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.262369, 25.070576, 20.168941>,  <27.008232, 24.971203, 20.461414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.262369, 25.070576, 20.168941> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144869, -0.891687, -0.428845,
		-0.758522, 0.378387, -0.530535,
		0.635341, 0.248430, -0.731180,
		27.452971, 25.145105, 19.949587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.307381, 25.500492, 20.203936> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.950314, 25.334629, 20.274597>,  <32.736073, 25.235111, 20.316994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.950314, 25.334629, 20.274597>,  <33.307381, 25.500492, 20.203936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.950314, 25.334629, 20.274597> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450338, 0.804418, -0.387436,
		0.018549, -0.425405, -0.904813,
		-0.892665, -0.414659, 0.176655,
		32.682514, 25.210232, 20.327593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.909626, 25.599911, 19.591623>,  <33.307381, 25.500492, 20.203936>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.909626, 25.599911, 19.591623> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.661091, 25.557686, 19.902184>,  <32.511971, 25.532351, 20.088520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.661091, 25.557686, 19.902184>,  <32.909626, 25.599911, 19.591623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.661091, 25.557686, 19.902184> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402573, 0.893106, -0.200740,
		-0.672219, -0.437285, -0.597415,
		-0.621335, -0.105561, 0.776401,
		32.474689, 25.526018, 20.135103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.345062, 25.863733, 19.441591>,  <32.909626, 25.599911, 19.591623>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.345062, 25.863733, 19.441591> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.271313, 25.879669, 19.834412>,  <32.227062, 25.889231, 20.070103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.271313, 25.879669, 19.834412>,  <32.345062, 25.863733, 19.441591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.271313, 25.879669, 19.834412> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300998, 0.948881, -0.095005,
		-0.935632, -0.313111, -0.162955,
		-0.184372, 0.039840, 0.982049,
		32.216000, 25.891621, 20.129026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.693941, 26.171963, 19.462687>,  <32.345062, 25.863733, 19.441591>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.693941, 26.171963, 19.462687> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.835897, 26.223896, 19.833027>,  <31.921072, 26.255056, 20.055231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.835897, 26.223896, 19.833027>,  <31.693941, 26.171963, 19.462687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.835897, 26.223896, 19.833027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259706, 0.965025, -0.035776,
		-0.898112, -0.227752, 0.376197,
		0.354891, 0.129832, 0.925849,
		31.942366, 26.262846, 20.110781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.124289, 26.371651, 19.801258>,  <31.693941, 26.171963, 19.462687>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.124289, 26.371651, 19.801258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.440584, 26.487736, 20.016853>,  <31.630362, 26.557386, 20.146210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.440584, 26.487736, 20.016853>,  <31.124289, 26.371651, 19.801258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.440584, 26.487736, 20.016853> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314101, 0.948089, -0.049675,
		-0.525423, -0.130016, 0.840849,
		0.790741, 0.290212, 0.538986,
		31.677807, 26.574799, 20.178549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.894636, 26.749210, 20.358183>,  <31.124289, 26.371651, 19.801258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.894636, 26.749210, 20.358183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.270073, 26.875244, 20.301949>,  <31.495335, 26.950865, 20.268208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.270073, 26.875244, 20.301949>,  <30.894636, 26.749210, 20.358183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.270073, 26.875244, 20.301949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313260, 0.949004, 0.035496,
		0.144598, 0.010723, 0.989432,
		0.938594, 0.315083, -0.140584,
		31.551651, 26.969769, 20.259773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.875229, 27.420286, 20.703369>,  <30.894636, 26.749210, 20.358183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.875229, 27.420286, 20.703369> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.212315, 27.421570, 20.488029>,  <31.414566, 27.422340, 20.358826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.212315, 27.421570, 20.488029>,  <30.875229, 27.420286, 20.703369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.212315, 27.421570, 20.488029> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055337, 0.995202, -0.080687,
		0.535507, 0.097786, 0.838850,
		0.842716, 0.003211, -0.538349,
		31.465130, 27.422533, 20.326525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.296135, 27.945866, 21.015997>,  <30.875229, 27.420286, 20.703369>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.296135, 27.945866, 21.015997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.403051, 27.872921, 20.637516>,  <31.467201, 27.829155, 20.410427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.403051, 27.872921, 20.637516>,  <31.296135, 27.945866, 21.015997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.403051, 27.872921, 20.637516> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012095, 0.982487, -0.185936,
		0.963540, 0.038255, 0.264814,
		0.267289, -0.182360, -0.946204,
		31.483238, 27.818213, 20.353655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.614864, 28.544689, 20.870678>,  <31.296135, 27.945866, 21.015997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.614864, 28.544689, 20.870678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.634592, 28.389709, 20.502449>,  <31.646429, 28.296722, 20.281511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.634592, 28.389709, 20.502449>,  <31.614864, 28.544689, 20.870678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.634592, 28.389709, 20.502449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105428, 0.918563, -0.380954,
		0.993203, -0.078266, 0.086151,
		0.049320, -0.387447, -0.920572,
		31.649387, 28.273476, 20.226278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.286343, 28.778786, 20.537176>,  <31.614864, 28.544689, 20.870678>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.286343, 28.778786, 20.537176> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.003010, 28.724113, 20.260170>,  <31.833010, 28.691311, 20.093966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.003010, 28.724113, 20.260170>,  <32.286343, 28.778786, 20.537176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.003010, 28.724113, 20.260170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093909, 0.954106, -0.284365,
		0.699602, -0.266459, -0.662990,
		-0.708334, -0.136681, -0.692517,
		31.790510, 28.683109, 20.052414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.564899, 29.241598, 20.027718>,  <32.286343, 28.778786, 20.537176>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.564899, 29.241598, 20.027718> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.198769, 29.139843, 19.902840>,  <31.979090, 29.078791, 19.827913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.198769, 29.139843, 19.902840>,  <32.564899, 29.241598, 20.027718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.198769, 29.139843, 19.902840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109944, 0.903630, -0.413963,
		0.387414, -0.344587, -0.855085,
		-0.915326, -0.254386, -0.312194,
		31.924171, 29.063528, 19.809181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.501587, 29.333132, 19.264824>,  <32.564899, 29.241598, 20.027718>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.501587, 29.333132, 19.264824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.140007, 29.378014, 19.429882>,  <31.923058, 29.404942, 19.528917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.140007, 29.378014, 19.429882>,  <32.501587, 29.333132, 19.264824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.140007, 29.378014, 19.429882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017057, 0.954735, -0.296968,
		-0.427289, -0.275484, -0.861123,
		-0.903954, 0.112203, 0.412646,
		31.868820, 29.411674, 19.553677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.182980, 29.676510, 18.763449>,  <32.501587, 29.333132, 19.264824>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.182980, 29.676510, 18.763449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.969213, 29.729939, 19.097290>,  <31.840954, 29.761995, 19.297594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.969213, 29.729939, 19.097290>,  <32.182980, 29.676510, 18.763449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.969213, 29.729939, 19.097290> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099987, 0.970510, -0.219348,
		-0.839289, -0.200672, -0.505297,
		-0.534412, 0.133573, 0.834603,
		31.808889, 29.770010, 19.347672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.491081, 29.913506, 18.526539>,  <32.182980, 29.676510, 18.763449>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.491081, 29.913506, 18.526539> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.553118, 30.031754, 18.903591>,  <31.590340, 30.102703, 19.129824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.553118, 30.031754, 18.903591>,  <31.491081, 29.913506, 18.526539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.553118, 30.031754, 18.903591> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146357, 0.950524, -0.274016,
		-0.976998, -0.095463, 0.190685,
		0.155093, 0.295621, 0.942632,
		31.599646, 30.120440, 19.186380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.821947, 29.843248, 18.214867>,  <31.491081, 29.913506, 18.526539>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.821947, 29.843248, 18.214867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.629763, 29.760708, 17.873909>,  <30.514452, 29.711184, 17.669334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.629763, 29.760708, 17.873909>,  <30.821947, 29.843248, 18.214867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.629763, 29.760708, 17.873909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165628, -0.975786, 0.142863,
		-0.861234, -0.072541, 0.503004,
		-0.480461, -0.206350, -0.852395,
		30.485624, 29.698803, 17.618191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.332098, 29.292917, 18.309917>,  <30.821947, 29.843248, 18.214867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.332098, 29.292917, 18.309917> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.425526, 29.280609, 17.921177>,  <30.481583, 29.273224, 17.687933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.425526, 29.280609, 17.921177>,  <30.332098, 29.292917, 18.309917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.425526, 29.280609, 17.921177> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216486, -0.972766, 0.082829,
		-0.947934, -0.229739, -0.220545,
		0.233568, -0.030771, -0.971853,
		30.495596, 29.271378, 17.629622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.018122, 28.622917, 18.065886>,  <30.332098, 29.292917, 18.309917>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.018122, 28.622917, 18.065886> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.279257, 28.714157, 17.776951>,  <30.435938, 28.768902, 17.603590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.279257, 28.714157, 17.776951>,  <30.018122, 28.622917, 18.065886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.279257, 28.714157, 17.776951> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358741, -0.932967, 0.029614,
		-0.667162, -0.278465, -0.690907,
		0.652840, 0.228099, -0.722337,
		30.475109, 28.782587, 17.560249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.997608, 28.057692, 17.589035>,  <30.018122, 28.622917, 18.065886>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.997608, 28.057692, 17.589035> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.342749, 28.255737, 17.548351>,  <30.549833, 28.374565, 17.523941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.342749, 28.255737, 17.548351>,  <29.997608, 28.057692, 17.589035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.342749, 28.255737, 17.548351> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503093, -0.860684, 0.078231,
		-0.048807, -0.118672, -0.991733,
		0.862853, 0.495116, -0.101711,
		30.601604, 28.404272, 17.517838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.260008, 27.593767, 17.120556>,  <29.997608, 28.057692, 17.589035>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.260008, 27.593767, 17.120556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.567350, 27.818027, 17.244038>,  <30.751755, 27.952583, 17.318127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.567350, 27.818027, 17.244038>,  <30.260008, 27.593767, 17.120556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.567350, 27.818027, 17.244038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603183, -0.795610, -0.056356,
		0.214014, 0.229507, -0.949486,
		0.768355, 0.560653, 0.308706,
		30.797857, 27.986223, 17.336649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.680988, 27.463013, 16.592777>,  <30.260008, 27.593767, 17.120556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.680988, 27.463013, 16.592777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.905100, 27.603588, 16.892799>,  <31.039566, 27.687933, 17.072813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.905100, 27.603588, 16.892799>,  <30.680988, 27.463013, 16.592777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.905100, 27.603588, 16.892799> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621841, -0.776655, -0.100603,
		0.547178, 0.522780, -0.653680,
		0.560277, 0.351437, 0.750055,
		31.073183, 27.709019, 17.117815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.327854, 27.477100, 16.357603>,  <30.680988, 27.463013, 16.592777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.327854, 27.477100, 16.357603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.366390, 27.461018, 16.755417>,  <31.389513, 27.451368, 16.994106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.366390, 27.461018, 16.755417>,  <31.327854, 27.477100, 16.357603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.366390, 27.461018, 16.755417> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565454, -0.820080, -0.087928,
		0.819134, 0.570835, -0.056274,
		0.096341, -0.040205, 0.994536,
		31.395292, 27.448956, 17.053778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.063145, 27.215786, 16.460024>,  <31.327854, 27.477100, 16.357603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.063145, 27.215786, 16.460024> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.860723, 27.156498, 16.799892>,  <31.739269, 27.120926, 17.003813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.860723, 27.156498, 16.799892>,  <32.063145, 27.215786, 16.460024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.860723, 27.156498, 16.799892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373838, -0.925472, 0.061211,
		0.777273, 0.348615, 0.523751,
		-0.506056, -0.148220, 0.849670,
		31.708906, 27.112032, 17.054792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.519993, 26.991825, 16.938555>,  <32.063145, 27.215786, 16.460024>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.519993, 26.991825, 16.938555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.169514, 26.849369, 17.068439>,  <31.959227, 26.763895, 17.146370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.169514, 26.849369, 17.068439>,  <32.519993, 26.991825, 16.938555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.169514, 26.849369, 17.068439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386796, -0.921576, 0.032951,
		0.287511, 0.154468, 0.945239,
		-0.876200, -0.356141, 0.324711,
		31.906654, 26.742527, 17.165854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.735725, 26.569471, 17.482569>,  <32.519993, 26.991825, 16.938555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.735725, 26.569471, 17.482569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.364300, 26.433380, 17.423225>,  <32.141445, 26.351727, 17.387619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.364300, 26.433380, 17.423225>,  <32.735725, 26.569471, 17.482569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.364300, 26.433380, 17.423225> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310904, -0.931299, 0.189793,
		-0.202737, 0.130111, 0.970551,
		-0.928567, -0.340226, -0.148356,
		32.085732, 26.331312, 17.378719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.486557, 26.204002, 18.088978>,  <32.735725, 26.569471, 17.482569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.486557, 26.204002, 18.088978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.251064, 26.059933, 17.799519>,  <32.109768, 25.973490, 17.625843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.251064, 26.059933, 17.799519>,  <32.486557, 26.204002, 18.088978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.251064, 26.059933, 17.799519> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141256, -0.927308, 0.346622,
		-0.795891, 0.101847, 0.596812,
		-0.588731, -0.360176, -0.723650,
		32.074444, 25.951880, 17.582424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.048187, 25.604485, 18.447710>,  <32.486557, 26.204002, 18.088978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.048187, 25.604485, 18.447710> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.974421, 25.565891, 18.056469>,  <31.930161, 25.542736, 17.821724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.974421, 25.565891, 18.056469>,  <32.048187, 25.604485, 18.447710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.974421, 25.565891, 18.056469> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124634, -0.989432, 0.074100,
		-0.974914, -0.108240, 0.194491,
		-0.184416, -0.096481, -0.978101,
		31.919096, 25.536947, 17.763039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.424885, 25.107042, 18.340160>,  <32.048187, 25.604485, 18.447710>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.424885, 25.107042, 18.340160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.648918, 25.097496, 18.008923>,  <31.783339, 25.091768, 17.810181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.648918, 25.097496, 18.008923>,  <31.424885, 25.107042, 18.340160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.648918, 25.097496, 18.008923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118289, -0.991647, -0.051426,
		-0.819949, 0.126757, -0.558226,
		0.560082, -0.023865, -0.828093,
		31.816942, 25.090336, 17.760494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.082390, 24.738909, 17.820654>,  <31.424885, 25.107042, 18.340160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.082390, 24.738909, 17.820654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.472483, 24.700565, 17.740917>,  <31.706537, 24.677559, 17.693075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.472483, 24.700565, 17.740917>,  <31.082390, 24.738909, 17.820654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.472483, 24.700565, 17.740917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097356, -0.995247, 0.002309,
		-0.198615, 0.017155, -0.979928,
		0.975230, -0.095860, -0.199341,
		31.765051, 24.671806, 17.681114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.738817, 24.896635, 17.164833>,  <31.082390, 24.738909, 17.820654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.738817, 24.896635, 17.164833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.378532, 24.724361, 17.187557>,  <30.162361, 24.620996, 17.201191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.378532, 24.724361, 17.187557>,  <30.738817, 24.896635, 17.164833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.378532, 24.724361, 17.187557> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422380, 0.898807, 0.117225,
		-0.101549, 0.081590, -0.991479,
		-0.900713, -0.430685, 0.056811,
		30.108318, 24.595156, 17.204601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.336956, 25.300812, 16.725266>,  <30.738817, 24.896635, 17.164833>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.336956, 25.300812, 16.725266> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.068056, 25.123726, 16.962612>,  <29.906715, 25.017475, 17.105021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.068056, 25.123726, 16.962612>,  <30.336956, 25.300812, 16.725266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.068056, 25.123726, 16.962612> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536673, 0.843520, 0.021337,
		-0.509963, -0.304100, -0.804650,
		-0.672250, -0.442715, 0.593366,
		29.866381, 24.990911, 17.140621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.698557, 25.595392, 16.454889>,  <30.336956, 25.300812, 16.725266>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.698557, 25.595392, 16.454889> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.605675, 25.433506, 16.808678>,  <29.549946, 25.336374, 17.020950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.605675, 25.433506, 16.808678>,  <29.698557, 25.595392, 16.454889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.605675, 25.433506, 16.808678> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602091, 0.773975, 0.196085,
		-0.763916, -0.486999, -0.423396,
		-0.232205, -0.404715, 0.884470,
		29.536013, 25.312092, 17.074018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.919212, 25.601690, 16.592318>,  <29.698557, 25.595392, 16.454889>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.919212, 25.601690, 16.592318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.104769, 25.597382, 16.946648>,  <29.216103, 25.594797, 17.159246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.104769, 25.597382, 16.946648>,  <28.919212, 25.601690, 16.592318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.104769, 25.597382, 16.946648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538013, 0.790980, 0.291365,
		-0.703809, -0.611748, 0.361134,
		0.463892, -0.010770, 0.885826,
		29.243937, 25.594151, 17.212395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.301088, 25.811563, 17.135723>,  <28.919212, 25.601690, 16.592318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.301088, 25.811563, 17.135723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.643408, 25.849026, 17.339230>,  <28.848799, 25.871504, 17.461332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.643408, 25.849026, 17.339230>,  <28.301088, 25.811563, 17.135723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.643408, 25.849026, 17.339230> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338904, 0.844538, 0.414608,
		-0.390841, -0.527242, 0.754493,
		0.855797, 0.093655, 0.508764,
		28.900146, 25.877123, 17.491859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.082500, 26.011747, 17.798363>,  <28.301088, 25.811563, 17.135723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.082500, 26.011747, 17.798363> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.473778, 26.092724, 17.779808>,  <28.708544, 26.141310, 17.768675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.473778, 26.092724, 17.779808>,  <28.082500, 26.011747, 17.798363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.473778, 26.092724, 17.779808> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164142, 0.890405, 0.424542,
		0.127251, -0.407671, 0.904219,
		0.978195, 0.202443, -0.046389,
		28.767237, 26.153458, 17.765892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.366945, 26.284538, 18.429138>,  <28.082500, 26.011747, 17.798363>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.366945, 26.284538, 18.429138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.628811, 26.428898, 18.163456>,  <28.785931, 26.515514, 18.004047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.628811, 26.428898, 18.163456>,  <28.366945, 26.284538, 18.429138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.628811, 26.428898, 18.163456> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248350, 0.932582, 0.261941,
		0.713960, -0.006527, 0.700156,
		0.654663, 0.360899, -0.664205,
		28.825211, 26.537167, 17.964195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.628553, 26.890554, 18.767653>,  <28.366945, 26.284538, 18.429138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.628553, 26.890554, 18.767653> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.735945, 26.945816, 18.386322>,  <28.800379, 26.978973, 18.157524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.735945, 26.945816, 18.386322>,  <28.628553, 26.890554, 18.767653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.735945, 26.945816, 18.386322> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325161, 0.944573, 0.045313,
		0.906748, 0.297819, 0.298518,
		0.268477, 0.138154, -0.953328,
		28.816488, 26.987263, 18.100325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.833424, 27.575626, 18.785818>,  <28.628553, 26.890554, 18.767653>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.833424, 27.575626, 18.785818> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.816429, 27.492893, 18.394836>,  <28.806232, 27.443254, 18.160248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.816429, 27.492893, 18.394836>,  <28.833424, 27.575626, 18.785818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.816429, 27.492893, 18.394836> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321356, 0.929177, -0.182648,
		0.946005, 0.306351, -0.105943,
		-0.042486, -0.206832, -0.977454,
		28.803682, 27.430843, 18.101601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.187443, 28.028769, 18.434544>,  <28.833424, 27.575626, 18.785818>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.187443, 28.028769, 18.434544> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.908548, 27.906765, 18.175056>,  <28.741213, 27.833563, 18.019363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.908548, 27.906765, 18.175056>,  <29.187443, 28.028769, 18.434544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.908548, 27.906765, 18.175056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280280, 0.948917, -0.144910,
		0.659777, 0.080786, -0.747106,
		-0.697235, -0.305007, -0.648717,
		28.699377, 27.815264, 17.980442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.143137, 28.558687, 18.029768>,  <29.187443, 28.028769, 18.434544>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.143137, 28.558687, 18.029768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.801920, 28.367691, 17.945557>,  <28.597191, 28.253094, 17.895029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.801920, 28.367691, 17.945557>,  <29.143137, 28.558687, 18.029768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.801920, 28.367691, 17.945557> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461581, 0.878606, -0.122451,
		0.243441, -0.007280, -0.969888,
		-0.853041, -0.477492, -0.210528,
		28.546007, 28.224443, 17.882399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.844412, 28.936739, 17.446415>,  <29.143137, 28.558687, 18.029768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.844412, 28.936739, 17.446415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.537811, 28.713669, 17.573837>,  <28.353851, 28.579826, 17.650290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.537811, 28.713669, 17.573837>,  <28.844412, 28.936739, 17.446415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.537811, 28.713669, 17.573837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632690, 0.740905, -0.225309,
		-0.110369, -0.374245, -0.920738,
		-0.766500, -0.557674, 0.318555,
		28.307861, 28.546366, 17.669403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.364090, 28.975285, 16.936178>,  <28.844412, 28.936739, 17.446415>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.364090, 28.975285, 16.936178> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.156090, 28.892662, 17.267704>,  <28.031290, 28.843088, 17.466619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.156090, 28.892662, 17.267704>,  <28.364090, 28.975285, 16.936178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.156090, 28.892662, 17.267704> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690127, 0.673355, -0.265175,
		-0.503312, -0.709878, -0.492697,
		-0.520002, -0.206558, 0.828814,
		28.000090, 28.830694, 17.516348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.779705, 28.870184, 16.697063>,  <28.364090, 28.975285, 16.936178>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.779705, 28.870184, 16.697063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.722610, 28.975548, 17.078690>,  <27.688354, 29.038767, 17.307665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.722610, 28.975548, 17.078690>,  <27.779705, 28.870184, 16.697063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.722610, 28.975548, 17.078690> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693777, 0.660858, -0.286252,
		-0.705904, -0.702767, 0.088420,
		-0.142735, 0.263410, 0.954066,
		27.679790, 29.054571, 17.364910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<39.932037, 37.952545, 26.587683> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.146393, 37.702587, 26.814781>,  <40.275005, 37.552612, 26.951040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.146393, 37.702587, 26.814781>,  <39.932037, 37.952545, 26.587683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.146393, 37.702587, 26.814781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071086, -0.636670, -0.767853,
		0.841291, 0.451842, -0.296762,
		0.535888, -0.624892, 0.567745,
		40.307159, 37.515118, 26.985106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.636093, 37.844036, 26.304430>,  <39.932037, 37.952545, 26.587683>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.636093, 37.844036, 26.304430> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.585777, 37.528450, 26.544998>,  <40.555588, 37.339096, 26.689339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.585777, 37.528450, 26.544998>,  <40.636093, 37.844036, 26.304430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.585777, 37.528450, 26.544998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223006, -0.613208, -0.757789,
		0.966667, 0.038797, 0.253081,
		-0.125791, -0.788968, 0.601420,
		40.548038, 37.291759, 26.725424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.244862, 37.377186, 26.207666>,  <40.636093, 37.844036, 26.304430>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.244862, 37.377186, 26.207666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.934319, 37.177010, 26.360939>,  <40.747993, 37.056904, 26.452902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.934319, 37.177010, 26.360939>,  <41.244862, 37.377186, 26.207666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.934319, 37.177010, 26.360939> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141835, -0.731064, -0.667405,
		0.614123, -0.463798, 0.638549,
		-0.776361, -0.500437, 0.383180,
		40.701408, 37.026878, 26.475893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.503506, 36.684841, 26.294706>,  <41.244862, 37.377186, 26.207666>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.503506, 36.684841, 26.294706> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.106319, 36.650848, 26.327679>,  <40.868008, 36.630451, 26.347462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.106319, 36.650848, 26.327679>,  <41.503506, 36.684841, 26.294706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.106319, 36.650848, 26.327679> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012330, -0.766689, -0.641900,
		0.117750, -0.636369, 0.762345,
		-0.992967, -0.084984, 0.082432,
		40.808430, 36.625355, 26.352407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.360706, 36.003197, 26.437538>,  <41.503506, 36.684841, 26.294706>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.360706, 36.003197, 26.437538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.013988, 36.133034, 26.286118>,  <40.805958, 36.210938, 26.195265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.013988, 36.133034, 26.286118>,  <41.360706, 36.003197, 26.437538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.013988, 36.133034, 26.286118> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124154, -0.875709, -0.466604,
		-0.482957, -0.357454, 0.799362,
		-0.866798, 0.324593, -0.378550,
		40.753948, 36.230412, 26.172552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.860180, 35.380520, 26.469841>,  <41.360706, 36.003197, 26.437538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.860180, 35.380520, 26.469841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.708424, 35.638481, 26.204464>,  <40.617371, 35.793259, 26.045237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.708424, 35.638481, 26.204464>,  <40.860180, 35.380520, 26.469841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.708424, 35.638481, 26.204464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055681, -0.731669, -0.679382,
		-0.923558, -0.220812, 0.313499,
		-0.379394, 0.644905, -0.663444,
		40.594604, 35.831951, 26.005430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.292328, 35.051041, 26.222389>,  <40.860180, 35.380520, 26.469841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.292328, 35.051041, 26.222389> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.330845, 35.331947, 25.940239>,  <40.353954, 35.500492, 25.770948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.330845, 35.331947, 25.940239>,  <40.292328, 35.051041, 26.222389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.330845, 35.331947, 25.940239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249665, -0.668971, -0.700103,
		-0.963533, 0.243522, 0.110913,
		0.096292, 0.702264, -0.705374,
		40.359734, 35.542625, 25.728626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.683971, 35.054417, 25.827324>,  <40.292328, 35.051041, 26.222389>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.683971, 35.054417, 25.827324> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.950539, 35.231438, 25.587315>,  <40.110481, 35.337650, 25.443308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.950539, 35.231438, 25.587315>,  <39.683971, 35.054417, 25.827324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.950539, 35.231438, 25.587315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228547, -0.644782, -0.729399,
		-0.709682, 0.623221, -0.328553,
		0.666422, 0.442552, -0.600025,
		40.150467, 35.364204, 25.407307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364185, 34.974827, 25.248035>,  <39.683971, 35.054417, 25.827324>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.364185, 34.974827, 25.248035> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.735432, 35.073269, 25.136299>,  <39.958179, 35.132336, 25.069258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.735432, 35.073269, 25.136299>,  <39.364185, 34.974827, 25.248035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.735432, 35.073269, 25.136299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171228, -0.384072, -0.907287,
		-0.330575, 0.889900, -0.314323,
		0.928117, 0.246105, -0.279340,
		40.013866, 35.147099, 25.052498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294334, 35.304573, 24.562588>,  <39.364185, 34.974827, 25.248035>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.294334, 35.304573, 24.562588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.667629, 35.168831, 24.609764>,  <39.891605, 35.087387, 24.638071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.667629, 35.168831, 24.609764>,  <39.294334, 35.304573, 24.562588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.667629, 35.168831, 24.609764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046989, -0.440758, -0.896395,
		0.356182, 0.831005, -0.427276,
		0.933234, -0.339357, 0.117942,
		39.947601, 35.067024, 24.645147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435837, 35.360886, 23.920593>,  <39.294334, 35.304573, 24.562588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.435837, 35.360886, 23.920593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.713379, 35.127628, 24.089596>,  <39.879906, 34.987675, 24.190996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.713379, 35.127628, 24.089596>,  <39.435837, 35.360886, 23.920593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.713379, 35.127628, 24.089596> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022329, -0.569013, -0.822025,
		0.719770, 0.579800, -0.381791,
		0.693854, -0.583144, 0.422505,
		39.921535, 34.952686, 24.216347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.977325, 35.256382, 23.361549>,  <39.435837, 35.360886, 23.920593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.977325, 35.256382, 23.361549> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.001286, 34.963158, 23.632557>,  <40.015663, 34.787224, 23.795160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.001286, 34.963158, 23.632557>,  <39.977325, 35.256382, 23.361549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.001286, 34.963158, 23.632557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056110, -0.680135, -0.730936,
		0.996626, 0.005770, -0.081875,
		0.059904, -0.733064, 0.677516,
		40.019257, 34.743237, 23.835812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.474312, 34.917645, 23.122795>,  <39.977325, 35.256382, 23.361549>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.474312, 34.917645, 23.122795> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.309334, 34.642406, 23.361599>,  <40.210346, 34.477264, 23.504881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.309334, 34.642406, 23.361599>,  <40.474312, 34.917645, 23.122795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.309334, 34.642406, 23.361599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128220, -0.692669, -0.709766,
		0.901914, -0.216190, 0.373915,
		-0.412444, -0.688092, 0.597008,
		40.185600, 34.435978, 23.540701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.884991, 34.299252, 23.078005>,  <40.474312, 34.917645, 23.122795>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.884991, 34.299252, 23.078005> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.524059, 34.182903, 23.205254>,  <40.307499, 34.113094, 23.281603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.524059, 34.182903, 23.205254>,  <40.884991, 34.299252, 23.078005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.524059, 34.182903, 23.205254> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004386, -0.731777, -0.681531,
		0.431028, -0.616359, 0.659027,
		-0.902328, -0.290869, 0.318120,
		40.253361, 34.095642, 23.300690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.912445, 33.558189, 23.177479>,  <40.884991, 34.299252, 23.078005>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.912445, 33.558189, 23.177479> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.527096, 33.650356, 23.122593>,  <40.295887, 33.705658, 23.089663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.527096, 33.650356, 23.122593>,  <40.912445, 33.558189, 23.177479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.527096, 33.650356, 23.122593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054525, -0.669253, -0.741031,
		-0.262577, -0.706405, 0.657302,
		-0.963369, 0.230417, -0.137213,
		40.238087, 33.719482, 23.081429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.585678, 32.899117, 23.067661>,  <40.912445, 33.558189, 23.177479>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.585678, 32.899117, 23.067661> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.364319, 33.190624, 22.906342>,  <40.231503, 33.365528, 22.809549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.364319, 33.190624, 22.906342>,  <40.585678, 32.899117, 23.067661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.364319, 33.190624, 22.906342> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127186, -0.552457, -0.823781,
		-0.823150, -0.404584, 0.398417,
		-0.553396, 0.728769, -0.403297,
		40.198299, 33.409256, 22.785353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348568, 32.428413, 22.458918>,  <40.585678, 32.899117, 23.067661>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.348568, 32.428413, 22.458918> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.182228, 32.786617, 22.395512>,  <40.082424, 33.001541, 22.357468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.182228, 32.786617, 22.395512>,  <40.348568, 32.428413, 22.458918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.182228, 32.786617, 22.395512> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429395, -0.346988, -0.833798,
		-0.801679, -0.278669, 0.528823,
		-0.415849, 0.895513, -0.158514,
		40.057472, 33.055271, 22.347958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743877, 32.271957, 22.181908>,  <40.348568, 32.428413, 22.458918>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.743877, 32.271957, 22.181908> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.805370, 32.654335, 22.081882>,  <39.842266, 32.883762, 22.021868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.805370, 32.654335, 22.081882>,  <39.743877, 32.271957, 22.181908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.805370, 32.654335, 22.081882> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346226, -0.184913, -0.919747,
		-0.925469, 0.227975, 0.302546,
		0.153735, 0.955947, -0.250062,
		39.851490, 32.941120, 22.006865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051193, 32.547836, 21.909353>,  <39.743877, 32.271957, 22.181908>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.051193, 32.547836, 21.909353> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.330849, 32.795452, 21.766247>,  <39.498642, 32.944023, 21.680382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.330849, 32.795452, 21.766247>,  <39.051193, 32.547836, 21.909353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330849, 32.795452, 21.766247> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316686, -0.180514, -0.931195,
		-0.641031, 0.764331, 0.069839,
		0.699135, 0.619042, -0.357768,
		39.540588, 32.981163, 21.658916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662960, 32.907040, 21.436119>,  <39.051193, 32.547836, 21.909353>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.662960, 32.907040, 21.436119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.048962, 32.931240, 21.334053>,  <39.280563, 32.945759, 21.272814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.048962, 32.931240, 21.334053>,  <38.662960, 32.907040, 21.436119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.048962, 32.931240, 21.334053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247508, -0.111413, -0.962459,
		-0.086659, 0.991931, -0.092539,
		0.965003, 0.060501, -0.255165,
		39.338463, 32.949390, 21.257504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680920, 33.509628, 21.046747>,  <38.662960, 32.907040, 21.436119>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.680920, 33.509628, 21.046747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.981995, 33.266552, 20.945419>,  <39.162640, 33.120705, 20.884623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.981995, 33.266552, 20.945419>,  <38.680920, 33.509628, 21.046747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.981995, 33.266552, 20.945419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242629, 0.101650, -0.964779,
		0.612039, 0.787640, -0.070933,
		0.752688, -0.607693, -0.253318,
		39.207802, 33.084244, 20.869423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.460976, 33.847229, 21.642750>,  <38.680920, 33.509628, 21.046747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.460976, 33.847229, 21.642750> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.212749, 34.113373, 21.476765>,  <38.063812, 34.273060, 21.377172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.212749, 34.113373, 21.476765>,  <38.460976, 33.847229, 21.642750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212749, 34.113373, 21.476765> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013131, 0.537930, 0.842887,
		0.784045, 0.517617, -0.342557,
		-0.620564, 0.665360, -0.414965,
		38.026581, 34.312981, 21.352276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797310, 34.479294, 21.581636>,  <38.460976, 33.847229, 21.642750>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.797310, 34.479294, 21.581636> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.403973, 34.551163, 21.592625>,  <38.167969, 34.594284, 21.599216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.403973, 34.551163, 21.592625>,  <38.797310, 34.479294, 21.581636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.403973, 34.551163, 21.592625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130972, 0.595657, 0.792489,
		0.126023, 0.782887, -0.609267,
		-0.983344, 0.179668, 0.027470,
		38.108971, 34.605064, 21.600866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748535, 35.226658, 21.733292>,  <38.797310, 34.479294, 21.581636>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.748535, 35.226658, 21.733292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.400303, 35.061764, 21.840740>,  <38.191364, 34.962826, 21.905209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.400303, 35.061764, 21.840740>,  <38.748535, 35.226658, 21.733292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.400303, 35.061764, 21.840740> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037516, 0.599968, 0.799144,
		-0.490598, 0.685640, -0.537784,
		-0.870578, -0.412234, 0.268621,
		38.139130, 34.938095, 21.921326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382408, 35.744431, 21.897974>,  <38.748535, 35.226658, 21.733292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.382408, 35.744431, 21.897974> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.187645, 35.443859, 22.076084>,  <38.070786, 35.263515, 22.182951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.187645, 35.443859, 22.076084>,  <38.382408, 35.744431, 21.897974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187645, 35.443859, 22.076084> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042607, 0.529616, 0.847167,
		-0.872413, 0.393521, -0.289891,
		-0.486909, -0.751431, 0.445277,
		38.041573, 35.218430, 22.209667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934269, 36.016148, 22.289782>,  <38.382408, 35.744431, 21.897974>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.934269, 36.016148, 22.289782> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.890728, 35.663078, 22.472660>,  <37.864601, 35.451237, 22.582388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.890728, 35.663078, 22.472660>,  <37.934269, 36.016148, 22.289782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.890728, 35.663078, 22.472660> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044134, 0.463769, 0.884856,
		-0.993077, 0.076144, -0.089440,
		-0.108856, -0.882678, 0.457198,
		37.858070, 35.398273, 22.609819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387001, 36.166821, 22.872387>,  <37.934269, 36.016148, 22.289782>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387001, 36.166821, 22.872387> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.593964, 35.839031, 22.970985>,  <37.718140, 35.642357, 23.030144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.593964, 35.839031, 22.970985>,  <37.387001, 36.166821, 22.872387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.593964, 35.839031, 22.970985> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042986, 0.262794, 0.963894,
		-0.854662, -0.509318, 0.100744,
		0.517403, -0.819472, 0.246494,
		37.749184, 35.593189, 23.044933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012814, 36.007656, 23.532595>,  <37.387001, 36.166821, 22.872387>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012814, 36.007656, 23.532595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.362110, 35.813622, 23.514072>,  <37.571690, 35.697201, 23.502958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.362110, 35.813622, 23.514072>,  <37.012814, 36.007656, 23.532595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362110, 35.813622, 23.514072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167307, 0.209210, 0.963452,
		-0.457667, -0.849073, 0.263849,
		0.873241, -0.485084, -0.046308,
		37.624081, 35.668095, 23.500179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961937, 35.368187, 24.000832>,  <37.012814, 36.007656, 23.532595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.961937, 35.368187, 24.000832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.342834, 35.477177, 23.945702>,  <37.571373, 35.542568, 23.912624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.342834, 35.477177, 23.945702>,  <36.961937, 35.368187, 24.000832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342834, 35.477177, 23.945702> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092974, 0.171211, 0.980838,
		0.290848, -0.946808, 0.137702,
		0.952241, 0.272472, -0.137825,
		37.628506, 35.558918, 23.904354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.354710, 35.107880, 24.564362>,  <36.961937, 35.368187, 24.000832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.354710, 35.107880, 24.564362> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.561684, 35.419449, 24.422638>,  <37.685867, 35.606392, 24.337605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.561684, 35.419449, 24.422638>,  <37.354710, 35.107880, 24.564362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.561684, 35.419449, 24.422638> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244010, 0.262549, 0.933556,
		0.820194, -0.569510, -0.054213,
		0.517436, 0.778926, -0.354308,
		37.716915, 35.653126, 24.316345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936352, 35.082569, 25.011431>,  <37.354710, 35.107880, 24.564362>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936352, 35.082569, 25.011431> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.942455, 35.438828, 24.829651>,  <37.946117, 35.652580, 24.720583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.942455, 35.438828, 24.829651>,  <37.936352, 35.082569, 25.011431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.942455, 35.438828, 24.829651> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227364, 0.439507, 0.868988,
		0.973690, -0.116581, -0.195796,
		0.015254, 0.890642, -0.454450,
		37.947033, 35.706020, 24.693316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505936, 35.377392, 25.244915>,  <37.936352, 35.082569, 25.011431>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505936, 35.377392, 25.244915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.289745, 35.677467, 25.092541>,  <38.160030, 35.857513, 25.001116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.289745, 35.677467, 25.092541>,  <38.505936, 35.377392, 25.244915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.289745, 35.677467, 25.092541> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213603, 0.560269, 0.800294,
		0.813796, 0.351168, -0.463052,
		-0.540472, 0.750186, -0.380935,
		38.127605, 35.902523, 24.978260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.913975, 35.919430, 25.381308>,  <38.505936, 35.377392, 25.244915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.913975, 35.919430, 25.381308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.537819, 36.052872, 25.354855>,  <38.312126, 36.132935, 25.338982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.537819, 36.052872, 25.354855>,  <38.913975, 35.919430, 25.381308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.537819, 36.052872, 25.354855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186509, 0.668475, 0.719969,
		0.284392, 0.664718, -0.690848,
		-0.940391, 0.333603, -0.066134,
		38.255703, 36.152954, 25.335014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.913498, 36.644169, 25.281963>,  <38.913975, 35.919430, 25.381308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.913498, 36.644169, 25.281963> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.573933, 36.563206, 25.477261>,  <38.370193, 36.514629, 25.594439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.573933, 36.563206, 25.477261>,  <38.913498, 36.644169, 25.281963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.573933, 36.563206, 25.477261> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203290, 0.727657, 0.655125,
		-0.487876, 0.655398, -0.576568,
		-0.848911, -0.202409, 0.488242,
		38.319260, 36.502483, 25.623734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.798660, 37.334293, 25.577419>,  <38.913498, 36.644169, 25.281963>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.798660, 37.334293, 25.577419> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.556873, 37.074169, 25.761467>,  <38.411800, 36.918095, 25.871897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.556873, 37.074169, 25.761467>,  <38.798660, 37.334293, 25.577419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.556873, 37.074169, 25.761467> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091794, 0.516879, 0.851123,
		-0.791322, 0.556714, -0.252743,
		-0.604470, -0.650311, 0.460121,
		38.375534, 36.879074, 25.899504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219219, 37.682560, 25.943451>,  <38.798660, 37.334293, 25.577419>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219219, 37.682560, 25.943451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.250168, 37.339802, 26.147312>,  <38.268738, 37.134148, 26.269629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.250168, 37.339802, 26.147312>,  <38.219219, 37.682560, 25.943451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.250168, 37.339802, 26.147312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097014, 0.502287, 0.859241,
		-0.992271, -0.115928, -0.044265,
		0.077376, -0.856894, 0.509651,
		38.273380, 37.082733, 26.300207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.982101, 37.900036, 26.514648>,  <38.219219, 37.682560, 25.943451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.982101, 37.900036, 26.514648> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.099529, 37.534348, 26.626381>,  <38.169987, 37.314934, 26.693420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.099529, 37.534348, 26.626381>,  <37.982101, 37.900036, 26.514648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.099529, 37.534348, 26.626381> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048364, 0.277630, 0.959470,
		-0.954714, -0.295178, 0.037288,
		0.293567, -0.914216, 0.279333,
		38.187599, 37.260082, 26.710180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492287, 37.607452, 27.025579>,  <37.982101, 37.900036, 26.514648>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.492287, 37.607452, 27.025579> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.863396, 37.460407, 27.051182>,  <38.086063, 37.372181, 27.066544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.863396, 37.460407, 27.051182>,  <37.492287, 37.607452, 27.025579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863396, 37.460407, 27.051182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087636, 0.381410, 0.920242,
		-0.362703, -0.848168, 0.386078,
		0.927775, -0.367609, 0.064008,
		38.141727, 37.350124, 27.070385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.458073, 37.371334, 27.663219>,  <37.492287, 37.607452, 27.025579>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.458073, 37.371334, 27.663219> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.848190, 37.379677, 27.575245>,  <38.082260, 37.384682, 27.522461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.848190, 37.379677, 27.575245>,  <37.458073, 37.371334, 27.663219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848190, 37.379677, 27.575245> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194799, 0.388417, 0.900658,
		0.104210, -0.921248, 0.374758,
		0.975291, 0.020855, -0.219935,
		38.140778, 37.385933, 27.509264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859997, 37.047745, 28.251553>,  <37.458073, 37.371334, 27.663219>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859997, 37.047745, 28.251553> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.112232, 37.271503, 28.036358>,  <38.263573, 37.405758, 27.907242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.112232, 37.271503, 28.036358>,  <37.859997, 37.047745, 28.251553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112232, 37.271503, 28.036358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298550, 0.465003, 0.833451,
		0.716394, -0.686184, 0.126220,
		0.630593, 0.559396, -0.537986,
		38.301411, 37.439323, 27.874962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640442, 36.938488, 28.507063>,  <37.859997, 37.047745, 28.251553>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640442, 36.938488, 28.507063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.600037, 37.290024, 28.320545>,  <38.575794, 37.500946, 28.208633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.600037, 37.290024, 28.320545>,  <38.640442, 36.938488, 28.507063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600037, 37.290024, 28.320545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326460, 0.472022, 0.818913,
		0.939798, -0.069505, -0.334587,
		-0.101014, 0.878842, -0.466296,
		38.569733, 37.553677, 28.180656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266697, 37.200157, 28.642204>,  <38.640442, 36.938488, 28.507063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.266697, 37.200157, 28.642204> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.080807, 37.527321, 28.506523>,  <38.969273, 37.723618, 28.425116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.080807, 37.527321, 28.506523>,  <39.266697, 37.200157, 28.642204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.080807, 37.527321, 28.506523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407343, 0.537621, 0.738265,
		0.786193, 0.204921, -0.583016,
		-0.464728, 0.817906, -0.339201,
		38.941387, 37.772694, 28.404762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<26.729357, 24.504982, 19.701881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.105850, 24.637020, 19.673267>,  <27.331747, 24.716244, 19.656099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.105850, 24.637020, 19.673267>,  <26.729357, 24.504982, 19.701881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.105850, 24.637020, 19.673267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270565, -0.863658, -0.425311,
		-0.202173, 0.380962, -0.902216,
		0.941234, 0.330095, -0.071534,
		27.388220, 24.736048, 19.651808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.868128, 24.370583, 19.034758>,  <26.729357, 24.504982, 19.701881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.868128, 24.370583, 19.034758> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.210281, 24.394505, 19.240570>,  <27.415573, 24.408857, 19.364058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.210281, 24.394505, 19.240570>,  <26.868128, 24.370583, 19.034758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.210281, 24.394505, 19.240570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272031, -0.897174, -0.347963,
		0.440814, 0.437610, -0.783697,
		0.855384, 0.059803, 0.514530,
		27.466896, 24.412445, 19.394930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.427534, 24.183319, 18.542595>,  <26.868128, 24.370583, 19.034758>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.427534, 24.183319, 18.542595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.618748, 24.117756, 18.887760>,  <27.733477, 24.078417, 19.094858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.618748, 24.117756, 18.887760>,  <27.427534, 24.183319, 18.542595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.618748, 24.117756, 18.887760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204020, -0.934842, -0.290596,
		0.854318, 0.314966, -0.413446,
		0.478034, -0.163910, 0.862912,
		27.762157, 24.068583, 19.146633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.173077, 23.966375, 18.379866>,  <27.427534, 24.183319, 18.542595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.173077, 23.966375, 18.379866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.065281, 23.841373, 18.744221>,  <28.000603, 23.766373, 18.962833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.065281, 23.841373, 18.744221>,  <28.173077, 23.966375, 18.379866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.065281, 23.841373, 18.744221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210730, -0.942094, -0.260867,
		0.939664, 0.121651, 0.319738,
		-0.269489, -0.312506, 0.910887,
		27.984434, 23.747622, 19.017487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.744343, 23.590927, 18.510237>,  <28.173077, 23.966375, 18.379866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.744343, 23.590927, 18.510237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.476891, 23.472736, 18.783184>,  <28.316420, 23.401821, 18.946953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.476891, 23.472736, 18.783184>,  <28.744343, 23.590927, 18.510237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.476891, 23.472736, 18.783184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392827, -0.919517, -0.013247,
		0.631363, 0.259195, 0.730889,
		-0.668631, -0.295477, 0.682368,
		28.276300, 23.384094, 18.987894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.089191, 23.279079, 18.973854>,  <28.744343, 23.590927, 18.510237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.089191, 23.279079, 18.973854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.719950, 23.133724, 19.024174>,  <28.498404, 23.046511, 19.054365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.719950, 23.133724, 19.024174>,  <29.089191, 23.279079, 18.973854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.719950, 23.133724, 19.024174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371809, -0.926919, 0.050781,
		0.098153, 0.093650, 0.990755,
		-0.923105, -0.363388, 0.125799,
		28.443018, 23.024708, 19.061914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.141806, 22.762636, 19.560215>,  <29.089191, 23.279079, 18.973854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.141806, 22.762636, 19.560215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.820618, 22.653114, 19.348454>,  <28.627905, 22.587400, 19.221397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.820618, 22.653114, 19.348454>,  <29.141806, 22.762636, 19.560215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.820618, 22.653114, 19.348454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216215, -0.961544, 0.169362,
		-0.555417, 0.021528, 0.831293,
		-0.802972, -0.273804, -0.529403,
		28.579725, 22.570972, 19.189632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.918434, 22.206850, 19.881996>,  <29.141806, 22.762636, 19.560215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.918434, 22.206850, 19.881996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.727844, 22.176353, 19.531647>,  <28.613489, 22.158056, 19.321436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.727844, 22.176353, 19.531647>,  <28.918434, 22.206850, 19.881996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.727844, 22.176353, 19.531647> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088150, -0.995356, 0.038688,
		-0.874757, -0.058774, 0.480985,
		-0.476477, -0.076241, -0.875875,
		28.584902, 22.153481, 19.268885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.311956, 21.763510, 19.950468>,  <28.918434, 22.206850, 19.881996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.311956, 21.763510, 19.950468> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.388792, 21.753365, 19.558048>,  <28.434893, 21.747278, 19.322596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.388792, 21.753365, 19.558048>,  <28.311956, 21.763510, 19.950468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.388792, 21.753365, 19.558048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034902, -0.998857, 0.032657,
		-0.980757, -0.040514, -0.190983,
		0.192088, -0.025363, -0.981050,
		28.446419, 21.745756, 19.263733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.902061, 21.220451, 19.671665>,  <28.311956, 21.763510, 19.950468>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.902061, 21.220451, 19.671665> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.184978, 21.252918, 19.390766>,  <28.354729, 21.272398, 19.222227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.184978, 21.252918, 19.390766>,  <27.902061, 21.220451, 19.671665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.184978, 21.252918, 19.390766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168929, -0.984013, 0.056407,
		-0.686440, -0.158526, -0.709697,
		0.707293, 0.081168, -0.702245,
		28.397167, 21.277269, 19.180092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.759676, 20.610941, 19.138906>,  <27.902061, 21.220451, 19.671665>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.759676, 20.610941, 19.138906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.132782, 20.749496, 19.098984>,  <28.356646, 20.832630, 19.075029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.132782, 20.749496, 19.098984>,  <27.759676, 20.610941, 19.138906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.132782, 20.749496, 19.098984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348153, -0.937438, 0.000273,
		-0.093470, -0.035004, -0.995007,
		0.932766, 0.346389, -0.099809,
		28.412611, 20.853413, 19.069040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.153164, 20.264666, 18.569267>,  <27.759676, 20.610941, 19.138906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.153164, 20.264666, 18.569267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.430929, 20.373154, 18.835869>,  <28.597589, 20.438248, 18.995831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.430929, 20.373154, 18.835869>,  <28.153164, 20.264666, 18.569267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.430929, 20.373154, 18.835869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387966, -0.921206, -0.029344,
		0.606028, 0.278958, -0.744924,
		0.694415, 0.271222, 0.666503,
		28.639254, 20.454521, 19.035820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.894148, 20.089613, 18.366022>,  <28.153164, 20.264666, 18.569267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.894148, 20.089613, 18.366022> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.837563, 20.114956, 18.761189>,  <28.803612, 20.130161, 18.998287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.837563, 20.114956, 18.761189>,  <28.894148, 20.089613, 18.366022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.837563, 20.114956, 18.761189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306790, -0.946012, 0.104600,
		0.941206, 0.317879, 0.114389,
		-0.141463, 0.063356, 0.987914,
		28.795124, 20.133963, 19.057562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.374601, 19.683151, 17.973253>,  <28.894148, 20.089613, 18.366022>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.374601, 19.683151, 17.973253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.594017, 19.720573, 17.640903>,  <29.725666, 19.743027, 17.441494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.594017, 19.720573, 17.640903>,  <29.374601, 19.683151, 17.973253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.594017, 19.720573, 17.640903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832929, 0.147965, -0.533232,
		0.073053, 0.984557, 0.159090,
		0.548537, 0.093556, -0.830876,
		29.758577, 19.748640, 17.391642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.717079, 19.024584, 17.650240>,  <29.374601, 19.683151, 17.973253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.717079, 19.024584, 17.650240> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.063835, 18.985813, 17.454647>,  <30.271889, 18.962551, 17.337292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.063835, 18.985813, 17.454647>,  <29.717079, 19.024584, 17.650240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.063835, 18.985813, 17.454647> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125806, 0.991702, 0.026456,
		0.482361, -0.084451, 0.871892,
		0.866891, -0.096928, -0.488983,
		30.323902, 18.956734, 17.307953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.286961, 19.474337, 17.958933>,  <29.717079, 19.024584, 17.650240>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.286961, 19.474337, 17.958933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.319847, 19.404606, 17.566433>,  <30.339579, 19.362768, 17.330933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.319847, 19.404606, 17.566433>,  <30.286961, 19.474337, 17.958933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.319847, 19.404606, 17.566433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088254, 0.981988, -0.167062,
		0.992699, -0.072864, 0.096122,
		0.082218, -0.174326, -0.981250,
		30.344513, 19.352308, 17.272058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.892979, 19.803772, 17.707590>,  <30.286961, 19.474337, 17.958933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.892979, 19.803772, 17.707590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.657185, 19.758965, 17.387600>,  <30.515709, 19.732080, 17.195606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.657185, 19.758965, 17.387600>,  <30.892979, 19.803772, 17.707590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.657185, 19.758965, 17.387600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006936, 0.991004, -0.133655,
		0.807750, -0.073239, -0.584958,
		-0.589484, -0.112017, -0.799975,
		30.480339, 19.725359, 17.147608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.253618, 20.089985, 17.274727>,  <30.892979, 19.803772, 17.707590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.253618, 20.089985, 17.274727> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.901159, 20.087791, 17.085602>,  <30.689684, 20.086475, 16.972128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.901159, 20.087791, 17.085602>,  <31.253618, 20.089985, 17.274727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.901159, 20.087791, 17.085602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082403, 0.982851, -0.164967,
		0.465606, -0.184321, -0.865584,
		-0.881147, -0.005483, -0.472810,
		30.636816, 20.086147, 16.943758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.300463, 20.329540, 16.574337>,  <31.253618, 20.089985, 17.274727>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.300463, 20.329540, 16.574337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.920271, 20.389267, 16.683365>,  <30.692156, 20.425104, 16.748781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.920271, 20.389267, 16.683365>,  <31.300463, 20.329540, 16.574337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.920271, 20.389267, 16.683365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058103, 0.946934, -0.316133,
		-0.305310, -0.284640, -0.908716,
		-0.950479, 0.149318, 0.272570,
		30.635128, 20.434063, 16.765137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.146332, 20.870697, 16.151014>,  <31.300463, 20.329540, 16.574337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.146332, 20.870697, 16.151014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.842224, 20.872494, 16.410851>,  <30.659760, 20.873571, 16.566751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.842224, 20.872494, 16.410851>,  <31.146332, 20.870697, 16.151014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.842224, 20.872494, 16.410851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043988, 0.997325, -0.058380,
		-0.648115, -0.072959, -0.758039,
		-0.760271, 0.004492, 0.649591,
		30.614143, 20.873842, 16.605728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.725826, 21.186888, 15.800062>,  <31.146332, 20.870697, 16.151014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.725826, 21.186888, 15.800062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.576979, 21.214409, 16.170315>,  <30.487671, 21.230921, 16.392467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.576979, 21.214409, 16.170315>,  <30.725826, 21.186888, 15.800062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.576979, 21.214409, 16.170315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120452, 0.985237, -0.121655,
		-0.920337, -0.156764, -0.358336,
		-0.372117, 0.068801, 0.925633,
		30.465343, 21.235048, 16.448004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.933365, 21.408119, 15.840062>,  <30.725826, 21.186888, 15.800062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.933365, 21.408119, 15.840062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.110886, 21.494324, 16.187992>,  <30.217398, 21.546047, 16.396749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.110886, 21.494324, 16.187992>,  <29.933365, 21.408119, 15.840062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.110886, 21.494324, 16.187992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309655, 0.947740, -0.076825,
		-0.840925, -0.235250, 0.487343,
		0.443801, 0.215512, 0.869825,
		30.244026, 21.558977, 16.448940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.466963, 21.930607, 16.154150>,  <29.933365, 21.408119, 15.840062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.466963, 21.930607, 16.154150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.804012, 21.983891, 16.362858>,  <30.006241, 22.015860, 16.488083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.804012, 21.983891, 16.362858>,  <29.466963, 21.930607, 16.154150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.804012, 21.983891, 16.362858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176918, 0.983618, 0.034593,
		-0.508615, -0.121460, 0.852384,
		0.842622, 0.133208, 0.521771,
		30.056799, 22.023853, 16.519388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.230120, 22.234383, 16.679972>,  <29.466963, 21.930607, 16.154150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.230120, 22.234383, 16.679972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.623085, 22.306534, 16.699287>,  <29.858864, 22.349825, 16.710876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.623085, 22.306534, 16.699287>,  <29.230120, 22.234383, 16.679972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.623085, 22.306534, 16.699287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184727, 0.976583, 0.110275,
		-0.027268, -0.117256, 0.992727,
		0.982411, 0.180377, 0.048290,
		29.917809, 22.360647, 16.713774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.372122, 22.565443, 17.265572>,  <29.230120, 22.234383, 16.679972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.372122, 22.565443, 17.265572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.690434, 22.670017, 17.047073>,  <29.881420, 22.732761, 16.915974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.690434, 22.670017, 17.047073>,  <29.372122, 22.565443, 17.265572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.690434, 22.670017, 17.047073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143046, 0.957637, 0.249937,
		0.588447, -0.120757, 0.799467,
		0.795782, 0.261435, -0.546245,
		29.929169, 22.748447, 16.883200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.746696, 22.872290, 17.695900>,  <29.372122, 22.565443, 17.265572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.746696, 22.872290, 17.695900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.887598, 23.010796, 17.348103>,  <29.972139, 23.093899, 17.139423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.887598, 23.010796, 17.348103>,  <29.746696, 22.872290, 17.695900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.887598, 23.010796, 17.348103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001342, 0.928853, 0.370446,
		0.935904, -0.131658, 0.326727,
		0.352253, 0.346263, -0.869494,
		29.993275, 23.114674, 17.087254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.367210, 23.248631, 17.936380>,  <29.746696, 22.872290, 17.695900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.367210, 23.248631, 17.936380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.226274, 23.394455, 17.591602>,  <30.141712, 23.481951, 17.384735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.226274, 23.394455, 17.591602>,  <30.367210, 23.248631, 17.936380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.226274, 23.394455, 17.591602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174384, 0.930453, 0.322254,
		0.919482, -0.036767, -0.391409,
		-0.352339, 0.364563, -0.861946,
		30.120573, 23.503824, 17.333019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.791420, 23.830683, 17.814720>,  <30.367210, 23.248631, 17.936380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.791420, 23.830683, 17.814720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.491732, 23.872440, 17.553104>,  <30.311918, 23.897495, 17.396135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.491732, 23.872440, 17.553104>,  <30.791420, 23.830683, 17.814720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.491732, 23.872440, 17.553104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069047, 0.994430, 0.079629,
		0.658711, 0.014500, -0.752256,
		-0.749221, 0.104393, -0.654041,
		30.266966, 23.903759, 17.356892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.079582, 24.106516, 17.235283>,  <30.791420, 23.830683, 17.814720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.079582, 24.106516, 17.235283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.473648, 24.147861, 17.290085>,  <31.710087, 24.172668, 17.322966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.473648, 24.147861, 17.290085>,  <31.079582, 24.106516, 17.235283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.473648, 24.147861, 17.290085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063978, -0.961936, 0.265681,
		0.159252, -0.252974, -0.954276,
		0.985162, 0.103363, 0.137006,
		31.769197, 24.178871, 17.331186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.425146, 23.494978, 16.942287>,  <31.079582, 24.106516, 17.235283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.425146, 23.494978, 16.942287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.659992, 23.656380, 17.222996>,  <31.800900, 23.753222, 17.391420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.659992, 23.656380, 17.222996>,  <31.425146, 23.494978, 16.942287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.659992, 23.656380, 17.222996> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182047, -0.910520, 0.371230,
		0.788768, -0.090200, -0.608037,
		0.587115, 0.403505, 0.701769,
		31.836126, 23.777431, 17.433527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.989952, 23.127235, 16.896994>,  <31.425146, 23.494978, 16.942287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.989952, 23.127235, 16.896994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.028442, 23.294613, 17.258247>,  <32.051537, 23.395039, 17.474998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.028442, 23.294613, 17.258247>,  <31.989952, 23.127235, 16.896994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.028442, 23.294613, 17.258247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380442, -0.853913, 0.355102,
		0.919785, 0.309419, -0.241361,
		0.096226, 0.418441, 0.903132,
		32.057312, 23.420145, 17.529186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.636078, 23.096319, 17.241142>,  <31.989952, 23.127235, 16.896994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.636078, 23.096319, 17.241142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.405827, 23.154026, 17.563095>,  <32.267673, 23.188650, 17.756268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.405827, 23.154026, 17.563095>,  <32.636078, 23.096319, 17.241142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.405827, 23.154026, 17.563095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408309, -0.802109, 0.435781,
		0.708471, 0.579490, 0.402815,
		-0.575632, 0.144265, 0.804882,
		32.233135, 23.197306, 17.804560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.102367, 22.994024, 17.801519>,  <32.636078, 23.096319, 17.241142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.102367, 22.994024, 17.801519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.746311, 22.942204, 17.976269>,  <32.532677, 22.911110, 18.081118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.746311, 22.942204, 17.976269>,  <33.102367, 22.994024, 17.801519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.746311, 22.942204, 17.976269> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331373, -0.842129, 0.425453,
		0.312785, 0.523483, 0.792547,
		-0.890145, -0.129553, 0.436873,
		32.479267, 22.903337, 18.107330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252449, 22.846432, 18.546024>,  <33.102367, 22.994024, 17.801519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.252449, 22.846432, 18.546024> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.894920, 22.698170, 18.445065>,  <32.680405, 22.609213, 18.384489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.894920, 22.698170, 18.445065>,  <33.252449, 22.846432, 18.546024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.894920, 22.698170, 18.445065> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232668, -0.864483, 0.445572,
		-0.383348, 0.339534, 0.858930,
		-0.893817, -0.370655, -0.252399,
		32.626774, 22.586973, 18.369345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.186237, 22.457626, 19.145546>,  <33.252449, 22.846432, 18.546024>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.186237, 22.457626, 19.145546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.914165, 22.321674, 18.885750>,  <32.750923, 22.240103, 18.729872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.914165, 22.321674, 18.885750>,  <33.186237, 22.457626, 19.145546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.914165, 22.321674, 18.885750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204256, -0.938800, 0.277370,
		-0.704015, 0.055999, 0.707974,
		-0.680178, -0.339881, -0.649491,
		32.710114, 22.219709, 18.690903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.512592, 22.299051, 19.548853>,  <33.186237, 22.457626, 19.145546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.512592, 22.299051, 19.548853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.697674, 22.356987, 19.898693>,  <32.808723, 22.391748, 20.108597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.697674, 22.356987, 19.898693>,  <32.512592, 22.299051, 19.548853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.697674, 22.356987, 19.898693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237994, 0.970642, -0.034838,
		-0.853972, -0.192031, 0.483587,
		0.462700, 0.144841, 0.874603,
		32.836483, 22.400440, 20.161074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.075596, 22.681889, 19.920502>,  <32.512592, 22.299051, 19.548853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.075596, 22.681889, 19.920502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.410614, 22.743626, 20.130150>,  <32.611626, 22.780668, 20.255938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.410614, 22.743626, 20.130150>,  <32.075596, 22.681889, 19.920502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.410614, 22.743626, 20.130150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226407, 0.971077, 0.075831,
		-0.497255, -0.182176, 0.848263,
		0.837543, 0.154345, 0.524118,
		32.661877, 22.789928, 20.287386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.884762, 23.067135, 20.449846>,  <32.075596, 22.681889, 19.920502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.884762, 23.067135, 20.449846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.280693, 23.118809, 20.426022>,  <32.518253, 23.149813, 20.411726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.280693, 23.118809, 20.426022>,  <31.884762, 23.067135, 20.449846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.280693, 23.118809, 20.426022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113672, 0.970013, 0.214832,
		0.085530, -0.205876, 0.974833,
		0.989830, 0.129186, -0.059563,
		32.577641, 23.157564, 20.408154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.077801, 23.443642, 21.121504>,  <31.884762, 23.067135, 20.449846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.077801, 23.443642, 21.121504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.353603, 23.511341, 20.839813>,  <32.519085, 23.551960, 20.670799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.353603, 23.511341, 20.839813>,  <32.077801, 23.443642, 21.121504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353603, 23.511341, 20.839813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004077, 0.973205, 0.229902,
		0.724268, -0.155648, 0.671722,
		0.689507, 0.169249, -0.704227,
		32.560455, 23.562117, 20.628546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.543381, 23.818882, 21.403936>,  <32.077801, 23.443642, 21.121504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.543381, 23.818882, 21.403936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.587151, 23.894836, 21.013660>,  <32.613415, 23.940409, 20.779495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.587151, 23.894836, 21.013660>,  <32.543381, 23.818882, 21.403936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.587151, 23.894836, 21.013660> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100631, 0.978657, 0.179176,
		0.988888, 0.078578, 0.126201,
		0.109428, 0.189884, -0.975689,
		32.619980, 23.951801, 20.720953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.039257, 24.424372, 21.337070>,  <32.543381, 23.818882, 21.403936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.039257, 24.424372, 21.337070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.822174, 24.407265, 21.001537>,  <32.691925, 24.397001, 20.800217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.822174, 24.407265, 21.001537>,  <33.039257, 24.424372, 21.337070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.822174, 24.407265, 21.001537> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037461, 0.996477, -0.075042,
		0.839087, -0.072150, -0.539192,
		-0.542706, -0.042768, -0.838833,
		32.659363, 24.394434, 20.749887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391216, 24.914230, 20.917330>,  <33.039257, 24.424372, 21.337070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391216, 24.914230, 20.917330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.042427, 24.836987, 20.737389>,  <32.833153, 24.790640, 20.629423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.042427, 24.836987, 20.737389>,  <33.391216, 24.914230, 20.917330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.042427, 24.836987, 20.737389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126999, 0.976683, -0.173094,
		0.472792, -0.093802, -0.876167,
		-0.871974, -0.193110, -0.449855,
		32.780834, 24.779053, 20.602432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<30.297367, 21.268562, 21.856567> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.171429, 21.246395, 21.477558>,  <30.095865, 21.233095, 21.250153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.171429, 21.246395, 21.477558>,  <30.297367, 21.268562, 21.856567>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.171429, 21.246395, 21.477558> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171100, 0.978626, -0.114091,
		0.933594, -0.198042, -0.298633,
		-0.314844, -0.055418, -0.947524,
		30.076975, 21.229769, 21.193300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.811419, 21.659895, 21.463795>,  <30.297367, 21.268562, 21.856567>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.811419, 21.659895, 21.463795> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.431393, 21.644382, 21.339939>,  <30.203377, 21.635075, 21.265625>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.431393, 21.644382, 21.339939>,  <30.811419, 21.659895, 21.463795>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.431393, 21.644382, 21.339939> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028627, 0.998895, -0.037271,
		0.310742, -0.026546, -0.950123,
		-0.950063, -0.038781, -0.309639,
		30.146374, 21.632748, 21.247047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.700272, 22.253073, 21.157526>,  <30.811419, 21.659895, 21.463795>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.700272, 22.253073, 21.157526> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.317093, 22.153290, 21.214249>,  <30.087185, 22.093420, 21.248281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.317093, 22.153290, 21.214249>,  <30.700272, 22.253073, 21.157526>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.317093, 22.153290, 21.214249> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261630, 0.962279, -0.074618,
		-0.117843, -0.108581, -0.987078,
		-0.957947, -0.249456, 0.141806,
		30.029709, 22.078453, 21.256790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.323074, 22.570580, 20.635214>,  <30.700272, 22.253073, 21.157526>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.323074, 22.570580, 20.635214> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.093395, 22.498669, 20.954708>,  <29.955587, 22.455523, 21.146404>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.093395, 22.498669, 20.954708>,  <30.323074, 22.570580, 20.635214>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.093395, 22.498669, 20.954708> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356156, 0.933295, -0.045973,
		-0.737189, -0.310872, -0.599926,
		-0.574200, -0.179777, 0.798734,
		29.921135, 22.444736, 21.194328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.781460, 23.033424, 20.434977>,  <30.323074, 22.570580, 20.635214>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.781460, 23.033424, 20.434977> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.734610, 22.936813, 20.820297>,  <29.706499, 22.878847, 21.051489>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.734610, 22.936813, 20.820297>,  <29.781460, 23.033424, 20.434977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.734610, 22.936813, 20.820297> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365016, 0.912552, 0.184423,
		-0.923604, -0.330020, -0.195043,
		-0.117124, -0.241528, 0.963300,
		29.699472, 22.864355, 21.109287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.210615, 23.413662, 20.572958>,  <29.781460, 23.033424, 20.434977>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.210615, 23.413662, 20.572958> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.375935, 23.357071, 20.932774>,  <29.475126, 23.323116, 21.148663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.375935, 23.357071, 20.932774>,  <29.210615, 23.413662, 20.572958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.375935, 23.357071, 20.932774> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304604, 0.909468, 0.282991,
		-0.858138, -0.390963, 0.332787,
		0.413298, -0.141476, 0.899538,
		29.499924, 23.314629, 21.202635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.679607, 23.535727, 21.079493>,  <29.210615, 23.413662, 20.572958>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.679607, 23.535727, 21.079493> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.033749, 23.593037, 21.256409>,  <29.246233, 23.627422, 21.362558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.033749, 23.593037, 21.256409>,  <28.679607, 23.535727, 21.079493>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.033749, 23.593037, 21.256409> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326550, 0.868796, 0.372234,
		-0.330931, -0.473989, 0.815977,
		0.885353, 0.143274, 0.442292,
		29.299355, 23.636019, 21.389097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.420637, 23.793127, 21.736954>,  <28.679607, 23.535727, 21.079493>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.420637, 23.793127, 21.736954> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.804609, 23.905220, 21.737251>,  <29.034992, 23.972475, 21.737429>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.804609, 23.905220, 21.737251>,  <28.420637, 23.793127, 21.736954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.804609, 23.905220, 21.737251> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182294, 0.622430, 0.761150,
		0.212836, -0.730788, 0.648575,
		0.959932, 0.280231, 0.000743,
		29.092588, 23.989290, 21.737474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.496931, 23.888763, 22.483963>,  <28.420637, 23.793127, 21.736954>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.496931, 23.888763, 22.483963> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.807236, 24.077518, 22.316383>,  <28.993418, 24.190771, 22.215836>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.807236, 24.077518, 22.316383>,  <28.496931, 23.888763, 22.483963>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.807236, 24.077518, 22.316383> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013458, 0.676137, 0.736653,
		0.630885, -0.565827, 0.530871,
		0.775760, 0.471887, -0.418950,
		29.039965, 24.219084, 22.190699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.908657, 24.000278, 23.079981>,  <28.496931, 23.888763, 22.483963>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.908657, 24.000278, 23.079981> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.034616, 24.267330, 22.810135>,  <29.110193, 24.427561, 22.648228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.034616, 24.267330, 22.810135>,  <28.908657, 24.000278, 23.079981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.034616, 24.267330, 22.810135> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040894, 0.700573, 0.712408,
		0.948244, -0.251925, 0.193308,
		0.314900, 0.667631, -0.674616,
		29.129086, 24.467619, 22.607750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.444572, 24.312807, 23.423826>,  <28.908657, 24.000278, 23.079981>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.444572, 24.312807, 23.423826> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.354750, 24.559635, 23.122150>,  <29.300856, 24.707731, 22.941145>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.354750, 24.559635, 23.122150>,  <29.444572, 24.312807, 23.423826>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.354750, 24.559635, 23.122150> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043278, 0.766874, 0.640336,
		0.973500, 0.176430, -0.145500,
		-0.224555, 0.617071, -0.754188,
		29.287384, 24.744757, 22.895895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.833532, 24.811022, 23.635122>,  <29.444572, 24.312807, 23.423826>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.833532, 24.811022, 23.635122> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.559952, 24.964359, 23.386845>,  <29.395803, 25.056362, 23.237879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.559952, 24.964359, 23.386845>,  <29.833532, 24.811022, 23.635122>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.559952, 24.964359, 23.386845> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147099, 0.760872, 0.632010,
		0.714544, 0.523567, -0.464009,
		-0.683951, 0.383344, -0.620692,
		29.354767, 25.079363, 23.200638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.605341, 24.831837, 23.255840>,  <29.833532, 24.811022, 23.635122>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.605341, 24.831837, 23.255840> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.988724, 24.944706, 23.272533>,  <31.218754, 25.012426, 23.282549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.988724, 24.944706, 23.272533>,  <30.605341, 24.831837, 23.255840>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.988724, 24.944706, 23.272533> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284024, -0.930600, -0.230898,
		-0.026314, 0.233160, -0.972082,
		0.958456, 0.282171, 0.041735,
		31.276260, 25.029358, 23.285053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.979927, 24.581299, 22.680326>,  <30.605341, 24.831837, 23.255840>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.979927, 24.581299, 22.680326> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.256489, 24.627907, 22.965530>,  <31.422426, 24.655870, 23.136654>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.256489, 24.627907, 22.965530>,  <30.979927, 24.581299, 22.680326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.256489, 24.627907, 22.965530> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317317, -0.935598, -0.154809,
		0.649054, 0.333286, -0.683849,
		0.691404, 0.116518, 0.713011,
		31.463909, 24.662863, 23.179434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.537020, 24.395321, 22.250519>,  <30.979927, 24.581299, 22.680326>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.537020, 24.395321, 22.250519> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.605909, 24.342918, 22.641041>,  <31.647243, 24.311478, 22.875355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.605909, 24.342918, 22.641041>,  <31.537020, 24.395321, 22.250519>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.605909, 24.342918, 22.641041> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290157, -0.940398, -0.177373,
		0.941354, 0.313830, -0.123947,
		0.172225, -0.131006, 0.976307,
		31.657578, 24.303616, 22.933933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.174969, 23.997370, 22.249006>,  <31.537020, 24.395321, 22.250519>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.174969, 23.997370, 22.249006> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.995794, 23.941837, 22.602295>,  <31.888288, 23.908518, 22.814268>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.995794, 23.941837, 22.602295>,  <32.174969, 23.997370, 22.249006>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.995794, 23.941837, 22.602295> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174924, -0.982387, -0.065702,
		0.876785, 0.125066, 0.464334,
		-0.447939, -0.138830, 0.883220,
		31.861412, 23.900188, 22.867260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.625233, 23.526554, 22.512230>,  <32.174969, 23.997370, 22.249006>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.625233, 23.526554, 22.512230> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.295555, 23.500515, 22.737251>,  <32.097748, 23.484892, 22.872265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.295555, 23.500515, 22.737251>,  <32.625233, 23.526554, 22.512230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.295555, 23.500515, 22.737251> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117037, -0.991506, 0.056732,
		0.554081, 0.112598, 0.824813,
		-0.824194, -0.065099, 0.562553,
		32.048298, 23.480986, 22.906017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.745953, 23.085787, 23.145197>,  <32.625233, 23.526554, 22.512230>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.745953, 23.085787, 23.145197> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.349548, 23.079823, 23.092003>,  <32.111706, 23.076244, 23.060087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.349548, 23.079823, 23.092003>,  <32.745953, 23.085787, 23.145197>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.349548, 23.079823, 23.092003> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000213, -0.993949, 0.109845,
		-0.133816, 0.108829, 0.985013,
		-0.991006, -0.014909, -0.132983,
		32.052246, 23.075350, 23.052107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.461216, 22.764603, 23.687321>,  <32.745953, 23.085787, 23.145197>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.461216, 22.764603, 23.687321> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.196354, 22.726345, 23.390026>,  <32.037437, 22.703390, 23.211649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.196354, 22.726345, 23.390026>,  <32.461216, 22.764603, 23.687321>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.196354, 22.726345, 23.390026> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196353, -0.935024, 0.295256,
		-0.723181, 0.341442, 0.600355,
		-0.662159, -0.095642, -0.743235,
		31.997705, 22.697653, 23.167055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.018639, 22.221334, 23.949684>,  <32.461216, 22.764603, 23.687321>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.018639, 22.221334, 23.949684> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.903234, 22.239250, 23.567112>,  <31.833992, 22.250000, 23.337568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.903234, 22.239250, 23.567112>,  <32.018639, 22.221334, 23.949684>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.903234, 22.239250, 23.567112> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158568, -0.987347, 0.001596,
		-0.944256, 0.152119, 0.291958,
		-0.288507, 0.044788, -0.956430,
		31.816683, 22.252687, 23.280184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.608219, 21.634230, 23.852341>,  <32.018639, 22.221334, 23.949684>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.608219, 21.634230, 23.852341> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.657084, 21.726837, 23.466290>,  <31.686403, 21.782402, 23.234659>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.657084, 21.726837, 23.466290>,  <31.608219, 21.634230, 23.852341>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.657084, 21.726837, 23.466290> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130684, -0.960195, -0.246876,
		-0.983869, 0.156286, -0.087045,
		0.122163, 0.231518, -0.965130,
		31.693733, 21.796293, 23.176750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.067959, 21.178165, 23.468323>,  <31.608219, 21.634230, 23.852341>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.067959, 21.178165, 23.468323> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.363729, 21.294037, 23.225231>,  <31.541191, 21.363560, 23.079376>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.363729, 21.294037, 23.225231>,  <31.067959, 21.178165, 23.468323>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.363729, 21.294037, 23.225231> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079143, -0.933839, -0.348828,
		-0.668569, 0.209835, -0.713432,
		0.739427, 0.289679, -0.607729,
		31.585558, 21.380941, 23.042912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.902603, 20.914473, 22.812317>,  <31.067959, 21.178165, 23.468323>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.902603, 20.914473, 22.812317> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.301277, 20.937626, 22.835186>,  <31.540482, 20.951519, 22.848907>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.301277, 20.937626, 22.835186>,  <30.902603, 20.914473, 22.812317>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.301277, 20.937626, 22.835186> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076035, -0.912730, -0.401425,
		0.028945, 0.404442, -0.914106,
		0.996685, 0.057885, 0.057171,
		31.600283, 20.954990, 22.852337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.088392, 20.577278, 22.329390>,  <30.902603, 20.914473, 22.812317>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.088392, 20.577278, 22.329390> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.426651, 20.602962, 22.541336>,  <31.629606, 20.618372, 22.668505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.426651, 20.602962, 22.541336>,  <31.088392, 20.577278, 22.329390>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.426651, 20.602962, 22.541336> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195248, -0.961145, -0.195136,
		0.496749, 0.268472, -0.825327,
		0.845647, 0.064210, 0.529866,
		31.680346, 20.622225, 22.700296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.586407, 20.217398, 21.960285>,  <31.088392, 20.577278, 22.329390>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.586407, 20.217398, 21.960285> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.732714, 20.187481, 22.331364>,  <31.820498, 20.169531, 22.554010>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.732714, 20.187481, 22.331364>,  <31.586407, 20.217398, 21.960285>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.732714, 20.187481, 22.331364> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038001, -0.997135, -0.065407,
		0.929930, -0.011330, -0.367561,
		0.365767, -0.074791, 0.927696,
		31.842443, 20.165043, 22.609673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.117191, 19.769382, 21.888250>,  <31.586407, 20.217398, 21.960285>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.117191, 19.769382, 21.888250> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.038761, 19.770798, 22.280483>,  <31.991703, 19.771646, 22.515823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.038761, 19.770798, 22.280483>,  <32.117191, 19.769382, 21.888250>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.038761, 19.770798, 22.280483> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110163, -0.993583, 0.025615,
		0.974380, 0.113047, 0.194431,
		-0.196079, 0.003540, 0.980582,
		31.979937, 19.771860, 22.574657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.742619, 19.778976, 21.822845>,  <32.117191, 19.769382, 21.888250>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.742619, 19.778976, 21.822845> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.041527, 19.815228, 21.559521>,  <33.220871, 19.836979, 21.401525>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.041527, 19.815228, 21.559521>,  <32.742619, 19.778976, 21.822845>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.041527, 19.815228, 21.559521> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260751, 0.951195, -0.165038,
		0.611226, 0.294983, 0.734431,
		0.747270, 0.090628, -0.658312,
		33.265709, 19.842417, 21.362026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.111935, 20.453482, 21.994230>,  <32.742619, 19.778976, 21.822845>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.111935, 20.453482, 21.994230> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.208801, 20.362144, 21.617039>,  <33.266922, 20.307343, 21.390724>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.208801, 20.362144, 21.617039>,  <33.111935, 20.453482, 21.994230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208801, 20.362144, 21.617039> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046444, 0.968068, -0.246347,
		0.969121, 0.103455, 0.223833,
		0.242171, -0.228345, -0.942980,
		33.281452, 20.293640, 21.334145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.579739, 20.890362, 21.876654>,  <33.111935, 20.453482, 21.994230>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.579739, 20.890362, 21.876654> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.451038, 20.769180, 21.517834>,  <33.373817, 20.696472, 21.302542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.451038, 20.769180, 21.517834>,  <33.579739, 20.890362, 21.876654>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.451038, 20.769180, 21.517834> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022244, 0.949586, -0.312717,
		0.946563, -0.080663, -0.312269,
		-0.321751, -0.302953, -0.897048,
		33.354511, 20.678295, 21.248720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995285, 21.198935, 21.308123>,  <33.579739, 20.890362, 21.876654>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995285, 21.198935, 21.308123> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.636189, 21.096310, 21.164883>,  <33.420731, 21.034735, 21.078938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.636189, 21.096310, 21.164883>,  <33.995285, 21.198935, 21.308123>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.636189, 21.096310, 21.164883> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164021, 0.949126, -0.268808,
		0.408848, -0.182584, -0.894151,
		-0.897742, -0.256561, -0.358101,
		33.366867, 21.019341, 21.057453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.013805, 21.496286, 20.627407>,  <33.995285, 21.198935, 21.308123>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.013805, 21.496286, 20.627407> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.625931, 21.408836, 20.671062>,  <33.393208, 21.356367, 20.697256>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.625931, 21.408836, 20.671062>,  <34.013805, 21.496286, 20.627407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.625931, 21.408836, 20.671062> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242121, 0.799461, -0.549764,
		0.032939, -0.559524, -0.828160,
		-0.969687, -0.218624, 0.109139,
		33.335026, 21.343248, 20.703804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.732475, 21.580851, 19.925373>,  <34.013805, 21.496286, 20.627407>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.732475, 21.580851, 19.925373> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.444496, 21.625603, 20.199352>,  <33.271709, 21.652454, 20.363739>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.444496, 21.625603, 20.199352>,  <33.732475, 21.580851, 19.925373>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.444496, 21.625603, 20.199352> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288563, 0.849312, -0.442041,
		-0.631190, -0.515899, -0.579178,
		-0.719952, 0.111882, 0.684947,
		33.228512, 21.659168, 20.404837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.188084, 21.852859, 19.568987>,  <33.732475, 21.580851, 19.925373>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.188084, 21.852859, 19.568987> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.105011, 21.962368, 19.944630>,  <33.055168, 22.028072, 20.170015>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.105011, 21.962368, 19.944630>,  <33.188084, 21.852859, 19.568987>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.105011, 21.962368, 19.944630> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382623, 0.860812, -0.335562,
		-0.900259, -0.429014, -0.074026,
		-0.207684, 0.273769, 0.939105,
		33.042706, 22.044498, 20.226360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.498482, 21.523214, 19.745440>,  <33.188084, 21.852859, 19.568987>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.498482, 21.523214, 19.745440> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.498810, 21.588036, 19.350727>,  <32.499008, 21.626928, 19.113899>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.498810, 21.588036, 19.350727>,  <32.498482, 21.523214, 19.745440>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.498810, 21.588036, 19.350727> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070042, -0.984349, -0.161710,
		-0.997544, 0.069249, 0.010543,
		0.000820, 0.162052, -0.986782,
		32.499058, 21.636652, 19.054693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.951494, 21.160103, 19.440239>,  <32.498482, 21.523214, 19.745440>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.951494, 21.160103, 19.440239> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.217110, 21.196163, 19.143341>,  <32.376480, 21.217798, 18.965202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.217110, 21.196163, 19.143341>,  <31.951494, 21.160103, 19.440239>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.217110, 21.196163, 19.143341> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120514, -0.966821, -0.225241,
		-0.737924, 0.239019, -0.631140,
		0.664037, 0.090150, -0.742245,
		32.416321, 21.223207, 18.920668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.618879, 20.789169, 18.884792>,  <31.951494, 21.160103, 19.440239>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.618879, 20.789169, 18.884792> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.015793, 20.813637, 18.841656>,  <32.253941, 20.828318, 18.815773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.015793, 20.813637, 18.841656>,  <31.618879, 20.789169, 18.884792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.015793, 20.813637, 18.841656> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037397, -0.976977, -0.210042,
		-0.118206, 0.204388, -0.971726,
		0.992285, 0.061168, -0.107841,
		32.313477, 20.831987, 18.809303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.675417, 20.279730, 18.416317>,  <31.618879, 20.789169, 18.884792>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.675417, 20.279730, 18.416317> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.055416, 20.362629, 18.509747>,  <32.283417, 20.412369, 18.565804>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.055416, 20.362629, 18.509747>,  <31.675417, 20.279730, 18.416317>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.055416, 20.362629, 18.509747> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245616, -0.957832, -0.149098,
		0.192823, 0.199012, -0.960840,
		0.949996, 0.207248, 0.233573,
		32.340416, 20.424803, 18.579819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.081646, 19.925514, 17.849304>,  <31.675417, 20.279730, 18.416317>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.081646, 19.925514, 17.849304> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.308044, 19.976021, 18.175175>,  <32.443886, 20.006325, 18.370697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.308044, 19.976021, 18.175175>,  <32.081646, 19.925514, 17.849304>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.308044, 19.976021, 18.175175> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255945, -0.966284, -0.028052,
		0.783668, 0.224390, -0.579235,
		0.566000, 0.126268, 0.814678,
		32.477844, 20.013901, 18.419579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.612892, 19.559151, 17.706835>,  <32.081646, 19.925514, 17.849304>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.612892, 19.559151, 17.706835> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.644642, 19.580936, 18.104977>,  <32.663692, 19.594007, 18.343863>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.644642, 19.580936, 18.104977>,  <32.612892, 19.559151, 17.706835>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.644642, 19.580936, 18.104977> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282376, -0.958836, 0.029946,
		0.956014, 0.278687, -0.091488,
		0.079377, 0.054463, 0.995356,
		32.668453, 19.597275, 18.403584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.240112, 19.201078, 17.801973>,  <32.612892, 19.559151, 17.706835>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.240112, 19.201078, 17.801973> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.059010, 19.206039, 18.158592>,  <32.950348, 19.209015, 18.372564>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.059010, 19.206039, 18.158592>,  <33.240112, 19.201078, 17.801973>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.059010, 19.206039, 18.158592> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177450, -0.978648, 0.103728,
		0.873797, 0.205169, 0.440891,
		-0.452759, 0.012401, 0.891547,
		32.923183, 19.209761, 18.426056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596085, 18.766352, 18.349178>,  <33.240112, 19.201078, 17.801973>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596085, 18.766352, 18.349178> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.220253, 18.794384, 18.483212>,  <32.994755, 18.811203, 18.563631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.220253, 18.794384, 18.483212>,  <33.596085, 18.766352, 18.349178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.220253, 18.794384, 18.483212> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032830, -0.992756, 0.115573,
		0.340754, 0.097589, 0.935074,
		-0.939579, 0.070081, 0.335081,
		32.938377, 18.815409, 18.583736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527828, 18.266327, 18.929768>,  <33.596085, 18.766352, 18.349178>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.527828, 18.266327, 18.929768> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.153664, 18.328362, 18.802673>,  <32.929165, 18.365582, 18.726418>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.153664, 18.328362, 18.802673>,  <33.527828, 18.266327, 18.929768>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153664, 18.328362, 18.802673> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107290, -0.980798, -0.162862,
		-0.336891, -0.118253, 0.934088,
		-0.935411, 0.155085, -0.317735,
		32.873039, 18.374887, 18.707354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<28.315113, 33.710518, 18.694124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.005983, 33.469540, 18.773926>,  <27.820505, 33.324955, 18.821808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.005983, 33.469540, 18.773926>,  <28.315113, 33.710518, 18.694124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.005983, 33.469540, 18.773926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532934, -0.786778, -0.311387,
		0.344559, -0.134325, 0.929105,
		-0.772827, -0.602442, 0.199505,
		27.774136, 33.288807, 18.833778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.581844, 33.231232, 19.222185>,  <28.315113, 33.710518, 18.694124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.581844, 33.231232, 19.222185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.269045, 33.079388, 19.024448>,  <28.081366, 32.988281, 18.905806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.269045, 33.079388, 19.024448>,  <28.581844, 33.231232, 19.222185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.269045, 33.079388, 19.024448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537613, -0.812111, -0.226820,
		-0.315359, -0.443139, 0.839153,
		-0.781998, -0.379609, -0.494343,
		28.034445, 32.965504, 18.876144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.647816, 32.582245, 19.334618>,  <28.581844, 33.231232, 19.222185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.647816, 32.582245, 19.334618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.389723, 32.594944, 19.029285>,  <28.234867, 32.602566, 18.846087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.389723, 32.594944, 19.029285>,  <28.647816, 32.582245, 19.334618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.389723, 32.594944, 19.029285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427770, -0.812818, -0.395398,
		-0.633002, -0.581651, 0.510872,
		-0.645230, 0.031752, -0.763328,
		28.196154, 32.604469, 18.800287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.352642, 31.806427, 19.172310>,  <28.647816, 32.582245, 19.334618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.352642, 31.806427, 19.172310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.319759, 32.043156, 18.851562>,  <28.300030, 32.185192, 18.659115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.319759, 32.043156, 18.851562>,  <28.352642, 31.806427, 19.172310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.319759, 32.043156, 18.851562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473587, -0.684745, -0.553931,
		-0.876902, -0.425291, -0.223988,
		-0.082207, 0.591821, -0.801867,
		28.295097, 32.220703, 18.611002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.162260, 31.321892, 18.720858>,  <28.352642, 31.806427, 19.172310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.162260, 31.321892, 18.720858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.308495, 31.619289, 18.496872>,  <28.396235, 31.797728, 18.362480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.308495, 31.619289, 18.496872>,  <28.162260, 31.321892, 18.720858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.308495, 31.619289, 18.496872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508839, -0.663398, -0.548622,
		-0.779379, -0.084364, -0.620848,
		0.365585, 0.743496, -0.559966,
		28.418171, 31.842339, 18.328882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.108345, 31.094664, 17.934748>,  <28.162260, 31.321892, 18.720858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.108345, 31.094664, 17.934748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.396257, 31.370911, 17.962933>,  <28.569004, 31.536659, 17.979843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.396257, 31.370911, 17.962933>,  <28.108345, 31.094664, 17.934748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.396257, 31.370911, 17.962933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619727, -0.593507, -0.513506,
		-0.312816, 0.413279, -0.855188,
		0.719781, 0.690616, 0.070461,
		28.612192, 31.578096, 17.984072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.357430, 31.080381, 17.303406>,  <28.108345, 31.094664, 17.934748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.357430, 31.080381, 17.303406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.638033, 31.262779, 17.522480>,  <28.806395, 31.372217, 17.653925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.638033, 31.262779, 17.522480>,  <28.357430, 31.080381, 17.303406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.638033, 31.262779, 17.522480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710655, -0.505229, -0.489606,
		0.053449, 0.732676, -0.678475,
		0.701508, 0.455993, 0.547684,
		28.848486, 31.399576, 17.686785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.822554, 31.383715, 16.847696>,  <28.357430, 31.080381, 17.303406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.822554, 31.383715, 16.847696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.002127, 31.308010, 17.197014>,  <29.109871, 31.262587, 17.406605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.002127, 31.308010, 17.197014>,  <28.822554, 31.383715, 16.847696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.002127, 31.308010, 17.197014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665187, -0.581779, -0.468037,
		0.596645, 0.791020, -0.135285,
		0.448933, -0.189262, 0.873292,
		29.136806, 31.251232, 17.459002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.558020, 31.457769, 16.654356>,  <28.822554, 31.383715, 16.847696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.558020, 31.457769, 16.654356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.549105, 31.284698, 17.014866>,  <29.543755, 31.180857, 17.231173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.549105, 31.284698, 17.014866>,  <29.558020, 31.457769, 16.654356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.549105, 31.284698, 17.014866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764407, -0.588399, -0.263568,
		0.644348, 0.683066, 0.343855,
		-0.022289, -0.432675, 0.901274,
		29.542418, 31.154896, 17.285248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.321301, 31.243780, 16.791191>,  <29.558020, 31.457769, 16.654356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.321301, 31.243780, 16.791191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.087610, 31.022652, 17.028870>,  <29.947397, 30.889975, 17.171476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.087610, 31.022652, 17.028870>,  <30.321301, 31.243780, 16.791191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.087610, 31.022652, 17.028870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564901, -0.802665, -0.191353,
		0.582725, 0.223870, 0.781226,
		-0.584224, -0.552822, 0.594197,
		29.912342, 30.856806, 17.207129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.768896, 30.851053, 17.208565>,  <30.321301, 31.243780, 16.791191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.768896, 30.851053, 17.208565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.428293, 30.647350, 17.258522>,  <30.223932, 30.525129, 17.288496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.428293, 30.647350, 17.258522>,  <30.768896, 30.851053, 17.208565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.428293, 30.647350, 17.258522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521077, -0.848398, 0.093266,
		0.058464, 0.144496, 0.987777,
		-0.851505, -0.509255, 0.124894,
		30.172842, 30.494574, 17.295990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.853624, 30.533865, 17.811867>,  <30.768896, 30.851053, 17.208565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.853624, 30.533865, 17.811867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.591108, 30.322712, 17.596230>,  <30.433599, 30.196020, 17.466846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.591108, 30.322712, 17.596230>,  <30.853624, 30.533865, 17.811867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.591108, 30.322712, 17.596230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487919, -0.841925, 0.230427,
		-0.575515, -0.111807, 0.810112,
		-0.656291, -0.527884, -0.539093,
		30.394220, 30.164347, 17.434502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.010906, 30.446867, 18.533932>,  <30.853624, 30.533865, 17.811867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.010906, 30.446867, 18.533932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.214394, 30.522133, 18.869980>,  <31.336485, 30.567291, 19.071609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.214394, 30.522133, 18.869980>,  <31.010906, 30.446867, 18.533932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.214394, 30.522133, 18.869980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248659, 0.966349, -0.065865,
		-0.824242, -0.175396, 0.538387,
		0.508717, 0.188163, 0.840119,
		31.367008, 30.578583, 19.122015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.595020, 30.897572, 18.899685>,  <31.010906, 30.446867, 18.533932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.595020, 30.897572, 18.899685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.950596, 30.968540, 19.068592>,  <31.163940, 31.011122, 19.169937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.950596, 30.968540, 19.068592>,  <30.595020, 30.897572, 18.899685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.950596, 30.968540, 19.068592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199475, 0.979868, 0.008218,
		-0.412311, -0.091538, 0.906433,
		0.888937, 0.177422, 0.422270,
		31.217278, 31.021767, 19.195272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.485378, 31.384043, 19.488096>,  <30.595020, 30.897572, 18.899685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.485378, 31.384043, 19.488096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.880453, 31.402496, 19.428307>,  <31.117498, 31.413568, 19.392433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.880453, 31.402496, 19.428307>,  <30.485378, 31.384043, 19.488096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.880453, 31.402496, 19.428307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024400, 0.989263, 0.144092,
		0.154517, -0.138670, 0.978210,
		0.987689, 0.046133, -0.149474,
		31.176760, 31.416336, 19.383465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.628302, 31.851294, 20.031195>,  <30.485378, 31.384043, 19.488096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.628302, 31.851294, 20.031195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.944468, 31.821793, 19.787949>,  <31.134167, 31.804092, 19.642002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.944468, 31.821793, 19.787949>,  <30.628302, 31.851294, 20.031195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.944468, 31.821793, 19.787949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238594, 0.951394, 0.194737,
		0.564193, -0.299016, 0.769594,
		0.790417, -0.073751, -0.608113,
		31.181593, 31.799667, 19.605515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.192001, 31.956917, 20.377348>,  <30.628302, 31.851294, 20.031195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.192001, 31.956917, 20.377348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.288866, 32.047993, 20.000092>,  <31.346985, 32.102638, 19.773737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.288866, 32.047993, 20.000092>,  <31.192001, 31.956917, 20.377348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.288866, 32.047993, 20.000092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324840, 0.896947, 0.299943,
		0.914241, -0.379004, 0.143243,
		0.242161, 0.227689, -0.943142,
		31.361515, 32.116299, 19.717150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.762135, 32.485607, 20.548384>,  <31.192001, 31.956917, 20.377348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.762135, 32.485607, 20.548384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.676739, 32.539387, 20.161324>,  <31.625502, 32.571655, 19.929087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.676739, 32.539387, 20.161324>,  <31.762135, 32.485607, 20.548384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.676739, 32.539387, 20.161324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305327, 0.950051, 0.064643,
		0.928008, -0.281649, -0.243876,
		-0.213488, 0.134451, -0.967650,
		31.612692, 32.579723, 19.871029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.289433, 32.831650, 20.377855>,  <31.762135, 32.485607, 20.548384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.289433, 32.831650, 20.377855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.026375, 32.913979, 20.087990>,  <31.868540, 32.963375, 19.914070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.026375, 32.913979, 20.087990>,  <32.289433, 32.831650, 20.377855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.026375, 32.913979, 20.087990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329820, 0.943524, -0.031331,
		0.677290, -0.259614, -0.688388,
		-0.657645, 0.205824, -0.724665,
		31.829081, 32.975727, 19.870590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.635052, 33.166687, 19.750223>,  <32.289433, 32.831650, 20.377855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.635052, 33.166687, 19.750223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.251789, 33.281178, 19.748703>,  <32.021832, 33.349873, 19.747791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.251789, 33.281178, 19.748703>,  <32.635052, 33.166687, 19.750223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.251789, 33.281178, 19.748703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285341, 0.956066, 0.067222,
		0.022874, 0.063325, -0.997731,
		-0.958153, 0.286231, -0.003800,
		31.964344, 33.367046, 19.747562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.732796, 33.779770, 19.409771>,  <32.635052, 33.166687, 19.750223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.732796, 33.779770, 19.409771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.373478, 33.787483, 19.585358>,  <32.157887, 33.792110, 19.690710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.373478, 33.787483, 19.585358>,  <32.732796, 33.779770, 19.409771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.373478, 33.787483, 19.585358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051160, 0.996832, 0.060900,
		-0.436402, 0.077163, -0.896437,
		-0.898296, 0.019285, 0.438967,
		32.103989, 33.793270, 19.717049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.546902, 34.324036, 19.060440>,  <32.732796, 33.779770, 19.409771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.546902, 34.324036, 19.060440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.306637, 34.284950, 19.377842>,  <32.162476, 34.261497, 19.568283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.306637, 34.284950, 19.377842>,  <32.546902, 34.324036, 19.060440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.306637, 34.284950, 19.377842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203808, 0.940999, 0.270155,
		-0.773087, 0.323995, -0.545310,
		-0.600665, -0.097715, 0.793507,
		32.126438, 34.255634, 19.615894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.168167, 34.910557, 19.105125>,  <32.546902, 34.324036, 19.060440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.168167, 34.910557, 19.105125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.141239, 34.781471, 19.482765>,  <32.125080, 34.704021, 19.709349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.141239, 34.781471, 19.482765>,  <32.168167, 34.910557, 19.105125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.141239, 34.781471, 19.482765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238788, 0.913536, 0.329292,
		-0.968735, 0.247610, 0.015556,
		-0.067325, -0.322711, 0.944100,
		32.121040, 34.684658, 19.765995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.907701, 35.479004, 19.461895>,  <32.168167, 34.910557, 19.105125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.907701, 35.479004, 19.461895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.042946, 35.245289, 19.757000>,  <32.124092, 35.105061, 19.934063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.042946, 35.245289, 19.757000>,  <31.907701, 35.479004, 19.461895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.042946, 35.245289, 19.757000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171168, 0.809034, 0.562286,
		-0.925409, -0.063834, 0.373554,
		0.338111, -0.584285, 0.737762,
		32.144379, 35.070004, 19.978329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.485039, 35.561703, 20.052860>,  <31.907701, 35.479004, 19.461895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.485039, 35.561703, 20.052860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.844225, 35.440998, 20.180984>,  <32.059738, 35.368576, 20.257858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.844225, 35.440998, 20.180984>,  <31.485039, 35.561703, 20.052860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.844225, 35.440998, 20.180984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086872, 0.835092, 0.543207,
		-0.431408, -0.459955, 0.776098,
		0.897964, -0.301765, 0.320309,
		32.113613, 35.350468, 20.277077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.544142, 35.602673, 20.803869>,  <31.485039, 35.561703, 20.052860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.544142, 35.602673, 20.803869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.912565, 35.629440, 20.650417>,  <32.133621, 35.645500, 20.558346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.912565, 35.629440, 20.650417>,  <31.544142, 35.602673, 20.803869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.912565, 35.629440, 20.650417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142228, 0.859263, 0.491363,
		0.362520, -0.507138, 0.781915,
		0.921059, 0.066919, -0.383629,
		32.188885, 35.649517, 20.535328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.044222, 36.103912, 20.571638>,  <31.544142, 35.602673, 20.803869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.044222, 36.103912, 20.571638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.668985, 35.994919, 20.657185>,  <30.443844, 35.929523, 20.708511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.668985, 35.994919, 20.657185>,  <31.044222, 36.103912, 20.571638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.668985, 35.994919, 20.657185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252303, 0.960535, 0.117117,
		-0.237337, 0.055908, -0.969817,
		-0.938091, -0.272484, 0.213864,
		30.387558, 35.913174, 20.721344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.754698, 35.528992, 21.058826>,  <31.044222, 36.103912, 20.571638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.754698, 35.528992, 21.058826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.535467, 35.669449, 21.362488>,  <30.403929, 35.753723, 21.544685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.535467, 35.669449, 21.362488>,  <30.754698, 35.528992, 21.058826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.535467, 35.669449, 21.362488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146510, -0.853279, 0.500450,
		0.823497, 0.385508, 0.416217,
		-0.548077, 0.351139, 0.759153,
		30.371044, 35.774792, 21.590233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.184805, 35.606323, 21.639935>,  <30.754698, 35.528992, 21.058826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.184805, 35.606323, 21.639935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.799229, 35.549061, 21.729664>,  <30.567883, 35.514702, 21.783503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.799229, 35.549061, 21.729664>,  <31.184805, 35.606323, 21.639935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.799229, 35.549061, 21.729664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264210, -0.615522, 0.742513,
		0.031779, 0.775008, 0.631152,
		-0.963942, -0.143160, 0.224325,
		30.510046, 35.506111, 21.796961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.133942, 35.477165, 22.395840>,  <31.184805, 35.606323, 21.639935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.133942, 35.477165, 22.395840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.805454, 35.315025, 22.235195>,  <30.608362, 35.217739, 22.138809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.805454, 35.315025, 22.235195>,  <31.133942, 35.477165, 22.395840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.805454, 35.315025, 22.235195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214870, -0.871688, 0.440444,
		-0.528615, 0.275406, 0.802943,
		-0.821217, -0.405353, -0.401611,
		30.559090, 35.193420, 22.114712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.890726, 34.994167, 22.908854>,  <31.133942, 35.477165, 22.395840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.890726, 34.994167, 22.908854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.702124, 34.846779, 22.588375>,  <30.588963, 34.758347, 22.396088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.702124, 34.846779, 22.588375>,  <30.890726, 34.994167, 22.908854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.702124, 34.846779, 22.588375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087156, -0.923548, 0.373446,
		-0.877545, 0.106254, 0.467574,
		-0.471507, -0.368468, -0.801194,
		30.560671, 34.736240, 22.348017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.338306, 34.566780, 23.201962>,  <30.890726, 34.994167, 22.908854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.338306, 34.566780, 23.201962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.412077, 34.442501, 22.828983>,  <30.456339, 34.367935, 22.605196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.412077, 34.442501, 22.828983>,  <30.338306, 34.566780, 23.201962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.412077, 34.442501, 22.828983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026309, -0.946819, 0.320688,
		-0.982494, -0.083675, -0.166446,
		0.184428, -0.310695, -0.932446,
		30.467405, 34.349293, 22.549250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.987707, 33.972965, 23.200083>,  <30.338306, 34.566780, 23.201962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.987707, 33.972965, 23.200083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.233828, 33.950829, 22.885544>,  <30.381500, 33.937546, 22.696821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.233828, 33.950829, 22.885544>,  <29.987707, 33.972965, 23.200083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.233828, 33.950829, 22.885544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036679, -0.994442, 0.098691,
		-0.787439, -0.089567, -0.609850,
		0.615300, -0.055345, -0.786348,
		30.418417, 33.934227, 22.649639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.795519, 33.459217, 22.792757>,  <29.987707, 33.972965, 23.200083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.795519, 33.459217, 22.792757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.183058, 33.514210, 22.710361>,  <30.415581, 33.547203, 22.660925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.183058, 33.514210, 22.710361>,  <29.795519, 33.459217, 22.792757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.183058, 33.514210, 22.710361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137960, -0.990364, -0.012086,
		-0.205664, -0.016708, -0.978480,
		0.968850, 0.137477, -0.205987,
		30.473713, 33.555454, 22.648565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.997416, 32.797218, 22.540989>,  <29.795519, 33.459217, 22.792757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.997416, 32.797218, 22.540989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.347878, 32.984097, 22.588451>,  <30.558155, 33.096222, 22.616928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.347878, 32.984097, 22.588451>,  <29.997416, 32.797218, 22.540989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.347878, 32.984097, 22.588451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469115, -0.883042, 0.012952,
		0.110830, 0.044316, -0.992851,
		0.876155, 0.467197, 0.118657,
		30.610723, 33.124256, 22.624048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.475935, 32.527615, 22.054012>,  <29.997416, 32.797218, 22.540989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.475935, 32.527615, 22.054012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.711544, 32.676579, 22.340889>,  <30.852909, 32.765957, 22.513016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.711544, 32.676579, 22.340889>,  <30.475935, 32.527615, 22.054012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.711544, 32.676579, 22.340889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522370, -0.852609, 0.013703,
		0.616587, 0.366568, -0.696741,
		0.589025, 0.372405, 0.717192,
		30.888252, 32.788300, 22.556047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.227896, 32.314068, 21.932709>,  <30.475935, 32.527615, 22.054012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.227896, 32.314068, 21.932709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.204285, 32.361744, 22.329155>,  <31.190117, 32.390350, 22.567022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.204285, 32.361744, 22.329155>,  <31.227896, 32.314068, 21.932709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.204285, 32.361744, 22.329155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366439, -0.920948, 0.132576,
		0.928568, 0.371009, 0.010688,
		-0.059030, 0.119189, 0.991115,
		31.186577, 32.397499, 22.626490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.908581, 31.994036, 22.176012>,  <31.227896, 32.314068, 21.932709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.908581, 31.994036, 22.176012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642632, 32.011810, 22.474266>,  <31.483063, 32.022476, 22.653219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642632, 32.011810, 22.474266>,  <31.908581, 31.994036, 22.176012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.642632, 32.011810, 22.474266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189277, -0.955626, 0.225729,
		0.722579, 0.291212, 0.626957,
		-0.664871, 0.044439, 0.745635,
		31.443171, 32.025143, 22.697956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.205879, 31.636551, 22.692139>,  <31.908581, 31.994036, 22.176012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.205879, 31.636551, 22.692139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.821318, 31.648449, 22.801544>,  <31.590580, 31.655588, 22.867188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.821318, 31.648449, 22.801544>,  <32.205879, 31.636551, 22.692139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.821318, 31.648449, 22.801544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023623, -0.981544, 0.189772,
		0.274112, 0.188910, 0.942961,
		-0.961408, 0.029743, 0.273516,
		31.532896, 31.657372, 22.883598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237553, 31.061893, 23.188324>,  <32.205879, 31.636551, 22.692139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237553, 31.061893, 23.188324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.851049, 31.136009, 23.116760>,  <31.619146, 31.180479, 23.073822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.851049, 31.136009, 23.116760>,  <32.237553, 31.061893, 23.188324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.851049, 31.136009, 23.116760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210889, -0.967930, 0.136518,
		-0.147875, 0.169641, 0.974348,
		-0.966260, 0.185291, -0.178908,
		31.561171, 31.191597, 23.063087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.713200, 30.916273, 23.780731>,  <32.237553, 31.061893, 23.188324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.713200, 30.916273, 23.780731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.526857, 30.866356, 23.430325>,  <31.415052, 30.836407, 23.220079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.526857, 30.866356, 23.430325>,  <31.713200, 30.916273, 23.780731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.526857, 30.866356, 23.430325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165690, -0.960192, 0.224895,
		-0.869210, 0.249916, 0.426633,
		-0.465854, -0.124792, -0.876018,
		31.387100, 30.828918, 23.167519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.161928, 30.507704, 23.969360>,  <31.713200, 30.916273, 23.780731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.161928, 30.507704, 23.969360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.185951, 30.468716, 23.571991>,  <31.200365, 30.445322, 23.333569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.185951, 30.468716, 23.571991>,  <31.161928, 30.507704, 23.969360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.185951, 30.468716, 23.571991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211301, -0.973909, 0.082783,
		-0.975574, 0.204940, -0.079092,
		0.060063, -0.097473, -0.993424,
		31.203968, 30.439474, 23.273964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.753946, 29.971516, 23.878485>,  <31.161928, 30.507704, 23.969360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.753946, 29.971516, 23.878485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.918289, 29.971699, 23.513805>,  <31.016895, 29.971807, 23.294998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.918289, 29.971699, 23.513805>,  <30.753946, 29.971516, 23.878485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.918289, 29.971699, 23.513805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055272, -0.998173, 0.024409,
		-0.910023, -0.060420, -0.410130,
		0.410856, 0.000456, -0.911700,
		31.041546, 29.971836, 23.240295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.312048, 29.563946, 23.463436>,  <30.753946, 29.971516, 23.878485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.312048, 29.563946, 23.463436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.676044, 29.570766, 23.297726>,  <30.894444, 29.574858, 23.198299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.676044, 29.570766, 23.297726>,  <30.312048, 29.563946, 23.463436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.676044, 29.570766, 23.297726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014516, -0.997231, -0.072930,
		-0.414370, 0.072379, -0.907226,
		0.909993, 0.017051, -0.414274,
		30.949041, 29.575882, 23.173443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.321852, 28.911743, 23.023514>,  <30.312048, 29.563946, 23.463436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.321852, 28.911743, 23.023514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.708382, 29.010052, 23.054008>,  <30.940300, 29.069036, 23.072306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.708382, 29.010052, 23.054008>,  <30.321852, 28.911743, 23.023514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.708382, 29.010052, 23.054008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245701, -0.969290, 0.010424,
		0.076459, 0.008659, -0.997035,
		0.966325, 0.245770, 0.076238,
		30.998280, 29.083782, 23.076880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.637684, 28.550426, 22.480137>,  <30.321852, 28.911743, 23.023514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.637684, 28.550426, 22.480137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.906839, 28.626335, 22.766132>,  <31.068333, 28.671881, 22.937729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.906839, 28.626335, 22.766132>,  <30.637684, 28.550426, 22.480137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.906839, 28.626335, 22.766132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278698, -0.960351, -0.007393,
		0.685235, 0.204240, -0.699099,
		0.672890, 0.189771, 0.714987,
		31.108706, 28.683266, 22.980629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.289192, 28.184549, 22.298386>,  <30.637684, 28.550426, 22.480137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.289192, 28.184549, 22.298386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.293213, 28.235359, 22.695126>,  <31.295626, 28.265844, 22.933168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.293213, 28.235359, 22.695126>,  <31.289192, 28.184549, 22.298386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.293213, 28.235359, 22.695126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128373, -0.983855, 0.124700,
		0.991675, 0.126073, -0.026198,
		0.010054, 0.127025, 0.991849,
		31.296228, 28.273466, 22.992680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.752394, 27.716063, 22.499729>,  <31.289192, 28.184549, 22.298386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.752394, 27.716063, 22.499729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.568262, 27.815197, 22.840710>,  <31.457783, 27.874678, 23.045298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.568262, 27.815197, 22.840710>,  <31.752394, 27.716063, 22.499729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.568262, 27.815197, 22.840710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186367, -0.911863, 0.365751,
		0.867966, 0.327235, 0.373568,
		-0.460329, 0.247838, 0.852452,
		31.430164, 27.889549, 23.096445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.179417, 27.457096, 22.977396>,  <31.752394, 27.716063, 22.499729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.179417, 27.457096, 22.977396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.816111, 27.488564, 23.141769>,  <31.598127, 27.507444, 23.240393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.816111, 27.488564, 23.141769>,  <32.179417, 27.457096, 22.977396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.816111, 27.488564, 23.141769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063139, -0.945146, 0.320489,
		0.413604, 0.317034, 0.853476,
		-0.908265, 0.078668, 0.410933,
		31.543631, 27.512163, 23.265049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.241489, 27.215225, 23.687540>,  <32.179417, 27.457096, 22.977396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.241489, 27.215225, 23.687540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.848333, 27.194969, 23.616703>,  <31.612440, 27.182816, 23.574202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.848333, 27.194969, 23.616703>,  <32.241489, 27.215225, 23.687540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.848333, 27.194969, 23.616703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021747, -0.986645, 0.161428,
		-0.182901, 0.154815, 0.970865,
		-0.982891, -0.050639, -0.177092,
		31.553467, 27.179777, 23.563576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.035000, 26.718290, 24.199394>,  <32.241489, 27.215225, 23.687540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.035000, 26.718290, 24.199394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.746778, 26.750957, 23.923965>,  <31.573845, 26.770557, 23.758707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.746778, 26.750957, 23.923965>,  <32.035000, 26.718290, 24.199394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.746778, 26.750957, 23.923965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105986, -0.994343, -0.007022,
		-0.685251, 0.067919, 0.725132,
		-0.720553, 0.081666, -0.688573,
		31.530613, 26.775457, 23.717394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.395470, 26.459658, 24.431225>,  <32.035000, 26.718290, 24.199394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.395470, 26.459658, 24.431225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.390621, 26.433781, 24.032093>,  <31.387712, 26.418255, 23.792614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.390621, 26.433781, 24.032093>,  <31.395470, 26.459658, 24.431225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.390621, 26.433781, 24.032093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079321, -0.994698, 0.065452,
		-0.996775, 0.079943, 0.006924,
		-0.012120, -0.064691, -0.997832,
		31.386986, 26.414373, 23.732744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.018398, 25.823090, 24.350168>,  <31.395470, 26.459658, 24.431225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.018398, 25.823090, 24.350168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.206657, 25.912010, 24.008625>,  <31.319613, 25.965363, 23.803699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.206657, 25.912010, 24.008625>,  <31.018398, 25.823090, 24.350168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.206657, 25.912010, 24.008625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058506, -0.973474, -0.221193,
		-0.880380, 0.054148, -0.471168,
		0.470647, 0.222300, -0.853858,
		31.347851, 25.978701, 23.752468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.621874, 25.371277, 23.863705>,  <31.018398, 25.823090, 24.350168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.621874, 25.371277, 23.863705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.978689, 25.441437, 23.697090>,  <31.192780, 25.483532, 23.597122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.978689, 25.441437, 23.697090>,  <30.621874, 25.371277, 23.863705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.978689, 25.441437, 23.697090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117796, -0.979998, -0.160397,
		-0.436336, 0.094015, -0.894858,
		0.892040, 0.175398, -0.416534,
		31.246302, 25.494057, 23.572130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.015343, 25.519144, 23.495749>,  <30.621874, 25.371277, 23.863705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.015343, 25.519144, 23.495749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.630075, 25.516434, 23.388222>,  <29.398916, 25.514807, 23.323706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.630075, 25.516434, 23.388222>,  <30.015343, 25.519144, 23.495749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.630075, 25.516434, 23.388222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123717, 0.898766, 0.420612,
		0.238754, 0.438377, -0.866500,
		-0.963167, -0.006778, -0.268819,
		29.341125, 25.514400, 23.307575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.855120, 26.147417, 23.087025>,  <30.015343, 25.519144, 23.495749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.855120, 26.147417, 23.087025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.515520, 26.007652, 23.245575>,  <29.311760, 25.923794, 23.340706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.515520, 26.007652, 23.245575>,  <29.855120, 26.147417, 23.087025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.515520, 26.007652, 23.245575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233882, 0.921161, 0.311065,
		-0.473817, 0.171388, -0.863785,
		-0.848997, -0.349412, 0.396377,
		29.260820, 25.902828, 23.364489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.295410, 26.541775, 22.766064>,  <29.855120, 26.147417, 23.087025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.295410, 26.541775, 22.766064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.146311, 26.397045, 23.107857>,  <29.056850, 26.310207, 23.312933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.146311, 26.397045, 23.107857>,  <29.295410, 26.541775, 22.766064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.146311, 26.397045, 23.107857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373500, 0.901460, 0.218784,
		-0.849444, -0.237597, -0.471161,
		-0.372750, -0.361824, 0.854483,
		29.034485, 26.288498, 23.364202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.678438, 26.775885, 22.768066>,  <29.295410, 26.541775, 22.766064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.678438, 26.775885, 22.768066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.736450, 26.672348, 23.150055>,  <28.771257, 26.610226, 23.379248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.736450, 26.672348, 23.150055>,  <28.678438, 26.775885, 22.768066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.736450, 26.672348, 23.150055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461777, 0.835902, 0.296697,
		-0.875059, -0.484013, 0.001702,
		0.145028, -0.258842, 0.954970,
		28.779959, 26.594696, 23.436546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.021049, 26.853373, 23.199829>,  <28.678438, 26.775885, 22.768066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.021049, 26.853373, 23.199829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.334171, 26.906948, 23.442902>,  <28.522045, 26.939093, 23.588745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.334171, 26.906948, 23.442902>,  <28.021049, 26.853373, 23.199829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.334171, 26.906948, 23.442902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360515, 0.893586, 0.267457,
		-0.507193, -0.428446, 0.747790,
		0.782805, 0.133937, 0.607681,
		28.569014, 26.947130, 23.625206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
