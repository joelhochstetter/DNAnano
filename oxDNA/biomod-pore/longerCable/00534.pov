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
	<24.340189, 35.207588, 35.030888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.203638, 34.831963, 35.014786>,  <24.121708, 34.606586, 35.005123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.203638, 34.831963, 35.014786>,  <24.340189, 35.207588, 35.030888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.203638, 34.831963, 35.014786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624246, -0.258534, 0.737209,
		-0.702694, 0.226538, 0.674464,
		-0.341378, -0.939064, -0.040255,
		24.101225, 34.550243, 35.002708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.048269, 35.071480, 35.766476>,  <24.340189, 35.207588, 35.030888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.048269, 35.071480, 35.766476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.206060, 34.777866, 35.545361>,  <24.300735, 34.601696, 35.412689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.206060, 34.777866, 35.545361>,  <24.048269, 35.071480, 35.766476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.206060, 34.777866, 35.545361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568090, -0.278028, 0.774580,
		-0.722262, -0.619588, 0.307324,
		0.394476, -0.734038, -0.552790,
		24.324404, 34.557655, 35.379524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.935326, 34.288925, 36.069717>,  <24.048269, 35.071480, 35.766476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.935326, 34.288925, 36.069717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.266560, 34.371380, 35.861187>,  <24.465300, 34.420853, 35.736069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.266560, 34.371380, 35.861187>,  <23.935326, 34.288925, 36.069717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.266560, 34.371380, 35.861187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560574, -0.314022, 0.766255,
		-0.005756, -0.926768, -0.375591,
		0.828084, 0.206136, -0.521330,
		24.514984, 34.433220, 35.704788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.427296, 33.751602, 36.078285>,  <23.935326, 34.288925, 36.069717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.427296, 33.751602, 36.078285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.693100, 34.040382, 36.001122>,  <24.852583, 34.213650, 35.954823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.693100, 34.040382, 36.001122>,  <24.427296, 33.751602, 36.078285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.693100, 34.040382, 36.001122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651867, -0.433806, 0.621998,
		0.365365, -0.539077, -0.758884,
		0.664513, 0.721948, -0.192909,
		24.892454, 34.256966, 35.943249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.012394, 33.467182, 35.838306>,  <24.427296, 33.751602, 36.078285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.012394, 33.467182, 35.838306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.111172, 33.825939, 35.985062>,  <25.170439, 34.041191, 36.073116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.111172, 33.825939, 35.985062>,  <25.012394, 33.467182, 35.838306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.111172, 33.825939, 35.985062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855322, -0.379696, 0.352499,
		0.455460, 0.226763, -0.860892,
		0.246944, 0.896888, 0.366892,
		25.185255, 34.095005, 36.095131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.191984, 33.105446, 36.518055>,  <25.012394, 33.467182, 35.838306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.191984, 33.105446, 36.518055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.295050, 33.418419, 36.744827>,  <25.356890, 33.606201, 36.880890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.295050, 33.418419, 36.744827>,  <25.191984, 33.105446, 36.518055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.295050, 33.418419, 36.744827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798480, 0.502823, -0.331056,
		-0.544094, -0.367380, 0.754317,
		0.257665, 0.782433, 0.566929,
		25.372349, 33.653149, 36.914906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.771986, 33.357986, 36.322727>,  <25.191984, 33.105446, 36.518055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.771986, 33.357986, 36.322727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.139984, 33.487316, 36.234116>,  <26.360783, 33.564915, 36.180950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.139984, 33.487316, 36.234116>,  <25.771986, 33.357986, 36.322727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.139984, 33.487316, 36.234116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066735, 0.686195, 0.724350,
		0.386209, -0.651614, 0.652872,
		0.919994, 0.323320, -0.221529,
		26.415983, 33.584312, 36.167656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.221149, 33.139538, 36.863178>,  <25.771986, 33.357986, 36.322727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.221149, 33.139538, 36.863178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.322369, 33.481586, 36.682186>,  <26.383101, 33.686813, 36.573589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.322369, 33.481586, 36.682186>,  <26.221149, 33.139538, 36.863178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.322369, 33.481586, 36.682186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314696, 0.515023, 0.797320,
		0.914841, -0.059366, 0.399427,
		0.253048, 0.855118, -0.452482,
		26.398283, 33.738121, 36.546440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.614037, 33.534931, 37.285419>,  <26.221149, 33.139538, 36.863178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.614037, 33.534931, 37.285419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.404821, 33.789532, 37.058685>,  <26.279291, 33.942291, 36.922646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.404821, 33.789532, 37.058685>,  <26.614037, 33.534931, 37.285419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.404821, 33.789532, 37.058685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295714, 0.488224, 0.821091,
		0.799365, 0.597083, -0.067139,
		-0.523039, 0.636497, -0.566835,
		26.247910, 33.980480, 36.888634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.784168, 34.155457, 37.567287>,  <26.614037, 33.534931, 37.285419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.784168, 34.155457, 37.567287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.463404, 34.268188, 37.356571>,  <26.270945, 34.335827, 37.230141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.463404, 34.268188, 37.356571>,  <26.784168, 34.155457, 37.567287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.463404, 34.268188, 37.356571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297716, 0.575960, 0.761338,
		0.517980, 0.767359, -0.377963,
		-0.801911, 0.281833, -0.526791,
		26.222830, 34.352737, 37.198532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.692471, 34.781261, 37.749989>,  <26.784168, 34.155457, 37.567287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.692471, 34.781261, 37.749989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.342236, 34.692139, 37.578545>,  <26.132095, 34.638664, 37.475677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.342236, 34.692139, 37.578545>,  <26.692471, 34.781261, 37.749989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.342236, 34.692139, 37.578545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471273, 0.588826, 0.656647,
		0.106076, 0.776944, -0.620568,
		-0.875585, -0.222803, -0.428613,
		26.079559, 34.625298, 37.449959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.230108, 35.200947, 38.100449>,  <26.692471, 34.781261, 37.749989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.230108, 35.200947, 38.100449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.968592, 35.021751, 37.856525>,  <25.811682, 34.914234, 37.710171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.968592, 35.021751, 37.856525>,  <26.230108, 35.200947, 38.100449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.968592, 35.021751, 37.856525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754175, 0.451260, 0.477059,
		0.061468, 0.771800, -0.632888,
		-0.653791, -0.447984, -0.609810,
		25.772455, 34.887356, 37.673584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.580475, 35.225243, 38.441940>,  <26.230108, 35.200947, 38.100449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.580475, 35.225243, 38.441940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.235762, 35.405106, 38.535862>,  <25.028933, 35.513023, 38.592216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.235762, 35.405106, 38.535862>,  <25.580475, 35.225243, 38.441940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.235762, 35.405106, 38.535862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506827, -0.782670, -0.361322,
		0.021301, -0.430387, 0.902393,
		-0.861785, 0.449661, 0.234804,
		24.977226, 35.540005, 38.606304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.148624, 35.041016, 38.925430>,  <25.580475, 35.225243, 38.441940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.148624, 35.041016, 38.925430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.976912, 35.209957, 38.606098>,  <24.873884, 35.311321, 38.414497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.976912, 35.209957, 38.606098>,  <25.148624, 35.041016, 38.925430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.976912, 35.209957, 38.606098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338123, -0.894796, -0.291570,
		-0.837489, 0.144767, 0.526929,
		-0.429284, 0.422354, -0.798331,
		24.848127, 35.336662, 38.366600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.759241, 34.798332, 38.296463>,  <25.148624, 35.041016, 38.925430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.759241, 34.798332, 38.296463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.420357, 34.659504, 38.135578>,  <24.217026, 34.576206, 38.039047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.420357, 34.659504, 38.135578>,  <24.759241, 34.798332, 38.296463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.420357, 34.659504, 38.135578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331409, 0.246450, -0.910730,
		0.415211, -0.904879, -0.093774,
		-0.847211, -0.347068, -0.402214,
		24.166193, 34.555386, 38.014915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.924461, 34.129120, 37.849621>,  <24.759241, 34.798332, 38.296463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.924461, 34.129120, 37.849621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.607363, 34.357849, 37.765175>,  <24.417105, 34.495087, 37.714508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.607363, 34.357849, 37.765175>,  <24.924461, 34.129120, 37.849621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.607363, 34.357849, 37.765175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457409, 0.329135, -0.826103,
		-0.402904, -0.751454, -0.522479,
		-0.792745, 0.571828, -0.211112,
		24.369539, 34.529396, 37.701839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.943684, 34.250065, 37.035847>,  <24.924461, 34.129120, 37.849621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.943684, 34.250065, 37.035847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.290232, 34.414036, 37.149944>,  <25.498159, 34.512417, 37.218403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.290232, 34.414036, 37.149944>,  <24.943684, 34.250065, 37.035847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.290232, 34.414036, 37.149944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436013, -0.342362, -0.832274,
		-0.243513, 0.845428, -0.475345,
		0.866368, 0.409927, 0.285248,
		25.550142, 34.537014, 37.235519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.203634, 34.720123, 36.528473>,  <24.943684, 34.250065, 37.035847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.203634, 34.720123, 36.528473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.522802, 34.594749, 36.734417>,  <25.714304, 34.519524, 36.857983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.522802, 34.594749, 36.734417>,  <25.203634, 34.720123, 36.528473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.522802, 34.594749, 36.734417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379827, -0.401774, -0.833252,
		0.468029, 0.860427, -0.201533,
		0.797922, -0.313438, 0.514856,
		25.762178, 34.500717, 36.888874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.807194, 34.913643, 36.090267>,  <25.203634, 34.720123, 36.528473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.807194, 34.913643, 36.090267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.934792, 34.614689, 36.323387>,  <26.011351, 34.435318, 36.463261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.934792, 34.614689, 36.323387>,  <25.807194, 34.913643, 36.090267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.934792, 34.614689, 36.323387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609645, -0.309012, -0.729962,
		0.725656, 0.588155, 0.357068,
		0.318993, -0.747386, 0.582802,
		26.030489, 34.390472, 36.498226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.523191, 34.924679, 36.006721>,  <25.807194, 34.913643, 36.090267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.523191, 34.924679, 36.006721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.488770, 34.556423, 36.159046>,  <26.468117, 34.335468, 36.250439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.488770, 34.556423, 36.159046>,  <26.523191, 34.924679, 36.006721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.488770, 34.556423, 36.159046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747744, -0.312272, -0.585974,
		0.658387, 0.234321, 0.715276,
		-0.086055, -0.920641, 0.380808,
		26.462954, 34.280231, 36.273289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.041903, 34.507874, 36.532932>,  <26.523191, 34.924679, 36.006721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.041903, 34.507874, 36.532932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.885620, 34.298668, 36.229931>,  <26.791851, 34.173145, 36.048130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.885620, 34.298668, 36.229931>,  <27.041903, 34.507874, 36.532932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.885620, 34.298668, 36.229931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911702, -0.106268, -0.396870,
		0.127070, -0.845674, 0.518352,
		-0.390707, -0.523014, -0.757499,
		26.768408, 34.141766, 36.002682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.393871, 33.857689, 36.500309>,  <27.041903, 34.507874, 36.532932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.393871, 33.857689, 36.500309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.267271, 33.964794, 36.136303>,  <27.191311, 34.029057, 35.917900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.267271, 33.964794, 36.136303>,  <27.393871, 33.857689, 36.500309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.267271, 33.964794, 36.136303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875310, -0.287295, -0.388966,
		-0.365594, -0.919654, -0.143449,
		-0.316502, 0.267766, -0.910016,
		27.172321, 34.045124, 35.863297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.800371, 33.990601, 37.193153>,  <27.393871, 33.857689, 36.500309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.800371, 33.990601, 37.193153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.760313, 34.152416, 36.829544>,  <27.736279, 34.249508, 36.611378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.760313, 34.152416, 36.829544>,  <27.800371, 33.990601, 37.193153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.760313, 34.152416, 36.829544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765680, 0.614756, 0.189233,
		0.635378, -0.677068, -0.371314,
		-0.100143, 0.404542, -0.909020,
		27.730270, 34.273781, 36.556839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.328112, 33.722038, 36.708294>,  <27.800371, 33.990601, 37.193153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.328112, 33.722038, 36.708294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.219576, 34.101257, 36.641869>,  <28.154455, 34.328789, 36.602013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.219576, 34.101257, 36.641869>,  <28.328112, 33.722038, 36.708294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.219576, 34.101257, 36.641869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942108, 0.296926, 0.155781,
		0.196997, -0.114181, -0.973733,
		-0.271339, 0.948049, -0.166065,
		28.138174, 34.385674, 36.592049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.565144, 34.030830, 36.057564>,  <28.328112, 33.722038, 36.708294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.565144, 34.030830, 36.057564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.523996, 34.309288, 36.341763>,  <28.499308, 34.476364, 36.512280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.523996, 34.309288, 36.341763>,  <28.565144, 34.030830, 36.057564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.523996, 34.309288, 36.341763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957403, 0.263044, -0.119113,
		-0.269811, 0.667976, -0.693549,
		-0.102870, 0.696143, 0.710495,
		28.493135, 34.518131, 36.554913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.719246, 34.736427, 35.814919>,  <28.565144, 34.030830, 36.057564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.719246, 34.736427, 35.814919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.784494, 34.743057, 36.209507>,  <28.823643, 34.747036, 36.446259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.784494, 34.743057, 36.209507>,  <28.719246, 34.736427, 35.814919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.784494, 34.743057, 36.209507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959218, 0.231289, -0.162502,
		-0.230853, 0.972744, 0.021827,
		0.163121, 0.016577, 0.986467,
		28.833431, 34.748032, 36.505447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.479231, 34.773952, 35.732677>,  <28.719246, 34.736427, 35.814919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.479231, 34.773952, 35.732677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.407228, 34.760696, 36.125919>,  <29.364027, 34.752743, 36.361866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.407228, 34.760696, 36.125919>,  <29.479231, 34.773952, 35.732677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.407228, 34.760696, 36.125919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982785, -0.048343, 0.178319,
		0.041617, 0.998281, 0.041274,
		-0.180007, -0.033142, 0.983107,
		29.353226, 34.750755, 36.420853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.190353, 34.822727, 36.066219>,  <29.479231, 34.773952, 35.732677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.190353, 34.822727, 36.066219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.937319, 34.769989, 36.371494>,  <29.785498, 34.738346, 36.554657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.937319, 34.769989, 36.371494>,  <30.190353, 34.822727, 36.066219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.937319, 34.769989, 36.371494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746524, 0.158607, 0.646178,
		-0.206243, 0.978499, -0.001906,
		-0.632587, -0.131847, 0.763184,
		29.747543, 34.730434, 36.600449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.380671, 35.248444, 36.620182>,  <30.190353, 34.822727, 36.066219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.380671, 35.248444, 36.620182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.198677, 34.952885, 36.818985>,  <30.089481, 34.775547, 36.938267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.198677, 34.952885, 36.818985>,  <30.380671, 35.248444, 36.620182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.198677, 34.952885, 36.818985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556520, 0.199768, 0.806460,
		-0.695180, 0.643521, 0.320322,
		-0.454984, -0.738900, 0.497007,
		30.062181, 34.731216, 36.968086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.554480, 35.798321, 37.279034>,  <30.380671, 35.248444, 36.620182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.554480, 35.798321, 37.279034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.797220, 36.044643, 37.480034>,  <30.942865, 36.192436, 37.600636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.797220, 36.044643, 37.480034>,  <30.554480, 35.798321, 37.279034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.797220, 36.044643, 37.480034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490879, -0.206859, 0.846314,
		0.625116, -0.760255, 0.176755,
		0.606852, 0.615809, 0.502504,
		30.979277, 36.229385, 37.630787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.668045, 35.503765, 37.819191>,  <30.554480, 35.798321, 37.279034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.668045, 35.503765, 37.819191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.769121, 35.873650, 37.933075>,  <30.829767, 36.095581, 38.001404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.769121, 35.873650, 37.933075>,  <30.668045, 35.503765, 37.819191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.769121, 35.873650, 37.933075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427740, -0.157175, 0.890132,
		0.867863, -0.346707, 0.355819,
		0.252689, 0.924711, 0.284706,
		30.844929, 36.151062, 38.018486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.877308, 35.367188, 38.466423>,  <30.668045, 35.503765, 37.819191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.877308, 35.367188, 38.466423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.825756, 35.763836, 38.462910>,  <30.794825, 36.001823, 38.460804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.825756, 35.763836, 38.462910>,  <30.877308, 35.367188, 38.466423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.825756, 35.763836, 38.462910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342142, -0.036153, 0.938953,
		0.930768, 0.124016, 0.343934,
		-0.128879, 0.991622, -0.008781,
		30.787092, 36.061321, 38.460274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.367207, 35.645386, 38.844749>,  <30.877308, 35.367188, 38.466423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.367207, 35.645386, 38.844749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.052805, 35.892673, 38.845127>,  <30.864164, 36.041046, 38.845352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.052805, 35.892673, 38.845127>,  <31.367207, 35.645386, 38.844749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.052805, 35.892673, 38.845127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142781, -0.183012, 0.972687,
		0.601510, 0.764400, 0.232118,
		-0.786002, 0.618223, 0.000942,
		30.817005, 36.078140, 38.845409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.312582, 36.005535, 39.471066>,  <31.367207, 35.645386, 38.844749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.312582, 36.005535, 39.471066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.940434, 36.007309, 39.324429>,  <30.717144, 36.008373, 39.236446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.940434, 36.007309, 39.324429>,  <31.312582, 36.005535, 39.471066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.940434, 36.007309, 39.324429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343533, -0.359800, 0.867485,
		-0.128054, 0.933019, 0.336270,
		-0.930369, 0.004434, -0.366596,
		30.661324, 36.008640, 39.214451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.846767, 36.323570, 39.959515>,  <31.312582, 36.005535, 39.471066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.846767, 36.323570, 39.959515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.630791, 36.063591, 39.745590>,  <30.501205, 35.907604, 39.617233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.630791, 36.063591, 39.745590>,  <30.846767, 36.323570, 39.959515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.630791, 36.063591, 39.745590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269745, -0.468264, 0.841408,
		-0.797308, 0.598575, 0.077514,
		-0.539942, -0.649952, -0.534813,
		30.468807, 35.868607, 39.585148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.606318, 36.527767, 40.059647>,  <30.846767, 36.323570, 39.959515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.606318, 36.527767, 40.059647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.401897, 36.630642, 40.387714>,  <31.279245, 36.692368, 40.584557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.401897, 36.630642, 40.387714>,  <31.606318, 36.527767, 40.059647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.401897, 36.630642, 40.387714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183689, -0.964822, 0.188087,
		0.839694, -0.054535, 0.540314,
		-0.511050, 0.257185, 0.820173,
		31.248583, 36.707798, 40.633766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.879395, 36.091713, 40.720528>,  <31.606318, 36.527767, 40.059647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.879395, 36.091713, 40.720528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.500460, 36.214031, 40.758575>,  <31.273100, 36.287422, 40.781403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.500460, 36.214031, 40.758575>,  <31.879395, 36.091713, 40.720528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.500460, 36.214031, 40.758575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230021, -0.856388, 0.462265,
		0.222816, 0.416041, 0.881625,
		-0.947335, 0.305792, 0.095119,
		31.216259, 36.305767, 40.787109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.738125, 36.024986, 41.479080>,  <31.879395, 36.091713, 40.720528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.738125, 36.024986, 41.479080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.399017, 36.031410, 41.267033>,  <31.195553, 36.035263, 41.139805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.399017, 36.031410, 41.267033>,  <31.738125, 36.024986, 41.479080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.399017, 36.031410, 41.267033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352912, -0.763216, 0.541253,
		-0.395904, 0.645944, 0.652699,
		-0.847770, 0.016061, -0.530121,
		31.144686, 36.036228, 41.107998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.185659, 36.174511, 41.959900>,  <31.738125, 36.024986, 41.479080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.185659, 36.174511, 41.959900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.105492, 35.962196, 41.630512>,  <31.057390, 35.834808, 41.432880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.105492, 35.962196, 41.630512>,  <31.185659, 36.174511, 41.959900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.105492, 35.962196, 41.630512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472670, -0.683842, 0.555827,
		-0.858146, 0.500627, -0.113831,
		-0.200420, -0.530785, -0.823468,
		31.045366, 35.802959, 41.383472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.494066, 35.978367, 41.913013>,  <31.185659, 36.174511, 41.959900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.494066, 35.978367, 41.913013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.673101, 35.675049, 41.723419>,  <30.780523, 35.493057, 41.609665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.673101, 35.675049, 41.723419>,  <30.494066, 35.978367, 41.913013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.673101, 35.675049, 41.723419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730820, -0.615633, 0.294784,
		-0.515331, 0.214453, -0.829725,
		0.447588, -0.758291, -0.473981,
		30.807379, 35.447563, 41.581226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.994833, 35.527290, 41.575550>,  <30.494066, 35.978367, 41.913013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.994833, 35.527290, 41.575550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.292580, 35.278439, 41.672600>,  <30.471228, 35.129128, 41.730831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.292580, 35.278439, 41.672600>,  <29.994833, 35.527290, 41.575550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.292580, 35.278439, 41.672600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666848, -0.673468, 0.318989,
		-0.035053, -0.399240, -0.916176,
		0.744368, -0.622132, 0.242626,
		30.515890, 35.091801, 41.745388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.437840, 35.264706, 41.068497>,  <29.994833, 35.527290, 41.575550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.437840, 35.264706, 41.068497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.338024, 35.056187, 40.742065>,  <29.278135, 34.931076, 40.546207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.338024, 35.056187, 40.742065>,  <29.437840, 35.264706, 41.068497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.338024, 35.056187, 40.742065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563820, 0.606946, -0.560110,
		0.787298, -0.599889, 0.142460,
		-0.249538, -0.521295, -0.816077,
		29.263163, 34.899799, 40.497242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.051302, 35.009674, 40.728893>,  <29.437840, 35.264706, 41.068497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.051302, 35.009674, 40.728893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.755369, 35.015205, 40.459835>,  <29.577808, 35.018524, 40.298401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.755369, 35.015205, 40.459835>,  <30.051302, 35.009674, 40.728893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.755369, 35.015205, 40.459835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614024, 0.422529, -0.666667,
		0.274994, -0.906244, -0.321092,
		-0.739834, 0.013829, -0.672648,
		29.533419, 35.019356, 40.258041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.335236, 34.822372, 39.944206>,  <30.051302, 35.009674, 40.728893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.335236, 34.822372, 39.944206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.003494, 35.045841, 39.941093>,  <29.804449, 35.179920, 39.939224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.003494, 35.045841, 39.941093>,  <30.335236, 34.822372, 39.944206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.003494, 35.045841, 39.941093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414349, 0.605645, -0.679345,
		-0.374815, -0.566643, -0.733778,
		-0.829355, 0.558668, -0.007783,
		29.754688, 35.213440, 39.938759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.219128, 34.891224, 39.253735>,  <30.335236, 34.822372, 39.944206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.219128, 34.891224, 39.253735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.008717, 35.179028, 39.435108>,  <29.882469, 35.351711, 39.543934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.008717, 35.179028, 39.435108>,  <30.219128, 34.891224, 39.253735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.008717, 35.179028, 39.435108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483483, 0.691619, -0.536570,
		-0.699670, -0.063024, -0.711681,
		-0.526029, 0.719508, 0.453434,
		29.850908, 35.394878, 39.571140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.734741, 35.358292, 38.791447>,  <30.219128, 34.891224, 39.253735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.734741, 35.358292, 38.791447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.874102, 35.583820, 39.090973>,  <29.957718, 35.719135, 39.270687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.874102, 35.583820, 39.090973>,  <29.734741, 35.358292, 38.791447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.874102, 35.583820, 39.090973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315638, 0.681645, -0.660100,
		-0.882604, 0.466334, 0.059524,
		0.348401, 0.563819, 0.748816,
		29.978622, 35.752968, 39.315617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.524672, 36.118786, 38.675026>,  <29.734741, 35.358292, 38.791447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.524672, 36.118786, 38.675026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.876724, 36.088242, 38.862446>,  <30.087955, 36.069916, 38.974895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.876724, 36.088242, 38.862446>,  <29.524672, 36.118786, 38.675026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.876724, 36.088242, 38.862446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392167, 0.673157, -0.626949,
		-0.267531, 0.735547, 0.622413,
		0.880132, -0.076362, 0.468547,
		30.140764, 36.065334, 39.003010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.771137, 36.832314, 38.799194>,  <29.524672, 36.118786, 38.675026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.771137, 36.832314, 38.799194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.086834, 36.586681, 38.798992>,  <30.276251, 36.439301, 38.798870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.086834, 36.586681, 38.798992>,  <29.771137, 36.832314, 38.799194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.086834, 36.586681, 38.798992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389564, 0.501316, -0.772608,
		0.474699, 0.609576, 0.634884,
		0.789241, -0.614084, -0.000506,
		30.323606, 36.402454, 38.798840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.328119, 37.212826, 38.471313>,  <29.771137, 36.832314, 38.799194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.328119, 37.212826, 38.471313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.510202, 36.857090, 38.454044>,  <30.619452, 36.643650, 38.443684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.510202, 36.857090, 38.454044>,  <30.328119, 37.212826, 38.471313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.510202, 36.857090, 38.454044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477568, 0.284793, -0.831156,
		0.751475, 0.357730, 0.554360,
		0.455208, -0.889338, -0.043175,
		30.646765, 36.590290, 38.441093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.967579, 37.351955, 38.279530>,  <30.328119, 37.212826, 38.471313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.967579, 37.351955, 38.279530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.964828, 36.957077, 38.215794>,  <30.963179, 36.720150, 38.177551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.964828, 36.957077, 38.215794>,  <30.967579, 37.351955, 38.279530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.964828, 36.957077, 38.215794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523236, 0.132238, -0.841865,
		0.852160, -0.089162, 0.515629,
		-0.006877, -0.987200, -0.159340,
		30.962765, 36.660915, 38.167992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.672628, 37.107700, 38.273094>,  <30.967579, 37.351955, 38.279530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.672628, 37.107700, 38.273094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.441103, 36.861931, 38.058632>,  <31.302189, 36.714470, 37.929955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.441103, 36.861931, 38.058632>,  <31.672628, 37.107700, 38.273094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.441103, 36.861931, 38.058632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555998, 0.183613, -0.810649,
		0.596525, -0.767316, 0.235339,
		-0.578812, -0.614421, -0.536156,
		31.267460, 36.677605, 37.897785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.111282, 36.795780, 37.741234>,  <31.672628, 37.107700, 38.273094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.111282, 36.795780, 37.741234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.750589, 36.735691, 37.579094>,  <31.534172, 36.699638, 37.481812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.750589, 36.735691, 37.579094>,  <32.111282, 36.795780, 37.741234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.750589, 36.735691, 37.579094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371838, 0.208697, -0.904534,
		0.220485, -0.966373, -0.132327,
		-0.901734, -0.150232, -0.405348,
		31.480068, 36.690624, 37.457489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.223873, 36.387108, 37.071789>,  <32.111282, 36.795780, 37.741234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.223873, 36.387108, 37.071789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.892145, 36.604927, 37.021675>,  <31.693108, 36.735619, 36.991608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.892145, 36.604927, 37.021675>,  <32.223873, 36.387108, 37.071789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.892145, 36.604927, 37.021675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228571, 0.126017, -0.965337,
		-0.509883, -0.829209, -0.228977,
		-0.829321, 0.544547, -0.125279,
		31.643349, 36.768291, 36.984093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.659054, 36.157242, 36.562695>,  <32.223873, 36.387108, 37.071789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.659054, 36.157242, 36.562695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.736855, 36.548714, 36.589081>,  <31.783535, 36.783596, 36.604912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.736855, 36.548714, 36.589081>,  <31.659054, 36.157242, 36.562695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.736855, 36.548714, 36.589081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299537, 0.004774, -0.954073,
		-0.934049, 0.205327, -0.292222,
		0.194501, 0.978682, 0.065962,
		31.795204, 36.842319, 36.608868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.222145, 36.477791, 36.166927>,  <31.659054, 36.157242, 36.562695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.222145, 36.477791, 36.166927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.552439, 36.701862, 36.193352>,  <31.750614, 36.836304, 36.209206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.552439, 36.701862, 36.193352>,  <31.222145, 36.477791, 36.166927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.552439, 36.701862, 36.193352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205564, -0.189794, -0.960063,
		-0.525268, 0.806337, -0.271872,
		0.825734, 0.560178, 0.066061,
		31.800159, 36.869915, 36.213169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.201544, 37.139252, 35.846672>,  <31.222145, 36.477791, 36.166927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.201544, 37.139252, 35.846672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.555836, 36.964802, 35.783077>,  <31.768412, 36.860130, 35.744919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.555836, 36.964802, 35.783077>,  <31.201544, 37.139252, 35.846672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.555836, 36.964802, 35.783077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238352, -0.133388, -0.961975,
		0.398336, 0.889945, -0.222098,
		0.885730, -0.436126, -0.158986,
		31.821554, 36.833965, 35.735382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.602434, 37.397167, 35.291214>,  <31.201544, 37.139252, 35.846672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.602434, 37.397167, 35.291214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.712828, 37.016384, 35.344292>,  <31.779064, 36.787914, 35.376137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.712828, 37.016384, 35.344292>,  <31.602434, 37.397167, 35.291214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.712828, 37.016384, 35.344292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317396, -0.220570, -0.922284,
		0.907245, 0.212419, -0.363022,
		0.275982, -0.951959, 0.132691,
		31.795622, 36.730797, 35.384098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.988735, 37.618965, 34.909496>,  <31.602434, 37.397167, 35.291214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.988735, 37.618965, 34.909496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.640413, 37.680058, 35.096416>,  <30.431419, 37.716713, 35.208569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.640413, 37.680058, 35.096416>,  <30.988735, 37.618965, 34.909496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.640413, 37.680058, 35.096416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048943, 0.972730, -0.226716,
		-0.489186, -0.174555, -0.854534,
		-0.870805, 0.152729, 0.467303,
		30.379171, 37.725876, 35.236607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.631741, 38.032192, 34.489826>,  <30.988735, 37.618965, 34.909496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.631741, 38.032192, 34.489826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.477997, 38.110767, 34.850643>,  <30.385750, 38.157913, 35.067135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.477997, 38.110767, 34.850643>,  <30.631741, 38.032192, 34.489826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.477997, 38.110767, 34.850643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060572, 0.969628, -0.236964,
		-0.921194, -0.145718, -0.360787,
		-0.384359, 0.196437, 0.902043,
		30.362690, 38.169697, 35.121258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.985247, 38.434277, 34.433971>,  <30.631741, 38.032192, 34.489826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.985247, 38.434277, 34.433971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.228622, 38.478622, 34.748299>,  <30.374647, 38.505230, 34.936893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.228622, 38.478622, 34.748299>,  <29.985247, 38.434277, 34.433971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.228622, 38.478622, 34.748299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005446, 0.989587, -0.143829,
		-0.793582, 0.091791, 0.601500,
		0.608439, 0.110864, 0.785818,
		30.411154, 38.511883, 34.984043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.743370, 38.917965, 34.873020>,  <29.985247, 38.434277, 34.433971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.743370, 38.917965, 34.873020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.141489, 38.930779, 34.909595>,  <30.380360, 38.938465, 34.931541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.141489, 38.930779, 34.909595>,  <29.743370, 38.917965, 34.873020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.141489, 38.930779, 34.909595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001288, 0.948054, -0.318106,
		-0.096881, 0.316491, 0.943635,
		0.995295, 0.032034, 0.091441,
		30.440077, 38.940388, 34.937027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.945587, 39.673553, 34.982815>,  <29.743370, 38.917965, 34.873020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.945587, 39.673553, 34.982815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.282146, 39.485825, 34.875648>,  <30.484083, 39.373188, 34.811348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.282146, 39.485825, 34.875648>,  <29.945587, 39.673553, 34.982815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.282146, 39.485825, 34.875648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349796, 0.850876, -0.391986,
		0.411933, 0.236101, 0.880095,
		0.841400, -0.469325, -0.267917,
		30.534567, 39.345028, 34.795273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.461552, 40.025696, 35.360374>,  <29.945587, 39.673553, 34.982815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.461552, 40.025696, 35.360374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.575274, 39.872765, 35.008694>,  <30.643507, 39.781006, 34.797684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.575274, 39.872765, 35.008694>,  <30.461552, 40.025696, 35.360374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.575274, 39.872765, 35.008694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115564, 0.924026, -0.364447,
		0.951743, 0.002010, 0.306888,
		0.284305, -0.382325, -0.879203,
		30.660564, 39.758068, 34.744934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.092045, 40.287239, 35.064678>,  <30.461552, 40.025696, 35.360374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.092045, 40.287239, 35.064678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.879089, 40.182732, 34.742611>,  <30.751316, 40.120026, 34.549370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.879089, 40.182732, 34.742611>,  <31.092045, 40.287239, 35.064678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.879089, 40.182732, 34.742611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063341, 0.936215, -0.345673,
		0.844126, -0.235033, -0.481883,
		-0.532390, -0.261269, -0.805170,
		30.719372, 40.104351, 34.501060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.533644, 40.377571, 34.500286>,  <31.092045, 40.287239, 35.064678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.533644, 40.377571, 34.500286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.147068, 40.439362, 34.418179>,  <30.915123, 40.476437, 34.368912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.147068, 40.439362, 34.418179>,  <31.533644, 40.377571, 34.500286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.147068, 40.439362, 34.418179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210715, 0.933725, -0.289407,
		0.146962, -0.322948, -0.934937,
		-0.966437, 0.154474, -0.205273,
		30.857138, 40.485703, 34.356598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.542961, 40.506420, 33.794819>,  <31.533644, 40.377571, 34.500286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.542961, 40.506420, 33.794819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.265907, 40.668484, 34.033516>,  <31.099674, 40.765720, 34.176735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.265907, 40.668484, 34.033516>,  <31.542961, 40.506420, 33.794819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.265907, 40.668484, 34.033516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431312, 0.895768, -0.107559,
		-0.578124, 0.182884, -0.795190,
		-0.692635, 0.405157, 0.596745,
		31.058117, 40.790031, 34.212540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.604206, 40.194973, 33.074780>,  <31.542961, 40.506420, 33.794819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.604206, 40.194973, 33.074780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.795345, 40.510391, 32.919937>,  <31.910028, 40.699642, 32.827034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.795345, 40.510391, 32.919937>,  <31.604206, 40.194973, 33.074780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.795345, 40.510391, 32.919937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055700, -0.466983, -0.882510,
		-0.876675, 0.400144, -0.267069,
		0.477848, 0.788550, -0.387104,
		31.938700, 40.746956, 32.803806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.607622, 40.022030, 32.324902>,  <31.604206, 40.194973, 33.074780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.607622, 40.022030, 32.324902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.784954, 40.380524, 32.330902>,  <31.891354, 40.595619, 32.334503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.784954, 40.380524, 32.330902>,  <31.607622, 40.022030, 32.324902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.784954, 40.380524, 32.330902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317850, -0.141534, -0.937518,
		-0.838110, 0.420400, -0.347614,
		0.443331, 0.896232, 0.015003,
		31.917953, 40.649395, 32.335403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.369690, 40.394859, 31.681620>,  <31.607622, 40.022030, 32.324902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.369690, 40.394859, 31.681620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.688276, 40.604561, 31.802155>,  <31.879427, 40.730381, 31.874475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.688276, 40.604561, 31.802155>,  <31.369690, 40.394859, 31.681620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.688276, 40.604561, 31.802155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331337, 0.038492, -0.942727,
		-0.505826, 0.850693, -0.143047,
		0.796465, 0.524252, 0.301336,
		31.927216, 40.761837, 31.892555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.399290, 41.095478, 31.358404>,  <31.369690, 40.394859, 31.681620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.399290, 41.095478, 31.358404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.780733, 41.009052, 31.442261>,  <32.009598, 40.957195, 31.492575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.780733, 41.009052, 31.442261>,  <31.399290, 41.095478, 31.358404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.780733, 41.009052, 31.442261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216582, 0.008694, -0.976226,
		0.209109, 0.976339, 0.055087,
		0.953606, -0.216069, 0.209640,
		32.066814, 40.944233, 31.505154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.768814, 41.582893, 30.928019>,  <31.399290, 41.095478, 31.358404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.768814, 41.582893, 30.928019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.041042, 41.311176, 31.037842>,  <32.204380, 41.148144, 31.103735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.041042, 41.311176, 31.037842>,  <31.768814, 41.582893, 30.928019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.041042, 41.311176, 31.037842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518468, 0.181724, -0.835564,
		0.517701, 0.711009, 0.475869,
		0.680571, -0.679295, 0.274557,
		32.245213, 41.107388, 31.120209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.342148, 41.832806, 30.742472>,  <31.768814, 41.582893, 30.928019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.342148, 41.832806, 30.742472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.431095, 41.446041, 30.792482>,  <32.484463, 41.213982, 30.822489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.431095, 41.446041, 30.792482>,  <32.342148, 41.832806, 30.742472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.431095, 41.446041, 30.792482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636664, 0.046891, -0.769715,
		0.738384, 0.250761, 0.626025,
		0.222370, -0.966913, 0.125027,
		32.497807, 41.155968, 30.829990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.088638, 41.839565, 30.787424>,  <32.342148, 41.832806, 30.742472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.088638, 41.839565, 30.787424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.954636, 41.475861, 30.688623>,  <32.874233, 41.257637, 30.629343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.954636, 41.475861, 30.688623>,  <33.088638, 41.839565, 30.787424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.954636, 41.475861, 30.688623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650717, -0.033684, -0.758573,
		0.681423, -0.414855, 0.602958,
		-0.335008, -0.909264, -0.247001,
		32.854134, 41.203083, 30.614523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654968, 41.429668, 30.703554>,  <33.088638, 41.839565, 30.787424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654968, 41.429668, 30.703554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386181, 41.212124, 30.502489>,  <33.224907, 41.081596, 30.381849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386181, 41.212124, 30.502489>,  <33.654968, 41.429668, 30.703554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.386181, 41.212124, 30.502489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595325, 0.007031, -0.803454,
		0.440502, -0.839146, 0.319049,
		-0.671972, -0.543861, -0.502662,
		33.184589, 41.048965, 30.351690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004574, 40.917492, 30.473715>,  <33.654968, 41.429668, 30.703554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004574, 40.917492, 30.473715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.680870, 40.907356, 30.238955>,  <33.486649, 40.901276, 30.098099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.680870, 40.907356, 30.238955>,  <34.004574, 40.917492, 30.473715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.680870, 40.907356, 30.238955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586189, -0.100210, -0.803953,
		-0.038442, -0.994643, 0.095950,
		-0.809262, -0.025339, -0.586901,
		33.438091, 40.899754, 30.062883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008194, 40.272835, 30.114292>,  <34.004574, 40.917492, 30.473715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008194, 40.272835, 30.114292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.788517, 40.524498, 29.894276>,  <33.656712, 40.675495, 29.762266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.788517, 40.524498, 29.894276>,  <34.008194, 40.272835, 30.114292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788517, 40.524498, 29.894276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620320, -0.134140, -0.772794,
		-0.559995, -0.765613, -0.316613,
		-0.549190, 0.629161, -0.550042,
		33.623760, 40.713245, 29.729263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.976727, 39.945488, 29.417740>,  <34.008194, 40.272835, 30.114292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.976727, 39.945488, 29.417740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901901, 40.335770, 29.372124>,  <33.857006, 40.569939, 29.344753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901901, 40.335770, 29.372124>,  <33.976727, 39.945488, 29.417740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901901, 40.335770, 29.372124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594654, 0.020066, -0.803731,
		-0.781917, -0.218164, -0.583961,
		-0.187063, 0.975706, -0.114042,
		33.845783, 40.628483, 29.337912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.868114, 40.003605, 28.680695>,  <33.976727, 39.945488, 29.417740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.868114, 40.003605, 28.680695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.920311, 40.381996, 28.799419>,  <33.951630, 40.609032, 28.870653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.920311, 40.381996, 28.799419>,  <33.868114, 40.003605, 28.680695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.920311, 40.381996, 28.799419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624293, 0.154168, -0.765827,
		-0.770214, 0.285232, -0.570450,
		0.130493, 0.945978, 0.296811,
		33.959457, 40.665791, 28.888462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.848328, 40.375336, 28.067139>,  <33.868114, 40.003605, 28.680695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.848328, 40.375336, 28.067139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064289, 40.606537, 28.311895>,  <34.193867, 40.745258, 28.458750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064289, 40.606537, 28.311895>,  <33.848328, 40.375336, 28.067139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.064289, 40.606537, 28.311895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725595, 0.048857, -0.686385,
		-0.426630, 0.814568, -0.393021,
		0.539906, 0.578006, 0.611890,
		34.226261, 40.779938, 28.495462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.962433, 41.015717, 27.700138>,  <33.848328, 40.375336, 28.067139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.962433, 41.015717, 27.700138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.256641, 41.002834, 27.970833>,  <34.433167, 40.995106, 28.133249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.256641, 41.002834, 27.970833>,  <33.962433, 41.015717, 27.700138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.256641, 41.002834, 27.970833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659754, 0.261176, -0.704636,
		-0.154054, 0.964754, 0.213348,
		0.735522, -0.032205, 0.676735,
		34.477299, 40.993172, 28.173853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292820, 41.528469, 27.359135>,  <33.962433, 41.015717, 27.700138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292820, 41.528469, 27.359135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533005, 41.375546, 27.640074>,  <34.677116, 41.283791, 27.808638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533005, 41.375546, 27.640074>,  <34.292820, 41.528469, 27.359135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533005, 41.375546, 27.640074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774002, 0.057175, -0.630596,
		0.200925, 0.922264, 0.330239,
		0.600458, -0.382308, 0.702347,
		34.713142, 41.260853, 27.850779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768250, 42.069965, 27.378845>,  <34.292820, 41.528469, 27.359135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.768250, 42.069965, 27.378845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.903072, 41.712585, 27.497595>,  <34.983967, 41.498158, 27.568844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.903072, 41.712585, 27.497595>,  <34.768250, 42.069965, 27.378845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903072, 41.712585, 27.497595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839795, 0.142767, -0.523796,
		0.425604, 0.425861, 0.798438,
		0.337055, -0.893454, 0.296873,
		35.004189, 41.444550, 27.586657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426208, 42.238770, 27.589413>,  <34.768250, 42.069965, 27.378845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426208, 42.238770, 27.589413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.428524, 41.845623, 27.515724>,  <35.429913, 41.609734, 27.471512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.428524, 41.845623, 27.515724>,  <35.426208, 42.238770, 27.589413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.428524, 41.845623, 27.515724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778575, 0.120034, -0.615965,
		0.627525, -0.139867, 0.765931,
		0.005784, -0.982868, -0.184221,
		35.430260, 41.550762, 27.460457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059292, 42.066795, 27.732735>,  <35.426208, 42.238770, 27.589413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059292, 42.066795, 27.732735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935131, 41.763699, 27.503136>,  <35.860634, 41.581841, 27.365376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935131, 41.763699, 27.503136>,  <36.059292, 42.066795, 27.732735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935131, 41.763699, 27.503136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806200, 0.110096, -0.581309,
		0.503679, -0.643198, 0.576719,
		-0.310402, -0.757744, -0.573999,
		35.842010, 41.536377, 27.330936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677849, 41.719593, 27.483772>,  <36.059292, 42.066795, 27.732735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677849, 41.719593, 27.483772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.399586, 41.571102, 27.237764>,  <36.232628, 41.482006, 27.090158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.399586, 41.571102, 27.237764>,  <36.677849, 41.719593, 27.483772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.399586, 41.571102, 27.237764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644221, 0.056441, -0.762754,
		0.317870, -0.926824, 0.199891,
		-0.695656, -0.371231, -0.615021,
		36.190887, 41.459732, 27.053259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945522, 41.115940, 27.052584>,  <36.677849, 41.719593, 27.483772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945522, 41.115940, 27.052584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.653179, 41.306866, 26.857435>,  <36.477772, 41.421421, 26.740347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.653179, 41.306866, 26.857435>,  <36.945522, 41.115940, 27.052584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.653179, 41.306866, 26.857435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535147, -0.042914, -0.843668,
		-0.423634, -0.877682, -0.224071,
		-0.730857, 0.477317, -0.487869,
		36.433922, 41.450062, 26.711075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.889797, 40.795238, 26.447657>,  <36.945522, 41.115940, 27.052584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.889797, 40.795238, 26.447657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.704823, 41.141949, 26.372980>,  <36.593838, 41.349976, 26.328175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.704823, 41.141949, 26.372980>,  <36.889797, 40.795238, 26.447657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.704823, 41.141949, 26.372980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454212, 0.050756, -0.889446,
		-0.761473, -0.496113, -0.417171,
		-0.462440, 0.866773, -0.186691,
		36.566090, 41.401981, 26.316973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573696, 40.728855, 25.777435>,  <36.889797, 40.795238, 26.447657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573696, 40.728855, 25.777435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.565208, 41.124809, 25.833536>,  <36.560116, 41.362381, 25.867197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.565208, 41.124809, 25.833536>,  <36.573696, 40.728855, 25.777435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.565208, 41.124809, 25.833536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514363, 0.131103, -0.847492,
		-0.857310, 0.054154, -0.511944,
		-0.021222, 0.989889, 0.140251,
		36.558842, 41.421776, 25.875612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.363960, 40.943962, 25.192627>,  <36.573696, 40.728855, 25.777435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.363960, 40.943962, 25.192627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559002, 41.251583, 25.357937>,  <36.676029, 41.436157, 25.457123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559002, 41.251583, 25.357937>,  <36.363960, 40.943962, 25.192627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559002, 41.251583, 25.357937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540231, 0.106079, -0.834804,
		-0.685849, 0.630320, -0.363742,
		0.487608, 0.769054, 0.413273,
		36.705284, 41.482300, 25.481918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.209053, 41.436283, 24.766050>,  <36.363960, 40.943962, 25.192627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.209053, 41.436283, 24.766050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.546749, 41.547646, 24.949244>,  <36.749367, 41.614464, 25.059158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.546749, 41.547646, 24.949244>,  <36.209053, 41.436283, 24.766050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.546749, 41.547646, 24.949244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415978, 0.198459, -0.887455,
		-0.337967, 0.939735, 0.051734,
		0.844239, 0.278410, 0.457982,
		36.800022, 41.631168, 25.086637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414478, 42.029594, 24.445454>,  <36.209053, 41.436283, 24.766050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.414478, 42.029594, 24.445454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.766743, 41.944672, 24.614859>,  <36.978100, 41.893719, 24.716501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.766743, 41.944672, 24.614859>,  <36.414478, 42.029594, 24.445454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.766743, 41.944672, 24.614859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473500, 0.423287, -0.772416,
		-0.015277, 0.880769, 0.473300,
		0.880661, -0.212307, 0.423511,
		37.030941, 41.880978, 24.741913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762810, 42.669769, 24.469160>,  <36.414478, 42.029594, 24.445454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.762810, 42.669769, 24.469160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.016090, 42.360229, 24.475039>,  <37.168060, 42.174507, 24.478565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.016090, 42.360229, 24.475039>,  <36.762810, 42.669769, 24.469160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016090, 42.360229, 24.475039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420546, 0.328048, -0.845888,
		0.649766, 0.541799, 0.533158,
		0.633203, -0.773846, 0.014697,
		37.206051, 42.128075, 24.479448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335518, 42.979614, 24.297976>,  <36.762810, 42.669769, 24.469160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.335518, 42.979614, 24.297976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.412090, 42.590199, 24.248047>,  <37.458035, 42.356548, 24.218090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.412090, 42.590199, 24.248047>,  <37.335518, 42.979614, 24.297976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.412090, 42.590199, 24.248047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632513, 0.219609, -0.742765,
		0.750520, 0.063239, 0.657815,
		0.191433, -0.973536, -0.124821,
		37.469521, 42.298138, 24.210600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001469, 43.013416, 24.068750>,  <37.335518, 42.979614, 24.297976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.001469, 43.013416, 24.068750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883137, 42.650806, 23.948280>,  <37.812138, 42.433243, 23.875998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883137, 42.650806, 23.948280>,  <38.001469, 43.013416, 24.068750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883137, 42.650806, 23.948280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554148, 0.093954, -0.827099,
		0.778079, -0.411574, 0.474553,
		-0.295826, -0.906521, -0.301177,
		37.794388, 42.378849, 23.857927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667160, 42.638439, 23.899273>,  <38.001469, 43.013416, 24.068750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.667160, 42.638439, 23.899273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367645, 42.430614, 23.734653>,  <38.187935, 42.305920, 23.635881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367645, 42.430614, 23.734653>,  <38.667160, 42.638439, 23.899273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367645, 42.430614, 23.734653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499561, -0.034319, -0.865599,
		0.435605, -0.853746, 0.285249,
		-0.748790, -0.519558, -0.411549,
		38.143009, 42.274746, 23.611189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957512, 42.045193, 23.648035>,  <38.667160, 42.638439, 23.899273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.957512, 42.045193, 23.648035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.618149, 42.106258, 23.445295>,  <38.414532, 42.142899, 23.323652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.618149, 42.106258, 23.445295>,  <38.957512, 42.045193, 23.648035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.618149, 42.106258, 23.445295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523170, 0.096051, -0.846798,
		-0.080592, -0.983600, -0.161360,
		-0.848409, 0.152664, -0.506849,
		38.363625, 42.152058, 23.293242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019878, 41.638927, 23.137739>,  <38.957512, 42.045193, 23.648035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.019878, 41.638927, 23.137739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.757946, 41.914043, 23.012426>,  <38.600788, 42.079113, 22.937239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.757946, 41.914043, 23.012426>,  <39.019878, 41.638927, 23.137739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.757946, 41.914043, 23.012426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560672, 0.164120, -0.811611,
		-0.506803, -0.707112, -0.493096,
		-0.654826, 0.687792, -0.313282,
		38.561497, 42.120380, 22.918442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.804558, 41.345570, 22.449041>,  <39.019878, 41.638927, 23.137739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.804558, 41.345570, 22.449041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.702579, 41.731876, 22.429863>,  <38.641392, 41.963661, 22.418356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.702579, 41.731876, 22.429863>,  <38.804558, 41.345570, 22.449041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.702579, 41.731876, 22.429863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582719, 0.113884, -0.804654,
		-0.771647, -0.233084, -0.591805,
		-0.254950, 0.965765, -0.047944,
		38.626095, 42.021606, 22.415480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693794, 41.484592, 21.716444>,  <38.804558, 41.345570, 22.449041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.693794, 41.484592, 21.716444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731609, 41.832726, 21.909765>,  <38.754299, 42.041607, 22.025759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731609, 41.832726, 21.909765>,  <38.693794, 41.484592, 21.716444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731609, 41.832726, 21.909765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690563, 0.292356, -0.661551,
		-0.717067, 0.396291, -0.573383,
		0.094535, 0.870334, 0.483304,
		38.759972, 42.093826, 22.054756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539093, 41.891563, 21.192209>,  <38.693794, 41.484592, 21.716444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539093, 41.891563, 21.192209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.745041, 42.092239, 21.470264>,  <38.868610, 42.212646, 21.637098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.745041, 42.092239, 21.470264>,  <38.539093, 41.891563, 21.192209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.745041, 42.092239, 21.470264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647711, 0.303539, -0.698809,
		-0.561587, 0.810045, -0.168667,
		0.514869, 0.501689, 0.695139,
		38.899502, 42.242744, 21.678806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657013, 42.559238, 20.909489>,  <38.539093, 41.891563, 21.192209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.657013, 42.559238, 20.909489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.926506, 42.473038, 21.192228>,  <39.088203, 42.421318, 21.361872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.926506, 42.473038, 21.192228>,  <38.657013, 42.559238, 20.909489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.926506, 42.473038, 21.192228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738972, 0.197447, -0.644154,
		-0.000748, 0.956333, 0.292279,
		0.673735, -0.215504, 0.706851,
		39.128628, 42.408386, 21.404284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.184032, 42.904346, 20.681017>,  <38.657013, 42.559238, 20.909489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.184032, 42.904346, 20.681017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.378998, 42.677471, 20.946566>,  <39.495975, 42.541348, 21.105894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.378998, 42.677471, 20.946566>,  <39.184032, 42.904346, 20.681017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378998, 42.677471, 20.946566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846334, 0.119831, -0.518998,
		0.214816, 0.814825, 0.538437,
		0.487414, -0.567187, 0.663872,
		39.525223, 42.507317, 21.145727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.698635, 43.282413, 21.045403>,  <39.184032, 42.904346, 20.681017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.698635, 43.282413, 21.045403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829651, 42.905052, 21.066212>,  <39.908260, 42.678635, 21.078697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829651, 42.905052, 21.066212>,  <39.698635, 43.282413, 21.045403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829651, 42.905052, 21.066212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881430, 0.285261, -0.376440,
		0.340296, 0.169153, 0.924979,
		0.327536, -0.943405, 0.052023,
		39.927910, 42.622032, 21.081820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.368320, 43.462292, 21.182840>,  <39.698635, 43.282413, 21.045403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.368320, 43.462292, 21.182840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.345684, 43.081882, 21.061287>,  <40.332100, 42.853638, 20.988356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.345684, 43.081882, 21.061287>,  <40.368320, 43.462292, 21.182840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.345684, 43.081882, 21.061287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832838, 0.122891, -0.539702,
		0.550616, -0.283627, 0.785097,
		-0.056593, -0.951028, -0.303881,
		40.328705, 42.796574, 20.970123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.963570, 43.322239, 21.469522>,  <40.368320, 43.462292, 21.182840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.963570, 43.322239, 21.469522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.865570, 43.040291, 21.203249>,  <40.806770, 42.871120, 21.043486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.865570, 43.040291, 21.203249>,  <40.963570, 43.322239, 21.469522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.865570, 43.040291, 21.203249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901469, 0.087084, -0.423994,
		0.356831, -0.703971, 0.614082,
		-0.245003, -0.704870, -0.665682,
		40.792068, 42.828831, 21.003544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.491982, 42.782272, 21.485325>,  <40.963570, 43.322239, 21.469522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.491982, 42.782272, 21.485325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.325558, 42.781509, 21.121592>,  <41.225704, 42.781052, 20.903351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.325558, 42.781509, 21.121592>,  <41.491982, 42.782272, 21.485325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.325558, 42.781509, 21.121592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906497, 0.078113, -0.414925,
		0.071818, -0.996943, -0.030781,
		-0.416060, -0.001897, -0.909335,
		41.200741, 42.780937, 20.848791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.908463, 42.369236, 21.079472>,  <41.491982, 42.782272, 21.485325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.908463, 42.369236, 21.079472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.709026, 42.564823, 20.793165>,  <41.589367, 42.682175, 20.621382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.709026, 42.564823, 20.793165>,  <41.908463, 42.369236, 21.079472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.709026, 42.564823, 20.793165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864226, 0.216323, -0.454223,
		-0.067262, -0.845055, -0.530432,
		-0.498588, 0.488965, -0.715768,
		41.559448, 42.711514, 20.578434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.333412, 42.233654, 20.606567>,  <41.908463, 42.369236, 21.079472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.333412, 42.233654, 20.606567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.110806, 42.515953, 20.431200>,  <41.977242, 42.685333, 20.325979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.110806, 42.515953, 20.431200>,  <42.333412, 42.233654, 20.606567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.110806, 42.515953, 20.431200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770754, 0.241517, -0.589583,
		-0.310214, -0.666022, -0.678368,
		-0.556512, 0.705751, -0.438417,
		41.943851, 42.727680, 20.299675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.369556, 42.216831, 19.923559>,  <42.333412, 42.233654, 20.606567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.369556, 42.216831, 19.923559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.236061, 42.593586, 19.938931>,  <42.155964, 42.819637, 19.948154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.236061, 42.593586, 19.938931>,  <42.369556, 42.216831, 19.923559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.236061, 42.593586, 19.938931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752314, 0.290688, -0.591206,
		-0.568018, -0.168395, -0.805605,
		-0.333736, 0.941883, 0.038430,
		42.135941, 42.876152, 19.950460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.084892, 42.310261, 19.282200>,  <42.369556, 42.216831, 19.923559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.084892, 42.310261, 19.282200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.197887, 42.646076, 19.467833>,  <42.265686, 42.847565, 19.579212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.197887, 42.646076, 19.467833>,  <42.084892, 42.310261, 19.282200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.197887, 42.646076, 19.467833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528329, 0.267632, -0.805755,
		-0.800666, 0.472807, -0.367950,
		0.282492, 0.839540, 0.464082,
		42.282635, 42.897938, 19.607058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.982567, 42.922642, 18.859568>,  <42.084892, 42.310261, 19.282200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.982567, 42.922642, 18.859568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.263256, 43.031883, 19.122778>,  <42.431671, 43.097427, 19.280704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.263256, 43.031883, 19.122778>,  <41.982567, 42.922642, 18.859568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.263256, 43.031883, 19.122778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598171, 0.275864, -0.752389,
		-0.387004, 0.921583, 0.030220,
		0.701726, 0.273101, 0.658025,
		42.473774, 43.113815, 19.320185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.177750, 43.611954, 18.723803>,  <41.982567, 42.922642, 18.859568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.177750, 43.611954, 18.723803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.485878, 43.400475, 18.866404>,  <42.670753, 43.273586, 18.951963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.485878, 43.400475, 18.866404>,  <42.177750, 43.611954, 18.723803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.485878, 43.400475, 18.866404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598680, 0.407168, -0.689780,
		0.219526, 0.744780, 0.630167,
		0.770318, -0.528693, 0.356501,
		42.716972, 43.241867, 18.973354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.747398, 43.973743, 18.570242>,  <42.177750, 43.611954, 18.723803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.747398, 43.973743, 18.570242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.865574, 43.593399, 18.607286>,  <42.936478, 43.365192, 18.629513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.865574, 43.593399, 18.607286>,  <42.747398, 43.973743, 18.570242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.865574, 43.593399, 18.607286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533561, 0.083808, -0.841599,
		0.792484, 0.298052, 0.532103,
		0.295435, -0.950863, 0.092612,
		42.954205, 43.308140, 18.635071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.732124, 44.431141, 19.078451>,  <42.747398, 43.973743, 18.570242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.732124, 44.431141, 19.078451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.409283, 44.532642, 18.865215>,  <42.215576, 44.593544, 18.737274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.409283, 44.532642, 18.865215>,  <42.732124, 44.431141, 19.078451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.409283, 44.532642, 18.865215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381824, 0.913031, -0.143475,
		0.450321, -0.319347, -0.833804,
		-0.807107, 0.253757, -0.533091,
		42.167152, 44.608768, 18.705288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.069504, 44.794353, 18.558393>,  <42.732124, 44.431141, 19.078451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.069504, 44.794353, 18.558393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.685032, 44.848110, 18.654787>,  <42.454350, 44.880363, 18.712624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.685032, 44.848110, 18.654787>,  <43.069504, 44.794353, 18.558393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.685032, 44.848110, 18.654787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199299, 0.942147, 0.269518,
		-0.190823, 0.307083, -0.932356,
		-0.961180, 0.134387, 0.240984,
		42.396679, 44.888428, 18.727083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.103546, 45.096302, 19.330038>,  <43.069504, 44.794353, 18.558393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.103546, 45.096302, 19.330038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.168697, 45.359154, 19.624428>,  <43.207787, 45.516865, 19.801062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.168697, 45.359154, 19.624428>,  <43.103546, 45.096302, 19.330038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.168697, 45.359154, 19.624428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154305, -0.753720, 0.638823,
		0.974505, 0.009515, -0.224162,
		0.162878, 0.657126, 0.735973,
		43.217560, 45.556293, 19.845221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.248280, 44.652348, 19.826433>,  <43.103546, 45.096302, 19.330038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.248280, 44.652348, 19.826433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.215160, 44.963100, 20.076105>,  <43.195290, 45.149551, 20.225908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.215160, 44.963100, 20.076105>,  <43.248280, 44.652348, 19.826433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.215160, 44.963100, 20.076105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122487, -0.629515, 0.767273,
		0.989010, -0.012922, 0.147283,
		-0.082802, 0.776881, 0.624179,
		43.190319, 45.196163, 20.263359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.272705, 44.251156, 20.450985>,  <43.248280, 44.652348, 19.826433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.272705, 44.251156, 20.450985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.220657, 44.634121, 20.554075>,  <43.189430, 44.863899, 20.615929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.220657, 44.634121, 20.554075>,  <43.272705, 44.251156, 20.450985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.220657, 44.634121, 20.554075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298937, -0.285721, 0.910495,
		0.945360, 0.041428, 0.323385,
		-0.130118, 0.957417, 0.257725,
		43.181622, 44.921345, 20.631393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.512218, 44.475628, 21.245180>,  <43.272705, 44.251156, 20.450985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.512218, 44.475628, 21.245180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.201691, 44.686569, 21.107061>,  <43.015373, 44.813133, 21.024191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.201691, 44.686569, 21.107061>,  <43.512218, 44.475628, 21.245180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.201691, 44.686569, 21.107061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448891, -0.077954, 0.890180,
		0.442519, 0.846064, 0.297239,
		-0.776320, 0.527350, -0.345295,
		42.968796, 44.844772, 21.003473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.378593, 45.236027, 21.540457>,  <43.512218, 44.475628, 21.245180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.378593, 45.236027, 21.540457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.028091, 45.107716, 21.396639>,  <42.817791, 45.030727, 21.310349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.028091, 45.107716, 21.396639>,  <43.378593, 45.236027, 21.540457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.028091, 45.107716, 21.396639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433240, 0.197928, 0.879276,
		-0.210890, 0.926242, -0.312411,
		-0.876258, -0.320779, -0.359545,
		42.765213, 45.011482, 21.288776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.955280, 45.640083, 21.923832>,  <43.378593, 45.236027, 21.540457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.955280, 45.640083, 21.923832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.777668, 45.308956, 21.786690>,  <42.671101, 45.110279, 21.704405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.777668, 45.308956, 21.786690>,  <42.955280, 45.640083, 21.923832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.777668, 45.308956, 21.786690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673571, 0.056059, 0.736994,
		-0.590878, 0.558187, -0.582487,
		-0.444034, -0.827819, -0.342855,
		42.644459, 45.060612, 21.683834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.231953, 45.736565, 21.855356>,  <42.955280, 45.640083, 21.923832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.231953, 45.736565, 21.855356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.248829, 45.336922, 21.856716>,  <42.258953, 45.097137, 21.857533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.248829, 45.336922, 21.856716>,  <42.231953, 45.736565, 21.855356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.248829, 45.336922, 21.856716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627394, -0.023844, 0.778337,
		-0.777558, -0.034970, -0.627838,
		0.042189, -0.999104, 0.003400,
		42.261486, 45.037189, 21.857737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.505745, 45.572758, 21.860044>,  <42.231953, 45.736565, 21.855356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.505745, 45.572758, 21.860044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.720165, 45.266132, 22.001480>,  <41.848820, 45.082157, 22.086342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.720165, 45.266132, 22.001480>,  <41.505745, 45.572758, 21.860044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.720165, 45.266132, 22.001480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576445, -0.026383, 0.816710,
		-0.616731, -0.641627, -0.456024,
		0.536054, -0.766563, 0.353591,
		41.880981, 45.036163, 22.107557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.025330, 44.948662, 21.985840>,  <41.505745, 45.572758, 21.860044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.025330, 44.948662, 21.985840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.350464, 44.857239, 22.200153>,  <41.545544, 44.802387, 22.328741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.350464, 44.857239, 22.200153>,  <41.025330, 44.948662, 21.985840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.350464, 44.857239, 22.200153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547751, 0.013009, 0.836540,
		-0.198167, -0.973444, -0.114618,
		0.812834, -0.228557, 0.535783,
		41.594315, 44.788673, 22.360888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.903713, 44.376938, 22.450745>,  <41.025330, 44.948662, 21.985840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.903713, 44.376938, 22.450745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.222286, 44.570210, 22.596199>,  <41.413429, 44.686172, 22.683472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.222286, 44.570210, 22.596199>,  <40.903713, 44.376938, 22.450745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.222286, 44.570210, 22.596199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380530, -0.066912, 0.922345,
		0.469991, -0.872960, 0.130573,
		0.796433, 0.483181, 0.363635,
		41.461216, 44.715164, 22.705290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.998722, 43.887280, 22.901442>,  <40.903713, 44.376938, 22.450745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.998722, 43.887280, 22.901442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.179707, 44.229931, 23.000612>,  <41.288296, 44.435520, 23.060114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.179707, 44.229931, 23.000612>,  <40.998722, 43.887280, 22.901442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.179707, 44.229931, 23.000612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265941, -0.135752, 0.954383,
		0.851209, -0.497752, 0.166391,
		0.452458, 0.856630, 0.247926,
		41.315445, 44.486919, 23.074989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.469528, 43.744213, 23.379637>,  <40.998722, 43.887280, 22.901442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.469528, 43.744213, 23.379637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.372406, 44.128002, 23.436838>,  <41.314133, 44.358276, 23.471159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.372406, 44.128002, 23.436838>,  <41.469528, 43.744213, 23.379637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.372406, 44.128002, 23.436838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351574, -0.224431, 0.908860,
		0.904123, 0.170404, 0.391821,
		-0.242810, 0.959476, 0.143003,
		41.299564, 44.415844, 23.479738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.617958, 43.860912, 24.190430>,  <41.469528, 43.744213, 23.379637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.617958, 43.860912, 24.190430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.379128, 44.141434, 24.034651>,  <41.235828, 44.309746, 23.941183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.379128, 44.141434, 24.034651>,  <41.617958, 43.860912, 24.190430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.379128, 44.141434, 24.034651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564596, -0.022511, 0.825061,
		0.569853, 0.712504, 0.409396,
		-0.597075, 0.701307, -0.389449,
		41.200005, 44.351826, 23.917816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.574791, 44.373810, 24.781628>,  <41.617958, 43.860912, 24.190430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.574791, 44.373810, 24.781628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.255917, 44.457985, 24.555277>,  <41.064594, 44.508492, 24.419466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.255917, 44.457985, 24.555277>,  <41.574791, 44.373810, 24.781628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.255917, 44.457985, 24.555277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584745, -0.035867, 0.810424,
		0.150248, 0.976949, 0.151645,
		-0.797182, 0.210438, -0.565877,
		41.016762, 44.521118, 24.385513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.101967, 44.658501, 25.246206>,  <41.574791, 44.373810, 24.781628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.101967, 44.658501, 25.246206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.841099, 44.648544, 24.943140>,  <40.684578, 44.642570, 24.761299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.841099, 44.648544, 24.943140>,  <41.101967, 44.658501, 25.246206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.841099, 44.648544, 24.943140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757159, -0.027758, 0.652641,
		-0.037277, 0.999304, -0.000745,
		-0.652166, -0.024893, -0.757667,
		40.645451, 44.641075, 24.715839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.705044, 45.212166, 25.173624>,  <41.101967, 44.658501, 25.246206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.705044, 45.212166, 25.173624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.473228, 44.930031, 25.010336>,  <40.334141, 44.760750, 24.912363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.473228, 44.930031, 25.010336>,  <40.705044, 45.212166, 25.173624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.473228, 44.930031, 25.010336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683942, 0.148577, 0.714247,
		-0.443130, 0.693130, -0.568513,
		-0.579534, -0.705334, -0.408222,
		40.299370, 44.718430, 24.887869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.066727, 45.449406, 25.246378>,  <40.705044, 45.212166, 25.173624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.066727, 45.449406, 25.246378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.020195, 45.061024, 25.162741>,  <39.992275, 44.827995, 25.112558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.020195, 45.061024, 25.162741>,  <40.066727, 45.449406, 25.246378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.020195, 45.061024, 25.162741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630630, -0.090435, 0.770797,
		-0.767315, 0.221530, -0.601790,
		-0.116332, -0.970951, -0.209095,
		39.985294, 44.769737, 25.100012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.338264, 45.316967, 25.135572>,  <40.066727, 45.449406, 25.246378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.338264, 45.316967, 25.135572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.505497, 44.972507, 25.251249>,  <39.605839, 44.765831, 25.320656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.505497, 44.972507, 25.251249>,  <39.338264, 45.316967, 25.135572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.505497, 44.972507, 25.251249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754168, -0.151573, 0.638950,
		-0.506396, -0.485235, -0.712819,
		0.418085, -0.861146, 0.289192,
		39.630924, 44.714165, 25.338007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788322, 44.854729, 25.301010>,  <39.338264, 45.316967, 25.135572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.788322, 44.854729, 25.301010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.073608, 44.662064, 25.504705>,  <39.244781, 44.546467, 25.626923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.073608, 44.662064, 25.504705>,  <38.788322, 44.854729, 25.301010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.073608, 44.662064, 25.504705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669439, -0.252711, 0.698562,
		-0.207770, -0.839137, -0.502674,
		0.713220, -0.481650, 0.509245,
		39.287575, 44.517567, 25.657476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442699, 44.296329, 25.555590>,  <38.788322, 44.854729, 25.301010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.442699, 44.296329, 25.555590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.772251, 44.314533, 25.781567>,  <38.969982, 44.325455, 25.917152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.772251, 44.314533, 25.781567>,  <38.442699, 44.296329, 25.555590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.772251, 44.314533, 25.781567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546459, -0.200684, 0.813086,
		0.150375, -0.978599, -0.140471,
		0.823875, 0.045506, 0.564942,
		39.019413, 44.328186, 25.951050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516487, 43.633938, 25.884840>,  <38.442699, 44.296329, 25.555590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.516487, 43.633938, 25.884840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.698589, 43.920532, 26.096272>,  <38.807850, 44.092487, 26.223131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.698589, 43.920532, 26.096272>,  <38.516487, 43.633938, 25.884840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.698589, 43.920532, 26.096272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586957, -0.204895, 0.783262,
		0.669497, -0.666836, 0.327265,
		0.455253, 0.716483, 0.528581,
		38.835167, 44.135475, 26.254847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.666790, 43.349995, 26.491554>,  <38.516487, 43.633938, 25.884840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.666790, 43.349995, 26.491554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.658142, 43.746708, 26.541988>,  <38.652954, 43.984737, 26.572248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.658142, 43.746708, 26.541988>,  <38.666790, 43.349995, 26.491554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.658142, 43.746708, 26.541988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495207, -0.120180, 0.860423,
		0.868506, -0.043834, 0.493737,
		-0.021621, 0.991784, 0.126084,
		38.651657, 44.044243, 26.579813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849438, 43.449574, 27.174606>,  <38.666790, 43.349995, 26.491554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849438, 43.449574, 27.174606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.690094, 43.811409, 27.113895>,  <38.594486, 44.028511, 27.077469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.690094, 43.811409, 27.113895>,  <38.849438, 43.449574, 27.174606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.690094, 43.811409, 27.113895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553961, -0.105386, 0.825846,
		0.731053, 0.413060, 0.543086,
		-0.398358, 0.904586, -0.151776,
		38.570587, 44.082783, 27.068363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761784, 43.780346, 27.943668>,  <38.849438, 43.449574, 27.174606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.761784, 43.780346, 27.943668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.522770, 43.989933, 27.700882>,  <38.379360, 44.115685, 27.555210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.522770, 43.989933, 27.700882>,  <38.761784, 43.780346, 27.943668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522770, 43.989933, 27.700882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750482, -0.098900, 0.653449,
		0.282355, 0.845979, 0.452321,
		-0.597539, 0.523964, -0.606968,
		38.343510, 44.147121, 27.518791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336235, 44.412579, 28.328659>,  <38.761784, 43.780346, 27.943668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336235, 44.412579, 28.328659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.163784, 44.341366, 27.974836>,  <38.060314, 44.298637, 27.762543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.163784, 44.341366, 27.974836>,  <38.336235, 44.412579, 28.328659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163784, 44.341366, 27.974836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901192, 0.036573, 0.431874,
		-0.044536, 0.983345, -0.176206,
		-0.431125, -0.178029, -0.884554,
		38.034447, 44.287956, 27.709471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959103, 44.949318, 28.357685>,  <38.336235, 44.412579, 28.328659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.959103, 44.949318, 28.357685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.830822, 44.654617, 28.119576>,  <37.753853, 44.477798, 27.976709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.830822, 44.654617, 28.119576>,  <37.959103, 44.949318, 28.357685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830822, 44.654617, 28.119576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897143, 0.034712, 0.440374,
		-0.303782, 0.675274, -0.672103,
		-0.320703, -0.736750, -0.595273,
		37.734612, 44.433594, 27.940994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366482, 45.147785, 28.042204>,  <37.959103, 44.949318, 28.357685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.366482, 45.147785, 28.042204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.348373, 44.750904, 27.995745>,  <37.337509, 44.512775, 27.967869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.348373, 44.750904, 27.995745>,  <37.366482, 45.147785, 28.042204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.348373, 44.750904, 27.995745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934380, 0.000931, 0.356276,
		-0.353389, 0.124656, -0.927134,
		-0.045275, -0.992199, -0.116147,
		37.334789, 44.453243, 27.960901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719028, 44.953716, 27.699366>,  <37.366482, 45.147785, 28.042204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.719028, 44.953716, 27.699366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.837357, 44.629627, 27.901762>,  <36.908356, 44.435173, 28.023201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.837357, 44.629627, 27.901762>,  <36.719028, 44.953716, 27.699366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.837357, 44.629627, 27.901762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876285, -0.019302, 0.481406,
		-0.380279, -0.585805, -0.715696,
		0.295824, -0.810222, 0.505992,
		36.926105, 44.386562, 28.053560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109787, 44.508537, 27.742029>,  <36.719028, 44.953716, 27.699366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109787, 44.508537, 27.742029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.349361, 44.386581, 28.038225>,  <36.493107, 44.313408, 28.215942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.349361, 44.386581, 28.038225>,  <36.109787, 44.508537, 27.742029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.349361, 44.386581, 28.038225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800686, -0.243553, 0.547342,
		0.013472, -0.920721, -0.389989,
		0.598932, -0.304885, 0.740490,
		36.529041, 44.295116, 28.260372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836258, 43.924530, 28.007454>,  <36.109787, 44.508537, 27.742029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.836258, 43.924530, 28.007454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070599, 44.021534, 28.316767>,  <36.211205, 44.079735, 28.502354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070599, 44.021534, 28.316767>,  <35.836258, 43.924530, 28.007454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070599, 44.021534, 28.316767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665547, -0.400464, 0.629822,
		0.462410, -0.883639, -0.073211,
		0.585853, 0.242511, 0.773282,
		36.246353, 44.094288, 28.548752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710949, 43.337513, 28.421814>,  <35.836258, 43.924530, 28.007454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.710949, 43.337513, 28.421814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.879894, 43.622696, 28.645708>,  <35.981262, 43.793804, 28.780045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.879894, 43.622696, 28.645708>,  <35.710949, 43.337513, 28.421814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879894, 43.622696, 28.645708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595486, -0.247313, 0.764351,
		0.683378, -0.656149, 0.320099,
		0.422364, 0.712955, 0.559736,
		36.006603, 43.836582, 28.813629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760269, 43.016754, 29.131208>,  <35.710949, 43.337513, 28.421814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.760269, 43.016754, 29.131208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.796112, 43.405239, 29.219490>,  <35.817619, 43.638332, 29.272459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.796112, 43.405239, 29.219490>,  <35.760269, 43.016754, 29.131208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.796112, 43.405239, 29.219490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670339, -0.105082, 0.734577,
		0.736625, -0.213771, 0.641627,
		0.089607, 0.971216, 0.220705,
		35.822994, 43.696606, 29.285702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014175, 43.064396, 29.883652>,  <35.760269, 43.016754, 29.131208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014175, 43.064396, 29.883652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.828503, 43.398636, 29.766136>,  <35.717098, 43.599178, 29.695627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.828503, 43.398636, 29.766136>,  <36.014175, 43.064396, 29.883652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828503, 43.398636, 29.766136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600833, -0.053340, 0.797593,
		0.650796, 0.546746, 0.526814,
		-0.464181, 0.835598, -0.293789,
		35.689247, 43.649315, 29.677999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915150, 43.476234, 30.527727>,  <36.014175, 43.064396, 29.883652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.915150, 43.476234, 30.527727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.661118, 43.615185, 30.251757>,  <35.508698, 43.698555, 30.086174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.661118, 43.615185, 30.251757>,  <35.915150, 43.476234, 30.527727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.661118, 43.615185, 30.251757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718143, 0.063443, 0.692998,
		0.284503, 0.935576, 0.209176,
		-0.635082, 0.347378, -0.689927,
		35.470592, 43.719398, 30.044779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.515705, 44.044430, 30.876524>,  <35.915150, 43.476234, 30.527727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.515705, 44.044430, 30.876524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296284, 43.944641, 30.557310>,  <35.164631, 43.884769, 30.365782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296284, 43.944641, 30.557310>,  <35.515705, 44.044430, 30.876524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296284, 43.944641, 30.557310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817715, -0.039074, 0.574295,
		-0.174452, 0.967594, -0.182561,
		-0.548551, -0.249469, -0.798033,
		35.131718, 43.869801, 30.317900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006237, 44.386959, 31.005510>,  <35.515705, 44.044430, 30.876524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006237, 44.386959, 31.005510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.865429, 44.105537, 30.758579>,  <34.780945, 43.936684, 30.610420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.865429, 44.105537, 30.758579>,  <35.006237, 44.386959, 31.005510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.865429, 44.105537, 30.758579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760100, -0.169999, 0.627175,
		-0.546198, 0.690007, -0.474931,
		-0.352017, -0.703556, -0.617327,
		34.759823, 43.894470, 30.573381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361038, 44.583336, 30.619644>,  <35.006237, 44.386959, 31.005510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361038, 44.583336, 30.619644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.371792, 44.189327, 30.687767>,  <34.378246, 43.952923, 30.728642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.371792, 44.189327, 30.687767>,  <34.361038, 44.583336, 30.619644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.371792, 44.189327, 30.687767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836421, 0.071131, 0.543452,
		-0.547428, -0.157060, -0.821982,
		0.026886, -0.985024, 0.170307,
		34.379856, 43.893822, 30.738859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600975, 44.441261, 30.726088>,  <34.361038, 44.583336, 30.619644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600975, 44.441261, 30.726088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797573, 44.104382, 30.814753>,  <33.915531, 43.902252, 30.867952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797573, 44.104382, 30.814753>,  <33.600975, 44.441261, 30.726088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797573, 44.104382, 30.814753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735156, -0.264777, 0.624050,
		-0.466884, -0.469673, -0.749284,
		0.491493, -0.842200, 0.221663,
		33.945023, 43.851723, 30.881252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.082146, 43.907978, 30.593082>,  <33.600975, 44.441261, 30.726088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.082146, 43.907978, 30.593082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.358276, 43.767052, 30.845848>,  <33.523956, 43.682495, 30.997507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.358276, 43.767052, 30.845848>,  <33.082146, 43.907978, 30.593082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.358276, 43.767052, 30.845848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722526, -0.380886, 0.576959,
		0.037413, -0.854867, -0.517497,
		0.690330, -0.352319, 0.631914,
		33.565376, 43.661358, 31.035421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.823017, 43.229946, 30.827642>,  <33.082146, 43.907978, 30.593082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.823017, 43.229946, 30.827642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.096577, 43.333549, 31.100464>,  <33.260712, 43.395714, 31.264156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.096577, 43.333549, 31.100464>,  <32.823017, 43.229946, 30.827642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.096577, 43.333549, 31.100464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608485, -0.313290, 0.729106,
		0.402526, -0.913654, -0.056654,
		0.683899, 0.259011, 0.682052,
		33.301746, 43.411251, 31.305080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.879074, 42.677681, 31.277773>,  <32.823017, 43.229946, 30.827642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.879074, 42.677681, 31.277773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.042515, 42.977207, 31.486511>,  <33.140579, 43.156921, 31.611755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.042515, 42.977207, 31.486511>,  <32.879074, 42.677681, 31.277773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.042515, 42.977207, 31.486511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381733, -0.379139, 0.842932,
		0.829050, -0.543630, 0.130929,
		0.408603, 0.748812, 0.521847,
		33.165096, 43.201851, 31.643064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146915, 42.397842, 31.914558>,  <32.879074, 42.677681, 31.277773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.146915, 42.397842, 31.914558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084202, 42.783195, 32.001568>,  <33.046574, 43.014408, 32.053772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084202, 42.783195, 32.001568>,  <33.146915, 42.397842, 31.914558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084202, 42.783195, 32.001568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312337, -0.257309, 0.914460,
		0.936945, 0.075429, 0.341241,
		-0.156781, 0.963381, 0.217525,
		33.037167, 43.072208, 32.066826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.356735, 42.375561, 32.608063>,  <33.146915, 42.397842, 31.914558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.356735, 42.375561, 32.608063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.130013, 42.704609, 32.590088>,  <32.993977, 42.902039, 32.579304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.130013, 42.704609, 32.590088>,  <33.356735, 42.375561, 32.608063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.130013, 42.704609, 32.590088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414052, -0.237284, 0.878781,
		0.712241, 0.516710, 0.475103,
		-0.566810, 0.822622, -0.044941,
		32.959969, 42.951397, 32.576607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.414715, 42.692379, 33.299789>,  <33.356735, 42.375561, 32.608063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.414715, 42.692379, 33.299789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.092724, 42.842518, 33.115993>,  <32.899529, 42.932602, 33.005718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.092724, 42.842518, 33.115993>,  <33.414715, 42.692379, 33.299789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.092724, 42.842518, 33.115993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541758, -0.149268, 0.827174,
		0.241894, 0.914785, 0.323507,
		-0.804975, 0.375351, -0.459485,
		32.851231, 42.955124, 32.978149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176910, 42.544003, 32.975704>,  <33.414715, 42.692379, 33.299789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176910, 42.544003, 32.975704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.294449, 42.625973, 33.349155>,  <34.364971, 42.675156, 33.573227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.294449, 42.625973, 33.349155>,  <34.176910, 42.544003, 32.975704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294449, 42.625973, 33.349155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867320, 0.353381, -0.350538,
		-0.401761, 0.912758, -0.073897,
		0.293843, 0.204925, 0.933629,
		34.382603, 42.687450, 33.629246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535717, 43.186131, 33.007576>,  <34.176910, 42.544003, 32.975704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535717, 43.186131, 33.007576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663502, 42.909336, 33.266525>,  <34.740173, 42.743259, 33.421894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663502, 42.909336, 33.266525>,  <34.535717, 43.186131, 33.007576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663502, 42.909336, 33.266525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923010, 0.072616, -0.377862,
		0.214466, 0.718248, 0.661910,
		0.319464, -0.691988, 0.647376,
		34.759342, 42.701740, 33.460739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095604, 43.468605, 33.474812>,  <34.535717, 43.186131, 33.007576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095604, 43.468605, 33.474812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.155891, 43.076927, 33.420464>,  <35.192066, 42.841919, 33.387856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.155891, 43.076927, 33.420464>,  <35.095604, 43.468605, 33.474812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155891, 43.076927, 33.420464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915227, 0.190170, -0.355239,
		0.373687, -0.070811, 0.924848,
		0.150723, -0.979194, -0.135872,
		35.201107, 42.783169, 33.379704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716129, 43.323280, 33.719284>,  <35.095604, 43.468605, 33.474812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716129, 43.323280, 33.719284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.672787, 43.004532, 33.481544>,  <35.646782, 42.813282, 33.338902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.672787, 43.004532, 33.481544>,  <35.716129, 43.323280, 33.719284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.672787, 43.004532, 33.481544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946402, 0.100303, -0.307021,
		0.304272, -0.595761, 0.743295,
		-0.108356, -0.796874, -0.594349,
		35.640278, 42.765469, 33.303238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379597, 42.933750, 33.827808>,  <35.716129, 43.323280, 33.719284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379597, 42.933750, 33.827808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.235031, 42.783913, 33.486267>,  <36.148293, 42.694008, 33.281342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.235031, 42.783913, 33.486267>,  <36.379597, 42.933750, 33.827808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235031, 42.783913, 33.486267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930581, -0.087659, -0.355435,
		0.058297, -0.923035, 0.380274,
		-0.361414, -0.374596, -0.853849,
		36.126606, 42.671535, 33.230114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807003, 42.434105, 33.662766>,  <36.379597, 42.933750, 33.827808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807003, 42.434105, 33.662766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.642017, 42.536335, 33.313011>,  <36.543026, 42.597675, 33.103157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.642017, 42.536335, 33.313011>,  <36.807003, 42.434105, 33.662766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.642017, 42.536335, 33.313011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853414, -0.227370, -0.469028,
		-0.318683, -0.939672, -0.124333,
		-0.412462, 0.255578, -0.874388,
		36.518280, 42.613007, 33.050694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004917, 41.922825, 33.231998>,  <36.807003, 42.434105, 33.662766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004917, 41.922825, 33.231998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.897854, 42.219120, 32.985531>,  <36.833614, 42.396896, 32.837650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.897854, 42.219120, 32.985531>,  <37.004917, 41.922825, 33.231998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.897854, 42.219120, 32.985531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838991, -0.135265, -0.527065,
		-0.473763, -0.658036, -0.585267,
		-0.267662, 0.740737, -0.616170,
		36.817554, 42.441341, 32.800678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.037304, 41.644176, 32.486843>,  <37.004917, 41.922825, 33.231998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.037304, 41.644176, 32.486843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.075375, 42.042362, 32.486706>,  <37.098217, 42.281273, 32.486622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.075375, 42.042362, 32.486706>,  <37.037304, 41.644176, 32.486843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075375, 42.042362, 32.486706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830975, -0.079638, -0.550580,
		-0.548108, 0.052115, -0.834782,
		0.095174, 0.995461, -0.000344,
		37.103928, 42.341000, 32.486603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122227, 41.788998, 31.897003>,  <37.037304, 41.644176, 32.486843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122227, 41.788998, 31.897003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.274879, 42.132130, 32.034683>,  <37.366470, 42.338009, 32.117290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.274879, 42.132130, 32.034683>,  <37.122227, 41.788998, 31.897003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274879, 42.132130, 32.034683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728959, -0.050372, -0.682701,
		-0.568307, 0.511451, -0.644551,
		0.381635, 0.857835, 0.344200,
		37.389370, 42.389481, 32.137943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251282, 42.198273, 31.334389>,  <37.122227, 41.788998, 31.897003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.251282, 42.198273, 31.334389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.468781, 42.373394, 31.620790>,  <37.599281, 42.478466, 31.792631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.468781, 42.373394, 31.620790>,  <37.251282, 42.198273, 31.334389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.468781, 42.373394, 31.620790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682549, 0.265724, -0.680822,
		-0.488328, 0.858904, -0.154337,
		0.543749, 0.437807, 0.716004,
		37.631905, 42.504738, 31.835592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501095, 42.813190, 31.024673>,  <37.251282, 42.198273, 31.334389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.501095, 42.813190, 31.024673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.757992, 42.762379, 31.327034>,  <37.912128, 42.731892, 31.508451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.757992, 42.762379, 31.327034>,  <37.501095, 42.813190, 31.024673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.757992, 42.762379, 31.327034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765321, 0.161015, -0.623184,
		-0.042551, 0.978743, 0.200627,
		0.642241, -0.127027, 0.755904,
		37.950665, 42.724270, 31.553804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910275, 43.400295, 31.149160>,  <37.501095, 42.813190, 31.024673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910275, 43.400295, 31.149160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.159863, 43.149212, 31.335344>,  <38.309616, 42.998562, 31.447054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.159863, 43.149212, 31.335344>,  <37.910275, 43.400295, 31.149160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159863, 43.149212, 31.335344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771968, 0.402609, -0.491906,
		0.121374, 0.666252, 0.735783,
		0.623966, -0.627706, 0.465459,
		38.347054, 42.960899, 31.474981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493141, 43.764938, 31.226151>,  <37.910275, 43.400295, 31.149160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.493141, 43.764938, 31.226151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.625328, 43.390442, 31.273880>,  <38.704639, 43.165745, 31.302519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.625328, 43.390442, 31.273880>,  <38.493141, 43.764938, 31.226151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.625328, 43.390442, 31.273880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829220, 0.227628, -0.510469,
		0.450763, 0.267639, 0.851576,
		0.330464, -0.936245, 0.119326,
		38.724468, 43.109570, 31.309677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.218548, 43.841740, 31.334803>,  <38.493141, 43.764938, 31.226151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.218548, 43.841740, 31.334803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.185078, 43.455711, 31.235493>,  <39.164997, 43.224094, 31.175907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.185078, 43.455711, 31.235493>,  <39.218548, 43.841740, 31.334803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185078, 43.455711, 31.235493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712952, 0.116091, -0.691536,
		0.696203, -0.234868, 0.678335,
		-0.083671, -0.965070, -0.248273,
		39.159977, 43.166191, 31.161011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923607, 43.556530, 31.202463>,  <39.218548, 43.841740, 31.334803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.923607, 43.556530, 31.202463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.689857, 43.283600, 31.026762>,  <39.549610, 43.119843, 30.921341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.689857, 43.283600, 31.026762>,  <39.923607, 43.556530, 31.202463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.689857, 43.283600, 31.026762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730142, -0.205891, -0.651538,
		0.354124, -0.701455, 0.618513,
		-0.584371, -0.682327, -0.439251,
		39.514545, 43.078903, 30.894987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315178, 42.946564, 30.891451>,  <39.923607, 43.556530, 31.202463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.315178, 42.946564, 30.891451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.983372, 42.912140, 30.670725>,  <39.784290, 42.891487, 30.538288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.983372, 42.912140, 30.670725>,  <40.315178, 42.946564, 30.891451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.983372, 42.912140, 30.670725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558158, -0.161601, -0.813845,
		-0.019134, -0.983096, 0.182086,
		-0.829514, -0.086061, -0.551816,
		39.734516, 42.886322, 30.505180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.372688, 42.292336, 30.373791>,  <40.315178, 42.946564, 30.891451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.372688, 42.292336, 30.373791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.113651, 42.549858, 30.210754>,  <39.958229, 42.704372, 30.112932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.113651, 42.549858, 30.210754>,  <40.372688, 42.292336, 30.373791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.113651, 42.549858, 30.210754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570176, 0.054581, -0.819708,
		-0.505489, -0.763237, -0.402431,
		-0.647596, 0.643810, -0.407589,
		39.919373, 42.743000, 30.088478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.350227, 42.104492, 29.620989>,  <40.372688, 42.292336, 30.373791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.350227, 42.104492, 29.620989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.159370, 42.455967, 29.627222>,  <40.044857, 42.666851, 29.630962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.159370, 42.455967, 29.627222>,  <40.350227, 42.104492, 29.620989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.159370, 42.455967, 29.627222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375659, 0.219952, -0.900279,
		-0.794493, -0.423706, -0.435035,
		-0.477140, 0.878689, 0.015582,
		40.016228, 42.719574, 29.631897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.205654, 42.193745, 28.967897>,  <40.350227, 42.104492, 29.620989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.205654, 42.193745, 28.967897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.170963, 42.566338, 29.109217>,  <40.150146, 42.789894, 29.194008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.170963, 42.566338, 29.109217>,  <40.205654, 42.193745, 28.967897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.170963, 42.566338, 29.109217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154289, 0.362916, -0.918960,
		-0.984212, -0.025191, -0.175193,
		-0.086730, 0.931481, 0.353300,
		40.144943, 42.845783, 29.215206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615032, 42.530251, 28.606897>,  <40.205654, 42.193745, 28.967897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.615032, 42.530251, 28.606897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.908501, 42.765755, 28.742594>,  <40.084583, 42.907059, 28.824011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.908501, 42.765755, 28.742594>,  <39.615032, 42.530251, 28.606897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.908501, 42.765755, 28.742594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256017, 0.222943, -0.940612,
		-0.629426, 0.776955, 0.012835,
		0.733674, 0.588760, 0.339240,
		40.128601, 42.942383, 28.844366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475304, 43.253769, 28.196783>,  <39.615032, 42.530251, 28.606897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.475304, 43.253769, 28.196783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.849472, 43.241459, 28.337658>,  <40.073975, 43.234074, 28.422182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.849472, 43.241459, 28.337658>,  <39.475304, 43.253769, 28.196783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.849472, 43.241459, 28.337658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350478, 0.211297, -0.912424,
		-0.046340, 0.976937, 0.208437,
		0.935424, -0.030771, 0.352187,
		40.130100, 43.232227, 28.443314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.848717, 43.801533, 27.870993>,  <39.475304, 43.253769, 28.196783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.848717, 43.801533, 27.870993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.169342, 43.602028, 28.002886>,  <40.361717, 43.482323, 28.082022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.169342, 43.602028, 28.002886>,  <39.848717, 43.801533, 27.870993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.169342, 43.602028, 28.002886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508973, 0.279816, -0.814033,
		0.313747, 0.820326, 0.478150,
		0.801567, -0.498766, 0.329732,
		40.409813, 43.452396, 28.101805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.403290, 44.272655, 27.687836>,  <39.848717, 43.801533, 27.870993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.403290, 44.272655, 27.687836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.566574, 43.913074, 27.751394>,  <40.664543, 43.697327, 27.789530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.566574, 43.913074, 27.751394>,  <40.403290, 44.272655, 27.687836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.566574, 43.913074, 27.751394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572656, 0.116609, -0.811460,
		0.710935, 0.422241, 0.562392,
		0.408211, -0.898952, 0.158898,
		40.689037, 43.643391, 27.799063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.180328, 44.290695, 27.594234>,  <40.403290, 44.272655, 27.687836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.180328, 44.290695, 27.594234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.059795, 43.913090, 27.540503>,  <40.987476, 43.686527, 27.508265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.059795, 43.913090, 27.540503>,  <41.180328, 44.290695, 27.594234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.059795, 43.913090, 27.540503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589510, -0.073712, -0.804391,
		0.749452, -0.321575, 0.578715,
		-0.301331, -0.944010, -0.134328,
		40.969395, 43.629887, 27.500204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.790993, 43.958683, 27.341619>,  <41.180328, 44.290695, 27.594234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.790993, 43.958683, 27.341619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.496376, 43.700668, 27.260199>,  <41.319607, 43.545860, 27.211346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.496376, 43.700668, 27.260199>,  <41.790993, 43.958683, 27.341619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.496376, 43.700668, 27.260199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524265, -0.354273, -0.774362,
		0.427382, -0.677063, 0.599108,
		-0.736540, -0.645040, -0.203551,
		41.275414, 43.507156, 27.199133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.175209, 43.427193, 27.087120>,  <41.790993, 43.958683, 27.341619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.175209, 43.427193, 27.087120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.807827, 43.362202, 26.942871>,  <41.587399, 43.323208, 26.856321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.807827, 43.362202, 26.942871>,  <42.175209, 43.427193, 27.087120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.807827, 43.362202, 26.942871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394062, -0.297294, -0.869673,
		0.034096, -0.940859, 0.337078,
		-0.918451, -0.162482, -0.360620,
		41.532291, 43.313457, 26.834684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.055256, 42.677502, 26.881399>,  <42.175209, 43.427193, 27.087120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.055256, 42.677502, 26.881399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.838612, 42.911617, 26.640038>,  <41.708626, 43.052086, 26.495220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.838612, 42.911617, 26.640038>,  <42.055256, 42.677502, 26.881399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.838612, 42.911617, 26.640038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429150, -0.424706, -0.797155,
		-0.722837, -0.690694, -0.021155,
		-0.541606, 0.585292, -0.603405,
		41.676128, 43.087204, 26.459017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.914291, 42.269974, 26.266682>,  <42.055256, 42.677502, 26.881399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.914291, 42.269974, 26.266682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.831047, 42.640480, 26.141003>,  <41.781101, 42.862785, 26.065596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.831047, 42.640480, 26.141003>,  <41.914291, 42.269974, 26.266682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.831047, 42.640480, 26.141003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432405, -0.201011, -0.878989,
		-0.877335, -0.318789, -0.358689,
		-0.208112, 0.926266, -0.314199,
		41.768612, 42.918358, 26.046743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.681007, 42.239971, 25.509075>,  <41.914291, 42.269974, 26.266682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.681007, 42.239971, 25.509075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.821316, 42.605995, 25.588705>,  <41.905499, 42.825607, 25.636482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.821316, 42.605995, 25.588705>,  <41.681007, 42.239971, 25.509075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.821316, 42.605995, 25.588705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587793, -0.049646, -0.807487,
		-0.729014, 0.400254, -0.555279,
		0.350767, 0.915058, 0.199074,
		41.926544, 42.880512, 25.648428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.819954, 42.603333, 24.839638>,  <41.681007, 42.239971, 25.509075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.819954, 42.603333, 24.839638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.044998, 42.801189, 25.104607>,  <42.180023, 42.919903, 25.263588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.044998, 42.801189, 25.104607>,  <41.819954, 42.603333, 24.839638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.044998, 42.801189, 25.104607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688235, 0.163710, -0.706776,
		-0.458046, 0.853539, -0.248325,
		0.562607, 0.494641, 0.662422,
		42.213779, 42.949581, 25.303333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.263432, 43.096432, 24.466116>,  <41.819954, 42.603333, 24.839638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.263432, 43.096432, 24.466116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.425674, 43.064087, 24.830301>,  <42.523022, 43.044682, 25.048813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.425674, 43.064087, 24.830301>,  <42.263432, 43.096432, 24.466116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.425674, 43.064087, 24.830301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912860, 0.086570, -0.398988,
		-0.046557, 0.992959, 0.108926,
		0.405609, -0.080859, 0.910463,
		42.547356, 43.039829, 25.103439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.822350, 43.613113, 24.446905>,  <42.263432, 43.096432, 24.466116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.822350, 43.613113, 24.446905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.933857, 43.401516, 24.767519>,  <43.000763, 43.274559, 24.959887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.933857, 43.401516, 24.767519>,  <42.822350, 43.613113, 24.446905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.933857, 43.401516, 24.767519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941175, -0.015493, -0.337565,
		0.190987, 0.848486, 0.493554,
		0.278773, -0.528991, 0.801532,
		43.017490, 43.242817, 25.007978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.435814, 43.941708, 24.651320>,  <42.822350, 43.613113, 24.446905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.435814, 43.941708, 24.651320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.413216, 43.565155, 24.784355>,  <43.399654, 43.339226, 24.864176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.413216, 43.565155, 24.784355>,  <43.435814, 43.941708, 24.651320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.413216, 43.565155, 24.784355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878810, -0.204980, -0.430901,
		0.473815, 0.267936, 0.838874,
		-0.056499, -0.941379, 0.332587,
		43.396267, 43.282742, 24.884130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.081974, 43.821022, 24.995695>,  <43.435814, 43.941708, 24.651320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.081974, 43.821022, 24.995695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.942802, 43.454838, 24.914824>,  <43.859299, 43.235126, 24.866301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.942802, 43.454838, 24.914824>,  <44.081974, 43.821022, 24.995695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.942802, 43.454838, 24.914824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845302, -0.213058, -0.489969,
		0.405472, -0.341376, 0.847971,
		-0.347931, -0.915461, -0.202177,
		43.838425, 43.180199, 24.854170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.636436, 43.340534, 25.256224>,  <44.081974, 43.821022, 24.995695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.636436, 43.340534, 25.256224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.397350, 43.137764, 25.007784>,  <44.253899, 43.016102, 24.858721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.397350, 43.137764, 25.007784>,  <44.636436, 43.340534, 25.256224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.397350, 43.137764, 25.007784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793118, -0.260767, -0.550422,
		0.117060, -0.821600, 0.557916,
		-0.597714, -0.506925, -0.621100,
		44.218037, 42.985687, 24.821453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.120510, 42.739212, 24.977602>,  <44.636436, 43.340534, 25.256224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.120510, 42.739212, 24.977602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.812141, 42.771896, 24.724936>,  <44.627121, 42.791508, 24.573336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.812141, 42.771896, 24.724936>,  <45.120510, 42.739212, 24.977602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.812141, 42.771896, 24.724936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631344, -0.033018, -0.774799,
		-0.084162, -0.996109, -0.026130,
		-0.770922, 0.081706, -0.631667,
		44.580864, 42.796410, 24.535435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.132679, 42.178577, 24.529202>,  <45.120510, 42.739212, 24.977602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.132679, 42.178577, 24.529202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.929886, 42.471340, 24.347094>,  <44.808208, 42.646999, 24.237827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.929886, 42.471340, 24.347094>,  <45.132679, 42.178577, 24.529202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.929886, 42.471340, 24.347094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535040, -0.146889, -0.831959,
		-0.675794, -0.665380, -0.317131,
		-0.506986, 0.731910, -0.455272,
		44.777790, 42.690914, 24.210512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.119171, 42.001812, 23.794958>,  <45.132679, 42.178577, 24.529202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.119171, 42.001812, 23.794958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.090961, 42.398281, 23.839853>,  <45.074036, 42.636162, 23.866791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.090961, 42.398281, 23.839853>,  <45.119171, 42.001812, 23.794958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.090961, 42.398281, 23.839853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570131, 0.132383, -0.810818,
		-0.818521, 0.006808, -0.574437,
		-0.070526, 0.991175, 0.112239,
		45.069805, 42.695633, 23.873526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.862110, 41.724709, 23.821869>,  <45.119171, 42.001812, 23.794958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.862110, 41.724709, 23.821869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.998634, 41.356876, 23.899723>,  <46.080547, 41.136177, 23.946436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.998634, 41.356876, 23.899723>,  <45.862110, 41.724709, 23.821869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.998634, 41.356876, 23.899723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582692, -0.044514, 0.811473,
		-0.737551, -0.390373, -0.551024,
		0.341306, -0.919580, 0.194636,
		46.101025, 41.081001, 23.958115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.219967, 41.308025, 24.030840>,  <45.862110, 41.724709, 23.821869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.219967, 41.308025, 24.030840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.551975, 41.133522, 24.169828>,  <45.751183, 41.028820, 24.253222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.551975, 41.133522, 24.169828>,  <45.219967, 41.308025, 24.030840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.551975, 41.133522, 24.169828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462380, -0.189882, 0.866112,
		-0.311871, -0.879558, -0.359325,
		0.830025, -0.436260, 0.347471,
		45.800983, 41.002644, 24.274071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.957241, 40.815598, 24.460075>,  <45.219967, 41.308025, 24.030840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.957241, 40.815598, 24.460075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.330383, 40.878372, 24.589783>,  <45.554268, 40.916039, 24.667606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.330383, 40.878372, 24.589783>,  <44.957241, 40.815598, 24.460075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.330383, 40.878372, 24.589783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267405, -0.301509, 0.915198,
		0.241398, -0.940459, -0.239299,
		0.932857, 0.156937, 0.324267,
		45.610241, 40.925453, 24.687063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.034283, 40.204300, 24.871813>,  <44.957241, 40.815598, 24.460075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.034283, 40.204300, 24.871813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.313297, 40.470177, 24.978874>,  <45.480705, 40.629704, 25.043110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.313297, 40.470177, 24.978874>,  <45.034283, 40.204300, 24.871813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.313297, 40.470177, 24.978874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170423, -0.208917, 0.962969,
		0.695991, -0.717317, -0.032449,
		0.697533, 0.664688, 0.267652,
		45.522556, 40.669582, 25.059170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.374226, 39.844860, 25.323690>,  <45.034283, 40.204300, 24.871813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.374226, 39.844860, 25.323690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.457798, 40.229038, 25.397329>,  <45.507942, 40.459545, 25.441513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.457798, 40.229038, 25.397329>,  <45.374226, 39.844860, 25.323690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.457798, 40.229038, 25.397329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393884, -0.089658, 0.914777,
		0.895099, -0.263641, 0.359571,
		0.208934, 0.960445, 0.184097,
		45.520477, 40.517170, 25.452559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.498505, 39.800095, 26.042366>,  <45.374226, 39.844860, 25.323690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.498505, 39.800095, 26.042366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.433460, 40.189713, 25.979378>,  <45.394432, 40.423485, 25.941586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.433460, 40.189713, 25.979378>,  <45.498505, 39.800095, 26.042366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.433460, 40.189713, 25.979378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433530, 0.072833, 0.898191,
		0.886346, 0.214324, 0.410434,
		-0.162610, 0.974043, -0.157471,
		45.384678, 40.481926, 25.932137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.891651, 40.123810, 26.551413>,  <45.498505, 39.800095, 26.042366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.891651, 40.123810, 26.551413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.578129, 40.335747, 26.421854>,  <45.390015, 40.462910, 26.344118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.578129, 40.335747, 26.421854>,  <45.891651, 40.123810, 26.551413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.578129, 40.335747, 26.421854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415153, -0.059183, 0.907825,
		0.461838, 0.846027, 0.266355,
		-0.783808, 0.529846, -0.323897,
		45.342987, 40.494701, 26.324684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.646355, 40.426884, 27.091108>,  <45.891651, 40.123810, 26.551413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.646355, 40.426884, 27.091108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.325249, 40.515770, 26.869770>,  <45.132584, 40.569103, 26.736967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.325249, 40.515770, 26.869770>,  <45.646355, 40.426884, 27.091108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.325249, 40.515770, 26.869770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564706, 0.014732, 0.825161,
		0.191516, 0.974886, 0.113661,
		-0.802763, 0.222217, -0.553345,
		45.084419, 40.582436, 26.703766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.256367, 40.899612, 27.419735>,  <45.646355, 40.426884, 27.091108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.256367, 40.899612, 27.419735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.980453, 40.730072, 27.184940>,  <44.814907, 40.628345, 27.044064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.980453, 40.730072, 27.184940>,  <45.256367, 40.899612, 27.419735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.980453, 40.730072, 27.184940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638004, -0.027437, 0.769545,
		-0.342279, 0.905315, -0.251495,
		-0.689780, -0.423854, -0.586985,
		44.773521, 40.602917, 27.008844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.572899, 41.238613, 27.712463>,  <45.256367, 40.899612, 27.419735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.572899, 41.238613, 27.712463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.473186, 40.928490, 27.480343>,  <44.413361, 40.742416, 27.341070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.473186, 40.928490, 27.480343>,  <44.572899, 41.238613, 27.712463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.473186, 40.928490, 27.480343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835591, -0.130705, 0.533576,
		-0.489536, 0.617907, -0.615261,
		-0.249283, -0.775311, -0.580302,
		44.398403, 40.695896, 27.306252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.835957, 41.294292, 27.575476>,  <44.572899, 41.238613, 27.712463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.835957, 41.294292, 27.575476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.923790, 40.907501, 27.523735>,  <43.976490, 40.675426, 27.492691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.923790, 40.907501, 27.523735>,  <43.835957, 41.294292, 27.575476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.923790, 40.907501, 27.523735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774560, -0.253410, 0.579518,
		-0.593161, -0.027062, -0.804629,
		0.219584, -0.966980, -0.129352,
		43.989666, 40.617409, 27.484930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.128613, 40.961403, 27.654242>,  <43.835957, 41.294292, 27.575476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.128613, 40.961403, 27.654242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.383656, 40.657032, 27.702335>,  <43.536682, 40.474411, 27.731192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.383656, 40.657032, 27.702335>,  <43.128613, 40.961403, 27.654242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.383656, 40.657032, 27.702335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554424, -0.344895, 0.757405,
		-0.534859, -0.549586, -0.641780,
		0.637605, -0.760923, 0.120233,
		43.574936, 40.428757, 27.738405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.756416, 40.380211, 27.651463>,  <43.128613, 40.961403, 27.654242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.756416, 40.380211, 27.651463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.101559, 40.317150, 27.843555>,  <43.308643, 40.279312, 27.958811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.101559, 40.317150, 27.843555>,  <42.756416, 40.380211, 27.651463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.101559, 40.317150, 27.843555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505141, -0.235945, 0.830158,
		-0.017568, -0.958893, -0.283224,
		0.862858, -0.157652, 0.480231,
		43.360416, 40.269855, 27.987625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.640900, 39.747959, 28.004972>,  <42.756416, 40.380211, 27.651463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.640900, 39.747959, 28.004972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.935577, 39.932571, 28.202665>,  <43.112385, 40.043339, 28.321281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.935577, 39.932571, 28.202665>,  <42.640900, 39.747959, 28.004972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.935577, 39.932571, 28.202665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485767, -0.147258, 0.861594,
		0.470431, -0.874818, 0.115711,
		0.736699, 0.461529, 0.494233,
		43.156586, 40.071030, 28.350935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.788792, 39.286911, 28.595814>,  <42.640900, 39.747959, 28.004972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.788792, 39.286911, 28.595814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.929047, 39.650139, 28.687439>,  <43.013199, 39.868076, 28.742414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.929047, 39.650139, 28.687439>,  <42.788792, 39.286911, 28.595814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.929047, 39.650139, 28.687439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501313, -0.024606, 0.864916,
		0.791037, -0.418103, 0.446598,
		0.350635, 0.908066, 0.229065,
		43.034237, 39.922558, 28.756159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.991020, 39.268250, 29.260941>,  <42.788792, 39.286911, 28.595814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.991020, 39.268250, 29.260941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.926048, 39.657509, 29.195702>,  <42.887066, 39.891064, 29.156557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.926048, 39.657509, 29.195702>,  <42.991020, 39.268250, 29.260941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.926048, 39.657509, 29.195702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617896, 0.028558, 0.785741,
		0.769300, 0.228403, 0.596665,
		-0.162427, 0.973148, -0.163099,
		42.877319, 39.949451, 29.146772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.111134, 39.592278, 29.857967>,  <42.991020, 39.268250, 29.260941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.111134, 39.592278, 29.857967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.920998, 39.909313, 29.705198>,  <42.806915, 40.099533, 29.613537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.920998, 39.909313, 29.705198>,  <43.111134, 39.592278, 29.857967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.920998, 39.909313, 29.705198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400281, 0.191744, 0.896108,
		0.783472, 0.578829, 0.226113,
		-0.475338, 0.792585, -0.381921,
		42.778397, 40.147087, 29.590622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.982719, 40.057877, 30.420391>,  <43.111134, 39.592278, 29.857967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.982719, 40.057877, 30.420391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.728409, 40.207722, 30.150442>,  <42.575821, 40.297626, 29.988472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.728409, 40.207722, 30.150442>,  <42.982719, 40.057877, 30.420391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.728409, 40.207722, 30.150442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589707, 0.328400, 0.737834,
		0.498027, 0.867077, 0.012120,
		-0.635779, 0.374608, -0.674873,
		42.537674, 40.320103, 29.947981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.836979, 40.869099, 30.413025>,  <42.982719, 40.057877, 30.420391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.836979, 40.869099, 30.413025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.503815, 40.705986, 30.263369>,  <42.303917, 40.608120, 30.173574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.503815, 40.705986, 30.263369>,  <42.836979, 40.869099, 30.413025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.503815, 40.705986, 30.263369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549442, 0.528513, 0.647138,
		-0.066151, 0.744575, -0.664253,
		-0.832909, -0.407777, -0.374139,
		42.253941, 40.583652, 30.151127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.246704, 41.300854, 30.532028>,  <42.836979, 40.869099, 30.413025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.246704, 41.300854, 30.532028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.041744, 40.963852, 30.465534>,  <41.918770, 40.761650, 30.425638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.041744, 40.963852, 30.465534>,  <42.246704, 41.300854, 30.532028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.041744, 40.963852, 30.465534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635323, 0.241677, 0.733455,
		-0.577763, 0.481436, -0.659097,
		-0.512400, -0.842503, -0.166236,
		41.888023, 40.711102, 30.415663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.549358, 41.535053, 30.730053>,  <42.246704, 41.300854, 30.532028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.549358, 41.535053, 30.730053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.532093, 41.137856, 30.686068>,  <41.521732, 40.899536, 30.659678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.532093, 41.137856, 30.686068>,  <41.549358, 41.535053, 30.730053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.532093, 41.137856, 30.686068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839390, -0.023646, 0.543015,
		-0.541813, 0.115739, -0.832492,
		-0.043163, -0.992998, -0.109962,
		41.519146, 40.839954, 30.653078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.938595, 41.388691, 30.431437>,  <41.549358, 41.535053, 30.730053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.938595, 41.388691, 30.431437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.058731, 41.085506, 30.663055>,  <41.130814, 40.903595, 30.802027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.058731, 41.085506, 30.663055>,  <40.938595, 41.388691, 30.431437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.058731, 41.085506, 30.663055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847733, 0.066147, 0.526283,
		-0.437203, -0.648940, -0.622680,
		0.300338, -0.757959, 0.579047,
		41.148834, 40.858120, 30.836769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.266537, 40.902878, 30.442148>,  <40.938595, 41.388691, 30.431437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.266537, 40.902878, 30.442148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.512375, 40.761848, 30.724413>,  <40.659878, 40.677231, 30.893772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.512375, 40.761848, 30.724413>,  <40.266537, 40.902878, 30.442148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.512375, 40.761848, 30.724413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780707, -0.143740, 0.608141,
		-0.112975, -0.924683, -0.363591,
		0.614601, -0.352562, 0.705667,
		40.696754, 40.656078, 30.936111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.967716, 40.219486, 30.743652>,  <40.266537, 40.902878, 30.442148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.967716, 40.219486, 30.743652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.198429, 40.390621, 31.022013>,  <40.336857, 40.493301, 31.189028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.198429, 40.390621, 31.022013>,  <39.967716, 40.219486, 30.743652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.198429, 40.390621, 31.022013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733703, -0.103232, 0.671582,
		0.359168, -0.897941, 0.254364,
		0.576782, 0.427839, 0.695899,
		40.371464, 40.518974, 31.230782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.850605, 39.870701, 31.319572>,  <39.967716, 40.219486, 30.743652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.850605, 39.870701, 31.319572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.987705, 40.218502, 31.461832>,  <40.069965, 40.427181, 31.547188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.987705, 40.218502, 31.461832>,  <39.850605, 39.870701, 31.319572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.987705, 40.218502, 31.461832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665410, -0.042535, 0.745265,
		0.663138, -0.492093, 0.563997,
		0.342750, 0.869503, 0.355650,
		40.090530, 40.479351, 31.568527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.029972, 39.664406, 32.015720>,  <39.850605, 39.870701, 31.319572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.029972, 39.664406, 32.015720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.980930, 40.061329, 32.008961>,  <39.951504, 40.299484, 32.004906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.980930, 40.061329, 32.008961>,  <40.029972, 39.664406, 32.015720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.980930, 40.061329, 32.008961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450461, -0.040470, 0.891879,
		0.884338, 0.116960, 0.451959,
		-0.122605, 0.992311, -0.016897,
		39.944149, 40.359024, 32.003891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.247211, 39.927322, 32.637905>,  <40.029972, 39.664406, 32.015720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.247211, 39.927322, 32.637905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.990498, 40.194820, 32.487762>,  <39.836468, 40.355320, 32.397678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.990498, 40.194820, 32.487762>,  <40.247211, 39.927322, 32.637905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.990498, 40.194820, 32.487762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516942, -0.015711, 0.855876,
		0.566466, 0.743326, 0.355785,
		-0.641785, 0.668745, -0.375357,
		39.797962, 40.395443, 32.375156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.991539, 40.233440, 33.252693>,  <40.247211, 39.927322, 32.637905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.991539, 40.233440, 33.252693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.727287, 40.366104, 32.983303>,  <39.568737, 40.445702, 32.821671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.727287, 40.366104, 32.983303>,  <39.991539, 40.233440, 33.252693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.727287, 40.366104, 32.983303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738684, -0.127268, 0.661928,
		0.133825, 0.934775, 0.329071,
		-0.660633, 0.331662, -0.673472,
		39.529099, 40.465603, 32.781261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.613918, 40.758457, 33.530087>,  <39.991539, 40.233440, 33.252693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.613918, 40.758457, 33.530087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.404621, 40.574459, 33.243137>,  <39.279041, 40.464062, 33.070969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.404621, 40.574459, 33.243137>,  <39.613918, 40.758457, 33.530087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.404621, 40.574459, 33.243137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725937, -0.200324, 0.657940,
		-0.446355, 0.865030, -0.229108,
		-0.523242, -0.459993, -0.717373,
		39.247650, 40.436462, 33.027924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.910816, 40.977577, 33.717030>,  <39.613918, 40.758457, 33.530087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.910816, 40.977577, 33.717030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.906647, 40.657146, 33.477642>,  <38.904144, 40.464886, 33.334011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.906647, 40.657146, 33.477642>,  <38.910816, 40.977577, 33.717030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.906647, 40.657146, 33.477642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816681, -0.338533, 0.467362,
		-0.576995, 0.493628, -0.650698,
		-0.010420, -0.801079, -0.598468,
		38.903522, 40.416824, 33.298103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.243996, 40.811935, 33.778732>,  <38.910816, 40.977577, 33.717030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.243996, 40.811935, 33.778732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.422569, 40.480862, 33.642715>,  <38.529713, 40.282215, 33.561108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.422569, 40.480862, 33.642715>,  <38.243996, 40.811935, 33.778732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.422569, 40.480862, 33.642715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446742, -0.535426, 0.716756,
		-0.775318, -0.168074, -0.608797,
		0.446434, -0.827689, -0.340040,
		38.556499, 40.232555, 33.540703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.646549, 40.359447, 33.695549>,  <38.243996, 40.811935, 33.778732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.646549, 40.359447, 33.695549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.973255, 40.128693, 33.699459>,  <38.169277, 39.990238, 33.701805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.973255, 40.128693, 33.699459>,  <37.646549, 40.359447, 33.695549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973255, 40.128693, 33.699459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493344, -0.689504, 0.530280,
		-0.299173, -0.437936, -0.847766,
		0.816767, -0.576886, 0.009772,
		38.218285, 39.955627, 33.702389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461456, 39.724072, 33.567383>,  <37.646549, 40.359447, 33.695549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461456, 39.724072, 33.567383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.790504, 39.649002, 33.782070>,  <37.987934, 39.603962, 33.910885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.790504, 39.649002, 33.782070>,  <37.461456, 39.724072, 33.567383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.790504, 39.649002, 33.782070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538059, -0.562088, 0.628132,
		0.183803, -0.805504, -0.563365,
		0.822623, -0.187672, 0.536722,
		38.037292, 39.592701, 33.943089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.363873, 39.057533, 33.726330>,  <37.461456, 39.724072, 33.567383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.363873, 39.057533, 33.726330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.636204, 39.190273, 33.987511>,  <37.799603, 39.269917, 34.144218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.636204, 39.190273, 33.987511>,  <37.363873, 39.057533, 33.726330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.636204, 39.190273, 33.987511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374569, -0.608329, 0.699739,
		0.629419, -0.720978, -0.289866,
		0.680830, 0.331855, 0.652950,
		37.840454, 39.289829, 34.183395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689171, 38.512016, 34.013172>,  <37.363873, 39.057533, 33.726330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.689171, 38.512016, 34.013172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.759827, 38.787670, 34.294281>,  <37.802219, 38.953064, 34.462948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.759827, 38.787670, 34.294281>,  <37.689171, 38.512016, 34.013172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.759827, 38.787670, 34.294281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100517, -0.697638, 0.709364,
		0.979130, -0.195942, -0.053960,
		0.176638, 0.689136, 0.702774,
		37.812817, 38.994411, 34.505112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058052, 38.129391, 34.493679>,  <37.689171, 38.512016, 34.013172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.058052, 38.129391, 34.493679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.918842, 38.448093, 34.691288>,  <37.835316, 38.639317, 34.809853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.918842, 38.448093, 34.691288>,  <38.058052, 38.129391, 34.493679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.918842, 38.448093, 34.691288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420967, -0.603664, 0.677035,
		0.837657, 0.027656, 0.545496,
		-0.348021, 0.796759, 0.494021,
		37.814438, 38.687122, 34.839493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186764, 38.039711, 35.268219>,  <38.058052, 38.129391, 34.493679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.186764, 38.039711, 35.268219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.898071, 38.315750, 35.246792>,  <37.724857, 38.481373, 35.233936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.898071, 38.315750, 35.246792>,  <38.186764, 38.039711, 35.268219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.898071, 38.315750, 35.246792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505054, -0.472122, 0.722510,
		0.473312, 0.548513, 0.689282,
		-0.721732, 0.690097, -0.053567,
		37.681553, 38.522778, 35.230721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934948, 38.115471, 35.948002>,  <38.186764, 38.039711, 35.268219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.934948, 38.115471, 35.948002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.650555, 38.307335, 35.742313>,  <37.479919, 38.422455, 35.618900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.650555, 38.307335, 35.742313>,  <37.934948, 38.115471, 35.948002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.650555, 38.307335, 35.742313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660991, -0.206298, 0.721479,
		0.239980, 0.852859, 0.463725,
		-0.710985, 0.479658, -0.514225,
		37.437260, 38.451233, 35.588047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565369, 38.570980, 36.388817>,  <37.934948, 38.115471, 35.948002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565369, 38.570980, 36.388817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.281479, 38.558125, 36.107319>,  <37.111145, 38.550411, 35.938419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.281479, 38.558125, 36.107319>,  <37.565369, 38.570980, 36.388817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281479, 38.558125, 36.107319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675015, -0.254847, 0.692393,
		-0.201599, 0.966447, 0.159178,
		-0.709727, -0.032138, -0.703743,
		37.068562, 38.548485, 35.896194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069931, 38.779881, 36.830170>,  <37.565369, 38.570980, 36.388817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069931, 38.779881, 36.830170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.884605, 38.675766, 36.491325>,  <36.773411, 38.613297, 36.288021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.884605, 38.675766, 36.491325>,  <37.069931, 38.779881, 36.830170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884605, 38.675766, 36.491325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846097, -0.154365, 0.510188,
		-0.263561, 0.953111, -0.148712,
		-0.463309, -0.260291, -0.847109,
		36.745613, 38.597679, 36.237194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747681, 39.231365, 37.386219>,  <37.069931, 38.779881, 36.830170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.747681, 39.231365, 37.386219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.937450, 39.533424, 37.567181>,  <37.051311, 39.714661, 37.675758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.937450, 39.533424, 37.567181>,  <36.747681, 39.231365, 37.386219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937450, 39.533424, 37.567181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809476, 0.172277, 0.561310,
		0.345935, -0.632509, 0.693008,
		0.474423, 0.755150, 0.452404,
		37.079777, 39.759968, 37.702904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761868, 39.163544, 38.193184>,  <36.747681, 39.231365, 37.386219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761868, 39.163544, 38.193184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795471, 39.543613, 38.073116>,  <36.815632, 39.771656, 38.001076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795471, 39.543613, 38.073116>,  <36.761868, 39.163544, 38.193184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795471, 39.543613, 38.073116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805607, 0.242055, 0.540746,
		0.586463, 0.196393, 0.785806,
		0.084010, 0.950179, -0.300172,
		36.820675, 39.828667, 37.983067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316868, 39.452736, 38.573009>,  <36.761868, 39.163544, 38.193184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.316868, 39.452736, 38.573009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.023369, 39.682888, 38.717541>,  <35.847271, 39.820980, 38.804260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.023369, 39.682888, 38.717541>,  <36.316868, 39.452736, 38.573009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023369, 39.682888, 38.717541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238035, -0.715806, 0.656476,
		0.636359, 0.395680, 0.662181,
		-0.733748, 0.575377, 0.361325,
		35.803246, 39.855499, 38.825939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949959, 39.021267, 39.071079>,  <36.316868, 39.452736, 38.573009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949959, 39.021267, 39.071079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.780231, 39.382248, 39.100845>,  <35.678394, 39.598835, 39.118706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.780231, 39.382248, 39.100845>,  <35.949959, 39.021267, 39.071079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.780231, 39.382248, 39.100845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659769, -0.364406, 0.657201,
		0.620210, 0.229762, 0.750033,
		-0.424317, 0.902451, 0.074419,
		35.652935, 39.652985, 39.123173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781059, 39.260345, 39.891495>,  <35.949959, 39.021267, 39.071079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.781059, 39.260345, 39.891495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.539597, 39.423229, 39.617332>,  <35.394718, 39.520958, 39.452835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.539597, 39.423229, 39.617332>,  <35.781059, 39.260345, 39.891495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539597, 39.423229, 39.617332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796677, -0.275688, 0.537868,
		0.030066, 0.870734, 0.490834,
		-0.603657, 0.407207, -0.685405,
		35.358498, 39.545391, 39.411713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282345, 39.627655, 40.288277>,  <35.781059, 39.260345, 39.891495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282345, 39.627655, 40.288277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.113609, 39.547237, 39.934635>,  <35.012367, 39.498985, 39.722450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.113609, 39.547237, 39.934635>,  <35.282345, 39.627655, 40.288277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113609, 39.547237, 39.934635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819221, -0.333301, 0.466677,
		-0.388495, 0.921135, -0.024102,
		-0.421840, -0.201047, -0.884099,
		34.987057, 39.486923, 39.669407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588493, 39.939468, 40.043236>,  <35.282345, 39.627655, 40.288277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.588493, 39.939468, 40.043236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.645924, 39.561249, 39.926399>,  <34.680382, 39.334316, 39.856297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.645924, 39.561249, 39.926399>,  <34.588493, 39.939468, 40.043236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.645924, 39.561249, 39.926399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745238, -0.297498, 0.596754,
		-0.651159, 0.131999, -0.747375,
		0.143571, -0.945554, -0.292089,
		34.688995, 39.277584, 39.838772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935646, 39.673122, 39.796246>,  <34.588493, 39.939468, 40.043236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.935646, 39.673122, 39.796246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.153236, 39.355236, 39.903969>,  <34.283791, 39.164505, 39.968605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.153236, 39.355236, 39.903969>,  <33.935646, 39.673122, 39.796246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.153236, 39.355236, 39.903969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743280, -0.307418, 0.594163,
		-0.389399, -0.523378, -0.757920,
		0.543970, -0.794713, 0.269308,
		34.316429, 39.116821, 39.984760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.562862, 39.096756, 39.834587>,  <33.935646, 39.673122, 39.796246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.562862, 39.096756, 39.834587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851452, 39.029503, 40.103275>,  <34.024605, 38.989151, 40.264488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851452, 39.029503, 40.103275>,  <33.562862, 39.096756, 39.834587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.851452, 39.029503, 40.103275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664399, -0.441350, 0.603145,
		0.195058, -0.881444, -0.430127,
		0.721475, -0.168128, 0.671719,
		34.067894, 38.979065, 40.304790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.630089, 38.354851, 40.147411>,  <33.562862, 39.096756, 39.834587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.630089, 38.354851, 40.147411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.792561, 38.582699, 40.433224>,  <33.890045, 38.719406, 40.604710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.792561, 38.582699, 40.433224>,  <33.630089, 38.354851, 40.147411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.792561, 38.582699, 40.433224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445556, -0.559236, 0.699095,
		0.797809, -0.602321, 0.026647,
		0.406178, 0.569618, 0.714532,
		33.914413, 38.753586, 40.647583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.818718, 37.873520, 40.788033>,  <33.630089, 38.354851, 40.147411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.818718, 37.873520, 40.788033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732220, 38.246094, 40.905113>,  <33.680321, 38.469639, 40.975361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732220, 38.246094, 40.905113>,  <33.818718, 37.873520, 40.788033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.732220, 38.246094, 40.905113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533312, -0.363804, 0.763692,
		0.817811, 0.009049, 0.575417,
		-0.216250, 0.931432, 0.292697,
		33.667343, 38.525524, 40.992924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415371, 37.483109, 40.718014>,  <33.818718, 37.873520, 40.788033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415371, 37.483109, 40.718014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.365601, 37.145313, 40.926384>,  <34.335739, 36.942635, 41.051407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.365601, 37.145313, 40.926384>,  <34.415371, 37.483109, 40.718014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.365601, 37.145313, 40.926384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188657, -0.535560, -0.823155,
		0.974129, -0.004146, 0.225956,
		-0.124426, -0.844487, 0.520923,
		34.328274, 36.891968, 41.082661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876884, 37.662979, 40.163219>,  <34.415371, 37.483109, 40.718014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876884, 37.662979, 40.163219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.043819, 38.025806, 40.141090>,  <35.143982, 38.243504, 40.127815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.043819, 38.025806, 40.141090>,  <34.876884, 37.662979, 40.163219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043819, 38.025806, 40.141090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906870, 0.419616, 0.038855,
		0.058456, 0.033951, 0.997713,
		0.417337, 0.907067, -0.055319,
		35.169022, 38.297928, 40.124496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.316746, 38.019188, 40.726295>,  <34.876884, 37.662979, 40.163219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.316746, 38.019188, 40.726295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110783, 37.752827, 40.942238>,  <34.987206, 37.593010, 41.071804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110783, 37.752827, 40.942238>,  <35.316746, 38.019188, 40.726295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110783, 37.752827, 40.942238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854577, -0.349068, 0.384512,
		-0.067602, 0.659335, 0.748804,
		-0.514906, -0.665905, 0.539854,
		34.956310, 37.553055, 41.104195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440571, 38.135048, 41.543041>,  <35.316746, 38.019188, 40.726295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.440571, 38.135048, 41.543041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.352352, 37.760635, 41.433342>,  <35.299419, 37.535988, 41.367523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.352352, 37.760635, 41.433342>,  <35.440571, 38.135048, 41.543041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.352352, 37.760635, 41.433342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794027, -0.335593, 0.506851,
		-0.566461, -0.105973, 0.817246,
		-0.220550, -0.936027, -0.274246,
		35.286186, 37.479828, 41.351067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444901, 37.608341, 42.095959>,  <35.440571, 38.135048, 41.543041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.444901, 37.608341, 42.095959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.537670, 37.355652, 41.800083>,  <35.593330, 37.204037, 41.622559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.537670, 37.355652, 41.800083>,  <35.444901, 37.608341, 42.095959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537670, 37.355652, 41.800083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741736, -0.377109, 0.554632,
		-0.629318, -0.677283, 0.381113,
		0.231922, -0.631725, -0.739686,
		35.607246, 37.166134, 41.578178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558720, 37.025986, 42.356430>,  <35.444901, 37.608341, 42.095959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558720, 37.025986, 42.356430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.765217, 37.012371, 42.014122>,  <35.889114, 37.004200, 41.808739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.765217, 37.012371, 42.014122>,  <35.558720, 37.025986, 42.356430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.765217, 37.012371, 42.014122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801961, -0.331487, 0.496967,
		-0.300591, -0.942846, -0.143831,
		0.516241, -0.034037, -0.855767,
		35.920090, 37.002159, 41.757393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929440, 36.399704, 42.360397>,  <35.558720, 37.025986, 42.356430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929440, 36.399704, 42.360397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.094593, 36.652512, 42.098076>,  <36.193684, 36.804195, 41.940681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.094593, 36.652512, 42.098076>,  <35.929440, 36.399704, 42.360397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.094593, 36.652512, 42.098076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899151, -0.168133, 0.404053,
		0.145105, -0.756497, -0.637697,
		0.412882, 0.632016, -0.655808,
		36.218456, 36.842117, 41.901333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410065, 35.915855, 41.971127>,  <35.929440, 36.399704, 42.360397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410065, 35.915855, 41.971127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.495781, 36.303543, 42.019604>,  <36.547211, 36.536156, 42.048691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.495781, 36.303543, 42.019604>,  <36.410065, 35.915855, 41.971127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495781, 36.303543, 42.019604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773297, -0.244141, 0.585155,
		0.596733, -0.031675, -0.801814,
		0.214291, 0.969222, 0.121193,
		36.560070, 36.594311, 42.055962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087975, 35.854019, 41.901905>,  <36.410065, 35.915855, 41.971127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087975, 35.854019, 41.901905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.014431, 36.173737, 42.130756>,  <36.970306, 36.365566, 42.268066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.014431, 36.173737, 42.130756>,  <37.087975, 35.854019, 41.901905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.014431, 36.173737, 42.130756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846862, -0.166685, 0.505016,
		0.499020, 0.577364, -0.646242,
		-0.183859, 0.799291, 0.572127,
		36.959274, 36.413525, 42.302395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.639786, 36.194427, 41.751213>,  <37.087975, 35.854019, 41.901905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.639786, 36.194427, 41.751213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.475628, 36.266510, 42.108784>,  <37.377132, 36.309757, 42.323326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.475628, 36.266510, 42.108784>,  <37.639786, 36.194427, 41.751213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475628, 36.266510, 42.108784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851433, -0.275315, 0.446389,
		0.326552, 0.944313, -0.040444,
		-0.410396, 0.180204, 0.893925,
		37.352509, 36.320572, 42.376961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130878, 36.572079, 42.153473>,  <37.639786, 36.194427, 41.751213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.130878, 36.572079, 42.153473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883858, 36.302017, 42.314865>,  <37.735645, 36.139980, 42.411701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883858, 36.302017, 42.314865>,  <38.130878, 36.572079, 42.153473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883858, 36.302017, 42.314865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774324, -0.431867, 0.462507,
		-0.138014, 0.598046, 0.789489,
		-0.617555, -0.675153, 0.403478,
		37.698593, 36.099472, 42.435909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.733803, 36.112301, 41.911064>,  <38.130878, 36.572079, 42.153473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.733803, 36.112301, 41.911064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104443, 36.207962, 41.794983>,  <39.326828, 36.265358, 41.725334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104443, 36.207962, 41.794983>,  <38.733803, 36.112301, 41.911064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104443, 36.207962, 41.794983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315442, 0.914428, -0.253607,
		0.204719, 0.326535, 0.922749,
		0.926599, 0.239156, -0.290204,
		39.382423, 36.279709, 41.707920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065800, 36.689476, 42.325077>,  <38.733803, 36.112301, 41.911064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.065800, 36.689476, 42.325077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.223171, 36.678555, 41.957497>,  <39.317593, 36.672001, 41.736950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.223171, 36.678555, 41.957497>,  <39.065800, 36.689476, 42.325077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223171, 36.678555, 41.957497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163775, 0.981489, -0.099277,
		0.904650, 0.189560, 0.381674,
		0.393428, -0.027302, -0.918950,
		39.341198, 36.670364, 41.681812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.523285, 37.360184, 42.338810>,  <39.065800, 36.689476, 42.325077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.523285, 37.360184, 42.338810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.380573, 37.243084, 41.983955>,  <39.294945, 37.172825, 41.771042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.380573, 37.243084, 41.983955>,  <39.523285, 37.360184, 42.338810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380573, 37.243084, 41.983955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097360, 0.956111, -0.276357,
		0.929101, -0.012228, -0.369625,
		-0.356782, -0.292750, -0.887133,
		39.273540, 37.155258, 41.717815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.228580, 37.748482, 42.458424>,  <39.523285, 37.360184, 42.338810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.228580, 37.748482, 42.458424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.393440, 37.692642, 42.818569>,  <40.492355, 37.659138, 43.034657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.393440, 37.692642, 42.818569>,  <40.228580, 37.748482, 42.458424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.393440, 37.692642, 42.818569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801029, 0.526396, -0.285060,
		-0.434151, 0.838701, 0.328776,
		0.412146, -0.139600, 0.900360,
		40.517082, 37.650761, 43.088676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.590481, 37.964592, 42.870522>,  <40.228580, 37.748482, 42.458424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.590481, 37.964592, 42.870522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.791401, 38.230911, 43.091213>,  <39.911953, 38.390705, 43.223629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.791401, 38.230911, 43.091213>,  <39.590481, 37.964592, 42.870522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.791401, 38.230911, 43.091213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690537, 0.692897, -0.207489,
		-0.520439, -0.276769, 0.807801,
		0.502296, 0.665802, 0.551731,
		39.942089, 38.430653, 43.256733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.189243, 38.115208, 43.495129>,  <39.590481, 37.964592, 42.870522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.189243, 38.115208, 43.495129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.427406, 38.399063, 43.344444>,  <39.570305, 38.569378, 43.254036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.427406, 38.399063, 43.344444>,  <39.189243, 38.115208, 43.495129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.427406, 38.399063, 43.344444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799873, 0.567623, -0.194953,
		0.075482, 0.417394, 0.905585,
		0.595403, 0.709638, -0.376708,
		39.606026, 38.611954, 43.231430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.956871, 38.795490, 43.800133>,  <39.189243, 38.115208, 43.495129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.956871, 38.795490, 43.800133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.143803, 38.856956, 43.451881>,  <39.255962, 38.893837, 43.242931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.143803, 38.856956, 43.451881>,  <38.956871, 38.795490, 43.800133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.143803, 38.856956, 43.451881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785874, 0.523304, -0.329479,
		0.404973, 0.838177, 0.365316,
		0.467333, 0.153663, -0.870625,
		39.284004, 38.903057, 43.190693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.604465, 39.126678, 43.988518>,  <38.956871, 38.795490, 43.800133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.604465, 39.126678, 43.988518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515495, 39.236603, 43.614349>,  <39.462112, 39.302555, 43.389851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515495, 39.236603, 43.614349>,  <39.604465, 39.126678, 43.988518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515495, 39.236603, 43.614349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455825, 0.877443, 0.149389,
		0.861829, -0.393159, -0.320432,
		-0.222427, 0.274809, -0.935418,
		39.448769, 39.319046, 43.333725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.155056, 39.410912, 43.540401>,  <39.604465, 39.126678, 43.988518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.155056, 39.410912, 43.540401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.830231, 39.577633, 43.377018>,  <39.635338, 39.677666, 43.278988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.830231, 39.577633, 43.377018>,  <40.155056, 39.410912, 43.540401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.830231, 39.577633, 43.377018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475513, 0.878338, -0.049095,
		0.338299, -0.234094, -0.911457,
		-0.812060, 0.416801, -0.408456,
		39.586613, 39.702675, 43.254482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.233498, 39.707848, 42.767670>,  <40.155056, 39.410912, 43.540401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.233498, 39.707848, 42.767670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.967583, 39.877071, 43.013950>,  <39.808033, 39.978603, 43.161716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.967583, 39.877071, 43.013950>,  <40.233498, 39.707848, 42.767670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.967583, 39.877071, 43.013950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571126, 0.819094, 0.053849,
		-0.481533, 0.387439, -0.786141,
		-0.664787, 0.423055, 0.615697,
		39.768147, 40.003986, 43.198658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649448, 39.365620, 42.366314>,  <40.233498, 39.707848, 42.767670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.649448, 39.365620, 42.366314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.887890, 39.046726, 42.328213>,  <40.030956, 38.855389, 42.305351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.887890, 39.046726, 42.328213>,  <39.649448, 39.365620, 42.366314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.887890, 39.046726, 42.328213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658643, -0.417703, -0.625870,
		0.459179, 0.435822, -0.774089,
		0.596107, -0.797235, -0.095251,
		40.066723, 38.807556, 42.299637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.636204, 39.173809, 41.692188>,  <39.649448, 39.365620, 42.366314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.636204, 39.173809, 41.692188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.766006, 38.842945, 41.875710>,  <39.843887, 38.644424, 41.985821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.766006, 38.842945, 41.875710>,  <39.636204, 39.173809, 41.692188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.766006, 38.842945, 41.875710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484107, -0.561945, -0.670715,
		0.812610, -0.004456, -0.582791,
		0.324508, -0.827163, 0.458799,
		39.863358, 38.594795, 42.013348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940552, 38.647884, 41.157902>,  <39.636204, 39.173809, 41.692188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.940552, 38.647884, 41.157902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.811291, 38.440937, 41.474865>,  <39.733734, 38.316769, 41.665043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.811291, 38.440937, 41.474865>,  <39.940552, 38.647884, 41.157902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.811291, 38.440937, 41.474865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293565, -0.741221, -0.603664,
		0.899663, -0.427696, 0.087645,
		-0.323149, -0.517365, 0.792406,
		39.714348, 38.285728, 41.712585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.312672, 38.110615, 41.327679>,  <39.940552, 38.647884, 41.157902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.312672, 38.110615, 41.327679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.928520, 38.040936, 41.414696>,  <39.698029, 37.999130, 41.466908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.928520, 38.040936, 41.414696>,  <40.312672, 38.110615, 41.327679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.928520, 38.040936, 41.414696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061183, -0.629758, -0.774378,
		0.271890, -0.757008, 0.594150,
		-0.960381, -0.174194, 0.217542,
		39.640408, 37.988678, 41.479958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.234329, 37.469532, 41.308514>,  <40.312672, 38.110615, 41.327679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.234329, 37.469532, 41.308514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.896057, 37.634003, 41.172417>,  <39.693096, 37.732685, 41.090759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.896057, 37.634003, 41.172417>,  <40.234329, 37.469532, 41.308514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.896057, 37.634003, 41.172417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147813, -0.432133, -0.889614,
		-0.512819, -0.802617, 0.304667,
		-0.845676, 0.411177, -0.340243,
		39.642353, 37.757355, 41.070343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.896313, 36.987881, 40.828297>,  <40.234329, 37.469532, 41.308514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.896313, 36.987881, 40.828297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.704128, 37.329384, 40.748039>,  <39.588818, 37.534286, 40.699886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.704128, 37.329384, 40.748039>,  <39.896313, 36.987881, 40.828297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.704128, 37.329384, 40.748039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231834, -0.344281, -0.909793,
		-0.845819, -0.390604, 0.363343,
		-0.480461, 0.853756, -0.200644,
		39.559990, 37.585510, 40.687847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188549, 36.893681, 40.805889>,  <39.896313, 36.987881, 40.828297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.188549, 36.893681, 40.805889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.287098, 37.196007, 40.563221>,  <39.346226, 37.377403, 40.417622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.287098, 37.196007, 40.563221>,  <39.188549, 36.893681, 40.805889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.287098, 37.196007, 40.563221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314191, -0.529873, -0.787730,
		-0.916835, 0.384683, 0.106926,
		0.246369, 0.755813, -0.606670,
		39.361008, 37.422752, 40.381222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.644302, 37.019966, 40.266708>,  <39.188549, 36.893681, 40.805889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.644302, 37.019966, 40.266708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.006210, 37.120350, 40.129066>,  <39.223354, 37.180580, 40.046482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.006210, 37.120350, 40.129066>,  <38.644302, 37.019966, 40.266708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.006210, 37.120350, 40.129066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136999, -0.593523, -0.793071,
		-0.403261, 0.764691, -0.502622,
		0.904772, 0.250955, -0.344107,
		39.277641, 37.195637, 40.025833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591305, 37.058426, 39.563320>,  <38.644302, 37.019966, 40.266708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.591305, 37.058426, 39.563320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.984055, 36.994102, 39.603443>,  <39.219704, 36.955509, 39.627518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.984055, 36.994102, 39.603443>,  <38.591305, 37.058426, 39.563320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984055, 36.994102, 39.603443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007103, -0.560102, -0.828393,
		0.189398, 0.812666, -0.551092,
		0.981875, -0.160811, 0.100310,
		39.278618, 36.945858, 39.633537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034466, 37.797417, 39.406315>,  <38.591305, 37.058426, 39.563320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.034466, 37.797417, 39.406315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.384758, 37.713642, 39.232311>,  <39.594933, 37.663376, 39.127911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.384758, 37.713642, 39.232311>,  <39.034466, 37.797417, 39.406315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.384758, 37.713642, 39.232311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414564, -0.787999, -0.455186,
		-0.247453, 0.578959, -0.776900,
		0.875731, -0.209438, -0.435008,
		39.647476, 37.650810, 39.101810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769741, 37.652473, 38.680286>,  <39.034466, 37.797417, 39.406315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.769741, 37.652473, 38.680286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.107639, 37.458969, 38.771835>,  <39.310379, 37.342865, 38.826763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.107639, 37.458969, 38.771835>,  <38.769741, 37.652473, 38.680286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107639, 37.458969, 38.771835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286839, -0.770315, -0.569507,
		0.451807, 0.415439, -0.789481,
		0.844745, -0.483761, 0.228870,
		39.361061, 37.313839, 38.840496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.324699, 37.431778, 38.058392>,  <38.769741, 37.652473, 38.680286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.324699, 37.431778, 38.058392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.312344, 37.169785, 38.360394>,  <39.304928, 37.012589, 38.541595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.312344, 37.169785, 38.360394>,  <39.324699, 37.431778, 38.058392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.312344, 37.169785, 38.360394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306796, -0.712691, -0.630831,
		0.951274, -0.251122, -0.178930,
		-0.030894, -0.654988, 0.755007,
		39.303074, 36.973289, 38.586895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.046459, 37.444534, 38.449444>,  <39.324699, 37.431778, 38.058392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.046459, 37.444534, 38.449444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.971939, 37.813602, 38.584480>,  <39.927227, 38.035042, 38.665504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.971939, 37.813602, 38.584480>,  <40.046459, 37.444534, 38.449444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.971939, 37.813602, 38.584480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697424, -0.366219, 0.616022,
		0.692019, -0.120680, 0.711721,
		-0.186304, 0.922670, 0.337595,
		39.916046, 38.090405, 38.685760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.540024, 37.921108, 38.063553>,  <40.046459, 37.444534, 38.449444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.540024, 37.921108, 38.063553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.547520, 38.026226, 37.677685>,  <40.552017, 38.089298, 37.446163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.547520, 38.026226, 37.677685>,  <40.540024, 37.921108, 38.063553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.547520, 38.026226, 37.677685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875988, -0.469419, -0.110865,
		-0.481969, -0.842961, -0.239003,
		0.018738, 0.262797, -0.964669,
		40.553143, 38.105064, 37.388283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.655735, 37.336475, 37.607441>,  <40.540024, 37.921108, 38.063553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.655735, 37.336475, 37.607441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.810184, 37.674938, 37.460514>,  <40.902855, 37.878017, 37.372356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.810184, 37.674938, 37.460514>,  <40.655735, 37.336475, 37.607441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.810184, 37.674938, 37.460514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915199, -0.401229, 0.037772,
		-0.115418, -0.350755, -0.929327,
		0.386121, 0.846160, -0.367320,
		40.926022, 37.928787, 37.350319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.026718, 37.126568, 37.003490>,  <40.655735, 37.336475, 37.607441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.026718, 37.126568, 37.003490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.143158, 37.446697, 37.213158>,  <41.213020, 37.638775, 37.338959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.143158, 37.446697, 37.213158>,  <41.026718, 37.126568, 37.003490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.143158, 37.446697, 37.213158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918766, -0.386603, 0.080043,
		0.266705, 0.458288, -0.847845,
		0.291097, 0.800319, 0.524168,
		41.230488, 37.686794, 37.370407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.385891, 36.755836, 36.369862>,  <41.026718, 37.126568, 37.003490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.385891, 36.755836, 36.369862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.764957, 36.737843, 36.496288>,  <41.992397, 36.727047, 36.572144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.764957, 36.737843, 36.496288>,  <41.385891, 36.755836, 36.369862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.764957, 36.737843, 36.496288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129668, -0.958918, 0.252316,
		0.291736, -0.280096, -0.914569,
		0.947669, -0.044981, 0.316070,
		42.049259, 36.724350, 36.591110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.712074, 36.142200, 36.158684>,  <41.385891, 36.755836, 36.369862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.712074, 36.142200, 36.158684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.911354, 36.275101, 36.479038>,  <42.030922, 36.354839, 36.671249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.911354, 36.275101, 36.479038>,  <41.712074, 36.142200, 36.158684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.911354, 36.275101, 36.479038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090505, -0.938551, 0.333063,
		0.862328, -0.093446, -0.497652,
		0.498195, 0.332250, 0.800882,
		42.060814, 36.374775, 36.719303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.348988, 35.717834, 36.291092>,  <41.712074, 36.142200, 36.158684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.348988, 35.717834, 36.291092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.202618, 35.867031, 36.632145>,  <42.114796, 35.956547, 36.836777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.202618, 35.867031, 36.632145>,  <42.348988, 35.717834, 36.291092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.202618, 35.867031, 36.632145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313724, -0.813108, 0.490339,
		0.876173, 0.446917, 0.180518,
		-0.365922, 0.372989, 0.852631,
		42.092842, 35.978928, 36.887936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.696915, 36.283741, 35.772522>,  <42.348988, 35.717834, 36.291092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.696915, 36.283741, 35.772522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.384689, 36.521187, 35.694187>,  <42.197353, 36.663654, 35.647186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.384689, 36.521187, 35.694187>,  <42.696915, 36.283741, 35.772522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.384689, 36.521187, 35.694187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393660, 0.223460, -0.891683,
		-0.485551, -0.773105, -0.408104,
		-0.780559, 0.593611, -0.195839,
		42.150520, 36.699268, 35.635437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.052261, 36.505962, 36.370125>,  <42.696915, 36.283741, 35.772522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.052261, 36.505962, 36.370125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.972088, 36.571880, 36.756424>,  <42.923985, 36.611431, 36.988205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.972088, 36.571880, 36.756424>,  <43.052261, 36.505962, 36.370125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.972088, 36.571880, 36.756424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619135, -0.742651, 0.255228,
		0.759274, 0.649085, 0.046822,
		-0.200437, 0.164799, 0.965747,
		42.911957, 36.621319, 37.046146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.747532, 36.659885, 36.823151>,  <43.052261, 36.505962, 36.370125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.747532, 36.659885, 36.823151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.424305, 36.471252, 36.964367>,  <43.230370, 36.358070, 37.049095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.424305, 36.471252, 36.964367>,  <43.747532, 36.659885, 36.823151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.424305, 36.471252, 36.964367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554216, -0.811724, 0.184253,
		0.199677, 0.344547, 0.917287,
		-0.808068, -0.471584, 0.353036,
		43.181885, 36.329777, 37.070278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.014305, 36.251419, 37.485840>,  <43.747532, 36.659885, 36.823151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.014305, 36.251419, 37.485840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.655941, 36.107838, 37.381153>,  <43.440922, 36.021690, 37.318340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.655941, 36.107838, 37.381153>,  <44.014305, 36.251419, 37.485840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.655941, 36.107838, 37.381153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216825, -0.867539, 0.447619,
		-0.387727, 0.344279, 0.855067,
		-0.895910, -0.358954, -0.261720,
		43.387169, 36.000153, 37.302639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.085228, 35.823879, 38.218960>,  <44.014305, 36.251419, 37.485840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.085228, 35.823879, 38.218960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.460182, 35.716949, 38.308262>,  <44.685154, 35.652790, 38.361843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.460182, 35.716949, 38.308262>,  <44.085228, 35.823879, 38.218960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.460182, 35.716949, 38.308262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262254, 0.119958, -0.957514,
		0.229188, 0.956111, 0.182554,
		0.937388, -0.267326, 0.223251,
		44.741398, 35.636753, 38.375237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.565041, 36.400867, 38.054405>,  <44.085228, 35.823879, 38.218960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.565041, 36.400867, 38.054405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.690250, 36.027843, 37.982464>,  <44.765377, 35.804028, 37.939301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.690250, 36.027843, 37.982464>,  <44.565041, 36.400867, 38.054405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.690250, 36.027843, 37.982464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222567, 0.256122, -0.940673,
		0.923297, 0.254428, 0.287730,
		0.313028, -0.932560, -0.179849,
		44.784161, 35.748077, 37.928509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.237362, 36.407333, 37.826767>,  <44.565041, 36.400867, 38.054405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.237362, 36.407333, 37.826767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.051601, 36.087566, 37.674316>,  <44.940144, 35.895706, 37.582848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.051601, 36.087566, 37.674316>,  <45.237362, 36.407333, 37.826767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.051601, 36.087566, 37.674316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337159, 0.238346, -0.910777,
		0.818933, -0.551468, 0.158843,
		-0.464405, -0.799421, -0.381122,
		44.912281, 35.847740, 37.559978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.736805, 35.957367, 37.491657>,  <45.237362, 36.407333, 37.826767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.736805, 35.957367, 37.491657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.369896, 35.942593, 37.333038>,  <45.149750, 35.933727, 37.237865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.369896, 35.942593, 37.333038>,  <45.736805, 35.957367, 37.491657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.369896, 35.942593, 37.333038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395538, 0.031872, -0.917897,
		0.046561, -0.998808, -0.014618,
		-0.917269, -0.036956, -0.396550,
		45.094715, 35.931511, 37.214073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.591423, 35.452515, 36.919605>,  <45.736805, 35.957367, 37.491657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.591423, 35.452515, 36.919605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.355129, 35.772449, 36.877079>,  <45.213352, 35.964409, 36.851562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.355129, 35.772449, 36.877079>,  <45.591423, 35.452515, 36.919605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.355129, 35.772449, 36.877079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389423, 0.167219, -0.905753,
		-0.706672, -0.576459, -0.410255,
		-0.590732, 0.799833, -0.106317,
		45.177910, 36.012398, 36.845184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.305859, 35.321770, 37.289139>,  <45.591423, 35.452515, 36.919605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.305859, 35.321770, 37.289139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.579525, 35.030052, 37.286430>,  <46.743725, 34.855022, 37.284805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.579525, 35.030052, 37.286430>,  <46.305859, 35.321770, 37.289139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.579525, 35.030052, 37.286430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204212, 0.200471, -0.958180,
		0.700151, 0.654173, 0.286087,
		0.684168, -0.729293, -0.006770,
		46.784775, 34.811264, 37.284401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.027267, 35.496361, 37.045979>,  <46.305859, 35.321770, 37.289139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.027267, 35.496361, 37.045979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.994881, 35.108490, 36.953739>,  <46.975449, 34.875767, 36.898396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.994881, 35.108490, 36.953739>,  <47.027267, 35.496361, 37.045979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.994881, 35.108490, 36.953739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518375, 0.156636, -0.840686,
		0.851312, -0.187606, 0.489972,
		-0.080971, -0.969675, -0.230596,
		46.970589, 34.817589, 36.884560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.675301, 35.183216, 36.988396>,  <47.027267, 35.496361, 37.045979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.675301, 35.183216, 36.988396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.377983, 35.042679, 36.760689>,  <47.199593, 34.958355, 36.624065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.377983, 35.042679, 36.760689>,  <47.675301, 35.183216, 36.988396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.377983, 35.042679, 36.760689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567232, 0.120087, -0.814756,
		0.354624, -0.928512, 0.110035,
		-0.743297, -0.351348, -0.569267,
		47.154995, 34.937275, 36.589909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.056595, 34.916653, 36.390732>,  <47.675301, 35.183216, 36.988396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.056595, 34.916653, 36.390732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.670948, 34.951378, 36.290386>,  <47.439560, 34.972214, 36.230179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.670948, 34.951378, 36.290386>,  <48.056595, 34.916653, 36.390732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.670948, 34.951378, 36.290386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261033, 0.138174, -0.955390,
		-0.048278, -0.986596, -0.155878,
		-0.964122, 0.086813, -0.250864,
		47.381710, 34.977421, 36.215126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.665058, 34.423035, 35.864395>,  <48.056595, 34.916653, 36.390732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.665058, 34.423035, 35.864395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.540939, 34.801670, 35.829330>,  <47.466469, 35.028851, 35.808292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.540939, 34.801670, 35.829330>,  <47.665058, 34.423035, 35.864395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.540939, 34.801670, 35.829330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402339, 0.047217, -0.914273,
		-0.861302, -0.318965, -0.395501,
		-0.310295, 0.946590, -0.087664,
		47.447849, 35.085648, 35.803032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.561794, 34.508850, 35.234074>,  <47.665058, 34.423035, 35.864395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.561794, 34.508850, 35.234074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.606270, 34.892086, 35.339684>,  <47.632954, 35.122028, 35.403049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.606270, 34.892086, 35.339684>,  <47.561794, 34.508850, 35.234074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.606270, 34.892086, 35.339684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534880, 0.166218, -0.828417,
		-0.837580, 0.233329, -0.493980,
		0.111185, 0.958086, 0.264024,
		47.639626, 35.179512, 35.418892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.516953, 34.967644, 34.610458>,  <47.561794, 34.508850, 35.234074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.516953, 34.967644, 34.610458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.735340, 35.150650, 34.891201>,  <47.866371, 35.260452, 35.059647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.735340, 35.150650, 34.891201>,  <47.516953, 34.967644, 34.610458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.735340, 35.150650, 34.891201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696996, 0.216807, -0.683514,
		-0.464883, 0.862368, -0.200514,
		0.545967, 0.457511, 0.701857,
		47.899132, 35.287903, 35.101757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.977722, 38.365433, 25.598997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.648102, 38.587593, 25.554333>,  <38.450329, 38.720890, 25.527534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.648102, 38.587593, 25.554333>,  <38.977722, 38.365433, 25.598997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648102, 38.587593, 25.554333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278536, -0.225584, 0.933558,
		0.493307, 0.800403, 0.340592,
		-0.824054, 0.555398, -0.111659,
		38.400887, 38.754211, 25.520836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932247, 38.696793, 26.211922>,  <38.977722, 38.365433, 25.598997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.932247, 38.696793, 26.211922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.567108, 38.718090, 26.049995>,  <38.348026, 38.730869, 25.952841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.567108, 38.718090, 26.049995>,  <38.932247, 38.696793, 26.211922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.567108, 38.718090, 26.049995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407459, -0.182445, 0.894813,
		-0.026210, 0.981773, 0.188241,
		-0.912847, 0.053247, -0.404814,
		38.293255, 38.734066, 25.928551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562164, 39.138172, 26.634283>,  <38.932247, 38.696793, 26.211922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.562164, 39.138172, 26.634283> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.277683, 38.964676, 26.412994>,  <38.106995, 38.860577, 26.280220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.277683, 38.964676, 26.412994>,  <38.562164, 39.138172, 26.634283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.277683, 38.964676, 26.412994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662996, 0.152209, 0.732987,
		-0.233722, 0.888088, -0.395821,
		-0.711204, -0.433743, -0.553224,
		38.064323, 38.834553, 26.247026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010799, 39.618336, 26.607178>,  <38.562164, 39.138172, 26.634283>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.010799, 39.618336, 26.607178> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.866947, 39.253078, 26.530407>,  <37.780636, 39.033924, 26.484344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.866947, 39.253078, 26.530407>,  <38.010799, 39.618336, 26.607178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.866947, 39.253078, 26.530407> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657442, 0.102007, 0.746568,
		-0.662147, 0.394666, -0.637024,
		-0.359626, -0.913145, -0.191926,
		37.759060, 38.979134, 26.472830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.341209, 39.731205, 26.343515>,  <38.010799, 39.618336, 26.607178>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.341209, 39.731205, 26.343515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.384556, 39.373234, 26.516659>,  <37.410564, 39.158451, 26.620544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.384556, 39.373234, 26.516659>,  <37.341209, 39.731205, 26.343515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384556, 39.373234, 26.516659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767428, 0.201470, 0.608657,
		-0.631910, -0.398148, -0.664957,
		0.108367, -0.894924, 0.432861,
		37.417065, 39.104755, 26.646517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.618073, 39.491543, 26.417263>,  <37.341209, 39.731205, 26.343515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.618073, 39.491543, 26.417263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.823109, 39.257149, 26.668301>,  <36.946129, 39.116512, 26.818924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.823109, 39.257149, 26.668301>,  <36.618073, 39.491543, 26.417263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.823109, 39.257149, 26.668301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727437, 0.091945, 0.679987,
		-0.456164, -0.805091, -0.379134,
		0.512592, -0.585982, 0.627595,
		36.976887, 39.081356, 26.856579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136723, 39.201778, 26.857456>,  <36.618073, 39.491543, 26.417263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136723, 39.201778, 26.857456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.477470, 39.146996, 27.059666>,  <36.681919, 39.114124, 27.180992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.477470, 39.146996, 27.059666>,  <36.136723, 39.201778, 26.857456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477470, 39.146996, 27.059666> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504629, 0.043773, 0.862226,
		-0.140222, -0.989608, -0.031826,
		0.851873, -0.136963, 0.505523,
		36.733032, 39.105907, 27.211323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903450, 38.708549, 27.373774>,  <36.136723, 39.201778, 26.857456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903450, 38.708549, 27.373774> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.237423, 38.875362, 27.517422>,  <36.437809, 38.975449, 27.603611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.237423, 38.875362, 27.517422>,  <35.903450, 38.708549, 27.373774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.237423, 38.875362, 27.517422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324766, -0.153449, 0.933263,
		0.444306, -0.895845, 0.007317,
		0.834937, 0.417031, 0.359118,
		36.487904, 39.000473, 27.625156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201958, 38.306763, 27.878941>,  <35.903450, 38.708549, 27.373774>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.201958, 38.306763, 27.878941> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.361763, 38.663548, 27.963600>,  <36.457645, 38.877617, 28.014395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.361763, 38.663548, 27.963600>,  <36.201958, 38.306763, 27.878941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361763, 38.663548, 27.963600> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255826, -0.113223, 0.960070,
		0.880308, -0.437705, 0.182953,
		0.399512, 0.891962, 0.211648,
		36.481617, 38.931137, 28.027094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.636269, 38.220303, 28.576281>,  <36.201958, 38.306763, 27.878941>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.636269, 38.220303, 28.576281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.535313, 38.603157, 28.519447>,  <36.474739, 38.832870, 28.485348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.535313, 38.603157, 28.519447>,  <36.636269, 38.220303, 28.576281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535313, 38.603157, 28.519447> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265385, 0.072735, 0.961395,
		0.930521, 0.280356, 0.235652,
		-0.252393, 0.957136, -0.142084,
		36.459595, 38.890297, 28.476822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030193, 38.595646, 29.077864>,  <36.636269, 38.220303, 28.576281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.030193, 38.595646, 29.077864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.710735, 38.814259, 28.977089>,  <36.519062, 38.945427, 28.916624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.710735, 38.814259, 28.977089>,  <37.030193, 38.595646, 29.077864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710735, 38.814259, 28.977089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247130, 0.083869, 0.965346,
		0.548718, 0.833231, 0.068082,
		-0.798646, 0.546528, -0.251937,
		36.471142, 38.978218, 28.901508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005264, 38.984638, 29.665998>,  <37.030193, 38.595646, 29.077864>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005264, 38.984638, 29.665998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.659042, 39.089638, 29.495396>,  <36.451309, 39.152637, 29.393034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.659042, 39.089638, 29.495396>,  <37.005264, 38.984638, 29.665998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659042, 39.089638, 29.495396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338132, 0.321907, 0.884332,
		0.369435, 0.909653, -0.189867,
		-0.865555, 0.262503, -0.426506,
		36.399376, 39.168388, 29.367443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833824, 39.547279, 29.984793>,  <37.005264, 38.984638, 29.665998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.833824, 39.547279, 29.984793> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.492504, 39.411236, 29.826700>,  <36.287712, 39.329609, 29.731844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.492504, 39.411236, 29.826700>,  <36.833824, 39.547279, 29.984793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.492504, 39.411236, 29.826700> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460674, 0.136650, 0.876987,
		-0.244266, 0.930403, -0.273284,
		-0.853296, -0.340112, -0.395233,
		36.236515, 39.309200, 29.708130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355343, 40.004803, 30.250555>,  <36.833824, 39.547279, 29.984793>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355343, 40.004803, 30.250555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.154209, 39.675751, 30.144392>,  <36.033527, 39.478321, 30.080694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.154209, 39.675751, 30.144392>,  <36.355343, 40.004803, 30.250555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.154209, 39.675751, 30.144392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619733, 0.129056, 0.774129,
		-0.602567, 0.553741, -0.574703,
		-0.502836, -0.822627, -0.265407,
		36.003357, 39.428963, 30.064770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.707592, 40.181164, 30.506727>,  <36.355343, 40.004803, 30.250555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.707592, 40.181164, 30.506727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.684288, 39.790310, 30.424927>,  <35.670307, 39.555798, 30.375847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.684288, 39.790310, 30.424927>,  <35.707592, 40.181164, 30.506727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684288, 39.790310, 30.424927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463190, -0.155007, 0.872599,
		-0.884342, 0.145557, -0.443567,
		-0.058256, -0.977132, -0.204500,
		35.666813, 39.497169, 30.363577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953712, 39.855419, 30.514603>,  <35.707592, 40.181164, 30.506727>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953712, 39.855419, 30.514603> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.190163, 39.542149, 30.591764>,  <35.332031, 39.354187, 30.638062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.190163, 39.542149, 30.591764>,  <34.953712, 39.855419, 30.514603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.190163, 39.542149, 30.591764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528651, -0.195558, 0.826006,
		-0.609183, -0.590249, -0.529625,
		0.591122, -0.783175, 0.192905,
		35.367500, 39.307198, 30.649635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515759, 39.278107, 30.694210>,  <34.953712, 39.855419, 30.514603>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515759, 39.278107, 30.694210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.866730, 39.138012, 30.825327>,  <35.077312, 39.053955, 30.903997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.866730, 39.138012, 30.825327>,  <34.515759, 39.278107, 30.694210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866730, 39.138012, 30.825327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452644, -0.378246, 0.807492,
		-0.158826, -0.856893, -0.490417,
		0.877432, -0.350235, 0.327792,
		35.129959, 39.032940, 30.923664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.501202, 38.481247, 30.779696>,  <34.515759, 39.278107, 30.694210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.501202, 38.481247, 30.779696> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.794617, 38.595062, 31.026585>,  <34.970665, 38.663353, 31.174717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.794617, 38.595062, 31.026585>,  <34.501202, 38.481247, 30.779696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.794617, 38.595062, 31.026585> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441826, -0.490433, 0.751176,
		0.516444, -0.823720, -0.234034,
		0.733536, 0.284538, 0.617222,
		35.014679, 38.680424, 31.211752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.685753, 37.897018, 31.133654>,  <34.501202, 38.481247, 30.779696>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.685753, 37.897018, 31.133654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.833038, 38.192455, 31.359541>,  <34.921410, 38.369717, 31.495073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.833038, 38.192455, 31.359541>,  <34.685753, 37.897018, 31.133654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833038, 38.192455, 31.359541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292590, -0.484477, 0.824423,
		0.882501, -0.468796, 0.037711,
		0.368216, 0.738588, 0.564716,
		34.943504, 38.414032, 31.528955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.005592, 37.633640, 31.707912>,  <34.685753, 37.897018, 31.133654>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.005592, 37.633640, 31.707912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.911987, 38.011215, 31.801056>,  <34.855824, 38.237759, 31.856941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.911987, 38.011215, 31.801056>,  <35.005592, 37.633640, 31.707912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911987, 38.011215, 31.801056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245451, -0.289109, 0.925294,
		0.940741, 0.159372, 0.299345,
		-0.234009, 0.943936, 0.232859,
		34.841785, 38.294395, 31.870914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.238743, 37.651306, 32.356827>,  <35.005592, 37.633640, 31.707912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.238743, 37.651306, 32.356827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.990421, 37.964310, 32.337688>,  <34.841431, 38.152111, 32.326206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.990421, 37.964310, 32.337688>,  <35.238743, 37.651306, 32.356827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990421, 37.964310, 32.337688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437064, -0.294790, 0.849749,
		0.650832, 0.548435, 0.525011,
		-0.620800, 0.782508, -0.047842,
		34.804180, 38.199062, 32.323338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205864, 37.885681, 32.946705>,  <35.238743, 37.651306, 32.356827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.205864, 37.885681, 32.946705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.862724, 38.022953, 32.793694>,  <34.656841, 38.105316, 32.701885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.862724, 38.022953, 32.793694>,  <35.205864, 37.885681, 32.946705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862724, 38.022953, 32.793694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461410, -0.186593, 0.867343,
		0.226280, 0.920548, 0.318416,
		-0.857845, 0.343183, -0.382528,
		34.605370, 38.125908, 32.678936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136597, 38.245579, 33.682297>,  <35.205864, 37.885681, 32.946705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136597, 38.245579, 33.682297> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.349083, 37.931034, 33.808434>,  <35.476574, 37.742306, 33.884117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.349083, 37.931034, 33.808434>,  <35.136597, 38.245579, 33.682297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349083, 37.931034, 33.808434> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785464, 0.317581, -0.531214,
		0.317581, 0.529880, 0.786365,
		0.531214, -0.786365, 0.315344,
		35.508446, 37.695126, 33.903038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888271, 38.465038, 33.790825>,  <35.136597, 38.245579, 33.682297>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.888271, 38.465038, 33.790825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.923473, 38.066730, 33.780212>,  <35.944595, 37.827747, 33.773846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.923473, 38.066730, 33.780212>,  <35.888271, 38.465038, 33.790825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923473, 38.066730, 33.780212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936891, 0.091792, -0.337357,
		0.338364, 0.004835, 0.941003,
		0.088008, -0.995767, -0.026529,
		35.949875, 37.768002, 33.772255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575775, 38.379631, 33.868969>,  <35.888271, 38.465038, 33.790825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575775, 38.379631, 33.868969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.431000, 38.047997, 33.698505>,  <36.344135, 37.849014, 33.596226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.431000, 38.047997, 33.698505>,  <36.575775, 38.379631, 33.868969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431000, 38.047997, 33.698505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857912, -0.117410, -0.500202,
		0.364675, -0.546652, 0.753780,
		-0.361937, -0.829088, -0.426163,
		36.322418, 37.799271, 33.570656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.172264, 37.873318, 33.835552>,  <36.575775, 38.379631, 33.868969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.172264, 37.873318, 33.835552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.916328, 37.726158, 33.565662>,  <36.762768, 37.637863, 33.403728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.916328, 37.726158, 33.565662>,  <37.172264, 37.873318, 33.835552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916328, 37.726158, 33.565662> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766215, -0.237567, -0.597057,
		0.059366, -0.899005, 0.433897,
		-0.639837, -0.367902, -0.674727,
		36.724377, 37.615788, 33.363243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576839, 37.349392, 33.469952>,  <37.172264, 37.873318, 33.835552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576839, 37.349392, 33.469952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.281384, 37.446159, 33.218273>,  <37.104111, 37.504219, 33.067268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.281384, 37.446159, 33.218273>,  <37.576839, 37.349392, 33.469952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281384, 37.446159, 33.218273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655713, 0.041344, -0.753878,
		-0.156368, -0.969414, -0.189170,
		-0.738641, 0.241923, -0.629193,
		37.059792, 37.518738, 33.029514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582333, 36.849850, 32.932114>,  <37.576839, 37.349392, 33.469952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582333, 36.849850, 32.932114> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.409397, 37.166821, 32.759998>,  <37.305637, 37.357002, 32.656727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.409397, 37.166821, 32.759998>,  <37.582333, 36.849850, 32.932114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409397, 37.166821, 32.759998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580859, -0.120250, -0.805073,
		-0.689701, -0.598001, -0.408298,
		-0.432336, 0.792424, -0.430290,
		37.279697, 37.404549, 32.630913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430176, 36.665218, 32.264050>,  <37.582333, 36.849850, 32.932114>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.430176, 36.665218, 32.264050> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.399513, 37.063049, 32.235954>,  <37.381115, 37.301750, 32.219097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.399513, 37.063049, 32.235954>,  <37.430176, 36.665218, 32.264050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.399513, 37.063049, 32.235954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508103, -0.021640, -0.861024,
		-0.857878, -0.101691, -0.503691,
		-0.076659, 0.994581, -0.070234,
		37.376514, 37.361423, 32.214886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413559, 36.861530, 31.547728>,  <37.430176, 36.665218, 32.264050>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413559, 36.861530, 31.547728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.459484, 37.224770, 31.708817>,  <37.487038, 37.442711, 31.805470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.459484, 37.224770, 31.708817>,  <37.413559, 36.861530, 31.547728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.459484, 37.224770, 31.708817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461165, 0.310346, -0.831271,
		-0.879856, 0.281159, -0.383150,
		0.114810, 0.908094, 0.402721,
		37.493927, 37.497196, 31.829632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446529, 37.270817, 31.007746>,  <37.413559, 36.861530, 31.547728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446529, 37.270817, 31.007746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.581924, 37.518909, 31.290796>,  <37.663162, 37.667767, 31.460627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.581924, 37.518909, 31.290796>,  <37.446529, 37.270817, 31.007746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.581924, 37.518909, 31.290796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559699, 0.471814, -0.681270,
		-0.756414, 0.626662, -0.187439,
		0.338490, 0.620232, 0.707628,
		37.683472, 37.704979, 31.503084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348003, 37.926754, 30.743273>,  <37.446529, 37.270817, 31.007746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.348003, 37.926754, 30.743273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.642582, 37.947880, 31.013046>,  <37.819328, 37.960556, 31.174910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.642582, 37.947880, 31.013046>,  <37.348003, 37.926754, 30.743273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642582, 37.947880, 31.013046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595793, 0.421591, -0.683587,
		-0.320440, 0.905246, 0.279011,
		0.736443, 0.052816, 0.674434,
		37.863514, 37.963726, 31.215376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611732, 38.582310, 30.709976>,  <37.348003, 37.926754, 30.743273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.611732, 38.582310, 30.709976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.914543, 38.370235, 30.862719>,  <38.096230, 38.242992, 30.954365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.914543, 38.370235, 30.862719>,  <37.611732, 38.582310, 30.709976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914543, 38.370235, 30.862719> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606882, 0.354024, -0.711591,
		0.242089, 0.770435, 0.589765,
		0.757025, -0.530186, 0.381857,
		38.141651, 38.211178, 30.977276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104877, 38.940468, 30.612076>,  <37.611732, 38.582310, 30.709976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.104877, 38.940468, 30.612076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.319027, 38.622009, 30.724871>,  <38.447517, 38.430935, 30.792547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.319027, 38.622009, 30.724871>,  <38.104877, 38.940468, 30.612076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.319027, 38.622009, 30.724871> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771898, 0.325687, -0.545987,
		0.342847, 0.509975, 0.788911,
		0.535378, -0.796149, 0.281988,
		38.479641, 38.383163, 30.809467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.848114, 39.171177, 30.810471>,  <38.104877, 38.940468, 30.612076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.848114, 39.171177, 30.810471> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.827068, 38.787163, 30.700510>,  <38.814442, 38.556755, 30.634535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.827068, 38.787163, 30.700510>,  <38.848114, 39.171177, 30.810471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.827068, 38.787163, 30.700510> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793577, 0.126905, -0.595089,
		0.606191, -0.249467, 0.755182,
		-0.052619, -0.960032, -0.274900,
		38.811283, 38.499153, 30.618040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.554436, 38.877941, 30.735025>,  <38.848114, 39.171177, 30.810471>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.554436, 38.877941, 30.735025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.328247, 38.617554, 30.532450>,  <39.192535, 38.461319, 30.410904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.328247, 38.617554, 30.532450>,  <39.554436, 38.877941, 30.735025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.328247, 38.617554, 30.532450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594264, 0.104214, -0.797489,
		0.571921, -0.751914, 0.327919,
		-0.565470, -0.650972, -0.506438,
		39.158607, 38.422264, 30.380518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028522, 38.615002, 30.221743>,  <39.554436, 38.877941, 30.735025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.028522, 38.615002, 30.221743> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.684547, 38.497532, 30.054768>,  <39.478161, 38.427048, 29.954582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.684547, 38.497532, 30.054768>,  <40.028522, 38.615002, 30.221743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.684547, 38.497532, 30.054768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402285, 0.113347, -0.908471,
		0.314112, -0.949161, 0.020670,
		-0.859942, -0.293677, -0.417437,
		39.426563, 38.409428, 29.929537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.158115, 38.037251, 29.733446>,  <40.028522, 38.615002, 30.221743>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.158115, 38.037251, 29.733446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.829441, 38.230236, 29.612082>,  <39.632236, 38.346027, 29.539263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.829441, 38.230236, 29.612082>,  <40.158115, 38.037251, 29.733446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829441, 38.230236, 29.612082> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435923, 0.189066, -0.879901,
		-0.367158, -0.855266, -0.365671,
		-0.821685, 0.482467, -0.303413,
		39.582935, 38.374977, 29.521057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.948517, 37.708828, 29.153580>,  <40.158115, 38.037251, 29.733446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.948517, 37.708828, 29.153580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.709270, 38.024246, 29.096373>,  <39.565723, 38.213497, 29.062048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.709270, 38.024246, 29.096373>,  <39.948517, 37.708828, 29.153580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.709270, 38.024246, 29.096373> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380652, 0.122491, -0.916570,
		-0.705239, -0.602654, -0.373425,
		-0.598116, 0.788545, -0.143016,
		39.529835, 38.260811, 29.053467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.588531, 37.608624, 28.517082>,  <39.948517, 37.708828, 29.153580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.588531, 37.608624, 28.517082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.596840, 38.000252, 28.598074>,  <39.601826, 38.235229, 28.646669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.596840, 38.000252, 28.598074>,  <39.588531, 37.608624, 28.517082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.596840, 38.000252, 28.598074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414300, 0.175888, -0.892983,
		-0.909904, 0.102432, -0.401974,
		0.020768, 0.979066, 0.202479,
		39.603069, 38.293972, 28.658817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.135063, 37.966686, 28.091381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.361401, 38.271885, 28.216383>,  <39.497204, 38.455002, 28.291384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.361401, 38.271885, 28.216383>,  <39.135063, 37.966686, 28.091381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.361401, 38.271885, 28.216383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238945, 0.211006, -0.947830,
		-0.789130, 0.610996, -0.062917,
		0.565844, 0.762995, 0.312505,
		39.531155, 38.500782, 28.310135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.022308, 38.345016, 27.557552>,  <39.135063, 37.966686, 28.091381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.022308, 38.345016, 27.557552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.350014, 38.502342, 27.724457>,  <39.546638, 38.596737, 27.824598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.350014, 38.502342, 27.724457>,  <39.022308, 38.345016, 27.557552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.350014, 38.502342, 27.724457> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263982, 0.387276, -0.883363,
		-0.509032, 0.833861, 0.213455,
		0.819268, 0.393312, 0.417260,
		39.595795, 38.620335, 27.849634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.088604, 38.990936, 27.312639>,  <39.022308, 38.345016, 27.557552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.088604, 38.990936, 27.312639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.470715, 38.954655, 27.425220>,  <39.699982, 38.932884, 27.492769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.470715, 38.954655, 27.425220>,  <39.088604, 38.990936, 27.312639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.470715, 38.954655, 27.425220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295670, 0.277978, -0.913952,
		0.004660, 0.956296, 0.292364,
		0.955279, -0.090703, 0.281452,
		39.757298, 38.927444, 27.509657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.493229, 39.608025, 27.021776>,  <39.088604, 38.990936, 27.312639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.493229, 39.608025, 27.021776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.768063, 39.322918, 27.078180>,  <39.932961, 39.151855, 27.112022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.768063, 39.322918, 27.078180>,  <39.493229, 39.608025, 27.021776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.768063, 39.322918, 27.078180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454430, 0.270121, -0.848839,
		0.566933, 0.647301, 0.509498,
		0.687081, -0.712766, 0.141013,
		39.974186, 39.109089, 27.120483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.272030, 39.876907, 26.891159>,  <39.493229, 39.608025, 27.021776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.272030, 39.876907, 26.891159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.305359, 39.480820, 26.846384>,  <40.325356, 39.243168, 26.819519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.305359, 39.480820, 26.846384>,  <40.272030, 39.876907, 26.891159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.305359, 39.480820, 26.846384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540948, 0.139283, -0.829443,
		0.836918, 0.008560, 0.547261,
		0.083324, -0.990216, -0.111938,
		40.330357, 39.183754, 26.812803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.011005, 39.733414, 26.665133>,  <40.272030, 39.876907, 26.891159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.011005, 39.733414, 26.665133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.813988, 39.400627, 26.562967>,  <40.695778, 39.200954, 26.501669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.813988, 39.400627, 26.562967>,  <41.011005, 39.733414, 26.665133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.813988, 39.400627, 26.562967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549379, -0.069614, -0.832669,
		0.674972, -0.550441, 0.491353,
		-0.492540, -0.831967, -0.255413,
		40.666225, 39.151035, 26.486343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.465588, 39.338318, 26.251019>,  <41.011005, 39.733414, 26.665133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.465588, 39.338318, 26.251019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.129871, 39.132561, 26.180597>,  <40.928444, 39.009106, 26.138344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.129871, 39.132561, 26.180597>,  <41.465588, 39.338318, 26.251019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.129871, 39.132561, 26.180597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438783, -0.449644, -0.778003,
		0.321041, -0.730217, 0.603089,
		-0.839287, -0.514396, -0.176053,
		40.878086, 38.978241, 26.127781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.660332, 38.666016, 26.094437>,  <41.465588, 39.338318, 26.251019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.660332, 38.666016, 26.094437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.298100, 38.710281, 25.930645>,  <41.080761, 38.736839, 25.832371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.298100, 38.710281, 25.930645>,  <41.660332, 38.666016, 26.094437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.298100, 38.710281, 25.930645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356307, -0.325324, -0.875905,
		-0.230141, -0.939105, 0.255179,
		-0.905583, 0.110660, -0.409480,
		41.026424, 38.743481, 25.807800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.326485, 37.988010, 25.844688>,  <41.660332, 38.666016, 26.094437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.326485, 37.988010, 25.844688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.174690, 38.282581, 25.620663>,  <41.083614, 38.459324, 25.486248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.174690, 38.282581, 25.620663>,  <41.326485, 37.988010, 25.844688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.174690, 38.282581, 25.620663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345732, -0.448617, -0.824143,
		-0.858172, -0.506382, -0.084361,
		-0.379486, 0.736423, -0.560063,
		41.060844, 38.503510, 25.452644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.179276, 37.671131, 25.235620>,  <41.326485, 37.988010, 25.844688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.179276, 37.671131, 25.235620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.132088, 38.048065, 25.110350>,  <41.103775, 38.274227, 25.035187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.132088, 38.048065, 25.110350>,  <41.179276, 37.671131, 25.235620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.132088, 38.048065, 25.110350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453007, -0.229577, -0.861440,
		-0.883667, -0.243498, -0.399803,
		-0.117974, 0.942339, -0.313176,
		41.096695, 38.330769, 25.016397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.860336, 37.600525, 24.467924>,  <41.179276, 37.671131, 25.235620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.860336, 37.600525, 24.467924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.049137, 37.944767, 24.544409>,  <41.162418, 38.151314, 24.590300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.049137, 37.944767, 24.544409>,  <40.860336, 37.600525, 24.467924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.049137, 37.944767, 24.544409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412339, -0.023802, -0.910720,
		-0.779223, 0.508708, -0.366098,
		0.472004, 0.860610, 0.191214,
		41.190739, 38.202950, 24.601772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.948948, 38.006824, 23.778151>,  <40.860336, 37.600525, 24.467924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.948948, 38.006824, 23.778151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.217419, 38.178337, 24.020031>,  <41.378502, 38.281246, 24.165159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.217419, 38.178337, 24.020031>,  <40.948948, 38.006824, 23.778151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.217419, 38.178337, 24.020031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617967, 0.126907, -0.775894,
		-0.409432, 0.894449, -0.179798,
		0.671180, 0.428785, 0.604699,
		41.418774, 38.306973, 24.201441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.408798, 38.475754, 23.386978>,  <40.948948, 38.006824, 23.778151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.408798, 38.475754, 23.386978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.625523, 38.455822, 23.722588>,  <41.755558, 38.443863, 23.923954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.625523, 38.455822, 23.722588>,  <41.408798, 38.475754, 23.386978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.625523, 38.455822, 23.722588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838113, 0.107243, -0.534850,
		-0.063330, 0.992984, 0.099865,
		0.541807, -0.049827, 0.839024,
		41.788063, 38.440872, 23.974295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.812748, 39.084450, 23.368687>,  <41.408798, 38.475754, 23.386978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.812748, 39.084450, 23.368687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.975395, 38.829441, 23.630444>,  <42.072983, 38.676437, 23.787497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.975395, 38.829441, 23.630444>,  <41.812748, 39.084450, 23.368687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.975395, 38.829441, 23.630444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903136, 0.172403, -0.393220,
		0.137867, 0.750894, 0.645872,
		0.406617, -0.637523, 0.654391,
		42.097382, 38.638184, 23.826761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.365967, 39.451958, 23.674503>,  <41.812748, 39.084450, 23.368687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.365967, 39.451958, 23.674503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.463745, 39.070816, 23.746412>,  <42.522411, 38.842133, 23.789558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.463745, 39.070816, 23.746412>,  <42.365967, 39.451958, 23.674503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.463745, 39.070816, 23.746412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937142, 0.184537, -0.296159,
		0.249022, 0.240867, 0.938068,
		0.244444, -0.952853, 0.179773,
		42.537079, 38.784962, 23.800344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.079628, 39.548054, 23.836637>,  <42.365967, 39.451958, 23.674503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.079628, 39.548054, 23.836637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.033291, 39.165310, 23.730049>,  <43.005489, 38.935665, 23.666096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.033291, 39.165310, 23.730049>,  <43.079628, 39.548054, 23.836637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.033291, 39.165310, 23.730049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923456, -0.004948, -0.383672,
		0.365801, -0.290519, 0.884188,
		-0.115839, -0.956857, -0.266471,
		42.998539, 38.878254, 23.650108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.663074, 39.147232, 24.140089>,  <43.079628, 39.548054, 23.836637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.663074, 39.147232, 24.140089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.518921, 38.950184, 23.823242>,  <43.432430, 38.831955, 23.633133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.518921, 38.950184, 23.823242>,  <43.663074, 39.147232, 24.140089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.518921, 38.950184, 23.823242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915839, -0.025637, -0.400726,
		0.177098, -0.869867, 0.460400,
		-0.360381, -0.492620, -0.792118,
		43.410805, 38.802399, 23.585608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.114609, 38.698009, 24.075701>,  <43.663074, 39.147232, 24.140089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.114609, 38.698009, 24.075701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.930916, 38.672047, 23.721323>,  <43.820702, 38.656467, 23.508698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.930916, 38.672047, 23.721323>,  <44.114609, 38.698009, 24.075701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.930916, 38.672047, 23.721323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880185, 0.101401, -0.463673,
		0.119931, -0.992726, 0.010563,
		-0.459229, -0.064906, -0.885944,
		43.793148, 38.652576, 23.455540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.522511, 38.200825, 23.671692>,  <44.114609, 38.698009, 24.075701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.522511, 38.200825, 23.671692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.316357, 38.443562, 23.429659>,  <44.192665, 38.589203, 23.284439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.316357, 38.443562, 23.429659>,  <44.522511, 38.200825, 23.671692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.316357, 38.443562, 23.429659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852338, 0.289741, -0.435397,
		-0.088899, -0.740131, -0.666560,
		-0.515381, 0.606841, -0.605084,
		44.161743, 38.625614, 23.248133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.849136, 38.091202, 23.050844>,  <44.522511, 38.200825, 23.671692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.849136, 38.091202, 23.050844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.665096, 38.443161, 23.003359>,  <44.554672, 38.654335, 22.974867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.665096, 38.443161, 23.003359>,  <44.849136, 38.091202, 23.050844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.665096, 38.443161, 23.003359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771790, 0.330259, -0.543387,
		-0.438916, -0.341636, -0.831046,
		-0.460101, 0.879894, -0.118715,
		44.527065, 38.707130, 22.967745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.906284, 38.259636, 22.389589>,  <44.849136, 38.091202, 23.050844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.906284, 38.259636, 22.389589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.847172, 38.609367, 22.574501>,  <44.811703, 38.819206, 22.685448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.847172, 38.609367, 22.574501>,  <44.906284, 38.259636, 22.389589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.847172, 38.609367, 22.574501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766024, 0.396846, -0.505687,
		-0.625593, 0.279384, -0.728408,
		-0.147785, 0.874333, 0.462279,
		44.802837, 38.871666, 22.713184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.874874, 38.743988, 21.794125>,  <44.906284, 38.259636, 22.389589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.874874, 38.743988, 21.794125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.946587, 38.935886, 22.137684>,  <44.989613, 39.051025, 22.343819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.946587, 38.935886, 22.137684>,  <44.874874, 38.743988, 21.794125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.946587, 38.935886, 22.137684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539413, 0.682176, -0.493630,
		-0.822735, 0.551797, -0.136482,
		0.179279, 0.479746, 0.858896,
		45.000370, 39.079811, 22.395353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.741108, 39.378277, 21.647060>,  <44.874874, 38.743988, 21.794125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.741108, 39.378277, 21.647060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.953850, 39.401882, 21.984970>,  <45.081493, 39.416046, 22.187716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.953850, 39.401882, 21.984970>,  <44.741108, 39.378277, 21.647060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.953850, 39.401882, 21.984970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612280, 0.662348, -0.431749,
		-0.585014, 0.746868, 0.316142,
		0.531856, 0.059012, 0.844776,
		45.113407, 39.419586, 22.238403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.967514, 40.133244, 21.791628>,  <44.741108, 39.378277, 21.647060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.967514, 40.133244, 21.791628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.192165, 39.835583, 21.936300>,  <45.326958, 39.656986, 22.023104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.192165, 39.835583, 21.936300>,  <44.967514, 40.133244, 21.791628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.192165, 39.835583, 21.936300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817609, 0.432148, -0.380477,
		0.126833, 0.509401, 0.851131,
		0.561630, -0.744150, 0.361680,
		45.360653, 39.612339, 22.044804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.401852, 40.606533, 21.600239>,  <44.967514, 40.133244, 21.791628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.401852, 40.606533, 21.600239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.268044, 40.815056, 21.286211>,  <44.187759, 40.940170, 21.097794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.268044, 40.815056, 21.286211>,  <44.401852, 40.606533, 21.600239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.268044, 40.815056, 21.286211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941590, -0.219211, 0.255646,
		-0.038825, 0.824733, 0.564188,
		-0.334516, 0.521308, -0.785071,
		44.167690, 40.971447, 21.050690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.999577, 41.231468, 21.769575>,  <44.401852, 40.606533, 21.600239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.999577, 41.231468, 21.769575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.855480, 41.115067, 21.415052>,  <43.769024, 41.045227, 21.202339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.855480, 41.115067, 21.415052>,  <43.999577, 41.231468, 21.769575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.855480, 41.115067, 21.415052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907668, -0.109963, 0.405028,
		-0.215327, 0.950381, -0.224523,
		-0.360241, -0.291005, -0.886308,
		43.747406, 41.027763, 21.149160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.303581, 41.623871, 21.656883>,  <43.999577, 41.231468, 21.769575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.303581, 41.623871, 21.656883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.320881, 41.283840, 21.446932>,  <43.331261, 41.079823, 21.320961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.320881, 41.283840, 21.446932>,  <43.303581, 41.623871, 21.656883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.320881, 41.283840, 21.446932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936480, -0.217515, 0.275125,
		-0.348046, 0.479638, -0.805488,
		0.043245, -0.850079, -0.524877,
		43.333855, 41.028816, 21.289469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.748161, 41.621326, 21.144382>,  <43.303581, 41.623871, 21.656883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.748161, 41.621326, 21.144382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.848770, 41.240929, 21.216328>,  <42.909134, 41.012691, 21.259495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.848770, 41.240929, 21.216328>,  <42.748161, 41.621326, 21.144382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.848770, 41.240929, 21.216328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.958746, -0.219377, 0.180774,
		-0.132456, -0.217914, -0.966938,
		0.251517, -0.950993, 0.179866,
		42.924225, 40.955631, 21.270287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.224476, 41.294144, 20.784880>,  <42.748161, 41.621326, 21.144382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.224476, 41.294144, 20.784880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.382812, 40.998901, 21.003428>,  <42.477814, 40.821758, 21.134556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.382812, 40.998901, 21.003428>,  <42.224476, 41.294144, 20.784880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.382812, 40.998901, 21.003428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915975, -0.274841, 0.292322,
		-0.065598, -0.616173, -0.784874,
		0.395837, -0.738101, 0.546370,
		42.501564, 40.777470, 21.167339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.932426, 40.730057, 20.594131>,  <42.224476, 41.294144, 20.784880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.932426, 40.730057, 20.594131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.078106, 40.625820, 20.951778>,  <42.165516, 40.563278, 21.166367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.078106, 40.625820, 20.951778>,  <41.932426, 40.730057, 20.594131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.078106, 40.625820, 20.951778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882812, -0.402400, 0.242318,
		0.296647, -0.877591, -0.376608,
		0.364203, -0.260591, 0.894119,
		42.187366, 40.547642, 21.220015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.504738, 40.095314, 20.792021>,  <41.932426, 40.730057, 20.594131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.504738, 40.095314, 20.792021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.689503, 40.238396, 21.116659>,  <41.800362, 40.324245, 21.311443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.689503, 40.238396, 21.116659>,  <41.504738, 40.095314, 20.792021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.689503, 40.238396, 21.116659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714338, -0.392341, 0.579474,
		0.525701, -0.847419, 0.074294,
		0.461909, 0.357702, 0.811597,
		41.828075, 40.345707, 21.360138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.356255, 39.651421, 21.331043>,  <41.504738, 40.095314, 20.792021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.356255, 39.651421, 21.331043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.448658, 39.980408, 21.538958>,  <41.504101, 40.177799, 21.663706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.448658, 39.980408, 21.538958>,  <41.356255, 39.651421, 21.331043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.448658, 39.980408, 21.538958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784269, -0.158764, 0.599763,
		0.575811, -0.546201, 0.608364,
		0.231005, 0.822471, 0.519787,
		41.517960, 40.227150, 21.694893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.469204, 39.319107, 22.017365>,  <41.356255, 39.651421, 21.331043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.469204, 39.319107, 22.017365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.370834, 39.706799, 22.021656>,  <41.311813, 39.939415, 22.024231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.370834, 39.706799, 22.021656>,  <41.469204, 39.319107, 22.017365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.370834, 39.706799, 22.021656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670760, -0.178161, 0.719958,
		0.699716, 0.169858, 0.693935,
		-0.245923, 0.969230, 0.010728,
		41.297058, 39.997566, 22.024874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.248840, 39.411919, 22.598660>,  <41.469204, 39.319107, 22.017365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.248840, 39.411919, 22.598660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.113590, 39.770195, 22.483133>,  <41.032440, 39.985161, 22.413816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.113590, 39.770195, 22.483133>,  <41.248840, 39.411919, 22.598660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.113590, 39.770195, 22.483133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759745, -0.078682, 0.645443,
		0.555390, 0.437668, 0.707099,
		-0.338126, 0.895687, -0.288817,
		41.012154, 40.038902, 22.396488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.163845, 39.699947, 23.232336>,  <41.248840, 39.411919, 22.598660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.163845, 39.699947, 23.232336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.968555, 39.902622, 22.948111>,  <40.851383, 40.024227, 22.777575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.968555, 39.902622, 22.948111>,  <41.163845, 39.699947, 23.232336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.968555, 39.902622, 22.948111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841473, -0.057390, 0.537243,
		0.231436, 0.860216, 0.454385,
		-0.488223, 0.506690, -0.710566,
		40.822090, 40.054630, 22.734941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.797577, 40.244740, 23.590883>,  <41.163845, 39.699947, 23.232336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.797577, 40.244740, 23.590883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.596840, 40.218613, 23.245888>,  <40.476398, 40.202938, 23.038891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.596840, 40.218613, 23.245888>,  <40.797577, 40.244740, 23.590883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.596840, 40.218613, 23.245888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859498, -0.074202, 0.505724,
		-0.097030, 0.995102, -0.018901,
		-0.501845, -0.065315, -0.862488,
		40.446285, 40.199017, 22.987141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104656, 40.724957, 23.611378>,  <40.797577, 40.244740, 23.590883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.104656, 40.724957, 23.611378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.089912, 40.403042, 23.374411>,  <40.081066, 40.209892, 23.232229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.089912, 40.403042, 23.374411>,  <40.104656, 40.724957, 23.611378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.089912, 40.403042, 23.374411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699518, -0.402586, 0.590422,
		-0.713663, 0.436169, -0.548125,
		-0.036857, -0.804786, -0.592419,
		40.078854, 40.161606, 23.196686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.337513, 40.664196, 23.621473>,  <40.104656, 40.724957, 23.611378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.337513, 40.664196, 23.621473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.478752, 40.337528, 23.438883>,  <39.563496, 40.141525, 23.329329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.478752, 40.337528, 23.438883>,  <39.337513, 40.664196, 23.621473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.478752, 40.337528, 23.438883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631790, -0.567991, 0.527474,
		-0.690046, 0.102147, -0.716521,
		0.353098, -0.816672, -0.456475,
		39.584682, 40.092525, 23.301941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716614, 40.410660, 23.379709>,  <39.337513, 40.664196, 23.621473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.716614, 40.410660, 23.379709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.954075, 40.089043, 23.392920>,  <39.096550, 39.896072, 23.400846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.954075, 40.089043, 23.392920>,  <38.716614, 40.410660, 23.379709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.954075, 40.089043, 23.392920> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627795, -0.437068, 0.644084,
		-0.503439, -0.403093, -0.764241,
		0.593652, -0.804044, 0.033023,
		39.132172, 39.847828, 23.402828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250374, 39.828106, 23.392948>,  <38.716614, 40.410660, 23.379709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250374, 39.828106, 23.392948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.592155, 39.697792, 23.554823>,  <38.797226, 39.619602, 23.651949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.592155, 39.697792, 23.554823>,  <38.250374, 39.828106, 23.392948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592155, 39.697792, 23.554823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518107, -0.591942, 0.617389,
		0.038414, -0.737202, -0.674580,
		0.854453, -0.325789, 0.404688,
		38.848492, 39.600056, 23.676229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174129, 39.148701, 23.464588>,  <38.250374, 39.828106, 23.392948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.174129, 39.148701, 23.464588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.436478, 39.268642, 23.741693>,  <38.593887, 39.340607, 23.907957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.436478, 39.268642, 23.741693>,  <38.174129, 39.148701, 23.464588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.436478, 39.268642, 23.741693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544171, -0.448228, 0.709204,
		0.523170, -0.842129, -0.130811,
		0.655874, 0.299851, 0.692762,
		38.633240, 39.358597, 23.949522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273235, 38.582523, 23.908569>,  <38.174129, 39.148701, 23.464588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273235, 38.582523, 23.908569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.414715, 38.885765, 24.127722>,  <38.499603, 39.067711, 24.259212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.414715, 38.885765, 24.127722>,  <38.273235, 38.582523, 23.908569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.414715, 38.885765, 24.127722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318816, -0.452957, 0.832578,
		0.879349, -0.469154, 0.081486,
		0.353698, 0.758106, 0.547881,
		38.520824, 39.113197, 24.292086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372108, 38.160744, 24.438253>,  <38.273235, 38.582523, 23.908569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.372108, 38.160744, 24.438253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.400677, 38.532375, 24.583422>,  <38.417816, 38.755356, 24.670523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.400677, 38.532375, 24.583422>,  <38.372108, 38.160744, 24.438253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.400677, 38.532375, 24.583422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187996, -0.344789, 0.919662,
		0.979570, -0.133906, 0.150039,
		0.071416, 0.929080, 0.362919,
		38.422100, 38.811100, 24.692297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823383, 38.058510, 24.979902>,  <38.372108, 38.160744, 24.438253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.823383, 38.058510, 24.979902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.631416, 38.405781, 25.030424>,  <38.516235, 38.614143, 25.060738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.631416, 38.405781, 25.030424>,  <38.823383, 38.058510, 24.979902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.631416, 38.405781, 25.030424> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107933, -0.201300, 0.973565,
		0.870648, 0.453601, 0.190312,
		-0.479920, 0.868173, 0.126303,
		38.487442, 38.666233, 25.068316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.008442, 37.201069, 30.919512> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.853542, 37.569504, 30.903357>,  <38.760601, 37.790565, 30.893663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.853542, 37.569504, 30.903357>,  <39.008442, 37.201069, 30.919512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853542, 37.569504, 30.903357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518757, -0.181468, 0.835440,
		0.762185, 0.344479, 0.548095,
		-0.387253, 0.921088, -0.040389,
		38.737366, 37.845829, 30.891239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978420, 37.502804, 31.586267>,  <39.008442, 37.201069, 30.919512>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.978420, 37.502804, 31.586267> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.724373, 37.737442, 31.385262>,  <38.571945, 37.878227, 31.264658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.724373, 37.737442, 31.385262>,  <38.978420, 37.502804, 31.586267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.724373, 37.737442, 31.385262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684884, -0.126861, 0.717524,
		0.357149, 0.799879, 0.482325,
		-0.635121, 0.586600, -0.502516,
		38.533836, 37.913422, 31.234507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782997, 37.918907, 32.069172>,  <38.978420, 37.502804, 31.586267>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.782997, 37.918907, 32.069172> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.494560, 37.921108, 31.792044>,  <38.321499, 37.922428, 31.625767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.494560, 37.921108, 31.792044>,  <38.782997, 37.918907, 32.069172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.494560, 37.921108, 31.792044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692719, 0.012913, 0.721092,
		0.012913, 0.999901, -0.005501,
		-0.721092, 0.005501, -0.692818,
		38.278233, 37.922760, 31.584198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345551, 38.402649, 32.393288>,  <38.782997, 37.918907, 32.069172>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345551, 38.402649, 32.393288> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.158295, 38.172672, 32.124874>,  <38.045940, 38.034687, 31.963825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.158295, 38.172672, 32.124874>,  <38.345551, 38.402649, 32.393288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.158295, 38.172672, 32.124874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824432, 0.010851, 0.565857,
		-0.318053, 0.818124, -0.479079,
		-0.468139, -0.574940, -0.671036,
		38.017853, 38.000191, 31.923563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783165, 38.662720, 32.222980>,  <38.345551, 38.402649, 32.393288>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.783165, 38.662720, 32.222980> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.693657, 38.297241, 32.087280>,  <37.639950, 38.077953, 32.005859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.693657, 38.297241, 32.087280>,  <37.783165, 38.662720, 32.222980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.693657, 38.297241, 32.087280> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792038, -0.032369, 0.609613,
		-0.567980, 0.405114, -0.716436,
		-0.223772, -0.913693, -0.339251,
		37.626526, 38.023132, 31.985504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157654, 38.630833, 32.118561>,  <37.783165, 38.662720, 32.222980>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157654, 38.630833, 32.118561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.238068, 38.239468, 32.137749>,  <37.286316, 38.004650, 32.149261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.238068, 38.239468, 32.137749>,  <37.157654, 38.630833, 32.118561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238068, 38.239468, 32.137749> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848075, -0.149331, 0.508398,
		-0.490258, -0.142891, -0.859785,
		0.201038, -0.978408, 0.047972,
		37.298378, 37.945946, 32.152142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493019, 38.246204, 32.027039>,  <37.157654, 38.630833, 32.118561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.493019, 38.246204, 32.027039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.733807, 38.001152, 32.231907>,  <36.878281, 37.854118, 32.354828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.733807, 38.001152, 32.231907>,  <36.493019, 38.246204, 32.027039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733807, 38.001152, 32.231907> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792212, -0.377727, 0.479293,
		-0.100170, -0.694266, -0.712714,
		0.601968, -0.612631, 0.512169,
		36.914398, 37.817364, 32.385559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093231, 37.680168, 32.180134>,  <36.493019, 38.246204, 32.027039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093231, 37.680168, 32.180134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.385456, 37.660435, 32.452560>,  <36.560791, 37.648594, 32.616016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.385456, 37.660435, 32.452560>,  <36.093231, 37.680168, 32.180134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.385456, 37.660435, 32.452560> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647162, -0.368231, 0.667523,
		0.217855, -0.928424, -0.300944,
		0.730561, -0.049336, 0.681063,
		36.604626, 37.645634, 32.656879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889275, 37.158821, 32.469059>,  <36.093231, 37.680168, 32.180134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.889275, 37.158821, 32.469059> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.153698, 37.306442, 32.730381>,  <36.312351, 37.395016, 32.887173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.153698, 37.306442, 32.730381>,  <35.889275, 37.158821, 32.469059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153698, 37.306442, 32.730381> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533909, -0.380410, 0.755135,
		0.527206, -0.847993, -0.054433,
		0.661056, 0.369049, 0.653305,
		36.352016, 37.417156, 32.926373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915951, 36.698536, 33.037670>,  <35.889275, 37.158821, 32.469059>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.915951, 36.698536, 33.037670> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.041061, 37.024990, 33.232025>,  <36.116127, 37.220863, 33.348640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.041061, 37.024990, 33.232025>,  <35.915951, 36.698536, 33.037670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.041061, 37.024990, 33.232025> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389601, -0.356304, 0.849270,
		0.866246, -0.454934, 0.206526,
		0.312775, 0.816139, 0.485889,
		36.134895, 37.269833, 33.377792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213013, 36.488739, 33.646671>,  <35.915951, 36.698536, 33.037670>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213013, 36.488739, 33.646671> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.130951, 36.877666, 33.691402>,  <36.081715, 37.111023, 33.718239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.130951, 36.877666, 33.691402>,  <36.213013, 36.488739, 33.646671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130951, 36.877666, 33.691402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540776, -0.207840, 0.815085,
		0.815765, 0.106746, 0.568447,
		-0.205153, 0.972321, 0.111823,
		36.069405, 37.169361, 33.724949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091339, 36.615482, 34.411800>,  <36.213013, 36.488739, 33.646671>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.091339, 36.615482, 34.411800> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.909485, 36.926521, 34.238068>,  <35.800373, 37.113144, 34.133827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.909485, 36.926521, 34.238068>,  <36.091339, 36.615482, 34.411800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.909485, 36.926521, 34.238068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724891, -0.039697, 0.687718,
		0.517529, 0.627503, 0.581724,
		-0.454638, 0.777601, -0.434327,
		35.773094, 37.159801, 34.107769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833515, 37.183342, 34.915314>,  <36.091339, 36.615482, 34.411800>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.833515, 37.183342, 34.915314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.596745, 37.180489, 34.592930>,  <35.454681, 37.178776, 34.399498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.596745, 37.180489, 34.592930>,  <35.833515, 37.183342, 34.915314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596745, 37.180489, 34.592930> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805970, -0.002076, 0.591952,
		-0.005894, 0.999972, -0.004518,
		-0.591927, -0.007130, -0.805960,
		35.419167, 37.178349, 34.351143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.421078, 37.817089, 34.877888>,  <35.833515, 37.183342, 34.915314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.421078, 37.817089, 34.877888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.247932, 37.513382, 34.683510>,  <35.144043, 37.331158, 34.566883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.247932, 37.513382, 34.683510>,  <35.421078, 37.817089, 34.877888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247932, 37.513382, 34.683510> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793042, 0.064435, 0.605750,
		-0.428615, 0.647581, -0.630023,
		-0.432867, -0.759268, -0.485941,
		35.118073, 37.285603, 34.537727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.049152, 37.980167, 35.279442>,  <35.421078, 37.817089, 34.877888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.049152, 37.980167, 35.279442> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.279686, 38.148609, 35.559589>,  <36.418007, 38.249676, 35.727676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.279686, 38.148609, 35.559589>,  <36.049152, 37.980167, 35.279442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.279686, 38.148609, 35.559589> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615100, 0.340719, -0.711029,
		-0.538044, 0.840585, -0.062653,
		0.576333, 0.421103, 0.700366,
		36.452587, 38.274940, 35.769699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.333256, 38.499462, 34.904446>,  <36.049152, 37.980167, 35.279442>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.333256, 38.499462, 34.904446> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.545483, 38.543556, 35.240623>,  <36.672817, 38.570011, 35.442329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.545483, 38.543556, 35.240623>,  <36.333256, 38.499462, 34.904446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545483, 38.543556, 35.240623> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742918, 0.416929, -0.523681,
		-0.408133, 0.902230, 0.139316,
		0.530566, 0.110231, 0.840446,
		36.704651, 38.576626, 35.492756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539196, 39.165337, 34.983276>,  <36.333256, 38.499462, 34.904446>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539196, 39.165337, 34.983276> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.821568, 38.959827, 35.178295>,  <36.990990, 38.836521, 35.295307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.821568, 38.959827, 35.178295>,  <36.539196, 39.165337, 34.983276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.821568, 38.959827, 35.178295> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708079, 0.495406, -0.503187,
		0.016987, 0.700438, 0.713511,
		0.705929, -0.513770, 0.487550,
		37.033344, 38.805695, 35.324558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973289, 39.658932, 35.411106>,  <36.539196, 39.165337, 34.983276>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973289, 39.658932, 35.411106> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.148991, 39.313633, 35.311626>,  <37.254414, 39.106453, 35.251938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.148991, 39.313633, 35.311626>,  <36.973289, 39.658932, 35.411106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.148991, 39.313633, 35.311626> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776639, 0.504043, -0.377854,
		0.451537, -0.027173, 0.891839,
		0.439257, -0.863251, -0.248697,
		37.280769, 39.054657, 35.237019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623196, 39.775230, 35.520615>,  <36.973289, 39.658932, 35.411106>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.623196, 39.775230, 35.520615> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.654461, 39.445633, 35.296139>,  <37.673218, 39.247875, 35.161453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.654461, 39.445633, 35.296139>,  <37.623196, 39.775230, 35.520615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654461, 39.445633, 35.296139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768116, 0.408613, -0.492985,
		0.635523, -0.392525, 0.664857,
		0.078160, -0.823990, -0.561187,
		37.677910, 39.198437, 35.127781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376152, 39.596474, 35.495548>,  <37.623196, 39.775230, 35.520615>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376152, 39.596474, 35.495548> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.182861, 39.446964, 35.178867>,  <38.066887, 39.357258, 34.988861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.182861, 39.446964, 35.178867>,  <38.376152, 39.596474, 35.495548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.182861, 39.446964, 35.178867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665788, 0.430336, -0.609539,
		0.568527, -0.821647, 0.040905,
		-0.483223, -0.373773, -0.791700,
		38.037895, 39.334831, 34.941357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878021, 39.666889, 35.009724>,  <38.376152, 39.596474, 35.495548>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.878021, 39.666889, 35.009724> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.572479, 39.567463, 34.771484>,  <38.389156, 39.507805, 34.628540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.572479, 39.567463, 34.771484>,  <38.878021, 39.666889, 35.009724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.572479, 39.567463, 34.771484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462976, 0.431914, -0.774018,
		0.449652, -0.866983, -0.214832,
		-0.763850, -0.248577, -0.595603,
		38.343323, 39.492893, 34.592804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.181553, 39.324642, 34.496429>,  <38.878021, 39.666889, 35.009724>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.181553, 39.324642, 34.496429> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.835823, 39.406429, 34.312634>,  <38.628384, 39.455502, 34.202354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.835823, 39.406429, 34.312634>,  <39.181553, 39.324642, 34.496429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.835823, 39.406429, 34.312634> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502704, 0.323892, -0.801488,
		-0.015050, -0.923736, -0.382734,
		-0.864328, 0.204464, -0.459491,
		38.576523, 39.467770, 34.174786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.187477, 39.077957, 33.741257>,  <39.181553, 39.324642, 34.496429>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.187477, 39.077957, 33.741257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.905186, 39.361237, 33.733234>,  <38.735809, 39.531204, 33.728420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.905186, 39.361237, 33.733234>,  <39.187477, 39.077957, 33.741257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.905186, 39.361237, 33.733234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286736, 0.259624, -0.922159,
		-0.647864, -0.656546, -0.386290,
		-0.705730, 0.708197, -0.020054,
		38.693466, 39.573696, 33.727219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.959217, 39.072151, 33.093540>,  <39.187477, 39.077957, 33.741257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.959217, 39.072151, 33.093540> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.840004, 39.430428, 33.225548>,  <38.768478, 39.645393, 33.304752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.840004, 39.430428, 33.225548>,  <38.959217, 39.072151, 33.093540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.840004, 39.430428, 33.225548> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238834, 0.404703, -0.882708,
		-0.924195, -0.184254, -0.334536,
		-0.298030, 0.895693, 0.330019,
		38.750595, 39.699135, 33.324554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593662, 39.411335, 32.527977>,  <38.959217, 39.072151, 33.093540>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593662, 39.411335, 32.527977> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.705856, 39.711594, 32.767262>,  <38.773174, 39.891750, 32.910831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.705856, 39.711594, 32.767262>,  <38.593662, 39.411335, 32.527977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.705856, 39.711594, 32.767262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282645, 0.531000, -0.798843,
		-0.917299, 0.393146, -0.063228,
		0.280488, 0.750650, 0.598207,
		38.790001, 39.936787, 32.946724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534843, 39.898895, 32.061249>,  <38.593662, 39.411335, 32.527977>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.534843, 39.898895, 32.061249> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.764988, 40.043560, 32.354687>,  <38.903076, 40.130360, 32.530750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.764988, 40.043560, 32.354687>,  <38.534843, 39.898895, 32.061249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.764988, 40.043560, 32.354687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523180, 0.526687, -0.669987,
		-0.628684, 0.769287, 0.113821,
		0.575360, 0.361661, 0.733595,
		38.937595, 40.152058, 32.574764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645321, 40.624687, 31.904127>,  <38.534843, 39.898895, 32.061249>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645321, 40.624687, 31.904127> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.927151, 40.580318, 32.184490>,  <39.096249, 40.553696, 32.352707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.927151, 40.580318, 32.184490>,  <38.645321, 40.624687, 31.904127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.927151, 40.580318, 32.184490> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647437, 0.504842, -0.570929,
		-0.290520, 0.856055, 0.427513,
		0.704573, -0.110921, 0.700909,
		39.138523, 40.547043, 32.394764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967728, 41.318729, 31.859325>,  <38.645321, 40.624687, 31.904127>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.967728, 41.318729, 31.859325> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.212376, 41.042088, 32.013004>,  <39.359165, 40.876102, 32.105209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.212376, 41.042088, 32.013004>,  <38.967728, 41.318729, 31.859325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.212376, 41.042088, 32.013004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779995, 0.445851, -0.439119,
		0.132402, 0.568244, 0.812138,
		0.611619, -0.691604, 0.384195,
		39.395863, 40.834606, 32.128262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.006382, 42.065323, 32.131618>,  <38.967728, 41.318729, 31.859325>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.006382, 42.065323, 32.131618> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.815639, 42.353668, 31.930437>,  <38.701195, 42.526676, 31.809729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.815639, 42.353668, 31.930437>,  <39.006382, 42.065323, 32.131618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.815639, 42.353668, 31.930437> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600052, 0.151150, 0.785552,
		0.642300, 0.676391, 0.360481,
		-0.476853, 0.720867, -0.502953,
		38.672585, 42.569927, 31.779551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698002, 42.442780, 32.567982>,  <39.006382, 42.065323, 32.131618>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698002, 42.442780, 32.567982> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.468575, 42.553116, 32.259453>,  <38.330917, 42.619316, 32.074337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.468575, 42.553116, 32.259453>,  <38.698002, 42.442780, 32.567982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.468575, 42.553116, 32.259453> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796696, 0.031156, 0.603576,
		0.190520, 0.960700, 0.201887,
		-0.573566, 0.275836, -0.771322,
		38.296505, 42.635868, 32.028057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313324, 42.966167, 32.898842>,  <38.698002, 42.442780, 32.567982>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313324, 42.966167, 32.898842> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.119839, 42.845211, 32.570309>,  <38.003750, 42.772636, 32.373188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.119839, 42.845211, 32.570309>,  <38.313324, 42.966167, 32.898842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119839, 42.845211, 32.570309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870872, 0.259808, 0.417231,
		0.087221, 0.917093, -0.389016,
		-0.483709, -0.302392, -0.821331,
		37.974728, 42.754494, 32.323910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747074, 43.476048, 32.716644>,  <38.313324, 42.966167, 32.898842>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747074, 43.476048, 32.716644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.638248, 43.143574, 32.522690>,  <37.572952, 42.944092, 32.406315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.638248, 43.143574, 32.522690>,  <37.747074, 43.476048, 32.716644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638248, 43.143574, 32.522690> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945277, 0.136538, 0.296327,
		-0.180096, 0.538975, -0.822843,
		-0.272062, -0.831182, -0.484891,
		37.556629, 42.894218, 32.377224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136658, 43.629402, 32.272541>,  <37.747074, 43.476048, 32.716644>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.136658, 43.629402, 32.272541> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.127174, 43.232197, 32.318790>,  <37.121483, 42.993874, 32.346539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.127174, 43.232197, 32.318790>,  <37.136658, 43.629402, 32.272541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127174, 43.232197, 32.318790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966226, 0.052446, 0.252304,
		-0.256604, -0.105732, -0.960716,
		-0.023709, -0.993010, 0.115619,
		37.120060, 42.934292, 32.353477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506111, 43.302532, 31.918104>,  <37.136658, 43.629402, 32.272541>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.506111, 43.302532, 31.918104> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.586300, 43.015884, 32.185318>,  <36.634415, 42.843895, 32.345646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.586300, 43.015884, 32.185318>,  <36.506111, 43.302532, 31.918104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.586300, 43.015884, 32.185318> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966949, -0.035074, 0.252548,
		-0.157549, -0.696585, -0.699963,
		0.200472, -0.716617, 0.668036,
		36.646442, 42.800900, 32.385727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931889, 42.830631, 31.881872>,  <36.506111, 43.302532, 31.918104>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931889, 42.830631, 31.881872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.111713, 42.768749, 32.233772>,  <36.219608, 42.731621, 32.444912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.111713, 42.768749, 32.233772>,  <35.931889, 42.830631, 31.881872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111713, 42.768749, 32.233772> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893207, -0.087553, 0.441039,
		0.008795, -0.984074, -0.177541,
		0.449560, -0.154702, 0.879752,
		36.246582, 42.722340, 32.497696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648598, 42.202843, 32.169941>,  <35.931889, 42.830631, 31.881872>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.648598, 42.202843, 32.169941> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.817192, 42.318001, 32.513908>,  <35.918350, 42.387096, 32.720287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.817192, 42.318001, 32.513908>,  <35.648598, 42.202843, 32.169941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.817192, 42.318001, 32.513908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871179, -0.134734, 0.472117,
		0.251783, -0.948135, 0.194023,
		0.421490, 0.287900, 0.859919,
		35.943638, 42.404369, 32.771885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478275, 41.700932, 32.564091>,  <35.648598, 42.202843, 32.169941>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478275, 41.700932, 32.564091> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.521240, 42.036404, 32.777660>,  <35.547020, 42.237686, 32.905804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.521240, 42.036404, 32.777660>,  <35.478275, 41.700932, 32.564091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.521240, 42.036404, 32.777660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782513, -0.259964, 0.565767,
		0.613300, -0.478569, 0.628358,
		0.107408, 0.838684, 0.533922,
		35.553463, 42.288010, 32.937836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.307751, 41.510708, 33.183544>,  <35.478275, 41.700932, 32.564091>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.307751, 41.510708, 33.183544> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.261478, 41.905830, 33.225212>,  <35.233715, 42.142906, 33.250214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.261478, 41.905830, 33.225212>,  <35.307751, 41.510708, 33.183544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.261478, 41.905830, 33.225212> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715243, -0.155613, 0.681331,
		0.689235, 0.004310, 0.724525,
		-0.115682, 0.987809, 0.104171,
		35.226772, 42.202171, 33.256462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390007, 41.648533, 33.962029>,  <35.307751, 41.510708, 33.183544>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.390007, 41.648533, 33.962029> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.188660, 41.943439, 33.781780>,  <35.067852, 42.120384, 33.673634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.188660, 41.943439, 33.781780>,  <35.390007, 41.648533, 33.962029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.188660, 41.943439, 33.781780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823360, -0.251076, 0.508958,
		0.262099, 0.627215, 0.733420,
		-0.503371, 0.737267, -0.450617,
		35.037647, 42.164619, 33.646595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887684, 41.654110, 34.413151>,  <35.390007, 41.648533, 33.962029>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.887684, 41.654110, 34.413151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.757408, 41.849228, 34.089180>,  <34.679241, 41.966297, 33.894798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.757408, 41.849228, 34.089180>,  <34.887684, 41.654110, 34.413151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757408, 41.849228, 34.089180> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938829, -0.268247, 0.215972,
		-0.111910, 0.830724, 0.545321,
		-0.325693, 0.487793, -0.809927,
		34.659698, 41.995567, 33.846203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.317867, 43.387081, 28.912508> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.943439, 43.381096, 28.771910>,  <40.718784, 43.377502, 28.687551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.943439, 43.381096, 28.771910>,  <41.317867, 43.387081, 28.912508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.943439, 43.381096, 28.771910> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349353, -0.078394, 0.933706,
		-0.041529, 0.996810, 0.068154,
		-0.936071, -0.014966, -0.351494,
		40.662617, 43.376606, 28.666462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.908974, 43.836487, 29.348423>,  <41.317867, 43.387081, 28.912508>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.908974, 43.836487, 29.348423> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.634956, 43.598587, 29.180143>,  <40.470547, 43.455849, 29.079176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.634956, 43.598587, 29.180143>,  <40.908974, 43.836487, 29.348423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.634956, 43.598587, 29.180143> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511442, -0.018613, 0.859116,
		-0.518791, 0.803695, -0.291430,
		-0.685043, -0.594751, -0.420700,
		40.429443, 43.420162, 29.053934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.157913, 44.117313, 29.458561>,  <40.908974, 43.836487, 29.348423>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.157913, 44.117313, 29.458561> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.140747, 43.722218, 29.398514>,  <40.130447, 43.485161, 29.362486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.140747, 43.722218, 29.398514>,  <40.157913, 44.117313, 29.458561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.140747, 43.722218, 29.398514> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715914, -0.074402, 0.694212,
		-0.696868, 0.137261, -0.703942,
		-0.042914, -0.987737, -0.150116,
		40.127872, 43.425896, 29.353479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531216, 43.932770, 29.619425>,  <40.157913, 44.117313, 29.458561>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.531216, 43.932770, 29.619425> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676598, 43.560169, 29.625097>,  <39.763828, 43.336609, 29.628502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676598, 43.560169, 29.625097>,  <39.531216, 43.932770, 29.619425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.676598, 43.560169, 29.625097> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693088, -0.260194, 0.672256,
		-0.622519, -0.254164, -0.740183,
		0.363454, -0.931504, 0.014183,
		39.785633, 43.280720, 29.629353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989491, 43.577610, 29.665127>,  <39.531216, 43.932770, 29.619425>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.989491, 43.577610, 29.665127> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.264931, 43.320885, 29.800127>,  <39.430195, 43.166847, 29.881128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.264931, 43.320885, 29.800127>,  <38.989491, 43.577610, 29.665127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.264931, 43.320885, 29.800127> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582345, -0.212109, 0.784783,
		-0.432099, -0.736941, -0.519816,
		0.688596, -0.641817, 0.337501,
		39.471508, 43.128342, 29.901377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589081, 43.005505, 29.791048>,  <38.989491, 43.577610, 29.665127>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.589081, 43.005505, 29.791048> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925449, 42.978176, 30.005779>,  <39.127270, 42.961781, 30.134619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925449, 42.978176, 30.005779>,  <38.589081, 43.005505, 29.791048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.925449, 42.978176, 30.005779> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541122, -0.117588, 0.832682,
		0.006238, -0.990710, -0.135850,
		0.840921, -0.068317, 0.536829,
		39.177727, 42.957680, 30.166828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693737, 42.320312, 30.212288>,  <38.589081, 43.005505, 29.791048>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.693737, 42.320312, 30.212288> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.948601, 42.535690, 30.432869>,  <39.101521, 42.664917, 30.565218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.948601, 42.535690, 30.432869>,  <38.693737, 42.320312, 30.212288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.948601, 42.535690, 30.432869> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472525, -0.292345, 0.831417,
		0.608890, -0.790321, 0.068160,
		0.637160, 0.538449, 0.551452,
		39.139748, 42.697224, 30.598305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898735, 41.951466, 30.749153>,  <38.693737, 42.320312, 30.212288>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.898735, 41.951466, 30.749153> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967571, 42.321342, 30.884996>,  <39.008873, 42.543266, 30.966501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967571, 42.321342, 30.884996>,  <38.898735, 41.951466, 30.749153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.967571, 42.321342, 30.884996> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537138, -0.200904, 0.819219,
		0.825752, -0.323399, 0.462112,
		0.172094, 0.924690, 0.339607,
		39.019199, 42.598751, 30.986879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215385, 41.881664, 31.483248>,  <38.898735, 41.951466, 30.749153>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.215385, 41.881664, 31.483248> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051533, 42.244457, 31.444092>,  <38.953220, 42.462132, 31.420599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051533, 42.244457, 31.444092>,  <39.215385, 41.881664, 31.483248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051533, 42.244457, 31.444092> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406845, -0.085591, 0.909478,
		0.816504, 0.412377, 0.404063,
		-0.409632, 0.906984, -0.097888,
		38.928642, 42.516552, 31.414726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.787590, 41.607746, 31.849371>,  <39.215385, 41.881664, 31.483248>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.787590, 41.607746, 31.849371> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843773, 41.219009, 31.925053>,  <39.877483, 40.985767, 31.970461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843773, 41.219009, 31.925053>,  <39.787590, 41.607746, 31.849371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.843773, 41.219009, 31.925053> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856271, 0.023300, -0.516001,
		0.497062, 0.234487, 0.835431,
		0.140462, -0.971840, 0.189203,
		39.885910, 40.927456, 31.981813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.567741, 41.556908, 32.129883>,  <39.787590, 41.607746, 31.849371>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.567741, 41.556908, 32.129883> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.427864, 41.215546, 31.975264>,  <40.343937, 41.010731, 31.882492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.427864, 41.215546, 31.975264>,  <40.567741, 41.556908, 32.129883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.427864, 41.215546, 31.975264> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876613, -0.152486, -0.456396,
		0.330546, -0.498451, 0.801427,
		-0.349698, -0.853402, -0.386545,
		40.322956, 40.959526, 31.859301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.105824, 41.152809, 32.120033>,  <40.567741, 41.556908, 32.129883>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.105824, 41.152809, 32.120033> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.864971, 40.972733, 31.856287>,  <40.720459, 40.864685, 31.698040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.864971, 40.972733, 31.856287>,  <41.105824, 41.152809, 32.120033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.864971, 40.972733, 31.856287> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797482, -0.299637, -0.523680,
		0.038187, -0.841156, 0.539442,
		-0.602134, -0.450193, -0.659364,
		40.684330, 40.837673, 31.658478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.336842, 40.300270, 31.974491>,  <41.105824, 41.152809, 32.120033>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.336842, 40.300270, 31.974491> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.143890, 40.441551, 31.653852>,  <41.028118, 40.526321, 31.461470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.143890, 40.441551, 31.653852>,  <41.336842, 40.300270, 31.974491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.143890, 40.441551, 31.653852> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809192, -0.170742, -0.562188,
		-0.335435, -0.919832, -0.203450,
		-0.482381, 0.353207, -0.801594,
		40.999176, 40.547512, 31.413374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.412998, 39.732525, 31.398788>,  <41.336842, 40.300270, 31.974491>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.412998, 39.732525, 31.398788> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.345699, 40.091801, 31.236334>,  <41.305321, 40.307365, 31.138861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.345699, 40.091801, 31.236334>,  <41.412998, 39.732525, 31.398788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.345699, 40.091801, 31.236334> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840780, -0.084318, -0.534771,
		-0.514571, -0.431442, -0.740996,
		-0.168244, 0.898192, -0.406135,
		41.295227, 40.361259, 31.114492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.277012, 39.573208, 30.632879>,  <41.412998, 39.732525, 31.398788>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.277012, 39.573208, 30.632879> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.330219, 39.969154, 30.612993>,  <41.362144, 40.206722, 30.601063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.330219, 39.969154, 30.612993>,  <41.277012, 39.573208, 30.632879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.330219, 39.969154, 30.612993> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529292, -0.113354, -0.840834,
		-0.837948, 0.085531, -0.539006,
		0.133016, 0.989866, -0.049713,
		41.370125, 40.266113, 30.598080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.017754, 39.864807, 30.003365>,  <41.277012, 39.573208, 30.632879>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.017754, 39.864807, 30.003365> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.309849, 40.097309, 30.146973>,  <41.485107, 40.236809, 30.233137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.309849, 40.097309, 30.146973>,  <41.017754, 39.864807, 30.003365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.309849, 40.097309, 30.146973> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410865, 0.046222, -0.910524,
		-0.545842, 0.812407, -0.205065,
		0.730237, 0.581256, 0.359020,
		41.528919, 40.271687, 30.254679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.282135, 40.180458, 29.431463>,  <41.017754, 39.864807, 30.003365>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.282135, 40.180458, 29.431463> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.583542, 40.257362, 29.682940>,  <41.764385, 40.303505, 29.833824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.583542, 40.257362, 29.682940>,  <41.282135, 40.180458, 29.431463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.583542, 40.257362, 29.682940> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644191, -0.024978, -0.764457,
		-0.131270, 0.981026, -0.142673,
		0.753516, 0.192259, 0.628689,
		41.809597, 40.315041, 29.871546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.681740, 40.634563, 29.044674>,  <41.282135, 40.180458, 29.431463>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.681740, 40.634563, 29.044674> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.948193, 40.572536, 29.336491>,  <42.108063, 40.535320, 29.511580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.948193, 40.572536, 29.336491>,  <41.681740, 40.634563, 29.044674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.948193, 40.572536, 29.336491> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742529, 0.045838, -0.668244,
		0.070182, 0.986840, 0.145676,
		0.666128, -0.155068, 0.729540,
		42.148029, 40.526016, 29.555353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.231342, 41.159763, 28.999010>,  <41.681740, 40.634563, 29.044674>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.231342, 41.159763, 28.999010> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.395191, 40.847504, 29.187813>,  <42.493500, 40.660149, 29.301094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.395191, 40.847504, 29.187813>,  <42.231342, 41.159763, 28.999010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.395191, 40.847504, 29.187813> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772233, 0.021271, -0.634983,
		0.485662, 0.624602, 0.611559,
		0.409621, -0.780653, 0.472008,
		42.518078, 40.613308, 29.329414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.905350, 41.201012, 28.753288>,  <42.231342, 41.159763, 28.999010>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.905350, 41.201012, 28.753288> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.924305, 40.839661, 28.923780>,  <42.935680, 40.622852, 29.026075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.924305, 40.839661, 28.923780>,  <42.905350, 41.201012, 28.753288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.924305, 40.839661, 28.923780> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776258, -0.235236, -0.584882,
		0.628631, 0.358582, 0.690103,
		0.047391, -0.903373, 0.426228,
		42.938522, 40.568649, 29.051649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.576904, 41.092407, 29.046162>,  <42.905350, 41.201012, 28.753288>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.576904, 41.092407, 29.046162> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.421661, 40.736423, 28.950378>,  <43.328514, 40.522831, 28.892908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.421661, 40.736423, 28.950378>,  <43.576904, 41.092407, 29.046162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.421661, 40.736423, 28.950378> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686952, -0.106142, -0.718910,
		0.614385, -0.443512, 0.652555,
		-0.388109, -0.889961, -0.239460,
		43.305229, 40.469437, 28.878540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.063927, 40.562344, 29.054445>,  <43.576904, 41.092407, 29.046162>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.063927, 40.562344, 29.054445> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.784050, 40.432274, 28.799984>,  <43.616123, 40.354233, 28.647306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.784050, 40.432274, 28.799984>,  <44.063927, 40.562344, 29.054445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.784050, 40.432274, 28.799984> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688253, -0.067902, -0.722286,
		0.191671, -0.943214, 0.271311,
		-0.699693, -0.325172, -0.636155,
		43.574142, 40.334721, 28.609138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.423393, 40.040279, 28.650284>,  <44.063927, 40.562344, 29.054445>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.423393, 40.040279, 28.650284> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.083000, 40.100822, 28.449118>,  <43.878765, 40.137150, 28.328417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.083000, 40.100822, 28.449118>,  <44.423393, 40.040279, 28.650284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.083000, 40.100822, 28.449118> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518677, 0.091735, -0.850035,
		-0.082529, -0.984213, -0.156573,
		-0.850978, 0.151363, -0.502918,
		43.827705, 40.146233, 28.298243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.227749, 41.521294, 23.100796> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.517807, 41.743496, 23.263561>,  <37.691841, 41.876816, 23.361221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.517807, 41.743496, 23.263561>,  <37.227749, 41.521294, 23.100796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.517807, 41.743496, 23.263561> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426461, -0.101674, 0.898774,
		0.540647, -0.825273, 0.163173,
		0.725143, 0.555506, 0.406916,
		37.735352, 41.910149, 23.385635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.438107, 41.182064, 23.568918>,  <37.227749, 41.521294, 23.100796>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.438107, 41.182064, 23.568918> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.556190, 41.552338, 23.663536>,  <37.627041, 41.774502, 23.720306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.556190, 41.552338, 23.663536>,  <37.438107, 41.182064, 23.568918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556190, 41.552338, 23.663536> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147027, -0.200615, 0.968575,
		0.944052, -0.320711, 0.076877,
		0.295209, 0.925688, 0.236544,
		37.644753, 41.830044, 23.734499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956081, 41.079021, 24.108116>,  <37.438107, 41.182064, 23.568918>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.956081, 41.079021, 24.108116> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.803551, 41.447136, 24.143127>,  <37.712032, 41.668007, 24.164133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.803551, 41.447136, 24.143127>,  <37.956081, 41.079021, 24.108116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803551, 41.447136, 24.143127> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083317, -0.128509, 0.988202,
		0.920679, 0.369534, 0.125679,
		-0.381325, 0.920288, 0.087527,
		37.689152, 41.723221, 24.169386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185776, 41.334034, 24.781660>,  <37.956081, 41.079021, 24.108116>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185776, 41.334034, 24.781660> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.895622, 41.590923, 24.682564>,  <37.721531, 41.745056, 24.623106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.895622, 41.590923, 24.682564>,  <38.185776, 41.334034, 24.781660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895622, 41.590923, 24.682564> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434123, -0.147514, 0.888694,
		0.534192, 0.752191, 0.385807,
		-0.725380, 0.642221, -0.247743,
		37.678009, 41.783588, 24.608240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183399, 41.698505, 25.292192>,  <38.185776, 41.334034, 24.781660>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.183399, 41.698505, 25.292192> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.827633, 41.755260, 25.118382>,  <37.614174, 41.789314, 25.014095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.827633, 41.755260, 25.118382>,  <38.183399, 41.698505, 25.292192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827633, 41.755260, 25.118382> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451314, -0.121756, 0.884020,
		0.072524, 0.982366, 0.172327,
		-0.889413, 0.141887, -0.434525,
		37.560810, 41.797825, 24.988024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832306, 42.065151, 25.711096>,  <38.183399, 41.698505, 25.292192>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.832306, 42.065151, 25.711096> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.511166, 41.926353, 25.517179>,  <37.318481, 41.843075, 25.400829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.511166, 41.926353, 25.517179>,  <37.832306, 42.065151, 25.711096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.511166, 41.926353, 25.517179> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557482, 0.148773, 0.816750,
		-0.211284, 0.925992, -0.312886,
		-0.802853, -0.346995, -0.484790,
		37.270309, 41.822254, 25.371742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.307194, 42.491734, 26.032927>,  <37.832306, 42.065151, 25.711096>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.307194, 42.491734, 26.032927> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.127876, 42.173973, 25.868994>,  <37.020287, 41.983318, 25.770634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.127876, 42.173973, 25.868994>,  <37.307194, 42.491734, 26.032927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127876, 42.173973, 25.868994> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726052, 0.056150, 0.685344,
		-0.521424, 0.604795, -0.601947,
		-0.448292, -0.794399, -0.409834,
		36.993389, 41.935654, 25.746044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596657, 42.705883, 26.065636>,  <37.307194, 42.491734, 26.032927>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.596657, 42.705883, 26.065636> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.588459, 42.308952, 26.016863>,  <36.583542, 42.070793, 25.987598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.588459, 42.308952, 26.016863>,  <36.596657, 42.705883, 26.065636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588459, 42.308952, 26.016863> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691851, -0.073966, 0.718242,
		-0.721750, 0.099079, -0.685026,
		-0.020494, -0.992327, -0.121933,
		36.582310, 42.011253, 25.980284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871643, 42.509712, 26.110170>,  <36.596657, 42.705883, 26.065636>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871643, 42.509712, 26.110170> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.086353, 42.176487, 26.163662>,  <36.215179, 41.976551, 26.195757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.086353, 42.176487, 26.163662>,  <35.871643, 42.509712, 26.110170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086353, 42.176487, 26.163662> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630759, -0.290943, 0.719371,
		-0.560373, -0.470490, -0.681632,
		0.536773, -0.833061, 0.133730,
		36.247387, 41.926567, 26.203781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.388737, 41.911804, 26.047371>,  <35.871643, 42.509712, 26.110170>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.388737, 41.911804, 26.047371> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.712379, 41.810009, 26.259253>,  <35.906563, 41.748932, 26.386381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.712379, 41.810009, 26.259253>,  <35.388737, 41.911804, 26.047371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.712379, 41.810009, 26.259253> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586985, -0.393360, 0.707613,
		0.028286, -0.883461, -0.467650,
		0.809104, -0.254488, 0.529705,
		35.955112, 41.733662, 26.418163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270363, 41.105331, 26.202774>,  <35.388737, 41.911804, 26.047371>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270363, 41.105331, 26.202774> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.550022, 41.194103, 26.474638>,  <35.717819, 41.247368, 26.637756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.550022, 41.194103, 26.474638>,  <35.270363, 41.105331, 26.202774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.550022, 41.194103, 26.474638> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583515, -0.372204, 0.721785,
		0.413161, -0.901227, -0.130724,
		0.699148, 0.221934, 0.679660,
		35.759766, 41.260685, 26.678535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328739, 40.496365, 26.657326>,  <35.270363, 41.105331, 26.202774>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328739, 40.496365, 26.657326> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.499882, 40.799500, 26.854355>,  <35.602566, 40.981380, 26.972572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.499882, 40.799500, 26.854355>,  <35.328739, 40.496365, 26.657326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.499882, 40.799500, 26.854355> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475275, -0.274909, 0.835786,
		0.768800, -0.591703, 0.242558,
		0.427856, 0.757834, 0.492572,
		35.628239, 41.026848, 27.002127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.551289, 40.257652, 27.258944>,  <35.328739, 40.496365, 26.657326>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.551289, 40.257652, 27.258944> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.501678, 40.648296, 27.329203>,  <35.471912, 40.882683, 27.371357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.501678, 40.648296, 27.329203>,  <35.551289, 40.257652, 27.258944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501678, 40.648296, 27.329203> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582200, -0.214961, 0.784114,
		0.803531, -0.005011, 0.595242,
		-0.124024, 0.976610, 0.175645,
		35.464470, 40.941280, 27.381897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.544437, 40.312344, 27.886818>,  <35.551289, 40.257652, 27.258944>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.544437, 40.312344, 27.886818> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.365276, 40.660671, 27.805767>,  <35.257778, 40.869667, 27.757137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.365276, 40.660671, 27.805767>,  <35.544437, 40.312344, 27.886818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.365276, 40.660671, 27.805767> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664796, -0.172831, 0.726757,
		0.597852, 0.460224, 0.656328,
		-0.447905, 0.870817, -0.202627,
		35.230904, 40.921917, 27.744978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182507, 40.138466, 28.214483>,  <35.544437, 40.312344, 27.886818>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182507, 40.138466, 28.214483> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.272980, 39.766502, 28.330486>,  <36.327263, 39.543324, 28.400087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.272980, 39.766502, 28.330486>,  <36.182507, 40.138466, 28.214483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272980, 39.766502, 28.330486> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712871, -0.044867, -0.699858,
		0.663818, 0.365037, 0.652759,
		0.226187, -0.929911, 0.290008,
		36.340836, 39.487530, 28.417488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982307, 40.082504, 28.163698>,  <36.182507, 40.138466, 28.214483>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.982307, 40.082504, 28.163698> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.830547, 39.712685, 28.149481>,  <36.739494, 39.490791, 28.140951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.830547, 39.712685, 28.149481>,  <36.982307, 40.082504, 28.163698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830547, 39.712685, 28.149481> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727025, -0.274139, -0.629510,
		0.572271, -0.264673, 0.776179,
		-0.379395, -0.924552, -0.035542,
		36.716728, 39.435318, 28.138819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541317, 39.595791, 28.090057>,  <36.982307, 40.082504, 28.163698>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.541317, 39.595791, 28.090057> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.214996, 39.416580, 27.943779>,  <37.019203, 39.309055, 27.856012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.214996, 39.416580, 27.943779>,  <37.541317, 39.595791, 28.090057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214996, 39.416580, 27.943779> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535385, -0.345952, -0.770507,
		0.218695, -0.824372, 0.522096,
		-0.815804, -0.448028, -0.365698,
		36.970257, 39.282173, 27.834070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787369, 38.990448, 27.955116>,  <37.541317, 39.595791, 28.090057>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787369, 38.990448, 27.955116> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.467201, 39.019363, 27.717091>,  <37.275101, 39.036713, 27.574276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.467201, 39.019363, 27.717091>,  <37.787369, 38.990448, 27.955116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.467201, 39.019363, 27.717091> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523299, -0.399920, -0.752478,
		-0.292375, -0.913695, 0.282274,
		-0.800422, 0.072292, -0.595062,
		37.227074, 39.041050, 27.538572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.713596, 38.361092, 27.642832>,  <37.787369, 38.990448, 27.955116>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.713596, 38.361092, 27.642832> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.492702, 38.601749, 27.411985>,  <37.360165, 38.746143, 27.273478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.492702, 38.601749, 27.411985>,  <37.713596, 38.361092, 27.642832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.492702, 38.601749, 27.411985> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505958, -0.308323, -0.805570,
		-0.662603, -0.736861, -0.134139,
		-0.552235, 0.601642, -0.577117,
		37.327030, 38.782242, 27.238850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759678, 37.911892, 27.065481>,  <37.713596, 38.361092, 27.642832>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.759678, 37.911892, 27.065481> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.619064, 38.266792, 26.946007>,  <37.534695, 38.479733, 26.874323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.619064, 38.266792, 26.946007>,  <37.759678, 37.911892, 27.065481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.619064, 38.266792, 26.946007> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367348, -0.162731, -0.915737,
		-0.861091, -0.431636, -0.268723,
		-0.351536, 0.887248, -0.298686,
		37.513603, 38.532967, 26.856401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338654, 37.772968, 26.467737>,  <37.759678, 37.911892, 27.065481>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338654, 37.772968, 26.467737> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.459415, 38.154301, 26.465790>,  <37.531872, 38.383099, 26.464621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.459415, 38.154301, 26.465790>,  <37.338654, 37.772968, 26.467737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.459415, 38.154301, 26.465790> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259026, -0.086943, -0.961950,
		-0.917476, 0.289152, -0.273184,
		0.301901, 0.953327, -0.004870,
		37.549984, 38.440300, 26.464329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227676, 38.033558, 25.814756>,  <37.338654, 37.772968, 26.467737>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227676, 38.033558, 25.814756> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.490051, 38.293011, 25.969166>,  <37.647476, 38.448681, 26.061811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.490051, 38.293011, 25.969166>,  <37.227676, 38.033558, 25.814756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490051, 38.293011, 25.969166> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297118, 0.248252, -0.922004,
		-0.693874, 0.719476, -0.029882,
		0.655942, 0.648633, 0.386025,
		37.686832, 38.487602, 26.084974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.141098, 38.551617, 25.405157>,  <37.227676, 38.033558, 25.814756>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.141098, 38.551617, 25.405157> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.492954, 38.626648, 25.579994>,  <37.704067, 38.671665, 25.684896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.492954, 38.626648, 25.579994>,  <37.141098, 38.551617, 25.405157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.492954, 38.626648, 25.579994> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305219, 0.482192, -0.821177,
		-0.364798, 0.855749, 0.366902,
		0.879638, 0.187578, 0.437093,
		37.756847, 38.682922, 25.711123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245686, 39.274113, 25.346441>,  <37.141098, 38.551617, 25.405157>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245686, 39.274113, 25.346441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.603642, 39.099892, 25.385351>,  <37.818417, 38.995358, 25.408697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.603642, 39.099892, 25.385351>,  <37.245686, 39.274113, 25.346441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603642, 39.099892, 25.385351> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342570, 0.530707, -0.775239,
		0.286034, 0.727078, 0.624133,
		0.894891, -0.435554, 0.097275,
		37.872108, 38.969227, 25.414534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.776871, 39.831802, 25.237558>,  <37.245686, 39.274113, 25.346441>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.776871, 39.831802, 25.237558> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.967880, 39.487984, 25.164728>,  <38.082485, 39.281693, 25.121031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.967880, 39.487984, 25.164728>,  <37.776871, 39.831802, 25.237558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967880, 39.487984, 25.164728> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387671, 0.392093, -0.834251,
		0.788465, 0.327793, 0.520456,
		0.477529, -0.859543, -0.182076,
		38.111137, 39.230122, 25.110106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.353176, 40.069454, 25.124998>,  <37.776871, 39.831802, 25.237558>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.353176, 40.069454, 25.124998> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.377968, 39.692429, 24.993704>,  <38.392841, 39.466213, 24.914928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.377968, 39.692429, 24.993704>,  <38.353176, 40.069454, 25.124998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377968, 39.692429, 24.993704> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536721, 0.308743, -0.785244,
		0.841481, -0.127502, 0.525027,
		0.061978, -0.942561, -0.328234,
		38.396561, 39.409660, 24.895233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076473, 39.914902, 25.121899>,  <38.353176, 40.069454, 25.124998>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.076473, 39.914902, 25.121899> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.890198, 39.686783, 24.851227>,  <38.778431, 39.549911, 24.688824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.890198, 39.686783, 24.851227>,  <39.076473, 39.914902, 25.121899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890198, 39.686783, 24.851227> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582880, 0.377688, -0.719447,
		0.665872, -0.729460, 0.156530,
		-0.465688, -0.570298, -0.676679,
		38.750492, 39.515694, 24.648224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597656, 39.544056, 24.798431>,  <39.076473, 39.914902, 25.121899>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597656, 39.544056, 24.798431> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.292713, 39.518021, 24.540882>,  <39.109745, 39.502399, 24.386353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.292713, 39.518021, 24.540882>,  <39.597656, 39.544056, 24.798431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.292713, 39.518021, 24.540882> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616522, 0.229428, -0.753169,
		0.196742, -0.971147, -0.134780,
		-0.762361, -0.065086, -0.643871,
		39.064007, 39.498493, 24.347721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.913601, 39.065792, 25.237396>,  <39.597656, 39.544056, 24.798431>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.913601, 39.065792, 25.237396> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.259331, 38.965717, 25.411915>,  <40.466766, 38.905670, 25.516626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.259331, 38.965717, 25.411915>,  <39.913601, 39.065792, 25.237396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.259331, 38.965717, 25.411915> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466862, -0.076471, 0.881018,
		-0.187059, -0.965172, -0.182901,
		0.864320, -0.250192, 0.436297,
		40.518627, 38.890659, 25.542805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.650429, 38.623226, 25.838594>,  <39.913601, 39.065792, 25.237396>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.650429, 38.623226, 25.838594> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.026638, 38.729225, 25.923624>,  <40.252365, 38.792824, 25.974642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.026638, 38.729225, 25.923624>,  <39.650429, 38.623226, 25.838594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.026638, 38.729225, 25.923624> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228482, 0.030343, 0.973075,
		0.251413, -0.963771, 0.089086,
		0.940525, 0.264998, 0.212576,
		40.308796, 38.808723, 25.987396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025135, 38.101875, 26.196850>,  <39.650429, 38.623226, 25.838594>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.025135, 38.101875, 26.196850> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.231335, 38.435787, 26.274202>,  <40.355057, 38.636135, 26.320614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.231335, 38.435787, 26.274202>,  <40.025135, 38.101875, 26.196850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.231335, 38.435787, 26.274202> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215949, -0.091834, 0.972076,
		0.829230, -0.542870, 0.132930,
		0.515503, 0.834781, 0.193383,
		40.385986, 38.686222, 26.332218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.522034, 37.954956, 26.703045>,  <40.025135, 38.101875, 26.196850>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.522034, 37.954956, 26.703045> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.444500, 38.345428, 26.742044>,  <40.397980, 38.579712, 26.765444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.444500, 38.345428, 26.742044>,  <40.522034, 37.954956, 26.703045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.444500, 38.345428, 26.742044> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103920, -0.119255, 0.987410,
		0.975515, 0.181260, 0.124560,
		-0.193832, 0.976177, 0.097499,
		40.386349, 38.638283, 26.771294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.877567, 38.127117, 27.337122>,  <40.522034, 37.954956, 26.703045>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.877567, 38.127117, 27.337122> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.589714, 38.392391, 27.254841>,  <40.417000, 38.551556, 27.205473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.589714, 38.392391, 27.254841>,  <40.877567, 38.127117, 27.337122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.589714, 38.392391, 27.254841> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312379, -0.044644, 0.948908,
		0.620115, 0.747126, 0.239291,
		-0.719636, 0.663182, -0.205702,
		40.373821, 38.591347, 27.193130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.007561, 38.644123, 27.855024>,  <40.877567, 38.127117, 27.337122>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.007561, 38.644123, 27.855024> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.625889, 38.708954, 27.754410>,  <40.396885, 38.747852, 27.694040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.625889, 38.708954, 27.754410>,  <41.007561, 38.644123, 27.855024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.625889, 38.708954, 27.754410> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260336, -0.035207, 0.964876,
		0.147530, 0.986150, 0.075789,
		-0.954180, 0.162079, -0.251536,
		40.339634, 38.757576, 27.678949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.686733, 38.931450, 28.473860>,  <41.007561, 38.644123, 27.855024>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.686733, 38.931450, 28.473860> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.345932, 38.897121, 28.267277>,  <40.141453, 38.876526, 28.143326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.345932, 38.897121, 28.267277>,  <40.686733, 38.931450, 28.473860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.345932, 38.897121, 28.267277> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523465, 0.122853, 0.843144,
		-0.008908, 0.988707, -0.149593,
		-0.852000, -0.085817, -0.516460,
		40.090332, 38.871376, 28.112339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.239082, 39.524364, 28.716162>,  <40.686733, 38.931450, 28.473860>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.239082, 39.524364, 28.716162> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.030025, 39.205967, 28.594025>,  <39.904591, 39.014927, 28.520742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.030025, 39.205967, 28.594025>,  <40.239082, 39.524364, 28.716162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.030025, 39.205967, 28.594025> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576956, 0.066555, 0.814060,
		-0.627665, 0.601634, -0.494038,
		-0.522646, -0.795995, -0.305342,
		39.873230, 38.967167, 28.502422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.631081, 39.534744, 28.996218>,  <40.239082, 39.524364, 28.716162>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.631081, 39.534744, 28.996218> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.624191, 39.155640, 28.868811>,  <39.620056, 38.928177, 28.792366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.624191, 39.155640, 28.868811>,  <39.631081, 39.534744, 28.996218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.624191, 39.155640, 28.868811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727007, -0.206828, 0.654739,
		-0.686414, 0.242845, -0.685465,
		-0.017227, -0.947760, -0.318519,
		39.619022, 38.871311, 28.773254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903042, 39.411179, 28.925100>,  <39.631081, 39.534744, 28.996218>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.903042, 39.411179, 28.925100> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.088600, 39.060486, 28.975918>,  <39.199936, 38.850071, 29.006409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.088600, 39.060486, 28.975918>,  <38.903042, 39.411179, 28.925100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.088600, 39.060486, 28.975918> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649083, -0.238778, 0.722271,
		-0.602905, -0.417518, -0.679841,
		0.463893, -0.876735, 0.127043,
		39.227768, 38.797466, 29.014030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450363, 38.885529, 29.157074>,  <38.903042, 39.411179, 28.925100>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450363, 38.885529, 29.157074> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.798901, 38.733074, 29.280684>,  <39.008022, 38.641602, 29.354849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.798901, 38.733074, 29.280684>,  <38.450363, 38.885529, 29.157074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798901, 38.733074, 29.280684> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430344, -0.291047, 0.854456,
		-0.235717, -0.877514, -0.417620,
		0.871344, -0.381131, 0.309028,
		39.060303, 38.618732, 29.373392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232273, 38.228409, 29.423100>,  <38.450363, 38.885529, 29.157074>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.232273, 38.228409, 29.423100> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.599781, 38.268154, 29.575930>,  <38.820286, 38.292000, 29.667627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.599781, 38.268154, 29.575930>,  <38.232273, 38.228409, 29.423100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.599781, 38.268154, 29.575930> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301732, -0.447368, 0.841914,
		0.254585, -0.888813, -0.381048,
		0.918774, 0.099364, 0.382076,
		38.875412, 38.297962, 29.690552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359180, 37.571812, 29.715614>,  <38.232273, 38.228409, 29.423100>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.359180, 37.571812, 29.715614> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.593227, 37.834915, 29.905348>,  <38.733654, 37.992779, 30.019188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.593227, 37.834915, 29.905348>,  <38.359180, 37.571812, 29.715614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.593227, 37.834915, 29.905348> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256545, -0.404736, 0.877709,
		0.769303, -0.635248, -0.068072,
		0.585114, 0.657761, 0.474334,
		38.768761, 38.032242, 30.047647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808529, 37.262676, 30.165609>,  <38.359180, 37.571812, 29.715614>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.808529, 37.262676, 30.165609> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.762512, 37.635273, 30.303642>,  <38.734901, 37.858833, 30.386461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.762512, 37.635273, 30.303642>,  <38.808529, 37.262676, 30.165609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.762512, 37.635273, 30.303642> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150481, -0.359721, 0.920845,
		0.981897, 0.054004, 0.181554,
		-0.115038, 0.931496, 0.345082,
		38.728001, 37.914722, 30.407167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<44.444527, 39.470684, 27.929081> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.164162, 39.747383, 27.859560>,  <43.995941, 39.913403, 27.817848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.164162, 39.747383, 27.859560>,  <44.444527, 39.470684, 27.929081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.164162, 39.747383, 27.859560> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437058, 0.223985, -0.871097,
		-0.563650, -0.686525, -0.459327,
		-0.700913, 0.691747, -0.173803,
		43.953888, 39.954906, 27.807419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.182152, 39.333763, 27.173325>,  <44.444527, 39.470684, 27.929081>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.182152, 39.333763, 27.173325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.143673, 39.714577, 27.289522>,  <44.120586, 39.943066, 27.359241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.143673, 39.714577, 27.289522>,  <44.182152, 39.333763, 27.173325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.143673, 39.714577, 27.289522> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325867, 0.305885, -0.894564,
		-0.940509, 0.008610, -0.339659,
		-0.096195, 0.952029, 0.290494,
		44.114815, 40.000187, 27.376671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.921257, 39.723640, 26.601624>,  <44.182152, 39.333763, 27.173325>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.921257, 39.723640, 26.601624> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.064758, 40.035160, 26.807447>,  <44.150860, 40.222073, 26.930943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.064758, 40.035160, 26.807447>,  <43.921257, 39.723640, 26.601624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.064758, 40.035160, 26.807447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498454, 0.306238, -0.811025,
		-0.789200, 0.547445, -0.278329,
		0.358757, 0.778795, 0.514559,
		44.172386, 40.268799, 26.961815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.896519, 40.219067, 26.148663>,  <43.921257, 39.723640, 26.601624>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.896519, 40.219067, 26.148663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.162788, 40.359501, 26.412062>,  <44.322552, 40.443760, 26.570101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.162788, 40.359501, 26.412062>,  <43.896519, 40.219067, 26.148663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.162788, 40.359501, 26.412062> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536908, 0.387521, -0.749371,
		-0.518272, 0.852390, 0.069464,
		0.665675, 0.351082, 0.658497,
		44.362492, 40.464825, 26.609612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.065533, 40.894783, 25.964733>,  <43.896519, 40.219067, 26.148663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.065533, 40.894783, 25.964733> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.380108, 40.800114, 26.192944>,  <44.568851, 40.743313, 26.329870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.380108, 40.800114, 26.192944>,  <44.065533, 40.894783, 25.964733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.380108, 40.800114, 26.192944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604698, 0.483311, -0.633049,
		-0.125919, 0.842851, 0.523208,
		0.786438, -0.236670, 0.570528,
		44.616039, 40.729115, 26.364101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.480034, 41.392559, 25.882336>,  <44.065533, 40.894783, 25.964733>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.480034, 41.392559, 25.882336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.722225, 41.104183, 26.017181>,  <44.867538, 40.931156, 26.098089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.722225, 41.104183, 26.017181>,  <44.480034, 41.392559, 25.882336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.722225, 41.104183, 26.017181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701052, 0.282626, -0.654712,
		0.376730, 0.632747, 0.676539,
		0.605475, -0.720939, 0.337115,
		44.903866, 40.887901, 26.118317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.078068, 41.748756, 25.804642>,  <44.480034, 41.392559, 25.882336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.078068, 41.748756, 25.804642> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.193165, 41.368759, 25.853172>,  <45.262222, 41.140762, 25.882292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.193165, 41.368759, 25.853172>,  <45.078068, 41.748756, 25.804642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.193165, 41.368759, 25.853172> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724064, 0.132875, -0.676813,
		0.626845, 0.282600, 0.726088,
		0.287746, -0.949990, 0.121328,
		45.279488, 41.083763, 25.889570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.754837, 41.795254, 25.691570>,  <45.078068, 41.748756, 25.804642>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.754837, 41.795254, 25.691570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.671165, 41.408703, 25.631760>,  <45.620964, 41.176773, 25.595873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.671165, 41.408703, 25.631760>,  <45.754837, 41.795254, 25.691570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.671165, 41.408703, 25.631760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609030, -0.009116, -0.793095,
		0.765066, -0.256964, 0.590460,
		-0.209179, -0.966378, -0.149525,
		45.608410, 41.118790, 25.586903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.374676, 41.577206, 25.513205>,  <45.754837, 41.795254, 25.691570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.374676, 41.577206, 25.513205> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.146030, 41.272385, 25.391525>,  <46.008842, 41.089493, 25.318518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.146030, 41.272385, 25.391525>,  <46.374676, 41.577206, 25.513205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.146030, 41.272385, 25.391525> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558440, -0.089683, -0.824683,
		0.601168, -0.641277, 0.476824,
		-0.571613, -0.762050, -0.304200,
		45.974548, 41.043770, 25.300264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.811184, 40.965477, 25.209391>,  <46.374676, 41.577206, 25.513205>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.811184, 40.965477, 25.209391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.444401, 40.970638, 25.049879>,  <46.224331, 40.973736, 24.954172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.444401, 40.970638, 25.049879>,  <46.811184, 40.965477, 25.209391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.444401, 40.970638, 25.049879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397631, -0.052742, -0.916028,
		-0.032848, -0.998525, 0.043234,
		-0.916957, 0.012898, -0.398777,
		46.169315, 40.974510, 24.930246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.002613, 40.533932, 24.712206>,  <46.811184, 40.965477, 25.209391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.002613, 40.533932, 24.712206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.652309, 40.690567, 24.599276>,  <46.442127, 40.784550, 24.531517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.652309, 40.690567, 24.599276>,  <47.002613, 40.533932, 24.712206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.652309, 40.690567, 24.599276> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240690, -0.152779, -0.958503,
		-0.418473, -0.907368, 0.039546,
		-0.875756, 0.391589, -0.282328,
		46.389584, 40.808044, 24.514578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.634754, 39.996773, 24.322449>,  <47.002613, 40.533932, 24.712206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.634754, 39.996773, 24.322449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.494263, 40.355324, 24.214272>,  <46.409966, 40.570454, 24.149364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.494263, 40.355324, 24.214272>,  <46.634754, 39.996773, 24.322449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.494263, 40.355324, 24.214272> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329345, -0.152106, -0.931878,
		-0.876452, -0.416375, -0.241793,
		-0.351233, 0.896379, -0.270444,
		46.388893, 40.624237, 24.133139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.963608, 39.964100, 23.893183>,  <46.634754, 39.996773, 24.322449>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.963608, 39.964100, 23.893183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.208588, 40.270565, 23.815300>,  <46.355576, 40.454445, 23.768570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.208588, 40.270565, 23.815300>,  <45.963608, 39.964100, 23.893183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.208588, 40.270565, 23.815300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031280, -0.269599, -0.962464,
		-0.789894, 0.583367, -0.189081,
		0.612446, 0.766159, -0.194707,
		46.392323, 40.500412, 23.756887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.658985, 40.444519, 23.323154>,  <45.963608, 39.964100, 23.893183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.658985, 40.444519, 23.323154> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.058598, 40.446255, 23.340637>,  <46.298367, 40.447296, 23.351128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.058598, 40.446255, 23.340637>,  <45.658985, 40.444519, 23.323154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.058598, 40.446255, 23.340637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043905, -0.127063, -0.990923,
		0.001256, 0.991885, -0.127130,
		0.999035, 0.004337, 0.043708,
		46.358307, 40.447556, 23.353750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.987865, 40.254265, 23.215855>,  <45.658985, 40.444519, 23.323154>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.987865, 40.254265, 23.215855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.994831, 39.899353, 23.031496>,  <44.999012, 39.686405, 22.920881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.994831, 39.899353, 23.031496>,  <44.987865, 40.254265, 23.215855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.994831, 39.899353, 23.031496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960852, -0.142333, 0.237708,
		-0.276515, 0.438714, -0.855026,
		0.017413, -0.887283, -0.460896,
		45.000053, 39.633167, 22.893227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.379219, 39.999832, 23.095650>,  <44.987865, 40.254265, 23.215855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.379219, 39.999832, 23.095650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.517551, 39.643246, 22.978558>,  <44.600552, 39.429295, 22.908302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.517551, 39.643246, 22.978558>,  <44.379219, 39.999832, 23.095650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.517551, 39.643246, 22.978558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912079, -0.392625, 0.118140,
		-0.220251, 0.226138, -0.948868,
		0.345834, -0.891463, -0.292732,
		44.621300, 39.375805, 22.890738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.865582, 39.784348, 22.717173>,  <44.379219, 39.999832, 23.095650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.865582, 39.784348, 22.717173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.049191, 39.434589, 22.780067>,  <44.159355, 39.224735, 22.817804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.049191, 39.434589, 22.780067>,  <43.865582, 39.784348, 22.717173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.049191, 39.434589, 22.780067> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878947, -0.421178, 0.223743,
		-0.129417, -0.240906, -0.961881,
		0.459024, -0.874399, 0.157236,
		44.186897, 39.172268, 22.827238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.524693, 39.300774, 22.314743>,  <43.865582, 39.784348, 22.717173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.524693, 39.300774, 22.314743> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.714851, 39.092255, 22.598221>,  <43.828945, 38.967144, 22.768307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.714851, 39.092255, 22.598221>,  <43.524693, 39.300774, 22.314743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.714851, 39.092255, 22.598221> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770258, -0.635850, 0.048974,
		0.425093, -0.569159, -0.703814,
		0.475394, -0.521300, 0.708694,
		43.857471, 38.935863, 22.810829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.178711, 38.625519, 22.297565>,  <43.524693, 39.300774, 22.314743>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.178711, 38.625519, 22.297565> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.385017, 38.634632, 22.640135>,  <43.508801, 38.640099, 22.845676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.385017, 38.634632, 22.640135>,  <43.178711, 38.625519, 22.297565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.385017, 38.634632, 22.640135> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745601, -0.480432, 0.461806,
		0.421974, -0.876736, -0.230805,
		0.515768, 0.022782, 0.856426,
		43.539749, 38.641468, 22.897062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.891651, 38.046947, 22.619053>,  <43.178711, 38.625519, 22.297565>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.891651, 38.046947, 22.619053> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.058468, 38.252121, 22.919178>,  <43.158558, 38.375225, 23.099253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.058468, 38.252121, 22.919178>,  <42.891651, 38.046947, 22.619053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.058468, 38.252121, 22.919178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733640, -0.297326, 0.611039,
		0.536513, -0.805290, 0.252313,
		0.417045, 0.512937, 0.750313,
		43.183582, 38.406002, 23.144272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.872913, 37.655617, 23.145288>,  <42.891651, 38.046947, 22.619053>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.872913, 37.655617, 23.145288> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.924702, 38.000320, 23.341494>,  <42.955776, 38.207142, 23.459217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.924702, 38.000320, 23.341494>,  <42.872913, 37.655617, 23.145288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.924702, 38.000320, 23.341494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816296, -0.188203, 0.546114,
		0.562936, -0.471112, 0.679085,
		0.129475, 0.861762, 0.490513,
		42.963543, 38.258850, 23.488647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.767811, 37.533257, 23.885422>,  <42.872913, 37.655617, 23.145288>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.767811, 37.533257, 23.885422> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.717701, 37.929691, 23.867283>,  <42.687637, 38.167553, 23.856400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.717701, 37.929691, 23.867283>,  <42.767811, 37.533257, 23.885422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.717701, 37.929691, 23.867283> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808293, -0.075448, 0.583926,
		0.575299, 0.109805, 0.810539,
		-0.125272, 0.991085, -0.045349,
		42.680119, 38.227016, 23.853678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.833107, 37.928379, 24.585838>,  <42.767811, 37.533257, 23.885422>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.833107, 37.928379, 24.585838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.574879, 38.118626, 24.346830>,  <42.419941, 38.232773, 24.203424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.574879, 38.118626, 24.346830>,  <42.833107, 37.928379, 24.585838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.574879, 38.118626, 24.346830> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709431, -0.083795, 0.699776,
		0.282754, 0.875654, 0.391511,
		-0.645568, 0.475615, -0.597522,
		42.381207, 38.261311, 24.167574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.436180, 38.280823, 25.072598>,  <42.833107, 37.928379, 24.585838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.436180, 38.280823, 25.072598> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.230717, 38.334072, 24.733557>,  <42.107437, 38.366024, 24.530132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.230717, 38.334072, 24.733557>,  <42.436180, 38.280823, 25.072598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.230717, 38.334072, 24.733557> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852949, 0.027745, 0.521256,
		0.092909, 0.990711, 0.099298,
		-0.513659, 0.133126, -0.847604,
		42.076618, 38.374008, 24.479275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.180786, 38.963509, 25.123579>,  <42.436180, 38.280823, 25.072598>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.180786, 38.963509, 25.123579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.964230, 38.750790, 24.863092>,  <41.834293, 38.623158, 24.706800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.964230, 38.750790, 24.863092>,  <42.180786, 38.963509, 25.123579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.964230, 38.750790, 24.863092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834289, 0.243833, 0.494476,
		-0.104172, 0.811011, -0.575682,
		-0.541396, -0.531796, -0.651218,
		41.801811, 38.591251, 24.667727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.668816, 39.391022, 24.693956>,  <42.180786, 38.963509, 25.123579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.668816, 39.391022, 24.693956> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.522404, 39.019341, 24.673512>,  <41.434559, 38.796333, 24.661245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.522404, 39.019341, 24.673512>,  <41.668816, 39.391022, 24.693956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.522404, 39.019341, 24.673512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731264, 0.253219, 0.633351,
		-0.575568, 0.269198, -0.772175,
		-0.366026, -0.929200, -0.051110,
		41.412598, 38.740582, 24.658178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.008900, 39.563282, 24.604513>,  <41.668816, 39.391022, 24.693956>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.008900, 39.563282, 24.604513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.010273, 39.181412, 24.723564>,  <41.011097, 38.952290, 24.794994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.010273, 39.181412, 24.723564>,  <41.008900, 39.563282, 24.604513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.010273, 39.181412, 24.723564> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702624, 0.209474, 0.680029,
		-0.711553, -0.211456, -0.670059,
		0.003437, -0.954676, 0.297626,
		41.011303, 38.895008, 24.812853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.406563, 39.381580, 24.787851>,  <41.008900, 39.563282, 24.604513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.406563, 39.381580, 24.787851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.612904, 39.108196, 24.994453>,  <40.736706, 38.944164, 25.118414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.612904, 39.108196, 24.994453>,  <40.406563, 39.381580, 24.787851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.612904, 39.108196, 24.994453> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586381, 0.157847, 0.794507,
		-0.624545, -0.712715, -0.319345,
		0.515850, -0.683463, 0.516505,
		40.767658, 38.903156, 25.149405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965912, 39.255157, 24.212854>,  <40.406563, 39.381580, 24.787851>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965912, 39.255157, 24.212854> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.619656, 39.318153, 24.022753>,  <39.411903, 39.355949, 23.908691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.619656, 39.318153, 24.022753>,  <39.965912, 39.255157, 24.212854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.619656, 39.318153, 24.022753> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499939, 0.323156, -0.803512,
		0.027036, -0.933149, -0.358472,
		-0.865639, 0.157491, -0.475255,
		39.359962, 39.365398, 23.880177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988403, 38.889290, 23.538179>,  <39.965912, 39.255157, 24.212854>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.988403, 38.889290, 23.538179> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.723572, 39.185261, 23.490591>,  <39.564671, 39.362843, 23.462038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.723572, 39.185261, 23.490591>,  <39.988403, 38.889290, 23.538179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.723572, 39.185261, 23.490591> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497137, 0.314831, -0.808539,
		-0.560806, -0.594464, -0.576290,
		-0.662081, 0.739929, -0.118971,
		39.524948, 39.407238, 23.454899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.895752, 38.950787, 22.877594>,  <39.988403, 38.889290, 23.538179>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.895752, 38.950787, 22.877594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.806252, 39.316635, 23.012293>,  <39.752552, 39.536144, 23.093113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.806252, 39.316635, 23.012293>,  <39.895752, 38.950787, 22.877594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.806252, 39.316635, 23.012293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585817, 0.402336, -0.703523,
		-0.778944, 0.039858, -0.625825,
		-0.223751, 0.914624, 0.336747,
		39.739128, 39.591022, 23.113317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676483, 39.267220, 22.368090>,  <39.895752, 38.950787, 22.877594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.676483, 39.267220, 22.368090> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.829926, 39.552864, 22.602320>,  <39.921989, 39.724251, 22.742857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.829926, 39.552864, 22.602320>,  <39.676483, 39.267220, 22.368090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829926, 39.552864, 22.602320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547524, 0.334756, -0.766913,
		-0.743683, 0.614808, -0.262577,
		0.383605, 0.714108, 0.585575,
		39.945007, 39.767097, 22.777992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.698364, 39.808941, 21.986534>,  <39.676483, 39.267220, 22.368090>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.698364, 39.808941, 21.986534> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.929222, 39.928871, 22.290377>,  <40.067738, 40.000832, 22.472683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.929222, 39.928871, 22.290377>,  <39.698364, 39.808941, 21.986534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.929222, 39.928871, 22.290377> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712240, 0.270246, -0.647827,
		-0.399518, 0.914915, -0.057578,
		0.577147, 0.299828, 0.759608,
		40.102367, 40.018818, 22.518259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.045437, 40.426788, 21.706797>,  <39.698364, 39.808941, 21.986534>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.045437, 40.426788, 21.706797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.276760, 40.311825, 22.012203>,  <40.415554, 40.242847, 22.195448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.276760, 40.311825, 22.012203>,  <40.045437, 40.426788, 21.706797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.276760, 40.311825, 22.012203> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815739, 0.216931, -0.536201,
		-0.011521, 0.932918, 0.359904,
		0.578306, -0.287410, 0.763517,
		40.450253, 40.225601, 22.241259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.414318, 41.075306, 21.893301>,  <40.045437, 40.426788, 21.706797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.414318, 41.075306, 21.893301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.606018, 40.757019, 22.041439>,  <40.721039, 40.566048, 22.130322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.606018, 40.757019, 22.041439>,  <40.414318, 41.075306, 21.893301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.606018, 40.757019, 22.041439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854407, 0.326446, -0.404254,
		0.200775, 0.510162, 0.836316,
		0.479247, -0.795718, 0.370344,
		40.749794, 40.518303, 22.152542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.188904, 41.808357, 21.955282>,  <40.414318, 41.075306, 21.893301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.188904, 41.808357, 21.955282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.976116, 42.034931, 21.703516>,  <39.848446, 42.170876, 21.552456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.976116, 42.034931, 21.703516>,  <40.188904, 41.808357, 21.955282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.976116, 42.034931, 21.703516> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708722, 0.108931, 0.697027,
		0.463385, 0.816874, 0.343498,
		-0.531966, 0.566437, -0.629414,
		39.816528, 42.204861, 21.514692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.956211, 42.342773, 22.392378>,  <40.188904, 41.808357, 21.955282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.956211, 42.342773, 22.392378> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.710663, 42.359486, 22.077057>,  <39.563335, 42.369511, 21.887865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.710663, 42.359486, 22.077057>,  <39.956211, 42.342773, 22.392378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.710663, 42.359486, 22.077057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768721, 0.195468, 0.608983,
		0.179529, 0.979820, -0.087878,
		-0.613871, 0.041777, -0.788300,
		39.526501, 42.372017, 21.840567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.614902, 42.989677, 22.522758>,  <39.956211, 42.342773, 22.392378>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.614902, 42.989677, 22.522758> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.396729, 42.767681, 22.271524>,  <39.265823, 42.634483, 22.120785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.396729, 42.767681, 22.271524>,  <39.614902, 42.989677, 22.522758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.396729, 42.767681, 22.271524> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791884, 0.095680, 0.603129,
		-0.274636, 0.826335, -0.491675,
		-0.545431, -0.554991, -0.628085,
		39.233101, 42.601185, 22.083099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936306, 43.227352, 22.577644>,  <39.614902, 42.989677, 22.522758>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.936306, 43.227352, 22.577644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.892105, 42.863609, 22.417212>,  <38.865585, 42.645363, 22.320951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.892105, 42.863609, 22.417212>,  <38.936306, 43.227352, 22.577644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.892105, 42.863609, 22.417212> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719776, -0.205062, 0.663229,
		-0.685356, 0.361977, -0.631870,
		-0.110501, -0.909353, -0.401082,
		38.858955, 42.590805, 22.296886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208801, 43.246853, 22.493038>,  <38.936306, 43.227352, 22.577644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.208801, 43.246853, 22.493038> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.345058, 42.871983, 22.462938>,  <38.426815, 42.647060, 22.444880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.345058, 42.871983, 22.462938>,  <38.208801, 43.246853, 22.493038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345058, 42.871983, 22.462938> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707750, -0.308290, 0.635648,
		-0.618912, -0.163273, -0.768303,
		0.340645, -0.937176, -0.075248,
		38.447250, 42.590828, 22.440363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611591, 42.812847, 22.367964>,  <38.208801, 43.246853, 22.493038>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.611591, 42.812847, 22.367964> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.875412, 42.580025, 22.558203>,  <38.033707, 42.440331, 22.672346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.875412, 42.580025, 22.558203>,  <37.611591, 42.812847, 22.367964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.875412, 42.580025, 22.558203> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711053, -0.277999, 0.645849,
		-0.243706, -0.764149, -0.597231,
		0.659554, -0.582060, 0.475600,
		38.073277, 42.405407, 22.700882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252670, 42.247208, 22.713936>,  <37.611591, 42.812847, 22.367964>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.252670, 42.247208, 22.713936> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.611603, 42.180424, 22.877363>,  <37.826962, 42.140354, 22.975420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.611603, 42.180424, 22.877363>,  <37.252670, 42.247208, 22.713936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.611603, 42.180424, 22.877363> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438515, -0.232207, 0.868207,
		-0.050079, -0.958230, -0.281578,
		0.897327, -0.166956, 0.408570,
		37.880802, 42.130337, 22.999933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<44.624928, 43.843300, 23.700563> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.727737, 43.458477, 23.737171>,  <44.789425, 43.227581, 23.759136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.727737, 43.458477, 23.737171>,  <44.624928, 43.843300, 23.700563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.727737, 43.458477, 23.737171> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748022, -0.138091, 0.649148,
		-0.611883, -0.235304, -0.755137,
		0.257025, -0.962062, 0.091517,
		44.804844, 43.169857, 23.764626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.007202, 43.478573, 23.582449>,  <44.624928, 43.843300, 23.700563>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.007202, 43.478573, 23.582449> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.263855, 43.243587, 23.779711>,  <44.417847, 43.102596, 23.898067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.263855, 43.243587, 23.779711>,  <44.007202, 43.478573, 23.582449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.263855, 43.243587, 23.779711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705736, -0.200343, 0.679559,
		-0.300415, -0.784061, -0.543139,
		0.641629, -0.587462, 0.493154,
		44.456345, 43.067348, 23.927658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.577824, 42.947517, 23.713940>,  <44.007202, 43.478573, 23.582449>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.577824, 42.947517, 23.713940> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.883896, 42.907238, 23.968298>,  <44.067539, 42.883072, 24.120913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.883896, 42.907238, 23.968298>,  <43.577824, 42.947517, 23.713940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.883896, 42.907238, 23.968298> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642652, -0.178870, 0.744986,
		0.038724, -0.978706, -0.201581,
		0.765179, -0.100697, 0.635894,
		44.113449, 42.877029, 24.159065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.481968, 42.296581, 23.996174>,  <43.577824, 42.947517, 23.713940>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.481968, 42.296581, 23.996174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.710583, 42.513180, 24.242792>,  <43.847752, 42.643139, 24.390762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.710583, 42.513180, 24.242792>,  <43.481968, 42.296581, 23.996174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.710583, 42.513180, 24.242792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636306, -0.181960, 0.749670,
		0.518128, -0.820777, 0.240559,
		0.571540, 0.541494, 0.616544,
		43.882046, 42.675629, 24.427755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.415413, 41.977413, 24.685614>,  <43.481968, 42.296581, 23.996174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.415413, 41.977413, 24.685614> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.551243, 42.349537, 24.741060>,  <43.632740, 42.572811, 24.774328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.551243, 42.349537, 24.741060>,  <43.415413, 41.977413, 24.685614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.551243, 42.349537, 24.741060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693388, 0.148019, 0.705197,
		0.635535, -0.335579, 0.695329,
		0.339571, 0.930311, 0.138615,
		43.653114, 42.628632, 24.782644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.389362, 42.049862, 25.369879>,  <43.415413, 41.977413, 24.685614>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.389362, 42.049862, 25.369879> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.401604, 42.426044, 25.234461>,  <43.408951, 42.651752, 25.153210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.401604, 42.426044, 25.234461>,  <43.389362, 42.049862, 25.369879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.401604, 42.426044, 25.234461> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758191, 0.242548, 0.605241,
		0.651314, 0.238156, 0.720466,
		0.030606, 0.940453, -0.338543,
		43.410786, 42.708179, 25.132898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.381557, 42.434479, 25.942484>,  <43.389362, 42.049862, 25.369879>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.381557, 42.434479, 25.942484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.264366, 42.679134, 25.648529>,  <43.194050, 42.825928, 25.472157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.264366, 42.679134, 25.648529>,  <43.381557, 42.434479, 25.942484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.264366, 42.679134, 25.648529> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797590, 0.267519, 0.540632,
		0.527268, 0.744535, 0.409459,
		-0.292982, 0.611638, -0.734888,
		43.176472, 42.862625, 25.428062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.061161, 43.013760, 26.258490>,  <43.381557, 42.434479, 25.942484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.061161, 43.013760, 26.258490> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.913082, 43.008526, 25.886946>,  <42.824234, 43.005386, 25.664019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.913082, 43.008526, 25.886946>,  <43.061161, 43.013760, 26.258490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.913082, 43.008526, 25.886946> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855608, 0.394218, 0.335450,
		0.361786, 0.918924, -0.157130,
		-0.370197, -0.013080, -0.928861,
		42.802025, 43.004601, 25.608288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.803612, 43.613037, 26.252701>,  <43.061161, 43.013760, 26.258490>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.803612, 43.613037, 26.252701> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.622681, 43.414970, 25.955997>,  <42.514122, 43.296131, 25.777975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.622681, 43.414970, 25.955997>,  <42.803612, 43.613037, 26.252701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.622681, 43.414970, 25.955997> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880496, 0.380245, 0.283092,
		0.141872, 0.781165, -0.607991,
		-0.452327, -0.495171, -0.741759,
		42.486984, 43.266418, 25.733469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.285339, 44.116074, 25.968670>,  <42.803612, 43.613037, 26.252701>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.285339, 44.116074, 25.968670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.194862, 43.733604, 25.894289>,  <42.140575, 43.504124, 25.849661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.194862, 43.733604, 25.894289>,  <42.285339, 44.116074, 25.968670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.194862, 43.733604, 25.894289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889952, 0.125246, 0.438519,
		-0.396009, 0.264678, -0.879274,
		-0.226192, -0.956169, -0.185952,
		42.127007, 43.446754, 25.838503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.568947, 44.144531, 25.613382>,  <42.285339, 44.116074, 25.968670>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.568947, 44.144531, 25.613382> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.647217, 43.778667, 25.754869>,  <41.694180, 43.559151, 25.839762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.647217, 43.778667, 25.754869>,  <41.568947, 44.144531, 25.613382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.647217, 43.778667, 25.754869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830075, 0.037587, 0.556384,
		-0.522194, -0.402484, -0.751878,
		0.195675, -0.914656, 0.353719,
		41.705917, 43.504272, 25.860985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.895588, 43.651901, 25.666054>,  <41.568947, 44.144531, 25.613382>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.895588, 43.651901, 25.666054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.159492, 43.523956, 25.938053>,  <41.317837, 43.447189, 26.101254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.159492, 43.523956, 25.938053>,  <40.895588, 43.651901, 25.666054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.159492, 43.523956, 25.938053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751308, -0.299667, 0.587994,
		0.015699, -0.898827, -0.438022,
		0.659765, -0.319859, 0.680000,
		41.357422, 43.427998, 26.142054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.137833, 43.560799, 25.610138>,  <40.895588, 43.651901, 25.666054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.137833, 43.560799, 25.610138> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.988102, 43.925816, 25.544247>,  <39.898262, 44.144825, 25.504711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.988102, 43.925816, 25.544247>,  <40.137833, 43.560799, 25.610138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.988102, 43.925816, 25.544247> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351109, -0.024937, -0.936003,
		-0.858253, -0.408213, -0.311068,
		-0.374331, 0.912546, -0.164730,
		39.875801, 44.199581, 25.494827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.867264, 43.471142, 24.989750>,  <40.137833, 43.560799, 25.610138>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.867264, 43.471142, 24.989750> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.885387, 43.870247, 25.009394>,  <39.896259, 44.109711, 25.021179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.885387, 43.870247, 25.009394>,  <39.867264, 43.471142, 24.989750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.885387, 43.870247, 25.009394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443748, 0.023942, -0.895832,
		-0.895006, 0.062378, -0.441672,
		0.045305, 0.997765, 0.049108,
		39.898979, 44.169575, 25.024126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.659180, 43.708481, 24.328613>,  <39.867264, 43.471142, 24.989750>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.659180, 43.708481, 24.328613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.867413, 44.003403, 24.500835>,  <39.992352, 44.180355, 24.604168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.867413, 44.003403, 24.500835>,  <39.659180, 43.708481, 24.328613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.867413, 44.003403, 24.500835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394398, 0.239594, -0.887156,
		-0.757261, 0.631649, -0.166062,
		0.520584, 0.737302, 0.430556,
		40.023586, 44.224594, 24.630003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.713142, 44.400703, 23.855104>,  <39.659180, 43.708481, 24.328613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.713142, 44.400703, 23.855104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.013763, 44.481461, 24.106314>,  <40.194134, 44.529915, 24.257040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.013763, 44.481461, 24.106314>,  <39.713142, 44.400703, 23.855104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.013763, 44.481461, 24.106314> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565151, 0.293999, -0.770823,
		-0.340262, 0.934240, 0.106854,
		0.751549, 0.201893, 0.628023,
		40.239227, 44.542030, 24.294722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.011929, 44.865299, 23.554098>,  <39.713142, 44.400703, 23.855104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.011929, 44.865299, 23.554098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.308765, 44.771778, 23.805380>,  <40.486866, 44.715668, 23.956148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.308765, 44.771778, 23.805380>,  <40.011929, 44.865299, 23.554098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.308765, 44.771778, 23.805380> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670084, 0.282473, -0.686437,
		-0.016962, 0.930348, 0.366287,
		0.742091, -0.233800, 0.628202,
		40.531391, 44.701637, 23.993841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.546589, 45.427086, 23.638401>,  <40.011929, 44.865299, 23.554098>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.546589, 45.427086, 23.638401> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.740780, 45.088917, 23.727467>,  <40.857292, 44.886017, 23.780907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.740780, 45.088917, 23.727467>,  <40.546589, 45.427086, 23.638401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.740780, 45.088917, 23.727467> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709477, 0.232161, -0.665390,
		0.510840, 0.481005, 0.712514,
		0.485474, -0.845420, 0.222665,
		40.886421, 44.835289, 23.794266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.201859, 45.686241, 23.550348>,  <40.546589, 45.427086, 23.638401>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.201859, 45.686241, 23.550348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.221798, 45.286991, 23.536144>,  <41.233761, 45.047440, 23.527622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.221798, 45.286991, 23.536144>,  <41.201859, 45.686241, 23.550348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.221798, 45.286991, 23.536144> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636519, 0.059147, -0.768990,
		0.769648, 0.015729, 0.638274,
		0.049847, -0.998125, -0.035510,
		41.236752, 44.987553, 23.525492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.958572, 45.479229, 23.536186>,  <41.201859, 45.686241, 23.550348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.958572, 45.479229, 23.536186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.766941, 45.153687, 23.404657>,  <41.651962, 44.958363, 23.325741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.766941, 45.153687, 23.404657>,  <41.958572, 45.479229, 23.536186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.766941, 45.153687, 23.404657> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582594, -0.014616, -0.812632,
		0.656560, -0.580882, 0.481150,
		-0.479076, -0.813857, -0.328822,
		41.623219, 44.909531, 23.306011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.516136, 45.059361, 23.396193>,  <41.958572, 45.479229, 23.536186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.516136, 45.059361, 23.396193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.204311, 44.950287, 23.170652>,  <42.017216, 44.884842, 23.035328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.204311, 44.950287, 23.170652>,  <42.516136, 45.059361, 23.396193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.204311, 44.950287, 23.170652> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588298, -0.009877, -0.808584,
		0.214919, -0.962053, 0.168120,
		-0.779561, -0.272685, -0.563851,
		41.970444, 44.868481, 23.001497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.766338, 44.471401, 22.982826>,  <42.516136, 45.059361, 23.396193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.766338, 44.471401, 22.982826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.417431, 44.573730, 22.816116>,  <42.208088, 44.635128, 22.716091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.417431, 44.573730, 22.816116>,  <42.766338, 44.471401, 22.982826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.417431, 44.573730, 22.816116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334490, -0.309597, -0.890093,
		-0.356743, -0.915806, 0.184480,
		-0.872267, 0.255828, -0.416775,
		42.155750, 44.650478, 22.691084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.634796, 43.995884, 22.479107>,  <42.766338, 44.471401, 22.982826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.634796, 43.995884, 22.479107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.386913, 44.290165, 22.369781>,  <42.238182, 44.466736, 22.304186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.386913, 44.290165, 22.369781>,  <42.634796, 43.995884, 22.479107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.386913, 44.290165, 22.369781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258342, -0.137619, -0.956201,
		-0.741095, -0.663173, -0.104780,
		-0.619707, 0.735705, -0.273314,
		42.201000, 44.510876, 22.287786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.397064, 43.742893, 21.847546>,  <42.634796, 43.995884, 22.479107>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.397064, 43.742893, 21.847546> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.316647, 44.134727, 21.847748>,  <42.268394, 44.369827, 21.847870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.316647, 44.134727, 21.847748>,  <42.397064, 43.742893, 21.847546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.316647, 44.134727, 21.847748> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357662, 0.073885, -0.930924,
		-0.911953, -0.186977, -0.365213,
		-0.201045, 0.979582, 0.000505,
		42.256332, 44.428600, 21.847898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.045795, 43.967670, 21.217813>,  <42.397064, 43.742893, 21.847546>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.045795, 43.967670, 21.217813> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.222878, 44.299320, 21.354382>,  <42.329124, 44.498310, 21.436323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.222878, 44.299320, 21.354382>,  <42.045795, 43.967670, 21.217813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.222878, 44.299320, 21.354382> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360722, 0.183917, -0.914360,
		-0.820911, 0.527947, -0.217662,
		0.442702, 0.829124, 0.341422,
		42.355690, 44.548058, 21.456808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.954155, 44.479679, 20.784126>,  <42.045795, 43.967670, 21.217813>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.954155, 44.479679, 20.784126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.299515, 44.566303, 20.966398>,  <42.506729, 44.618279, 21.075762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.299515, 44.566303, 20.966398>,  <41.954155, 44.479679, 20.784126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.299515, 44.566303, 20.966398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427375, 0.166067, -0.888691,
		-0.268127, 0.962041, 0.050830,
		0.863399, 0.216559, 0.455680,
		42.558533, 44.631271, 21.103102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.763855, 44.042889, 20.268776>,  <41.954155, 44.479679, 20.784126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.763855, 44.042889, 20.268776> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.864170, 43.673374, 20.153038>,  <41.924358, 43.451664, 20.083595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.864170, 43.673374, 20.153038>,  <41.763855, 44.042889, 20.268776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.864170, 43.673374, 20.153038> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893770, -0.335779, 0.297367,
		-0.371860, 0.184031, -0.909864,
		0.250788, -0.923789, -0.289344,
		41.939407, 43.396236, 20.066235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.354118, 43.768166, 19.764814>,  <41.763855, 44.042889, 20.268776>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.354118, 43.768166, 19.764814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.508053, 43.437325, 19.928665>,  <41.600414, 43.238819, 20.026976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.508053, 43.437325, 19.928665>,  <41.354118, 43.768166, 19.764814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.508053, 43.437325, 19.928665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921385, -0.318155, 0.223221,
		-0.054303, -0.463329, -0.884521,
		0.384840, -0.827106, 0.409627,
		41.623505, 43.189194, 20.051554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.855038, 43.314533, 19.662169>,  <41.354118, 43.768166, 19.764814>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.855038, 43.314533, 19.662169> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.068897, 43.108036, 19.929794>,  <41.197212, 42.984138, 20.090370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.068897, 43.108036, 19.929794>,  <40.855038, 43.314533, 19.662169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.068897, 43.108036, 19.929794> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843721, -0.370869, 0.388060,
		0.047804, -0.771980, -0.633846,
		0.534649, -0.516239, 0.669065,
		41.229290, 42.953163, 20.130514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.706779, 42.620438, 19.635935>,  <40.855038, 43.314533, 19.662169>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.706779, 42.620438, 19.635935> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.836483, 42.679333, 20.009710>,  <40.914307, 42.714668, 20.233976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.836483, 42.679333, 20.009710>,  <40.706779, 42.620438, 19.635935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.836483, 42.679333, 20.009710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811324, -0.464654, 0.354754,
		0.486424, -0.873165, -0.031209,
		0.324260, 0.147240, 0.934439,
		40.933762, 42.723503, 20.290041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.548771, 41.979977, 19.999285>,  <40.706779, 42.620438, 19.635935>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.548771, 41.979977, 19.999285> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.602699, 42.242516, 20.296209>,  <40.635056, 42.400040, 20.474363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.602699, 42.242516, 20.296209>,  <40.548771, 41.979977, 19.999285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.602699, 42.242516, 20.296209> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696097, -0.470412, 0.542367,
		0.705175, -0.589844, 0.393462,
		0.134823, 0.656351, 0.742311,
		40.643147, 42.439423, 20.518902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.593880, 41.575020, 20.569340>,  <40.548771, 41.979977, 19.999285>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.593880, 41.575020, 20.569340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.517368, 41.934723, 20.726690>,  <40.471462, 42.150543, 20.821100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.517368, 41.934723, 20.726690>,  <40.593880, 41.575020, 20.569340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.517368, 41.934723, 20.726690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750672, -0.392241, 0.531637,
		0.632378, -0.193605, 0.750077,
		-0.191283, 0.899258, 0.393378,
		40.459984, 42.204502, 20.844704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.609901, 41.602654, 21.406738>,  <40.593880, 41.575020, 20.569340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.609901, 41.602654, 21.406738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.382015, 41.908104, 21.285208>,  <40.245285, 42.091373, 21.212290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.382015, 41.908104, 21.285208>,  <40.609901, 41.602654, 21.406738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.382015, 41.908104, 21.285208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692345, -0.246749, 0.678066,
		0.442818, 0.596653, 0.669266,
		-0.569711, 0.763623, -0.303825,
		40.211102, 42.137192, 21.194059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.065895, 41.358517, 21.880928>,  <40.609901, 41.602654, 21.406738>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.065895, 41.358517, 21.880928> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.133640, 40.969212, 21.942999>,  <41.174286, 40.735630, 21.980242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.133640, 40.969212, 21.942999>,  <41.065895, 41.358517, 21.880928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.133640, 40.969212, 21.942999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857745, 0.068018, -0.509555,
		0.485375, 0.219401, 0.846330,
		0.169363, -0.973261, 0.155176,
		41.184448, 40.677235, 21.989552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.732273, 41.352699, 22.308302>,  <41.065895, 41.358517, 21.880928>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.732273, 41.352699, 22.308302> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.673397, 41.001274, 22.126549>,  <41.638069, 40.790421, 22.017496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.673397, 41.001274, 22.126549>,  <41.732273, 41.352699, 22.308302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.673397, 41.001274, 22.126549> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952942, -0.002873, -0.303140,
		0.265021, -0.477622, 0.837640,
		-0.147193, -0.878561, -0.454384,
		41.629238, 40.737705, 21.990234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.298676, 40.921272, 22.458088>,  <41.732273, 41.352699, 22.308302>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.298676, 40.921272, 22.458088> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.161022, 40.737324, 22.130650>,  <42.078430, 40.626957, 21.934187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.161022, 40.737324, 22.130650>,  <42.298676, 40.921272, 22.458088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.161022, 40.737324, 22.130650> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937362, -0.118015, -0.327759,
		0.054120, -0.880110, 0.471675,
		-0.344129, -0.459869, -0.818594,
		42.057785, 40.599361, 21.885071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.533283, 40.205437, 22.421831>,  <42.298676, 40.921272, 22.458088>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.533283, 40.205437, 22.421831> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.443497, 40.301178, 22.043980>,  <42.389626, 40.358624, 21.817268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.443497, 40.301178, 22.043980>,  <42.533283, 40.205437, 22.421831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.443497, 40.301178, 22.043980> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974040, 0.084270, -0.210106,
		0.029315, -0.967269, -0.252052,
		-0.224470, 0.239349, -0.944630,
		42.376156, 40.372982, 21.760592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.000660, 39.892395, 21.993242>,  <42.533283, 40.205437, 22.421831>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.000660, 39.892395, 21.993242> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.860710, 40.166958, 21.738235>,  <42.776741, 40.331696, 21.585232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.860710, 40.166958, 21.738235>,  <43.000660, 39.892395, 21.993242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.860710, 40.166958, 21.738235> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909906, 0.087115, -0.405564,
		-0.222846, -0.721977, -0.655049,
		-0.349873, 0.686411, -0.637518,
		42.755749, 40.372883, 21.546980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.287903, 39.754681, 21.312424>,  <43.000660, 39.892395, 21.993242>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.287903, 39.754681, 21.312424> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.175709, 40.138588, 21.307268>,  <43.108395, 40.368935, 21.304174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.175709, 40.138588, 21.307268>,  <43.287903, 39.754681, 21.312424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.175709, 40.138588, 21.307268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873712, 0.249726, -0.417449,
		-0.397437, -0.128349, -0.908609,
		-0.280482, 0.959773, -0.012890,
		43.091564, 40.426521, 21.303402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.345299, 39.900715, 20.651897>,  <43.287903, 39.754681, 21.312424>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.345299, 39.900715, 20.651897> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.364967, 40.237022, 20.867559>,  <43.376770, 40.438808, 20.996958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.364967, 40.237022, 20.867559>,  <43.345299, 39.900715, 20.651897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.364967, 40.237022, 20.867559> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722894, 0.342530, -0.600081,
		-0.689207, 0.419261, -0.590943,
		0.049175, 0.840769, 0.539156,
		43.379719, 40.489254, 21.029306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.383995, 40.393238, 20.150640>,  <43.345299, 39.900715, 20.651897>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.383995, 40.393238, 20.150640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.532154, 40.555702, 20.484787>,  <43.621052, 40.653179, 20.685276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.532154, 40.555702, 20.484787>,  <43.383995, 40.393238, 20.150640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.532154, 40.555702, 20.484787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782395, 0.348319, -0.516268,
		-0.500660, 0.844814, -0.188758,
		0.370402, 0.406158, 0.835367,
		43.643276, 40.677551, 20.735397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.385540, 41.105690, 20.078892>,  <43.383995, 40.393238, 20.150640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.385540, 41.105690, 20.078892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.659149, 40.931820, 20.313213>,  <43.823315, 40.827496, 20.453806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.659149, 40.931820, 20.313213>,  <43.385540, 41.105690, 20.078892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.659149, 40.931820, 20.313213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709329, 0.208983, -0.673185,
		0.170196, 0.876002, 0.451279,
		0.684021, -0.434679, 0.585806,
		43.864357, 40.801414, 20.488955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.614697, 38.835293, 32.165379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.907257, 38.635708, 32.351318>,  <34.082794, 38.515957, 32.462883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.907257, 38.635708, 32.351318>,  <33.614697, 38.835293, 32.165379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907257, 38.635708, 32.351318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644459, 0.282850, -0.710400,
		0.222980, 0.819166, 0.528438,
		0.731405, -0.498961, 0.464849,
		34.126678, 38.486019, 32.490772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053650, 39.241795, 32.172283>,  <33.614697, 38.835293, 32.165379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053650, 39.241795, 32.172283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.289513, 38.923779, 32.229149>,  <34.431030, 38.732967, 32.263268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.289513, 38.923779, 32.229149>,  <34.053650, 39.241795, 32.172283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.289513, 38.923779, 32.229149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674826, 0.388280, -0.627574,
		0.443748, 0.465990, 0.765468,
		0.589659, -0.795042, 0.142163,
		34.466412, 38.685265, 32.271797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690533, 39.575062, 32.225376>,  <34.053650, 39.241795, 32.172283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.690533, 39.575062, 32.225376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.733204, 39.190861, 32.122574>,  <34.758808, 38.960339, 32.060894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.733204, 39.190861, 32.122574>,  <34.690533, 39.575062, 32.225376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.733204, 39.190861, 32.122574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509764, 0.274758, -0.815260,
		0.853675, -0.044041, 0.518941,
		0.106678, -0.960504, -0.257005,
		34.765209, 38.902710, 32.045471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.388451, 39.459362, 32.126396>,  <34.690533, 39.575062, 32.225376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.388451, 39.459362, 32.126396> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.254852, 39.124069, 31.953972>,  <35.174694, 38.922894, 31.850517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.254852, 39.124069, 31.953972>,  <35.388451, 39.459362, 32.126396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.254852, 39.124069, 31.953972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586064, 0.173499, -0.791472,
		0.738226, -0.516977, 0.433310,
		-0.333993, -0.838232, -0.431063,
		35.154655, 38.872601, 31.824654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.998508, 39.189285, 31.879013>,  <35.388451, 39.459362, 32.126396>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.998508, 39.189285, 31.879013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.694340, 39.029137, 31.674482>,  <35.511837, 38.933048, 31.551764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.694340, 39.029137, 31.674482>,  <35.998508, 39.189285, 31.879013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.694340, 39.029137, 31.674482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488365, 0.166463, -0.856615,
		0.428083, -0.901106, 0.068946,
		-0.760424, -0.400373, -0.511328,
		35.466213, 38.909023, 31.521084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.273724, 38.726280, 31.381609>,  <35.998508, 39.189285, 31.879013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.273724, 38.726280, 31.381609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.910103, 38.826897, 31.248730>,  <35.691933, 38.887264, 31.169003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.910103, 38.826897, 31.248730>,  <36.273724, 38.726280, 31.381609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910103, 38.826897, 31.248730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378431, 0.164692, -0.910860,
		-0.174407, -0.953732, -0.244904,
		-0.909050, 0.251540, -0.332198,
		35.637386, 38.902359, 31.149071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218204, 38.322090, 30.842848>,  <36.273724, 38.726280, 31.381609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.218204, 38.322090, 30.842848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.950989, 38.613262, 30.781097>,  <35.790657, 38.787968, 30.744047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.950989, 38.613262, 30.781097>,  <36.218204, 38.322090, 30.842848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.950989, 38.613262, 30.781097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273719, 0.047474, -0.960637,
		-0.691952, -0.684002, -0.230963,
		-0.668042, 0.727934, -0.154375,
		35.750576, 38.831642, 30.734785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963238, 38.165573, 30.196741>,  <36.218204, 38.322090, 30.842848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.963238, 38.165573, 30.196741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.866405, 38.547733, 30.264399>,  <35.808304, 38.777027, 30.304993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.866405, 38.547733, 30.264399>,  <35.963238, 38.165573, 30.196741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.866405, 38.547733, 30.264399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257358, 0.231315, -0.938222,
		-0.935501, -0.183597, -0.301877,
		-0.242083, 0.955398, 0.169146,
		35.793781, 38.834354, 30.315142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415535, 38.335297, 29.792072>,  <35.963238, 38.165573, 30.196741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415535, 38.335297, 29.792072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.605362, 38.679028, 29.868324>,  <35.719257, 38.885265, 29.914076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.605362, 38.679028, 29.868324>,  <35.415535, 38.335297, 29.792072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605362, 38.679028, 29.868324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071862, 0.178023, -0.981399,
		-0.877281, 0.479438, 0.022731,
		0.474567, 0.859329, 0.190630,
		35.747730, 38.936825, 29.925512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.058296, 38.902309, 29.395594>,  <35.415535, 38.335297, 29.792072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.058296, 38.902309, 29.395594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.425266, 39.031590, 29.488441>,  <35.645447, 39.109158, 29.544149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.425266, 39.031590, 29.488441>,  <35.058296, 38.902309, 29.395594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.425266, 39.031590, 29.488441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168089, 0.213963, -0.962271,
		-0.360670, 0.921825, 0.141968,
		0.917422, 0.323199, 0.232119,
		35.700493, 39.128548, 29.558077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229622, 39.212921, 28.791502>,  <35.058296, 38.902309, 29.395594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.229622, 39.212921, 28.791502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.579849, 39.210300, 28.984722>,  <35.789986, 39.208729, 29.100655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.579849, 39.210300, 28.984722>,  <35.229622, 39.212921, 28.791502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.579849, 39.210300, 28.984722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482433, -0.040525, -0.874995,
		0.025308, 0.999157, -0.032322,
		0.875567, -0.006552, 0.483052,
		35.842518, 39.208336, 29.129639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591785, 39.867298, 28.578920>,  <35.229622, 39.212921, 28.791502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.591785, 39.867298, 28.578920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.863441, 39.594673, 28.687918>,  <36.026436, 39.431099, 28.753315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.863441, 39.594673, 28.687918>,  <35.591785, 39.867298, 28.578920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863441, 39.594673, 28.687918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421148, 0.057766, -0.905150,
		0.601172, 0.729481, 0.326268,
		0.679137, -0.681558, 0.272492,
		36.067181, 39.390205, 28.769665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.610313, 40.643551, 28.508394>,  <35.591785, 39.867298, 28.578920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.610313, 40.643551, 28.508394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.321350, 40.849384, 28.323647>,  <35.147972, 40.972885, 28.212799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.321350, 40.849384, 28.323647>,  <35.610313, 40.643551, 28.508394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321350, 40.849384, 28.323647> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467888, 0.128024, 0.874466,
		0.509119, 0.847827, 0.148284,
		-0.722412, 0.514587, -0.461867,
		35.104626, 41.003761, 28.185087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.382637, 41.197868, 29.033014>,  <35.610313, 40.643551, 28.508394>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.382637, 41.197868, 29.033014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.089378, 41.138233, 28.767605>,  <34.913422, 41.102451, 28.608358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.089378, 41.138233, 28.767605>,  <35.382637, 41.197868, 29.033014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089378, 41.138233, 28.767605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679542, 0.122251, 0.723379,
		-0.026728, 0.981238, -0.190938,
		-0.733150, -0.149085, -0.663525,
		34.869434, 41.093506, 28.568548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.904617, 41.393463, 29.403595>,  <35.382637, 41.197868, 29.033014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.904617, 41.393463, 29.403595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.685703, 41.243484, 29.104292>,  <34.554356, 41.153496, 28.924709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.685703, 41.243484, 29.104292>,  <34.904617, 41.393463, 29.403595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685703, 41.243484, 29.104292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790910, -0.060726, 0.608912,
		-0.273748, 0.925056, -0.263314,
		-0.547287, -0.374946, -0.748259,
		34.521519, 41.131001, 28.879814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.331455, 41.872078, 29.333838>,  <34.904617, 41.393463, 29.403595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.331455, 41.872078, 29.333838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.211208, 41.515858, 29.197283>,  <34.139061, 41.302124, 29.115351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.211208, 41.515858, 29.197283>,  <34.331455, 41.872078, 29.333838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.211208, 41.515858, 29.197283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715390, -0.026172, 0.698235,
		-0.630750, 0.454125, -0.629225,
		-0.300618, -0.890553, -0.341385,
		34.121021, 41.248692, 29.094868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.531540, 41.898449, 29.282091>,  <34.331455, 41.872078, 29.333838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.531540, 41.898449, 29.282091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.621529, 41.509052, 29.265570>,  <33.675522, 41.275414, 29.255657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.621529, 41.509052, 29.265570>,  <33.531540, 41.898449, 29.282091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.621529, 41.509052, 29.265570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750454, -0.200150, 0.629888,
		-0.621457, -0.110708, -0.775587,
		0.224967, -0.973491, -0.041304,
		33.689018, 41.217007, 29.253180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.877266, 41.503620, 29.062563>,  <33.531540, 41.898449, 29.282091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.877266, 41.503620, 29.062563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.123737, 41.257893, 29.259720>,  <33.271618, 41.110458, 29.378014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.123737, 41.257893, 29.259720>,  <32.877266, 41.503620, 29.062563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123737, 41.257893, 29.259720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711947, -0.166792, 0.682138,
		-0.336839, -0.771229, -0.540135,
		0.616174, -0.614318, 0.492892,
		33.308590, 41.073597, 29.407587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.309368, 40.971634, 29.419476>,  <32.877266, 41.503620, 29.062563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.309368, 40.971634, 29.419476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.663212, 40.969116, 29.605991>,  <32.875519, 40.967606, 29.717901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.663212, 40.969116, 29.605991>,  <32.309368, 40.971634, 29.419476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.663212, 40.969116, 29.605991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462790, -0.134863, 0.876149,
		0.057372, -0.990844, -0.122214,
		0.884609, -0.006293, 0.466291,
		32.928596, 40.967228, 29.745878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.315727, 40.304604, 29.713877>,  <32.309368, 40.971634, 29.419476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.315727, 40.304604, 29.713877> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.586414, 40.532703, 29.900154>,  <32.748825, 40.669563, 30.011921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.586414, 40.532703, 29.900154>,  <32.315727, 40.304604, 29.713877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.586414, 40.532703, 29.900154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434451, -0.201367, 0.877897,
		0.594395, -0.796410, 0.111476,
		0.676718, 0.570248, 0.465693,
		32.789429, 40.703777, 30.039862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.539078, 39.982880, 30.228868>,  <32.315727, 40.304604, 29.713877>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.539078, 39.982880, 30.228868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.659046, 40.350681, 30.330509>,  <32.731026, 40.571362, 30.391493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.659046, 40.350681, 30.330509>,  <32.539078, 39.982880, 30.228868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659046, 40.350681, 30.330509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236789, -0.186274, 0.953537,
		0.924111, -0.346150, 0.161861,
		0.299916, 0.919501, 0.254102,
		32.749020, 40.626534, 30.406740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.868267, 39.951603, 30.926577>,  <32.539078, 39.982880, 30.228868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.868267, 39.951603, 30.926577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.773354, 40.339176, 30.898682>,  <32.716404, 40.571720, 30.881945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.773354, 40.339176, 30.898682>,  <32.868267, 39.951603, 30.926577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.773354, 40.339176, 30.898682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306124, -0.006452, 0.951970,
		0.921945, 0.247238, 0.298145,
		-0.237287, 0.968933, -0.069737,
		32.702168, 40.629856, 30.877760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.188755, 40.186741, 31.481308>,  <32.868267, 39.951603, 30.926577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.188755, 40.186741, 31.481308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.894234, 40.434559, 31.372486>,  <32.717522, 40.583252, 31.307194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.894234, 40.434559, 31.372486>,  <33.188755, 40.186741, 31.481308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.894234, 40.434559, 31.372486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342524, 0.005471, 0.939493,
		0.583548, 0.784941, 0.208182,
		-0.736307, 0.619547, -0.272054,
		32.673340, 40.620422, 31.290871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.262157, 40.696712, 31.877651>,  <33.188755, 40.186741, 31.481308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.262157, 40.696712, 31.877651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.890770, 40.778015, 31.753311>,  <32.667938, 40.826797, 31.678707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.890770, 40.778015, 31.753311>,  <33.262157, 40.696712, 31.877651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.890770, 40.778015, 31.753311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303681, 0.066372, 0.950459,
		0.213822, 0.976873, 0.000102,
		-0.928471, 0.203260, -0.310850,
		32.612228, 40.838993, 31.660057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.008381, 41.314713, 32.293392>,  <33.262157, 40.696712, 31.877651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.008381, 41.314713, 32.293392> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.670712, 41.146542, 32.160355>,  <32.468109, 41.045639, 32.080532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.670712, 41.146542, 32.160355>,  <33.008381, 41.314713, 32.293392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.670712, 41.146542, 32.160355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512193, 0.449447, 0.731885,
		-0.158219, 0.788188, -0.594749,
		-0.844171, -0.420424, -0.332594,
		32.417461, 41.020412, 32.060577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530975, 41.779556, 32.462376>,  <33.008381, 41.314713, 32.293392>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530975, 41.779556, 32.462376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.329380, 41.438583, 32.406719>,  <32.208424, 41.234001, 32.373325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.329380, 41.438583, 32.406719>,  <32.530975, 41.779556, 32.462376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.329380, 41.438583, 32.406719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415892, 0.098313, 0.904084,
		-0.756989, 0.513514, -0.404067,
		-0.503985, -0.852431, -0.139144,
		32.178185, 41.182854, 32.364975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.839350, 41.965141, 32.673428>,  <32.530975, 41.779556, 32.462376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.839350, 41.965141, 32.673428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.908072, 41.571209, 32.683231>,  <31.949305, 41.334850, 32.689114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.908072, 41.571209, 32.683231>,  <31.839350, 41.965141, 32.673428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.908072, 41.571209, 32.683231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265371, -0.022304, 0.963888,
		-0.948716, -0.172105, -0.265177,
		0.171804, -0.984826, 0.024512,
		31.959612, 41.275761, 32.690586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.605768, 42.772675, 32.671902>,  <31.839350, 41.965141, 32.673428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.605768, 42.772675, 32.671902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.907068, 42.923882, 32.887203>,  <32.087849, 43.014606, 33.016384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.907068, 42.923882, 32.887203>,  <31.605768, 42.772675, 32.671902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.907068, 42.923882, 32.887203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442737, 0.313787, -0.839953,
		-0.486414, 0.871000, 0.068998,
		0.753250, 0.378017, 0.538254,
		32.133041, 43.037285, 33.048679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.762506, 43.498379, 32.496109>,  <31.605768, 42.772675, 32.671902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.762506, 43.498379, 32.496109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.096706, 43.330280, 32.637714>,  <32.297226, 43.229420, 32.722679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.096706, 43.330280, 32.637714>,  <31.762506, 43.498379, 32.496109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.096706, 43.330280, 32.637714> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488553, 0.273251, -0.828643,
		0.251499, 0.865290, 0.433615,
		0.835502, -0.420247, 0.354018,
		32.347359, 43.204205, 32.743919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.245216, 44.017578, 32.443806>,  <31.762506, 43.498379, 32.496109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.245216, 44.017578, 32.443806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.449200, 43.674313, 32.467464>,  <32.571590, 43.468353, 32.481659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.449200, 43.674313, 32.467464>,  <32.245216, 44.017578, 32.443806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.449200, 43.674313, 32.467464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592851, 0.300809, -0.747022,
		0.623277, 0.416012, 0.662163,
		0.509954, -0.858166, 0.059146,
		32.602184, 43.416862, 32.485207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.870140, 44.288441, 32.261524>,  <32.245216, 44.017578, 32.443806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.870140, 44.288441, 32.261524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.884098, 43.895111, 32.190136>,  <32.892475, 43.659111, 32.147305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.884098, 43.895111, 32.190136>,  <32.870140, 44.288441, 32.261524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.884098, 43.895111, 32.190136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847407, 0.123781, -0.516313,
		0.529796, -0.133215, 0.837598,
		0.034898, -0.983327, -0.178466,
		32.894566, 43.600113, 32.136597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.585163, 44.273254, 32.337852>,  <32.870140, 44.288441, 32.261524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.585163, 44.273254, 32.337852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.457542, 43.955910, 32.130474>,  <33.380970, 43.765503, 32.006046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.457542, 43.955910, 32.130474>,  <33.585163, 44.273254, 32.337852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.457542, 43.955910, 32.130474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762750, 0.109733, -0.637315,
		0.562511, -0.598780, 0.570126,
		-0.319050, -0.793361, -0.518445,
		33.361828, 43.717903, 31.974941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.220627, 43.759899, 32.187008>,  <33.585163, 44.273254, 32.337852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.220627, 43.759899, 32.187008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.938705, 43.688564, 31.912361>,  <33.769550, 43.645763, 31.747572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.938705, 43.688564, 31.912361>,  <34.220627, 43.759899, 32.187008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938705, 43.688564, 31.912361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708182, -0.120174, -0.695727,
		0.041558, -0.976604, 0.210992,
		-0.704805, -0.178334, -0.686619,
		33.727264, 43.635063, 31.706375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.420635, 43.130978, 31.833708>,  <34.220627, 43.759899, 32.187008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.420635, 43.130978, 31.833708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.152534, 43.280418, 31.577215>,  <33.991673, 43.370083, 31.423319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.152534, 43.280418, 31.577215>,  <34.420635, 43.130978, 31.833708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.152534, 43.280418, 31.577215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693558, 0.007877, -0.720358,
		-0.264077, -0.927555, -0.264394,
		-0.670255, 0.373603, -0.641233,
		33.951458, 43.392498, 31.384846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504543, 42.738503, 31.228437>,  <34.420635, 43.130978, 31.833708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.504543, 42.738503, 31.228437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.340443, 43.081512, 31.104275>,  <34.241982, 43.287319, 31.029778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.340443, 43.081512, 31.104275>,  <34.504543, 42.738503, 31.228437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.340443, 43.081512, 31.104275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659529, 0.043897, -0.750396,
		-0.629854, -0.512573, -0.583569,
		-0.410250, 0.857521, -0.310408,
		34.217369, 43.338768, 31.011152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377934, 42.647926, 30.483311>,  <34.504543, 42.738503, 31.228437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.377934, 42.647926, 30.483311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.379295, 43.036949, 30.576368>,  <34.380112, 43.270363, 30.632202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.379295, 43.036949, 30.576368>,  <34.377934, 42.647926, 30.483311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.379295, 43.036949, 30.576368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646030, 0.175442, -0.742877,
		-0.763305, 0.152820, -0.627704,
		0.003401, 0.972556, 0.232642,
		34.380314, 43.328716, 30.646160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389553, 42.945625, 29.773870>,  <34.377934, 42.647926, 30.483311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389553, 42.945625, 29.773870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.495838, 43.236912, 30.026566>,  <34.559608, 43.411686, 30.178183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.495838, 43.236912, 30.026566>,  <34.389553, 42.945625, 29.773870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.495838, 43.236912, 30.026566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621198, 0.371784, -0.689848,
		-0.737231, 0.575735, -0.353581,
		0.265714, 0.728220, 0.631736,
		34.575554, 43.455379, 30.216087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.459217, 43.528423, 29.271406>,  <34.389553, 42.945625, 29.773870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.459217, 43.528423, 29.271406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.675041, 43.613266, 29.597322>,  <34.804535, 43.664173, 29.792871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.675041, 43.613266, 29.597322>,  <34.459217, 43.528423, 29.271406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.675041, 43.613266, 29.597322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680294, 0.460342, -0.570338,
		-0.496054, 0.862030, 0.104088,
		0.539564, 0.212108, 0.814789,
		34.836910, 43.676899, 29.841759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.607994, 44.189007, 29.164324>,  <34.459217, 43.528423, 29.271406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.607994, 44.189007, 29.164324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.872856, 44.048367, 29.429029>,  <35.031773, 43.963982, 29.587852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.872856, 44.048367, 29.429029>,  <34.607994, 44.189007, 29.164324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.872856, 44.048367, 29.429029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740826, 0.440087, -0.507446,
		-0.112817, 0.826259, 0.551877,
		0.662155, -0.351597, 0.661763,
		35.071503, 43.942886, 29.627558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.131386, 44.747753, 29.327496>,  <34.607994, 44.189007, 29.164324>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.131386, 44.747753, 29.327496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.310574, 44.409847, 29.444593>,  <35.418087, 44.207104, 29.514853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.310574, 44.409847, 29.444593>,  <35.131386, 44.747753, 29.327496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.310574, 44.409847, 29.444593> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737109, 0.163671, -0.655655,
		0.505959, 0.509497, 0.696002,
		0.447969, -0.844763, 0.292743,
		35.444965, 44.156418, 29.532417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816444, 44.962093, 29.397459>,  <35.131386, 44.747753, 29.327496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.816444, 44.962093, 29.397459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.835342, 44.563095, 29.376404>,  <35.846680, 44.323696, 29.363771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.835342, 44.563095, 29.376404>,  <35.816444, 44.962093, 29.397459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.835342, 44.563095, 29.376404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853321, 0.067694, -0.516973,
		0.519241, -0.020495, 0.854382,
		0.047241, -0.997496, -0.052638,
		35.849514, 44.263847, 29.360613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488022, 44.735981, 29.717596>,  <35.816444, 44.962093, 29.397459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.488022, 44.735981, 29.717596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.329124, 44.496510, 29.439377>,  <36.233788, 44.352829, 29.272446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.329124, 44.496510, 29.439377>,  <36.488022, 44.735981, 29.717596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329124, 44.496510, 29.439377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820793, 0.107238, -0.561069,
		0.410487, -0.793781, 0.448789,
		-0.397239, -0.598675, -0.695550,
		36.209953, 44.316906, 29.230711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016598, 44.449005, 29.484360>,  <36.488022, 44.735981, 29.717596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016598, 44.449005, 29.484360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.768421, 44.348991, 29.187029>,  <36.619514, 44.288982, 29.008631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.768421, 44.348991, 29.187029>,  <37.016598, 44.449005, 29.484360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768421, 44.348991, 29.187029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783060, -0.145210, -0.604758,
		0.043271, -0.957286, 0.285885,
		-0.620440, -0.250034, -0.743329,
		36.582291, 44.273983, 28.964029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.336746, 43.877449, 29.206964>,  <37.016598, 44.449005, 29.484360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.336746, 43.877449, 29.206964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.098370, 43.983952, 28.903923>,  <36.955345, 44.047852, 28.722099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.098370, 43.983952, 28.903923>,  <37.336746, 43.877449, 29.206964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098370, 43.983952, 28.903923> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715329, -0.252695, -0.651498,
		-0.364909, -0.930189, -0.039871,
		-0.595941, 0.266258, -0.757602,
		36.919586, 44.063828, 28.676641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333813, 43.318226, 28.670019>,  <37.336746, 43.877449, 29.206964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.333813, 43.318226, 28.670019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.210392, 43.640446, 28.467680>,  <37.136337, 43.833778, 28.346277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.210392, 43.640446, 28.467680>,  <37.333813, 43.318226, 28.670019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210392, 43.640446, 28.467680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719757, -0.149957, -0.677837,
		-0.621888, -0.573235, -0.533533,
		-0.308553, 0.805552, -0.505847,
		37.117825, 43.882111, 28.315926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319809, 43.144371, 27.888422>,  <37.333813, 43.318226, 28.670019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319809, 43.144371, 27.888422> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.325161, 43.542969, 27.921473>,  <37.328373, 43.782127, 27.941303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.325161, 43.542969, 27.921473>,  <37.319809, 43.144371, 27.888422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325161, 43.542969, 27.921473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692896, 0.050338, -0.719279,
		-0.720914, 0.066874, -0.689791,
		0.013378, 0.996491, 0.082626,
		37.329174, 43.841915, 27.946260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239986, 43.461189, 27.143366>,  <37.319809, 43.144371, 27.888422>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.239986, 43.461189, 27.143366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.398056, 43.732086, 27.391619>,  <37.492897, 43.894623, 27.540571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.398056, 43.732086, 27.391619>,  <37.239986, 43.461189, 27.143366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398056, 43.732086, 27.391619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711503, 0.201685, -0.673117,
		-0.581033, 0.707581, -0.402157,
		0.395175, 0.677239, 0.620632,
		37.516609, 43.935257, 27.577808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167480, 44.122643, 26.739754>,  <37.239986, 43.461189, 27.143366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.167480, 44.122643, 26.739754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.454960, 44.146931, 27.016819>,  <37.627449, 44.161503, 27.183058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.454960, 44.146931, 27.016819>,  <37.167480, 44.122643, 26.739754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454960, 44.146931, 27.016819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670401, 0.203780, -0.713468,
		-0.184470, 0.977132, 0.105753,
		0.718703, 0.060716, 0.692661,
		37.670570, 44.165146, 27.224617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531273, 44.623959, 26.556915>,  <37.167480, 44.122643, 26.739754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.531273, 44.623959, 26.556915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.780170, 44.483242, 26.836645>,  <37.929508, 44.398811, 27.004482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.780170, 44.483242, 26.836645>,  <37.531273, 44.623959, 26.556915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.780170, 44.483242, 26.836645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782290, 0.312320, -0.538961,
		-0.028813, 0.882441, 0.469540,
		0.622247, -0.351788, 0.699324,
		37.966846, 44.377705, 27.046442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979046, 45.207081, 26.755535>,  <37.531273, 44.623959, 26.556915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979046, 45.207081, 26.755535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.163399, 44.866695, 26.856291>,  <38.274010, 44.662464, 26.916744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.163399, 44.866695, 26.856291>,  <37.979046, 45.207081, 26.755535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163399, 44.866695, 26.856291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836408, 0.321620, -0.443825,
		0.296668, 0.415231, 0.859983,
		0.460878, -0.850966, 0.251889,
		38.301662, 44.611404, 26.931858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761585, 45.301834, 26.809978>,  <37.979046, 45.207081, 26.755535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.761585, 45.301834, 26.809978> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.711475, 44.911686, 26.737366>,  <38.681408, 44.677597, 26.693798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.711475, 44.911686, 26.737366>,  <38.761585, 45.301834, 26.809978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.711475, 44.911686, 26.737366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795536, 0.010575, -0.605815,
		0.592815, -0.220309, 0.774619,
		-0.125275, -0.975373, -0.181533,
		38.673893, 44.619076, 26.682905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518463, 45.030727, 26.907444>,  <38.761585, 45.301834, 26.809978>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.518463, 45.030727, 26.907444> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.309769, 44.750809, 26.712275>,  <39.184551, 44.582855, 26.595173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.309769, 44.750809, 26.712275>,  <39.518463, 45.030727, 26.907444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.309769, 44.750809, 26.712275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779660, -0.158970, -0.605688,
		0.346294, -0.696427, 0.628546,
		-0.521737, -0.699799, -0.487926,
		39.153248, 44.540871, 26.565897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075863, 44.696644, 26.618975>,  <39.518463, 45.030727, 26.907444>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075863, 44.696644, 26.618975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.737061, 44.618015, 26.421413>,  <39.533779, 44.570839, 26.302877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.737061, 44.618015, 26.421413>,  <40.075863, 44.696644, 26.618975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.737061, 44.618015, 26.421413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524688, -0.159974, -0.836129,
		0.085350, -0.967350, 0.238639,
		-0.847005, -0.196575, -0.493903,
		39.482960, 44.559044, 26.273243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.320446, 44.022873, 26.277103>,  <40.075863, 44.696644, 26.618975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.320446, 44.022873, 26.277103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.007332, 44.195030, 26.097324>,  <39.819462, 44.298325, 25.989456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.007332, 44.195030, 26.097324>,  <40.320446, 44.022873, 26.277103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.007332, 44.195030, 26.097324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471289, -0.061608, -0.879824,
		-0.406360, -0.900536, -0.154614,
		-0.782789, 0.430393, -0.449448,
		39.772495, 44.324146, 25.962490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.443897, 43.257366, 26.207273>,  <40.320446, 44.022873, 26.277103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.443897, 43.257366, 26.207273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.780151, 43.280773, 26.422646>,  <40.981903, 43.294819, 26.551868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.780151, 43.280773, 26.422646>,  <40.443897, 43.257366, 26.207273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.780151, 43.280773, 26.422646> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541569, 0.079672, 0.836872,
		0.006074, -0.995102, 0.098666,
		0.840635, 0.058518, 0.538433,
		41.032341, 43.298328, 26.584175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.369663, 42.715706, 26.755537>,  <40.443897, 43.257366, 26.207273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.369663, 42.715706, 26.755537> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.646049, 42.956512, 26.915606>,  <40.811882, 43.100998, 27.011646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.646049, 42.956512, 26.915606>,  <40.369663, 42.715706, 26.755537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.646049, 42.956512, 26.915606> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393471, -0.151174, 0.906823,
		0.606419, -0.784041, 0.132420,
		0.690968, 0.602018, 0.400172,
		40.853340, 43.137119, 27.035658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.559937, 42.378124, 27.364166>,  <40.369663, 42.715706, 26.755537>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.559937, 42.378124, 27.364166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.706924, 42.745960, 27.419764>,  <40.795116, 42.966663, 27.453123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.706924, 42.745960, 27.419764>,  <40.559937, 42.378124, 27.364166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.706924, 42.745960, 27.419764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143268, -0.091697, 0.985427,
		0.918935, -0.382026, 0.098052,
		0.367467, 0.919591, 0.138995,
		40.817165, 43.021839, 27.461462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.981537, 42.388012, 27.908766>,  <40.559937, 42.378124, 27.364166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.981537, 42.388012, 27.908766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.942112, 42.785805, 27.894381>,  <40.918457, 43.024479, 27.885750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.942112, 42.785805, 27.894381>,  <40.981537, 42.388012, 27.908766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.942112, 42.785805, 27.894381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147834, 0.021107, 0.988787,
		0.984089, 0.102774, 0.144938,
		-0.098563, 0.994481, -0.035964,
		40.912544, 43.084148, 27.883591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.523602, 42.868122, 28.382980>,  <40.981537, 42.388012, 27.908766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.523602, 42.868122, 28.382980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.169628, 43.039318, 28.309530>,  <40.957245, 43.142036, 28.265461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.169628, 43.039318, 28.309530>,  <41.523602, 42.868122, 28.382980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.169628, 43.039318, 28.309530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214593, -0.024791, 0.976389,
		0.413330, 0.903445, 0.113781,
		-0.884934, 0.427987, -0.183626,
		40.904148, 43.167713, 28.254442>
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
