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
	<24.077057, 34.464653, 35.147701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.202286, 34.830563, 35.045589>,  <24.277424, 35.050110, 34.984322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.202286, 34.830563, 35.045589>,  <24.077057, 34.464653, 35.147701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.202286, 34.830563, 35.045589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937273, -0.340986, -0.072440,
		-0.153313, -0.216585, -0.964150,
		0.313073, 0.914778, -0.255277,
		24.296207, 35.104996, 34.969006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.406635, 34.507168, 34.397949>,  <24.077057, 34.464653, 35.147701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.406635, 34.507168, 34.397949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.550570, 34.792091, 34.638992>,  <24.636930, 34.963047, 34.783619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.550570, 34.792091, 34.638992>,  <24.406635, 34.507168, 34.397949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.550570, 34.792091, 34.638992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925145, -0.356112, -0.131492,
		0.120932, 0.604813, -0.787132,
		0.359835, 0.712310, 0.602605,
		24.658520, 35.005783, 34.819775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.522871, 34.945950, 33.767914>,  <24.406635, 34.507168, 34.397949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.522871, 34.945950, 33.767914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.332636, 35.262085, 33.922405>,  <24.218494, 35.451767, 34.015099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.332636, 35.262085, 33.922405>,  <24.522871, 34.945950, 33.767914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.332636, 35.262085, 33.922405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829912, 0.548698, -0.100881,
		-0.291654, 0.272559, -0.916869,
		-0.475588, 0.790343, 0.386230,
		24.189959, 35.499187, 34.038273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.538445, 35.406464, 33.288815>,  <24.522871, 34.945950, 33.767914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.538445, 35.406464, 33.288815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.549276, 35.573570, 33.652073>,  <24.555775, 35.673836, 33.870029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.549276, 35.573570, 33.652073>,  <24.538445, 35.406464, 33.288815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.549276, 35.573570, 33.652073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911016, 0.363647, -0.194451,
		-0.411481, 0.832604, -0.370747,
		0.027080, 0.417769, 0.908150,
		24.557400, 35.698902, 33.924519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.014542, 35.866528, 33.469170>,  <24.538445, 35.406464, 33.288815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.014542, 35.866528, 33.469170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.359232, 36.063725, 33.421196>,  <25.566046, 36.182041, 33.392410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.359232, 36.063725, 33.421196>,  <25.014542, 35.866528, 33.469170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.359232, 36.063725, 33.421196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264298, 0.234386, -0.935526,
		-0.433097, 0.837867, 0.332274,
		0.861727, 0.492993, -0.119935,
		25.617750, 36.211624, 33.385216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.846098, 36.513126, 32.954441>,  <25.014542, 35.866528, 33.469170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.846098, 36.513126, 32.954441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.245970, 36.503407, 32.957359>,  <25.485893, 36.497574, 32.959110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.245970, 36.503407, 32.957359>,  <24.846098, 36.513126, 32.954441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.245970, 36.503407, 32.957359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014243, 0.299380, -0.954028,
		0.021000, 0.953825, 0.299629,
		0.999678, -0.024302, 0.007298,
		25.545874, 36.496117, 32.959549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.949755, 37.070072, 32.705704>,  <24.846098, 36.513126, 32.954441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.949755, 37.070072, 32.705704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.296106, 36.875454, 32.659180>,  <25.503918, 36.758682, 32.631268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.296106, 36.875454, 32.659180>,  <24.949755, 37.070072, 32.705704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.296106, 36.875454, 32.659180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001710, 0.229618, -0.973279,
		0.500247, 0.842943, 0.197990,
		0.865881, -0.486542, -0.116307,
		25.555870, 36.729492, 32.624287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.312918, 37.507500, 32.308136>,  <24.949755, 37.070072, 32.705704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.312918, 37.507500, 32.308136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.501598, 37.156456, 32.273952>,  <25.614807, 36.945831, 32.253441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.501598, 37.156456, 32.273952>,  <25.312918, 37.507500, 32.308136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.501598, 37.156456, 32.273952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188459, 0.195022, -0.962522,
		0.861384, 0.437916, 0.257385,
		0.471700, -0.877608, -0.085460,
		25.643108, 36.893173, 32.248314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.922894, 37.664337, 32.069595>,  <25.312918, 37.507500, 32.308136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.922894, 37.664337, 32.069595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.857468, 37.287411, 31.952784>,  <25.818213, 37.061253, 31.882696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.857468, 37.287411, 31.952784>,  <25.922894, 37.664337, 32.069595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.857468, 37.287411, 31.952784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425376, 0.199720, -0.882704,
		0.890113, -0.268601, 0.368173,
		-0.163564, -0.942319, -0.292030,
		25.808399, 37.004715, 31.865175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.515966, 37.465820, 31.616737>,  <25.922894, 37.664337, 32.069595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.515966, 37.465820, 31.616737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.222425, 37.209187, 31.527452>,  <26.046301, 37.055206, 31.473881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.222425, 37.209187, 31.527452>,  <26.515966, 37.465820, 31.616737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.222425, 37.209187, 31.527452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221304, 0.084863, -0.971505,
		0.642250, -0.762340, 0.079709,
		-0.733853, -0.641589, -0.223212,
		26.002270, 37.016708, 31.460489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.808926, 36.953304, 31.133404>,  <26.515966, 37.465820, 31.616737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.808926, 36.953304, 31.133404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.414686, 36.907787, 31.083366>,  <26.178143, 36.880478, 31.053345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.414686, 36.907787, 31.083366>,  <26.808926, 36.953304, 31.133404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.414686, 36.907787, 31.083366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138117, -0.114848, -0.983735,
		0.097580, -0.986844, 0.128911,
		-0.985597, -0.113798, -0.125093,
		26.119007, 36.873650, 31.045839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.723936, 36.441139, 30.620306>,  <26.808926, 36.953304, 31.133404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.723936, 36.441139, 30.620306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.360216, 36.607384, 30.611866>,  <26.141985, 36.707130, 30.606802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.360216, 36.607384, 30.611866>,  <26.723936, 36.441139, 30.620306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.360216, 36.607384, 30.611866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086527, 0.139228, -0.986473,
		-0.407050, -0.898824, -0.162562,
		-0.909298, 0.415610, -0.021100,
		26.087427, 36.732067, 30.605536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.494091, 36.226536, 30.035330>,  <26.723936, 36.441139, 30.620306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.494091, 36.226536, 30.035330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.276495, 36.549168, 30.127855>,  <26.145937, 36.742744, 30.183371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.276495, 36.549168, 30.127855>,  <26.494091, 36.226536, 30.035330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.276495, 36.549168, 30.127855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044197, 0.302831, -0.952019,
		-0.837925, -0.507668, -0.200386,
		-0.543992, 0.806577, 0.231312,
		26.113297, 36.791142, 30.197248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.838734, 36.264236, 29.625404>,  <26.494091, 36.226536, 30.035330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.838734, 36.264236, 29.625404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.909433, 36.644478, 29.727472>,  <25.951853, 36.872623, 29.788713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.909433, 36.644478, 29.727472>,  <25.838734, 36.264236, 29.625404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.909433, 36.644478, 29.727472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120984, 0.278267, -0.952854,
		-0.976792, 0.137546, 0.164192,
		0.176750, 0.950604, 0.255168,
		25.962458, 36.929661, 29.804024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.339510, 36.735157, 29.232834>,  <25.838734, 36.264236, 29.625404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.339510, 36.735157, 29.232834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.624918, 36.988617, 29.352423>,  <25.796162, 37.140694, 29.424175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.624918, 36.988617, 29.352423>,  <25.339510, 36.735157, 29.232834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.624918, 36.988617, 29.352423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028556, 0.452662, -0.891225,
		-0.700054, 0.627368, 0.341077,
		0.713519, 0.633646, 0.298973,
		25.838974, 37.178711, 29.442114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.093372, 37.485703, 29.044064>,  <25.339510, 36.735157, 29.232834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.093372, 37.485703, 29.044064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.490561, 37.446659, 29.070843>,  <25.728874, 37.423233, 29.086910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.490561, 37.446659, 29.070843>,  <25.093372, 37.485703, 29.044064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.490561, 37.446659, 29.070843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108599, 0.526367, -0.843294,
		0.047077, 0.844636, 0.533267,
		0.992970, -0.097612, 0.066946,
		25.788452, 37.417374, 29.090927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.381119, 38.118542, 28.847738>,  <25.093372, 37.485703, 29.044064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.381119, 38.118542, 28.847738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.691805, 37.871517, 28.798216>,  <25.878216, 37.723301, 28.768503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.691805, 37.871517, 28.798216>,  <25.381119, 38.118542, 28.847738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.691805, 37.871517, 28.798216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292364, 0.527607, -0.797593,
		0.557886, 0.583306, 0.590354,
		0.776715, -0.617564, -0.123807,
		25.924820, 37.686249, 28.761074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.553028, 38.403931, 28.279802>,  <25.381119, 38.118542, 28.847738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.553028, 38.403931, 28.279802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.826040, 38.113640, 28.314384>,  <25.989847, 37.939465, 28.335133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.826040, 38.113640, 28.314384>,  <25.553028, 38.403931, 28.279802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.826040, 38.113640, 28.314384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531424, 0.411593, -0.740392,
		0.501738, 0.551284, 0.666592,
		0.682531, -0.725726, 0.086454,
		26.030800, 37.895924, 28.340321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.233112, 38.592926, 28.294224>,  <25.553028, 38.403931, 28.279802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.233112, 38.592926, 28.294224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.284843, 38.217995, 28.164799>,  <26.315882, 37.993034, 28.087145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.284843, 38.217995, 28.164799>,  <26.233112, 38.592926, 28.294224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.284843, 38.217995, 28.164799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626991, 0.330091, -0.705636,
		0.768217, -0.111611, 0.630386,
		0.129328, -0.937327, -0.323561,
		26.323643, 37.936798, 28.067730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.872208, 38.516563, 28.310652>,  <26.233112, 38.592926, 28.294224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.872208, 38.516563, 28.310652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.757874, 38.239033, 28.046259>,  <26.689274, 38.072514, 27.887623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.757874, 38.239033, 28.046259>,  <26.872208, 38.516563, 28.310652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.757874, 38.239033, 28.046259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669532, 0.348882, -0.655750,
		0.685584, -0.629984, 0.364820,
		-0.285833, -0.693831, -0.660982,
		26.672123, 38.030884, 27.847963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.448143, 38.219700, 28.052696>,  <26.872208, 38.516563, 28.310652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.448143, 38.219700, 28.052696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.199005, 38.077362, 27.774002>,  <27.049522, 37.991959, 27.606787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.199005, 38.077362, 27.774002>,  <27.448143, 38.219700, 28.052696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.199005, 38.077362, 27.774002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739227, 0.023886, -0.673033,
		0.256138, -0.934239, 0.248172,
		-0.622846, -0.355845, -0.696733,
		27.012152, 37.970608, 27.564981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.724308, 37.663654, 27.742149>,  <27.448143, 38.219700, 28.052696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.724308, 37.663654, 27.742149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.473816, 37.786987, 27.455717>,  <27.323521, 37.860985, 27.283857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.473816, 37.786987, 27.455717>,  <27.724308, 37.663654, 27.742149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.473816, 37.786987, 27.455717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732243, -0.082750, -0.675997,
		-0.267684, -0.947674, -0.173950,
		-0.626231, 0.308327, -0.716079,
		27.285946, 37.879486, 27.240894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.907898, 37.350567, 27.081863>,  <27.724308, 37.663654, 27.742149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.907898, 37.350567, 27.081863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.698072, 37.674568, 26.977003>,  <27.572178, 37.868969, 26.914087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.698072, 37.674568, 26.977003>,  <27.907898, 37.350567, 27.081863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.698072, 37.674568, 26.977003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650972, 0.183156, -0.736675,
		-0.548697, -0.557085, -0.623368,
		-0.524564, 0.810006, -0.262149,
		27.540703, 37.917568, 26.898357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.017996, 37.393738, 26.396778>,  <27.907898, 37.350567, 27.081863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.017996, 37.393738, 26.396778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.891273, 37.765923, 26.470400>,  <27.815239, 37.989235, 26.514572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.891273, 37.765923, 26.470400>,  <28.017996, 37.393738, 26.396778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.891273, 37.765923, 26.470400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636903, 0.352482, -0.685646,
		-0.702842, -0.099994, -0.704283,
		-0.316808, 0.930461, 0.184053,
		27.796230, 38.045059, 26.525616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.716291, 37.760124, 25.741951>,  <28.017996, 37.393738, 26.396778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.716291, 37.760124, 25.741951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.810957, 38.055267, 25.994795>,  <27.867756, 38.232353, 26.146502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.810957, 38.055267, 25.994795>,  <27.716291, 37.760124, 25.741951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.810957, 38.055267, 25.994795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460088, 0.487914, -0.741794,
		-0.855750, 0.466383, -0.224006,
		0.236665, 0.737853, 0.632109,
		27.881956, 38.276623, 26.184427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.809113, 38.256382, 25.218002>,  <27.716291, 37.760124, 25.741951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.809113, 38.256382, 25.218002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.957022, 38.365097, 25.573395>,  <28.045767, 38.430328, 25.786631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.957022, 38.365097, 25.573395>,  <27.809113, 38.256382, 25.218002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.957022, 38.365097, 25.573395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720647, 0.519690, -0.458901,
		-0.586459, 0.809970, -0.003697,
		0.369775, 0.271791, 0.888480,
		28.067955, 38.446636, 25.839939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.925846, 39.010242, 25.263145>,  <27.809113, 38.256382, 25.218002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.925846, 39.010242, 25.263145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.180765, 38.834435, 25.516338>,  <28.333717, 38.728951, 25.668255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.180765, 38.834435, 25.516338>,  <27.925846, 39.010242, 25.263145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.180765, 38.834435, 25.516338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761334, 0.486217, -0.428910,
		-0.119251, 0.755256, 0.644491,
		0.637299, -0.439524, 0.632984,
		28.371956, 38.702576, 25.706234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.412243, 39.481667, 25.355888>,  <27.925846, 39.010242, 25.263145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.412243, 39.481667, 25.355888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.572119, 39.138657, 25.485441>,  <28.668045, 38.932850, 25.563173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.572119, 39.138657, 25.485441>,  <28.412243, 39.481667, 25.355888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.572119, 39.138657, 25.485441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872599, 0.247726, -0.420954,
		0.280745, 0.450870, 0.847289,
		0.399691, -0.857525, 0.323880,
		28.692026, 38.881401, 25.582605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.124582, 39.565102, 25.800312>,  <28.412243, 39.481667, 25.355888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.124582, 39.565102, 25.800312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.073841, 39.215359, 25.612946>,  <29.043396, 39.005512, 25.500526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.073841, 39.215359, 25.612946>,  <29.124582, 39.565102, 25.800312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.073841, 39.215359, 25.612946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939230, 0.045989, -0.340195,
		0.318993, -0.483104, 0.815386,
		-0.126851, -0.874354, -0.468416,
		29.035786, 38.953053, 25.472420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.694923, 39.183167, 25.937418>,  <29.124582, 39.565102, 25.800312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.694923, 39.183167, 25.937418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.556576, 39.033821, 25.593098>,  <29.473568, 38.944214, 25.386505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.556576, 39.033821, 25.593098>,  <29.694923, 39.183167, 25.937418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.556576, 39.033821, 25.593098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884902, 0.175237, -0.431557,
		0.311970, -0.910986, 0.269778,
		-0.345867, -0.373359, -0.860801,
		29.452816, 38.921814, 25.334858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.133205, 38.575333, 25.680761>,  <29.694923, 39.183167, 25.937418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.133205, 38.575333, 25.680761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.966139, 38.711315, 25.343719>,  <29.865898, 38.792904, 25.141495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.966139, 38.711315, 25.343719>,  <30.133205, 38.575333, 25.680761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.966139, 38.711315, 25.343719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884394, -0.060523, -0.462800,
		-0.208329, -0.938492, -0.275377,
		-0.417667, 0.339956, -0.842605,
		29.840839, 38.813301, 25.090939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.349098, 38.113262, 25.260323>,  <30.133205, 38.575333, 25.680761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.349098, 38.113262, 25.260323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.291716, 38.470364, 25.089481>,  <30.257286, 38.684624, 24.986977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.291716, 38.470364, 25.089481>,  <30.349098, 38.113262, 25.260323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.291716, 38.470364, 25.089481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924670, -0.032900, -0.379346,
		-0.352713, -0.449351, -0.820779,
		-0.143456, 0.892749, -0.427105,
		30.248678, 38.738190, 24.961349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.914339, 37.878872, 25.662346>,  <30.349098, 38.113262, 25.260323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.914339, 37.878872, 25.662346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.200670, 38.157738, 25.678089>,  <31.372469, 38.325058, 25.687536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.200670, 38.157738, 25.678089>,  <30.914339, 37.878872, 25.662346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.200670, 38.157738, 25.678089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293466, 0.249217, 0.922913,
		0.633616, -0.672197, 0.382991,
		0.715827, 0.697167, 0.039359,
		31.415419, 38.366886, 25.689898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.173311, 37.874706, 26.338482>,  <30.914339, 37.878872, 25.662346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.173311, 37.874706, 26.338482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.236008, 38.259548, 26.249235>,  <31.273626, 38.490456, 26.195686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.236008, 38.259548, 26.249235>,  <31.173311, 37.874706, 26.338482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.236008, 38.259548, 26.249235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316542, 0.262929, 0.911411,
		0.935539, -0.072230, 0.345759,
		0.156741, 0.962108, -0.223116,
		31.283030, 38.548180, 26.182301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.492201, 38.126278, 26.892962>,  <31.173311, 37.874706, 26.338482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.492201, 38.126278, 26.892962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.256512, 38.396561, 26.715765>,  <31.115099, 38.558731, 26.609447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.256512, 38.396561, 26.715765>,  <31.492201, 38.126278, 26.892962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.256512, 38.396561, 26.715765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350511, 0.280227, 0.893653,
		0.727983, 0.681833, 0.071726,
		-0.589222, 0.675705, -0.442990,
		31.079744, 38.599274, 26.582869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.524137, 38.855072, 27.165201>,  <31.492201, 38.126278, 26.892962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.524137, 38.855072, 27.165201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.156443, 38.867424, 27.008205>,  <30.935825, 38.874836, 26.914007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.156443, 38.867424, 27.008205>,  <31.524137, 38.855072, 27.165201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.156443, 38.867424, 27.008205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343378, 0.424795, 0.837640,
		0.192597, 0.904763, -0.379883,
		-0.919238, 0.030883, -0.392490,
		30.880671, 38.876690, 26.890459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.199610, 39.550812, 27.353733>,  <31.524137, 38.855072, 27.165201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.199610, 39.550812, 27.353733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.947733, 39.247288, 27.287165>,  <30.796606, 39.065174, 27.247223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.947733, 39.247288, 27.287165>,  <31.199610, 39.550812, 27.353733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.947733, 39.247288, 27.287165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518129, 0.250614, 0.817762,
		-0.578818, 0.601166, -0.550971,
		-0.629691, -0.758810, -0.166421,
		30.758825, 39.019646, 27.237238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.483637, 39.808819, 27.578207>,  <31.199610, 39.550812, 27.353733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.483637, 39.808819, 27.578207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.481291, 39.411728, 27.626305>,  <30.479883, 39.173473, 27.655163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.481291, 39.411728, 27.626305>,  <30.483637, 39.808819, 27.578207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.481291, 39.411728, 27.626305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512367, 0.106248, 0.852169,
		-0.858747, -0.056611, -0.509263,
		-0.005866, -0.992727, 0.120246,
		30.479530, 39.113911, 27.662378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.897755, 39.663620, 27.857067>,  <30.483637, 39.808819, 27.578207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.897755, 39.663620, 27.857067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.092375, 39.320259, 27.922071>,  <30.209146, 39.114243, 27.961073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.092375, 39.320259, 27.922071>,  <29.897755, 39.663620, 27.857067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.092375, 39.320259, 27.922071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451762, -0.087988, 0.887789,
		-0.747785, -0.505367, -0.430606,
		0.486548, -0.858407, 0.162510,
		30.238338, 39.062737, 27.970825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.365801, 39.224434, 28.092764>,  <29.897755, 39.663620, 27.857067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.365801, 39.224434, 28.092764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.706577, 39.044769, 28.200430>,  <29.911043, 38.936970, 28.265030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.706577, 39.044769, 28.200430>,  <29.365801, 39.224434, 28.092764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.706577, 39.044769, 28.200430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357773, -0.123958, 0.925545,
		-0.382357, -0.884808, -0.266304,
		0.851939, -0.449165, 0.269165,
		29.962158, 38.910019, 28.281179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.231709, 38.554501, 28.347778>,  <29.365801, 39.224434, 28.092764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.231709, 38.554501, 28.347778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.587265, 38.655617, 28.500601>,  <29.800600, 38.716286, 28.592295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.587265, 38.655617, 28.500601>,  <29.231709, 38.554501, 28.347778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.587265, 38.655617, 28.500601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281905, -0.355554, 0.891129,
		0.361108, -0.899822, -0.244787,
		0.888893, 0.252787, 0.382058,
		29.853933, 38.731453, 28.615219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.439703, 37.935951, 28.684233>,  <29.231709, 38.554501, 28.347778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.439703, 37.935951, 28.684233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.612133, 38.254715, 28.853516>,  <29.715591, 38.445972, 28.955086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.612133, 38.254715, 28.853516>,  <29.439703, 37.935951, 28.684233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.612133, 38.254715, 28.853516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174122, -0.386742, 0.905600,
		0.885357, -0.464071, -0.027954,
		0.431074, 0.796912, 0.423210,
		29.741455, 38.493790, 28.980478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.981771, 37.747677, 29.145775>,  <29.439703, 37.935951, 28.684233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.981771, 37.747677, 29.145775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.865137, 38.105167, 29.282143>,  <29.795156, 38.319664, 29.363962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.865137, 38.105167, 29.282143>,  <29.981771, 37.747677, 29.145775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.865137, 38.105167, 29.282143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249165, -0.415067, 0.875006,
		0.923523, 0.170195, 0.343714,
		-0.291586, 0.893730, 0.340917,
		29.777662, 38.373287, 29.384418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.179089, 37.727646, 29.754372>,  <29.981771, 37.747677, 29.145775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.179089, 37.727646, 29.754372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.923882, 38.034973, 29.774885>,  <29.770758, 38.219368, 29.787193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.923882, 38.034973, 29.774885>,  <30.179089, 37.727646, 29.754372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.923882, 38.034973, 29.774885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369279, -0.363736, 0.855178,
		0.675699, 0.526678, 0.515792,
		-0.638015, 0.768314, 0.051285,
		29.732477, 38.265469, 29.790270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.232216, 38.082489, 30.417946>,  <30.179089, 37.727646, 29.754372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.232216, 38.082489, 30.417946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.876503, 38.169224, 30.256870>,  <29.663076, 38.221264, 30.160225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.876503, 38.169224, 30.256870>,  <30.232216, 38.082489, 30.417946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.876503, 38.169224, 30.256870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455277, -0.335735, 0.824624,
		0.043613, 0.916659, 0.397284,
		-0.889281, 0.216839, -0.402691,
		29.609718, 38.234276, 30.136063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.948345, 38.199100, 31.004038>,  <30.232216, 38.082489, 30.417946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.948345, 38.199100, 31.004038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.628349, 38.191402, 30.764154>,  <29.436352, 38.186783, 30.620224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.628349, 38.191402, 30.764154>,  <29.948345, 38.199100, 31.004038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.628349, 38.191402, 30.764154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570916, -0.283066, 0.770667,
		-0.184589, 0.958907, 0.215462,
		-0.799988, -0.019246, -0.599707,
		29.388353, 38.185627, 30.584242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.493649, 38.610939, 31.414473>,  <29.948345, 38.199100, 31.004038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.493649, 38.610939, 31.414473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.297106, 38.408504, 31.130939>,  <29.179180, 38.287045, 30.960819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.297106, 38.408504, 31.130939>,  <29.493649, 38.610939, 31.414473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.297106, 38.408504, 31.130939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669699, -0.300793, 0.678990,
		-0.556842, 0.808329, -0.191132,
		-0.491356, -0.506091, -0.708831,
		29.149698, 38.256676, 30.918289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.790413, 38.802681, 31.411863>,  <29.493649, 38.610939, 31.414473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.790413, 38.802681, 31.411863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.786806, 38.435654, 31.252869>,  <28.784641, 38.215439, 31.157473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.786806, 38.435654, 31.252869>,  <28.790413, 38.802681, 31.411863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.786806, 38.435654, 31.252869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634602, -0.301945, 0.711413,
		-0.772786, 0.258663, -0.579564,
		-0.009019, -0.917563, -0.397487,
		28.784100, 38.160385, 31.133623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.151855, 38.513645, 31.554018>,  <28.790413, 38.802681, 31.411863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.151855, 38.513645, 31.554018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.375641, 38.187649, 31.493631>,  <28.509912, 37.992050, 31.457399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.375641, 38.187649, 31.493631>,  <28.151855, 38.513645, 31.554018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.375641, 38.187649, 31.493631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376024, -0.411883, 0.830036,
		-0.738652, -0.407607, -0.536889,
		0.559464, -0.814991, -0.150968,
		28.543480, 37.943153, 31.448341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.669054, 37.863598, 31.619328>,  <28.151855, 38.513645, 31.554018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.669054, 37.863598, 31.619328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.041986, 37.729408, 31.673323>,  <28.265745, 37.648895, 31.705719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.041986, 37.729408, 31.673323>,  <27.669054, 37.863598, 31.619328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.041986, 37.729408, 31.673323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331258, -0.642630, 0.690865,
		-0.145017, -0.688830, -0.710270,
		0.932329, -0.335470, 0.134989,
		28.321686, 37.628769, 31.713820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.625925, 37.223217, 31.712881>,  <27.669054, 37.863598, 31.619328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.625925, 37.223217, 31.712881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.970461, 37.299915, 31.901064>,  <28.177183, 37.345936, 32.013973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.970461, 37.299915, 31.901064>,  <27.625925, 37.223217, 31.712881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.970461, 37.299915, 31.901064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346533, -0.455416, 0.820068,
		0.371498, -0.869385, -0.325821,
		0.861339, 0.191746, 0.470457,
		28.228863, 37.357441, 32.042202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.718460, 36.699440, 32.173965>,  <27.625925, 37.223217, 31.712881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.718460, 36.699440, 32.173965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.984468, 36.969540, 32.301582>,  <28.144073, 37.131599, 32.378155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.984468, 36.969540, 32.301582>,  <27.718460, 36.699440, 32.173965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.984468, 36.969540, 32.301582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141787, -0.305275, 0.941649,
		0.733244, -0.671451, -0.107272,
		0.665019, 0.675248, 0.319044,
		28.183973, 37.172115, 32.397297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.021959, 36.371323, 32.651104>,  <27.718460, 36.699440, 32.173965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.021959, 36.371323, 32.651104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.140007, 36.743813, 32.736641>,  <28.210836, 36.967304, 32.787964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.140007, 36.743813, 32.736641>,  <28.021959, 36.371323, 32.651104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.140007, 36.743813, 32.736641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006109, -0.221964, 0.975036,
		0.955440, -0.289060, -0.059817,
		0.295121, 0.931223, 0.213839,
		28.228544, 37.023178, 32.800793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.424822, 36.266495, 33.124596>,  <28.021959, 36.371323, 32.651104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.424822, 36.266495, 33.124596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.336615, 36.654037, 33.169659>,  <28.283689, 36.886562, 33.196697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.336615, 36.654037, 33.169659>,  <28.424822, 36.266495, 33.124596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.336615, 36.654037, 33.169659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074640, -0.131926, 0.988445,
		0.972522, 0.209563, 0.101408,
		-0.220520, 0.968854, 0.112660,
		28.270458, 36.944695, 33.203457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.892010, 36.585312, 33.672737>,  <28.424822, 36.266495, 33.124596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.892010, 36.585312, 33.672737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.556728, 36.801689, 33.700436>,  <28.355560, 36.931515, 33.717052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.556728, 36.801689, 33.700436>,  <28.892010, 36.585312, 33.672737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.556728, 36.801689, 33.700436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055409, -0.210782, 0.975962,
		0.542537, 0.814217, 0.206651,
		-0.838203, 0.540945, 0.069242,
		28.305267, 36.963974, 33.721207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.938129, 36.887688, 34.268333>,  <28.892010, 36.585312, 33.672737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.938129, 36.887688, 34.268333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.544855, 36.871857, 34.197025>,  <28.308891, 36.862358, 34.154240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.544855, 36.871857, 34.197025>,  <28.938129, 36.887688, 34.268333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.544855, 36.871857, 34.197025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166125, -0.211505, 0.963155,
		-0.075820, 0.976576, 0.201375,
		-0.983186, -0.039573, -0.178269,
		28.249899, 36.859985, 34.143543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.550785, 37.260098, 34.862862>,  <28.938129, 36.887688, 34.268333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.550785, 37.260098, 34.862862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.300962, 36.992466, 34.701736>,  <28.151070, 36.831886, 34.605061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.300962, 36.992466, 34.701736>,  <28.550785, 37.260098, 34.862862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.300962, 36.992466, 34.701736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269461, -0.299495, 0.915256,
		-0.733023, 0.680171, 0.006759,
		-0.624554, -0.669082, -0.402816,
		28.113596, 36.791740, 34.580891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.279125, 37.116184, 35.014404>,  <28.550785, 37.260098, 34.862862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.279125, 37.116184, 35.014404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.408127, 36.932976, 34.683052>,  <29.485527, 36.823051, 34.484241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.408127, 36.932976, 34.683052>,  <29.279125, 37.116184, 35.014404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.408127, 36.932976, 34.683052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917496, -0.366485, -0.154565,
		-0.232795, 0.809881, -0.538423,
		0.322504, -0.458019, -0.828378,
		29.504877, 36.795570, 34.434540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.912241, 36.741653, 34.900127>,  <29.279125, 37.116184, 35.014404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.912241, 36.741653, 34.900127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.178482, 37.037064, 34.943111>,  <30.338226, 37.214310, 34.968903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.178482, 37.037064, 34.943111>,  <29.912241, 36.741653, 34.900127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.178482, 37.037064, 34.943111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735811, -0.625345, -0.259857,
		-0.124711, 0.252033, -0.959649,
		0.665605, 0.738527, 0.107461,
		30.378164, 37.258621, 34.975349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.118298, 36.860371, 34.242798>,  <29.912241, 36.741653, 34.900127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.118298, 36.860371, 34.242798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.365837, 36.916206, 34.552002>,  <30.514360, 36.949707, 34.737522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.365837, 36.916206, 34.552002>,  <30.118298, 36.860371, 34.242798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.365837, 36.916206, 34.552002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619854, -0.691256, -0.371412,
		0.482499, 0.708999, -0.514310,
		0.618850, 0.139591, 0.773006,
		30.551493, 36.958084, 34.783905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.429771, 36.570618, 33.629913>,  <30.118298, 36.860371, 34.242798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.429771, 36.570618, 33.629913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.252060, 36.320782, 33.886818>,  <30.145433, 36.170879, 34.040962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.252060, 36.320782, 33.886818>,  <30.429771, 36.570618, 33.629913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.252060, 36.320782, 33.886818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461979, -0.773957, -0.433089,
		0.767588, 0.104300, 0.632400,
		-0.444279, -0.624590, 0.642265,
		30.118776, 36.133404, 34.079498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.013296, 36.173580, 33.852760>,  <30.429771, 36.570618, 33.629913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.013296, 36.173580, 33.852760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.687620, 35.941898, 33.868828>,  <30.492214, 35.802887, 33.878468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.687620, 35.941898, 33.868828>,  <31.013296, 36.173580, 33.852760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.687620, 35.941898, 33.868828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448160, -0.670946, -0.590748,
		0.369116, -0.462980, 0.805856,
		-0.814190, -0.579207, 0.040168,
		30.443363, 35.768135, 33.880878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.268953, 35.505951, 34.156425>,  <31.013296, 36.173580, 33.852760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.268953, 35.505951, 34.156425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.977291, 35.441750, 33.890324>,  <30.802294, 35.403229, 33.730663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.977291, 35.441750, 33.890324>,  <31.268953, 35.505951, 34.156425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.977291, 35.441750, 33.890324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590104, -0.639751, -0.492439,
		-0.346562, -0.751637, 0.561192,
		-0.729158, -0.160501, -0.665258,
		30.758543, 35.393600, 33.690746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.070372, 34.868778, 34.370350>,  <31.268953, 35.505951, 34.156425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.070372, 34.868778, 34.370350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.012674, 35.000553, 33.997112>,  <30.978056, 35.079617, 33.773170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.012674, 35.000553, 33.997112>,  <31.070372, 34.868778, 34.370350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.012674, 35.000553, 33.997112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664216, -0.666726, -0.338073,
		-0.733492, -0.668541, -0.122647,
		-0.144243, 0.329438, -0.933094,
		30.969400, 35.099384, 33.717182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.977360, 34.106613, 34.728210>,  <31.070372, 34.868778, 34.370350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.977360, 34.106613, 34.728210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.222673, 33.805531, 34.823971>,  <31.369862, 33.624882, 34.881428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.222673, 33.805531, 34.823971>,  <30.977360, 34.106613, 34.728210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.222673, 33.805531, 34.823971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570890, -0.212953, 0.792928,
		-0.545863, -0.622961, -0.560315,
		0.613284, -0.752709, 0.239399,
		31.406658, 33.579720, 34.895790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.629761, 33.534485, 34.762314>,  <30.977360, 34.106613, 34.728210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.629761, 33.534485, 34.762314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.945868, 33.470341, 34.998878>,  <31.135532, 33.431854, 35.140816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.945868, 33.470341, 34.998878>,  <30.629761, 33.534485, 34.762314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.945868, 33.470341, 34.998878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610171, -0.117276, 0.783541,
		-0.056284, -0.980068, -0.190521,
		0.790268, -0.160351, 0.591409,
		31.182947, 33.422234, 35.176300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.392391, 32.990414, 35.231495>,  <30.629761, 33.534485, 34.762314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.392391, 32.990414, 35.231495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.714251, 33.149189, 35.408119>,  <30.907366, 33.244453, 35.514095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.714251, 33.149189, 35.408119>,  <30.392391, 32.990414, 35.231495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.714251, 33.149189, 35.408119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450499, -0.076293, 0.889511,
		0.386772, -0.914668, 0.117433,
		0.804648, 0.396942, 0.441564,
		30.955645, 33.268272, 35.540588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.475964, 32.600922, 35.792011>,  <30.392391, 32.990414, 35.231495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.475964, 32.600922, 35.792011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.680088, 32.934650, 35.875423>,  <30.802563, 33.134888, 35.925468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.680088, 32.934650, 35.875423>,  <30.475964, 32.600922, 35.792011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.680088, 32.934650, 35.875423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517572, 0.104309, 0.849258,
		0.686807, -0.541313, 0.485054,
		0.510309, 0.834326, 0.208528,
		30.833181, 33.184948, 35.937981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.655521, 32.537685, 36.566616>,  <30.475964, 32.600922, 35.792011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.655521, 32.537685, 36.566616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.686522, 32.923981, 36.467545>,  <30.705122, 33.155758, 36.408104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.686522, 32.923981, 36.467545>,  <30.655521, 32.537685, 36.566616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.686522, 32.923981, 36.467545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539141, 0.249560, 0.804392,
		0.838642, 0.071192, 0.540010,
		0.077498, 0.965739, -0.247675,
		30.709770, 33.213703, 36.393242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.005209, 32.785606, 37.022739>,  <30.655521, 32.537685, 36.566616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.005209, 32.785606, 37.022739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.769327, 33.086590, 36.905396>,  <30.627798, 33.267178, 36.834991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.769327, 33.086590, 36.905396>,  <31.005209, 32.785606, 37.022739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.769327, 33.086590, 36.905396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444387, 0.000989, 0.895835,
		0.674366, 0.658642, 0.333799,
		-0.589704, 0.752456, -0.293358,
		30.592417, 33.312328, 36.817387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.036991, 33.307415, 37.501465>,  <31.005209, 32.785606, 37.022739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.036991, 33.307415, 37.501465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.689348, 33.419689, 37.338558>,  <30.480762, 33.487053, 37.240814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.689348, 33.419689, 37.338558>,  <31.036991, 33.307415, 37.501465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.689348, 33.419689, 37.338558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383613, 0.137270, 0.913235,
		0.312234, 0.949934, -0.011630,
		-0.869109, 0.280681, -0.407268,
		30.428616, 33.503895, 37.216377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.876495, 33.929115, 37.738987>,  <31.036991, 33.307415, 37.501465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.876495, 33.929115, 37.738987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.514973, 33.798592, 37.628239>,  <30.298059, 33.720276, 37.561790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.514973, 33.798592, 37.628239>,  <30.876495, 33.929115, 37.738987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.514973, 33.798592, 37.628239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352216, 0.199751, 0.914354,
		-0.243058, 0.923917, -0.295468,
		-0.903807, -0.326309, -0.276868,
		30.243832, 33.700699, 37.545177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.469055, 34.368896, 38.053593>,  <30.876495, 33.929115, 37.738987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.469055, 34.368896, 38.053593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.222326, 34.065517, 37.969406>,  <30.074289, 33.883492, 37.918896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.222326, 34.065517, 37.969406>,  <30.469055, 34.368896, 38.053593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.222326, 34.065517, 37.969406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343893, 0.019161, 0.938813,
		-0.708005, 0.651456, -0.272642,
		-0.616820, -0.758444, -0.210465,
		30.037281, 33.837986, 37.906265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.780361, 34.503078, 38.342274>,  <30.469055, 34.368896, 38.053593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.780361, 34.503078, 38.342274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.804758, 34.105457, 38.306168>,  <29.819397, 33.866886, 38.284504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.804758, 34.105457, 38.306168>,  <29.780361, 34.503078, 38.342274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.804758, 34.105457, 38.306168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282606, -0.103928, 0.953589,
		-0.957295, -0.032653, -0.287263,
		0.060993, -0.994048, -0.090261,
		29.823055, 33.807243, 38.279091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.172047, 34.179733, 38.724220>,  <29.780361, 34.503078, 38.342274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.172047, 34.179733, 38.724220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.397795, 33.850513, 38.698689>,  <29.533243, 33.652981, 38.683369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.397795, 33.850513, 38.698689>,  <29.172047, 34.179733, 38.724220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.397795, 33.850513, 38.698689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189690, -0.204549, 0.960301,
		-0.803433, -0.529857, -0.271566,
		0.564370, -0.823050, -0.063833,
		29.567106, 33.603600, 38.679539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.728283, 33.599426, 38.878723>,  <29.172047, 34.179733, 38.724220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.728283, 33.599426, 38.878723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.090050, 33.436291, 38.928841>,  <29.307110, 33.338409, 38.958912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.090050, 33.436291, 38.928841>,  <28.728283, 33.599426, 38.878723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.090050, 33.436291, 38.928841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295803, -0.387765, 0.873006,
		-0.307456, -0.826625, -0.471340,
		0.904418, -0.407834, 0.125297,
		29.361376, 33.313938, 38.966431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.528679, 33.022366, 39.024044>,  <28.728283, 33.599426, 38.878723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.528679, 33.022366, 39.024044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.906626, 33.014545, 39.154789>,  <29.133394, 33.009853, 39.233238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.906626, 33.014545, 39.154789>,  <28.528679, 33.022366, 39.024044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.906626, 33.014545, 39.154789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280687, -0.562443, 0.777735,
		0.168635, -0.826605, -0.536924,
		0.944868, -0.019554, 0.326865,
		29.190086, 33.008678, 39.252850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.627619, 32.349911, 39.226616>,  <28.528679, 33.022366, 39.024044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.627619, 32.349911, 39.226616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.906277, 32.564884, 39.416714>,  <29.073471, 32.693867, 39.530773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.906277, 32.564884, 39.416714>,  <28.627619, 32.349911, 39.226616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.906277, 32.564884, 39.416714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032093, -0.685119, 0.727724,
		0.716699, -0.491713, -0.494532,
		0.696644, 0.537430, 0.475243,
		29.115271, 32.726112, 39.559288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.164822, 31.908215, 39.533989>,  <28.627619, 32.349911, 39.226616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.164822, 31.908215, 39.533989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.176947, 32.239021, 39.758533>,  <29.184221, 32.437504, 39.893261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.176947, 32.239021, 39.758533>,  <29.164822, 31.908215, 39.533989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.176947, 32.239021, 39.758533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070177, -0.561995, 0.824158,
		0.997074, 0.014413, -0.075073,
		0.030312, 0.827015, 0.561362,
		29.186041, 32.487125, 39.926941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.640547, 31.704508, 40.002377>,  <29.164822, 31.908215, 39.533989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.640547, 31.704508, 40.002377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.460495, 32.031559, 40.145969>,  <29.352465, 32.227791, 40.232124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.460495, 32.031559, 40.145969>,  <29.640547, 31.704508, 40.002377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.460495, 32.031559, 40.145969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029411, -0.415370, 0.909177,
		0.892479, 0.398690, 0.211018,
		-0.450130, 0.817627, 0.358983,
		29.325457, 32.276848, 40.253666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.044033, 31.908157, 40.641682>,  <29.640547, 31.704508, 40.002377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.044033, 31.908157, 40.641682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.681948, 32.078091, 40.645733>,  <29.464695, 32.180050, 40.648163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.681948, 32.078091, 40.645733>,  <30.044033, 31.908157, 40.641682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.681948, 32.078091, 40.645733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033424, -0.094936, 0.994922,
		0.423636, 0.900281, 0.100137,
		-0.905216, 0.424832, 0.010127,
		29.410383, 32.205540, 40.648769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.070255, 32.280785, 41.249729>,  <30.044033, 31.908157, 40.641682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.070255, 32.280785, 41.249729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.677170, 32.238022, 41.189270>,  <29.441319, 32.212364, 41.152996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.677170, 32.238022, 41.189270>,  <30.070255, 32.280785, 41.249729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.677170, 32.238022, 41.189270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127550, -0.200777, 0.971298,
		-0.134183, 0.973786, 0.183671,
		-0.982714, -0.106905, -0.151147,
		29.382357, 32.205952, 41.143925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.752247, 32.673939, 41.700916>,  <30.070255, 32.280785, 41.249729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.752247, 32.673939, 41.700916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.466801, 32.410828, 41.604511>,  <29.295534, 32.252960, 41.546669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.466801, 32.410828, 41.604511>,  <29.752247, 32.673939, 41.700916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.466801, 32.410828, 41.604511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169501, -0.171693, 0.970459,
		-0.679723, 0.733386, 0.011029,
		-0.713614, -0.657774, -0.241013,
		29.252716, 32.213497, 41.532207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.095867, 32.705868, 42.185757>,  <29.752247, 32.673939, 41.700916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.095867, 32.705868, 42.185757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.091583, 32.341545, 42.020683>,  <29.089012, 32.122952, 41.921638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.091583, 32.341545, 42.020683>,  <29.095867, 32.705868, 42.185757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.091583, 32.341545, 42.020683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176149, -0.404536, 0.897398,
		-0.984305, 0.082305, -0.156106,
		-0.010710, -0.910811, -0.412685,
		29.088371, 32.068302, 41.896877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.436148, 32.366344, 42.497223>,  <29.095867, 32.705868, 42.185757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.436148, 32.366344, 42.497223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.700743, 32.091476, 42.377075>,  <28.859501, 31.926554, 42.304985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.700743, 32.091476, 42.377075>,  <28.436148, 32.366344, 42.497223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.700743, 32.091476, 42.377075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225561, -0.564275, 0.794176,
		-0.715230, -0.457586, -0.528262,
		0.661489, -0.687174, -0.300373,
		28.899189, 31.885324, 42.286964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.048584, 31.793226, 42.800671>,  <28.436148, 32.366344, 42.497223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.048584, 31.793226, 42.800671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.406599, 31.657789, 42.684563>,  <28.621408, 31.576527, 42.614899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.406599, 31.657789, 42.684563>,  <28.048584, 31.793226, 42.800671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.406599, 31.657789, 42.684563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051812, -0.567509, 0.821736,
		-0.442966, -0.750526, -0.490400,
		0.895040, -0.338592, -0.290273,
		28.675112, 31.556211, 42.597481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.000278, 31.082182, 42.874043>,  <28.048584, 31.793226, 42.800671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.000278, 31.082182, 42.874043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.391699, 31.164476, 42.869907>,  <28.626551, 31.213854, 42.867428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.391699, 31.164476, 42.869907>,  <28.000278, 31.082182, 42.874043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.391699, 31.164476, 42.869907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132828, -0.591837, 0.795038,
		0.157452, -0.779360, -0.606471,
		0.978553, 0.205737, -0.010335,
		28.685265, 31.226198, 42.866806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.366741, 30.361822, 42.957443>,  <28.000278, 31.082182, 42.874043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.366741, 30.361822, 42.957443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.606771, 30.669376, 43.045738>,  <28.750790, 30.853909, 43.098717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.606771, 30.669376, 43.045738>,  <28.366741, 30.361822, 42.957443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.606771, 30.669376, 43.045738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071176, -0.326172, 0.942627,
		0.796770, -0.549937, -0.250454,
		0.600076, 0.768884, 0.220741,
		28.786795, 30.900042, 43.111961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.058107, 30.043655, 43.176510>,  <28.366741, 30.361822, 42.957443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.058107, 30.043655, 43.176510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.989012, 30.404768, 43.334064>,  <28.947554, 30.621435, 43.428596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.989012, 30.404768, 43.334064>,  <29.058107, 30.043655, 43.176510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.989012, 30.404768, 43.334064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019976, -0.403031, 0.914968,
		0.984765, 0.150184, 0.087653,
		-0.172741, 0.902780, 0.393891,
		28.937189, 30.675602, 43.452232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.488968, 30.123867, 43.666130>,  <29.058107, 30.043655, 43.176510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.488968, 30.123867, 43.666130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.240669, 30.416254, 43.779522>,  <29.091690, 30.591686, 43.847557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.240669, 30.416254, 43.779522>,  <29.488968, 30.123867, 43.666130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.240669, 30.416254, 43.779522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048843, -0.324819, 0.944514,
		0.782487, 0.600151, 0.165928,
		-0.620748, 0.730966, 0.283480,
		29.054445, 30.635544, 43.864567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.693954, 30.236311, 44.357147>,  <29.488968, 30.123867, 43.666130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.693954, 30.236311, 44.357147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.347160, 30.435635, 44.355175>,  <29.139084, 30.555229, 44.353992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.347160, 30.435635, 44.355175>,  <29.693954, 30.236311, 44.357147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.347160, 30.435635, 44.355175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209293, -0.355123, 0.911089,
		0.452255, 0.790932, 0.412180,
		-0.866984, 0.498311, -0.004930,
		29.087065, 30.585129, 44.353695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.713631, 30.541330, 44.906765>,  <29.693954, 30.236311, 44.357147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.713631, 30.541330, 44.906765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.321695, 30.554924, 44.828014>,  <29.086535, 30.563080, 44.780762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.321695, 30.554924, 44.828014>,  <29.713631, 30.541330, 44.906765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.321695, 30.554924, 44.828014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199786, -0.160363, 0.966628,
		0.001276, 0.986473, 0.163920,
		-0.979839, 0.033983, -0.196879,
		29.027744, 30.565119, 44.768951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.489199, 30.974781, 45.388565>,  <29.713631, 30.541330, 44.906765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.489199, 30.974781, 45.388565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.179924, 30.758364, 45.256229>,  <28.994360, 30.628513, 45.176830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.179924, 30.758364, 45.256229>,  <29.489199, 30.974781, 45.388565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.179924, 30.758364, 45.256229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272535, -0.187572, 0.943685,
		-0.572631, 0.819809, -0.002425,
		-0.773187, -0.541044, -0.330837,
		28.947968, 30.596050, 45.156979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.871197, 31.157263, 45.737110>,  <29.489199, 30.974781, 45.388565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.871197, 31.157263, 45.737110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.822889, 30.781086, 45.609997>,  <28.793905, 30.555380, 45.533730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.822889, 30.781086, 45.609997>,  <28.871197, 31.157263, 45.737110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.822889, 30.781086, 45.609997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291501, -0.272413, 0.916962,
		-0.948916, 0.203373, -0.241241,
		-0.120768, -0.940442, -0.317780,
		28.786659, 30.498953, 45.514664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.209608, 30.908358, 45.881355>,  <28.871197, 31.157263, 45.737110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.209608, 30.908358, 45.881355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.434923, 30.578068, 45.869427>,  <28.570112, 30.379894, 45.862270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.434923, 30.578068, 45.869427>,  <28.209608, 30.908358, 45.881355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.434923, 30.578068, 45.869427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291273, -0.232219, 0.928027,
		-0.773220, -0.514057, -0.371317,
		0.563286, -0.825724, -0.029826,
		28.603909, 30.330351, 45.860477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.831676, 30.516977, 46.329597>,  <28.209608, 30.908358, 45.881355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.831676, 30.516977, 46.329597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.174213, 30.316761, 46.278782>,  <28.379736, 30.196632, 46.248291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.174213, 30.316761, 46.278782>,  <27.831676, 30.516977, 46.329597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.174213, 30.316761, 46.278782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062899, -0.345270, 0.936393,
		-0.512564, -0.793882, -0.327153,
		0.856342, -0.500539, -0.127039,
		28.431116, 30.166599, 46.240669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.655573, 29.786373, 46.429546>,  <27.831676, 30.516977, 46.329597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.655573, 29.786373, 46.429546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.047112, 29.834627, 46.495640>,  <28.282036, 29.863581, 46.535297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.047112, 29.834627, 46.495640>,  <27.655573, 29.786373, 46.429546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.047112, 29.834627, 46.495640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067397, -0.572430, 0.817179,
		0.193168, -0.811030, -0.552192,
		0.978848, 0.120637, 0.165236,
		28.340767, 29.870819, 46.545212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.850710, 29.078262, 46.441597>,  <27.655573, 29.786373, 46.429546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.850710, 29.078262, 46.441597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.158642, 29.265501, 46.615147>,  <28.343401, 29.377844, 46.719276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.158642, 29.265501, 46.615147>,  <27.850710, 29.078262, 46.441597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.158642, 29.265501, 46.615147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080756, -0.745759, 0.661303,
		0.633118, -0.474054, -0.611911,
		0.769831, 0.468098, 0.433871,
		28.389591, 29.405930, 46.745308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.451799, 28.691500, 46.386612>,  <27.850710, 29.078262, 46.441597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.451799, 28.691500, 46.386612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.490362, 28.905790, 46.722160>,  <28.513500, 29.034365, 46.923489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.490362, 28.905790, 46.722160>,  <28.451799, 28.691500, 46.386612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.490362, 28.905790, 46.722160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009843, -0.843266, 0.537406,
		0.995293, -0.043553, -0.086571,
		0.096408, 0.535729, 0.838869,
		28.519285, 29.066509, 46.973820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.800493, 28.250490, 46.704403>,  <28.451799, 28.691500, 46.386612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.800493, 28.250490, 46.704403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.731724, 28.528322, 46.983833>,  <28.690462, 28.695021, 47.151489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.731724, 28.528322, 46.983833>,  <28.800493, 28.250490, 46.704403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.731724, 28.528322, 46.983833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037208, -0.704045, 0.709179,
		0.984407, 0.147917, 0.095198,
		-0.171923, 0.694579, 0.698571,
		28.680147, 28.736696, 47.193405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.241171, 28.006632, 47.237251>,  <28.800493, 28.250490, 46.704403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.241171, 28.006632, 47.237251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.979509, 28.258545, 47.404800>,  <28.822512, 28.409693, 47.505329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.979509, 28.258545, 47.404800>,  <29.241171, 28.006632, 47.237251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.979509, 28.258545, 47.404800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059514, -0.509227, 0.858572,
		0.754017, 0.586567, 0.295632,
		-0.654154, 0.629783, 0.418875,
		28.783264, 28.447479, 47.530464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.459047, 28.134117, 47.882885>,  <29.241171, 28.006632, 47.237251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.459047, 28.134117, 47.882885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.065269, 28.197367, 47.913509>,  <28.829002, 28.235315, 47.931885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.065269, 28.197367, 47.913509>,  <29.459047, 28.134117, 47.882885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.065269, 28.197367, 47.913509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011117, -0.491000, 0.871089,
		0.175331, 0.856689, 0.485121,
		-0.984447, 0.158122, 0.076564,
		28.769936, 28.244802, 47.936478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.406336, 28.151726, 48.534016>,  <29.459047, 28.134117, 47.882885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.406336, 28.151726, 48.534016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.030977, 28.102909, 48.404697>,  <28.805763, 28.073618, 48.327106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.030977, 28.102909, 48.404697>,  <29.406336, 28.151726, 48.534016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.030977, 28.102909, 48.404697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210801, -0.539156, 0.815398,
		-0.273821, 0.833317, 0.480215,
		-0.938395, -0.122043, -0.323296,
		28.749458, 28.066296, 48.307709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.062750, 28.313028, 49.138039>,  <29.406336, 28.151726, 48.534016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.062750, 28.313028, 49.138039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.792709, 28.107733, 48.926067>,  <28.630686, 27.984556, 48.798885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.792709, 28.107733, 48.926067>,  <29.062750, 28.313028, 49.138039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.792709, 28.107733, 48.926067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236230, -0.530110, 0.814358,
		-0.698880, 0.674959, 0.236635,
		-0.675101, -0.513239, -0.529929,
		28.590179, 27.953762, 48.767090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.420622, 28.297955, 49.499737>,  <29.062750, 28.313028, 49.138039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.420622, 28.297955, 49.499737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.438023, 27.967491, 49.275032>,  <28.448463, 27.769213, 49.140209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.438023, 27.967491, 49.275032>,  <28.420622, 28.297955, 49.499737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.438023, 27.967491, 49.275032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167283, -0.560375, 0.811170,
		-0.984949, 0.058687, -0.162578,
		0.043499, -0.826157, -0.561758,
		28.451073, 27.719645, 49.106506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.785076, 27.885136, 49.583591>,  <28.420622, 28.297955, 49.499737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.785076, 27.885136, 49.583591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.085188, 27.649672, 49.463219>,  <28.265255, 27.508392, 49.390995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.085188, 27.649672, 49.463219>,  <27.785076, 27.885136, 49.583591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.085188, 27.649672, 49.463219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250434, -0.674323, 0.694673,
		-0.611851, -0.445837, -0.653352,
		0.750281, -0.588658, -0.300932,
		28.310272, 27.473074, 49.372940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.579250, 27.146545, 49.288944>,  <27.785076, 27.885136, 49.583591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.579250, 27.146545, 49.288944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.939732, 27.184996, 49.457985>,  <28.156021, 27.208067, 49.559410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.939732, 27.184996, 49.457985>,  <27.579250, 27.146545, 49.288944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.939732, 27.184996, 49.457985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245325, -0.690686, 0.680271,
		0.357276, -0.716737, -0.598867,
		0.901205, 0.096127, 0.422599,
		28.210093, 27.213833, 49.584766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.120310, 27.015413, 49.787098>,  <27.579250, 27.146545, 49.288944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.120310, 27.015413, 49.787098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.975651, 26.752909, 50.051983>,  <26.888855, 26.595406, 50.210915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.975651, 26.752909, 50.051983>,  <27.120310, 27.015413, 49.787098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.975651, 26.752909, 50.051983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925342, -0.165958, 0.340882,
		-0.113808, 0.736056, 0.667285,
		-0.361650, -0.656261, 0.662216,
		26.867155, 26.556030, 50.250648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.172016, 27.290260, 50.560974>,  <27.120310, 27.015413, 49.787098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.172016, 27.290260, 50.560974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.193136, 26.901609, 50.468754>,  <27.205809, 26.668419, 50.413422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.193136, 26.901609, 50.468754>,  <27.172016, 27.290260, 50.560974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.193136, 26.901609, 50.468754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957912, -0.015954, 0.286619,
		-0.282165, -0.235985, 0.929889,
		0.052802, -0.971626, -0.230554,
		27.208977, 26.610121, 50.399586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.488844, 26.981073, 51.086784>,  <27.172016, 27.290260, 50.560974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.488844, 26.981073, 51.086784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.575968, 26.744612, 50.776146>,  <27.628242, 26.602734, 50.589764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.575968, 26.744612, 50.776146>,  <27.488844, 26.981073, 51.086784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.575968, 26.744612, 50.776146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960665, -0.010604, 0.277506,
		-0.172284, -0.806488, 0.565593,
		0.217808, -0.591156, -0.776592,
		27.641310, 26.567265, 50.543167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.770763, 26.326073, 51.305637>,  <27.488844, 26.981073, 51.086784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.770763, 26.326073, 51.305637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.925165, 26.466356, 50.964344>,  <28.017805, 26.550526, 50.759567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.925165, 26.466356, 50.964344>,  <27.770763, 26.326073, 51.305637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.925165, 26.466356, 50.964344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917342, -0.048282, 0.395160,
		0.097390, -0.935239, -0.340357,
		0.386002, 0.350709, -0.853233,
		28.040966, 26.571569, 50.708374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.323782, 25.964722, 51.100449>,  <27.770763, 26.326073, 51.305637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.323782, 25.964722, 51.100449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.366596, 26.335653, 50.957005>,  <28.392284, 26.558212, 50.870937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.366596, 26.335653, 50.957005>,  <28.323782, 25.964722, 51.100449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.366596, 26.335653, 50.957005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954333, 0.005358, 0.298699,
		0.278913, -0.374209, -0.884407,
		0.107037, 0.927329, -0.358614,
		28.398708, 26.613852, 50.849419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.897184, 26.025116, 50.651642>,  <28.323782, 25.964722, 51.100449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.897184, 26.025116, 50.651642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.835564, 26.373079, 50.839058>,  <28.798592, 26.581858, 50.951508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.835564, 26.373079, 50.839058>,  <28.897184, 26.025116, 50.651642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.835564, 26.373079, 50.839058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896016, -0.076868, 0.437318,
		0.416442, 0.487185, -0.767611,
		-0.154050, 0.869909, 0.468536,
		28.789349, 26.634052, 50.979618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.196270, 25.918077, 49.917725>,  <28.897184, 26.025116, 50.651642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.196270, 25.918077, 49.917725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.206932, 25.518303, 49.909557>,  <29.213329, 25.278439, 49.904659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.206932, 25.518303, 49.909557>,  <29.196270, 25.918077, 49.917725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.206932, 25.518303, 49.909557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050289, 0.021736, -0.998498,
		0.998379, 0.025589, 0.050840,
		0.026656, -0.999436, -0.020414,
		29.214930, 25.218472, 49.903435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.806873, 25.403620, 49.608952>,  <29.196270, 25.918077, 49.917725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.806873, 25.403620, 49.608952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.423138, 25.297667, 49.569950>,  <29.192896, 25.234095, 49.546551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.423138, 25.297667, 49.569950>,  <29.806873, 25.403620, 49.608952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.423138, 25.297667, 49.569950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068572, 0.116378, -0.990835,
		0.273803, -0.957232, -0.093483,
		-0.959338, -0.264883, -0.097504,
		29.135336, 25.218203, 49.540699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.844566, 24.808834, 49.284138>,  <29.806873, 25.403620, 49.608952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.844566, 24.808834, 49.284138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.544233, 25.066296, 49.224854>,  <29.364035, 25.220772, 49.189285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.544233, 25.066296, 49.224854>,  <29.844566, 24.808834, 49.284138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.544233, 25.066296, 49.224854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370968, 0.225299, -0.900902,
		-0.546476, -0.731404, -0.407935,
		-0.750831, 0.643652, -0.148207,
		29.318985, 25.259392, 49.180393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.644499, 24.650049, 48.548420>,  <29.844566, 24.808834, 49.284138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.644499, 24.650049, 48.548420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.529320, 25.021250, 48.642994>,  <29.460213, 25.243971, 48.699738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.529320, 25.021250, 48.642994>,  <29.644499, 24.650049, 48.548420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.529320, 25.021250, 48.642994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330397, 0.328001, -0.885016,
		-0.898846, -0.176720, -0.401055,
		-0.287946, 0.928001, 0.236434,
		29.442936, 25.299650, 48.713924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.315119, 24.881210, 47.977520>,  <29.644499, 24.650049, 48.548420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.315119, 24.881210, 47.977520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.425508, 25.204380, 48.185787>,  <29.491741, 25.398281, 48.310749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.425508, 25.204380, 48.185787>,  <29.315119, 24.881210, 47.977520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.425508, 25.204380, 48.185787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170049, 0.492123, -0.853756,
		-0.946003, 0.324153, -0.001575,
		0.275972, 0.807923, 0.520672,
		29.508301, 25.446756, 48.341988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.007898, 25.514902, 47.639874>,  <29.315119, 24.881210, 47.977520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.007898, 25.514902, 47.639874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.326786, 25.630400, 47.851936>,  <29.518120, 25.699697, 47.979176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.326786, 25.630400, 47.851936>,  <29.007898, 25.514902, 47.639874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.326786, 25.630400, 47.851936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338128, 0.513947, -0.788371,
		-0.500108, 0.807767, 0.312098,
		0.797221, 0.288742, 0.530157,
		29.565952, 25.717022, 48.010983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.143475, 26.240725, 47.474953>,  <29.007898, 25.514902, 47.639874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.143475, 26.240725, 47.474953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.481161, 26.082104, 47.619198>,  <29.683773, 25.986931, 47.705746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.481161, 26.082104, 47.619198>,  <29.143475, 26.240725, 47.474953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.481161, 26.082104, 47.619198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529334, 0.511036, -0.677235,
		0.084274, 0.762618, 0.641335,
		0.844218, -0.396554, 0.360612,
		29.734426, 25.963137, 47.727383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.671371, 26.772465, 47.432518>,  <29.143475, 26.240725, 47.474953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.671371, 26.772465, 47.432518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.904535, 26.457766, 47.513756>,  <30.044434, 26.268946, 47.562500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.904535, 26.457766, 47.513756>,  <29.671371, 26.772465, 47.432518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.904535, 26.457766, 47.513756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679119, 0.334495, -0.653384,
		0.446112, 0.518790, 0.729275,
		0.582907, -0.786747, 0.203098,
		30.079407, 26.221741, 47.574684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.367554, 27.011339, 47.529831>,  <29.671371, 26.772465, 47.432518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.367554, 27.011339, 47.529831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.449186, 26.623058, 47.479095>,  <30.498167, 26.390091, 47.448654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.449186, 26.623058, 47.479095>,  <30.367554, 27.011339, 47.529831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.449186, 26.623058, 47.479095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742413, 0.237923, -0.626272,
		0.638102, 0.033642, 0.769217,
		0.204083, -0.970701, -0.126843,
		30.510410, 26.331848, 47.441044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.093725, 26.960197, 47.472874>,  <30.367554, 27.011339, 47.529831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.093725, 26.960197, 47.472874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.964029, 26.636026, 47.277702>,  <30.886211, 26.441525, 47.160599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.964029, 26.636026, 47.277702>,  <31.093725, 26.960197, 47.472874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.964029, 26.636026, 47.277702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524036, 0.275541, -0.805893,
		0.787562, -0.516996, 0.335352,
		-0.324240, -0.810427, -0.487930,
		30.866756, 26.392899, 47.131325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.694336, 26.674601, 47.158092>,  <31.093725, 26.960197, 47.472874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.694336, 26.674601, 47.158092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.384871, 26.535170, 46.946457>,  <31.199190, 26.451511, 46.819477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.384871, 26.535170, 46.946457>,  <31.694336, 26.674601, 47.158092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.384871, 26.535170, 46.946457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507306, 0.159477, -0.846881,
		0.379581, -0.923613, 0.053454,
		-0.773665, -0.348577, -0.529089,
		31.152771, 26.430595, 46.787731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.942684, 26.156437, 46.633156>,  <31.694336, 26.674601, 47.158092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.942684, 26.156437, 46.633156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.596569, 26.308880, 46.502903>,  <31.388901, 26.400347, 46.424751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.596569, 26.308880, 46.502903>,  <31.942684, 26.156437, 46.633156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.596569, 26.308880, 46.502903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456255, 0.329708, -0.826513,
		-0.207628, -0.863741, -0.459175,
		-0.865287, 0.381108, -0.325630,
		31.336983, 26.423212, 46.405212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.878086, 25.930923, 45.968273>,  <31.942684, 26.156437, 46.633156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.878086, 25.930923, 45.968273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.628447, 26.243456, 45.966427>,  <31.478662, 26.430975, 45.965321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.628447, 26.243456, 45.966427>,  <31.878086, 25.930923, 45.968273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.628447, 26.243456, 45.966427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396183, 0.311357, -0.863768,
		-0.673454, -0.540904, -0.503868,
		-0.624098, 0.781332, -0.004612,
		31.441217, 26.477856, 45.965042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.754297, 26.003586, 45.334934>,  <31.878086, 25.930923, 45.968273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.754297, 26.003586, 45.334934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.602444, 26.344879, 45.477966>,  <31.511332, 26.549656, 45.563786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.602444, 26.344879, 45.477966>,  <31.754297, 26.003586, 45.334934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.602444, 26.344879, 45.477966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222255, 0.459316, -0.860018,
		-0.898042, -0.247019, -0.364009,
		-0.379635, 0.853235, 0.357583,
		31.488552, 26.600849, 45.585239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.449873, 26.315317, 44.788235>,  <31.754297, 26.003586, 45.334934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.449873, 26.315317, 44.788235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.482857, 26.620790, 45.044357>,  <31.502647, 26.804075, 45.198029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.482857, 26.620790, 45.044357>,  <31.449873, 26.315317, 44.788235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.482857, 26.620790, 45.044357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186296, 0.619353, -0.762690,
		-0.979027, 0.182177, -0.091199,
		0.082461, 0.763684, 0.640302,
		31.507595, 26.849895, 45.236446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.000751, 26.812857, 44.618595>,  <31.449873, 26.315317, 44.788235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.000751, 26.812857, 44.618595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.273367, 27.026197, 44.819012>,  <31.436935, 27.154202, 44.939262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.273367, 27.026197, 44.819012>,  <31.000751, 26.812857, 44.618595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.273367, 27.026197, 44.819012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129296, 0.586147, -0.799821,
		-0.720271, 0.609890, 0.330521,
		0.681537, 0.533352, 0.501041,
		31.477829, 27.186203, 44.969322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.743729, 27.520287, 44.611885>,  <31.000751, 26.812857, 44.618595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.743729, 27.520287, 44.611885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.139688, 27.521296, 44.668587>,  <31.377264, 27.521900, 44.702610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.139688, 27.521296, 44.668587>,  <30.743729, 27.520287, 44.611885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.139688, 27.521296, 44.668587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078776, 0.821524, -0.564706,
		-0.117880, 0.570169, 0.813026,
		0.989898, 0.002521, 0.141757,
		31.436659, 27.522051, 44.711113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.823477, 28.165653, 44.811497>,  <30.743729, 27.520287, 44.611885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.823477, 28.165653, 44.811497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.184359, 28.021858, 44.716171>,  <31.400888, 27.935581, 44.658978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.184359, 28.021858, 44.716171>,  <30.823477, 28.165653, 44.811497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.184359, 28.021858, 44.716171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191722, 0.829209, -0.525029,
		0.386351, 0.427995, 0.817039,
		0.902206, -0.359490, -0.238309,
		31.455021, 27.914011, 44.644680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.107706, 28.789963, 44.566391>,  <30.823477, 28.165653, 44.811497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.107706, 28.789963, 44.566391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.360926, 28.510794, 44.432434>,  <31.512857, 28.343292, 44.352062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.360926, 28.510794, 44.432434>,  <31.107706, 28.789963, 44.566391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.360926, 28.510794, 44.432434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210063, 0.571255, -0.793437,
		0.745064, 0.431938, 0.508241,
		0.633050, -0.697924, -0.334888,
		31.550840, 28.301416, 44.331966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.812527, 29.133963, 44.310184>,  <31.107706, 28.789963, 44.566391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.812527, 29.133963, 44.310184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.781170, 28.772751, 44.141239>,  <31.762356, 28.556023, 44.039871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.781170, 28.772751, 44.141239>,  <31.812527, 29.133963, 44.310184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.781170, 28.772751, 44.141239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246774, 0.392903, -0.885850,
		0.965897, -0.173671, 0.192044,
		-0.078391, -0.903031, -0.422361,
		31.757652, 28.501841, 44.014530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.460903, 29.044367, 43.770470>,  <31.812527, 29.133963, 44.310184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.460903, 29.044367, 43.770470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.154575, 28.797142, 43.699459>,  <31.970778, 28.648808, 43.656853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.154575, 28.797142, 43.699459>,  <32.460903, 29.044367, 43.770470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.154575, 28.797142, 43.699459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049960, 0.218053, -0.974657,
		0.641110, -0.755283, -0.136112,
		-0.765821, -0.618062, -0.177530,
		31.924829, 28.611723, 43.646202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731930, 28.506660, 43.266960>,  <32.460903, 29.044367, 43.770470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731930, 28.506660, 43.266960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.335258, 28.499182, 43.216015>,  <32.097256, 28.494694, 43.185448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.335258, 28.499182, 43.216015>,  <32.731930, 28.506660, 43.266960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.335258, 28.499182, 43.216015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122558, 0.165587, -0.978550,
		0.039387, -0.986018, -0.161918,
		-0.991679, -0.018698, -0.127367,
		32.037754, 28.493572, 43.177803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.603302, 28.078003, 42.654396>,  <32.731930, 28.506660, 43.266960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.603302, 28.078003, 42.654396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.291142, 28.325640, 42.689503>,  <32.103844, 28.474222, 42.710567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.291142, 28.325640, 42.689503>,  <32.603302, 28.078003, 42.654396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.291142, 28.325640, 42.689503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053524, 0.205984, -0.977091,
		-0.622985, -0.757825, -0.193886,
		-0.780401, 0.619090, 0.087763,
		32.057022, 28.511366, 42.715832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.199020, 27.852777, 42.150948>,  <32.603302, 28.078003, 42.654396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.199020, 27.852777, 42.150948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.027782, 28.201439, 42.246403>,  <31.925039, 28.410637, 42.303677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.027782, 28.201439, 42.246403>,  <32.199020, 27.852777, 42.150948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.027782, 28.201439, 42.246403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132315, 0.200764, -0.970663,
		-0.893994, -0.447115, 0.029386,
		-0.428099, 0.871655, 0.238642,
		31.899353, 28.462934, 42.317997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.600246, 27.926512, 41.785706>,  <32.199020, 27.852777, 42.150948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.600246, 27.926512, 41.785706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.678148, 28.310764, 41.864960>,  <31.724890, 28.541315, 41.912510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.678148, 28.310764, 41.864960>,  <31.600246, 27.926512, 41.785706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.678148, 28.310764, 41.864960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114183, 0.222830, -0.968147,
		-0.974183, 0.165930, 0.153086,
		0.194757, 0.960632, 0.198131,
		31.736576, 28.598953, 41.924400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.053844, 28.256836, 41.367264>,  <31.600246, 27.926512, 41.785706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.053844, 28.256836, 41.367264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.350113, 28.517923, 41.430965>,  <31.527874, 28.674576, 41.469185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.350113, 28.517923, 41.430965>,  <31.053844, 28.256836, 41.367264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.350113, 28.517923, 41.430965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094397, 0.335778, -0.937199,
		-0.665203, 0.679124, 0.310316,
		0.740671, 0.652721, 0.159253,
		31.572315, 28.713739, 41.478741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.817780, 28.921566, 41.271217>,  <31.053844, 28.256836, 41.367264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.817780, 28.921566, 41.271217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.209770, 28.980738, 41.217911>,  <31.444965, 29.016241, 41.185928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.209770, 28.980738, 41.217911>,  <30.817780, 28.921566, 41.271217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.209770, 28.980738, 41.217911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191904, 0.523413, -0.830188,
		-0.053059, 0.839140, 0.541322,
		0.979978, 0.147931, -0.133262,
		31.503763, 29.025116, 41.177933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.984526, 29.548239, 41.022381>,  <30.817780, 28.921566, 41.271217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.984526, 29.548239, 41.022381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.337042, 29.382191, 40.932049>,  <31.548552, 29.282562, 40.877850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.337042, 29.382191, 40.932049>,  <30.984526, 29.548239, 41.022381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.337042, 29.382191, 40.932049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063725, 0.577909, -0.813609,
		0.468256, 0.702636, 0.535760,
		0.881292, -0.415119, -0.225834,
		31.601429, 29.257654, 40.864300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.338501, 30.169077, 40.732994>,  <30.984526, 29.548239, 41.022381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.338501, 30.169077, 40.732994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.510750, 29.828053, 40.614536>,  <31.614100, 29.623438, 40.543461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.510750, 29.828053, 40.614536>,  <31.338501, 30.169077, 40.732994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.510750, 29.828053, 40.614536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196721, 0.408904, -0.891122,
		0.880832, 0.325478, 0.343800,
		0.430622, -0.852562, -0.296147,
		31.639936, 29.572285, 40.525692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.955082, 30.418064, 40.290119>,  <31.338501, 30.169077, 40.732994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.955082, 30.418064, 40.290119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.928862, 30.028908, 40.201405>,  <31.913130, 29.795414, 40.148174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.928862, 30.028908, 40.201405>,  <31.955082, 30.418064, 40.290119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.928862, 30.028908, 40.201405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128777, 0.212158, -0.968713,
		0.989505, -0.092059, 0.111379,
		-0.065549, -0.972890, -0.221787,
		31.909197, 29.737041, 40.134869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.496761, 30.351793, 39.813137>,  <31.955082, 30.418064, 40.290119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.496761, 30.351793, 39.813137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.250023, 30.041655, 39.758965>,  <32.101978, 29.855572, 39.726463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.250023, 30.041655, 39.758965>,  <32.496761, 30.351793, 39.813137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.250023, 30.041655, 39.758965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193543, 0.017361, -0.980938,
		0.762917, -0.631299, 0.139354,
		-0.616847, -0.775345, -0.135428,
		32.064968, 29.809052, 39.718334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.795849, 29.961617, 39.273132>,  <32.496761, 30.351793, 39.813137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.795849, 29.961617, 39.273132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.424206, 29.813839, 39.279602>,  <32.201218, 29.725172, 39.283485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.424206, 29.813839, 39.279602>,  <32.795849, 29.961617, 39.273132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.424206, 29.813839, 39.279602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037071, -0.136574, -0.989936,
		0.367936, -0.919162, 0.140588,
		-0.929112, -0.369444, 0.016177,
		32.145473, 29.703005, 39.284454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.764034, 29.377588, 38.815720>,  <32.795849, 29.961617, 39.273132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.764034, 29.377588, 38.815720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.384644, 29.495947, 38.861050>,  <32.157009, 29.566961, 38.888248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.384644, 29.495947, 38.861050>,  <32.764034, 29.377588, 38.815720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.384644, 29.495947, 38.861050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045964, 0.225372, -0.973188,
		-0.313502, -0.928253, -0.200159,
		-0.948475, 0.295896, 0.113320,
		32.100101, 29.584715, 38.895046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423859, 28.980911, 38.329308>,  <32.764034, 29.377588, 38.815720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423859, 28.980911, 38.329308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.205383, 29.309196, 38.396370>,  <32.074299, 29.506168, 38.436607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.205383, 29.309196, 38.396370>,  <32.423859, 28.980911, 38.329308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.205383, 29.309196, 38.396370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070590, 0.154334, -0.985494,
		-0.834684, -0.550098, -0.026361,
		-0.546187, 0.820715, 0.167651,
		32.041527, 29.555410, 38.446667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.942972, 28.967688, 37.780949>,  <32.423859, 28.980911, 38.329308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.942972, 28.967688, 37.780949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.933258, 29.350479, 37.896603>,  <31.927429, 29.580154, 37.965996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.933258, 29.350479, 37.896603>,  <31.942972, 28.967688, 37.780949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.933258, 29.350479, 37.896603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051235, 0.290035, -0.955644,
		-0.998391, -0.008394, -0.056074,
		-0.024285, 0.956979, 0.289139,
		31.925972, 29.637573, 37.983345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.572693, 29.225725, 37.215477>,  <31.942972, 28.967688, 37.780949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.572693, 29.225725, 37.215477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.700117, 29.550314, 37.411449>,  <31.776571, 29.745068, 37.529034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.700117, 29.550314, 37.411449>,  <31.572693, 29.225725, 37.215477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.700117, 29.550314, 37.411449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100810, 0.484921, -0.868729,
		-0.942526, 0.326134, 0.072673,
		0.318562, 0.811473, 0.489928,
		31.795685, 29.793756, 37.558430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.218042, 29.820395, 36.909676>,  <31.572693, 29.225725, 37.215477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.218042, 29.820395, 36.909676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.534395, 29.978802, 37.096302>,  <31.724207, 30.073845, 37.208279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.534395, 29.978802, 37.096302>,  <31.218042, 29.820395, 36.909676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.534395, 29.978802, 37.096302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252576, 0.483199, -0.838286,
		-0.557418, 0.780826, 0.282128,
		0.790880, 0.396017, 0.466562,
		31.771660, 30.097607, 37.236271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.137959, 30.545725, 36.864193>,  <31.218042, 29.820395, 36.909676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.137959, 30.545725, 36.864193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.522583, 30.453579, 36.923965>,  <31.753357, 30.398291, 36.959831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.522583, 30.453579, 36.923965>,  <31.137959, 30.545725, 36.864193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.522583, 30.453579, 36.923965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260561, 0.593768, -0.761280,
		0.086642, 0.770955, 0.630968,
		0.961562, -0.230364, 0.149435,
		31.811052, 30.384470, 36.968796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.408415, 31.125483, 36.685207>,  <31.137959, 30.545725, 36.864193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.408415, 31.125483, 36.685207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.728474, 30.885674, 36.677883>,  <31.920509, 30.741787, 36.673489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.728474, 30.885674, 36.677883>,  <31.408415, 31.125483, 36.685207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.728474, 30.885674, 36.677883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428267, 0.592424, -0.682365,
		0.419943, 0.538149, 0.730782,
		0.800147, -0.599524, -0.018313,
		31.968517, 30.705816, 36.672390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.956863, 31.538849, 36.667717>,  <31.408415, 31.125483, 36.685207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.956863, 31.538849, 36.667717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.116245, 31.199371, 36.528603>,  <32.211876, 30.995686, 36.445133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.116245, 31.199371, 36.528603>,  <31.956863, 31.538849, 36.667717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.116245, 31.199371, 36.528603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305215, 0.480264, -0.822307,
		0.864915, 0.221503, 0.450398,
		0.398454, -0.848694, -0.347782,
		32.235783, 30.944763, 36.424267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.628834, 31.705332, 36.448414>,  <31.956863, 31.538849, 36.667717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.628834, 31.705332, 36.448414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.563137, 31.368471, 36.242966>,  <32.523720, 31.166355, 36.119698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.563137, 31.368471, 36.242966>,  <32.628834, 31.705332, 36.448414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.563137, 31.368471, 36.242966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141301, 0.495238, -0.857190,
		0.976247, -0.213363, 0.037658,
		-0.164243, -0.842150, -0.513623,
		32.513863, 31.115826, 36.088879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.313759, 31.469666, 36.100182>,  <32.628834, 31.705332, 36.448414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.313759, 31.469666, 36.100182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.008255, 31.296200, 35.908932>,  <32.824951, 31.192122, 35.794182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.008255, 31.296200, 35.908932>,  <33.313759, 31.469666, 36.100182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.008255, 31.296200, 35.908932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314358, 0.397054, -0.862280,
		0.563783, -0.808878, -0.166928,
		-0.763759, -0.433664, -0.478130,
		32.779125, 31.166101, 35.765491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415733, 30.709986, 36.429234>,  <33.313759, 31.469666, 36.100182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415733, 30.709986, 36.429234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.807838, 30.691351, 36.352379>,  <34.043102, 30.680170, 36.306267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.807838, 30.691351, 36.352379>,  <33.415733, 30.709986, 36.429234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807838, 30.691351, 36.352379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176230, -0.234613, 0.955981,
		-0.089615, -0.970972, -0.221772,
		0.980261, -0.046587, -0.192139,
		34.101917, 30.677374, 36.294739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.725151, 30.078251, 36.697754>,  <33.415733, 30.709986, 36.429234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.725151, 30.078251, 36.697754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.013680, 30.355244, 36.692642>,  <34.186798, 30.521439, 36.689575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.013680, 30.355244, 36.692642>,  <33.725151, 30.078251, 36.697754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.013680, 30.355244, 36.692642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280385, -0.275088, 0.919625,
		0.633307, -0.666931, -0.392589,
		0.721323, 0.692481, -0.012782,
		34.230076, 30.562988, 36.688808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299259, 29.676687, 36.861813>,  <33.725151, 30.078251, 36.697754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.299259, 29.676687, 36.861813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343582, 30.067858, 36.932671>,  <34.370174, 30.302561, 36.975185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343582, 30.067858, 36.932671>,  <34.299259, 29.676687, 36.861813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.343582, 30.067858, 36.932671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265884, -0.200911, 0.942836,
		0.957616, -0.057372, -0.282277,
		0.110805, 0.977928, 0.177142,
		34.376823, 30.361237, 36.985813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951660, 29.704363, 37.177490>,  <34.299259, 29.676687, 36.861813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.951660, 29.704363, 37.177490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.830235, 30.075855, 37.262634>,  <34.757378, 30.298750, 37.313721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.830235, 30.075855, 37.262634>,  <34.951660, 29.704363, 37.177490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.830235, 30.075855, 37.262634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300185, -0.118799, 0.946454,
		0.904289, 0.351206, -0.242728,
		-0.303564, 0.928731, 0.212856,
		34.739166, 30.354475, 37.326492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562733, 30.040390, 37.360573>,  <34.951660, 29.704363, 37.177490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562733, 30.040390, 37.360573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.223518, 30.183939, 37.516548>,  <35.019989, 30.270069, 37.610134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.223518, 30.183939, 37.516548>,  <35.562733, 30.040390, 37.360573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223518, 30.183939, 37.516548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447101, 0.089491, 0.889995,
		0.284500, 0.929086, -0.236344,
		-0.848033, 0.358874, 0.389935,
		34.969109, 30.291601, 37.633530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749897, 30.517832, 37.837429>,  <35.562733, 30.040390, 37.360573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749897, 30.517832, 37.837429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.381100, 30.421089, 37.958385>,  <35.159821, 30.363043, 38.030960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.381100, 30.421089, 37.958385>,  <35.749897, 30.517832, 37.837429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.381100, 30.421089, 37.958385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316497, -0.020805, 0.948365,
		-0.223077, 0.970089, 0.095729,
		-0.921990, -0.241856, 0.302389,
		35.104504, 30.348532, 38.049103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498886, 31.001287, 38.435513>,  <35.749897, 30.517832, 37.837429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498886, 31.001287, 38.435513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.282364, 30.664997, 38.440781>,  <35.152451, 30.463223, 38.443943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.282364, 30.664997, 38.440781>,  <35.498886, 31.001287, 38.435513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.282364, 30.664997, 38.440781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247583, -0.144393, 0.958047,
		-0.803552, 0.521854, 0.286309,
		-0.541301, -0.840725, 0.013175,
		35.119972, 30.412779, 38.444733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.125492, 31.045691, 39.048199>,  <35.498886, 31.001287, 38.435513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.125492, 31.045691, 39.048199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.078686, 30.655882, 38.971657>,  <35.050602, 30.421997, 38.925732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.078686, 30.655882, 38.971657>,  <35.125492, 31.045691, 39.048199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078686, 30.655882, 38.971657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069966, -0.200287, 0.977235,
		-0.990662, 0.100967, 0.091621,
		-0.117020, -0.974521, -0.191353,
		35.043579, 30.363525, 38.914249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702606, 30.841412, 39.587170>,  <35.125492, 31.045691, 39.048199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.702606, 30.841412, 39.587170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.868420, 30.507952, 39.441189>,  <34.967907, 30.307875, 39.353600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.868420, 30.507952, 39.441189>,  <34.702606, 30.841412, 39.587170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.868420, 30.507952, 39.441189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107288, -0.353461, 0.929276,
		-0.903687, -0.424372, -0.057081,
		0.414535, -0.833651, -0.364948,
		34.992779, 30.257856, 39.331703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490631, 30.339598, 39.919960>,  <34.702606, 30.841412, 39.587170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.490631, 30.339598, 39.919960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803047, 30.134212, 39.777786>,  <34.990498, 30.010981, 39.692482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803047, 30.134212, 39.777786>,  <34.490631, 30.339598, 39.919960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803047, 30.134212, 39.777786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100977, -0.457839, 0.883282,
		-0.616267, -0.725767, -0.305741,
		0.781037, -0.513465, -0.355437,
		35.037357, 29.980173, 39.671154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357956, 29.663038, 40.006618>,  <34.490631, 30.339598, 39.919960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357956, 29.663038, 40.006618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756824, 29.692005, 40.014645>,  <34.996147, 29.709385, 40.019463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756824, 29.692005, 40.014645>,  <34.357956, 29.663038, 40.006618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756824, 29.692005, 40.014645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019008, -0.501452, 0.864977,
		0.072703, -0.862149, -0.501411,
		0.997173, 0.072417, 0.020069,
		35.055977, 29.713730, 40.020664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622532, 29.048597, 40.339581>,  <34.357956, 29.663038, 40.006618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.622532, 29.048597, 40.339581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.960091, 29.262468, 40.357281>,  <35.162624, 29.390791, 40.367901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.960091, 29.262468, 40.357281>,  <34.622532, 29.048597, 40.339581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960091, 29.262468, 40.357281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249754, -0.464504, 0.849623,
		0.474830, -0.705942, -0.525531,
		0.843895, 0.534680, 0.044249,
		35.213261, 29.422873, 40.370556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248390, 28.565237, 40.339916>,  <34.622532, 29.048597, 40.339581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248390, 28.565237, 40.339916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.305958, 28.913300, 40.528435>,  <35.340500, 29.122137, 40.641544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.305958, 28.913300, 40.528435>,  <35.248390, 28.565237, 40.339916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.305958, 28.913300, 40.528435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142687, -0.489522, 0.860238,
		0.979248, -0.056559, -0.194612,
		0.143921, 0.870155, 0.471293,
		35.349133, 29.174347, 40.669823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608269, 28.362547, 40.896648>,  <35.248390, 28.565237, 40.339916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608269, 28.362547, 40.896648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.540718, 28.744385, 40.994812>,  <35.500187, 28.973488, 41.053711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.540718, 28.744385, 40.994812>,  <35.608269, 28.362547, 40.896648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.540718, 28.744385, 40.994812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132205, -0.268676, 0.954115,
		0.976730, 0.128686, 0.171576,
		-0.168880, 0.954596, 0.245411,
		35.490055, 29.030764, 41.068436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081936, 28.614077, 41.572971>,  <35.608269, 28.362547, 40.896648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.081936, 28.614077, 41.572971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.767277, 28.860933, 41.565769>,  <35.578480, 29.009047, 41.561447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.767277, 28.860933, 41.565769>,  <36.081936, 28.614077, 41.572971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.767277, 28.860933, 41.565769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132726, -0.140552, 0.981137,
		0.602968, 0.774198, 0.192476,
		-0.786647, 0.617141, -0.018008,
		35.531284, 29.046076, 41.560368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233849, 29.180620, 41.972729>,  <36.081936, 28.614077, 41.572971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233849, 29.180620, 41.972729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.835529, 29.187500, 41.936768>,  <35.596539, 29.191628, 41.915192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.835529, 29.187500, 41.936768>,  <36.233849, 29.180620, 41.972729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.835529, 29.187500, 41.936768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090941, -0.074293, 0.993081,
		0.010402, 0.997088, 0.075545,
		-0.995802, 0.017201, -0.089903,
		35.536789, 29.192659, 41.909798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943062, 29.532967, 42.572300>,  <36.233849, 29.180620, 41.972729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.943062, 29.532967, 42.572300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.658833, 29.276190, 42.457058>,  <35.488297, 29.122124, 42.387913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.658833, 29.276190, 42.457058>,  <35.943062, 29.532967, 42.572300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658833, 29.276190, 42.457058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158295, -0.253111, 0.954399,
		-0.685590, 0.723772, 0.078237,
		-0.710570, -0.641942, -0.288100,
		35.445663, 29.083607, 42.370628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434361, 29.665859, 43.076557>,  <35.943062, 29.532967, 42.572300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.434361, 29.665859, 43.076557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.337971, 29.317221, 42.905796>,  <35.280136, 29.108038, 42.803337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.337971, 29.317221, 42.905796>,  <35.434361, 29.665859, 43.076557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337971, 29.317221, 42.905796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405374, -0.309271, 0.860246,
		-0.881818, 0.380356, -0.278796,
		-0.240976, -0.871597, -0.426907,
		35.265678, 29.055742, 42.777725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789536, 29.461815, 43.402355>,  <35.434361, 29.665859, 43.076557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.789536, 29.461815, 43.402355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896214, 29.134745, 43.198284>,  <34.960220, 28.938501, 43.075844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896214, 29.134745, 43.198284>,  <34.789536, 29.461815, 43.402355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.896214, 29.134745, 43.198284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444302, -0.574050, 0.687795,
		-0.855261, 0.043242, -0.516391,
		0.266693, -0.817678, -0.510175,
		34.976223, 28.889441, 43.045231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149300, 29.106243, 43.246300>,  <34.789536, 29.461815, 43.402355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.149300, 29.106243, 43.246300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.451313, 28.844009, 43.250763>,  <34.632523, 28.686668, 43.253441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.451313, 28.844009, 43.250763>,  <34.149300, 29.106243, 43.246300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.451313, 28.844009, 43.250763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384740, -0.429193, 0.817171,
		-0.530937, -0.621289, -0.576287,
		0.755037, -0.655587, 0.011160,
		34.677826, 28.647333, 43.254112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.905094, 28.417828, 43.414623>,  <34.149300, 29.106243, 43.246300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.905094, 28.417828, 43.414623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282589, 28.419558, 43.546894>,  <34.509087, 28.420595, 43.626259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282589, 28.419558, 43.546894>,  <33.905094, 28.417828, 43.414623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282589, 28.419558, 43.546894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314904, -0.293655, 0.902553,
		0.101009, -0.955902, -0.275770,
		0.943734, 0.004325, 0.330679,
		34.565708, 28.420855, 43.646099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.983025, 27.697624, 43.735443>,  <33.905094, 28.417828, 43.414623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.983025, 27.697624, 43.735443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.263702, 27.965521, 43.832664>,  <34.432110, 28.126259, 43.890999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.263702, 27.965521, 43.832664>,  <33.983025, 27.697624, 43.735443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.263702, 27.965521, 43.832664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267054, -0.069037, 0.961205,
		0.660538, -0.739379, 0.130414,
		0.701692, 0.669740, 0.243056,
		34.474209, 28.166443, 43.905582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345074, 27.410885, 44.316376>,  <33.983025, 27.697624, 43.735443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345074, 27.410885, 44.316376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.361958, 27.810398, 44.306183>,  <34.372089, 28.050106, 44.300068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.361958, 27.810398, 44.306183>,  <34.345074, 27.410885, 44.316376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.361958, 27.810398, 44.306183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378988, 0.039608, 0.924554,
		0.924439, -0.029370, 0.380199,
		0.042213, 0.998784, -0.025484,
		34.374622, 28.110033, 44.298538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789864, 27.550913, 44.934425>,  <34.345074, 27.410885, 44.316376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.789864, 27.550913, 44.934425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.629883, 27.912651, 44.874821>,  <34.533894, 28.129694, 44.839058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.629883, 27.912651, 44.874821>,  <34.789864, 27.550913, 44.934425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.629883, 27.912651, 44.874821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336842, 0.006168, 0.941541,
		0.852396, 0.426760, 0.302154,
		-0.399949, 0.904344, -0.149008,
		34.509899, 28.183954, 44.830120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785091, 27.804399, 45.564308>,  <34.789864, 27.550913, 44.934425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.785091, 27.804399, 45.564308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.567699, 28.088215, 45.384895>,  <34.437263, 28.258505, 45.277248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.567699, 28.088215, 45.384895>,  <34.785091, 27.804399, 45.564308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567699, 28.088215, 45.384895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489704, 0.165987, 0.855943,
		0.681777, 0.684836, 0.257254,
		-0.543480, 0.709541, -0.448533,
		34.404655, 28.301077, 45.250336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837185, 28.494827, 45.928661>,  <34.785091, 27.804399, 45.564308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.837185, 28.494827, 45.928661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488750, 28.473467, 45.733372>,  <34.279690, 28.460651, 45.616199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488750, 28.473467, 45.733372>,  <34.837185, 28.494827, 45.928661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.488750, 28.473467, 45.733372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490571, 0.142074, 0.859741,
		0.023453, 0.988414, -0.149955,
		-0.871086, -0.053400, -0.488219,
		34.227425, 28.457447, 45.586906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.462475, 29.187870, 45.909496>,  <34.837185, 28.494827, 45.928661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.462475, 29.187870, 45.909496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206116, 28.881832, 45.884583>,  <34.052299, 28.698210, 45.869633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206116, 28.881832, 45.884583>,  <34.462475, 29.187870, 45.909496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206116, 28.881832, 45.884583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462654, 0.320252, 0.826674,
		-0.612537, 0.558631, -0.559223,
		-0.640898, -0.765095, -0.062287,
		34.013847, 28.652304, 45.865898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.790833, 29.392231, 46.140186>,  <34.462475, 29.187870, 45.909496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.790833, 29.392231, 46.140186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.751225, 28.994665, 46.159477>,  <33.727459, 28.756124, 46.171051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.751225, 28.994665, 46.159477>,  <33.790833, 29.392231, 46.140186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751225, 28.994665, 46.159477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652863, 0.101466, 0.750650,
		-0.750976, 0.042847, -0.658938,
		-0.099023, -0.993916, 0.048225,
		33.721519, 28.696491, 46.173946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.155308, 29.328796, 46.503956>,  <33.790833, 29.392231, 46.140186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.155308, 29.328796, 46.503956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337986, 28.974754, 46.539757>,  <33.447594, 28.762329, 46.561237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337986, 28.974754, 46.539757>,  <33.155308, 29.328796, 46.503956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337986, 28.974754, 46.539757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435561, -0.134747, 0.890017,
		-0.775701, -0.445452, -0.447057,
		0.456700, -0.885107, 0.089498,
		33.474995, 28.709223, 46.566605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.578964, 28.982969, 46.615658>,  <33.155308, 29.328796, 46.503956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.578964, 28.982969, 46.615658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.888393, 28.759455, 46.735218>,  <33.074051, 28.625345, 46.806953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.888393, 28.759455, 46.735218>,  <32.578964, 28.982969, 46.615658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.888393, 28.759455, 46.735218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437674, -0.130003, 0.889686,
		-0.458288, -0.819057, -0.345134,
		0.773572, -0.558788, 0.298902,
		33.120464, 28.591818, 46.824890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.297394, 28.534449, 47.165524>,  <32.578964, 28.982969, 46.615658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.297394, 28.534449, 47.165524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.692455, 28.517071, 47.225719>,  <32.929493, 28.506643, 47.261837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.692455, 28.517071, 47.225719>,  <32.297394, 28.534449, 47.165524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.692455, 28.517071, 47.225719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152969, -0.060743, 0.986363,
		-0.033696, -0.997208, -0.066637,
		0.987656, -0.043430, 0.150495,
		32.988750, 28.504038, 47.270866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.459068, 27.846897, 47.588398>,  <32.297394, 28.534449, 47.165524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.459068, 27.846897, 47.588398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760883, 28.106415, 47.627869>,  <32.941971, 28.262125, 47.651550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760883, 28.106415, 47.627869>,  <32.459068, 27.846897, 47.588398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760883, 28.106415, 47.627869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120812, -0.010472, 0.992620,
		0.645040, -0.760891, 0.070481,
		0.754538, 0.648795, 0.098680,
		32.987244, 28.301054, 47.657471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.804871, 27.562353, 48.238205>,  <32.459068, 27.846897, 47.588398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.804871, 27.562353, 48.238205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.896137, 27.946840, 48.176235>,  <32.950897, 28.177532, 48.139053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.896137, 27.946840, 48.176235>,  <32.804871, 27.562353, 48.238205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.896137, 27.946840, 48.176235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099029, 0.181212, 0.978445,
		0.968574, -0.207902, 0.136535,
		0.228163, 0.961218, -0.154929,
		32.964584, 28.235205, 48.129757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416206, 27.646677, 48.480927>,  <32.804871, 27.562353, 48.238205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416206, 27.646677, 48.480927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.235279, 28.001799, 48.514885>,  <33.126724, 28.214872, 48.535259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.235279, 28.001799, 48.514885>,  <33.416206, 27.646677, 48.480927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.235279, 28.001799, 48.514885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033476, -0.078226, 0.996373,
		0.891228, 0.453521, 0.005663,
		-0.452319, 0.887806, 0.084900,
		33.099583, 28.268141, 48.540356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.608871, 27.805403, 49.131641>,  <33.416206, 27.646677, 48.480927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.608871, 27.805403, 49.131641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.352840, 28.096888, 49.034252>,  <33.199223, 28.271778, 48.975819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.352840, 28.096888, 49.034252>,  <33.608871, 27.805403, 49.131641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352840, 28.096888, 49.034252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139499, 0.201406, 0.969524,
		0.755540, 0.654535, -0.027261,
		-0.640077, 0.728711, -0.243477,
		33.160816, 28.315500, 48.961208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.797943, 28.329210, 49.527397>,  <33.608871, 27.805403, 49.131641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.797943, 28.329210, 49.527397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.424068, 28.446260, 49.446671>,  <33.199745, 28.516491, 49.398235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.424068, 28.446260, 49.446671>,  <33.797943, 28.329210, 49.527397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.424068, 28.446260, 49.446671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153885, 0.178688, 0.971797,
		0.320434, 0.939384, -0.121987,
		-0.934688, 0.292625, -0.201814,
		33.143661, 28.534048, 49.386127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.722801, 28.939074, 49.938511>,  <33.797943, 28.329210, 49.527397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.722801, 28.939074, 49.938511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.351738, 28.808332, 49.866272>,  <33.129101, 28.729887, 49.822929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.351738, 28.808332, 49.866272>,  <33.722801, 28.939074, 49.938511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.351738, 28.808332, 49.866272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252936, 0.194188, 0.947794,
		-0.274720, 0.924910, -0.262813,
		-0.927660, -0.326853, -0.180596,
		33.073441, 28.710276, 49.812092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.259285, 29.431961, 50.264172>,  <33.722801, 28.939074, 49.938511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.259285, 29.431961, 50.264172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.097118, 29.070379, 50.209759>,  <32.999821, 28.853430, 50.177109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.097118, 29.070379, 50.209759>,  <33.259285, 29.431961, 50.264172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097118, 29.070379, 50.209759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429942, 0.057227, 0.901041,
		-0.806716, 0.423780, -0.411849,
		-0.405413, -0.903955, -0.136035,
		32.975494, 28.799192, 50.168949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.402973, 29.428026, 50.176880>,  <33.259285, 29.431961, 50.264172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.402973, 29.428026, 50.176880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.570171, 29.111198, 50.354828>,  <32.670490, 28.921103, 50.461597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.570171, 29.111198, 50.354828>,  <32.402973, 29.428026, 50.176880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570171, 29.111198, 50.354828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603754, 0.123700, 0.787515,
		-0.678796, -0.597767, -0.426509,
		0.417991, -0.792068, 0.444871,
		32.695568, 28.873577, 50.488289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.765781, 30.142813, 50.152412>,  <32.402973, 29.428026, 50.176880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.765781, 30.142813, 50.152412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.896667, 30.519239, 50.186634>,  <32.975201, 30.745096, 50.207165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.896667, 30.519239, 50.186634>,  <32.765781, 30.142813, 50.152412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.896667, 30.519239, 50.186634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292609, 0.186995, -0.937770,
		-0.898503, 0.281823, 0.336553,
		0.327219, 0.941068, 0.085552,
		32.994835, 30.801559, 50.212299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.297325, 30.624126, 49.765739>,  <32.765781, 30.142813, 50.152412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.297325, 30.624126, 49.765739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654675, 30.803667, 49.773949>,  <32.869083, 30.911392, 49.778873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654675, 30.803667, 49.773949>,  <32.297325, 30.624126, 49.765739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.654675, 30.803667, 49.773949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118617, 0.279649, -0.952747,
		-0.433381, 0.848722, 0.303071,
		0.893371, 0.448851, 0.020522,
		32.922688, 30.938322, 49.780106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.245464, 31.295691, 49.413712>,  <32.297325, 30.624126, 49.765739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.245464, 31.295691, 49.413712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.636639, 31.212753, 49.403580>,  <32.871346, 31.162991, 49.397499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.636639, 31.212753, 49.403580>,  <32.245464, 31.295691, 49.413712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.636639, 31.212753, 49.403580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055000, 0.372569, -0.926373,
		0.201513, 0.904545, 0.375754,
		0.977940, -0.207343, -0.025328,
		32.930019, 31.150551, 49.395981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.552345, 31.786875, 49.069569>,  <32.245464, 31.295691, 49.413712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.552345, 31.786875, 49.069569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.890118, 31.572615, 49.068089>,  <33.092781, 31.444059, 49.067200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.890118, 31.572615, 49.068089>,  <32.552345, 31.786875, 49.069569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.890118, 31.572615, 49.068089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210415, 0.338052, -0.917304,
		0.492605, 0.773822, 0.398170,
		0.844433, -0.535649, -0.003703,
		33.143448, 31.411921, 49.066978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.169479, 32.192173, 48.830498>,  <32.552345, 31.786875, 49.069569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.169479, 32.192173, 48.830498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.249504, 31.806223, 48.762386>,  <33.297520, 31.574654, 48.721519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.249504, 31.806223, 48.762386>,  <33.169479, 32.192173, 48.830498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249504, 31.806223, 48.762386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327085, 0.229592, -0.916681,
		0.923575, 0.127698, 0.361528,
		0.200062, -0.964873, -0.170277,
		33.309521, 31.516762, 48.711304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855663, 32.079803, 48.595810>,  <33.169479, 32.192173, 48.830498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855663, 32.079803, 48.595810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.656406, 31.750916, 48.485672>,  <33.536854, 31.553583, 48.419590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.656406, 31.750916, 48.485672>,  <33.855663, 32.079803, 48.595810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.656406, 31.750916, 48.485672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152018, 0.229817, -0.961288,
		0.853666, -0.520715, 0.010511,
		-0.498141, -0.822217, -0.275345,
		33.506966, 31.504250, 48.403069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.215839, 31.881453, 48.040565>,  <33.855663, 32.079803, 48.595810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.215839, 31.881453, 48.040565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.897133, 31.640892, 48.016960>,  <33.705910, 31.496555, 48.002796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.897133, 31.640892, 48.016960>,  <34.215839, 31.881453, 48.040565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.897133, 31.640892, 48.016960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107352, -0.044761, -0.993213,
		0.594676, -0.797693, 0.100226,
		-0.796766, -0.601400, -0.059016,
		33.658104, 31.460472, 47.999256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.413223, 31.335533, 47.602028>,  <34.215839, 31.881453, 48.040565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.413223, 31.335533, 47.602028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.013741, 31.337410, 47.581783>,  <33.774052, 31.338535, 47.569637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.013741, 31.337410, 47.581783>,  <34.413223, 31.335533, 47.602028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.013741, 31.337410, 47.581783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049951, -0.093860, -0.994331,
		-0.009411, -0.995574, 0.093504,
		-0.998708, 0.004687, -0.050613,
		33.714127, 31.338818, 47.566601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192505, 30.786243, 47.213402>,  <34.413223, 31.335533, 47.602028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.192505, 30.786243, 47.213402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.877163, 31.031763, 47.196648>,  <33.687958, 31.179075, 47.186596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.877163, 31.031763, 47.196648>,  <34.192505, 30.786243, 47.213402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.877163, 31.031763, 47.196648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041656, -0.014670, -0.999024,
		-0.613814, -0.789327, -0.014004,
		-0.788351, 0.613798, -0.041885,
		33.640659, 31.215902, 47.184082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618771, 30.548569, 46.718277>,  <34.192505, 30.786243, 47.213402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618771, 30.548569, 46.718277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.571835, 30.945112, 46.741734>,  <33.543671, 31.183039, 46.755810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.571835, 30.945112, 46.741734>,  <33.618771, 30.548569, 46.718277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.571835, 30.945112, 46.741734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128115, 0.073669, -0.989019,
		-0.984793, -0.108541, -0.135652,
		-0.117343, 0.991358, 0.058643,
		33.536633, 31.242519, 46.759327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.201591, 30.754936, 46.152897>,  <33.618771, 30.548569, 46.718277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.201591, 30.754936, 46.152897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.376705, 31.099453, 46.256065>,  <33.481773, 31.306164, 46.317966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.376705, 31.099453, 46.256065>,  <33.201591, 30.754936, 46.152897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.376705, 31.099453, 46.256065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184929, 0.194478, -0.963317,
		-0.879857, 0.469419, -0.074139,
		0.437781, 0.861292, 0.257922,
		33.508038, 31.357841, 46.333443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.825325, 31.341206, 46.008297>,  <33.201591, 30.754936, 46.152897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.825325, 31.341206, 46.008297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200851, 31.478848, 46.002434>,  <33.426167, 31.561432, 45.998917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200851, 31.478848, 46.002434>,  <32.825325, 31.341206, 46.008297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.200851, 31.478848, 46.002434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051324, 0.097701, -0.993891,
		-0.340571, 0.933834, 0.109384,
		0.938817, 0.344105, -0.014654,
		33.482498, 31.582079, 45.998039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.899242, 32.021324, 45.611420>,  <32.825325, 31.341206, 46.008297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.899242, 32.021324, 45.611420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254208, 31.837940, 45.630630>,  <33.467186, 31.727909, 45.642159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254208, 31.837940, 45.630630>,  <32.899242, 32.021324, 45.611420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254208, 31.837940, 45.630630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183671, 0.256104, -0.949039,
		0.422799, 0.851013, 0.311477,
		0.887416, -0.458462, 0.048026,
		33.520432, 31.700401, 45.645039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.327286, 32.453213, 45.293453>,  <32.899242, 32.021324, 45.611420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.327286, 32.453213, 45.293453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539665, 32.114254, 45.294479>,  <33.667095, 31.910879, 45.295097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539665, 32.114254, 45.294479>,  <33.327286, 32.453213, 45.293453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539665, 32.114254, 45.294479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134869, 0.081513, -0.987505,
		0.836600, 0.524664, 0.157567,
		0.530952, -0.847398, 0.002567,
		33.698952, 31.860035, 45.295250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787128, 32.585503, 44.808022>,  <33.327286, 32.453213, 45.293453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787128, 32.585503, 44.808022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.826225, 32.188248, 44.833683>,  <33.849686, 31.949894, 44.849079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.826225, 32.188248, 44.833683>,  <33.787128, 32.585503, 44.808022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826225, 32.188248, 44.833683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337292, -0.027588, -0.940996,
		0.936312, 0.113617, 0.332282,
		0.097746, -0.993142, 0.064152,
		33.855549, 31.890305, 44.852928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473930, 32.429634, 44.613441>,  <33.787128, 32.585503, 44.808022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.473930, 32.429634, 44.613441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.270962, 32.086998, 44.575966>,  <34.149181, 31.881416, 44.553482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.270962, 32.086998, 44.575966>,  <34.473930, 32.429634, 44.613441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.270962, 32.086998, 44.575966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347420, -0.103876, -0.931938,
		0.788558, -0.505433, 0.350305,
		-0.507420, -0.856591, -0.093686,
		34.118736, 31.830021, 44.547859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.954266, 31.994720, 44.492382>,  <34.473930, 32.429634, 44.613441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.954266, 31.994720, 44.492382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.620628, 31.828888, 44.346828>,  <34.420444, 31.729389, 44.259495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.620628, 31.828888, 44.346828>,  <34.954266, 31.994720, 44.492382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.620628, 31.828888, 44.346828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470650, -0.190796, -0.861444,
		0.287711, -0.889786, 0.354265,
		-0.834093, -0.414582, -0.363883,
		34.370399, 31.704514, 44.237663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.188095, 31.454506, 44.115589>,  <34.954266, 31.994720, 44.492382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.188095, 31.454506, 44.115589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.824352, 31.524300, 43.964527>,  <34.606106, 31.566175, 43.873890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.824352, 31.524300, 43.964527>,  <35.188095, 31.454506, 44.115589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824352, 31.524300, 43.964527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377298, -0.036540, -0.925371,
		-0.175264, -0.983981, -0.032606,
		-0.909356, 0.174486, -0.377658,
		34.551544, 31.576645, 43.851231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042789, 30.988451, 43.726120>,  <35.188095, 31.454506, 44.115589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042789, 30.988451, 43.726120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.810467, 31.278728, 43.578590>,  <34.671074, 31.452894, 43.490070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.810467, 31.278728, 43.578590>,  <35.042789, 30.988451, 43.726120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.810467, 31.278728, 43.578590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456414, -0.084863, -0.885711,
		-0.674054, -0.682765, -0.281927,
		-0.580808, 0.725693, -0.368826,
		34.636223, 31.496437, 43.467941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798576, 30.778141, 43.032581>,  <35.042789, 30.988451, 43.726120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.798576, 30.778141, 43.032581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.760178, 31.175848, 43.051407>,  <34.737137, 31.414473, 43.062702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.760178, 31.175848, 43.051407>,  <34.798576, 30.778141, 43.032581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760178, 31.175848, 43.051407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492327, 0.088520, -0.865897,
		-0.865100, -0.059958, -0.498003,
		-0.096001, 0.994268, 0.047059,
		34.731377, 31.474129, 43.065525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.478065, 30.936890, 42.368755>,  <34.798576, 30.778141, 43.032581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.478065, 30.936890, 42.368755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.645996, 31.266350, 42.521252>,  <34.746754, 31.464025, 42.612751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.645996, 31.266350, 42.521252>,  <34.478065, 30.936890, 42.368755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.645996, 31.266350, 42.521252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713224, -0.039620, -0.699816,
		-0.561298, 0.565714, -0.604080,
		0.419829, 0.823649, 0.381242,
		34.771946, 31.513445, 42.635624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.352066, 31.464169, 41.893665>,  <34.478065, 30.936890, 42.368755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.352066, 31.464169, 41.893665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.653553, 31.621843, 42.104008>,  <34.834446, 31.716448, 42.230213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.653553, 31.621843, 42.104008>,  <34.352066, 31.464169, 41.893665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.653553, 31.621843, 42.104008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557256, 0.040846, -0.829335,
		-0.348392, 0.918122, -0.188876,
		0.753717, 0.394186, 0.525860,
		34.879669, 31.740099, 42.261765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.549282, 31.983828, 41.569672>,  <34.352066, 31.464169, 41.893665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.549282, 31.983828, 41.569672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.889168, 31.930519, 41.773716>,  <35.093102, 31.898535, 41.896145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.889168, 31.930519, 41.773716>,  <34.549282, 31.983828, 41.569672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.889168, 31.930519, 41.773716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526136, 0.151858, -0.836732,
		0.034047, 0.979376, 0.199156,
		0.849719, -0.133271, 0.510115,
		35.144085, 31.890537, 41.926750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.039890, 32.477627, 41.302544>,  <34.549282, 31.983828, 41.569672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.039890, 32.477627, 41.302544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.280548, 32.208130, 41.474167>,  <35.424942, 32.046432, 41.577141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.280548, 32.208130, 41.474167>,  <35.039890, 32.477627, 41.302544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.280548, 32.208130, 41.474167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648213, 0.097954, -0.755133,
		0.466737, 0.732445, 0.495662,
		0.601645, -0.673743, 0.429061,
		35.461040, 32.006008, 41.602886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796021, 32.793972, 41.383385>,  <35.039890, 32.477627, 41.302544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796021, 32.793972, 41.383385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.850399, 32.397945, 41.369003>,  <35.883026, 32.160332, 41.360374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.850399, 32.397945, 41.369003>,  <35.796021, 32.793972, 41.383385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.850399, 32.397945, 41.369003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688064, 0.120465, -0.715581,
		0.712802, 0.072538, 0.697604,
		0.135944, -0.990064, -0.035957,
		35.891182, 32.100925, 41.358215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510021, 32.714355, 41.446774>,  <35.796021, 32.793972, 41.383385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510021, 32.714355, 41.446774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.378677, 32.379009, 41.272724>,  <36.299870, 32.177803, 41.168297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.378677, 32.379009, 41.272724>,  <36.510021, 32.714355, 41.446774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378677, 32.379009, 41.272724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673025, 0.115552, -0.730538,
		0.662733, -0.532727, 0.526295,
		-0.328363, -0.838361, -0.435119,
		36.280167, 32.127502, 41.142189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119652, 32.308819, 41.343754>,  <36.510021, 32.714355, 41.446774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.119652, 32.308819, 41.343754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.841743, 32.183773, 41.084656>,  <36.674999, 32.108746, 40.929195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.841743, 32.183773, 41.084656>,  <37.119652, 32.308819, 41.343754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.841743, 32.183773, 41.084656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642142, 0.136048, -0.754417,
		0.323964, -0.940088, 0.106220,
		-0.694767, -0.312612, -0.647744,
		36.633312, 32.089989, 40.890331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422409, 31.970686, 40.773674>,  <37.119652, 32.308819, 41.343754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422409, 31.970686, 40.773674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063583, 32.031971, 40.607880>,  <36.848289, 32.068741, 40.508404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063583, 32.031971, 40.607880>,  <37.422409, 31.970686, 40.773674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063583, 32.031971, 40.607880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425560, 0.046827, -0.903718,
		-0.119051, -0.987083, -0.107208,
		-0.897065, 0.153212, -0.414488,
		36.794464, 32.077934, 40.483532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.458141, 31.571142, 40.143085>,  <37.422409, 31.970686, 40.773674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.458141, 31.571142, 40.143085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.175720, 31.854162, 40.131359>,  <37.006268, 32.023975, 40.124325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.175720, 31.854162, 40.131359>,  <37.458141, 31.571142, 40.143085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175720, 31.854162, 40.131359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335090, 0.297337, -0.894039,
		-0.623861, -0.641063, -0.447029,
		-0.706053, 0.707551, -0.029317,
		36.963905, 32.066429, 40.122562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147812, 31.540287, 39.431999>,  <37.458141, 31.571142, 40.143085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147812, 31.540287, 39.431999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.075714, 31.896189, 39.599735>,  <37.032455, 32.109730, 39.700378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.075714, 31.896189, 39.599735>,  <37.147812, 31.540287, 39.431999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075714, 31.896189, 39.599735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339822, 0.456402, -0.822325,
		-0.923055, -0.005722, -0.384625,
		-0.180249, 0.889755, 0.419339,
		37.021641, 32.163116, 39.725536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.155216, 31.938103, 38.859447>,  <37.147812, 31.540287, 39.431999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.155216, 31.938103, 38.859447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.140377, 32.209007, 39.153370>,  <37.131474, 32.371552, 39.329723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.140377, 32.209007, 39.153370>,  <37.155216, 31.938103, 38.859447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140377, 32.209007, 39.153370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343230, 0.699214, -0.627131,
		-0.938518, 0.228943, -0.258395,
		-0.037096, 0.677263, 0.734806,
		37.129250, 32.412186, 39.373810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896736, 32.477921, 38.573082>,  <37.155216, 31.938103, 38.859447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.896736, 32.477921, 38.573082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078308, 32.643250, 38.888832>,  <37.187252, 32.742447, 39.078281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078308, 32.643250, 38.888832>,  <36.896736, 32.477921, 38.573082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078308, 32.643250, 38.888832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386108, 0.707175, -0.592304,
		-0.803039, 0.573647, 0.161420,
		0.453926, 0.413318, 0.789379,
		37.214485, 32.767246, 39.125645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731167, 33.161510, 38.532822>,  <36.896736, 32.477921, 38.573082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731167, 33.161510, 38.532822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063629, 33.148560, 38.754860>,  <37.263107, 33.140789, 38.888081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063629, 33.148560, 38.754860>,  <36.731167, 33.161510, 38.532822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063629, 33.148560, 38.754860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453316, 0.617563, -0.642744,
		-0.321996, 0.785854, 0.527969,
		0.831158, -0.032376, 0.555094,
		37.312977, 33.138847, 38.921387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025852, 33.847214, 38.683994>,  <36.731167, 33.161510, 38.532822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025852, 33.847214, 38.683994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.373310, 33.660801, 38.751247>,  <37.581787, 33.548954, 38.791599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.373310, 33.660801, 38.751247>,  <37.025852, 33.847214, 38.683994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373310, 33.660801, 38.751247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457253, 0.623491, -0.634175,
		0.190715, 0.627754, 0.754687,
		0.868647, -0.466030, 0.168133,
		37.633904, 33.520992, 38.801689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499847, 34.357082, 38.818523>,  <37.025852, 33.847214, 38.683994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499847, 34.357082, 38.818523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.685818, 34.028900, 38.685444>,  <37.797401, 33.831989, 38.605595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.685818, 34.028900, 38.685444>,  <37.499847, 34.357082, 38.818523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.685818, 34.028900, 38.685444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519673, 0.557135, -0.647719,
		0.716785, 0.128248, 0.685399,
		0.464929, -0.820459, -0.332699,
		37.825294, 33.782761, 38.585632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166798, 34.448898, 38.840733>,  <37.499847, 34.357082, 38.818523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.166798, 34.448898, 38.840733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.145706, 34.163223, 38.561546>,  <38.133049, 33.991817, 38.394035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.145706, 34.163223, 38.561546>,  <38.166798, 34.448898, 38.840733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145706, 34.163223, 38.561546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646825, 0.508075, -0.568750,
		0.760813, -0.481453, 0.435163,
		-0.052731, -0.714187, -0.697966,
		38.129887, 33.948967, 38.352158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753742, 34.583157, 38.496769>,  <38.166798, 34.448898, 38.840733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753742, 34.583157, 38.496769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.566978, 34.306248, 38.276680>,  <38.454918, 34.140102, 38.144627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.566978, 34.306248, 38.276680>,  <38.753742, 34.583157, 38.496769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.566978, 34.306248, 38.276680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476036, 0.327600, -0.816130,
		0.745241, -0.642987, 0.176588,
		-0.466911, -0.692276, -0.550226,
		38.426907, 34.098564, 38.111610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.226624, 34.182941, 38.239231>,  <38.753742, 34.583157, 38.496769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.226624, 34.182941, 38.239231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.913074, 34.177261, 37.990929>,  <38.724945, 34.173855, 37.841946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.913074, 34.177261, 37.990929>,  <39.226624, 34.182941, 38.239231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913074, 34.177261, 37.990929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597737, 0.253380, -0.760598,
		0.168084, -0.967263, -0.190133,
		-0.783874, -0.014195, -0.620758,
		38.677914, 34.173000, 37.804703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431168, 33.795078, 37.629852>,  <39.226624, 34.182941, 38.239231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.431168, 33.795078, 37.629852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.123314, 34.025272, 37.519226>,  <38.938602, 34.163387, 37.452850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.123314, 34.025272, 37.519226>,  <39.431168, 33.795078, 37.629852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123314, 34.025272, 37.519226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423430, 0.135824, -0.895689,
		-0.477888, -0.806457, -0.348210,
		-0.769630, 0.575481, -0.276570,
		38.892426, 34.197918, 37.436256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062943, 33.439758, 37.079971>,  <39.431168, 33.795078, 37.629852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.062943, 33.439758, 37.079971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.032330, 33.838154, 37.061390>,  <39.013962, 34.077190, 37.050243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.032330, 33.838154, 37.061390>,  <39.062943, 33.439758, 37.079971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.032330, 33.838154, 37.061390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326013, -0.019029, -0.945174,
		-0.942262, -0.087484, -0.323247,
		-0.076536, 0.995984, -0.046451,
		39.009369, 34.136948, 37.047455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739429, 33.674431, 36.469021>,  <39.062943, 33.439758, 37.079971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.739429, 33.674431, 36.469021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.950951, 33.991596, 36.590126>,  <39.077862, 34.181896, 36.662788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.950951, 33.991596, 36.590126>,  <38.739429, 33.674431, 36.469021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.950951, 33.991596, 36.590126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274094, 0.178067, -0.945074,
		-0.803270, 0.582740, -0.123170,
		0.528800, 0.792910, 0.302761,
		39.109592, 34.229469, 36.680954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623547, 34.295872, 35.965202>,  <38.739429, 33.674431, 36.469021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623547, 34.295872, 35.965202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.984932, 34.286560, 36.136414>,  <39.201763, 34.280975, 36.239140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.984932, 34.286560, 36.136414>,  <38.623547, 34.295872, 35.965202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984932, 34.286560, 36.136414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416088, 0.287674, -0.862621,
		-0.103054, 0.957445, 0.269589,
		0.903466, -0.023276, 0.428027,
		39.255970, 34.279575, 36.264820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963535, 34.915852, 35.939381>,  <38.623547, 34.295872, 35.965202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.963535, 34.915852, 35.939381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.273926, 34.665653, 35.971928>,  <39.460159, 34.515533, 35.991455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.273926, 34.665653, 35.971928>,  <38.963535, 34.915852, 35.939381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.273926, 34.665653, 35.971928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368424, 0.344751, -0.863372,
		0.511982, 0.699933, 0.497965,
		0.775976, -0.625493, 0.081366,
		39.506718, 34.478004, 35.996338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.603344, 35.210812, 36.034843>,  <38.963535, 34.915852, 35.939381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.603344, 35.210812, 36.034843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.596111, 34.873146, 35.820530>,  <39.591770, 34.670547, 35.691940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.596111, 34.873146, 35.820530>,  <39.603344, 35.210812, 36.034843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.596111, 34.873146, 35.820530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343958, 0.497916, -0.796098,
		0.938811, -0.198682, 0.281353,
		-0.018081, -0.844159, -0.535787,
		39.590687, 34.619900, 35.659794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.196274, 35.093510, 35.657127>,  <39.603344, 35.210812, 36.034843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.196274, 35.093510, 35.657127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.934875, 34.880520, 35.441936>,  <39.778038, 34.752728, 35.312820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.934875, 34.880520, 35.441936>,  <40.196274, 35.093510, 35.657127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.934875, 34.880520, 35.441936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356269, 0.410710, -0.839279,
		0.667847, -0.740127, -0.078691,
		-0.653493, -0.532475, -0.537976,
		39.738827, 34.720776, 35.280544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.473770, 34.478664, 35.368954>,  <40.196274, 35.093510, 35.657127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.473770, 34.478664, 35.368954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.176819, 34.633545, 35.150246>,  <39.998650, 34.726471, 35.019020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.176819, 34.633545, 35.150246>,  <40.473770, 34.478664, 35.368954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.176819, 34.633545, 35.150246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632921, 0.137625, -0.761886,
		-0.219753, -0.911667, -0.347236,
		-0.742375, 0.387199, -0.546769,
		39.954105, 34.749706, 34.986214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.223137, 34.785465, 35.364388>,  <40.473770, 34.478664, 35.368954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.223137, 34.785465, 35.364388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.622520, 34.800198, 35.347805>,  <41.862152, 34.809036, 35.337856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.622520, 34.800198, 35.347805>,  <41.223137, 34.785465, 35.364388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.622520, 34.800198, 35.347805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036526, 0.999301, 0.008028,
		0.041726, -0.006501, 0.999108,
		0.998461, 0.036829, -0.041460,
		41.922058, 34.811245, 35.335365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.353573, 35.313931, 35.785561>,  <41.223137, 34.785465, 35.364388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.353573, 35.313931, 35.785561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.684238, 35.285610, 35.562271>,  <41.882637, 35.268620, 35.428295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.684238, 35.285610, 35.562271>,  <41.353573, 35.313931, 35.785561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.684238, 35.285610, 35.562271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080632, 0.996719, -0.007007,
		0.556891, -0.039219, 0.829660,
		0.826663, -0.070799, -0.558226,
		41.932236, 35.264370, 35.394802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.011490, 35.714237, 36.108624>,  <41.353573, 35.313931, 35.785561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.011490, 35.714237, 36.108624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.069977, 35.679974, 35.714409>,  <42.105068, 35.659416, 35.477879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.069977, 35.679974, 35.714409>,  <42.011490, 35.714237, 36.108624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.069977, 35.679974, 35.714409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016092, 0.995906, -0.088951,
		0.989122, 0.028865, 0.144236,
		0.146213, -0.085662, -0.985537,
		42.113842, 35.654274, 35.418747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.389194, 36.258926, 36.026077>,  <42.011490, 35.714237, 36.108624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.389194, 36.258926, 36.026077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.291656, 36.159729, 35.651051>,  <42.233131, 36.100212, 35.426033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.291656, 36.159729, 35.651051>,  <42.389194, 36.258926, 36.026077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.291656, 36.159729, 35.651051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082632, 0.968550, -0.234698,
		0.966283, 0.020240, -0.256685,
		-0.243862, -0.247995, -0.937566,
		42.218502, 36.085331, 35.369781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.840157, 36.602188, 35.608601>,  <42.389194, 36.258926, 36.026077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.840157, 36.602188, 35.608601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.530304, 36.511002, 35.372643>,  <42.344391, 36.456291, 35.231068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.530304, 36.511002, 35.372643>,  <42.840157, 36.602188, 35.608601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.530304, 36.511002, 35.372643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054512, 0.953367, -0.296849,
		0.630055, -0.197794, -0.750938,
		-0.774635, -0.227966, -0.589892,
		42.297913, 36.442612, 35.195675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.000423, 37.063461, 34.956940>,  <42.840157, 36.602188, 35.608601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.000423, 37.063461, 34.956940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.611755, 36.969860, 34.943657>,  <42.378555, 36.913700, 34.935688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.611755, 36.969860, 34.943657>,  <43.000423, 37.063461, 34.956940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.611755, 36.969860, 34.943657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224345, 0.957370, -0.181966,
		0.074370, -0.169362, -0.982744,
		-0.971668, -0.234007, -0.033204,
		42.320255, 36.899658, 34.933697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.682899, 37.338093, 34.250500>,  <43.000423, 37.063461, 34.956940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.682899, 37.338093, 34.250500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.371346, 37.301434, 34.498672>,  <42.184414, 37.279438, 34.647575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.371346, 37.301434, 34.498672>,  <42.682899, 37.338093, 34.250500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.371346, 37.301434, 34.498672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313715, 0.913543, -0.258885,
		-0.543065, -0.396281, -0.740299,
		-0.778886, -0.091651, 0.620433,
		42.137680, 37.273937, 34.684803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.094608, 37.614651, 33.887360>,  <42.682899, 37.338093, 34.250500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.094608, 37.614651, 33.887360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.962845, 37.611317, 34.265018>,  <41.883789, 37.609318, 34.491615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.962845, 37.611317, 34.265018>,  <42.094608, 37.614651, 33.887360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.962845, 37.611317, 34.265018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338171, 0.934665, -0.109735,
		-0.881551, -0.355432, -0.310702,
		-0.329406, -0.008333, 0.944152,
		41.864021, 37.608818, 34.548264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.463947, 37.856621, 33.877449>,  <42.094608, 37.614651, 33.887360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.463947, 37.856621, 33.877449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.560589, 37.887680, 34.264355>,  <41.618572, 37.906315, 34.496498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.560589, 37.887680, 34.264355>,  <41.463947, 37.856621, 33.877449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.560589, 37.887680, 34.264355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378154, 0.925523, 0.020159,
		-0.893661, -0.370645, 0.252968,
		0.241599, 0.077646, 0.967265,
		41.633068, 37.910973, 34.554535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.957573, 38.202763, 34.312988>,  <41.463947, 37.856621, 33.877449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.957573, 38.202763, 34.312988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.260300, 38.247501, 34.570583>,  <41.441936, 38.274345, 34.725140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.260300, 38.247501, 34.570583>,  <40.957573, 38.202763, 34.312988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.260300, 38.247501, 34.570583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201288, 0.977250, 0.066826,
		-0.621858, -0.180202, 0.762115,
		0.756819, 0.111848, 0.643983,
		41.487347, 38.281055, 34.763779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.692352, 38.674992, 34.813988>,  <40.957573, 38.202763, 34.312988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.692352, 38.674992, 34.813988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.092190, 38.684155, 34.820808>,  <41.332092, 38.689651, 34.824902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.092190, 38.684155, 34.820808>,  <40.692352, 38.674992, 34.813988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.092190, 38.684155, 34.820808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023257, 0.999518, 0.020570,
		-0.016569, -0.020958, 0.999643,
		0.999592, 0.022908, 0.017048,
		41.392067, 38.691029, 34.825924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.819424, 39.196148, 35.207329>,  <40.692352, 38.674992, 34.813988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.819424, 39.196148, 35.207329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.156300, 39.163055, 34.994209>,  <41.358425, 39.143200, 34.866337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.156300, 39.163055, 34.994209>,  <40.819424, 39.196148, 35.207329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.156300, 39.163055, 34.994209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018871, 0.992075, -0.124221,
		0.538850, 0.094563, 0.837077,
		0.842190, -0.082733, -0.532795,
		41.408958, 39.138237, 34.834370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.228970, 39.738873, 35.465786>,  <40.819424, 39.196148, 35.207329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.228970, 39.738873, 35.465786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.351368, 39.643879, 35.097012>,  <41.424809, 39.586884, 34.875748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.351368, 39.643879, 35.097012>,  <41.228970, 39.738873, 35.465786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.351368, 39.643879, 35.097012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035164, 0.964908, -0.260223,
		0.951382, 0.112048, 0.286911,
		0.306000, -0.237483, -0.921936,
		41.443169, 39.572636, 34.820431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.762074, 40.165791, 35.314552>,  <41.228970, 39.738873, 35.465786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.762074, 40.165791, 35.314552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.664867, 40.030682, 34.950825>,  <41.606544, 39.949615, 34.732590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.664867, 40.030682, 34.950825>,  <41.762074, 40.165791, 35.314552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.664867, 40.030682, 34.950825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186684, 0.903606, -0.385545,
		0.951890, -0.263447, -0.156531,
		-0.243013, -0.337774, -0.909315,
		41.591965, 39.929348, 34.678032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.244274, 40.529926, 35.001518>,  <41.762074, 40.165791, 35.314552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.244274, 40.529926, 35.001518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.038868, 40.416122, 34.677700>,  <41.915627, 40.347839, 34.483410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.038868, 40.416122, 34.677700>,  <42.244274, 40.529926, 35.001518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.038868, 40.416122, 34.677700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279712, 0.836400, -0.471378,
		0.811212, -0.468498, -0.349922,
		-0.513514, -0.284510, -0.809541,
		41.884815, 40.330769, 34.434837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.762108, 40.650837, 34.381565>,  <42.244274, 40.529926, 35.001518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.762108, 40.650837, 34.381565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.400375, 40.601295, 34.218182>,  <42.183334, 40.571571, 34.120152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.400375, 40.601295, 34.218182>,  <42.762108, 40.650837, 34.381565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.400375, 40.601295, 34.218182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194550, 0.732176, -0.652739,
		0.379906, -0.669761, -0.638038,
		-0.904335, -0.123849, -0.408460,
		42.129074, 40.564140, 34.095642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.861111, 40.609390, 33.685120>,  <42.762108, 40.650837, 34.381565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.861111, 40.609390, 33.685120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.471737, 40.699554, 33.701164>,  <42.238113, 40.753654, 33.710793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.471737, 40.699554, 33.701164>,  <42.861111, 40.609390, 33.685120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.471737, 40.699554, 33.701164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136411, 0.711714, -0.689097,
		-0.183879, -0.665321, -0.723558,
		-0.973438, 0.225412, 0.040112,
		42.179707, 40.767178, 33.713200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.539295, 40.449055, 32.995392>,  <42.861111, 40.609390, 33.685120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.539295, 40.449055, 32.995392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.384228, 40.746010, 33.213959>,  <42.291187, 40.924183, 33.345100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.384228, 40.746010, 33.213959>,  <42.539295, 40.449055, 32.995392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.384228, 40.746010, 33.213959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350775, 0.666988, -0.657331,
		-0.852451, -0.063154, -0.518980,
		-0.387666, 0.742387, 0.546422,
		42.267929, 40.968727, 33.377884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.116482, 40.803200, 32.544712>,  <42.539295, 40.449055, 32.995392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.116482, 40.803200, 32.544712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.237782, 41.054905, 32.830948>,  <42.310562, 41.205929, 33.002689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.237782, 41.054905, 32.830948>,  <42.116482, 40.803200, 32.544712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.237782, 41.054905, 32.830948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161144, 0.706269, -0.689360,
		-0.939186, 0.324364, 0.112776,
		0.303254, 0.629263, 0.715587,
		42.328758, 41.243683, 33.045624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.720314, 41.496151, 32.461544>,  <42.116482, 40.803200, 32.544712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.720314, 41.496151, 32.461544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.025951, 41.596836, 32.699131>,  <42.209335, 41.657246, 32.841682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.025951, 41.596836, 32.699131>,  <41.720314, 41.496151, 32.461544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.025951, 41.596836, 32.699131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257297, 0.725416, -0.638412,
		-0.591569, 0.640635, 0.489524,
		0.764097, 0.251711, 0.593967,
		42.255180, 41.672348, 32.877319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.687447, 42.152000, 32.517845>,  <41.720314, 41.496151, 32.461544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.687447, 42.152000, 32.517845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.065060, 42.103333, 32.640484>,  <42.291626, 42.074131, 32.714066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.065060, 42.103333, 32.640484>,  <41.687447, 42.152000, 32.517845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.065060, 42.103333, 32.640484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293668, 0.733275, -0.613242,
		-0.150209, 0.668958, 0.727965,
		0.944032, -0.121665, 0.306597,
		42.348270, 42.066833, 32.732464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.921307, 42.809139, 32.724125>,  <41.687447, 42.152000, 32.517845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.921307, 42.809139, 32.724125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.222397, 42.571869, 32.609905>,  <42.403053, 42.429508, 32.541374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.222397, 42.571869, 32.609905>,  <41.921307, 42.809139, 32.724125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.222397, 42.571869, 32.609905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390416, 0.751465, -0.531861,
		0.530070, 0.288863, 0.797235,
		0.752730, -0.593176, -0.285552,
		42.448215, 42.393917, 32.524239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.573112, 43.161228, 32.847065>,  <41.921307, 42.809139, 32.724125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.573112, 43.161228, 32.847065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.505566, 42.930721, 32.527214>,  <42.465038, 42.792419, 32.335304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.505566, 42.930721, 32.527214>,  <42.573112, 43.161228, 32.847065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.505566, 42.930721, 32.527214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524608, 0.634266, -0.567885,
		0.834428, -0.515388, 0.195206,
		-0.168869, -0.576266, -0.799626,
		42.454906, 42.757843, 32.287327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.181427, 43.009544, 32.498047>,  <42.573112, 43.161228, 32.847065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.181427, 43.009544, 32.498047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.863712, 43.005417, 32.255062>,  <42.673084, 43.002941, 32.109272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.863712, 43.005417, 32.255062>,  <43.181427, 43.009544, 32.498047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.863712, 43.005417, 32.255062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417820, 0.716595, -0.558496,
		0.441068, -0.697413, -0.564867,
		-0.794283, -0.010322, -0.607460,
		42.625427, 43.002319, 32.072823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.400120, 43.020809, 31.767796>,  <43.181427, 43.009544, 32.498047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.400120, 43.020809, 31.767796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.056763, 43.225998, 31.769926>,  <42.850750, 43.349110, 31.771204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.056763, 43.225998, 31.769926>,  <43.400120, 43.020809, 31.767796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.056763, 43.225998, 31.769926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445948, 0.751282, -0.486524,
		-0.253575, -0.415252, -0.873651,
		-0.858389, 0.512973, 0.005326,
		42.799248, 43.379890, 31.771524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.268654, 43.239037, 31.075953>,  <43.400120, 43.020809, 31.767796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.268654, 43.239037, 31.075953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.144657, 43.515934, 31.336632>,  <43.070259, 43.682072, 31.493038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.144657, 43.515934, 31.336632>,  <43.268654, 43.239037, 31.075953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.144657, 43.515934, 31.336632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547595, 0.690345, -0.472825,
		-0.777204, 0.210296, -0.593067,
		-0.309988, 0.692242, 0.651696,
		43.051662, 43.723606, 31.532141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.581112, 43.747463, 30.707024>,  <43.268654, 43.239037, 31.075953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.581112, 43.747463, 30.707024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.399761, 43.911770, 31.023434>,  <43.290951, 44.010353, 31.213280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.399761, 43.911770, 31.023434>,  <43.581112, 43.747463, 30.707024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.399761, 43.911770, 31.023434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628206, 0.776839, -0.043342,
		-0.632303, 0.477278, -0.610245,
		-0.453375, 0.410765, 0.791027,
		43.263748, 44.035000, 31.260742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.273209, 43.501541, 30.484777>,  <43.581112, 43.747463, 30.707024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.273209, 43.501541, 30.484777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.105511, 43.210449, 30.701900>,  <44.004894, 43.035793, 30.832174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.105511, 43.210449, 30.701900>,  <44.273209, 43.501541, 30.484777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.105511, 43.210449, 30.701900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736887, -0.076483, -0.671676,
		0.530316, -0.681583, -0.504192,
		-0.419241, -0.727733, 0.542810,
		43.979740, 42.992130, 30.864744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.110546, 42.867931, 30.084568>,  <44.273209, 43.501541, 30.484777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.110546, 42.867931, 30.084568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.864460, 42.897190, 30.398550>,  <43.716808, 42.914745, 30.586939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.864460, 42.897190, 30.398550>,  <44.110546, 42.867931, 30.084568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.864460, 42.897190, 30.398550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774513, -0.241855, -0.584496,
		0.147089, -0.967551, 0.205449,
		-0.615218, 0.073150, 0.784956,
		43.679893, 42.919136, 30.634037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.478680, 42.640488, 29.763041>,  <44.110546, 42.867931, 30.084568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.478680, 42.640488, 29.763041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.347794, 42.785137, 30.112247>,  <43.269264, 42.871925, 30.321772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.347794, 42.785137, 30.112247>,  <43.478680, 42.640488, 29.763041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.347794, 42.785137, 30.112247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925560, -0.308856, -0.218969,
		0.190453, -0.879681, 0.435763,
		-0.327211, 0.361621, 0.873019,
		43.249630, 42.893623, 30.374153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.180016, 42.055630, 30.189112>,  <43.478680, 42.640488, 29.763041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.180016, 42.055630, 30.189112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.024673, 42.419575, 30.247528>,  <42.931469, 42.637943, 30.282578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.024673, 42.419575, 30.247528>,  <43.180016, 42.055630, 30.189112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.024673, 42.419575, 30.247528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901915, -0.342784, -0.262769,
		-0.189023, -0.233764, 0.953742,
		-0.388354, 0.909864, 0.146041,
		42.908169, 42.692535, 30.291340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.802242, 41.474949, 30.387697>,  <43.180016, 42.055630, 30.189112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.802242, 41.474949, 30.387697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.600220, 41.140285, 30.302921>,  <42.479008, 40.939487, 30.252056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.600220, 41.140285, 30.302921>,  <42.802242, 41.474949, 30.387697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.600220, 41.140285, 30.302921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519968, -0.490948, 0.699002,
		-0.688880, 0.242831, 0.682992,
		-0.505052, -0.836662, -0.211940,
		42.448704, 40.889286, 30.239340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.510612, 41.249367, 30.971283>,  <42.802242, 41.474949, 30.387697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.510612, 41.249367, 30.971283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.543541, 40.926495, 30.737465>,  <42.563297, 40.732773, 30.597174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.543541, 40.926495, 30.737465>,  <42.510612, 41.249367, 30.971283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.543541, 40.926495, 30.737465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435213, -0.498535, 0.749701,
		-0.896556, -0.316116, 0.310254,
		0.082320, -0.807176, -0.584543,
		42.568237, 40.684341, 30.562101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.453945, 40.692665, 31.437344>,  <42.510612, 41.249367, 30.971283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.453945, 40.692665, 31.437344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.627857, 40.511002, 31.126291>,  <42.732204, 40.402004, 30.939659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.627857, 40.511002, 31.126291>,  <42.453945, 40.692665, 31.437344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.627857, 40.511002, 31.126291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476546, -0.616676, 0.626590,
		-0.764116, -0.643004, -0.051691,
		0.434777, -0.454154, -0.777633,
		42.758289, 40.374756, 30.893002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.354218, 40.016960, 31.490702>,  <42.453945, 40.692665, 31.437344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.354218, 40.016960, 31.490702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.653675, 39.969986, 31.229704>,  <42.833347, 39.941803, 31.073105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.653675, 39.969986, 31.229704>,  <42.354218, 40.016960, 31.490702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.653675, 39.969986, 31.229704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483817, -0.576115, 0.658797,
		-0.453277, -0.808888, -0.374485,
		0.748640, -0.117435, -0.652493,
		42.878265, 39.934757, 31.033957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.536114, 39.280926, 31.412136>,  <42.354218, 40.016960, 31.490702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.536114, 39.280926, 31.412136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.860283, 39.492550, 31.311487>,  <43.054783, 39.619522, 31.251097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.860283, 39.492550, 31.311487>,  <42.536114, 39.280926, 31.412136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.860283, 39.492550, 31.311487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519442, -0.450288, 0.726237,
		0.270918, -0.719262, -0.639738,
		0.810421, 0.529058, -0.251624,
		43.103409, 39.651268, 31.236000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.970646, 38.782574, 31.311131>,  <42.536114, 39.280926, 31.412136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.970646, 38.782574, 31.311131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.186577, 39.113342, 31.374109>,  <43.316135, 39.311802, 31.411898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.186577, 39.113342, 31.374109>,  <42.970646, 38.782574, 31.311131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.186577, 39.113342, 31.374109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591201, -0.505590, 0.628379,
		0.599224, -0.246131, -0.761807,
		0.539826, 0.826921, 0.157449,
		43.348526, 39.361420, 31.421345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.676678, 38.489193, 31.306004>,  <42.970646, 38.782574, 31.311131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.676678, 38.489193, 31.306004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.710121, 38.860023, 31.452177>,  <43.730186, 39.082520, 31.539881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.710121, 38.860023, 31.452177>,  <43.676678, 38.489193, 31.306004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.710121, 38.860023, 31.452177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688157, -0.318950, 0.651698,
		0.720728, 0.196988, -0.664641,
		0.083610, 0.927074, 0.365435,
		43.735203, 39.138145, 31.561808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.342945, 38.577656, 31.430401>,  <43.676678, 38.489193, 31.306004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.342945, 38.577656, 31.430401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.186359, 38.843864, 31.684593>,  <44.092407, 39.003590, 31.837109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.186359, 38.843864, 31.684593>,  <44.342945, 38.577656, 31.430401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.186359, 38.843864, 31.684593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573809, -0.363335, 0.733983,
		0.719375, 0.651972, -0.239651,
		-0.391463, 0.665522, 0.635481,
		44.068920, 39.043522, 31.875238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.848553, 38.815418, 31.766546>,  <44.342945, 38.577656, 31.430401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.848553, 38.815418, 31.766546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.548412, 38.903862, 32.015732>,  <44.368328, 38.956928, 32.165241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.548412, 38.903862, 32.015732>,  <44.848553, 38.815418, 31.766546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.548412, 38.903862, 32.015732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443961, -0.529665, 0.722740,
		0.489763, 0.818882, 0.299274,
		-0.750353, 0.221106, 0.622962,
		44.323307, 38.970192, 32.202621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.260586, 38.977898, 32.400833>,  <44.848553, 38.815418, 31.766546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.260586, 38.977898, 32.400833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.875057, 38.887035, 32.456612>,  <44.643738, 38.832520, 32.490078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.875057, 38.887035, 32.456612>,  <45.260586, 38.977898, 32.400833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.875057, 38.887035, 32.456612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256170, -0.644909, 0.720048,
		-0.073634, 0.729720, 0.679769,
		-0.963823, -0.227157, 0.139445,
		44.585911, 38.818890, 32.498444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.257282, 38.650085, 33.021240>,  <45.260586, 38.977898, 32.400833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.257282, 38.650085, 33.021240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.876465, 38.555309, 32.943802>,  <44.647976, 38.498444, 32.897339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.876465, 38.555309, 32.943802>,  <45.257282, 38.650085, 33.021240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.876465, 38.555309, 32.943802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081098, -0.805498, 0.587023,
		-0.295026, 0.543170, 0.786083,
		-0.952041, -0.236937, -0.193592,
		44.590851, 38.484230, 32.885723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.999355, 38.483948, 33.686142>,  <45.257282, 38.650085, 33.021240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.999355, 38.483948, 33.686142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.755772, 38.313858, 33.418304>,  <44.609623, 38.211803, 33.257603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.755772, 38.313858, 33.418304>,  <44.999355, 38.483948, 33.686142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.755772, 38.313858, 33.418304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053749, -0.820106, 0.569681,
		-0.791380, 0.382901, 0.476554,
		-0.608957, -0.425220, -0.669597,
		44.573086, 38.186291, 33.217426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.340984, 38.273525, 33.911934>,  <44.999355, 38.483948, 33.686142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.340984, 38.273525, 33.911934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.410534, 38.027905, 33.603985>,  <44.452263, 37.880531, 33.419216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.410534, 38.027905, 33.603985>,  <44.340984, 38.273525, 33.911934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.410534, 38.027905, 33.603985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079417, -0.787977, 0.610561,
		-0.981560, -0.045022, -0.185778,
		0.173877, -0.614056, -0.769871,
		44.462696, 37.843689, 33.373024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.986172, 37.726578, 34.099365>,  <44.340984, 38.273525, 33.911934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.986172, 37.726578, 34.099365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.232067, 37.590233, 33.814854>,  <44.379604, 37.508427, 33.644146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.232067, 37.590233, 33.814854>,  <43.986172, 37.726578, 34.099365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.232067, 37.590233, 33.814854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165238, -0.826126, 0.538713,
		-0.771230, -0.448696, -0.451527,
		0.614737, -0.340862, -0.711275,
		44.416489, 37.487972, 33.601471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.773010, 37.043232, 33.952984>,  <43.986172, 37.726578, 34.099365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.773010, 37.043232, 33.952984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.150692, 37.050739, 33.821461>,  <44.377300, 37.055244, 33.742546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.150692, 37.050739, 33.821461>,  <43.773010, 37.043232, 33.952984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.150692, 37.050739, 33.821461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205174, -0.814499, 0.542674,
		-0.257630, -0.579861, -0.772909,
		0.944209, 0.018771, -0.328812,
		44.433956, 37.056370, 33.722816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.896133, 36.413658, 33.526947>,  <43.773010, 37.043232, 33.952984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.896133, 36.413658, 33.526947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.254379, 36.550430, 33.640762>,  <44.469326, 36.632492, 33.709053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.254379, 36.550430, 33.640762>,  <43.896133, 36.413658, 33.526947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.254379, 36.550430, 33.640762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146132, -0.830305, 0.537809,
		0.420150, -0.440087, -0.793598,
		0.895611, 0.341931, 0.284542,
		44.523064, 36.653011, 33.726124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.328201, 35.787285, 33.582470>,  <43.896133, 36.413658, 33.526947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.328201, 35.787285, 33.582470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.517441, 36.057590, 33.808571>,  <44.630985, 36.219776, 33.944233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.517441, 36.057590, 33.808571>,  <44.328201, 35.787285, 33.582470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.517441, 36.057590, 33.808571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190366, -0.704853, 0.683332,
		0.860195, -0.215681, -0.462111,
		0.473103, 0.675769, 0.565253,
		44.659370, 36.260323, 33.978146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.937119, 35.395069, 33.890011>,  <44.328201, 35.787285, 33.582470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.937119, 35.395069, 33.890011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.914009, 35.713573, 34.130890>,  <44.900143, 35.904675, 34.275417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.914009, 35.713573, 34.130890>,  <44.937119, 35.395069, 33.890011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.914009, 35.713573, 34.130890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123925, -0.592816, 0.795746,
		0.990608, 0.120600, -0.064427,
		-0.057774, 0.796257, 0.602194,
		44.896675, 35.952450, 34.311546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.464397, 35.337036, 34.248344>,  <44.937119, 35.395069, 33.890011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.464397, 35.337036, 34.248344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.234592, 35.576538, 34.471569>,  <45.096710, 35.720238, 34.605503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.234592, 35.576538, 34.471569>,  <45.464397, 35.337036, 34.248344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.234592, 35.576538, 34.471569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237616, -0.530442, 0.813738,
		0.783247, 0.600105, 0.162471,
		-0.574510, 0.598752, 0.558062,
		45.062241, 35.756165, 34.638988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.823273, 35.558868, 34.863964>,  <45.464397, 35.337036, 34.248344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.823273, 35.558868, 34.863964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.447964, 35.614433, 34.990673>,  <45.222778, 35.647774, 35.066700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.447964, 35.614433, 34.990673>,  <45.823273, 35.558868, 34.863964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.447964, 35.614433, 34.990673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253694, -0.346151, 0.903227,
		0.235121, 0.927838, 0.289543,
		-0.938274, 0.138912, 0.316774,
		45.166481, 35.656105, 35.085705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.850254, 35.865402, 35.575848>,  <45.823273, 35.558868, 34.863964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.850254, 35.865402, 35.575848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.482403, 35.709953, 35.553013>,  <45.261692, 35.616684, 35.539310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.482403, 35.709953, 35.553013>,  <45.850254, 35.865402, 35.575848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.482403, 35.709953, 35.553013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093797, -0.358405, 0.928842,
		-0.381433, 0.848832, 0.366051,
		-0.919625, -0.388626, -0.057090,
		45.206516, 35.593365, 35.535885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.143974, 35.192146, 35.551323>,  <45.850254, 35.865402, 35.575848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.143974, 35.192146, 35.551323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.336121, 35.342834, 35.868141>,  <46.451408, 35.433247, 36.058231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.336121, 35.342834, 35.868141>,  <46.143974, 35.192146, 35.551323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.336121, 35.342834, 35.868141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876201, -0.246281, -0.414266,
		0.039001, 0.892986, -0.448391,
		0.480364, 0.376724, 0.792041,
		46.480228, 35.455853, 36.105755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.745224, 34.834549, 35.701687>,  <46.143974, 35.192146, 35.551323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.745224, 34.834549, 35.701687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.974934, 35.150215, 35.614574>,  <47.112759, 35.339615, 35.562309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.974934, 35.150215, 35.614574>,  <46.745224, 34.834549, 35.701687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.974934, 35.150215, 35.614574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660667, -0.603834, -0.445986,
		-0.483458, 0.112239, -0.868142,
		0.574271, 0.789168, -0.217776,
		47.147213, 35.386967, 35.549240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.891510, 34.804386, 34.998421>,  <46.745224, 34.834549, 35.701687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.891510, 34.804386, 34.998421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.173843, 35.014229, 35.188820>,  <47.343243, 35.140137, 35.303059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.173843, 35.014229, 35.188820>,  <46.891510, 34.804386, 34.998421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.173843, 35.014229, 35.188820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707935, -0.546043, -0.447957,
		0.024915, 0.653163, -0.756807,
		0.705838, 0.524609, 0.476002,
		47.385593, 35.171612, 35.331619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.386940, 35.014526, 34.499649>,  <46.891510, 34.804386, 34.998421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.386940, 35.014526, 34.499649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.509754, 34.957077, 34.875969>,  <47.583443, 34.922607, 35.101761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.509754, 34.957077, 34.875969>,  <47.386940, 35.014526, 34.499649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.509754, 34.957077, 34.875969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671917, -0.667368, -0.321167,
		0.673986, 0.730748, -0.108401,
		0.307035, -0.143626, 0.940798,
		47.601864, 34.913990, 35.158207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<31.793219, 33.950947, 44.294937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.428982, 33.835762, 44.176346>,  <31.210440, 33.766651, 44.105190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.428982, 33.835762, 44.176346>,  <31.793219, 33.950947, 44.294937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.428982, 33.835762, 44.176346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328923, -0.070550, -0.941718,
		0.250263, -0.955039, 0.158959,
		-0.910592, -0.287962, -0.296478,
		31.155804, 33.749374, 44.087402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.864393, 33.338223, 43.750645>,  <31.793219, 33.950947, 44.294937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.864393, 33.338223, 43.750645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.517370, 33.531937, 43.705364>,  <31.309156, 33.648167, 43.678196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.517370, 33.531937, 43.705364>,  <31.864393, 33.338223, 43.750645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.517370, 33.531937, 43.705364> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115446, -0.025296, -0.992992,
		-0.483756, -0.874544, -0.033963,
		-0.867556, 0.484287, -0.113200,
		31.257103, 33.677223, 43.671406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.463097, 32.966171, 43.201935>,  <31.864393, 33.338223, 43.750645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.463097, 32.966171, 43.201935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.310335, 33.334667, 43.231491>,  <31.218678, 33.555767, 43.249226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.310335, 33.334667, 43.231491>,  <31.463097, 32.966171, 43.201935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.310335, 33.334667, 43.231491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033684, 0.066018, -0.997250,
		-0.923588, -0.383342, 0.005819,
		-0.381904, 0.921244, 0.073886,
		31.195765, 33.611042, 43.253658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.014927, 32.996124, 42.682293>,  <31.463097, 32.966171, 43.201935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.014927, 32.996124, 42.682293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.090651, 33.382359, 42.753628>,  <31.136084, 33.614098, 42.796429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.090651, 33.382359, 42.753628>,  <31.014927, 32.996124, 42.682293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.090651, 33.382359, 42.753628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019773, 0.185334, -0.982477,
		-0.981719, 0.182464, 0.054177,
		0.189308, 0.965587, 0.178338,
		31.147442, 33.672035, 42.807129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.741039, 33.310265, 42.102844>,  <31.014927, 32.996124, 42.682293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.741039, 33.310265, 42.102844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.936367, 33.614365, 42.274223>,  <31.053564, 33.796825, 42.377048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.936367, 33.614365, 42.274223>,  <30.741039, 33.310265, 42.102844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.936367, 33.614365, 42.274223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178846, 0.393356, -0.901823,
		-0.854142, 0.517003, 0.056116,
		0.488319, 0.760249, 0.428446,
		31.082863, 33.842438, 42.402756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.322519, 33.948277, 42.068733>,  <30.741039, 33.310265, 42.102844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.322519, 33.948277, 42.068733> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.715712, 34.020023, 42.084599>,  <30.951628, 34.063072, 42.094116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.715712, 34.020023, 42.084599>,  <30.322519, 33.948277, 42.068733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.715712, 34.020023, 42.084599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033789, 0.388778, -0.920712,
		-0.180565, 0.903703, 0.388223,
		0.982982, 0.179366, 0.039665,
		31.010607, 34.073833, 42.096497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.320621, 34.606926, 41.845970>,  <30.322519, 33.948277, 42.068733>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.320621, 34.606926, 41.845970> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.695988, 34.487083, 41.777138>,  <30.921207, 34.415176, 41.735836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.695988, 34.487083, 41.777138>,  <30.320621, 34.606926, 41.845970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.695988, 34.487083, 41.777138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037226, 0.407487, -0.912452,
		0.343498, 0.862665, 0.371239,
		0.938416, -0.299605, -0.172084,
		30.977512, 34.397202, 41.725513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.612257, 35.139107, 41.453857>,  <30.320621, 34.606926, 41.845970>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.612257, 35.139107, 41.453857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.869699, 34.838936, 41.393684>,  <31.024166, 34.658833, 41.357582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.869699, 34.838936, 41.393684>,  <30.612257, 35.139107, 41.453857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.869699, 34.838936, 41.393684> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062183, 0.144633, -0.987529,
		0.762825, 0.644936, 0.046423,
		0.643608, -0.750425, -0.150433,
		31.062782, 34.613808, 41.348553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.018345, 35.366020, 40.793903>,  <30.612257, 35.139107, 41.453857>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.018345, 35.366020, 40.793903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.093615, 34.976238, 40.842945>,  <31.138777, 34.742371, 40.872372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.093615, 34.976238, 40.842945>,  <31.018345, 35.366020, 40.793903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.093615, 34.976238, 40.842945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146756, -0.095535, -0.984549,
		0.971109, 0.203261, 0.125030,
		0.188176, -0.974453, 0.122605,
		31.150066, 34.683903, 40.879726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.714127, 35.327019, 40.534893>,  <31.018345, 35.366020, 40.793903>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.714127, 35.327019, 40.534893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.540749, 34.969913, 40.485744>,  <31.436722, 34.755650, 40.456257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.540749, 34.969913, 40.485744>,  <31.714127, 35.327019, 40.534893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.540749, 34.969913, 40.485744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531923, -0.143397, -0.834563,
		0.727449, -0.427095, 0.537037,
		-0.433447, -0.892764, -0.122867,
		31.410715, 34.702084, 40.448883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.234684, 34.964828, 40.295425>,  <31.714127, 35.327019, 40.534893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.234684, 34.964828, 40.295425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.901798, 34.754448, 40.225239>,  <31.702066, 34.628220, 40.183125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.901798, 34.754448, 40.225239>,  <32.234684, 34.964828, 40.295425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.901798, 34.754448, 40.225239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297637, -0.156776, -0.941718,
		0.467790, -0.835940, 0.287014,
		-0.832217, -0.525952, -0.175469,
		31.652134, 34.596661, 40.172600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.474148, 34.332748, 40.160748>,  <32.234684, 34.964828, 40.295425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.474148, 34.332748, 40.160748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.111271, 34.366554, 39.995892>,  <31.893545, 34.386837, 39.896976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.111271, 34.366554, 39.995892>,  <32.474148, 34.332748, 40.160748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.111271, 34.366554, 39.995892> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401439, -0.119238, -0.908091,
		-0.125924, -0.989259, 0.074228,
		-0.907188, 0.084553, -0.412142,
		31.839113, 34.391911, 39.872250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.382885, 33.773792, 39.652767>,  <32.474148, 34.332748, 40.160748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.382885, 33.773792, 39.652767> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.109291, 34.040886, 39.535259>,  <31.945135, 34.201141, 39.464756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.109291, 34.040886, 39.535259>,  <32.382885, 33.773792, 39.652767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.109291, 34.040886, 39.535259> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200820, -0.214788, -0.955792,
		-0.701310, -0.712742, 0.012818,
		-0.683986, 0.667732, -0.293765,
		31.904095, 34.241207, 39.447128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.102932, 33.524250, 38.989635>,  <32.382885, 33.773792, 39.652767>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.102932, 33.524250, 38.989635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.984531, 33.906078, 39.003399>,  <31.913492, 34.135174, 39.011658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.984531, 33.906078, 39.003399>,  <32.102932, 33.524250, 38.989635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.984531, 33.906078, 39.003399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282896, 0.122018, -0.951358,
		-0.912334, -0.271868, -0.306160,
		-0.296001, 0.954568, 0.034411,
		31.895731, 34.192448, 39.013721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.773321, 33.630226, 38.304756>,  <32.102932, 33.524250, 38.989635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.773321, 33.630226, 38.304756> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.861191, 33.976749, 38.484200>,  <31.913912, 34.184666, 38.591866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.861191, 33.976749, 38.484200>,  <31.773321, 33.630226, 38.304756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.861191, 33.976749, 38.484200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580364, 0.253572, -0.773872,
		-0.784169, 0.430353, -0.447074,
		0.219673, 0.866313, 0.448605,
		31.927094, 34.236645, 38.618782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.636343, 34.197147, 37.860973>,  <31.773321, 33.630226, 38.304756>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.636343, 34.197147, 37.860973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.925272, 34.315319, 38.111084>,  <32.098629, 34.386223, 38.261150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.925272, 34.315319, 38.111084>,  <31.636343, 34.197147, 37.860973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.925272, 34.315319, 38.111084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559185, 0.282475, -0.779436,
		-0.406895, 0.912649, 0.038837,
		0.722322, 0.295432, 0.625277,
		32.141968, 34.403950, 38.298668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.924522, 34.773014, 37.466309>,  <31.636343, 34.197147, 37.860973>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.924522, 34.773014, 37.466309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.203297, 34.713444, 37.746906>,  <32.370560, 34.677704, 37.915264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.203297, 34.713444, 37.746906>,  <31.924522, 34.773014, 37.466309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.203297, 34.713444, 37.746906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707764, 0.300435, -0.639382,
		-0.115537, 0.942104, 0.314786,
		0.696937, -0.148922, 0.701499,
		32.412376, 34.668766, 37.957355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.407436, 35.311932, 37.387184>,  <31.924522, 34.773014, 37.466309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.407436, 35.311932, 37.387184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.595688, 35.008339, 37.567162>,  <32.708641, 34.826183, 37.675148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.595688, 35.008339, 37.567162>,  <32.407436, 35.311932, 37.387184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.595688, 35.008339, 37.567162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753960, 0.081056, -0.651900,
		0.458310, 0.646047, 0.610390,
		0.470633, -0.758982, 0.449945,
		32.736877, 34.780643, 37.702145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.092609, 35.507744, 37.513412>,  <32.407436, 35.311932, 37.387184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.092609, 35.507744, 37.513412> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.106617, 35.108326, 37.529804>,  <33.115021, 34.868675, 37.539639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.106617, 35.108326, 37.529804>,  <33.092609, 35.507744, 37.513412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.106617, 35.108326, 37.529804> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701819, -0.004617, -0.712340,
		0.711494, 0.053705, 0.700637,
		0.035022, -0.998546, 0.040976,
		33.117123, 34.808762, 37.542095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.773251, 35.363750, 37.534149>,  <33.092609, 35.507744, 37.513412>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.773251, 35.363750, 37.534149> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.613075, 35.011852, 37.431618>,  <33.516972, 34.800713, 37.370098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.613075, 35.011852, 37.431618>,  <33.773251, 35.363750, 37.534149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.613075, 35.011852, 37.431618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732867, -0.139554, -0.665906,
		0.550053, -0.454509, 0.700616,
		-0.400434, -0.879742, -0.256332,
		33.492947, 34.747929, 37.354717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.346634, 34.878616, 37.415363>,  <33.773251, 35.363750, 37.534149>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.346634, 34.878616, 37.415363> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.036926, 34.698784, 37.237202>,  <33.851101, 34.590885, 37.130302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.036926, 34.698784, 37.237202>,  <34.346634, 34.878616, 37.415363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.036926, 34.698784, 37.237202> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587944, -0.250589, -0.769108,
		0.234164, -0.857368, 0.458352,
		-0.774267, -0.449583, -0.445406,
		33.804646, 34.563908, 37.103580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538723, 34.121159, 37.198997>,  <34.346634, 34.878616, 37.415363>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538723, 34.121159, 37.198997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.248543, 34.237907, 36.949669>,  <34.074432, 34.307957, 36.800072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.248543, 34.237907, 36.949669>,  <34.538723, 34.121159, 37.198997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248543, 34.237907, 36.949669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578747, -0.231474, -0.781966,
		-0.372517, -0.928025, -0.000997,
		-0.725454, 0.291873, -0.623320,
		34.030907, 34.325470, 36.762672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237148, 33.960007, 37.478157>,  <34.538723, 34.121159, 37.198997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.237148, 33.960007, 37.478157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.563183, 34.179409, 37.552746>,  <35.758804, 34.311050, 37.597500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.563183, 34.179409, 37.552746>,  <35.237148, 33.960007, 37.478157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563183, 34.179409, 37.552746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169486, -0.082026, 0.982113,
		0.553988, -0.832116, 0.026105,
		0.815090, 0.548503, 0.186473,
		35.807709, 34.343960, 37.608688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590279, 33.534996, 37.955620>,  <35.237148, 33.960007, 37.478157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590279, 33.534996, 37.955620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.702698, 33.918049, 37.980762>,  <35.770149, 34.147881, 37.995850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.702698, 33.918049, 37.980762>,  <35.590279, 33.534996, 37.955620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702698, 33.918049, 37.980762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188136, -0.009253, 0.982099,
		0.941073, -0.287841, 0.177565,
		0.281045, 0.957634, 0.062861,
		35.787010, 34.205338, 37.999622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.142788, 33.605927, 38.499081>,  <35.590279, 33.534996, 37.955620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.142788, 33.605927, 38.499081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.971767, 33.965042, 38.456795>,  <35.869156, 34.180511, 38.431423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.971767, 33.965042, 38.456795>,  <36.142788, 33.605927, 38.499081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971767, 33.965042, 38.456795> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155078, 0.042362, 0.986993,
		0.890592, 0.438380, 0.121116,
		-0.427548, 0.897791, -0.105710,
		35.843502, 34.234379, 38.425083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360680, 33.990265, 39.055756>,  <36.142788, 33.605927, 38.499081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.360680, 33.990265, 39.055756> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.024403, 34.162617, 38.924557>,  <35.822636, 34.266029, 38.845837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.024403, 34.162617, 38.924557>,  <36.360680, 33.990265, 39.055756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024403, 34.162617, 38.924557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331903, 0.068607, 0.940815,
		0.427882, 0.899797, 0.085333,
		-0.840689, 0.430880, -0.328002,
		35.772198, 34.291882, 38.826157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.163982, 34.312565, 39.611797>,  <36.360680, 33.990265, 39.055756>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.163982, 34.312565, 39.611797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.832191, 34.375534, 39.397438>,  <35.633118, 34.413315, 39.268822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.832191, 34.375534, 39.397438>,  <36.163982, 34.312565, 39.611797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.832191, 34.375534, 39.397438> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518757, 0.138497, 0.843629,
		0.207027, 0.977771, -0.033216,
		-0.829476, 0.157423, -0.535898,
		35.583347, 34.422760, 39.236668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098091, 34.969532, 39.721188>,  <36.163982, 34.312565, 39.611797>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.098091, 34.969532, 39.721188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.766876, 34.761772, 39.636730>,  <35.568146, 34.637115, 39.586056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.766876, 34.761772, 39.636730>,  <36.098091, 34.969532, 39.721188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.766876, 34.761772, 39.636730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355310, 0.194800, 0.914225,
		-0.433714, 0.832034, -0.345848,
		-0.828038, -0.519396, -0.211143,
		35.518463, 34.605953, 39.573387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.573235, 35.415806, 39.883514>,  <36.098091, 34.969532, 39.721188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.573235, 35.415806, 39.883514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.428444, 35.043911, 39.910522>,  <35.341568, 34.820774, 39.926727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.428444, 35.043911, 39.910522>,  <35.573235, 35.415806, 39.883514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.428444, 35.043911, 39.910522> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556265, 0.273559, 0.784687,
		-0.748024, 0.246481, -0.616204,
		-0.361979, -0.929738, 0.067520,
		35.319851, 34.764988, 39.930779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957733, 35.567902, 40.199703>,  <35.573235, 35.415806, 39.883514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957733, 35.567902, 40.199703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.985695, 35.174282, 40.265144>,  <35.002472, 34.938110, 40.304409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.985695, 35.174282, 40.265144>,  <34.957733, 35.567902, 40.199703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.985695, 35.174282, 40.265144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410575, 0.121088, 0.903751,
		-0.909144, -0.130343, -0.395561,
		0.069900, -0.984047, 0.163602,
		35.006664, 34.879066, 40.314224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449493, 35.392040, 40.611561>,  <34.957733, 35.567902, 40.199703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449493, 35.392040, 40.611561> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.666988, 35.060745, 40.665764>,  <34.797485, 34.861969, 40.698284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.666988, 35.060745, 40.665764>,  <34.449493, 35.392040, 40.611561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666988, 35.060745, 40.665764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310886, -0.048804, 0.949193,
		-0.779548, -0.558243, -0.284026,
		0.543742, -0.828241, 0.135505,
		34.830112, 34.812271, 40.706417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922855, 34.727829, 40.838730>,  <34.449493, 35.392040, 40.611561>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922855, 34.727829, 40.838730> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.298809, 34.656635, 40.955303>,  <34.524384, 34.613918, 41.025249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.298809, 34.656635, 40.955303>,  <33.922855, 34.727829, 40.838730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298809, 34.656635, 40.955303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317231, -0.139173, 0.938081,
		-0.126395, -0.974143, -0.187267,
		0.939888, -0.177975, 0.291438,
		34.580776, 34.603241, 41.042732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.025185, 34.005676, 41.259895>,  <33.922855, 34.727829, 40.838730>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.025185, 34.005676, 41.259895> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.318260, 34.263817, 41.346329>,  <34.494106, 34.418701, 41.398190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.318260, 34.263817, 41.346329>,  <34.025185, 34.005676, 41.259895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318260, 34.263817, 41.346329> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158066, -0.147462, 0.976355,
		0.661955, -0.749520, -0.006036,
		0.732688, 0.645349, 0.216087,
		34.538067, 34.457420, 41.411156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.413074, 33.741398, 41.805141>,  <34.025185, 34.005676, 41.259895>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.413074, 33.741398, 41.805141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.504097, 34.130306, 41.826717>,  <34.558708, 34.363651, 41.839664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.504097, 34.130306, 41.826717>,  <34.413074, 33.741398, 41.805141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.504097, 34.130306, 41.826717> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139363, -0.022310, 0.989990,
		0.963741, -0.232794, 0.130422,
		0.227554, 0.972270, 0.053944,
		34.572365, 34.421986, 41.842899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832920, 33.867516, 42.387417>,  <34.413074, 33.741398, 41.805141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.832920, 33.867516, 42.387417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.725174, 34.243271, 42.302578>,  <34.660526, 34.468723, 42.251675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.725174, 34.243271, 42.302578>,  <34.832920, 33.867516, 42.387417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725174, 34.243271, 42.302578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120257, 0.185698, 0.975220,
		0.955500, 0.288197, 0.062947,
		-0.269367, 0.939393, -0.212092,
		34.644363, 34.525089, 42.238949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.036541, 34.242699, 42.943115>,  <34.832920, 33.867516, 42.387417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.036541, 34.242699, 42.943115> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.755215, 34.488602, 42.800327>,  <34.586418, 34.636143, 42.714653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.755215, 34.488602, 42.800327>,  <35.036541, 34.242699, 42.943115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.755215, 34.488602, 42.800327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437623, 0.021305, 0.898906,
		0.560212, 0.788431, 0.254047,
		-0.703313, 0.614754, -0.356970,
		34.544220, 34.673027, 42.693237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061630, 34.862011, 43.397610>,  <35.036541, 34.242699, 42.943115>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061630, 34.862011, 43.397610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.703506, 34.860252, 43.219437>,  <34.488632, 34.859200, 43.112534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.703506, 34.860252, 43.219437>,  <35.061630, 34.862011, 43.397610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703506, 34.860252, 43.219437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445126, 0.047104, 0.894228,
		0.017053, 0.998880, -0.044128,
		-0.895306, -0.004393, -0.445431,
		34.434914, 34.858936, 43.085808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779484, 35.403931, 43.682831>,  <35.061630, 34.862011, 43.397610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779484, 35.403931, 43.682831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.483372, 35.174282, 43.542904>,  <34.305706, 35.036491, 43.458946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.483372, 35.174282, 43.542904>,  <34.779484, 35.403931, 43.682831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.483372, 35.174282, 43.542904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509128, 0.138922, 0.849405,
		-0.439063, 0.806899, -0.395142,
		-0.740279, -0.574120, -0.349819,
		34.261288, 35.002045, 43.437958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197937, 35.730785, 43.746933>,  <34.779484, 35.403931, 43.682831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.197937, 35.730785, 43.746933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.044777, 35.361271, 43.745911>,  <33.952881, 35.139561, 43.745296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.044777, 35.361271, 43.745911>,  <34.197937, 35.730785, 43.746933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.044777, 35.361271, 43.745911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546282, 0.224201, 0.807037,
		-0.744957, 0.310412, -0.590495,
		-0.382904, -0.923785, -0.002552,
		33.929905, 35.084137, 43.745144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467049, 35.814163, 43.836670>,  <34.197937, 35.730785, 43.746933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467049, 35.814163, 43.836670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.535587, 35.431911, 43.932518>,  <33.576710, 35.202560, 43.990028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.535587, 35.431911, 43.932518>,  <33.467049, 35.814163, 43.836670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.535587, 35.431911, 43.932518> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485635, 0.129695, 0.864487,
		-0.857205, -0.264492, -0.441864,
		0.171342, -0.955627, 0.239622,
		33.586990, 35.145222, 44.004406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<32.808475, 35.460510, 43.908436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.062206, 35.214272, 44.095482>,  <33.214443, 35.066528, 44.207710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.062206, 35.214272, 44.095482>,  <32.808475, 35.460510, 43.908436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.062206, 35.214272, 44.095482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582728, 0.016727, 0.812495,
		-0.507992, -0.787883, -0.348116,
		0.634328, -0.615598, 0.467619,
		33.252506, 35.029591, 44.235767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.384323, 34.948189, 44.247402>,  <32.808475, 35.460510, 43.908436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.384323, 34.948189, 44.247402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.740051, 34.888824, 44.420410>,  <32.953487, 34.853207, 44.524216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.740051, 34.888824, 44.420410>,  <32.384323, 34.948189, 44.247402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.740051, 34.888824, 44.420410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454154, -0.397031, 0.797565,
		0.053354, -0.905726, -0.420493,
		0.889324, -0.148415, 0.432522,
		33.006847, 34.844299, 44.550167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.433304, 34.269432, 44.395550>,  <32.384323, 34.948189, 44.247402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.433304, 34.269432, 44.395550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.676300, 34.452541, 44.655212>,  <32.822098, 34.562408, 44.811008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.676300, 34.452541, 44.655212>,  <32.433304, 34.269432, 44.395550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676300, 34.452541, 44.655212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372282, -0.557839, 0.741769,
		0.701688, -0.692283, -0.168457,
		0.607486, 0.457777, 0.649154,
		32.858547, 34.589874, 44.849960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.447983, 33.724583, 44.804695>,  <32.433304, 34.269432, 44.395550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.447983, 33.724583, 44.804695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.589226, 34.055145, 44.980133>,  <32.673973, 34.253483, 45.085396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.589226, 34.055145, 44.980133>,  <32.447983, 33.724583, 44.804695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.589226, 34.055145, 44.980133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287742, -0.350140, 0.891407,
		0.890234, -0.440967, 0.114154,
		0.353111, 0.826408, 0.438591,
		32.695160, 34.303066, 45.111710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.983482, 33.536537, 45.393188>,  <32.447983, 33.724583, 44.804695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.983482, 33.536537, 45.393188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.833996, 33.897831, 45.477570>,  <32.744305, 34.114609, 45.528198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.833996, 33.897831, 45.477570>,  <32.983482, 33.536537, 45.393188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.833996, 33.897831, 45.477570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345791, -0.346707, 0.871907,
		0.860677, 0.252900, 0.441901,
		-0.373716, 0.903236, 0.210952,
		32.721882, 34.168800, 45.540855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.016464, 33.569477, 46.071438>,  <32.983482, 33.536537, 45.393188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.016464, 33.569477, 46.071438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.778851, 33.884327, 46.005047>,  <32.636280, 34.073238, 45.965214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.778851, 33.884327, 46.005047>,  <33.016464, 33.569477, 46.071438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.778851, 33.884327, 46.005047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509886, -0.208841, 0.834506,
		0.622201, 0.580357, 0.525405,
		-0.594038, 0.787128, -0.165975,
		32.600639, 34.120464, 45.955254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.083710, 33.942047, 46.795189>,  <33.016464, 33.569477, 46.071438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.083710, 33.942047, 46.795189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.755760, 34.040276, 46.588303>,  <32.558990, 34.099213, 46.464172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.755760, 34.040276, 46.588303>,  <33.083710, 33.942047, 46.795189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.755760, 34.040276, 46.588303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520673, 0.055959, 0.851920,
		0.238148, 0.967762, 0.081982,
		-0.819869, 0.245569, -0.517214,
		32.509800, 34.113945, 46.433140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750946, 34.479408, 47.173038>,  <33.083710, 33.942047, 46.795189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750946, 34.479408, 47.173038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.469330, 34.325241, 46.934452>,  <32.300358, 34.232738, 46.791302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.469330, 34.325241, 46.934452>,  <32.750946, 34.479408, 47.173038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.469330, 34.325241, 46.934452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646578, 0.000537, 0.762848,
		-0.293696, 0.922741, -0.249582,
		-0.704045, -0.385420, -0.596467,
		32.258118, 34.209614, 46.755512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.251431, 34.984879, 47.230743>,  <32.750946, 34.479408, 47.173038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.251431, 34.984879, 47.230743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.101547, 34.635056, 47.107628>,  <32.011616, 34.425159, 47.033760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.101547, 34.635056, 47.107628>,  <32.251431, 34.984879, 47.230743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.101547, 34.635056, 47.107628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604614, -0.021173, 0.796237,
		-0.702876, 0.484451, -0.520839,
		-0.374710, -0.874562, -0.307788,
		31.989134, 34.372688, 47.015293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.545551, 35.038155, 47.494022>,  <32.251431, 34.984879, 47.230743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.545551, 35.038155, 47.494022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.593618, 34.647911, 47.420547>,  <31.622459, 34.413765, 47.376461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.593618, 34.647911, 47.420547>,  <31.545551, 35.038155, 47.494022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.593618, 34.647911, 47.420547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425060, -0.217774, 0.878577,
		-0.897153, -0.027497, -0.440863,
		0.120167, -0.975612, -0.183689,
		31.629669, 34.355228, 47.365440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.908384, 34.774250, 47.677078>,  <31.545551, 35.038155, 47.494022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.908384, 34.774250, 47.677078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.176132, 34.477100, 47.680584>,  <31.336781, 34.298809, 47.682686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.176132, 34.477100, 47.680584>,  <30.908384, 34.774250, 47.677078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.176132, 34.477100, 47.680584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199836, -0.168675, 0.965202,
		-0.715547, -0.647830, -0.261360,
		0.669372, -0.742876, 0.008765,
		31.376944, 34.254238, 47.683212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.657516, 34.213448, 48.023479>,  <30.908384, 34.774250, 47.677078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.657516, 34.213448, 48.023479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.045084, 34.122601, 48.062702>,  <31.277624, 34.068092, 48.086235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.045084, 34.122601, 48.062702>,  <30.657516, 34.213448, 48.023479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.045084, 34.122601, 48.062702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176154, -0.355124, 0.918072,
		-0.173687, -0.906810, -0.384094,
		0.968918, -0.227116, 0.098058,
		31.335760, 34.054466, 48.092121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.681213, 33.576851, 48.424049>,  <30.657516, 34.213448, 48.023479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.681213, 33.576851, 48.424049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.048717, 33.727215, 48.472332>,  <31.269220, 33.817432, 48.501301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.048717, 33.727215, 48.472332>,  <30.681213, 33.576851, 48.424049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.048717, 33.727215, 48.472332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012461, -0.277976, 0.960507,
		0.394618, -0.883981, -0.250709,
		0.918761, 0.375909, 0.120709,
		31.324347, 33.839989, 48.508545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.030453, 33.099098, 48.733757>,  <30.681213, 33.576851, 48.424049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.030453, 33.099098, 48.733757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.244940, 33.427174, 48.813522>,  <31.373632, 33.624020, 48.861382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.244940, 33.427174, 48.813522>,  <31.030453, 33.099098, 48.733757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.244940, 33.427174, 48.813522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099346, -0.295937, 0.950027,
		0.838213, -0.489610, -0.240169,
		0.536218, 0.820185, 0.199417,
		31.405806, 33.673229, 48.873348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.612148, 32.873463, 49.173653>,  <31.030453, 33.099098, 48.733757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.612148, 32.873463, 49.173653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.611135, 33.269882, 49.227058>,  <31.610529, 33.507732, 49.259102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.611135, 33.269882, 49.227058>,  <31.612148, 32.873463, 49.173653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.611135, 33.269882, 49.227058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111656, -0.132396, 0.984888,
		0.993744, 0.017400, -0.110321,
		-0.002531, 0.991044, 0.133510,
		31.610376, 33.567196, 49.267113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.223286, 32.981693, 49.646179>,  <31.612148, 32.873463, 49.173653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.223286, 32.981693, 49.646179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.981382, 33.298111, 49.683090>,  <31.836241, 33.487961, 49.705235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.981382, 33.298111, 49.683090>,  <32.223286, 32.981693, 49.646179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.981382, 33.298111, 49.683090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057602, -0.072112, 0.995732,
		0.794325, 0.607490, -0.001955,
		-0.604756, 0.791047, 0.092273,
		31.799955, 33.535423, 49.710773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.496922, 33.383640, 50.182716>,  <32.223286, 32.981693, 49.646179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.496922, 33.383640, 50.182716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.119289, 33.511906, 50.152031>,  <31.892710, 33.588863, 50.133621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.119289, 33.511906, 50.152031>,  <32.496922, 33.383640, 50.182716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.119289, 33.511906, 50.152031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138604, -0.174878, 0.974786,
		0.299163, 0.930910, 0.209544,
		-0.944082, 0.320663, -0.076711,
		31.836065, 33.608105, 50.129017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.364086, 33.963432, 50.809235>,  <32.496922, 33.383640, 50.182716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.364086, 33.963432, 50.809235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.015648, 33.807156, 50.690205>,  <31.806585, 33.713390, 50.618786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.015648, 33.807156, 50.690205>,  <32.364086, 33.963432, 50.809235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.015648, 33.807156, 50.690205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287578, -0.085381, 0.953944,
		-0.398106, 0.916553, -0.037980,
		-0.871097, -0.390693, -0.297571,
		31.754318, 33.689949, 50.600933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.814699, 34.244869, 51.351925>,  <32.364086, 33.963432, 50.809235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.814699, 34.244869, 51.351925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.616772, 33.951714, 51.165150>,  <31.498016, 33.775818, 51.053085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.616772, 33.951714, 51.165150>,  <31.814699, 34.244869, 51.351925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.616772, 33.951714, 51.165150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456491, -0.237997, 0.857306,
		-0.739441, 0.637360, -0.216793,
		-0.494817, -0.732891, -0.466934,
		31.468327, 33.731846, 51.025070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.171555, 34.272903, 51.664658>,  <31.814699, 34.244869, 51.351925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.171555, 34.272903, 51.664658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.180227, 33.915337, 51.485573>,  <31.185431, 33.700798, 51.378120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.180227, 33.915337, 51.485573>,  <31.171555, 34.272903, 51.664658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.180227, 33.915337, 51.485573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431399, -0.412346, 0.802412,
		-0.901900, 0.175744, -0.394576,
		0.021683, -0.893916, -0.447711,
		31.186731, 33.647163, 51.351261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.538746, 33.996269, 51.876076>,  <31.171555, 34.272903, 51.664658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.538746, 33.996269, 51.876076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.777122, 33.692822, 51.770744>,  <30.920149, 33.510754, 51.707546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.777122, 33.692822, 51.770744>,  <30.538746, 33.996269, 51.876076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.777122, 33.692822, 51.770744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251366, -0.487669, 0.836059,
		-0.762670, -0.432052, -0.481315,
		0.595944, -0.758624, -0.263327,
		30.955906, 33.465233, 51.691746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.262186, 33.359066, 51.828609>,  <30.538746, 33.996269, 51.876076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.262186, 33.359066, 51.828609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.636604, 33.235432, 51.895878>,  <30.861256, 33.161251, 51.936241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.636604, 33.235432, 51.895878>,  <30.262186, 33.359066, 51.828609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.636604, 33.235432, 51.895878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342740, -0.692645, 0.634643,
		-0.079677, -0.651694, -0.754285,
		0.936045, -0.309090, 0.168173,
		30.917418, 33.142704, 51.946331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.352772, 32.553207, 51.854111>,  <30.262186, 33.359066, 51.828609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.352772, 32.553207, 51.854111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.621061, 32.724724, 52.096191>,  <30.782036, 32.827633, 52.241440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.621061, 32.724724, 52.096191>,  <30.352772, 32.553207, 51.854111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.621061, 32.724724, 52.096191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332635, -0.555399, 0.762159,
		0.662935, -0.712509, -0.229887,
		0.670724, 0.428793, 0.605199,
		30.822279, 32.853363, 52.277752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.498104, 31.866699, 51.600193>,  <30.352772, 32.553207, 51.854111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.498104, 31.866699, 51.600193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.193691, 31.628820, 51.703857>,  <30.011044, 31.486094, 51.766056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.193691, 31.628820, 51.703857>,  <30.498104, 31.866699, 51.600193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.193691, 31.628820, 51.703857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090574, -0.298172, -0.950205,
		0.642360, -0.746610, 0.173054,
		-0.761032, -0.594700, 0.259157,
		29.965382, 31.450411, 51.781605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.606602, 31.249962, 51.379589>,  <30.498104, 31.866699, 51.600193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.606602, 31.249962, 51.379589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.211735, 31.313532, 51.385880>,  <29.974815, 31.351673, 51.389652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.211735, 31.313532, 51.385880>,  <30.606602, 31.249962, 51.379589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.211735, 31.313532, 51.385880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062152, -0.291612, -0.954515,
		-0.147107, -0.943242, 0.297747,
		-0.987166, 0.158922, 0.015726,
		29.915585, 31.361208, 51.390598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.418831, 30.874996, 50.776440>,  <30.606602, 31.249962, 51.379589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.418831, 30.874996, 50.776440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.103674, 31.108963, 50.853477>,  <29.914579, 31.249344, 50.899700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.103674, 31.108963, 50.853477>,  <30.418831, 30.874996, 50.776440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.103674, 31.108963, 50.853477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287781, -0.073224, -0.954893,
		-0.544432, -0.807780, 0.226021,
		-0.787893, 0.584919, 0.192598,
		29.867306, 31.284439, 50.911259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.910173, 30.428814, 50.681507>,  <30.418831, 30.874996, 50.776440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.910173, 30.428814, 50.681507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.754299, 30.793829, 50.631836>,  <29.660774, 31.012838, 50.602032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.754299, 30.793829, 50.631836>,  <29.910173, 30.428814, 50.681507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.754299, 30.793829, 50.631836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157554, -0.198907, -0.967271,
		-0.907371, -0.357367, 0.221285,
		-0.389685, 0.912538, -0.124178,
		29.637394, 31.067591, 50.594582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.233364, 30.400122, 50.250767>,  <29.910173, 30.428814, 50.681507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.233364, 30.400122, 50.250767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.390041, 30.765963, 50.210617>,  <29.484047, 30.985468, 50.186527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.390041, 30.765963, 50.210617>,  <29.233364, 30.400122, 50.250767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.390041, 30.765963, 50.210617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195807, -0.023736, -0.980355,
		-0.899020, 0.403653, 0.169789,
		0.391693, 0.914604, -0.100377,
		29.507549, 31.040344, 50.180504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.732651, 30.750282, 49.862183>,  <29.233364, 30.400122, 50.250767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.732651, 30.750282, 49.862183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.073605, 30.953941, 49.814499>,  <29.278177, 31.076138, 49.785889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.073605, 30.953941, 49.814499>,  <28.732651, 30.750282, 49.862183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.073605, 30.953941, 49.814499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185902, 0.081965, -0.979144,
		-0.488759, 0.856767, 0.164517,
		0.852382, 0.509149, -0.119213,
		29.329319, 31.106686, 49.778736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.525698, 31.291752, 49.283890>,  <28.732651, 30.750282, 49.862183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.525698, 31.291752, 49.283890> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.925190, 31.277506, 49.298145>,  <29.164885, 31.268959, 49.306698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.925190, 31.277506, 49.298145>,  <28.525698, 31.291752, 49.283890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.925190, 31.277506, 49.298145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038388, 0.079750, -0.996075,
		0.032631, 0.996178, 0.081016,
		0.998730, -0.035613, 0.035639,
		29.224810, 31.266823, 49.308838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.816231, 31.874931, 48.957737>,  <28.525698, 31.291752, 49.283890>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.816231, 31.874931, 48.957737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.116663, 31.610947, 48.950500>,  <29.296923, 31.452557, 48.946159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.116663, 31.610947, 48.950500>,  <28.816231, 31.874931, 48.957737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.116663, 31.610947, 48.950500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143268, 0.189680, -0.971337,
		0.644478, 0.726960, 0.237016,
		0.751081, -0.659962, -0.018094,
		29.341988, 31.412958, 48.945072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.013037, 32.040981, 48.357155>,  <28.816231, 31.874931, 48.957737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.013037, 32.040981, 48.357155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.259792, 31.734217, 48.427925>,  <29.407845, 31.550159, 48.470387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.259792, 31.734217, 48.427925>,  <29.013037, 32.040981, 48.357155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.259792, 31.734217, 48.427925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329558, 0.047557, -0.942937,
		0.714731, 0.639993, 0.282077,
		0.616888, -0.766907, 0.176924,
		29.444859, 31.504145, 48.481003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.637156, 32.321850, 48.290905>,  <29.013037, 32.040981, 48.357155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.637156, 32.321850, 48.290905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.619698, 31.932224, 48.202087>,  <29.609222, 31.698450, 48.148796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.619698, 31.932224, 48.202087>,  <29.637156, 32.321850, 48.290905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.619698, 31.932224, 48.202087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214765, 0.207909, -0.954280,
		0.975690, -0.089336, 0.200120,
		-0.043645, -0.974060, -0.222042,
		29.606604, 31.640007, 48.135475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.215248, 32.201263, 47.976200>,  <29.637156, 32.321850, 48.290905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.215248, 32.201263, 47.976200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.014402, 31.880014, 47.847900>,  <29.893894, 31.687265, 47.770920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.014402, 31.880014, 47.847900>,  <30.215248, 32.201263, 47.976200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.014402, 31.880014, 47.847900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292699, 0.191178, -0.936898,
		0.813762, -0.564313, 0.139079,
		-0.502115, -0.803120, -0.320747,
		29.863768, 31.639078, 47.751675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.661589, 32.047279, 47.498898>,  <30.215248, 32.201263, 47.976200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.661589, 32.047279, 47.498898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.312902, 31.873077, 47.409050>,  <30.103691, 31.768557, 47.355141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.312902, 31.873077, 47.409050>,  <30.661589, 32.047279, 47.498898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.312902, 31.873077, 47.409050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072982, 0.337891, -0.938351,
		0.484549, -0.834368, -0.262760,
		-0.871715, -0.435500, -0.224618,
		30.051388, 31.742428, 47.341663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.801878, 31.608717, 46.820724>,  <30.661589, 32.047279, 47.498898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.801878, 31.608717, 46.820724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.409544, 31.685482, 46.834175>,  <30.174143, 31.731541, 46.842247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.409544, 31.685482, 46.834175>,  <30.801878, 31.608717, 46.820724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.409544, 31.685482, 46.834175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023328, 0.287026, -0.957639,
		-0.193433, -0.938502, -0.286002,
		-0.980836, 0.191911, 0.033627,
		30.115294, 31.743055, 46.844265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.577518, 31.434851, 46.151978>,  <30.801878, 31.608717, 46.820724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.577518, 31.434851, 46.151978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.290478, 31.679352, 46.285492>,  <30.118254, 31.826054, 46.365601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.290478, 31.679352, 46.285492>,  <30.577518, 31.434851, 46.151978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.290478, 31.679352, 46.285492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104263, 0.568157, -0.816288,
		-0.688605, -0.550968, -0.471442,
		-0.717602, 0.611254, 0.333790,
		30.075197, 31.862728, 46.385628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.105978, 31.532063, 45.606461>,  <30.577518, 31.434851, 46.151978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.105978, 31.532063, 45.606461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.035961, 31.828342, 45.865913>,  <29.993952, 32.006111, 46.021587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.035961, 31.828342, 45.865913>,  <30.105978, 31.532063, 45.606461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.035961, 31.828342, 45.865913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087257, 0.644542, -0.759574,
		-0.980687, -0.189554, -0.048190,
		-0.175041, 0.740699, 0.648634,
		29.983450, 32.050552, 46.060505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.578228, 31.919466, 45.192741>,  <30.105978, 31.532063, 45.606461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.578228, 31.919466, 45.192741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.678083, 32.168499, 45.489407>,  <29.737997, 32.317921, 45.667408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.678083, 32.168499, 45.489407>,  <29.578228, 31.919466, 45.192741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.678083, 32.168499, 45.489407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077198, 0.776275, -0.625650,
		-0.965258, 0.098931, 0.241849,
		0.249637, 0.622584, 0.741668,
		29.752974, 32.355274, 45.711906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.168959, 32.460358, 45.059834>,  <29.578228, 31.919466, 45.192741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.168959, 32.460358, 45.059834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.473461, 32.602695, 45.276672>,  <29.656162, 32.688099, 45.406776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.473461, 32.602695, 45.276672>,  <29.168959, 32.460358, 45.059834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.473461, 32.602695, 45.276672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042089, 0.807107, -0.588904,
		-0.647086, 0.471122, 0.599437,
		0.761255, 0.355841, 0.542096,
		29.701838, 32.709450, 45.439301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.098928, 33.121788, 45.155502>,  <29.168959, 32.460358, 45.059834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.098928, 33.121788, 45.155502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.484129, 33.121208, 45.263298>,  <29.715250, 33.120861, 45.327976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.484129, 33.121208, 45.263298>,  <29.098928, 33.121788, 45.155502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.484129, 33.121208, 45.263298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153666, 0.824447, -0.544678,
		-0.221387, 0.565937, 0.794168,
		0.963003, -0.001452, 0.269487,
		29.773029, 33.120773, 45.344143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.311638, 33.800636, 45.163277>,  <29.098928, 33.121788, 45.155502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.311638, 33.800636, 45.163277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.659014, 33.605446, 45.128197>,  <29.867439, 33.488331, 45.107147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.659014, 33.605446, 45.128197>,  <29.311638, 33.800636, 45.163277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.659014, 33.605446, 45.128197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346106, 0.723341, -0.597485,
		0.354993, 0.488528, 0.797070,
		0.868442, -0.487974, -0.087698,
		29.919546, 33.459053, 45.101887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.854288, 34.200317, 45.309258>,  <29.311638, 33.800636, 45.163277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.854288, 34.200317, 45.309258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.998175, 33.927807, 45.054237>,  <30.084507, 33.764301, 44.901226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.998175, 33.927807, 45.054237>,  <29.854288, 34.200317, 45.309258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.998175, 33.927807, 45.054237> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247553, 0.728482, -0.638773,
		0.899623, 0.071949, 0.430698,
		0.359715, -0.681276, -0.637548,
		30.106089, 33.723423, 44.862972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.537851, 34.471493, 44.986908>,  <29.854288, 34.200317, 45.309258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.537851, 34.471493, 44.986908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.354996, 34.205280, 44.750908>,  <30.245283, 34.045555, 44.609310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.354996, 34.205280, 44.750908>,  <30.537851, 34.471493, 44.986908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.354996, 34.205280, 44.750908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052642, 0.641958, -0.764930,
		0.887836, -0.380737, -0.258429,
		-0.457138, -0.665529, -0.589996,
		30.217854, 34.005623, 44.573910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.628101, 41.947800, 33.102928> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.244530, 42.001255, 33.002846>,  <43.014389, 42.033329, 32.942795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.244530, 42.001255, 33.002846>,  <43.628101, 41.947800, 33.102928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.244530, 42.001255, 33.002846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277025, -0.630817, 0.724795,
		-0.060976, 0.764337, 0.641927,
		-0.958926, 0.133635, -0.250205,
		42.956852, 42.041344, 32.927784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.176823, 42.042465, 33.716187>,  <43.628101, 41.947800, 33.102928>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.176823, 42.042465, 33.716187> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.893238, 41.937450, 33.454361>,  <42.723087, 41.874439, 33.297268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.893238, 41.937450, 33.454361>,  <43.176823, 42.042465, 33.716187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.893238, 41.937450, 33.454361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361093, -0.662113, 0.656672,
		-0.605795, 0.701911, 0.374611,
		-0.708960, -0.262540, -0.654560,
		42.680550, 41.858688, 33.257992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.480328, 42.121624, 34.032482>,  <43.176823, 42.042465, 33.716187>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.480328, 42.121624, 34.032482> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.436565, 41.856152, 33.736496>,  <42.410309, 41.696869, 33.558903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.436565, 41.856152, 33.736496>,  <42.480328, 42.121624, 34.032482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.436565, 41.856152, 33.736496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435472, -0.637190, 0.635888,
		-0.893529, 0.391808, -0.219300,
		-0.109410, -0.663683, -0.739969,
		42.403744, 41.657047, 33.514503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.772247, 41.858265, 34.105392>,  <42.480328, 42.121624, 34.032482>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.772247, 41.858265, 34.105392> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.929188, 41.571190, 33.875267>,  <42.023350, 41.398945, 33.737190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.929188, 41.571190, 33.875267>,  <41.772247, 41.858265, 34.105392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.929188, 41.571190, 33.875267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389171, -0.696247, 0.603147,
		-0.833432, -0.012748, -0.552474,
		0.392348, -0.717689, -0.575313,
		42.046894, 41.355885, 33.702675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.139862, 41.373638, 34.138172>,  <41.772247, 41.858265, 34.105392>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.139862, 41.373638, 34.138172> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.435871, 41.165222, 33.968048>,  <41.613476, 41.040173, 33.865974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.435871, 41.165222, 33.968048>,  <41.139862, 41.373638, 34.138172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.435871, 41.165222, 33.968048> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369268, -0.843266, 0.390569,
		-0.562149, -0.131977, -0.816438,
		0.740020, -0.521042, -0.425306,
		41.657875, 41.008911, 33.840454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.904545, 40.660923, 33.675781>,  <41.139862, 41.373638, 34.138172>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.904545, 40.660923, 33.675781> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.277756, 40.643867, 33.818687>,  <41.501682, 40.633633, 33.904430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.277756, 40.643867, 33.818687>,  <40.904545, 40.660923, 33.675781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.277756, 40.643867, 33.818687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212824, -0.866025, 0.452444,
		0.290104, -0.498178, -0.817104,
		0.933031, -0.042643, 0.357262,
		41.557667, 40.631073, 33.925865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.025112, 39.955112, 33.570915>,  <40.904545, 40.660923, 33.675781>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.025112, 39.955112, 33.570915> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.295635, 40.074448, 33.840317>,  <41.457947, 40.146049, 34.001957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.295635, 40.074448, 33.840317>,  <41.025112, 39.955112, 33.570915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.295635, 40.074448, 33.840317> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011846, -0.909793, 0.414894,
		0.736527, -0.288573, -0.611763,
		0.676305, 0.298333, 0.673505,
		41.498528, 40.163948, 34.042370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.576828, 39.502575, 33.494713>,  <41.025112, 39.955112, 33.570915>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.576828, 39.502575, 33.494713> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.590855, 39.652748, 33.865189>,  <41.599270, 39.742851, 34.087475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.590855, 39.652748, 33.865189>,  <41.576828, 39.502575, 33.494713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.590855, 39.652748, 33.865189> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171092, -0.915329, 0.364554,
		0.984631, 0.145679, -0.096331,
		0.035067, 0.375433, 0.926186,
		41.601376, 39.765377, 34.143044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.053772, 39.144646, 33.745979>,  <41.576828, 39.502575, 33.494713>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.053772, 39.144646, 33.745979> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.858273, 39.287441, 34.064396>,  <41.740974, 39.373119, 34.255447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.858273, 39.287441, 34.064396>,  <42.053772, 39.144646, 33.745979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.858273, 39.287441, 34.064396> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149231, -0.864789, 0.479448,
		0.859566, 0.353124, 0.369391,
		-0.488750, 0.356992, 0.796040,
		41.711647, 39.394539, 34.303207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.540451, 38.996967, 34.180954>,  <42.053772, 39.144646, 33.745979>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.540451, 38.996967, 34.180954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.192696, 39.032444, 34.375397>,  <41.984043, 39.053730, 34.492062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.192696, 39.032444, 34.375397>,  <42.540451, 38.996967, 34.180954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.192696, 39.032444, 34.375397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186614, -0.851974, 0.489199,
		0.457537, 0.516018, 0.724145,
		-0.869388, 0.088691, 0.486105,
		41.931881, 39.059052, 34.521229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.693150, 38.772797, 34.819256>,  <42.540451, 38.996967, 34.180954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.693150, 38.772797, 34.819256> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.294037, 38.747105, 34.826275>,  <42.054569, 38.731689, 34.830486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.294037, 38.747105, 34.826275>,  <42.693150, 38.772797, 34.819256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.294037, 38.747105, 34.826275> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063543, -0.839883, 0.539036,
		-0.019880, 0.538955, 0.842100,
		-0.997781, -0.064225, 0.017550,
		41.994701, 38.727837, 34.831539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.596455, 38.375237, 35.305695>,  <42.693150, 38.772797, 34.819256>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.596455, 38.375237, 35.305695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.237881, 38.350983, 35.130089>,  <42.022736, 38.336430, 35.024723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.237881, 38.350983, 35.130089>,  <42.596455, 38.375237, 35.305695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.237881, 38.350983, 35.130089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131802, -0.909303, 0.394710,
		-0.423132, 0.411693, 0.807136,
		-0.896431, -0.060632, -0.439017,
		41.968952, 38.332794, 34.998383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.123001, 38.022289, 35.755226>,  <42.596455, 38.375237, 35.305695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.123001, 38.022289, 35.755226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.937462, 37.986423, 35.402679>,  <41.826138, 37.964905, 35.191151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.937462, 37.986423, 35.402679>,  <42.123001, 38.022289, 35.755226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.937462, 37.986423, 35.402679> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064276, -0.988837, 0.134423,
		-0.883581, 0.119002, 0.452905,
		-0.463846, -0.089663, -0.881367,
		41.798309, 37.959526, 35.138268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.480522, 37.581074, 35.766071>,  <42.123001, 38.022289, 35.755226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.480522, 37.581074, 35.766071> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.581661, 37.573883, 35.379135>,  <41.642345, 37.569569, 35.146973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.581661, 37.573883, 35.379135>,  <41.480522, 37.581074, 35.766071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.581661, 37.573883, 35.379135> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032994, -0.999085, 0.027196,
		-0.966944, -0.038793, -0.252022,
		0.252847, -0.017981, -0.967339,
		41.657516, 37.568489, 35.088932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.079063, 37.023434, 35.450161>,  <41.480522, 37.581074, 35.766071>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.079063, 37.023434, 35.450161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.409927, 37.094284, 35.236828>,  <41.608444, 37.136795, 35.108829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.409927, 37.094284, 35.236828>,  <41.079063, 37.023434, 35.450161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.409927, 37.094284, 35.236828> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129487, -0.983566, -0.125822,
		-0.546852, 0.035015, -0.836497,
		0.827155, 0.177122, -0.533331,
		41.658073, 37.147419, 35.076828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.101494, 36.526608, 34.977371>,  <41.079063, 37.023434, 35.450161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.101494, 36.526608, 34.977371> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.483738, 36.644310, 34.971439>,  <41.713085, 36.714931, 34.967880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.483738, 36.644310, 34.971439>,  <41.101494, 36.526608, 34.977371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.483738, 36.644310, 34.971439> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290771, -0.950010, -0.113728,
		-0.047550, 0.104369, -0.993401,
		0.955610, 0.294260, -0.014825,
		41.770420, 36.732590, 34.966991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.298294, 36.186954, 34.433270>,  <41.101494, 36.526608, 34.977371>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.298294, 36.186954, 34.433270> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.612923, 36.267883, 34.666634>,  <41.801701, 36.316441, 34.806652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.612923, 36.267883, 34.666634>,  <41.298294, 36.186954, 34.433270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.612923, 36.267883, 34.666634> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293372, -0.953803, -0.064755,
		0.543361, 0.222092, -0.809589,
		0.786570, 0.202326, 0.583414,
		41.848892, 36.328583, 34.841660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.859459, 35.893810, 34.120075>,  <41.298294, 36.186954, 34.433270>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.859459, 35.893810, 34.120075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.970535, 35.929619, 34.502670>,  <42.037182, 35.951103, 34.732227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.970535, 35.929619, 34.502670>,  <41.859459, 35.893810, 34.120075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.970535, 35.929619, 34.502670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320774, -0.947145, -0.004477,
		0.905534, 0.308060, -0.291730,
		0.277690, 0.089526, 0.956490,
		42.053841, 35.956478, 34.789616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.473351, 35.544559, 34.217487>,  <41.859459, 35.893810, 34.120075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.473351, 35.544559, 34.217487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.326893, 35.577980, 34.588207>,  <42.239017, 35.598034, 34.810638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.326893, 35.577980, 34.588207>,  <42.473351, 35.544559, 34.217487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.326893, 35.577980, 34.588207> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281331, -0.939415, 0.195836,
		0.887012, 0.332442, 0.320457,
		-0.366146, 0.083555, 0.926799,
		42.217049, 35.603046, 34.866245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.969330, 35.301640, 34.663296>,  <42.473351, 35.544559, 34.217487>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.969330, 35.301640, 34.663296> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.644527, 35.275234, 34.895256>,  <42.449646, 35.259392, 35.034431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.644527, 35.275234, 34.895256>,  <42.969330, 35.301640, 34.663296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.644527, 35.275234, 34.895256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308250, -0.892209, 0.330068,
		0.495603, 0.446772, 0.744830,
		-0.812009, -0.066012, 0.579899,
		42.400925, 35.255432, 35.069225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.250481, 34.865761, 35.223797>,  <42.969330, 35.301640, 34.663296>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.250481, 34.865761, 35.223797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.852917, 34.853409, 35.266109>,  <42.614380, 34.845997, 35.291496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.852917, 34.853409, 35.266109>,  <43.250481, 34.865761, 35.223797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.852917, 34.853409, 35.266109> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057687, -0.963702, 0.260675,
		0.093892, 0.265190, 0.959614,
		-0.993910, -0.030881, 0.105782,
		42.554745, 34.844143, 35.297844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.021381, 35.190895, 35.269257>,  <43.250481, 34.865761, 35.223797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.021381, 35.190895, 35.269257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.386902, 35.302551, 35.387272>,  <44.606213, 35.369545, 35.458080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.386902, 35.302551, 35.387272>,  <44.021381, 35.190895, 35.269257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.386902, 35.302551, 35.387272> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095297, 0.853481, -0.512337,
		-0.394828, 0.440057, 0.806512,
		0.913799, 0.279143, 0.295042,
		44.661041, 35.386295, 35.475784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.006523, 35.865261, 35.490139>,  <44.021381, 35.190895, 35.269257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.006523, 35.865261, 35.490139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.375515, 35.798962, 35.350674>,  <44.596909, 35.759182, 35.266994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.375515, 35.798962, 35.350674>,  <44.006523, 35.865261, 35.490139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.375515, 35.798962, 35.350674> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097279, 0.774200, -0.625421,
		0.373598, 0.610853, 0.698056,
		0.922476, -0.165750, -0.348663,
		44.652256, 35.749237, 35.246075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.322941, 36.501888, 35.410404>,  <44.006523, 35.865261, 35.490139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.322941, 36.501888, 35.410404> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.514561, 36.243752, 35.172401>,  <44.629532, 36.088867, 35.029598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.514561, 36.243752, 35.172401>,  <44.322941, 36.501888, 35.410404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.514561, 36.243752, 35.172401> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003573, 0.676414, -0.736513,
		0.877779, 0.354954, 0.321732,
		0.479052, -0.645346, -0.595010,
		44.658276, 36.050148, 34.993896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.842888, 36.915577, 35.178913>,  <44.322941, 36.501888, 35.410404>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.842888, 36.915577, 35.178913> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.875607, 36.623348, 34.907745>,  <44.895237, 36.448009, 34.745045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.875607, 36.623348, 34.907745>,  <44.842888, 36.915577, 35.178913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.875607, 36.623348, 34.907745> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066502, 0.682680, -0.727686,
		0.994428, 0.014437, 0.104424,
		0.081794, -0.730575, -0.677916,
		44.900146, 36.404175, 34.704372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.365303, 37.084869, 34.657928>,  <44.842888, 36.915577, 35.178913>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.365303, 37.084869, 34.657928> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.151821, 36.827091, 34.438892>,  <45.023731, 36.672424, 34.307472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.151821, 36.827091, 34.438892>,  <45.365303, 37.084869, 34.657928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.151821, 36.827091, 34.438892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001031, 0.648010, -0.761631,
		0.845672, -0.405920, -0.346509,
		-0.533702, -0.644447, -0.547586,
		44.991711, 36.633759, 34.274616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.681114, 37.154514, 34.048786>,  <45.365303, 37.084869, 34.657928>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.681114, 37.154514, 34.048786> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.321739, 36.998280, 33.968540>,  <45.106113, 36.904537, 33.920395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.321739, 36.998280, 33.968540>,  <45.681114, 37.154514, 34.048786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.321739, 36.998280, 33.968540> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076950, 0.589859, -0.803831,
		0.432300, -0.706757, -0.560009,
		-0.898440, -0.390589, -0.200611,
		45.052208, 36.881104, 33.908356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.612534, 36.982948, 33.289768>,  <45.681114, 37.154514, 34.048786>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.612534, 36.982948, 33.289768> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.254978, 37.047298, 33.457142>,  <45.040447, 37.085907, 33.557568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.254978, 37.047298, 33.457142>,  <45.612534, 36.982948, 33.289768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.254978, 37.047298, 33.457142> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219552, 0.656693, -0.721492,
		-0.390853, -0.736800, -0.551688,
		-0.893885, 0.160873, 0.418437,
		44.986813, 37.095562, 33.582672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.262619, 37.023056, 32.717411>,  <45.612534, 36.982948, 33.289768>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.262619, 37.023056, 32.717411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.001850, 37.134789, 32.999397>,  <44.845390, 37.201828, 33.168587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.001850, 37.134789, 32.999397>,  <45.262619, 37.023056, 32.717411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.001850, 37.134789, 32.999397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418332, 0.642918, -0.641603,
		-0.632453, -0.713183, -0.302279,
		-0.651921, 0.279330, 0.704964,
		44.806274, 37.218586, 33.210888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.675209, 37.095768, 32.352451>,  <45.262619, 37.023056, 32.717411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.675209, 37.095768, 32.352451> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.599625, 37.312057, 32.680332>,  <44.554276, 37.441830, 32.877060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.599625, 37.312057, 32.680332>,  <44.675209, 37.095768, 32.352451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.599625, 37.312057, 32.680332> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338066, 0.747892, -0.571286,
		-0.921957, -0.385064, 0.041477,
		-0.188961, 0.540724, 0.819702,
		44.542934, 37.474274, 32.926243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.039555, 37.550774, 32.243744>,  <44.675209, 37.095768, 32.352451>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.039555, 37.550774, 32.243744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.201553, 37.743423, 32.554619>,  <44.298752, 37.859013, 32.741142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.201553, 37.743423, 32.554619>,  <44.039555, 37.550774, 32.243744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.201553, 37.743423, 32.554619> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392714, 0.859243, -0.327838,
		-0.825686, -0.172440, 0.537129,
		0.404992, 0.481629, 0.777184,
		44.323051, 37.887913, 32.787773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.543526, 37.958630, 32.443039>,  <44.039555, 37.550774, 32.243744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.543526, 37.958630, 32.443039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.877865, 38.134590, 32.574398>,  <44.078468, 38.240166, 32.653214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.877865, 38.134590, 32.574398>,  <43.543526, 37.958630, 32.443039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.877865, 38.134590, 32.574398> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335808, 0.882962, -0.328042,
		-0.434271, 0.163914, 0.885743,
		0.835848, 0.439899, 0.328401,
		44.128620, 38.266560, 32.672916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.338921, 38.562271, 32.721020>,  <43.543526, 37.958630, 32.443039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.338921, 38.562271, 32.721020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.722839, 38.642555, 32.642529>,  <43.953190, 38.690727, 32.595436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.722839, 38.642555, 32.642529>,  <43.338921, 38.562271, 32.721020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.722839, 38.642555, 32.642529> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250909, 0.926866, -0.279222,
		0.125830, 0.317230, 0.939964,
		0.959798, 0.200710, -0.196224,
		44.010780, 38.702770, 32.583660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.336308, 39.302937, 32.898876>,  <43.338921, 38.562271, 32.721020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.336308, 39.302937, 32.898876> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.676929, 39.231071, 32.701870>,  <43.881302, 39.187954, 32.583668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.676929, 39.231071, 32.701870>,  <43.336308, 39.302937, 32.898876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.676929, 39.231071, 32.701870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193978, 0.764801, -0.614371,
		0.487056, 0.618709, 0.616421,
		0.851557, -0.179661, -0.492517,
		43.932396, 39.177174, 32.554115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.503487, 39.919838, 32.680019>,  <43.336308, 39.302937, 32.898876>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.503487, 39.919838, 32.680019> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.685272, 39.649292, 32.448162>,  <43.794346, 39.486965, 32.309048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.685272, 39.649292, 32.448162>,  <43.503487, 39.919838, 32.680019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.685272, 39.649292, 32.448162> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220855, 0.544851, -0.808925,
		0.862950, 0.495648, 0.098238,
		0.454467, -0.676366, -0.579646,
		43.821613, 39.446381, 32.274269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.914646, 40.259293, 32.178539>,  <43.503487, 39.919838, 32.680019>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.914646, 40.259293, 32.178539> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.842178, 39.912880, 31.992138>,  <43.798698, 39.705032, 31.880297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.842178, 39.912880, 31.992138>,  <43.914646, 40.259293, 32.178539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.842178, 39.912880, 31.992138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352348, 0.499550, -0.791392,
		0.918166, 0.020820, -0.395649,
		-0.181170, -0.866035, -0.466005,
		43.787827, 39.653069, 31.852337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.107048, 40.483986, 31.551441>,  <43.914646, 40.259293, 32.178539>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.107048, 40.483986, 31.551441> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.863525, 40.169998, 31.505522>,  <43.717411, 39.981606, 31.477970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.863525, 40.169998, 31.505522>,  <44.107048, 40.483986, 31.551441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.863525, 40.169998, 31.505522> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374406, 0.411883, -0.830767,
		0.699408, -0.462797, -0.544654,
		-0.608809, -0.784966, -0.114800,
		43.680882, 39.934509, 31.471083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.159161, 40.267525, 30.857847>,  <44.107048, 40.483986, 31.551441>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.159161, 40.267525, 30.857847> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.822277, 40.086407, 30.974922>,  <43.620148, 39.977737, 31.045168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.822277, 40.086407, 30.974922>,  <44.159161, 40.267525, 30.857847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.822277, 40.086407, 30.974922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449510, 0.289949, -0.844908,
		0.297742, -0.843133, -0.447746,
		-0.842194, -0.452831, 0.292667,
		43.569614, 39.950569, 31.062729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.843422, 39.975864, 30.253271>,  <44.159161, 40.267525, 30.857847>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.843422, 39.975864, 30.253271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.536587, 40.008518, 30.507803>,  <43.352486, 40.028111, 30.660522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.536587, 40.008518, 30.507803>,  <43.843422, 39.975864, 30.253271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.536587, 40.008518, 30.507803> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568263, 0.373889, -0.732997,
		-0.297758, -0.923874, -0.240412,
		-0.767083, 0.081639, 0.636332,
		43.306461, 40.033009, 30.698702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.263802, 39.659168, 29.970964>,  <43.843422, 39.975864, 30.253271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.263802, 39.659168, 29.970964> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.094578, 39.887138, 30.252733>,  <42.993046, 40.023922, 30.421795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.094578, 39.887138, 30.252733>,  <43.263802, 39.659168, 29.970964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.094578, 39.887138, 30.252733> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611618, 0.393980, -0.686078,
		-0.668541, -0.721086, 0.181901,
		-0.423056, 0.569926, 0.704421,
		42.967663, 40.058117, 30.464060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.641380, 39.652630, 29.813660>,  <43.263802, 39.659168, 29.970964>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.641380, 39.652630, 29.813660> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.636898, 39.985676, 30.035156>,  <42.634209, 40.185501, 30.168055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.636898, 39.985676, 30.035156>,  <42.641380, 39.652630, 29.813660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.636898, 39.985676, 30.035156> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747782, 0.360669, -0.557440,
		-0.663849, -0.420326, 0.618571,
		-0.011207, 0.832613, 0.553743,
		42.633537, 40.235458, 30.201279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.934418, 39.752895, 29.813826>,  <42.641380, 39.652630, 29.813660>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.934418, 39.752895, 29.813826> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.095615, 40.099152, 29.932663>,  <42.192333, 40.306904, 30.003965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.095615, 40.099152, 29.932663>,  <41.934418, 39.752895, 29.813826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.095615, 40.099152, 29.932663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655759, 0.499560, -0.566057,
		-0.638416, 0.033297, 0.768971,
		0.402995, 0.865639, 0.297093,
		42.216515, 40.358845, 30.021791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<35.001858, 35.633919, 41.807228> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871151, 35.256927, 41.835419>,  <34.792728, 35.030735, 41.852333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871151, 35.256927, 41.835419>,  <35.001858, 35.633919, 41.807228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.871151, 35.256927, 41.835419> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539110, -0.247124, -0.805165,
		0.776263, -0.225106, 0.588849,
		-0.326766, -0.942474, 0.070476,
		34.773121, 34.974186, 41.856560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586468, 35.185375, 41.635563>,  <35.001858, 35.633919, 41.807228>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586468, 35.185375, 41.635563> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.271301, 34.945358, 41.580215>,  <35.082203, 34.801350, 41.547009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.271301, 34.945358, 41.580215>,  <35.586468, 35.185375, 41.635563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.271301, 34.945358, 41.580215> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369668, -0.281196, -0.885593,
		0.492480, -0.748921, 0.443373,
		-0.787914, -0.600038, -0.138369,
		35.034927, 34.765347, 41.538704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800545, 34.498318, 41.414692>,  <35.586468, 35.185375, 41.635563>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.800545, 34.498318, 41.414692> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415134, 34.516678, 41.309235>,  <35.183887, 34.527695, 41.245960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415134, 34.516678, 41.309235>,  <35.800545, 34.498318, 41.414692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.415134, 34.516678, 41.309235> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232606, -0.343466, -0.909904,
		-0.132319, -0.938043, 0.320262,
		-0.963528, 0.045903, -0.263641,
		35.126076, 34.530449, 41.230141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653282, 33.868782, 41.017460>,  <35.800545, 34.498318, 41.414692>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.653282, 33.868782, 41.017460> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397968, 34.157181, 40.909565>,  <35.244781, 34.330219, 40.844826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397968, 34.157181, 40.909565>,  <35.653282, 33.868782, 41.017460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397968, 34.157181, 40.909565> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028998, -0.327636, -0.944359,
		-0.769255, -0.610591, 0.188217,
		-0.638284, 0.720995, -0.269742,
		35.206482, 34.373478, 40.828644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.258137, 33.580639, 40.525700>,  <35.653282, 33.868782, 41.017460>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.258137, 33.580639, 40.525700> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185959, 33.967258, 40.452782>,  <35.142654, 34.199230, 40.409031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185959, 33.967258, 40.452782>,  <35.258137, 33.580639, 40.525700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185959, 33.967258, 40.452782> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120686, -0.162177, -0.979354,
		-0.976153, -0.198717, -0.087385,
		-0.180442, 0.966545, -0.182292,
		35.131824, 34.257221, 40.398094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.704548, 33.666683, 39.990231>,  <35.258137, 33.580639, 40.525700>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.704548, 33.666683, 39.990231> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910744, 34.008045, 39.959328>,  <35.034462, 34.212860, 39.940784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910744, 34.008045, 39.959328>,  <34.704548, 33.666683, 39.990231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.910744, 34.008045, 39.959328> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108463, -0.154420, -0.982034,
		-0.850001, 0.497853, -0.172165,
		0.515494, 0.853403, -0.077258,
		35.065392, 34.264065, 39.936150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366123, 33.990070, 39.358273>,  <34.704548, 33.666683, 39.990231>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366123, 33.990070, 39.358273> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711262, 34.184872, 39.412418>,  <34.918346, 34.301750, 39.444908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711262, 34.184872, 39.412418>,  <34.366123, 33.990070, 39.358273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711262, 34.184872, 39.412418> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086987, 0.120748, -0.988865,
		-0.497924, 0.865014, 0.061824,
		0.862847, 0.487001, 0.135368,
		34.970116, 34.330971, 39.453030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396774, 34.346867, 38.700630>,  <34.366123, 33.990070, 39.358273>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396774, 34.346867, 38.700630> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.761993, 34.394291, 38.856728>,  <34.981125, 34.422745, 38.950386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.761993, 34.394291, 38.856728>,  <34.396774, 34.346867, 38.700630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761993, 34.394291, 38.856728> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352367, 0.252530, -0.901147,
		-0.205388, 0.960298, 0.188795,
		0.913046, 0.118559, 0.390244,
		35.035908, 34.429859, 38.973801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.704155, 34.996353, 38.562862>,  <34.396774, 34.346867, 38.700630>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.704155, 34.996353, 38.562862> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012737, 34.754993, 38.643620>,  <35.197887, 34.610176, 38.692074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012737, 34.754993, 38.643620>,  <34.704155, 34.996353, 38.562862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012737, 34.754993, 38.643620> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524806, 0.424013, -0.738100,
		0.359767, 0.675366, 0.643777,
		0.771457, -0.603402, 0.201890,
		35.244175, 34.573975, 38.704185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.238693, 35.390995, 38.305302>,  <34.704155, 34.996353, 38.562862>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.238693, 35.390995, 38.305302> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447826, 35.052910, 38.349586>,  <35.573307, 34.850060, 38.376156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447826, 35.052910, 38.349586>,  <35.238693, 35.390995, 38.305302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447826, 35.052910, 38.349586> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503118, 0.201132, -0.840487,
		0.688123, 0.495138, 0.530401,
		0.522837, -0.845213, 0.110710,
		35.604679, 34.799347, 38.382801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920410, 35.522789, 38.104401>,  <35.238693, 35.390995, 38.305302>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920410, 35.522789, 38.104401> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894543, 35.124496, 38.078079>,  <35.879025, 34.885521, 38.062286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894543, 35.124496, 38.078079>,  <35.920410, 35.522789, 38.104401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894543, 35.124496, 38.078079> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498217, 0.024919, -0.866694,
		0.864637, -0.088830, 0.494481,
		-0.064666, -0.995735, -0.065803,
		35.875141, 34.825775, 38.058338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614727, 35.268589, 37.937717>,  <35.920410, 35.522789, 38.104401>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614727, 35.268589, 37.937717> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360500, 34.971848, 37.852207>,  <36.207962, 34.793804, 37.800900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360500, 34.971848, 37.852207>,  <36.614727, 35.268589, 37.937717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360500, 34.971848, 37.852207> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537312, -0.226198, -0.812484,
		0.554389, -0.631257, 0.542372,
		-0.635570, -0.741855, -0.213780,
		36.169830, 34.749290, 37.788074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011044, 34.628265, 37.806137>,  <36.614727, 35.268589, 37.937717>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.011044, 34.628265, 37.806137> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654491, 34.644310, 37.625549>,  <36.440559, 34.653938, 37.517197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654491, 34.644310, 37.625549>,  <37.011044, 34.628265, 37.806137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654491, 34.644310, 37.625549> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427695, -0.255309, -0.867118,
		-0.150049, -0.966027, 0.210421,
		-0.891382, 0.040114, -0.451474,
		36.387077, 34.656345, 37.490108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267284, 35.264183, 37.399704>,  <37.011044, 34.628265, 37.806137>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.267284, 35.264183, 37.399704> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462540, 35.015869, 37.645096>,  <37.579693, 34.866882, 37.792332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462540, 35.015869, 37.645096>,  <37.267284, 35.264183, 37.399704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.462540, 35.015869, 37.645096> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856712, -0.475018, 0.201003,
		0.166632, -0.623689, -0.763705,
		0.488137, -0.620782, 0.613475,
		37.608982, 34.829636, 37.829140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870865, 34.842548, 37.186504>,  <37.267284, 35.264183, 37.399704>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870865, 34.842548, 37.186504> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198929, 34.620121, 37.240353>,  <38.395767, 34.486664, 37.272663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198929, 34.620121, 37.240353>,  <37.870865, 34.842548, 37.186504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.198929, 34.620121, 37.240353> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490688, -0.562661, 0.665311,
		-0.294214, -0.611718, -0.734329,
		0.820161, -0.556070, 0.134620,
		38.444977, 34.453300, 37.280739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609123, 34.150700, 37.070122>,  <37.870865, 34.842548, 37.186504>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609123, 34.150700, 37.070122> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944256, 34.151684, 37.288490>,  <38.145336, 34.152275, 37.419514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944256, 34.151684, 37.288490>,  <37.609123, 34.150700, 37.070122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944256, 34.151684, 37.288490> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397150, -0.683388, 0.612578,
		0.374584, -0.730051, -0.571588,
		0.837830, 0.002456, 0.545926,
		38.195606, 34.152420, 37.452267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810482, 33.471718, 37.182560>,  <37.609123, 34.150700, 37.070122>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810482, 33.471718, 37.182560> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016743, 33.657925, 37.470280>,  <38.140499, 33.769650, 37.642914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016743, 33.657925, 37.470280>,  <37.810482, 33.471718, 37.182560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016743, 33.657925, 37.470280> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411821, -0.601525, 0.684523,
		0.751334, -0.649201, -0.118470,
		0.515655, 0.465517, 0.719301,
		38.171440, 33.797581, 37.686069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155960, 32.951992, 37.563148>,  <37.810482, 33.471718, 37.182560>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.155960, 32.951992, 37.563148> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.173370, 33.256393, 37.822063>,  <38.183815, 33.439034, 37.977413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.173370, 33.256393, 37.822063>,  <38.155960, 32.951992, 37.563148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.173370, 33.256393, 37.822063> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439373, -0.567303, 0.696504,
		0.897250, -0.314715, 0.309673,
		0.043522, 0.761000, 0.647290,
		38.186428, 33.484695, 38.016251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428673, 32.664131, 38.180859>,  <38.155960, 32.951992, 37.563148>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.428673, 32.664131, 38.180859> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238281, 32.996098, 38.297260>,  <38.124046, 33.195278, 38.367100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238281, 32.996098, 38.297260>,  <38.428673, 32.664131, 38.180859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238281, 32.996098, 38.297260> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360219, -0.485831, 0.796373,
		0.802303, 0.274230, 0.530196,
		-0.475975, 0.829919, 0.291000,
		38.095490, 33.245075, 38.384560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413162, 32.576591, 38.912319>,  <38.428673, 32.664131, 38.180859>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.413162, 32.576591, 38.912319> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143143, 32.864567, 38.847820>,  <37.981133, 33.037354, 38.809120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143143, 32.864567, 38.847820>,  <38.413162, 32.576591, 38.912319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.143143, 32.864567, 38.847820> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460626, -0.240550, 0.854377,
		0.576314, 0.651015, 0.494006,
		-0.675045, 0.719941, -0.161243,
		37.940628, 33.080547, 38.799446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387196, 32.845749, 39.607140>,  <38.413162, 32.576591, 38.912319>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.387196, 32.845749, 39.607140> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.051697, 32.949986, 39.415894>,  <37.850399, 33.012527, 39.301144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.051697, 32.949986, 39.415894>,  <38.387196, 32.845749, 39.607140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.051697, 32.949986, 39.415894> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544517, -0.397136, 0.738772,
		0.002640, 0.879986, 0.474993,
		-0.838746, 0.260592, -0.478119,
		37.800072, 33.028164, 39.272457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910854, 33.263374, 40.092537>,  <38.387196, 32.845749, 39.607140>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910854, 33.263374, 40.092537> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681995, 33.115192, 39.799850>,  <37.544678, 33.026283, 39.624241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681995, 33.115192, 39.799850>,  <37.910854, 33.263374, 40.092537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681995, 33.115192, 39.799850> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601862, -0.416416, 0.681440,
		-0.557141, 0.830277, 0.015289,
		-0.572151, -0.370456, -0.731714,
		37.510349, 33.004055, 39.580338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263794, 33.277176, 40.312767>,  <37.910854, 33.263374, 40.092537>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.263794, 33.277176, 40.312767> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203732, 33.037659, 39.998085>,  <37.167694, 32.893948, 39.809277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203732, 33.037659, 39.998085>,  <37.263794, 33.277176, 40.312767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203732, 33.037659, 39.998085> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687794, -0.508340, 0.518199,
		-0.710206, 0.618898, -0.335518,
		-0.150155, -0.598796, -0.786700,
		37.158684, 32.858021, 39.762074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566067, 33.260761, 40.382648>,  <37.263794, 33.277176, 40.312767>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.566067, 33.260761, 40.382648> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720379, 32.966965, 40.159328>,  <36.812965, 32.790688, 40.025337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720379, 32.966965, 40.159328>,  <36.566067, 33.260761, 40.382648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.720379, 32.966965, 40.159328> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613367, -0.656227, 0.439484,
		-0.689168, 0.172899, -0.703672,
		0.385782, -0.734488, -0.558302,
		36.836113, 32.746620, 39.991840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977959, 32.996681, 40.027031>,  <36.566067, 33.260761, 40.382648>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977959, 32.996681, 40.027031> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.280876, 32.741554, 40.083172>,  <36.462627, 32.588478, 40.116856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.280876, 32.741554, 40.083172>,  <35.977959, 32.996681, 40.027031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.280876, 32.741554, 40.083172> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572011, -0.544094, 0.613812,
		-0.315133, -0.545119, -0.776876,
		0.757294, -0.637814, 0.140352,
		36.508064, 32.550209, 40.125278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.551514, 32.343727, 40.039341>,  <35.977959, 32.996681, 40.027031>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.551514, 32.343727, 40.039341> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921303, 32.264748, 40.169800>,  <36.143177, 32.217361, 40.248074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921303, 32.264748, 40.169800>,  <35.551514, 32.343727, 40.039341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921303, 32.264748, 40.169800> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381212, -0.491313, 0.783128,
		0.005614, -0.848309, -0.529472,
		0.924471, -0.197445, 0.326143,
		36.198643, 32.205513, 40.267643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611008, 31.634476, 40.211506>,  <35.551514, 32.343727, 40.039341>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611008, 31.634476, 40.211506> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931789, 31.772337, 40.406681>,  <36.124256, 31.855053, 40.523788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931789, 31.772337, 40.406681>,  <35.611008, 31.634476, 40.211506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931789, 31.772337, 40.406681> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224614, -0.582894, 0.780886,
		0.553553, -0.735831, -0.390039,
		0.801952, 0.344654, 0.487941,
		36.172375, 31.875732, 40.553062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.853661, 30.976913, 40.687729>,  <35.611008, 31.634476, 40.211506>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.853661, 30.976913, 40.687729> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994007, 31.330860, 40.810299>,  <36.078217, 31.543228, 40.883842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994007, 31.330860, 40.810299>,  <35.853661, 30.976913, 40.687729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.994007, 31.330860, 40.810299> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358327, -0.175457, 0.916960,
		0.865155, -0.431534, 0.255510,
		0.350868, 0.884869, 0.306428,
		36.099266, 31.596321, 40.902229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150681, 30.272888, 40.502819>,  <35.853661, 30.976913, 40.687729>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.150681, 30.272888, 40.502819> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873688, 29.989979, 40.445919>,  <35.707493, 29.820232, 40.411781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873688, 29.989979, 40.445919>,  <36.150681, 30.272888, 40.502819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.873688, 29.989979, 40.445919> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037461, 0.232155, -0.971957,
		0.720464, -0.667732, -0.187258,
		-0.692480, -0.707275, -0.142246,
		35.665943, 29.777796, 40.403244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344574, 29.788321, 39.927692>,  <36.150681, 30.272888, 40.502819>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.344574, 29.788321, 39.927692> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947037, 29.749737, 39.949474>,  <35.708515, 29.726587, 39.962543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947037, 29.749737, 39.949474>,  <36.344574, 29.788321, 39.927692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947037, 29.749737, 39.949474> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071868, 0.187458, -0.979640,
		0.084285, -0.977525, -0.193236,
		-0.993847, -0.096456, 0.054453,
		35.648884, 29.720798, 39.965809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139481, 29.508371, 39.251907>,  <36.344574, 29.788321, 39.927692>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.139481, 29.508371, 39.251907> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787384, 29.632181, 39.395779>,  <35.576126, 29.706467, 39.482101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787384, 29.632181, 39.395779>,  <36.139481, 29.508371, 39.251907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787384, 29.632181, 39.395779> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296878, 0.232083, -0.926283,
		-0.370180, -0.922135, -0.112399,
		-0.880244, 0.309523, 0.359674,
		35.523312, 29.725039, 39.503681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537281, 29.136618, 38.938011>,  <36.139481, 29.508371, 39.251907>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.537281, 29.136618, 38.938011> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369278, 29.476440, 39.065662>,  <35.268475, 29.680334, 39.142254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369278, 29.476440, 39.065662>,  <35.537281, 29.136618, 38.938011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369278, 29.476440, 39.065662> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304755, 0.199198, -0.931367,
		-0.854821, -0.488438, 0.175242,
		-0.420007, 0.849558, 0.319132,
		35.243275, 29.731308, 39.161404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.941586, 29.129419, 38.558456>,  <35.537281, 29.136618, 38.938011>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.941586, 29.129419, 38.558456> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966915, 29.510399, 38.677677>,  <34.982113, 29.738987, 38.749210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966915, 29.510399, 38.677677>,  <34.941586, 29.129419, 38.558456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966915, 29.510399, 38.677677> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321067, 0.302215, -0.897542,
		-0.944937, -0.038858, 0.324937,
		0.063324, 0.952448, 0.298050,
		34.985912, 29.796133, 38.767094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303055, 29.443100, 38.420376>,  <34.941586, 29.129419, 38.558456>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.303055, 29.443100, 38.420376> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.549007, 29.758030, 38.438416>,  <34.696579, 29.946987, 38.449242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.549007, 29.758030, 38.438416>,  <34.303055, 29.443100, 38.420376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.549007, 29.758030, 38.438416> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278307, 0.270154, -0.921717,
		-0.737876, 0.554198, 0.385232,
		0.614886, 0.787325, 0.045103,
		34.733475, 29.994228, 38.451946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910347, 30.137697, 38.487331>,  <34.303055, 29.443100, 38.420376>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910347, 30.137697, 38.487331> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278641, 30.202007, 38.345116>,  <34.499615, 30.240593, 38.259789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278641, 30.202007, 38.345116>,  <33.910347, 30.137697, 38.487331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.278641, 30.202007, 38.345116> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389903, 0.414514, -0.822285,
		0.015172, 0.895728, 0.444343,
		0.920731, 0.160775, -0.355536,
		34.554859, 30.250240, 38.238453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.896561, 30.831364, 38.118137>,  <33.910347, 30.137697, 38.487331>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.896561, 30.831364, 38.118137> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.235863, 30.661572, 37.991474>,  <34.439445, 30.559696, 37.915478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.235863, 30.661572, 37.991474>,  <33.896561, 30.831364, 38.118137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.235863, 30.661572, 37.991474> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180343, 0.330667, -0.926356,
		0.497928, 0.842897, 0.203940,
		0.848259, -0.424480, -0.316659,
		34.490341, 30.534227, 37.896477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141201, 31.401815, 37.765911>,  <33.896561, 30.831364, 38.118137>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141201, 31.401815, 37.765911> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308563, 31.070780, 37.616226>,  <34.408981, 30.872158, 37.526417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308563, 31.070780, 37.616226>,  <34.141201, 31.401815, 37.765911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308563, 31.070780, 37.616226> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069402, 0.439936, -0.895343,
		0.905606, 0.348644, 0.241507,
		0.418404, -0.827589, -0.374212,
		34.434086, 30.822502, 37.503963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.639450, 31.643236, 37.392422>,  <34.141201, 31.401815, 37.765911>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.639450, 31.643236, 37.392422> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611561, 31.269543, 37.252510>,  <34.594830, 31.045326, 37.168564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611561, 31.269543, 37.252510>,  <34.639450, 31.643236, 37.392422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611561, 31.269543, 37.252510> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165732, 0.356607, -0.919437,
		0.983703, -0.006133, -0.179695,
		-0.069719, -0.934234, -0.349779,
		34.590645, 30.989273, 37.147575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996513, 31.553385, 36.782898>,  <34.639450, 31.643236, 37.392422>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996513, 31.553385, 36.782898> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736988, 31.253981, 36.728088>,  <34.581272, 31.074337, 36.695202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736988, 31.253981, 36.728088>,  <34.996513, 31.553385, 36.782898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.736988, 31.253981, 36.728088> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021780, 0.198259, -0.979907,
		0.760639, -0.632789, -0.144935,
		-0.648809, -0.748513, -0.137021,
		34.542347, 31.029427, 36.686981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293579, 31.124125, 36.188457>,  <34.996513, 31.553385, 36.782898>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293579, 31.124125, 36.188457> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897881, 31.088846, 36.235119>,  <34.660461, 31.067678, 36.263115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897881, 31.088846, 36.235119>,  <35.293579, 31.124125, 36.188457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897881, 31.088846, 36.235119> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132631, 0.204968, -0.969741,
		0.061614, -0.974787, -0.214461,
		-0.989248, -0.088194, 0.116659,
		34.601105, 31.062387, 36.270115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.831299, 28.294933, 43.859863> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.437855, 28.321703, 43.792896>,  <35.201786, 28.337765, 43.752716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.437855, 28.321703, 43.792896>,  <35.831299, 28.294933, 43.859863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437855, 28.321703, 43.792896> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163949, -0.054332, -0.984972,
		-0.075022, -0.996277, 0.042469,
		-0.983612, 0.066932, -0.167414,
		35.142773, 28.341780, 43.742672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709515, 27.860119, 43.326862>,  <35.831299, 28.294933, 43.859863>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709515, 27.860119, 43.326862> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.395317, 28.107393, 43.315243>,  <35.206799, 28.255758, 43.308270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.395317, 28.107393, 43.315243>,  <35.709515, 27.860119, 43.326862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395317, 28.107393, 43.315243> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170361, 0.170865, -0.970455,
		-0.594958, -0.767236, -0.239528,
		-0.785495, 0.618186, -0.029049,
		35.159668, 28.292849, 43.306526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.515469, 27.770611, 42.691441>,  <35.709515, 27.860119, 43.326862>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.515469, 27.770611, 42.691441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.317989, 28.106050, 42.783546>,  <35.199501, 28.307314, 42.838810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.317989, 28.106050, 42.783546>,  <35.515469, 27.770611, 42.691441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.317989, 28.106050, 42.783546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206298, 0.370158, -0.905773,
		-0.844812, -0.399671, -0.355745,
		-0.493693, 0.838598, 0.230263,
		35.169880, 28.357630, 42.852627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.051888, 27.873177, 42.159012>,  <35.515469, 27.770611, 42.691441>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.051888, 27.873177, 42.159012> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.117256, 28.227152, 42.333450>,  <35.156475, 28.439537, 42.438114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.117256, 28.227152, 42.333450>,  <35.051888, 27.873177, 42.159012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117256, 28.227152, 42.333450> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026999, 0.445885, -0.894683,
		-0.986187, 0.134435, 0.096759,
		0.163420, 0.884937, 0.436096,
		35.166283, 28.492634, 42.464279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.536190, 28.356539, 41.893162>,  <35.051888, 27.873177, 42.159012>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.536190, 28.356539, 41.893162> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.805050, 28.597874, 42.064838>,  <34.966366, 28.742674, 42.167847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.805050, 28.597874, 42.064838>,  <34.536190, 28.356539, 41.893162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.805050, 28.597874, 42.064838> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002882, 0.581790, -0.813334,
		-0.740414, 0.545441, 0.392787,
		0.672145, 0.603336, 0.429193,
		35.006695, 28.778873, 42.193596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.257580, 29.102423, 41.797363>,  <34.536190, 28.356539, 41.893162>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.257580, 29.102423, 41.797363> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.655643, 29.098467, 41.836491>,  <34.894482, 29.096092, 41.859966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.655643, 29.098467, 41.836491>,  <34.257580, 29.102423, 41.797363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655643, 29.098467, 41.836491> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093060, 0.415731, -0.904714,
		-0.031718, 0.909434, 0.414637,
		0.995155, -0.009890, 0.097818,
		34.954189, 29.095499, 41.865837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418251, 29.667170, 41.440960>,  <34.257580, 29.102423, 41.797363>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.418251, 29.667170, 41.440960> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.754681, 29.452688, 41.469479>,  <34.956539, 29.323999, 41.486591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.754681, 29.452688, 41.469479>,  <34.418251, 29.667170, 41.440960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754681, 29.452688, 41.469479> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310485, 0.370628, -0.875348,
		0.442938, 0.758369, 0.478208,
		0.841074, -0.536201, 0.071297,
		35.007004, 29.291828, 41.490868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026745, 30.152683, 41.492218>,  <34.418251, 29.667170, 41.440960>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026745, 30.152683, 41.492218> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.145096, 29.807253, 41.328907>,  <35.216106, 29.599995, 41.230923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.145096, 29.807253, 41.328907>,  <35.026745, 30.152683, 41.492218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.145096, 29.807253, 41.328907> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262285, 0.484432, -0.834585,
		0.918511, 0.139852, 0.369837,
		0.295879, -0.863578, -0.408275,
		35.233860, 29.548180, 41.206425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.606750, 30.284822, 41.201473>,  <35.026745, 30.152683, 41.492218>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.606750, 30.284822, 41.201473> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.540276, 29.934803, 41.019630>,  <35.500389, 29.724791, 40.910522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.540276, 29.934803, 41.019630>,  <35.606750, 30.284822, 41.201473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.540276, 29.934803, 41.019630> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310527, 0.391126, -0.866368,
		0.935924, -0.285151, 0.206725,
		-0.166190, -0.875048, -0.454612,
		35.490417, 29.672289, 40.883247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106098, 30.821495, 41.425945>,  <35.606750, 30.284822, 41.201473>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.106098, 30.821495, 41.425945> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.029091, 31.213461, 41.405132>,  <35.982887, 31.448641, 41.392643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.029091, 31.213461, 41.405132>,  <36.106098, 30.821495, 41.425945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029091, 31.213461, 41.405132> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439432, -0.038675, 0.897443,
		0.877404, 0.195640, 0.438050,
		-0.192517, 0.979913, -0.052037,
		35.971336, 31.507435, 41.389523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128712, 31.024988, 42.112278>,  <36.106098, 30.821495, 41.425945>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128712, 31.024988, 42.112278> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.937176, 31.345467, 41.968723>,  <35.822254, 31.537754, 41.882591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.937176, 31.345467, 41.968723>,  <36.128712, 31.024988, 42.112278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937176, 31.345467, 41.968723> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550745, 0.044206, 0.833502,
		0.683662, 0.596769, 0.420086,
		-0.478838, 0.801194, -0.358890,
		35.793526, 31.585825, 41.861057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147175, 31.663406, 42.674828>,  <36.128712, 31.024988, 42.112278>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147175, 31.663406, 42.674828> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.830036, 31.713848, 42.436333>,  <35.639755, 31.744112, 42.293236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.830036, 31.713848, 42.436333>,  <36.147175, 31.663406, 42.674828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830036, 31.713848, 42.436333> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596829, 0.037228, 0.801504,
		0.123268, 0.991318, 0.045746,
		-0.792843, 0.126102, -0.596237,
		35.592182, 31.751678, 42.257462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788837, 32.266624, 43.064114>,  <36.147175, 31.663406, 42.674828>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788837, 32.266624, 43.064114> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.519154, 32.103107, 42.818081>,  <35.357342, 32.004997, 42.670460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.519154, 32.103107, 42.818081>,  <35.788837, 32.266624, 43.064114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519154, 32.103107, 42.818081> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715809, 0.156661, 0.680496,
		-0.181822, 0.899080, -0.398241,
		-0.674209, -0.408794, -0.615085,
		35.316891, 31.980469, 42.633556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254711, 32.659592, 43.150692>,  <35.788837, 32.266624, 43.064114>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254711, 32.659592, 43.150692> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.105331, 32.327026, 42.986115>,  <35.015705, 32.127487, 42.887367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.105331, 32.327026, 42.986115>,  <35.254711, 32.659592, 43.150692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105331, 32.327026, 42.986115> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689105, -0.048290, 0.723051,
		-0.621023, 0.553551, -0.554897,
		-0.373450, -0.831414, -0.411444,
		34.993298, 32.077602, 42.862682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446705, 32.748459, 43.059288>,  <35.254711, 32.659592, 43.150692>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446705, 32.748459, 43.059288> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.553986, 32.363457, 43.075523>,  <34.618355, 32.132454, 43.085262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.553986, 32.363457, 43.075523>,  <34.446705, 32.748459, 43.059288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553986, 32.363457, 43.075523> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763198, -0.186577, 0.618641,
		-0.587875, -0.196896, -0.784625,
		0.268201, -0.962507, 0.040586,
		34.634445, 32.074703, 43.087700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.821095, 32.257072, 42.944561>,  <34.446705, 32.748459, 43.059288>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.821095, 32.257072, 42.944561> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.078365, 32.046833, 43.167297>,  <34.232727, 31.920691, 43.300938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.078365, 32.046833, 43.167297>,  <33.821095, 32.257072, 42.944561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.078365, 32.046833, 43.167297> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709946, -0.136880, 0.690826,
		-0.286875, -0.839651, -0.461183,
		0.643179, -0.525596, 0.556839,
		34.271320, 31.889154, 43.334351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.365650, 31.835928, 43.369324>,  <33.821095, 32.257072, 42.944561>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.365650, 31.835928, 43.369324> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.724525, 31.763681, 43.530533>,  <33.939850, 31.720333, 43.627258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.724525, 31.763681, 43.530533>,  <33.365650, 31.835928, 43.369324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.724525, 31.763681, 43.530533> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441635, -0.361601, 0.821099,
		-0.002572, -0.914670, -0.404192,
		0.897191, -0.180618, 0.403021,
		33.993683, 31.709496, 43.651440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234978, 31.248579, 43.842300>,  <33.365650, 31.835928, 43.369324>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.234978, 31.248579, 43.842300> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.593742, 31.374630, 43.966396>,  <33.809002, 31.450260, 44.040855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.593742, 31.374630, 43.966396>,  <33.234978, 31.248579, 43.842300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593742, 31.374630, 43.966396> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248457, -0.221254, 0.943035,
		0.365817, -0.922899, -0.120150,
		0.896910, 0.315126, 0.310239,
		33.862816, 31.469168, 44.059467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432220, 30.683506, 44.339252>,  <33.234978, 31.248579, 43.842300>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432220, 30.683506, 44.339252> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.637444, 31.019257, 44.411057>,  <33.760578, 31.220707, 44.454140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.637444, 31.019257, 44.411057>,  <33.432220, 30.683506, 44.339252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.637444, 31.019257, 44.411057> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277122, -0.035961, 0.960162,
		0.812391, -0.542362, 0.214159,
		0.513053, 0.839375, 0.179515,
		33.791359, 31.271069, 44.464912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856133, 30.576553, 44.799393>,  <33.432220, 30.683506, 44.339252>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856133, 30.576553, 44.799393> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.830700, 30.973923, 44.837475>,  <33.815441, 31.212345, 44.860325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.830700, 30.973923, 44.837475>,  <33.856133, 30.576553, 44.799393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830700, 30.973923, 44.837475> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117711, -0.102199, 0.987775,
		0.991010, 0.051597, 0.123435,
		-0.063581, 0.993425, 0.095207,
		33.811626, 31.271950, 44.866035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308262, 30.653812, 45.296089>,  <33.856133, 30.576553, 44.799393>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308262, 30.653812, 45.296089> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.123577, 31.008623, 45.295151>,  <34.012768, 31.221510, 45.294586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.123577, 31.008623, 45.295151>,  <34.308262, 30.653812, 45.296089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.123577, 31.008623, 45.295151> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182765, 0.097718, 0.978288,
		0.867997, 0.451258, -0.207235,
		-0.461712, 0.887027, -0.002345,
		33.985065, 31.274731, 45.294449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.704426, 31.243025, 45.561890>,  <34.308262, 30.653812, 45.296089>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.704426, 31.243025, 45.561890> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.325729, 31.368156, 45.592419>,  <34.098511, 31.443235, 45.610737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.325729, 31.368156, 45.592419>,  <34.704426, 31.243025, 45.561890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325729, 31.368156, 45.592419> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161679, 0.256843, 0.952833,
		0.278472, 0.914423, -0.293741,
		-0.946738, 0.312829, 0.076319,
		34.041706, 31.462006, 45.615314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749069, 31.853205, 46.081024>,  <34.704426, 31.243025, 45.561890>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749069, 31.853205, 46.081024> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.365845, 31.747135, 46.037567>,  <34.135910, 31.683495, 46.011494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.365845, 31.747135, 46.037567>,  <34.749069, 31.853205, 46.081024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.365845, 31.747135, 46.037567> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152595, 0.151190, 0.976656,
		-0.242557, 0.952274, -0.185314,
		-0.958061, -0.265173, -0.108640,
		34.078426, 31.667583, 46.004974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<27.898355, 31.063259, 44.401352> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.271290, 30.919373, 44.386631>,  <28.495050, 30.833040, 44.377796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.271290, 30.919373, 44.386631>,  <27.898355, 31.063259, 44.401352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.271290, 30.919373, 44.386631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131378, 0.431816, -0.892342,
		0.336882, 0.827127, 0.449856,
		0.932336, -0.359715, -0.036805,
		28.550991, 30.811459, 44.375591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.368097, 31.695374, 44.082531>,  <27.898355, 31.063259, 44.401352>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.368097, 31.695374, 44.082531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.594334, 31.371157, 44.021694>,  <28.730076, 31.176626, 43.985191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.594334, 31.371157, 44.021694>,  <28.368097, 31.695374, 44.082531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.594334, 31.371157, 44.021694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231691, 0.333165, -0.913959,
		0.791472, 0.481688, 0.376230,
		0.565589, -0.810542, -0.152088,
		28.764011, 31.127995, 43.976067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.956413, 31.953611, 43.849037>,  <28.368097, 31.695374, 44.082531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.956413, 31.953611, 43.849037> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.951590, 31.570173, 43.735229>,  <28.948694, 31.340111, 43.666943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.951590, 31.570173, 43.735229>,  <28.956413, 31.953611, 43.849037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.951590, 31.570173, 43.735229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298584, 0.268108, -0.915951,
		0.954307, -0.096001, 0.282987,
		-0.012061, -0.958594, -0.284522,
		28.947971, 31.282595, 43.649872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.445143, 31.986757, 43.409664>,  <28.956413, 31.953611, 43.849037>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.445143, 31.986757, 43.409664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.286192, 31.631397, 43.317715>,  <29.190823, 31.418182, 43.262547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.286192, 31.631397, 43.317715>,  <29.445143, 31.986757, 43.409664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.286192, 31.631397, 43.317715> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064695, 0.222757, -0.972725,
		0.915373, -0.401408, -0.031043,
		-0.397375, -0.888398, -0.229874,
		29.166979, 31.364878, 43.248753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.916046, 31.669373, 42.849716>,  <29.445143, 31.986757, 43.409664>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.916046, 31.669373, 42.849716> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.547510, 31.514233, 42.839092>,  <29.326389, 31.421148, 42.832718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.547510, 31.514233, 42.839092>,  <29.916046, 31.669373, 42.849716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.547510, 31.514233, 42.839092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069449, 0.231431, -0.970369,
		0.382505, -0.892195, -0.240163,
		-0.921340, -0.387850, -0.026561,
		29.271109, 31.397877, 42.831123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.910799, 31.158758, 42.324448>,  <29.916046, 31.669373, 42.849716>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.910799, 31.158758, 42.324448> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.537600, 31.289043, 42.385666>,  <29.313679, 31.367214, 42.422398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.537600, 31.289043, 42.385666>,  <29.910799, 31.158758, 42.324448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.537600, 31.289043, 42.385666> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072361, 0.246801, -0.966361,
		-0.352527, -0.912689, -0.206697,
		-0.933000, 0.325711, 0.153047,
		29.257700, 31.386757, 42.431580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.450722, 30.838520, 41.825893>,  <29.910799, 31.158758, 42.324448>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.450722, 30.838520, 41.825893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.286852, 31.176004, 41.964642>,  <29.188530, 31.378494, 42.047890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.286852, 31.176004, 41.964642>,  <29.450722, 30.838520, 41.825893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.286852, 31.176004, 41.964642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126418, 0.324062, -0.937551,
		-0.903429, -0.427943, -0.026100,
		-0.409677, 0.843711, 0.346866,
		29.163948, 31.429117, 42.068703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.819805, 30.859118, 41.420570>,  <29.450722, 30.838520, 41.825893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.819805, 30.859118, 41.420570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.922752, 31.219755, 41.559647>,  <28.984520, 31.436138, 41.643093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.922752, 31.219755, 41.559647>,  <28.819805, 30.859118, 41.420570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.922752, 31.219755, 41.559647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163851, 0.395314, -0.903814,
		-0.952321, 0.175644, 0.249469,
		0.257368, 0.901597, 0.347686,
		28.999962, 31.490234, 41.663952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.327639, 31.365824, 41.209160>,  <28.819805, 30.859118, 41.420570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.327639, 31.365824, 41.209160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.609518, 31.629391, 41.314407>,  <28.778645, 31.787531, 41.377556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.609518, 31.629391, 41.314407>,  <28.327639, 31.365824, 41.209160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.609518, 31.629391, 41.314407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039390, 0.333935, -0.941773,
		-0.708414, 0.674028, 0.209369,
		0.704697, 0.658918, 0.263114,
		28.820927, 31.827066, 41.393341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.122826, 31.986231, 40.819382>,  <28.327639, 31.365824, 41.209160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.122826, 31.986231, 40.819382> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.492773, 32.079948, 40.939198>,  <28.714743, 32.136181, 41.011086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.492773, 32.079948, 40.939198>,  <28.122826, 31.986231, 40.819382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.492773, 32.079948, 40.939198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160211, 0.474289, -0.865669,
		-0.344888, 0.848620, 0.401119,
		0.924870, 0.234295, 0.299535,
		28.770233, 32.150238, 41.029057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.227406, 32.790108, 40.717342>,  <28.122826, 31.986231, 40.819382>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.227406, 32.790108, 40.717342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.580015, 32.602470, 40.695942>,  <28.791582, 32.489887, 40.683102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.580015, 32.602470, 40.695942>,  <28.227406, 32.790108, 40.717342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.580015, 32.602470, 40.695942> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231869, 0.528840, -0.816434,
		0.411276, 0.707304, 0.574955,
		0.881527, -0.469094, -0.053497,
		28.844473, 32.461742, 40.679893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.698586, 33.268990, 40.755264>,  <28.227406, 32.790108, 40.717342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.698586, 33.268990, 40.755264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.906710, 32.971600, 40.587208>,  <29.031584, 32.793167, 40.486374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.906710, 32.971600, 40.587208>,  <28.698586, 33.268990, 40.755264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.906710, 32.971600, 40.587208> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344299, 0.632859, -0.693504,
		0.781495, 0.216183, 0.585261,
		0.520311, -0.743475, -0.420144,
		29.062803, 32.748558, 40.461166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.306950, 33.578316, 40.594730>,  <28.698586, 33.268990, 40.755264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.306950, 33.578316, 40.594730> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.291172, 33.236801, 40.387081>,  <29.281706, 33.031891, 40.262489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.291172, 33.236801, 40.387081>,  <29.306950, 33.578316, 40.594730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.291172, 33.236801, 40.387081> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243453, 0.495664, -0.833696,
		0.969111, -0.159265, 0.188307,
		-0.039442, -0.853787, -0.519126,
		29.279339, 32.980663, 40.231342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.979258, 33.404400, 40.198372>,  <29.306950, 33.578316, 40.594730>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.979258, 33.404400, 40.198372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.681305, 33.219788, 40.005650>,  <29.502533, 33.109020, 39.890015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.681305, 33.219788, 40.005650>,  <29.979258, 33.404400, 40.198372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.681305, 33.219788, 40.005650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314414, 0.394102, -0.863613,
		0.588468, -0.794776, -0.148447,
		-0.744882, -0.461535, -0.481805,
		29.457840, 33.081326, 39.861107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.676538, 33.683392, 40.383278>,  <29.979258, 33.404400, 40.198372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.676538, 33.683392, 40.383278> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.919609, 34.000633, 40.399818>,  <31.065453, 34.190979, 40.409740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.919609, 34.000633, 40.399818>,  <30.676538, 33.683392, 40.383278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.919609, 34.000633, 40.399818> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081920, -0.114383, 0.990053,
		0.789947, -0.598247, -0.134480,
		0.607679, 0.793106, 0.041348,
		31.101913, 34.238564, 40.412224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.264563, 33.434952, 40.786808>,  <30.676538, 33.683392, 40.383278>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.264563, 33.434952, 40.786808> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.220682, 33.831398, 40.816891>,  <31.194353, 34.069267, 40.834942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.220682, 33.831398, 40.816891>,  <31.264563, 33.434952, 40.786808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.220682, 33.831398, 40.816891> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157288, -0.057401, 0.985883,
		0.981441, 0.119984, -0.149593,
		-0.109703, 0.991115, 0.075208,
		31.187771, 34.128731, 40.839455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.851311, 33.580070, 41.284542>,  <31.264563, 33.434952, 40.786808>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.851311, 33.580070, 41.284542> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.613943, 33.901524, 41.302567>,  <31.471521, 34.094395, 41.313381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.613943, 33.901524, 41.302567>,  <31.851311, 33.580070, 41.284542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.613943, 33.901524, 41.302567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137003, 0.045687, 0.989516,
		0.793146, 0.593373, -0.137211,
		-0.593421, 0.803630, 0.045057,
		31.435917, 34.142612, 41.316082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.263748, 34.086159, 41.627094>,  <31.851311, 33.580070, 41.284542>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.263748, 34.086159, 41.627094> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.876726, 34.183842, 41.653019>,  <31.644514, 34.242451, 41.668571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.876726, 34.183842, 41.653019>,  <32.263748, 34.086159, 41.627094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.876726, 34.183842, 41.653019> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078473, 0.046640, 0.995825,
		0.240169, 0.968600, -0.064291,
		-0.967554, 0.244211, 0.064807,
		31.586460, 34.257107, 41.672462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.204006, 34.603596, 42.182919>,  <32.263748, 34.086159, 41.627094>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.204006, 34.603596, 42.182919> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.845915, 34.431412, 42.136833>,  <31.631062, 34.328102, 42.109184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.845915, 34.431412, 42.136833>,  <32.204006, 34.603596, 42.182919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.845915, 34.431412, 42.136833> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244878, 0.259221, 0.934259,
		-0.372297, 0.864585, -0.337472,
		-0.895226, -0.430461, -0.115210,
		31.577347, 34.302273, 42.102268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.892408, 34.772160, 42.823097>,  <32.204006, 34.603596, 42.182919>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.892408, 34.772160, 42.823097> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.633753, 34.494476, 42.696648>,  <31.478559, 34.327866, 42.620777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.633753, 34.494476, 42.696648>,  <31.892408, 34.772160, 42.823097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.633753, 34.494476, 42.696648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313389, -0.136060, 0.939827,
		-0.695448, 0.706797, -0.129576,
		-0.646637, -0.694208, -0.316125,
		31.439762, 34.286213, 42.601810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.269199, 34.920906, 43.076916>,  <31.892408, 34.772160, 42.823097>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.269199, 34.920906, 43.076916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.241917, 34.531765, 42.988461>,  <31.225546, 34.298279, 42.935387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.241917, 34.531765, 42.988461>,  <31.269199, 34.920906, 43.076916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.241917, 34.531765, 42.988461> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308929, -0.190162, 0.931880,
		-0.948636, 0.131878, -0.287573,
		-0.068209, -0.972855, -0.221135,
		31.221455, 34.239910, 42.922119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.698189, 34.807201, 43.441395>,  <31.269199, 34.920906, 43.076916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.698189, 34.807201, 43.441395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.853683, 34.446598, 43.365330>,  <30.946980, 34.230236, 43.319691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.853683, 34.446598, 43.365330>,  <30.698189, 34.807201, 43.441395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.853683, 34.446598, 43.365330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423322, -0.358082, 0.832211,
		-0.818342, -0.243010, -0.520829,
		0.388735, -0.901512, -0.190162,
		30.970304, 34.176144, 43.308281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.108391, 34.224808, 43.382946>,  <30.698189, 34.807201, 43.441395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.108391, 34.224808, 43.382946> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.463560, 34.074238, 43.488701>,  <30.676661, 33.983894, 43.552155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.463560, 34.074238, 43.488701>,  <30.108391, 34.224808, 43.382946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.463560, 34.074238, 43.488701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395507, -0.331259, 0.856645,
		-0.234882, -0.865201, -0.443011,
		0.887921, -0.376425, 0.264386,
		30.729937, 33.961311, 43.568016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.863882, 33.682018, 43.785069>,  <30.108391, 34.224808, 43.382946>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.863882, 33.682018, 43.785069> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.253572, 33.720207, 43.866817>,  <30.487387, 33.743122, 43.915867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.253572, 33.720207, 43.866817>,  <29.863882, 33.682018, 43.785069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.253572, 33.720207, 43.866817> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145473, -0.426530, 0.892698,
		0.172401, -0.899421, -0.401647,
		0.974226, 0.095473, 0.204375,
		30.545839, 33.748848, 43.928131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.186342, 33.073673, 43.897541>,  <29.863882, 33.682018, 43.785069>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.186342, 33.073673, 43.897541> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.378578, 33.344082, 44.120979>,  <30.493919, 33.506325, 44.255043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.378578, 33.344082, 44.120979>,  <30.186342, 33.073673, 43.897541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.378578, 33.344082, 44.120979> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191124, -0.540926, 0.819067,
		0.855865, -0.500397, -0.130760,
		0.480590, 0.676020, 0.558597,
		30.522755, 33.546886, 44.288559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.726799, 32.787117, 44.261173>,  <30.186342, 33.073673, 43.897541>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.726799, 32.787117, 44.261173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.567699, 33.097549, 44.456928>,  <30.472240, 33.283810, 44.574383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.567699, 33.097549, 44.456928>,  <30.726799, 32.787117, 44.261173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.567699, 33.097549, 44.456928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063172, -0.555295, 0.829251,
		0.915318, 0.298917, 0.269893,
		-0.397747, 0.776078, 0.489388,
		30.448376, 33.330372, 44.603745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.029131, 32.760670, 44.921555>,  <30.726799, 32.787117, 44.261173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.029131, 32.760670, 44.921555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.698380, 32.981083, 44.966515>,  <30.499929, 33.113331, 44.993488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.698380, 32.981083, 44.966515>,  <31.029131, 32.760670, 44.921555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.698380, 32.981083, 44.966515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121313, -0.369924, 0.921107,
		0.549142, 0.748008, 0.372730,
		-0.826877, 0.551036, 0.112398,
		30.450315, 33.146393, 45.000233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.032066, 33.244686, 45.528721>,  <31.029131, 32.760670, 44.921555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.032066, 33.244686, 45.528721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.650867, 33.146938, 45.457085>,  <30.422148, 33.088287, 45.414104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.650867, 33.146938, 45.457085>,  <31.032066, 33.244686, 45.528721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.650867, 33.146938, 45.457085> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093052, -0.326462, 0.940619,
		-0.288328, 0.913074, 0.288379,
		-0.952999, -0.244373, -0.179092,
		30.364967, 33.073627, 45.403358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.253691, 33.681370, 46.101738>,  <31.032066, 33.244686, 45.528721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.253691, 33.681370, 46.101738> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.561571, 33.859325, 46.284882>,  <31.746300, 33.966099, 46.394768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.561571, 33.859325, 46.284882>,  <31.253691, 33.681370, 46.101738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.561571, 33.859325, 46.284882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362001, 0.286586, -0.887031,
		-0.525845, 0.848495, 0.059536,
		0.769703, 0.444888, 0.457855,
		31.792482, 33.992790, 46.422237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.312077, 34.350597, 45.859222>,  <31.253691, 33.681370, 46.101738>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.312077, 34.350597, 45.859222> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.675938, 34.281494, 46.010319>,  <31.894255, 34.240032, 46.100975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.675938, 34.281494, 46.010319>,  <31.312077, 34.350597, 45.859222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.675938, 34.281494, 46.010319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414366, 0.440654, -0.796320,
		-0.028886, 0.880898, 0.472425,
		0.909652, -0.172754, 0.377742,
		31.948833, 34.229668, 46.123642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.670904, 35.010090, 45.781132>,  <31.312077, 34.350597, 45.859222>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.670904, 35.010090, 45.781132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.975229, 34.755627, 45.832455>,  <32.157825, 34.602947, 45.863247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.975229, 34.755627, 45.832455>,  <31.670904, 35.010090, 45.781132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.975229, 34.755627, 45.832455> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479652, 0.418041, -0.771477,
		0.437145, 0.648493, 0.623186,
		0.760815, -0.636159, 0.128307,
		32.203472, 34.564777, 45.870945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.338070, 35.370430, 45.908268>,  <31.670904, 35.010090, 45.781132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.338070, 35.370430, 45.908268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.440430, 35.002144, 45.790421>,  <32.501846, 34.781170, 45.719711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.440430, 35.002144, 45.790421>,  <32.338070, 35.370430, 45.908268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.440430, 35.002144, 45.790421> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635317, 0.389878, -0.666609,
		0.728622, -0.016591, 0.684715,
		0.255896, -0.920717, -0.294614,
		32.517197, 34.725929, 45.702038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.127815, 35.356541, 45.898521>,  <32.338070, 35.370430, 45.908268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.127815, 35.356541, 45.898521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.998989, 35.066597, 45.654930>,  <32.921692, 34.892632, 45.508774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.998989, 35.066597, 45.654930>,  <33.127815, 35.356541, 45.898521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.998989, 35.066597, 45.654930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693252, 0.257499, -0.673125,
		0.644730, -0.638968, 0.419576,
		-0.322065, -0.724855, -0.608982,
		32.902370, 34.849140, 45.472237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.722939, 35.267288, 45.565666>,  <33.127815, 35.356541, 45.898521>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.722939, 35.267288, 45.565666> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.470898, 35.033195, 45.361515>,  <33.319675, 34.892742, 45.239025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.470898, 35.033195, 45.361515>,  <33.722939, 35.267288, 45.565666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.470898, 35.033195, 45.361515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640391, -0.019904, -0.767791,
		0.439175, -0.810624, 0.387316,
		-0.630099, -0.585229, -0.510375,
		33.281868, 34.857628, 45.208401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.128445, 34.809032, 45.156578>,  <33.722939, 35.267288, 45.565666>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.128445, 34.809032, 45.156578> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.766396, 34.800827, 44.986713>,  <33.549168, 34.795902, 44.884796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.766396, 34.800827, 44.986713>,  <34.128445, 34.809032, 45.156578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766396, 34.800827, 44.986713> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420695, -0.187490, -0.887617,
		-0.061407, -0.982052, 0.178333,
		-0.905122, -0.020518, -0.424657,
		33.494858, 34.794670, 44.859318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216061, 34.247421, 44.770676>,  <34.128445, 34.809032, 45.156578>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216061, 34.247421, 44.770676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.924061, 34.481220, 44.628986>,  <33.748863, 34.621498, 44.543972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.924061, 34.481220, 44.628986>,  <34.216061, 34.247421, 44.770676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.924061, 34.481220, 44.628986> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290893, -0.203277, -0.934912,
		-0.618456, -0.785522, -0.021634,
		-0.729996, 0.584494, -0.354221,
		33.705063, 34.656567, 44.522720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936428, 33.911919, 44.182896>,  <34.216061, 34.247421, 44.770676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936428, 33.911919, 44.182896> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.831329, 34.295422, 44.139549>,  <33.768272, 34.525524, 44.113541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.831329, 34.295422, 44.139549>,  <33.936428, 33.911919, 44.182896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831329, 34.295422, 44.139549> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306948, -0.023418, -0.951438,
		-0.914739, -0.283247, -0.288137,
		-0.262744, 0.958761, -0.108364,
		33.752506, 34.583050, 44.107040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497337, 33.902706, 43.597801>,  <33.936428, 33.911919, 44.182896>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.497337, 33.902706, 43.597801> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.637936, 34.275635, 43.631821>,  <33.722294, 34.499390, 43.652233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.637936, 34.275635, 43.631821>,  <33.497337, 33.902706, 43.597801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.637936, 34.275635, 43.631821> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136355, 0.038899, -0.989896,
		-0.926207, 0.359539, -0.113454,
		0.351493, 0.932319, 0.085053,
		33.743385, 34.555332, 43.657337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.327168, 34.235287, 43.007572>,  <33.497337, 33.902706, 43.597801>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.327168, 34.235287, 43.007572> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.597969, 34.496185, 43.143948>,  <33.760452, 34.652725, 43.225773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.597969, 34.496185, 43.143948>,  <33.327168, 34.235287, 43.007572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.597969, 34.496185, 43.143948> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321416, 0.154704, -0.934215,
		-0.662081, 0.742054, -0.104906,
		0.677008, 0.652245, 0.340934,
		33.801071, 34.691860, 43.246227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.246990, 34.904945, 42.622673>,  <33.327168, 34.235287, 43.007572>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.246990, 34.904945, 42.622673> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.618298, 34.882549, 42.769737>,  <33.841084, 34.869110, 42.857975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.618298, 34.882549, 42.769737>,  <33.246990, 34.904945, 42.622673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.618298, 34.882549, 42.769737> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368299, 0.275653, -0.887903,
		-0.051631, 0.959625, 0.276503,
		0.928273, -0.055992, 0.367661,
		33.896778, 34.865753, 42.880035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.533089, 35.288013, 42.248104>,  <33.246990, 34.904945, 42.622673>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.533089, 35.288013, 42.248104> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.863102, 35.112621, 42.390682>,  <34.061111, 35.007385, 42.476227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.863102, 35.112621, 42.390682>,  <33.533089, 35.288013, 42.248104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.863102, 35.112621, 42.390682> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474001, 0.193606, -0.858976,
		0.307636, 0.877639, 0.367572,
		0.825035, -0.438482, 0.356441,
		34.110611, 34.981075, 42.497616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144379, 35.746754, 42.037430>,  <33.533089, 35.288013, 42.248104>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144379, 35.746754, 42.037430> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.285191, 35.378674, 42.105911>,  <34.369678, 35.157825, 42.146999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.285191, 35.378674, 42.105911>,  <34.144379, 35.746754, 42.037430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.285191, 35.378674, 42.105911> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558148, 0.059546, -0.827602,
		0.751362, 0.386902, 0.534568,
		0.352032, -0.920197, 0.171208,
		34.390800, 35.102615, 42.157272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.942236, 39.337971, 26.891569> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.924757, 39.012821, 26.659250>,  <27.914270, 38.817730, 26.519859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.924757, 39.012821, 26.659250>,  <27.942236, 39.337971, 26.891569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.924757, 39.012821, 26.659250> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757438, -0.352127, 0.549814,
		-0.651444, 0.463944, -0.600314,
		-0.043696, -0.812873, -0.580800,
		27.911648, 38.768959, 26.485010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.313765, 39.205467, 26.673977>,  <27.942236, 39.337971, 26.891569>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.313765, 39.205467, 26.673977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.451538, 38.831215, 26.643068>,  <27.534203, 38.606663, 26.624523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.451538, 38.831215, 26.643068>,  <27.313765, 39.205467, 26.673977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.451538, 38.831215, 26.643068> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799131, -0.335387, 0.498904,
		-0.492704, -0.110089, -0.863205,
		0.344432, -0.935626, -0.077271,
		27.554867, 38.550526, 26.619886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.785292, 38.782082, 26.276815>,  <27.313765, 39.205467, 26.673977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.785292, 38.782082, 26.276815> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.009884, 38.546513, 26.509336>,  <27.144638, 38.405170, 26.648849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.009884, 38.546513, 26.509336>,  <26.785292, 38.782082, 26.276815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.009884, 38.546513, 26.509336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806385, -0.231764, 0.544086,
		-0.185697, -0.774248, -0.605026,
		0.561481, -0.588919, 0.581303,
		27.178328, 38.369835, 26.683727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.319664, 38.243034, 26.398138>,  <26.785292, 38.782082, 26.276815>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.319664, 38.243034, 26.398138> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.606070, 38.130795, 26.653822>,  <26.777912, 38.063450, 26.807232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.606070, 38.130795, 26.653822>,  <26.319664, 38.243034, 26.398138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.606070, 38.130795, 26.653822> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690647, -0.151407, 0.707165,
		-0.101647, -0.947809, -0.302202,
		0.716013, -0.280596, 0.639211,
		26.820873, 38.046616, 26.845585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.915510, 37.920727, 26.846464>,  <26.319664, 38.243034, 26.398138>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.915510, 37.920727, 26.846464> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.274294, 37.885300, 27.019726>,  <26.489563, 37.864044, 27.123684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.274294, 37.885300, 27.019726>,  <25.915510, 37.920727, 26.846464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.274294, 37.885300, 27.019726> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428833, -0.412648, 0.803632,
		0.107566, -0.906575, -0.408107,
		0.896957, -0.088566, 0.433156,
		26.543381, 37.858730, 27.149673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.035782, 37.179081, 27.107531>,  <25.915510, 37.920727, 26.846464>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.035782, 37.179081, 27.107531> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.251762, 37.436565, 27.324450>,  <26.381351, 37.591057, 27.454601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.251762, 37.436565, 27.324450>,  <26.035782, 37.179081, 27.107531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.251762, 37.436565, 27.324450> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171368, -0.546724, 0.819589,
		0.824065, -0.535472, -0.184894,
		0.539953, 0.643710, 0.542298,
		26.413748, 37.629677, 27.487139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.477539, 36.749836, 27.598980>,  <26.035782, 37.179081, 27.107531>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.477539, 36.749836, 27.598980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.429985, 37.122631, 27.735962>,  <26.401453, 37.346306, 27.818151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.429985, 37.122631, 27.735962>,  <26.477539, 36.749836, 27.598980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.429985, 37.122631, 27.735962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180711, -0.359448, 0.915500,
		0.976325, 0.046954, 0.211152,
		-0.118884, 0.931983, 0.342453,
		26.394320, 37.402225, 27.838697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.605051, 36.694645, 28.287786>,  <26.477539, 36.749836, 27.598980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.605051, 36.694645, 28.287786> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.446224, 37.060314, 28.320349>,  <26.350927, 37.279716, 28.339886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.446224, 37.060314, 28.320349>,  <26.605051, 36.694645, 28.287786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.446224, 37.060314, 28.320349> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215630, -0.179133, 0.959904,
		0.892100, 0.363593, 0.268251,
		-0.397067, 0.914173, 0.081403,
		26.327105, 37.334564, 28.344770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.965183, 36.950031, 28.730982>,  <26.605051, 36.694645, 28.287786>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.965183, 36.950031, 28.730982> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.640186, 37.181984, 28.754951>,  <26.445189, 37.321156, 28.769333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.640186, 37.181984, 28.754951>,  <26.965183, 36.950031, 28.730982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.640186, 37.181984, 28.754951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027687, -0.141055, 0.989614,
		0.582312, 0.802397, 0.130662,
		-0.812494, 0.579882, 0.059922,
		26.396439, 37.355949, 28.772928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.103748, 37.503510, 29.221846>,  <26.965183, 36.950031, 28.730982>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.103748, 37.503510, 29.221846> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.706102, 37.464108, 29.203798>,  <26.467516, 37.440464, 29.192970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.706102, 37.464108, 29.203798>,  <27.103748, 37.503510, 29.221846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.706102, 37.464108, 29.203798> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044828, -0.005163, 0.998981,
		-0.098642, 0.995123, 0.000717,
		-0.994113, -0.098510, -0.045119,
		26.407869, 37.434555, 29.190262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.903168, 37.859444, 29.703485>,  <27.103748, 37.503510, 29.221846>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.903168, 37.859444, 29.703485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.580673, 37.633694, 29.632532>,  <26.387177, 37.498245, 29.589960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.580673, 37.633694, 29.632532>,  <26.903168, 37.859444, 29.703485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.580673, 37.633694, 29.632532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129894, -0.123646, 0.983788,
		-0.577159, 0.816206, 0.026378,
		-0.806235, -0.564376, -0.177384,
		26.338802, 37.464382, 29.579317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.338158, 38.107433, 30.138103>,  <26.903168, 37.859444, 29.703485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.338158, 38.107433, 30.138103> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.230112, 37.734360, 30.042484>,  <26.165285, 37.510517, 29.985113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.230112, 37.734360, 30.042484>,  <26.338158, 38.107433, 30.138103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.230112, 37.734360, 30.042484> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138356, -0.208101, 0.968273,
		-0.952835, 0.294620, -0.072831,
		-0.270116, -0.932681, -0.239048,
		26.149076, 37.454556, 29.970770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.660206, 37.921371, 30.602879>,  <26.338158, 38.107433, 30.138103>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.660206, 37.921371, 30.602879> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.759897, 37.559544, 30.464527>,  <25.819712, 37.342445, 30.381516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.759897, 37.559544, 30.464527>,  <25.660206, 37.921371, 30.602879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.759897, 37.559544, 30.464527> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294485, -0.411026, 0.862749,
		-0.922585, -0.113167, -0.368823,
		0.249231, -0.904572, -0.345880,
		25.834667, 37.288174, 30.360764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.085991, 37.535374, 30.662128>,  <25.660206, 37.921371, 30.602879>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.085991, 37.535374, 30.662128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.396397, 37.284424, 30.636189>,  <25.582640, 37.133854, 30.620625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.396397, 37.284424, 30.636189>,  <25.085991, 37.535374, 30.662128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.396397, 37.284424, 30.636189> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243488, -0.392841, 0.886786,
		-0.581823, -0.672368, -0.457607,
		0.776013, -0.627374, -0.064850,
		25.629200, 37.096210, 30.616734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.858429, 36.810974, 30.849327>,  <25.085991, 37.535374, 30.662128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.858429, 36.810974, 30.849327> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.253010, 36.821510, 30.914089>,  <25.489759, 36.827831, 30.952946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.253010, 36.821510, 30.914089>,  <24.858429, 36.810974, 30.849327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.253010, 36.821510, 30.914089> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153923, -0.192532, 0.969144,
		0.056705, -0.980937, -0.185869,
		0.986454, 0.026346, 0.161906,
		25.548946, 36.829414, 30.962662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.998594, 36.278866, 31.178877>,  <24.858429, 36.810974, 30.849327>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.998594, 36.278866, 31.178877> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.319553, 36.496941, 31.275976>,  <25.512129, 36.627785, 31.334236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.319553, 36.496941, 31.275976>,  <24.998594, 36.278866, 31.178877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.319553, 36.496941, 31.275976> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046012, -0.349032, 0.935980,
		0.595014, -0.762197, -0.254977,
		0.802397, 0.545190, 0.242749,
		25.560272, 36.660496, 31.348801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.476349, 35.749447, 31.470724>,  <24.998594, 36.278866, 31.178877>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.476349, 35.749447, 31.470724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.572477, 36.120220, 31.585987>,  <25.630156, 36.342686, 31.655146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.572477, 36.120220, 31.585987>,  <25.476349, 35.749447, 31.470724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.572477, 36.120220, 31.585987> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228931, -0.342607, 0.911159,
		0.943311, -0.153003, -0.294541,
		0.240322, 0.926936, 0.288158,
		25.644573, 36.398300, 31.672434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.991339, 35.570354, 32.030041>,  <25.476349, 35.749447, 31.470724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.991339, 35.570354, 32.030041> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.900349, 35.952805, 32.103889>,  <25.845755, 36.182274, 32.148197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.900349, 35.952805, 32.103889>,  <25.991339, 35.570354, 32.030041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.900349, 35.952805, 32.103889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295590, -0.112850, 0.948626,
		0.927838, 0.270360, -0.256950,
		-0.227473, 0.956123, 0.184622,
		25.832108, 36.239643, 32.159275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.568146, 35.940746, 32.372955>,  <25.991339, 35.570354, 32.030041>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.568146, 35.940746, 32.372955> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.241661, 36.151573, 32.467617>,  <26.045771, 36.278069, 32.524414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.241661, 36.151573, 32.467617>,  <26.568146, 35.940746, 32.372955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.241661, 36.151573, 32.467617> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270330, -0.013605, 0.962672,
		0.510609, 0.849717, -0.131377,
		-0.816211, 0.527063, 0.236651,
		25.996798, 36.309692, 32.538612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.812460, 36.403301, 33.010460>,  <26.568146, 35.940746, 32.372955>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.812460, 36.403301, 33.010460> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.413677, 36.429535, 32.993584>,  <26.174408, 36.445274, 32.983459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.413677, 36.429535, 32.993584>,  <26.812460, 36.403301, 33.010460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.413677, 36.429535, 32.993584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036393, 0.087196, 0.995526,
		0.068967, 0.994030, -0.084544,
		-0.996955, 0.065581, -0.042190,
		26.114592, 36.449211, 32.980927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.534678, 37.043022, 33.148495>,  <26.812460, 36.403301, 33.010460>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.534678, 37.043022, 33.148495> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.255457, 36.771088, 33.238422>,  <26.087925, 36.607925, 33.292381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.255457, 36.771088, 33.238422>,  <26.534678, 37.043022, 33.148495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.255457, 36.771088, 33.238422> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027664, 0.288138, 0.957189,
		-0.715514, 0.674385, -0.182328,
		-0.698050, -0.679839, 0.224823,
		26.046041, 36.567135, 33.305870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.038475, 36.994579, 33.837749>,  <26.534678, 37.043022, 33.148495>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.038475, 36.994579, 33.837749> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.421274, 36.959438, 33.948338>,  <27.650953, 36.938354, 34.014690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.421274, 36.959438, 33.948338>,  <27.038475, 36.994579, 33.837749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.421274, 36.959438, 33.948338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279728, 0.531925, -0.799254,
		-0.076842, 0.842221, 0.533627,
		0.956999, -0.087854, 0.276468,
		27.708374, 36.933083, 34.031277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.272345, 37.686710, 33.757187>,  <27.038475, 36.994579, 33.837749>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.272345, 37.686710, 33.757187> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.602262, 37.460789, 33.746529>,  <27.800213, 37.325237, 33.740135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.602262, 37.460789, 33.746529>,  <27.272345, 37.686710, 33.757187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.602262, 37.460789, 33.746529> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274578, 0.441273, -0.854333,
		0.494284, 0.697336, 0.519043,
		0.824797, -0.564801, -0.026641,
		27.849701, 37.291348, 33.738537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.885687, 38.111732, 33.568859>,  <27.272345, 37.686710, 33.757187>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.885687, 38.111732, 33.568859> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.984287, 37.742725, 33.450069>,  <28.043447, 37.521320, 33.378796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.984287, 37.742725, 33.450069>,  <27.885687, 38.111732, 33.568859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.984287, 37.742725, 33.450069> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162347, 0.341403, -0.925790,
		0.955448, 0.179995, 0.233924,
		0.246500, -0.922521, -0.296972,
		28.058237, 37.465969, 33.360977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.441046, 38.207928, 33.167473>,  <27.885687, 38.111732, 33.568859>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.441046, 38.207928, 33.167473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.374350, 37.831013, 33.051338>,  <28.334332, 37.604866, 32.981655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.374350, 37.831013, 33.051338>,  <28.441046, 38.207928, 33.167473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.374350, 37.831013, 33.051338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389353, 0.207610, -0.897387,
		0.905871, -0.262675, 0.332264,
		-0.166739, -0.942285, -0.290341,
		28.324327, 37.548328, 32.964237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.055819, 37.975216, 32.915916>,  <28.441046, 38.207928, 33.167473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.055819, 37.975216, 32.915916> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.776712, 37.732677, 32.763355>,  <28.609249, 37.587154, 32.671818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.776712, 37.732677, 32.763355>,  <29.055819, 37.975216, 32.915916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.776712, 37.732677, 32.763355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354619, 0.170223, -0.919385,
		0.622388, -0.776769, 0.096246,
		-0.697767, -0.606345, -0.381402,
		28.567383, 37.550774, 32.648933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.419874, 37.538837, 32.460602>,  <29.055819, 37.975216, 32.915916>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.419874, 37.538837, 32.460602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.048304, 37.458633, 32.336094>,  <28.825361, 37.410511, 32.261391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.048304, 37.458633, 32.336094>,  <29.419874, 37.538837, 32.460602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.048304, 37.458633, 32.336094> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289666, 0.130073, -0.948248,
		0.230621, -0.971018, -0.062748,
		-0.928928, -0.200510, -0.311268,
		28.769625, 37.398479, 32.242714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.400839, 36.974262, 31.895931>,  <29.419874, 37.538837, 32.460602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.400839, 36.974262, 31.895931> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.075716, 37.203392, 31.853561>,  <28.880642, 37.340870, 31.828138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.075716, 37.203392, 31.853561>,  <29.400839, 36.974262, 31.895931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.075716, 37.203392, 31.853561> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304433, 0.262660, -0.915604,
		-0.496656, -0.776456, -0.387878,
		-0.812806, 0.572823, -0.105927,
		28.831875, 37.375240, 31.821783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.221745, 36.884586, 31.251905>,  <29.400839, 36.974262, 31.895931>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.221745, 36.884586, 31.251905> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.021000, 37.220371, 31.335278>,  <28.900553, 37.421841, 31.385300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.021000, 37.220371, 31.335278>,  <29.221745, 36.884586, 31.251905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.021000, 37.220371, 31.335278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248168, 0.370589, -0.895029,
		-0.828583, -0.397453, -0.394311,
		-0.501859, 0.839461, 0.208428,
		28.870441, 37.472210, 31.397806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.766682, 36.960415, 30.661465>,  <29.221745, 36.884586, 31.251905>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.766682, 36.960415, 30.661465> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.796795, 37.327232, 30.818115>,  <28.814863, 37.547321, 30.912106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.796795, 37.327232, 30.818115>,  <28.766682, 36.960415, 30.661465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.796795, 37.327232, 30.818115> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213909, 0.368744, -0.904583,
		-0.973948, 0.151870, -0.168404,
		0.075282, 0.917040, 0.391624,
		28.819380, 37.602345, 30.935602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.523405, 37.414795, 30.068634>,  <28.766682, 36.960415, 30.661465>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.523405, 37.414795, 30.068634> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.707756, 37.654179, 30.330763>,  <28.818367, 37.797810, 30.488041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.707756, 37.654179, 30.330763>,  <28.523405, 37.414795, 30.068634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.707756, 37.654179, 30.330763> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492109, 0.442160, -0.749882,
		-0.738527, 0.668092, -0.090724,
		0.460875, 0.598455, 0.655321,
		28.846018, 37.833714, 30.527359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.384972, 38.093391, 29.795652>,  <28.523405, 37.414795, 30.068634>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.384972, 38.093391, 29.795652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.698481, 38.137863, 30.040058>,  <28.886587, 38.164547, 30.186701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.698481, 38.137863, 30.040058>,  <28.384972, 38.093391, 29.795652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.698481, 38.137863, 30.040058> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484445, 0.506159, -0.713523,
		-0.388600, 0.855244, 0.342853,
		0.783774, 0.111181, 0.611012,
		28.933613, 38.171219, 30.223362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.577925, 38.867638, 29.901711>,  <28.384972, 38.093391, 29.795652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.577925, 38.867638, 29.901711> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.893332, 38.635612, 29.983454>,  <29.082577, 38.496395, 30.032499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.893332, 38.635612, 29.983454>,  <28.577925, 38.867638, 29.901711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.893332, 38.635612, 29.983454> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537315, 0.488097, -0.687789,
		0.299217, 0.652138, 0.696552,
		0.788518, -0.580066, 0.204357,
		29.129887, 38.461594, 30.044762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.139116, 39.372517, 29.999971>,  <28.577925, 38.867638, 29.901711>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.139116, 39.372517, 29.999971> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.317875, 39.024284, 29.917629>,  <29.425129, 38.815346, 29.868223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.317875, 39.024284, 29.917629>,  <29.139116, 39.372517, 29.999971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.317875, 39.024284, 29.917629> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564120, 0.452840, -0.690438,
		0.694301, 0.192426, 0.693483,
		0.446895, -0.870579, -0.205855,
		29.451942, 38.763111, 29.855873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.718952, 39.634949, 29.790960>,  <29.139116, 39.372517, 29.999971>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.718952, 39.634949, 29.790960> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.710783, 39.257759, 29.658060>,  <29.705881, 39.031445, 29.578320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.710783, 39.257759, 29.658060>,  <29.718952, 39.634949, 29.790960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.710783, 39.257759, 29.658060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567881, 0.262570, -0.780108,
		0.822857, -0.204611, 0.530133,
		-0.020422, -0.942970, -0.332252,
		29.704657, 38.974869, 29.558384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.408125, 39.387917, 29.576645>,  <29.718952, 39.634949, 29.790960>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.408125, 39.387917, 29.576645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.175755, 39.121796, 29.389072>,  <30.036333, 38.962124, 29.276529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.175755, 39.121796, 29.389072>,  <30.408125, 39.387917, 29.576645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.175755, 39.121796, 29.389072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543158, 0.112224, -0.832097,
		0.606223, -0.738090, 0.296171,
		-0.580925, -0.665304, -0.468932,
		30.001476, 38.922203, 29.248392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.962595, 38.989445, 29.216654>,  <30.408125, 39.387917, 29.576645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.962595, 38.989445, 29.216654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.620720, 38.929169, 29.017937>,  <30.415596, 38.893005, 28.898706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.620720, 38.929169, 29.017937>,  <30.962595, 38.989445, 29.216654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.620720, 38.929169, 29.017937> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489146, 0.086838, -0.867868,
		0.173918, -0.984760, -0.000511,
		-0.854686, -0.150688, -0.496795,
		30.364315, 38.883961, 28.868898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.073011, 38.476681, 28.778637>,  <30.962595, 38.989445, 29.216654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.073011, 38.476681, 28.778637> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.745956, 38.635033, 28.611423>,  <30.549725, 38.730042, 28.511095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.745956, 38.635033, 28.611423>,  <31.073011, 38.476681, 28.778637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.745956, 38.635033, 28.611423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364014, -0.207081, -0.908081,
		-0.446054, -0.894651, 0.025213,
		-0.817636, 0.395876, -0.418035,
		30.500666, 38.753796, 28.486013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.881216, 37.996868, 28.209406>,  <31.073011, 38.476681, 28.778637>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.881216, 37.996868, 28.209406> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.662048, 38.323380, 28.136215>,  <30.530548, 38.519287, 28.092300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.662048, 38.323380, 28.136215>,  <30.881216, 37.996868, 28.209406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.662048, 38.323380, 28.136215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171415, -0.104537, -0.979637,
		-0.818781, -0.568127, -0.082644,
		-0.547919, 0.816274, -0.182978,
		30.497673, 38.568260, 28.081322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.337240, 37.821529, 27.736301>,  <30.881216, 37.996868, 28.209406>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.337240, 37.821529, 27.736301> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.396206, 38.213394, 27.681845>,  <30.431585, 38.448513, 27.649170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.396206, 38.213394, 27.681845>,  <30.337240, 37.821529, 27.736301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.396206, 38.213394, 27.681845> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281021, -0.173459, -0.943896,
		-0.948312, 0.100887, -0.300876,
		0.147416, 0.979660, -0.136142,
		30.440432, 38.507294, 27.641003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.039919, 37.950897, 27.055025>,  <30.337240, 37.821529, 27.736301>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.039919, 37.950897, 27.055025> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.277859, 38.265190, 27.122877>,  <30.420622, 38.453766, 27.163588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.277859, 38.265190, 27.122877>,  <30.039919, 37.950897, 27.055025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.277859, 38.265190, 27.122877> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404806, -0.110501, -0.907701,
		-0.694469, 0.608613, -0.383801,
		0.594849, 0.785735, 0.169631,
		30.456314, 38.500912, 27.173767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.941048, 37.516651, 26.378300>,  <30.039919, 37.950897, 27.055025>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.941048, 37.516651, 26.378300> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.146526, 37.447651, 26.714479>,  <30.269814, 37.406250, 26.916187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.146526, 37.447651, 26.714479>,  <29.941048, 37.516651, 26.378300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.146526, 37.447651, 26.714479> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653333, 0.713595, -0.252860,
		-0.556122, 0.678988, 0.479274,
		0.513696, -0.172505, 0.840451,
		30.300634, 37.395901, 26.966616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.887531, 32.511307, 46.679222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.716221, 32.168468, 46.564701>,  <33.613434, 31.962765, 46.495991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.716221, 32.168468, 46.564701>,  <33.887531, 32.511307, 46.679222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.716221, 32.168468, 46.564701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339550, -0.140972, 0.929964,
		-0.837428, 0.495495, -0.230651,
		-0.428277, -0.857095, -0.286299,
		33.587738, 31.911341, 46.478813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.180756, 32.509701, 46.879700>,  <33.887531, 32.511307, 46.679222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.180756, 32.509701, 46.879700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.289337, 32.127090, 46.837055>,  <33.354488, 31.897524, 46.811470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.289337, 32.127090, 46.837055>,  <33.180756, 32.509701, 46.879700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289337, 32.127090, 46.837055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348277, -0.200887, 0.915613,
		-0.897226, -0.211420, -0.387669,
		0.271457, -0.956528, -0.106608,
		33.370773, 31.840132, 46.805073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.733883, 32.144985, 47.361774>,  <33.180756, 32.509701, 46.879700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.733883, 32.144985, 47.361774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.006775, 31.862444, 47.286270>,  <33.170509, 31.692919, 47.240967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.006775, 31.862444, 47.286270>,  <32.733883, 32.144985, 47.361774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.006775, 31.862444, 47.286270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259838, -0.475560, 0.840433,
		-0.683411, -0.524318, -0.507977,
		0.682227, -0.706352, -0.188765,
		33.211445, 31.650537, 47.229641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.428741, 31.536127, 47.639751>,  <32.733883, 32.144985, 47.361774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.428741, 31.536127, 47.639751> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.820328, 31.463924, 47.601730>,  <33.055279, 31.420603, 47.578918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.820328, 31.463924, 47.601730>,  <32.428741, 31.536127, 47.639751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.820328, 31.463924, 47.601730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012819, -0.410587, 0.911731,
		-0.203601, -0.893776, -0.399638,
		0.978970, -0.180506, -0.095053,
		33.114017, 31.409773, 47.573215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.541183, 30.837664, 47.906090>,  <32.428741, 31.536127, 47.639751>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.541183, 30.837664, 47.906090> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.902294, 31.009192, 47.919415>,  <33.118961, 31.112108, 47.927410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.902294, 31.009192, 47.919415>,  <32.541183, 30.837664, 47.906090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.902294, 31.009192, 47.919415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103704, -0.292175, 0.950726,
		0.417420, -0.854839, -0.308239,
		0.902777, 0.428818, 0.033309,
		33.173126, 31.137836, 47.929409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.044785, 30.348413, 48.121456>,  <32.541183, 30.837664, 47.906090>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.044785, 30.348413, 48.121456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.177597, 30.716017, 48.206478>,  <33.257282, 30.936579, 48.257492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.177597, 30.716017, 48.206478>,  <33.044785, 30.348413, 48.121456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.177597, 30.716017, 48.206478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033380, -0.236641, 0.971024,
		0.942679, -0.315311, -0.109248,
		0.332027, 0.919011, 0.212551,
		33.277206, 30.991720, 48.270245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.371834, 30.192419, 48.629417>,  <33.044785, 30.348413, 48.121456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.371834, 30.192419, 48.629417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.348221, 30.591642, 48.637344>,  <33.334053, 30.831177, 48.642101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.348221, 30.591642, 48.637344>,  <33.371834, 30.192419, 48.629417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.348221, 30.591642, 48.637344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047604, -0.017011, 0.998721,
		0.997120, 0.059900, -0.046508,
		-0.059032, 0.998059, 0.019814,
		33.330513, 30.891060, 48.643288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034046, 30.522682, 49.008141>,  <33.371834, 30.192419, 48.629417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.034046, 30.522682, 49.008141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.731602, 30.783783, 49.026978>,  <33.550137, 30.940443, 49.038280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.731602, 30.783783, 49.026978>,  <34.034046, 30.522682, 49.008141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731602, 30.783783, 49.026978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008769, -0.061853, 0.998047,
		0.654389, 0.755044, 0.041043,
		-0.756108, 0.652751, 0.047097,
		33.504768, 30.979609, 49.041107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.191845, 31.012953, 49.549088>,  <34.034046, 30.522682, 49.008141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.191845, 31.012953, 49.549088> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.797466, 31.057850, 49.499596>,  <33.560841, 31.084789, 49.469902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.797466, 31.057850, 49.499596>,  <34.191845, 31.012953, 49.549088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797466, 31.057850, 49.499596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130592, -0.055987, 0.989854,
		0.104179, 0.992102, 0.069858,
		-0.985947, 0.112245, -0.123728,
		33.501682, 31.091524, 49.462479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.005341, 31.636383, 49.924309>,  <34.191845, 31.012953, 49.549088>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.005341, 31.636383, 49.924309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.671040, 31.418774, 49.894512>,  <33.470459, 31.288208, 49.876633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.671040, 31.418774, 49.894512>,  <34.005341, 31.636383, 49.924309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.671040, 31.418774, 49.894512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120927, 0.050022, 0.991400,
		-0.535618, 0.837578, -0.107593,
		-0.835757, -0.544023, -0.074493,
		33.420311, 31.255568, 49.872166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.532455, 31.956610, 50.247845>,  <34.005341, 31.636383, 49.924309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.532455, 31.956610, 50.247845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.372314, 31.590071, 50.245899>,  <33.276230, 31.370148, 50.244732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.372314, 31.590071, 50.245899>,  <33.532455, 31.956610, 50.247845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.372314, 31.590071, 50.245899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419750, 0.178660, 0.889882,
		-0.814574, 0.358307, -0.456164,
		-0.400349, -0.916350, -0.004868,
		33.252209, 31.315166, 50.244438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.814262, 32.056133, 50.656967>,  <33.532455, 31.956610, 50.247845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.814262, 32.056133, 50.656967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.918514, 31.669956, 50.657196>,  <32.981064, 31.438251, 50.657333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.918514, 31.669956, 50.657196>,  <32.814262, 32.056133, 50.656967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918514, 31.669956, 50.657196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249823, -0.066872, 0.965980,
		-0.932557, -0.251904, -0.258618,
		0.260628, -0.965439, 0.000569,
		32.996704, 31.380325, 50.657368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359741, 31.907469, 51.229908>,  <32.814262, 32.056133, 50.656967>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.359741, 31.907469, 51.229908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.606346, 31.616449, 51.109516>,  <32.754311, 31.441837, 51.037281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.606346, 31.616449, 51.109516>,  <32.359741, 31.907469, 51.229908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.606346, 31.616449, 51.109516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059598, -0.424292, 0.903562,
		-0.785086, -0.539120, -0.304943,
		0.616513, -0.727547, -0.300975,
		32.791302, 31.398186, 51.019222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.655933, 32.591782, 51.370789>,  <32.359741, 31.907469, 51.229908>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.655933, 32.591782, 51.370789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.841202, 32.252071, 51.472149>,  <32.952362, 32.048244, 51.532967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.841202, 32.252071, 51.472149>,  <32.655933, 32.591782, 51.370789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.841202, 32.252071, 51.472149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197907, 0.377808, 0.904486,
		-0.863890, -0.368781, 0.343066,
		0.463170, -0.849271, 0.253400,
		32.980152, 31.997290, 51.548168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.397530, 32.351227, 52.036217>,  <32.655933, 32.591782, 51.370789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.397530, 32.351227, 52.036217> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.757401, 32.182938, 51.989613>,  <32.973324, 32.081966, 51.961651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.757401, 32.182938, 51.989613>,  <32.397530, 32.351227, 52.036217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757401, 32.182938, 51.989613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342862, 0.515751, 0.785141,
		-0.270232, -0.746322, 0.608259,
		0.899678, -0.420719, -0.116512,
		33.027306, 32.056721, 51.954659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.821405, 32.537113, 51.510120>,  <32.397530, 32.351227, 52.036217>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.821405, 32.537113, 51.510120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.526899, 32.805992, 51.541279>,  <31.350197, 32.967319, 51.559975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.526899, 32.805992, 51.541279>,  <31.821405, 32.537113, 51.510120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.526899, 32.805992, 51.541279> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084097, 0.205112, -0.975119,
		-0.671449, -0.711393, -0.207546,
		-0.736263, 0.672197, 0.077896,
		31.306021, 33.007652, 51.564648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.294741, 32.429230, 50.951698>,  <31.821405, 32.537113, 51.510120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.294741, 32.429230, 50.951698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.267651, 32.811085, 51.067680>,  <31.251396, 33.040199, 51.137272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.267651, 32.811085, 51.067680>,  <31.294741, 32.429230, 50.951698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.267651, 32.811085, 51.067680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010117, 0.291268, -0.956588,
		-0.997653, -0.061854, -0.029385,
		-0.067728, 0.954640, 0.289959,
		31.247332, 33.097477, 51.154667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.902700, 32.696495, 50.406792>,  <31.294741, 32.429230, 50.951698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.902700, 32.696495, 50.406792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.065413, 33.015888, 50.584312>,  <31.163040, 33.207523, 50.690826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.065413, 33.015888, 50.584312>,  <30.902700, 32.696495, 50.406792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.065413, 33.015888, 50.584312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074873, 0.455035, -0.887320,
		-0.910453, 0.394171, 0.125314,
		0.406779, 0.798481, 0.443801,
		31.187447, 33.255432, 50.717453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.571505, 33.286652, 50.221382>,  <30.902700, 32.696495, 50.406792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.571505, 33.286652, 50.221382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.936272, 33.405178, 50.334946>,  <31.155132, 33.476292, 50.403084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.936272, 33.405178, 50.334946>,  <30.571505, 33.286652, 50.221382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.936272, 33.405178, 50.334946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175996, 0.342588, -0.922854,
		-0.370718, 0.891533, 0.260262,
		0.911917, 0.296314, 0.283910,
		31.209846, 33.494072, 50.420120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.588657, 34.056091, 50.170254>,  <30.571505, 33.286652, 50.221382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.588657, 34.056091, 50.170254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.956972, 33.905037, 50.131184>,  <31.177961, 33.814404, 50.107742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.956972, 33.905037, 50.131184>,  <30.588657, 34.056091, 50.170254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.956972, 33.905037, 50.131184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081899, 0.431989, -0.898152,
		0.381369, 0.819009, 0.428698,
		0.920788, -0.377637, -0.097672,
		31.233208, 33.791744, 50.101883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.096956, 34.576191, 49.920017>,  <30.588657, 34.056091, 50.170254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.096956, 34.576191, 49.920017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.285057, 34.233437, 49.835537>,  <31.397917, 34.027782, 49.784847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.285057, 34.233437, 49.835537>,  <31.096956, 34.576191, 49.920017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.285057, 34.233437, 49.835537> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031055, 0.255230, -0.966382,
		0.881985, 0.447885, 0.146633,
		0.470253, -0.856888, -0.211200,
		31.426132, 33.976372, 49.772179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.731916, 34.778603, 49.584717>,  <31.096956, 34.576191, 49.920017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.731916, 34.778603, 49.584717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.668474, 34.399109, 49.475353>,  <31.630409, 34.171413, 49.409733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.668474, 34.399109, 49.475353>,  <31.731916, 34.778603, 49.584717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.668474, 34.399109, 49.475353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158638, 0.248833, -0.955466,
		0.974515, -0.194913, 0.111039,
		-0.158603, -0.948731, -0.273413,
		31.620893, 34.114491, 49.393330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.216282, 34.675514, 49.008766>,  <31.731916, 34.778603, 49.584717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.216282, 34.675514, 49.008766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.954794, 34.374382, 48.978062>,  <31.797899, 34.193703, 48.959641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.954794, 34.374382, 48.978062>,  <32.216282, 34.675514, 49.008766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.954794, 34.374382, 48.978062> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079453, 0.032591, -0.996306,
		0.752550, -0.657408, 0.038509,
		-0.653724, -0.752830, -0.076759,
		31.758677, 34.148533, 48.955032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.524837, 34.333733, 48.506554>,  <32.216282, 34.675514, 49.008766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.524837, 34.333733, 48.506554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.158752, 34.172596, 48.510735>,  <31.939102, 34.075916, 48.513241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.158752, 34.172596, 48.510735>,  <32.524837, 34.333733, 48.506554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.158752, 34.172596, 48.510735> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036253, -0.108132, -0.993475,
		0.401341, -0.908861, 0.113568,
		-0.915211, -0.402839, 0.010449,
		31.884190, 34.051743, 48.513870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.592484, 33.705662, 48.238689>,  <32.524837, 34.333733, 48.506554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.592484, 33.705662, 48.238689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.212460, 33.823708, 48.198124>,  <31.984444, 33.894535, 48.173782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.212460, 33.823708, 48.198124>,  <32.592484, 33.705662, 48.238689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.212460, 33.823708, 48.198124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122379, 0.053396, -0.991046,
		-0.287057, -0.953969, -0.086845,
		-0.950064, 0.295115, -0.101418,
		31.927441, 33.912243, 48.167698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.324154, 33.275043, 47.645531>,  <32.592484, 33.705662, 48.238689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.324154, 33.275043, 47.645531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.038158, 33.553894, 47.666744>,  <31.866562, 33.721203, 47.679474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.038158, 33.553894, 47.666744>,  <32.324154, 33.275043, 47.645531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.038158, 33.553894, 47.666744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075650, -0.001730, -0.997133,
		-0.695032, -0.716950, 0.053974,
		-0.714988, 0.697123, 0.053035,
		31.823662, 33.763031, 47.682655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.865177, 33.089695, 47.116161>,  <32.324154, 33.275043, 47.645531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.865177, 33.089695, 47.116161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.803280, 33.476185, 47.198597>,  <31.766142, 33.708076, 47.248058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.803280, 33.476185, 47.198597>,  <31.865177, 33.089695, 47.116161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.803280, 33.476185, 47.198597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066750, 0.218350, -0.973585,
		-0.985697, -0.136900, -0.098283,
		-0.154744, 0.966220, 0.206089,
		31.756857, 33.766052, 47.260426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.328388, 33.271679, 46.691299>,  <31.865177, 33.089695, 47.116161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.328388, 33.271679, 46.691299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.558434, 33.587082, 46.778481>,  <31.696461, 33.776321, 46.830791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.558434, 33.587082, 46.778481>,  <31.328388, 33.271679, 46.691299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.558434, 33.587082, 46.778481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171538, 0.144268, -0.974557,
		-0.799887, 0.597868, -0.052287,
		0.575113, 0.788505, 0.217955,
		31.730968, 33.823635, 46.843868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.700880, 33.141163, 46.245106>,  <31.328388, 33.271679, 46.691299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.700880, 33.141163, 46.245106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.414276, 33.008823, 45.999454>,  <30.242313, 32.929420, 45.852066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.414276, 33.008823, 45.999454>,  <30.700880, 33.141163, 46.245106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.414276, 33.008823, 45.999454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244509, -0.705403, 0.665298,
		-0.653319, 0.626853, 0.424534,
		-0.716512, -0.330850, -0.614125,
		30.199322, 32.909569, 45.815216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.178434, 33.112553, 46.665745>,  <30.700880, 33.141163, 46.245106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.178434, 33.112553, 46.665745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.032627, 32.892345, 46.365330>,  <29.945143, 32.760223, 46.185081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.032627, 32.892345, 46.365330>,  <30.178434, 33.112553, 46.665745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.032627, 32.892345, 46.365330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387034, -0.643999, 0.659901,
		-0.846954, 0.531224, 0.021681,
		-0.364518, -0.550515, -0.751039,
		29.923271, 32.727192, 46.140018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.595480, 32.984325, 46.883030>,  <30.178434, 33.112553, 46.665745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.595480, 32.984325, 46.883030> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.695272, 32.698605, 46.621487>,  <29.755148, 32.527172, 46.464561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.695272, 32.698605, 46.621487>,  <29.595480, 32.984325, 46.883030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.695272, 32.698605, 46.621487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224663, -0.699476, 0.678424,
		-0.941959, -0.022355, -0.334983,
		0.249479, -0.714306, -0.653855,
		29.770117, 32.484314, 46.425331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.069099, 32.485897, 46.909382>,  <29.595480, 32.984325, 46.883030>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.069099, 32.485897, 46.909382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.383327, 32.297043, 46.749397>,  <29.571865, 32.183731, 46.653408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.383327, 32.297043, 46.749397>,  <29.069099, 32.485897, 46.909382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.383327, 32.297043, 46.749397> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004287, -0.650517, 0.759479,
		-0.618754, -0.594912, -0.513053,
		0.785573, -0.472131, -0.399960,
		29.618999, 32.155403, 46.629410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.824745, 31.898888, 46.910332>,  <29.069099, 32.485897, 46.909382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.824745, 31.898888, 46.910332> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.223846, 31.872900, 46.903793>,  <29.463306, 31.857307, 46.899868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.223846, 31.872900, 46.903793>,  <28.824745, 31.898888, 46.910332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.223846, 31.872900, 46.903793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034343, -0.705549, 0.707829,
		-0.057520, -0.705677, -0.706195,
		0.997753, -0.064967, -0.016349,
		29.523172, 31.853409, 46.898888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.855522, 31.247475, 47.030537>,  <28.824745, 31.898888, 46.910332>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.855522, 31.247475, 47.030537> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.215872, 31.397341, 47.118221>,  <29.432081, 31.487261, 47.170834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.215872, 31.397341, 47.118221>,  <28.855522, 31.247475, 47.030537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.215872, 31.397341, 47.118221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054770, -0.599073, 0.798819,
		0.430617, -0.707627, -0.560209,
		0.900872, 0.374667, 0.219214,
		29.486134, 31.509741, 47.183987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.153088, 30.684404, 47.295082>,  <28.855522, 31.247475, 47.030537>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.153088, 30.684404, 47.295082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.376125, 30.983810, 47.438648>,  <29.509947, 31.163454, 47.524788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.376125, 30.983810, 47.438648>,  <29.153088, 30.684404, 47.295082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.376125, 30.983810, 47.438648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059238, -0.467142, 0.882196,
		0.827999, -0.470644, -0.304815,
		0.557592, 0.748514, 0.358913,
		29.543404, 31.208364, 47.546322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.419298, 30.012920, 47.272789>,  <29.153088, 30.684404, 47.295082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.419298, 30.012920, 47.272789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.101257, 29.822615, 47.122345>,  <28.910433, 29.708431, 47.032078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.101257, 29.822615, 47.122345>,  <29.419298, 30.012920, 47.272789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.101257, 29.822615, 47.122345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013302, 0.606330, -0.795102,
		0.606330, -0.637190, -0.475766,
		0.795102, 0.475766, 0.376112,
		28.862726, 29.679886, 47.009510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.641727, 29.968920, 46.509453>,  <29.419298, 30.012920, 47.272789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.641727, 29.968920, 46.509453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.251150, 29.902803, 46.564934>,  <29.016804, 29.863134, 46.598221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.251150, 29.902803, 46.564934>,  <29.641727, 29.968920, 46.509453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.251150, 29.902803, 46.564934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185559, 0.315170, -0.930718,
		0.110124, -0.934530, -0.338417,
		-0.976443, -0.165291, 0.138702,
		28.958218, 29.853216, 46.606544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.562708, 29.513241, 45.996807>,  <29.641727, 29.968920, 46.509453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.562708, 29.513241, 45.996807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.203848, 29.669685, 46.078938>,  <28.988533, 29.763552, 46.128216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.203848, 29.669685, 46.078938>,  <29.562708, 29.513241, 45.996807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.203848, 29.669685, 46.078938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100926, 0.271028, -0.957266,
		-0.430044, -0.879532, -0.203680,
		-0.897150, 0.391110, 0.205322,
		28.934704, 29.787018, 46.140533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.129093, 29.219620, 45.511467>,  <29.562708, 29.513241, 45.996807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.129093, 29.219620, 45.511467> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.939236, 29.550325, 45.632244>,  <28.825321, 29.748749, 45.704712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.939236, 29.550325, 45.632244>,  <29.129093, 29.219620, 45.511467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.939236, 29.550325, 45.632244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030899, 0.327188, -0.944454,
		-0.879634, -0.457610, -0.129752,
		-0.474645, 0.826765, 0.301946,
		28.796843, 29.798355, 45.722828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.481894, 29.283749, 45.146065>,  <29.129093, 29.219620, 45.511467>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.481894, 29.283749, 45.146065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.600094, 29.650043, 45.254955>,  <28.671015, 29.869820, 45.320290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.600094, 29.650043, 45.254955>,  <28.481894, 29.283749, 45.146065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.600094, 29.650043, 45.254955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224855, 0.343617, -0.911794,
		-0.928504, 0.208223, 0.307446,
		0.295500, 0.915735, 0.272230,
		28.688744, 29.924765, 45.336624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.985380, 29.734869, 44.809212>,  <28.481894, 29.283749, 45.146065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.985380, 29.734869, 44.809212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.281797, 29.991247, 44.889259>,  <28.459648, 30.145073, 44.937290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.281797, 29.991247, 44.889259>,  <27.985380, 29.734869, 44.809212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.281797, 29.991247, 44.889259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160134, 0.458139, -0.874337,
		-0.652085, 0.615874, 0.442137,
		0.741041, 0.640944, 0.200123,
		28.504110, 30.183531, 44.949295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.760784, 30.394419, 44.647079>,  <27.985380, 29.734869, 44.809212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.760784, 30.394419, 44.647079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.158157, 30.439299, 44.656067>,  <28.396582, 30.466227, 44.661457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.158157, 30.439299, 44.656067>,  <27.760784, 30.394419, 44.647079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.158157, 30.439299, 44.656067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042325, 0.542703, -0.838857,
		-0.106313, 0.832397, 0.543887,
		0.993432, 0.112201, 0.022465,
		28.456186, 30.472960, 44.662807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<32.273472, 27.667274, 50.133648> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.404503, 28.043003, 50.092911>,  <32.483120, 28.268440, 50.068470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.404503, 28.043003, 50.092911>,  <32.273472, 27.667274, 50.133648>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.404503, 28.043003, 50.092911> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012221, -0.103566, -0.994547,
		-0.944746, 0.327034, -0.022446,
		0.327576, 0.939321, -0.101840,
		32.502777, 28.324799, 50.062359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.928116, 28.142239, 49.593887>,  <32.273472, 27.667274, 50.133648>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.928116, 28.142239, 49.593887> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.289982, 28.302397, 49.652225>,  <32.507099, 28.398491, 49.687229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.289982, 28.302397, 49.652225>,  <31.928116, 28.142239, 49.593887>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.289982, 28.302397, 49.652225> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094809, 0.144547, -0.984945,
		-0.415447, 0.904871, 0.092806,
		0.904663, 0.400394, 0.145841,
		32.561382, 28.422516, 49.695976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.880821, 28.710802, 49.176006>,  <31.928116, 28.142239, 49.593887>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.880821, 28.710802, 49.176006> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.271999, 28.638985, 49.218681>,  <32.506706, 28.595894, 49.244286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.271999, 28.638985, 49.218681>,  <31.880821, 28.710802, 49.176006>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.271999, 28.638985, 49.218681> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147439, 0.231697, -0.961550,
		0.147921, 0.956075, 0.253059,
		0.977947, -0.179544, 0.106690,
		32.565384, 28.585121, 49.250687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.164322, 29.175745, 48.804684>,  <31.880821, 28.710802, 49.176006>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.164322, 29.175745, 48.804684> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.488316, 28.943346, 48.836605>,  <32.682713, 28.803907, 48.855759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.488316, 28.943346, 48.836605>,  <32.164322, 29.175745, 48.804684>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.488316, 28.943346, 48.836605> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213036, 0.164722, -0.963059,
		0.546388, 0.797064, 0.257195,
		0.809985, -0.580996, 0.079801,
		32.731312, 28.769047, 48.860546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.708202, 29.525259, 48.451637>,  <32.164322, 29.175745, 48.804684>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.708202, 29.525259, 48.451637> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.824333, 29.143480, 48.479168>,  <32.894012, 28.914413, 48.495686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.824333, 29.143480, 48.479168>,  <32.708202, 29.525259, 48.451637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.824333, 29.143480, 48.479168> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237319, 0.002133, -0.971429,
		0.927033, 0.298367, 0.227128,
		0.290327, -0.954449, 0.068831,
		32.911430, 28.857145, 48.499817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.405041, 29.494423, 48.126171>,  <32.708202, 29.525259, 48.451637>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.405041, 29.494423, 48.126171> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.254261, 29.123945, 48.122589>,  <33.163795, 28.901659, 48.120438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.254261, 29.123945, 48.122589>,  <33.405041, 29.494423, 48.126171>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254261, 29.123945, 48.122589> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328845, -0.124780, -0.936104,
		0.865894, -0.355807, 0.351609,
		-0.376946, -0.926192, -0.008959,
		33.141178, 28.846088, 48.119900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931362, 29.101599, 47.844528>,  <33.405041, 29.494423, 48.126171>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931362, 29.101599, 47.844528> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.642113, 28.831827, 47.784885>,  <33.468563, 28.669964, 47.749100>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.642113, 28.831827, 47.784885>,  <33.931362, 29.101599, 47.844528>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.642113, 28.831827, 47.784885> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292773, -0.103760, -0.950536,
		0.625596, -0.731014, 0.272486,
		-0.723128, -0.674428, -0.149109,
		33.425175, 28.629499, 47.740154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.235336, 28.464787, 47.556953>,  <33.931362, 29.101599, 47.844528>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.235336, 28.464787, 47.556953> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.852596, 28.457090, 47.440971>,  <33.622952, 28.452473, 47.371380>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.852596, 28.457090, 47.440971>,  <34.235336, 28.464787, 47.556953>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.852596, 28.457090, 47.440971> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284109, -0.271617, -0.919514,
		-0.061065, -0.962213, 0.265362,
		-0.956846, -0.019241, -0.289959,
		33.565544, 28.451319, 47.353985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.320042, 27.995903, 47.079765>,  <34.235336, 28.464787, 47.556953>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.320042, 27.995903, 47.079765> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.956223, 28.150816, 47.019463>,  <33.737930, 28.243763, 46.983280>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.956223, 28.150816, 47.019463>,  <34.320042, 27.995903, 47.079765>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.956223, 28.150816, 47.019463> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122352, -0.097149, -0.987721,
		-0.397173, -0.916829, 0.040978,
		-0.909551, 0.387282, -0.150761,
		33.683357, 28.267000, 46.974236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941303, 27.504763, 46.615582>,  <34.320042, 27.995903, 47.079765>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.941303, 27.504763, 46.615582> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.793991, 27.875351, 46.584545>,  <33.705605, 28.097704, 46.565922>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.793991, 27.875351, 46.584545>,  <33.941303, 27.504763, 46.615582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.793991, 27.875351, 46.584545> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073403, -0.054224, -0.995827,
		-0.926811, -0.372444, -0.048036,
		-0.368285, 0.926469, -0.077594,
		33.683506, 28.153292, 46.561268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.388035, 27.456638, 46.146027>,  <33.941303, 27.504763, 46.615582>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.388035, 27.456638, 46.146027> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.504372, 27.839333, 46.149292>,  <33.574173, 28.068949, 46.151253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.504372, 27.839333, 46.149292>,  <33.388035, 27.456638, 46.146027>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504372, 27.839333, 46.149292> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040826, -0.003886, -0.999159,
		-0.955901, 0.290927, -0.040190,
		0.290839, 0.956738, 0.008163,
		33.591621, 28.126354, 46.151741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.059330, 27.828960, 45.561024>,  <33.388035, 27.456638, 46.146027>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.059330, 27.828960, 45.561024> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.378983, 28.052116, 45.650597>,  <33.570774, 28.186010, 45.704342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.378983, 28.052116, 45.650597>,  <33.059330, 27.828960, 45.561024>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.378983, 28.052116, 45.650597> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283117, -0.020665, -0.958863,
		-0.530313, 0.829657, -0.174463,
		0.799132, 0.557891, 0.223931,
		33.618721, 28.219484, 45.717777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.373432, 27.749975, 45.697578>,  <33.059330, 27.828960, 45.561024>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.373432, 27.749975, 45.697578> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.112728, 27.562521, 45.459053>,  <31.956305, 27.450048, 45.315937>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.112728, 27.562521, 45.459053>,  <32.373432, 27.749975, 45.697578>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.112728, 27.562521, 45.459053> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377967, -0.480954, 0.791091,
		-0.657532, 0.740988, 0.136338,
		-0.651761, -0.468636, -0.596312,
		31.917200, 27.421930, 45.280159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.747995, 27.820843, 46.023167>,  <32.373432, 27.749975, 45.697578>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.747995, 27.820843, 46.023167> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.674252, 27.506989, 45.786404>,  <31.630005, 27.318676, 45.644344>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.674252, 27.506989, 45.786404>,  <31.747995, 27.820843, 46.023167>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.674252, 27.506989, 45.786404> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512656, -0.437053, 0.739032,
		-0.838567, 0.439695, -0.321673,
		-0.184361, -0.784636, -0.591911,
		31.618944, 27.271597, 45.608829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.048048, 27.752274, 46.065914>,  <31.747995, 27.820843, 46.023167>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.048048, 27.752274, 46.065914> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.168724, 27.401655, 45.915901>,  <31.241129, 27.191284, 45.825893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.168724, 27.401655, 45.915901>,  <31.048048, 27.752274, 46.065914>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.168724, 27.401655, 45.915901> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413591, -0.474746, 0.776890,
		-0.859026, -0.079270, -0.505758,
		0.301691, -0.876546, -0.375033,
		31.259232, 27.138691, 45.803391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.458973, 27.346437, 45.905956>,  <31.048048, 27.752274, 46.065914>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.458973, 27.346437, 45.905956> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.753206, 27.076801, 45.932846>,  <30.929747, 26.915020, 45.948982>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.753206, 27.076801, 45.932846>,  <30.458973, 27.346437, 45.905956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.753206, 27.076801, 45.932846> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546153, -0.531395, 0.647562,
		-0.400788, -0.513055, -0.759041,
		0.735586, -0.674088, 0.067230,
		30.973881, 26.874575, 45.953014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.141563, 26.698729, 45.816238>,  <30.458973, 27.346437, 45.905956>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.141563, 26.698729, 45.816238> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.495377, 26.629599, 45.989552>,  <30.707664, 26.588120, 46.093540>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.495377, 26.629599, 45.989552>,  <30.141563, 26.698729, 45.816238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.495377, 26.629599, 45.989552> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453476, -0.536356, 0.711816,
		0.109374, -0.826108, -0.552796,
		0.884532, -0.172826, 0.433284,
		30.760736, 26.577751, 46.119537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.201153, 25.957813, 46.035236>,  <30.141563, 26.698729, 45.816238>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.201153, 25.957813, 46.035236> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.488623, 26.107779, 46.269482>,  <30.661104, 26.197758, 46.410030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.488623, 26.107779, 46.269482>,  <30.201153, 25.957813, 46.035236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.488623, 26.107779, 46.269482> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364567, -0.513996, 0.776466,
		0.592113, -0.771522, -0.232714,
		0.718674, 0.374916, 0.585616,
		30.704226, 26.220253, 46.445168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.351048, 25.359543, 46.475666>,  <30.201153, 25.957813, 46.035236>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.351048, 25.359543, 46.475666> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.496386, 25.683239, 46.660320>,  <30.583588, 25.877457, 46.771114>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.496386, 25.683239, 46.660320>,  <30.351048, 25.359543, 46.475666>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.496386, 25.683239, 46.660320> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314329, -0.359969, 0.878419,
		0.877029, -0.464273, 0.123576,
		0.363343, 0.809242, 0.461637,
		30.605389, 25.926012, 46.798813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.696768, 25.098200, 47.078545>,  <30.351048, 25.359543, 46.475666>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.696768, 25.098200, 47.078545> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.624008, 25.481398, 47.167233>,  <30.580353, 25.711317, 47.220444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.624008, 25.481398, 47.167233>,  <30.696768, 25.098200, 47.078545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.624008, 25.481398, 47.167233> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393530, -0.277557, 0.876411,
		0.901136, 0.072168, 0.427488,
		-0.181901, 0.957995, 0.221716,
		30.569437, 25.768797, 47.233746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.776770, 25.094349, 47.735867>,  <30.696768, 25.098200, 47.078545>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.776770, 25.094349, 47.735867> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.564228, 25.428341, 47.678638>,  <30.436703, 25.628736, 47.644302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.564228, 25.428341, 47.678638>,  <30.776770, 25.094349, 47.735867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.564228, 25.428341, 47.678638> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440974, -0.128416, 0.888286,
		0.723329, 0.535085, 0.436440,
		-0.531355, 0.834981, -0.143071,
		30.404821, 25.678835, 47.635715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.748110, 25.433006, 48.315060>,  <30.776770, 25.094349, 47.735867>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.748110, 25.433006, 48.315060> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.438808, 25.620844, 48.144619>,  <30.253227, 25.733547, 48.042355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.438808, 25.620844, 48.144619>,  <30.748110, 25.433006, 48.315060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.438808, 25.620844, 48.144619> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534505, -0.121171, 0.836434,
		0.341155, 0.874527, 0.344697,
		-0.773252, 0.469596, -0.426101,
		30.206833, 25.761723, 48.016788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.519442, 26.017820, 48.817680>,  <30.748110, 25.433006, 48.315060>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.519442, 26.017820, 48.817680> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.233297, 25.924208, 48.554321>,  <30.061611, 25.868040, 48.396305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.233297, 25.924208, 48.554321>,  <30.519442, 26.017820, 48.817680>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.233297, 25.924208, 48.554321> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682713, 0.033343, 0.729925,
		-0.148873, 0.971657, -0.183629,
		-0.715360, -0.234033, -0.658399,
		30.018690, 25.853998, 48.356800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.919149, 26.509644, 48.991405>,  <30.519442, 26.017820, 48.817680>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.919149, 26.509644, 48.991405> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.790867, 26.179108, 48.806232>,  <29.713898, 25.980785, 48.695129>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.790867, 26.179108, 48.806232>,  <29.919149, 26.509644, 48.991405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.790867, 26.179108, 48.806232> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666353, -0.150507, 0.730289,
		-0.673142, 0.542687, -0.502366,
		-0.320708, -0.826341, -0.462933,
		29.694654, 25.931206, 48.667351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.250799, 26.557076, 48.982468>,  <29.919149, 26.509644, 48.991405>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.250799, 26.557076, 48.982468> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.302980, 26.168106, 48.905136>,  <29.334290, 25.934725, 48.858738>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.302980, 26.168106, 48.905136>,  <29.250799, 26.557076, 48.982468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.302980, 26.168106, 48.905136> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649913, -0.231132, 0.724011,
		-0.748729, 0.031199, -0.662141,
		0.130453, -0.972422, -0.193332,
		29.342117, 25.876379, 48.847137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.601097, 26.241518, 48.820950>,  <29.250799, 26.557076, 48.982468>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.601097, 26.241518, 48.820950> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.853487, 25.967600, 48.966785>,  <29.004921, 25.803249, 49.054287>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.853487, 25.967600, 48.966785>,  <28.601097, 26.241518, 48.820950>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.853487, 25.967600, 48.966785> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644419, -0.200965, 0.737792,
		-0.431969, -0.700475, -0.568100,
		0.630973, -0.684797, 0.364589,
		29.042780, 25.762161, 49.076164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.206047, 26.818911, 48.403603>,  <28.601097, 26.241518, 48.820950>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.206047, 26.818911, 48.403603> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.204130, 27.165634, 48.603050>,  <28.202980, 27.373669, 48.722717>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.204130, 27.165634, 48.603050>,  <28.206047, 26.818911, 48.403603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.204130, 27.165634, 48.603050> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117808, 0.495640, -0.860501,
		-0.993025, 0.054616, -0.104494,
		-0.004794, 0.866809, 0.498617,
		28.202692, 27.425676, 48.752636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.707392, 27.230516, 48.124920>,  <28.206047, 26.818911, 48.403603>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.707392, 27.230516, 48.124920> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.972099, 27.470911, 48.304195>,  <28.130924, 27.615149, 48.411762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.972099, 27.470911, 48.304195>,  <27.707392, 27.230516, 48.124920>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.972099, 27.470911, 48.304195> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094778, 0.525957, -0.845213,
		-0.743692, 0.601815, 0.291102,
		0.661770, 0.600988, 0.448189,
		28.170630, 27.651207, 48.438652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.492760, 27.897001, 48.044243>,  <27.707392, 27.230516, 48.124920>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.492760, 27.897001, 48.044243> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.878889, 27.962452, 48.125610>,  <28.110567, 28.001722, 48.174431>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.878889, 27.962452, 48.125610>,  <27.492760, 27.897001, 48.044243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.878889, 27.962452, 48.125610> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058063, 0.625108, -0.778376,
		-0.254518, 0.763195, 0.593931,
		0.965324, 0.163625, 0.203414,
		28.168486, 28.011539, 48.186634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.568098, 28.607199, 48.079651>,  <27.492760, 27.897001, 48.044243>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.568098, 28.607199, 48.079651> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.929510, 28.448523, 48.014816>,  <28.146357, 28.353317, 47.975918>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.929510, 28.448523, 48.014816>,  <27.568098, 28.607199, 48.079651>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.929510, 28.448523, 48.014816> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221233, 0.755743, -0.616367,
		0.367000, 0.521048, 0.770598,
		0.903530, -0.396688, -0.162084,
		28.200569, 28.329515, 47.966190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.936493, 29.256018, 48.067974>,  <27.568098, 28.607199, 48.079651>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.936493, 29.256018, 48.067974> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.219526, 29.031872, 47.895779>,  <28.389345, 28.897385, 47.792461>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.219526, 29.031872, 47.895779>,  <27.936493, 29.256018, 48.067974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.219526, 29.031872, 47.895779> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188703, 0.736932, -0.649093,
		0.680969, 0.378052, 0.627183,
		0.707582, -0.560363, -0.430489,
		28.431801, 28.863762, 47.766632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.403639, 29.746916, 48.019024>,  <27.936493, 29.256018, 48.067974>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.403639, 29.746916, 48.019024> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.495523, 29.435162, 47.785858>,  <28.550653, 29.248108, 47.645958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.495523, 29.435162, 47.785858>,  <28.403639, 29.746916, 48.019024>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.495523, 29.435162, 47.785858> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430625, 0.618506, -0.657277,
		0.872809, -0.100034, 0.477701,
		0.229711, -0.779386, -0.582915,
		28.564436, 29.201345, 47.610985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.062563, 29.849644, 47.910690>,  <28.403639, 29.746916, 48.019024>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.062563, 29.849644, 47.910690> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.911823, 29.608402, 47.629478>,  <28.821381, 29.463657, 47.460751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.911823, 29.608402, 47.629478>,  <29.062563, 29.849644, 47.910690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.911823, 29.608402, 47.629478> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151416, 0.708665, -0.689105,
		0.913815, -0.366137, -0.175740,
		-0.376848, -0.603105, -0.703029,
		28.798769, 29.427471, 47.418571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.626551, 30.333467, 47.904011>,  <29.062563, 29.849644, 47.910690>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.626551, 30.333467, 47.904011> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.627125, 30.728752, 47.965248>,  <29.627470, 30.965923, 48.001991>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.627125, 30.728752, 47.965248>,  <29.626551, 30.333467, 47.904011>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.627125, 30.728752, 47.965248> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015573, -0.153100, 0.988088,
		0.999878, 0.000965, -0.015610,
		0.001437, 0.988210, 0.153096,
		29.627556, 31.025215, 48.011177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.899036, 30.271893, 48.551109>,  <29.626551, 30.333467, 47.904011>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.899036, 30.271893, 48.551109> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.804966, 30.660656, 48.547443>,  <29.748524, 30.893915, 48.545242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.804966, 30.660656, 48.547443>,  <29.899036, 30.271893, 48.551109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.804966, 30.660656, 48.547443> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007109, 0.011148, 0.999913,
		0.971927, 0.235091, -0.009531,
		-0.235176, 0.971910, -0.009164,
		29.734413, 30.952229, 48.544693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.392422, 30.689545, 48.883366>,  <29.899036, 30.271893, 48.551109>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.392422, 30.689545, 48.883366> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.069078, 30.924482, 48.899292>,  <29.875072, 31.065445, 48.908848>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.069078, 30.924482, 48.899292>,  <30.392422, 30.689545, 48.883366>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.069078, 30.924482, 48.899292> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105912, 0.078570, 0.991267,
		0.579086, 0.805515, -0.125719,
		-0.808358, 0.587344, 0.039815,
		29.826571, 31.100685, 48.911236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.492622, 31.188656, 49.245789>,  <30.392422, 30.689545, 48.883366>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.492622, 31.188656, 49.245789> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.096279, 31.227697, 49.283039>,  <29.858473, 31.251122, 49.305389>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.096279, 31.227697, 49.283039>,  <30.492622, 31.188656, 49.245789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.096279, 31.227697, 49.283039> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120318, 0.327150, 0.937282,
		0.061014, 0.939919, -0.335902,
		-0.990859, 0.097603, 0.093128,
		29.799021, 31.256979, 49.310978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.318933, 31.915646, 49.576962>,  <30.492622, 31.188656, 49.245789>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.318933, 31.915646, 49.576962> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.018919, 31.663153, 49.655945>,  <29.838909, 31.511658, 49.703335>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.018919, 31.663153, 49.655945>,  <30.318933, 31.915646, 49.576962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.018919, 31.663153, 49.655945> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073836, 0.216764, 0.973428,
		-0.657260, 0.744687, -0.115974,
		-0.750038, -0.631232, 0.197455,
		29.793907, 31.473783, 49.715183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.912851, 32.280788, 49.995674>,  <30.318933, 31.915646, 49.576962>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.912851, 32.280788, 49.995674> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.798672, 31.901831, 50.053585>,  <29.730164, 31.674456, 50.088329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.798672, 31.901831, 50.053585>,  <29.912851, 32.280788, 49.995674>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.798672, 31.901831, 50.053585> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003127, 0.151979, 0.988379,
		-0.958388, 0.281680, -0.046345,
		-0.285450, -0.947396, 0.144775,
		29.713037, 31.617613, 50.097019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.263550, 32.288113, 50.377209>,  <29.912851, 32.280788, 49.995674>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.263550, 32.288113, 50.377209> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.398462, 31.918360, 50.448494>,  <29.479408, 31.696508, 50.491264>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.398462, 31.918360, 50.448494>,  <29.263550, 32.288113, 50.377209>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.398462, 31.918360, 50.448494> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159980, 0.130273, 0.978486,
		-0.927712, -0.358533, -0.103944,
		0.337279, -0.924383, 0.178214,
		29.499645, 31.641045, 50.501957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.890522, 32.060940, 50.932114>,  <29.263550, 32.288113, 50.377209>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.890522, 32.060940, 50.932114> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.172377, 31.777203, 50.924934>,  <29.341490, 31.606960, 50.920628>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.172377, 31.777203, 50.924934>,  <28.890522, 32.060940, 50.932114>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.172377, 31.777203, 50.924934> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121353, -0.145394, 0.981903,
		-0.699114, -0.689707, -0.188530,
		0.704637, -0.709341, -0.017949,
		29.383768, 31.564400, 50.919548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.610983, 31.524317, 51.393768>,  <28.890522, 32.060940, 50.932114>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.610983, 31.524317, 51.393768> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.009483, 31.490446, 51.386650>,  <29.248583, 31.470123, 51.382378>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.009483, 31.490446, 51.386650>,  <28.610983, 31.524317, 51.393768>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.009483, 31.490446, 51.386650> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011165, -0.078175, 0.996877,
		-0.085835, -0.993334, -0.076935,
		0.996247, -0.084708, -0.017800,
		29.308359, 31.465044, 51.381310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<32.925919, 34.753525, 36.141010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.253292, 34.601917, 36.313755>,  <33.449718, 34.510952, 36.417404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.253292, 34.601917, 36.313755>,  <32.925919, 34.753525, 36.141010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.253292, 34.601917, 36.313755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519488, -0.166889, 0.838022,
		-0.245552, -0.910216, -0.333483,
		0.818435, -0.379018, 0.431866,
		33.498821, 34.488213, 36.443314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.726948, 34.160156, 36.483437>,  <32.925919, 34.753525, 36.141010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.726948, 34.160156, 36.483437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067341, 34.271927, 36.661312>,  <33.271576, 34.338989, 36.768040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067341, 34.271927, 36.661312>,  <32.726948, 34.160156, 36.483437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067341, 34.271927, 36.661312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419101, -0.148999, 0.895630,
		0.316520, -0.948536, -0.009689,
		0.850981, 0.279424, 0.444693,
		33.322636, 34.355755, 36.794720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.913673, 33.617229, 37.050297>,  <32.726948, 34.160156, 36.483437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.913673, 33.617229, 37.050297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.109917, 33.954239, 37.139259>,  <33.227661, 34.156445, 37.192638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.109917, 33.954239, 37.139259>,  <32.913673, 33.617229, 37.050297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.109917, 33.954239, 37.139259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286873, -0.084839, 0.954205,
		0.822805, -0.531942, 0.200073,
		0.490608, 0.842520, 0.222405,
		33.257099, 34.206993, 37.205982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.130493, 33.515446, 37.748337>,  <32.913673, 33.617229, 37.050297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.130493, 33.515446, 37.748337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.126080, 33.906738, 37.665451>,  <33.123432, 34.141514, 37.615719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.126080, 33.906738, 37.665451>,  <33.130493, 33.515446, 37.748337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.126080, 33.906738, 37.665451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443635, 0.180929, 0.877754,
		0.896139, 0.101617, 0.431982,
		-0.011037, 0.978232, -0.207219,
		33.122768, 34.200207, 37.603287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460850, 33.880424, 38.206615>,  <33.130493, 33.515446, 37.748337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460850, 33.880424, 38.206615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.182289, 34.122734, 38.052696>,  <33.015152, 34.268120, 37.960346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.182289, 34.122734, 38.052696>,  <33.460850, 33.880424, 38.206615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.182289, 34.122734, 38.052696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388355, 0.132792, 0.911892,
		0.603496, 0.784478, 0.142779,
		-0.696400, 0.605772, -0.384796,
		32.973370, 34.304466, 37.937256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349854, 34.402222, 38.829384>,  <33.460850, 33.880424, 38.206615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.349854, 34.402222, 38.829384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.060276, 34.481949, 38.565205>,  <32.886532, 34.529785, 38.406700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.060276, 34.481949, 38.565205>,  <33.349854, 34.402222, 38.829384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060276, 34.481949, 38.565205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648135, 0.131399, 0.750103,
		0.236287, 0.971086, 0.034057,
		-0.723940, 0.199314, -0.660443,
		32.843094, 34.541744, 38.367073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.948303, 34.867500, 39.201988>,  <33.349854, 34.402222, 38.829384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.948303, 34.867500, 39.201988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717941, 34.733704, 38.903606>,  <32.579723, 34.653423, 38.724579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717941, 34.733704, 38.903606>,  <32.948303, 34.867500, 39.201988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717941, 34.733704, 38.903606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781727, -0.041699, 0.622224,
		-0.239236, 0.941475, -0.237468,
		-0.575907, -0.334493, -0.745953,
		32.545170, 34.633354, 38.679821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.356289, 35.306801, 39.069969>,  <32.948303, 34.867500, 39.201988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.356289, 35.306801, 39.069969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245968, 34.939610, 38.955956>,  <32.179775, 34.719296, 38.887547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245968, 34.939610, 38.955956>,  <32.356289, 35.306801, 39.069969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.245968, 34.939610, 38.955956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806370, 0.059568, 0.588404,
		-0.523165, 0.392124, -0.756662,
		-0.275801, -0.917982, -0.285033,
		32.163227, 34.664215, 38.870445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.662548, 35.444016, 38.859978>,  <32.356289, 35.306801, 39.069969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.662548, 35.444016, 38.859978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.730078, 35.057583, 38.938141>,  <31.770596, 34.825722, 38.985039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.730078, 35.057583, 38.938141>,  <31.662548, 35.444016, 38.859978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.730078, 35.057583, 38.938141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739049, 0.007099, 0.673615,
		-0.652155, -0.258134, -0.712784,
		0.168823, -0.966083, 0.195404,
		31.780724, 34.767757, 38.996761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.059179, 35.184521, 39.197853>,  <31.662548, 35.444016, 38.859978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.059179, 35.184521, 39.197853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.309990, 34.880867, 39.267773>,  <31.460476, 34.698673, 39.309727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.309990, 34.880867, 39.267773>,  <31.059179, 35.184521, 39.197853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.309990, 34.880867, 39.267773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470221, -0.189933, 0.861869,
		-0.621073, -0.622608, -0.476053,
		0.627025, -0.759134, 0.174801,
		31.498098, 34.653126, 39.320213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.657822, 34.639462, 39.391613>,  <31.059179, 35.184521, 39.197853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.657822, 34.639462, 39.391613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.021854, 34.547825, 39.529751>,  <31.240274, 34.492844, 39.612633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.021854, 34.547825, 39.529751>,  <30.657822, 34.639462, 39.391613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.021854, 34.547825, 39.529751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393453, -0.215914, 0.893631,
		-0.130160, -0.949156, -0.286637,
		0.910084, -0.229093, 0.345345,
		31.294880, 34.479095, 39.633354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.541309, 34.026382, 39.762383>,  <30.657822, 34.639462, 39.391613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.541309, 34.026382, 39.762383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.855564, 34.233952, 39.897137>,  <31.044117, 34.358494, 39.977989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.855564, 34.233952, 39.897137>,  <30.541309, 34.026382, 39.762383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.855564, 34.233952, 39.897137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220309, -0.274176, 0.936105,
		0.578135, -0.809657, -0.101079,
		0.785636, 0.518926, 0.336885,
		31.091255, 34.389629, 39.998203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.443497, 33.240402, 39.524918>,  <30.541309, 34.026382, 39.762383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.443497, 33.240402, 39.524918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.077080, 33.092335, 39.463158>,  <29.857229, 33.003494, 39.426102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.077080, 33.092335, 39.463158>,  <30.443497, 33.240402, 39.524918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.077080, 33.092335, 39.463158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079525, 0.209675, -0.974532,
		0.393118, -0.904991, -0.162634,
		-0.916043, -0.370172, -0.154396,
		29.802267, 32.981285, 39.416840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.548199, 32.778618, 39.038700>,  <30.443497, 33.240402, 39.524918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.548199, 32.778618, 39.038700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.176579, 32.926594, 39.037483>,  <29.953606, 33.015377, 39.036751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.176579, 32.926594, 39.037483>,  <30.548199, 32.778618, 39.038700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.176579, 32.926594, 39.037483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122387, 0.299573, -0.946191,
		-0.349118, -0.879433, -0.323594,
		-0.929052, 0.369937, -0.003045,
		29.897863, 33.037575, 39.036572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.000532, 32.390545, 38.577324>,  <30.548199, 32.778618, 39.038700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.000532, 32.390545, 38.577324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.912720, 32.779030, 38.614304>,  <29.860033, 33.012123, 38.636490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.912720, 32.779030, 38.614304>,  <30.000532, 32.390545, 38.577324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.912720, 32.779030, 38.614304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142786, 0.125725, -0.981736,
		-0.965100, -0.202321, -0.166276,
		-0.219531, 0.971215, 0.092449,
		29.846861, 33.070393, 38.642036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.641655, 32.584793, 37.999420>,  <30.000532, 32.390545, 38.577324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.641655, 32.584793, 37.999420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.703262, 32.965656, 38.105007>,  <29.740227, 33.194172, 38.168358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.703262, 32.965656, 38.105007>,  <29.641655, 32.584793, 37.999420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.703262, 32.965656, 38.105007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139051, 0.285383, -0.948273,
		-0.978235, 0.109348, 0.176353,
		0.154020, 0.952155, 0.263967,
		29.749468, 33.251305, 38.184196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.139414, 32.918728, 37.592129>,  <29.641655, 32.584793, 37.999420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.139414, 32.918728, 37.592129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.436365, 33.175304, 37.669510>,  <29.614536, 33.329250, 37.715939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.436365, 33.175304, 37.669510>,  <29.139414, 32.918728, 37.592129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.436365, 33.175304, 37.669510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155559, 0.115821, -0.981013,
		-0.651671, 0.758376, -0.013799,
		0.742379, 0.641444, 0.193449,
		29.659079, 33.367737, 37.727543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.149672, 33.272408, 37.022324>,  <29.139414, 32.918728, 37.592129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.149672, 33.272408, 37.022324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.490149, 33.405674, 37.184544>,  <29.694435, 33.485634, 37.281876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.490149, 33.405674, 37.184544>,  <29.149672, 33.272408, 37.022324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.490149, 33.405674, 37.184544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389980, 0.115664, -0.913530,
		-0.351269, 0.935745, -0.031477,
		0.851191, 0.333170, 0.405551,
		29.745506, 33.505627, 37.306210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.385378, 33.727257, 36.508327>,  <29.149672, 33.272408, 37.022324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.385378, 33.727257, 36.508327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.712217, 33.698898, 36.737175>,  <29.908321, 33.681881, 36.874485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.712217, 33.698898, 36.737175>,  <29.385378, 33.727257, 36.508327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.712217, 33.698898, 36.737175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576323, 0.124817, -0.807634,
		-0.014150, 0.989644, 0.142848,
		0.817099, -0.070898, 0.572121,
		29.957348, 33.677628, 36.908810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.964561, 34.357800, 36.372181>,  <29.385378, 33.727257, 36.508327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.964561, 34.357800, 36.372181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.148394, 34.032475, 36.514900>,  <30.258692, 33.837280, 36.600533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.148394, 34.032475, 36.514900>,  <29.964561, 34.357800, 36.372181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.148394, 34.032475, 36.514900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635537, 0.020542, -0.771797,
		0.620386, 0.581458, 0.526334,
		0.459580, -0.813317, 0.356794,
		30.286268, 33.788479, 36.621937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.587578, 34.447948, 36.171356>,  <29.964561, 34.357800, 36.372181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.587578, 34.447948, 36.171356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.657825, 34.061844, 36.248737>,  <30.699974, 33.830181, 36.295166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.657825, 34.061844, 36.248737>,  <30.587578, 34.447948, 36.171356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.657825, 34.061844, 36.248737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658863, -0.030764, -0.751633,
		0.731476, 0.259459, 0.630574,
		0.175619, -0.965264, 0.193451,
		30.710510, 33.772266, 36.306774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.281290, 34.402874, 36.114635>,  <30.587578, 34.447948, 36.171356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.281290, 34.402874, 36.114635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.152172, 34.026684, 36.072102>,  <31.074701, 33.800968, 36.046581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.152172, 34.026684, 36.072102>,  <31.281290, 34.402874, 36.114635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.152172, 34.026684, 36.072102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614040, -0.122593, -0.779696,
		0.720249, -0.316977, 0.617063,
		-0.322794, -0.940476, -0.106339,
		31.055334, 33.744541, 36.040199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.852009, 33.878307, 36.218330>,  <31.281290, 34.402874, 36.114635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.852009, 33.878307, 36.218330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.580276, 33.691029, 35.992302>,  <31.417238, 33.578659, 35.856686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.580276, 33.691029, 35.992302>,  <31.852009, 33.878307, 36.218330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.580276, 33.691029, 35.992302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690793, -0.148168, -0.707709,
		0.247624, -0.871111, 0.424084,
		-0.679329, -0.468200, -0.565067,
		31.376478, 33.550568, 35.822781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.198627, 33.320606, 35.953262>,  <31.852009, 33.878307, 36.218330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.198627, 33.320606, 35.953262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.879564, 33.349548, 35.713760>,  <31.688126, 33.366913, 35.570061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.879564, 33.349548, 35.713760>,  <32.198627, 33.320606, 35.953262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.879564, 33.349548, 35.713760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581827, -0.169073, -0.795545,
		-0.158772, -0.982946, 0.092781,
		-0.797664, 0.072328, -0.598749,
		31.640266, 33.371254, 35.534134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.357807, 32.772549, 35.437763>,  <32.198627, 33.320606, 35.953262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.357807, 32.772549, 35.437763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.072514, 33.018158, 35.302544>,  <31.901337, 33.165524, 35.221413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.072514, 33.018158, 35.302544>,  <32.357807, 32.772549, 35.437763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.072514, 33.018158, 35.302544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398510, -0.041526, -0.916223,
		-0.576617, -0.788198, -0.215076,
		-0.713234, 0.614019, -0.338049,
		31.858543, 33.202362, 35.201130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.735947, 32.158077, 35.375439>,  <32.357807, 32.772549, 35.437763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.735947, 32.158077, 35.375439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.607788, 32.005348, 35.028667>,  <32.530895, 31.913712, 34.820606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.607788, 32.005348, 35.028667>,  <32.735947, 32.158077, 35.375439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.607788, 32.005348, 35.028667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094493, -0.897724, 0.430305,
		-0.942560, 0.219786, 0.251546,
		-0.320394, -0.381819, -0.866927,
		32.511669, 31.890802, 34.768589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.153027, 31.830763, 35.547482>,  <32.735947, 32.158077, 35.375439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.153027, 31.830763, 35.547482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293449, 31.643202, 35.223286>,  <32.377705, 31.530664, 35.028770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293449, 31.643202, 35.223286>,  <32.153027, 31.830763, 35.547482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.293449, 31.643202, 35.223286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187578, -0.883248, 0.429752,
		-0.917374, 0.001163, -0.398025,
		0.351055, -0.468904, -0.810487,
		32.398766, 31.502531, 34.980141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.708887, 31.303692, 35.331966>,  <32.153027, 31.830763, 35.547482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.708887, 31.303692, 35.331966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.091640, 31.222040, 35.249302>,  <32.321293, 31.173050, 35.199703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.091640, 31.222040, 35.249302>,  <31.708887, 31.303692, 35.331966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.091640, 31.222040, 35.249302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019833, -0.755702, 0.654615,
		-0.289800, -0.622290, -0.727166,
		0.956881, -0.204129, -0.206661,
		32.378704, 31.160801, 35.187305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.815639, 30.625092, 35.156960>,  <31.708887, 31.303692, 35.331966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.815639, 30.625092, 35.156960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.138725, 30.787785, 35.327682>,  <32.332577, 30.885401, 35.430115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.138725, 30.787785, 35.327682>,  <31.815639, 30.625092, 35.156960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.138725, 30.787785, 35.327682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042930, -0.681431, 0.730622,
		0.588006, -0.608459, -0.532942,
		0.807717, 0.406731, 0.426807,
		32.381039, 30.909803, 35.455723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.210815, 30.054237, 35.420830>,  <31.815639, 30.625092, 35.156960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.210815, 30.054237, 35.420830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333916, 30.355350, 35.653591>,  <32.407776, 30.536018, 35.793247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333916, 30.355350, 35.653591>,  <32.210815, 30.054237, 35.420830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.333916, 30.355350, 35.653591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056872, -0.625043, 0.778516,
		0.949766, -0.206493, -0.235168,
		0.307749, 0.752783, 0.581901,
		32.426239, 30.581186, 35.828163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.498077, 29.727186, 36.014145>,  <32.210815, 30.054237, 35.420830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.498077, 29.727186, 36.014145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.448032, 30.099316, 36.152042>,  <32.418007, 30.322594, 36.234779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.448032, 30.099316, 36.152042>,  <32.498077, 29.727186, 36.014145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.448032, 30.099316, 36.152042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074485, -0.355300, 0.931780,
		0.989343, 0.090897, 0.113747,
		-0.125110, 0.930323, 0.344743,
		32.410500, 30.378412, 36.255466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.924309, 29.874468, 36.604630>,  <32.498077, 29.727186, 36.014145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.924309, 29.874468, 36.604630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.637127, 30.150908, 36.637917>,  <32.464817, 30.316771, 36.657890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.637127, 30.150908, 36.637917>,  <32.924309, 29.874468, 36.604630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.637127, 30.150908, 36.637917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120491, -0.241127, 0.962985,
		0.685584, 0.681351, 0.256389,
		-0.717953, 0.691099, 0.083216,
		32.421741, 30.358236, 36.662880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.061218, 30.134125, 37.270935>,  <32.924309, 29.874468, 36.604630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.061218, 30.134125, 37.270935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.687080, 30.236097, 37.172836>,  <32.462597, 30.297281, 37.113976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.687080, 30.236097, 37.172836>,  <33.061218, 30.134125, 37.270935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.687080, 30.236097, 37.172836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323231, -0.334230, 0.885332,
		0.143732, 0.907358, 0.395021,
		-0.935341, 0.254934, -0.245247,
		32.406479, 30.312578, 37.099262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.818371, 30.546349, 37.826302>,  <33.061218, 30.134125, 37.270935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.818371, 30.546349, 37.826302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475044, 30.433315, 37.654980>,  <32.269051, 30.365496, 37.552185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475044, 30.433315, 37.654980>,  <32.818371, 30.546349, 37.826302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475044, 30.433315, 37.654980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335479, -0.322552, 0.885107,
		-0.388268, 0.903386, 0.182049,
		-0.858313, -0.282585, -0.428303,
		32.217548, 30.348539, 37.526489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.337307, 30.782373, 38.210999>,  <32.818371, 30.546349, 37.826302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.337307, 30.782373, 38.210999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.159061, 30.479385, 38.020142>,  <32.052113, 30.297592, 37.905628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.159061, 30.479385, 38.020142>,  <32.337307, 30.782373, 38.210999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.159061, 30.479385, 38.020142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211794, -0.428652, 0.878294,
		-0.869810, 0.492439, 0.030587,
		-0.445617, -0.757470, -0.477141,
		32.025375, 30.252144, 37.876999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.696337, 30.857368, 38.440613>,  <32.337307, 30.782373, 38.210999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.696337, 30.857368, 38.440613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.760632, 30.489456, 38.297413>,  <31.799208, 30.268709, 38.211494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.760632, 30.489456, 38.297413>,  <31.696337, 30.857368, 38.440613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.760632, 30.489456, 38.297413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237786, -0.388119, 0.890405,
		-0.957926, -0.057994, -0.281097,
		0.160737, -0.919783, -0.357999,
		31.808853, 30.213522, 38.190014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.088152, 30.412804, 38.581993>,  <31.696337, 30.857368, 38.440613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.088152, 30.412804, 38.581993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.401873, 30.167183, 38.546646>,  <31.590105, 30.019810, 38.525436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.401873, 30.167183, 38.546646>,  <31.088152, 30.412804, 38.581993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.401873, 30.167183, 38.546646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140045, -0.314012, 0.939033,
		-0.604366, -0.724110, -0.332275,
		0.784302, -0.614053, -0.088370,
		31.637163, 29.982967, 38.520134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.886993, 29.973927, 39.053139>,  <31.088152, 30.412804, 38.581993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.886993, 29.973927, 39.053139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.259581, 29.844347, 38.986900>,  <31.483133, 29.766600, 38.947155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.259581, 29.844347, 38.986900>,  <30.886993, 29.973927, 39.053139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.259581, 29.844347, 38.986900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028476, -0.518682, 0.854493,
		-0.362706, -0.791218, -0.492360,
		0.931468, -0.323950, -0.165598,
		31.539021, 29.747162, 38.937222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.953112, 29.231447, 39.227932>,  <30.886993, 29.973927, 39.053139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.953112, 29.231447, 39.227932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.324306, 29.378469, 39.252396>,  <31.547024, 29.466682, 39.267075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.324306, 29.378469, 39.252396>,  <30.953112, 29.231447, 39.227932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.324306, 29.378469, 39.252396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088936, -0.377891, 0.921568,
		0.361840, -0.849765, -0.383368,
		0.927988, 0.367556, 0.061161,
		31.602703, 29.488737, 39.270744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.221905, 28.764559, 39.635632>,  <30.953112, 29.231447, 39.227932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.221905, 28.764559, 39.635632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.498405, 29.053314, 39.648598>,  <31.664307, 29.226566, 39.656376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.498405, 29.053314, 39.648598>,  <31.221905, 28.764559, 39.635632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.498405, 29.053314, 39.648598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184564, -0.219748, 0.957939,
		0.698647, -0.656194, -0.285135,
		0.691252, 0.721886, 0.032417,
		31.705782, 29.269880, 39.658321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.777554, 28.470961, 39.824280>,  <31.221905, 28.764559, 39.635632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.777554, 28.470961, 39.824280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.817343, 28.855057, 39.928623>,  <31.841215, 29.085514, 39.991230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.817343, 28.855057, 39.928623>,  <31.777554, 28.470961, 39.824280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.817343, 28.855057, 39.928623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299861, -0.278898, 0.912304,
		0.948783, -0.012526, -0.315681,
		0.099471, 0.960239, 0.260858,
		31.847183, 29.143129, 40.006882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.308846, 28.479906, 40.331619>,  <31.777554, 28.470961, 39.824280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.308846, 28.479906, 40.331619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.109734, 28.822695, 40.385014>,  <31.990267, 29.028368, 40.417049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.109734, 28.822695, 40.385014>,  <32.308846, 28.479906, 40.331619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.109734, 28.822695, 40.385014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195880, -0.038847, 0.979858,
		0.844895, 0.513899, -0.148527,
		-0.497778, 0.856971, 0.133484,
		31.960400, 29.079786, 40.425060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.811054, 28.928452, 40.639595>,  <32.308846, 28.479906, 40.331619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.811054, 28.928452, 40.639595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.428532, 29.015539, 40.717648>,  <32.199017, 29.067791, 40.764477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.428532, 29.015539, 40.717648>,  <32.811054, 28.928452, 40.639595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.428532, 29.015539, 40.717648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205088, 0.023900, 0.978452,
		0.208362, 0.975719, -0.067507,
		-0.956307, 0.217717, 0.195129,
		32.141640, 29.080854, 40.776188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.781963, 29.129581, 41.185410>,  <32.811054, 28.928452, 40.639595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.781963, 29.129581, 41.185410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382420, 29.148052, 41.180397>,  <32.142693, 29.159134, 41.177391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382420, 29.148052, 41.180397>,  <32.781963, 29.129581, 41.185410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.382420, 29.148052, 41.180397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010620, 0.041316, 0.999090,
		0.046652, 0.998079, -0.040778,
		-0.998855, 0.046177, -0.012527,
		32.082764, 29.161905, 41.176640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.481869, 29.593107, 41.707096>,  <32.781963, 29.129581, 41.185410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.481869, 29.593107, 41.707096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.191849, 29.324547, 41.645760>,  <32.017838, 29.163410, 41.608959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.191849, 29.324547, 41.645760>,  <32.481869, 29.593107, 41.707096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.191849, 29.324547, 41.645760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163241, -0.048766, 0.985380,
		-0.669065, 0.739486, -0.074243,
		-0.725055, -0.671403, -0.153342,
		31.974333, 29.123125, 41.599758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.893185, 29.818821, 42.183865>,  <32.481869, 29.593107, 41.707096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.893185, 29.818821, 42.183865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.833460, 29.433393, 42.095104>,  <31.797625, 29.202137, 42.041847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.833460, 29.433393, 42.095104>,  <31.893185, 29.818821, 42.183865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.833460, 29.433393, 42.095104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181971, -0.193811, 0.964015,
		-0.971902, 0.184317, -0.146404,
		-0.149310, -0.963569, -0.221905,
		31.788668, 29.144323, 42.028534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.356934, 29.643530, 42.625278>,  <31.893185, 29.818821, 42.183865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.356934, 29.643530, 42.625278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.495686, 29.286467, 42.510155>,  <31.578938, 29.072227, 42.441082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.495686, 29.286467, 42.510155>,  <31.356934, 29.643530, 42.625278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.495686, 29.286467, 42.510155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105265, -0.341974, 0.933795,
		-0.931983, -0.293620, -0.212590,
		0.346881, -0.892660, -0.287806,
		31.599751, 29.018669, 42.423813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.884127, 29.108746, 42.918167>,  <31.356934, 29.643530, 42.625278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.884127, 29.108746, 42.918167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.241026, 28.940901, 42.851452>,  <31.455166, 28.840195, 42.811420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.241026, 28.940901, 42.851452>,  <30.884127, 29.108746, 42.918167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.241026, 28.940901, 42.851452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003128, -0.375114, 0.926974,
		-0.451535, -0.826568, -0.336007,
		0.892248, -0.419612, -0.166792,
		31.508701, 28.815018, 42.801414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.719206, 28.432863, 43.142624>,  <30.884127, 29.108746, 42.918167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.719206, 28.432863, 43.142624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.118540, 28.429031, 43.119869>,  <31.358141, 28.426731, 43.106216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.118540, 28.429031, 43.119869>,  <30.719206, 28.432863, 43.142624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.118540, 28.429031, 43.119869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034175, -0.696267, 0.716969,
		-0.046480, -0.717719, -0.694780,
		0.998335, -0.009580, -0.056891,
		31.418039, 28.426157, 43.102802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.939709, 27.773273, 43.210827>,  <30.719206, 28.432863, 43.142624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.939709, 27.773273, 43.210827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.251381, 27.997326, 43.323349>,  <31.438385, 28.131758, 43.390862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.251381, 27.997326, 43.323349>,  <30.939709, 27.773273, 43.210827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.251381, 27.997326, 43.323349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046505, -0.499219, 0.865227,
		0.625071, -0.661087, -0.415031,
		0.779181, 0.560129, 0.281303,
		31.485136, 28.165365, 43.407742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.440454, 27.311657, 43.435802>,  <30.939709, 27.773273, 43.210827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.440454, 27.311657, 43.435802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.541964, 27.666727, 43.589493>,  <31.602869, 27.879768, 43.681709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.541964, 27.666727, 43.589493>,  <31.440454, 27.311657, 43.435802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.541964, 27.666727, 43.589493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218198, -0.439531, 0.871322,
		0.942332, -0.137280, -0.305230,
		0.253773, 0.887675, 0.384229,
		31.618095, 27.933029, 43.704762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.206421, 27.323055, 43.734325>,  <31.440454, 27.311657, 43.435802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.206421, 27.323055, 43.734325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.029602, 27.617683, 43.939091>,  <31.923512, 27.794460, 44.061951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.029602, 27.617683, 43.939091>,  <32.206421, 27.323055, 43.734325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.029602, 27.617683, 43.939091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011972, -0.575496, 0.817717,
		0.896913, 0.355340, 0.263213,
		-0.442046, 0.736572, 0.511915,
		31.896988, 27.838655, 44.092667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.619450, 27.469379, 44.306534>,  <32.206421, 27.323055, 43.734325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.619450, 27.469379, 44.306534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.241795, 27.573290, 44.387638>,  <32.015202, 27.635635, 44.436302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.241795, 27.573290, 44.387638>,  <32.619450, 27.469379, 44.306534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.241795, 27.573290, 44.387638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022594, -0.562819, 0.826271,
		0.328764, 0.784698, 0.525512,
		-0.944142, 0.259775, 0.202764,
		31.958551, 27.651222, 44.448467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.742138, 27.570438, 44.926128>,  <32.619450, 27.469379, 44.306534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.742138, 27.570438, 44.926128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344425, 27.570032, 44.883419>,  <32.105797, 27.569788, 44.857792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344425, 27.570032, 44.883419>,  <32.742138, 27.570438, 44.926128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344425, 27.570032, 44.883419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084811, -0.600042, 0.795460,
		-0.064880, 0.799968, 0.596525,
		-0.994283, -0.001018, -0.106777,
		32.046139, 27.569727, 44.851387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.208580, 28.215122, 44.890717>,  <32.742138, 27.570438, 44.926128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.208580, 28.215122, 44.890717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507008, 28.346445, 45.122437>,  <33.686066, 28.425240, 45.261467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507008, 28.346445, 45.122437>,  <33.208580, 28.215122, 44.890717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507008, 28.346445, 45.122437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538998, 0.213058, -0.814916,
		-0.390967, 0.920229, -0.018000,
		0.746074, 0.328307, 0.579300,
		33.730831, 28.444937, 45.296227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325844, 28.871098, 44.698349>,  <33.208580, 28.215122, 44.890717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325844, 28.871098, 44.698349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.662796, 28.719347, 44.851437>,  <33.864967, 28.628298, 44.943291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.662796, 28.719347, 44.851437>,  <33.325844, 28.871098, 44.698349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.662796, 28.719347, 44.851437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502832, 0.297922, -0.811420,
		0.193810, 0.875967, 0.441724,
		0.842376, -0.379374, 0.382724,
		33.915508, 28.605536, 44.966255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033527, 29.338493, 44.578884>,  <33.325844, 28.871098, 44.698349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.033527, 29.338493, 44.578884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.148411, 28.957369, 44.618195>,  <34.217342, 28.728693, 44.641781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.148411, 28.957369, 44.618195>,  <34.033527, 29.338493, 44.578884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148411, 28.957369, 44.618195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569214, 0.087256, -0.817546,
		0.770393, 0.290748, 0.567415,
		0.287211, -0.952813, 0.098276,
		34.234573, 28.671526, 44.647678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716690, 29.325132, 44.498085>,  <34.033527, 29.338493, 44.578884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.716690, 29.325132, 44.498085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.605015, 28.945696, 44.438446>,  <34.538010, 28.718035, 44.402664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.605015, 28.945696, 44.438446>,  <34.716690, 29.325132, 44.498085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605015, 28.945696, 44.438446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655880, -0.074979, -0.751132,
		0.701337, -0.307498, 0.643095,
		-0.279190, -0.948590, -0.149096,
		34.521259, 28.661119, 44.393719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384499, 28.931015, 44.385010>,  <34.716690, 29.325132, 44.498085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384499, 28.931015, 44.385010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.084766, 28.723032, 44.220982>,  <34.904926, 28.598242, 44.122566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.084766, 28.723032, 44.220982>,  <35.384499, 28.931015, 44.385010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084766, 28.723032, 44.220982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586546, -0.233723, -0.775460,
		0.307363, -0.821596, 0.480113,
		-0.749328, -0.519955, -0.410066,
		34.859966, 28.567045, 44.097961>
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
