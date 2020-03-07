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
	<-0.765555, 1.718833, 2.609050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.395416, 1.587029, 2.534050>,  <-0.173333, 1.507946, 2.489050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.395416, 1.587029, 2.534050>,  <-0.765555, 1.718833, 2.609050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.395416, 1.587029, 2.534050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213836, 0.862012, -0.459576,
		0.313062, 0.385173, 0.868121,
		0.925346, -0.329512, -0.187500,
		-0.117812, 1.488175, 2.477800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.235643, 2.202993, 2.765841>,  <-0.765555, 1.718833, 2.609050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.235643, 2.202993, 2.765841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.080872, 1.976280, 2.474899>,  <0.011991, 1.840253, 2.300334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.080872, 1.976280, 2.474899>,  <-0.235643, 2.202993, 2.765841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.080872, 1.976280, 2.474899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381427, 0.816525, -0.433360,
		0.839524, -0.109754, 0.532122,
		0.386928, -0.566782, -0.727355,
		0.035207, 1.806246, 2.256693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.545525, 2.311729, 2.701940>,  <-0.235643, 2.202993, 2.765841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.545525, 2.311729, 2.701940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.346466, 2.226967, 2.365501>,  <0.227031, 2.176109, 2.163638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.346466, 2.226967, 2.365501>,  <0.545525, 2.311729, 2.701940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.346466, 2.226967, 2.365501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407175, 0.799141, -0.442247,
		0.765869, -0.562557, -0.311408,
		-0.497648, -0.211906, -0.841096,
		0.197172, 2.163395, 2.113173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.009490, 2.632225, 2.216883>,  <0.545525, 2.311729, 2.701940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.009490, 2.632225, 2.216883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.298119, 2.718605, 1.976227>,  <0.482684, 2.770433, 1.831833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.298119, 2.718605, 1.976227>,  <-0.009490, 2.632225, 2.216883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.298119, 2.718605, 1.976227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488160, 0.806045, -0.334649,
		0.412682, 0.551050, 0.725285,
		0.769021, 0.215951, -0.601641,
		0.528825, 2.783390, 1.795734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.436460, 3.241277, 2.392790>,  <-0.009490, 2.632225, 2.216883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.436460, 3.241277, 2.392790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.361862, 3.143250, 2.012230>,  <0.317103, 3.084433, 1.783894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.361862, 3.143250, 2.012230>,  <0.436460, 3.241277, 2.392790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.361862, 3.143250, 2.012230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557616, 0.823700, -0.102871,
		0.808878, 0.511331, -0.290270,
		-0.186494, -0.245069, -0.951399,
		0.305914, 3.069729, 1.726810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.478857, 3.802850, 1.959103>,  <0.436460, 3.241277, 2.392790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.478857, 3.802850, 1.959103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.233925, 3.565125, 1.750549>,  <0.086966, 3.422489, 1.625417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.233925, 3.565125, 1.750549>,  <0.478857, 3.802850, 1.959103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.233925, 3.565125, 1.750549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721776, 0.689354, 0.061895,
		0.322634, 0.414224, -0.851074,
		-0.612329, -0.594315, -0.521385,
		0.050226, 3.386830, 1.594134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.080389, 4.258698, 1.527217>,  <0.478857, 3.802850, 1.959103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.080389, 4.258698, 1.527217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.133362, 3.922958, 1.567093>,  <-0.261612, 3.721515, 1.591019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.133362, 3.922958, 1.567093>,  <0.080389, 4.258698, 1.527217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.133362, 3.922958, 1.567093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828643, 0.543485, 0.134072,
		-0.166713, -0.010963, -0.985945,
		-0.534376, -0.839347, 0.099690,
		-0.293675, 3.671154, 1.597000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.388911, 4.364391, 1.111216>,  <0.080389, 4.258698, 1.527217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.388911, 4.364391, 1.111216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.525375, 4.113426, 1.391205>,  <-0.607254, 3.962847, 1.559198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.525375, 4.113426, 1.391205>,  <-0.388911, 4.364391, 1.111216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.525375, 4.113426, 1.391205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840429, 0.537138, 0.071840,
		-0.421055, -0.563769, -0.710547,
		-0.341161, -0.627413, 0.699973,
		-0.627724, 3.925202, 1.601197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.060609, 5.070199, 1.748955> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.102776, 4.892929, 2.105042>,  <3.128075, 4.786567, 2.318693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.102776, 4.892929, 2.105042>,  <3.060609, 5.070199, 1.748955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.102776, 4.892929, 2.105042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749160, -0.553303, -0.364164,
		0.653947, 0.705302, 0.273682,
		0.105416, -0.443176, 0.890215,
		3.134400, 4.759976, 2.372106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.850416, 4.994138, 1.991971>,  <3.060609, 5.070199, 1.748955>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.850416, 4.994138, 1.991971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.614708, 4.699738, 2.125275>,  <3.473283, 4.523097, 2.205257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.614708, 4.699738, 2.125275>,  <3.850416, 4.994138, 1.991971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.614708, 4.699738, 2.125275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621793, -0.676506, -0.394604,
		0.515882, -0.025309, 0.856285,
		-0.589270, -0.736002, 0.333260,
		3.437927, 4.478937, 2.225253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.289893, 4.445547, 2.396939>,  <3.850416, 4.994138, 1.991971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.289893, 4.445547, 2.396939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.943626, 4.302017, 2.257301>,  <3.735867, 4.215899, 2.173519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.943626, 4.302017, 2.257301>,  <4.289893, 4.445547, 2.396939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.943626, 4.302017, 2.257301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454683, -0.855337, -0.248320,
		-0.209490, -0.373689, 0.903588,
		-0.865666, -0.358825, -0.349095,
		3.683927, 4.194370, 2.152573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.157387, 3.731949, 2.660499>,  <4.289893, 4.445547, 2.396939>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.157387, 3.731949, 2.660499> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.000275, 3.802155, 2.299408>,  <3.906007, 3.844278, 2.082753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.000275, 3.802155, 2.299408>,  <4.157387, 3.731949, 2.660499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.000275, 3.802155, 2.299408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609101, -0.685788, -0.398360,
		-0.689002, -0.706318, 0.162449,
		-0.392775, 0.175523, -0.902729,
		3.882440, 3.854809, 2.028590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.921183, 3.122416, 2.244493>,  <4.157387, 3.731949, 2.660499>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.921183, 3.122416, 2.244493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.999222, 3.361511, 1.933456>,  <4.046045, 3.504968, 1.746835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.999222, 3.361511, 1.933456>,  <3.921183, 3.122416, 2.244493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.999222, 3.361511, 1.933456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674306, -0.657471, -0.336219,
		-0.712214, -0.458739, -0.531329,
		0.195097, 0.597738, -0.777590,
		4.057751, 3.540833, 1.700179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.777923, 2.766874, 1.537242>,  <3.921183, 3.122416, 2.244493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.777923, 2.766874, 1.537242> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.073963, 3.035400, 1.521309>,  <4.251587, 3.196516, 1.511749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.073963, 3.035400, 1.521309>,  <3.777923, 2.766874, 1.537242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.073963, 3.035400, 1.521309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604279, -0.689850, -0.398691,
		-0.295126, 0.271001, -0.916220,
		0.740100, 0.671316, -0.039832,
		4.295993, 3.236795, 1.509359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.289229, 2.574514, 0.991292>,  <3.777923, 2.766874, 1.537242>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.289229, 2.574514, 0.991292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.529976, 2.832733, 1.179344>,  <4.674424, 2.987665, 1.292175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.529976, 2.832733, 1.179344>,  <4.289229, 2.574514, 0.991292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.529976, 2.832733, 1.179344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798568, -0.481627, -0.361004,
		-0.006618, 0.592708, -0.805390,
		0.601868, 0.645548, 0.470130,
		4.710536, 3.026398, 1.320383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.760427, 3.043301, 0.466198>,  <4.289229, 2.574514, 0.991292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.760427, 3.043301, 0.466198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.897892, 2.968842, 0.834381>,  <4.980371, 2.924166, 1.055291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.897892, 2.968842, 0.834381>,  <4.760427, 3.043301, 0.466198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.897892, 2.968842, 0.834381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829809, -0.398704, -0.390451,
		0.439672, 0.897989, 0.017447,
		0.343664, -0.186148, 0.920458,
		5.000991, 2.912997, 1.110519>
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
