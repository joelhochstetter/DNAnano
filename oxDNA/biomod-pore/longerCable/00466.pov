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
	<24.639935, 34.924675, 34.593689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.333088, 35.038883, 34.823475>,  <24.148979, 35.107407, 34.961346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.333088, 35.038883, 34.823475>,  <24.639935, 34.924675, 34.593689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.333088, 35.038883, 34.823475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229058, -0.714556, 0.661016,
		0.599220, 0.638663, 0.482748,
		-0.767117, 0.285517, 0.574467,
		24.102953, 35.124538, 34.995815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.698683, 35.374603, 35.303616>,  <24.639935, 34.924675, 34.593689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.698683, 35.374603, 35.303616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.905138, 35.647617, 35.510593>,  <25.029011, 35.811424, 35.634781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.905138, 35.647617, 35.510593>,  <24.698683, 35.374603, 35.303616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.905138, 35.647617, 35.510593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854518, -0.369213, -0.365350,
		-0.058317, 0.630736, -0.773803,
		0.516138, 0.682535, 0.517443,
		25.059978, 35.852379, 35.665825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.157604, 35.533905, 34.735912>,  <24.698683, 35.374603, 35.303616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.157604, 35.533905, 34.735912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.308727, 35.622547, 35.095501>,  <25.399401, 35.675732, 35.311253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.308727, 35.622547, 35.095501>,  <25.157604, 35.533905, 34.735912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.308727, 35.622547, 35.095501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922618, -0.008633, -0.385618,
		-0.077695, 0.975098, -0.207721,
		0.377808, 0.221608, 0.898972,
		25.422070, 35.689030, 35.365192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.593363, 36.118191, 34.699535>,  <25.157604, 35.533905, 34.735912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.593363, 36.118191, 34.699535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.719818, 35.890675, 35.003254>,  <25.795692, 35.754166, 35.185486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.719818, 35.890675, 35.003254>,  <25.593363, 36.118191, 34.699535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.719818, 35.890675, 35.003254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936172, 0.057330, -0.346836,
		0.153747, 0.820481, 0.550612,
		0.316139, -0.568792, 0.759297,
		25.814659, 35.720036, 35.231045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.249044, 36.428894, 34.776424>,  <25.593363, 36.118191, 34.699535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.249044, 36.428894, 34.776424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.236940, 36.076202, 34.964741>,  <26.229677, 35.864590, 35.077732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.236940, 36.076202, 34.964741>,  <26.249044, 36.428894, 34.776424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.236940, 36.076202, 34.964741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940312, -0.184840, -0.285741,
		0.338966, 0.434046, 0.834689,
		-0.030259, -0.881725, 0.470793,
		26.227863, 35.811684, 35.105980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.925619, 36.452621, 35.162281>,  <26.249044, 36.428894, 34.776424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.925619, 36.452621, 35.162281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.791370, 36.075851, 35.157478>,  <26.710821, 35.849789, 35.154598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.791370, 36.075851, 35.157478>,  <26.925619, 36.452621, 35.162281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.791370, 36.075851, 35.157478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939488, -0.333769, -0.077202,
		0.068710, -0.037192, 0.996943,
		-0.335620, -0.941921, -0.012008,
		26.690683, 35.793274, 35.153877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.352297, 36.080555, 35.557877>,  <26.925619, 36.452621, 35.162281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.352297, 36.080555, 35.557877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.181454, 35.820168, 35.306854>,  <27.078949, 35.663937, 35.156242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.181454, 35.820168, 35.306854>,  <27.352297, 36.080555, 35.557877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.181454, 35.820168, 35.306854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901994, -0.258274, -0.345978,
		0.063140, -0.713818, 0.697479,
		-0.427106, -0.650967, -0.627553,
		27.053322, 35.624878, 35.118587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.639868, 35.357769, 35.779839>,  <27.352297, 36.080555, 35.557877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.639868, 35.357769, 35.779839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.589384, 35.391491, 35.384472>,  <27.559093, 35.411724, 35.147251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.589384, 35.391491, 35.384472>,  <27.639868, 35.357769, 35.779839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.589384, 35.391491, 35.384472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971168, -0.192641, -0.140437,
		-0.202249, -0.977641, -0.057563,
		-0.126208, 0.084306, -0.988415,
		27.551521, 35.416782, 35.087948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.941505, 34.738407, 35.354076>,  <27.639868, 35.357769, 35.779839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.941505, 34.738407, 35.354076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.918827, 35.038219, 35.090263>,  <27.905220, 35.218109, 34.931976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.918827, 35.038219, 35.090263>,  <27.941505, 34.738407, 35.354076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.918827, 35.038219, 35.090263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956697, -0.148125, -0.250579,
		-0.285511, -0.645179, -0.708680,
		-0.056695, 0.749535, -0.659532,
		27.901819, 35.263081, 34.892403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.294014, 34.435104, 34.861832>,  <27.941505, 34.738407, 35.354076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.294014, 34.435104, 34.861832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.285170, 34.816334, 34.741058>,  <28.279863, 35.045071, 34.668594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.285170, 34.816334, 34.741058>,  <28.294014, 34.435104, 34.861832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.285170, 34.816334, 34.741058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942834, -0.080573, -0.323375,
		-0.332528, -0.291824, -0.896808,
		-0.022110, 0.953072, -0.301934,
		28.278536, 35.102257, 34.650478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.509165, 34.384163, 34.160946>,  <28.294014, 34.435104, 34.861832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.509165, 34.384163, 34.160946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.578886, 34.759098, 34.281616>,  <28.620720, 34.984058, 34.354019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.578886, 34.759098, 34.281616>,  <28.509165, 34.384163, 34.160946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.578886, 34.759098, 34.281616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967192, -0.105472, -0.231119,
		-0.184819, 0.332062, -0.924974,
		0.174305, 0.937342, 0.301675,
		28.631178, 35.040302, 34.372120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.914856, 34.820763, 33.611847>,  <28.509165, 34.384163, 34.160946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.914856, 34.820763, 33.611847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.962379, 34.922287, 33.995819>,  <28.990892, 34.983200, 34.226204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.962379, 34.922287, 33.995819>,  <28.914856, 34.820763, 33.611847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.962379, 34.922287, 33.995819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974927, -0.213018, -0.064340,
		0.188152, 0.943506, -0.272756,
		0.118807, 0.253812, 0.959929,
		28.998022, 34.998432, 34.283798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.511065, 35.344574, 33.803001>,  <28.914856, 34.820763, 33.611847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.511065, 35.344574, 33.803001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.470692, 35.043377, 34.063099>,  <29.446468, 34.862659, 34.219158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.470692, 35.043377, 34.063099>,  <29.511065, 35.344574, 33.803001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.470692, 35.043377, 34.063099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974179, -0.207474, -0.089048,
		0.201961, 0.624466, 0.754489,
		-0.100930, -0.752992, 0.650243,
		29.440413, 34.817478, 34.258171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.926933, 35.336082, 34.452427>,  <29.511065, 35.344574, 33.803001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.926933, 35.336082, 34.452427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.882498, 34.963943, 34.312649>,  <29.855837, 34.740658, 34.228783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.882498, 34.963943, 34.312649>,  <29.926933, 35.336082, 34.452427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.882498, 34.963943, 34.312649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993022, -0.089916, -0.076301,
		0.039566, -0.355479, 0.933846,
		-0.111091, -0.930349, -0.349441,
		29.849171, 34.684837, 34.207817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.572697, 35.220245, 35.138077>,  <29.926933, 35.336082, 34.452427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.572697, 35.220245, 35.138077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.486961, 35.335934, 34.764893>,  <29.435520, 35.405346, 34.540981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.486961, 35.335934, 34.764893>,  <29.572697, 35.220245, 35.138077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.486961, 35.335934, 34.764893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917583, 0.267792, 0.293819,
		0.334817, 0.919043, 0.207984,
		-0.214336, 0.289218, -0.932959,
		29.422661, 35.422699, 34.485004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.230639, 35.767223, 35.250572>,  <29.572697, 35.220245, 35.138077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.230639, 35.767223, 35.250572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.132246, 35.654079, 34.879738>,  <29.073212, 35.586193, 34.657238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.132246, 35.654079, 34.879738>,  <29.230639, 35.767223, 35.250572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.132246, 35.654079, 34.879738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962685, 0.182643, 0.199700,
		0.112839, 0.941613, -0.317227,
		-0.245979, -0.282855, -0.927085,
		29.058453, 35.569221, 34.601612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.794569, 36.240509, 34.813763>,  <29.230639, 35.767223, 35.250572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.794569, 36.240509, 34.813763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.729774, 35.875774, 34.662868>,  <28.690897, 35.656933, 34.572330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.729774, 35.875774, 34.662868>,  <28.794569, 36.240509, 34.813763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.729774, 35.875774, 34.662868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984655, 0.174508, 0.001006,
		0.064914, 0.371614, -0.926115,
		-0.161988, -0.911839, -0.377240,
		28.681177, 35.602222, 34.549698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.213549, 36.348728, 34.367165>,  <28.794569, 36.240509, 34.813763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.213549, 36.348728, 34.367165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.237013, 35.956406, 34.441551>,  <28.251091, 35.721012, 34.486183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.237013, 35.956406, 34.441551>,  <28.213549, 36.348728, 34.367165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.237013, 35.956406, 34.441551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992495, -0.037276, 0.116467,
		-0.107299, -0.191404, -0.975629,
		0.058660, -0.980803, 0.185968,
		28.254610, 35.662167, 34.497341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.868063, 36.035778, 33.866222>,  <28.213549, 36.348728, 34.367165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.868063, 36.035778, 33.866222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.868786, 35.796207, 34.186543>,  <27.869221, 35.652466, 34.378735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.868786, 35.796207, 34.186543>,  <27.868063, 36.035778, 33.866222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.868786, 35.796207, 34.186543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994948, -0.081461, -0.058677,
		0.100377, -0.796652, -0.596045,
		0.001809, -0.598924, 0.800804,
		27.869329, 35.616531, 34.426785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.399168, 35.432980, 33.778912>,  <27.868063, 36.035778, 33.866222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.399168, 35.432980, 33.778912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.459040, 35.450977, 34.173996>,  <27.494963, 35.461777, 34.411045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.459040, 35.450977, 34.173996>,  <27.399168, 35.432980, 33.778912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.459040, 35.450977, 34.173996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949366, -0.272542, 0.156285,
		0.276225, -0.961091, 0.001924,
		0.149679, 0.044996, 0.987710,
		27.503944, 35.464474, 34.470310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.808794, 35.210430, 34.008320>,  <27.399168, 35.432980, 33.778912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.808794, 35.210430, 34.008320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.032801, 35.225994, 34.339348>,  <27.167204, 35.235332, 34.537964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.032801, 35.225994, 34.339348>,  <26.808794, 35.210430, 34.008320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.032801, 35.225994, 34.339348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822241, -0.096269, 0.560938,
		0.101494, -0.994595, -0.021920,
		0.560016, 0.038909, 0.827567,
		27.200806, 35.237667, 34.587620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.674501, 34.591232, 34.433319>,  <26.808794, 35.210430, 34.008320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.674501, 34.591232, 34.433319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.785387, 34.916706, 34.637699>,  <26.851919, 35.111992, 34.760326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.785387, 34.916706, 34.637699>,  <26.674501, 34.591232, 34.433319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.785387, 34.916706, 34.637699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891830, 0.020053, 0.451926,
		0.357480, -0.580957, 0.731230,
		0.277213, 0.813687, 0.510946,
		26.868551, 35.160812, 34.790981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.238420, 34.591442, 34.869144>,  <26.674501, 34.591232, 34.433319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.238420, 34.591442, 34.869144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.383511, 34.947701, 34.978825>,  <26.470566, 35.161453, 35.044632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.383511, 34.947701, 34.978825>,  <26.238420, 34.591442, 34.869144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.383511, 34.947701, 34.978825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837012, 0.182020, 0.516024,
		0.409683, -0.416682, 0.811502,
		0.362727, 0.890643, 0.274197,
		26.492329, 35.214893, 35.061085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.598429, 34.679676, 35.201340>,  <26.238420, 34.591442, 34.869144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.598429, 34.679676, 35.201340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.306723, 34.620285, 35.468510>,  <25.131699, 34.584652, 35.628811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.306723, 34.620285, 35.468510>,  <25.598429, 34.679676, 35.201340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.306723, 34.620285, 35.468510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443989, 0.640070, 0.627044,
		-0.520622, 0.753834, -0.400858,
		-0.729264, -0.148476, 0.667928,
		25.087944, 34.575741, 35.668888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.216480, 34.630901, 35.616276>,  <25.598429, 34.679676, 35.201340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.216480, 34.630901, 35.616276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.238136, 35.007790, 35.484043>,  <26.251129, 35.233925, 35.404705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.238136, 35.007790, 35.484043>,  <26.216480, 34.630901, 35.616276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.238136, 35.007790, 35.484043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782430, 0.245717, 0.572212,
		0.620380, 0.227676, 0.750528,
		0.054138, 0.942224, -0.330579,
		26.254377, 35.290459, 35.384869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.147722, 34.994560, 36.289967>,  <26.216480, 34.630901, 35.616276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.147722, 34.994560, 36.289967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.051039, 35.214092, 35.969875>,  <25.993029, 35.345810, 35.777821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.051039, 35.214092, 35.969875>,  <26.147722, 34.994560, 36.289967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.051039, 35.214092, 35.969875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834898, 0.302631, 0.459740,
		0.494491, 0.779231, 0.385067,
		-0.241710, 0.548829, -0.800227,
		25.978525, 35.378742, 35.729809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.000334, 35.652470, 36.517651>,  <26.147722, 34.994560, 36.289967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.000334, 35.652470, 36.517651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.797157, 35.626373, 36.174084>,  <25.675251, 35.610718, 35.967945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.797157, 35.626373, 36.174084>,  <26.000334, 35.652470, 36.517651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.797157, 35.626373, 36.174084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784477, 0.446895, 0.429977,
		0.355796, 0.892204, -0.278174,
		-0.507942, -0.065237, -0.858917,
		25.644775, 35.606804, 35.916409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.749769, 34.987076, 36.947319>,  <26.000334, 35.652470, 36.517651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.749769, 34.987076, 36.947319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.629711, 35.340893, 37.090145>,  <25.557676, 35.553185, 37.175842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.629711, 35.340893, 37.090145>,  <25.749769, 34.987076, 36.947319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.629711, 35.340893, 37.090145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747996, -0.450545, 0.487351,
		0.591958, -0.120810, 0.796863,
		-0.300146, 0.884542, 0.357069,
		25.539667, 35.606255, 37.197266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.800974, 34.965302, 37.679607>,  <25.749769, 34.987076, 36.947319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.800974, 34.965302, 37.679607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.517910, 35.230152, 37.580967>,  <25.348072, 35.389061, 37.521782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.517910, 35.230152, 37.580967>,  <25.800974, 34.965302, 37.679607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.517910, 35.230152, 37.580967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652120, -0.477730, 0.588654,
		0.271953, 0.577379, 0.769854,
		-0.707659, 0.662123, -0.246601,
		25.305613, 35.428787, 37.506989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.371155, 34.484871, 37.850067>,  <25.800974, 34.965302, 37.679607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.371155, 34.484871, 37.850067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.466671, 34.747547, 38.136211>,  <26.523981, 34.905151, 38.307899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.466671, 34.747547, 38.136211>,  <26.371155, 34.484871, 37.850067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.466671, 34.747547, 38.136211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966742, -0.230249, -0.111336,
		0.091598, 0.718153, -0.689830,
		0.238789, 0.656690, 0.715359,
		26.538307, 34.944553, 38.350819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.300390, 34.019081, 37.207138>,  <26.371155, 34.484871, 37.850067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.300390, 34.019081, 37.207138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.331362, 33.708633, 36.956814>,  <26.349945, 33.522366, 36.806618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.331362, 33.708633, 36.956814>,  <26.300390, 34.019081, 37.207138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.331362, 33.708633, 36.956814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994974, 0.020185, 0.098074,
		-0.063485, -0.630263, 0.773782,
		0.077431, -0.776119, -0.625814,
		26.354591, 33.475800, 36.769070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.719173, 33.563316, 37.576626>,  <26.300390, 34.019081, 37.207138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.719173, 33.563316, 37.576626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.760317, 33.472950, 37.189144>,  <26.785004, 33.418728, 36.956657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.760317, 33.472950, 37.189144>,  <26.719173, 33.563316, 37.576626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.760317, 33.472950, 37.189144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994216, -0.006895, 0.107177,
		-0.030893, -0.974121, 0.223905,
		0.102860, -0.225921, -0.968700,
		26.791174, 33.405174, 36.898533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.279375, 33.050331, 37.483952>,  <26.719173, 33.563316, 37.576626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.279375, 33.050331, 37.483952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.224152, 33.217464, 37.124763>,  <27.191017, 33.317745, 36.909248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.224152, 33.217464, 37.124763>,  <27.279375, 33.050331, 37.483952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.224152, 33.217464, 37.124763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987958, 0.122036, -0.095108,
		0.069846, -0.900292, -0.429647,
		-0.138057, 0.417830, -0.897975,
		27.182735, 33.342812, 36.855370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.668598, 32.629707, 37.020378>,  <27.279375, 33.050331, 37.483952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.668598, 32.629707, 37.020378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.620922, 33.012424, 36.914288>,  <27.592316, 33.242054, 36.850632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.620922, 33.012424, 36.914288>,  <27.668598, 32.629707, 37.020378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.620922, 33.012424, 36.914288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980400, 0.071209, -0.183700,
		-0.156876, -0.281925, -0.946524,
		-0.119190, 0.956790, -0.265228,
		27.585165, 33.299461, 36.834721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.031149, 32.901192, 36.317501>,  <27.668598, 32.629707, 37.020378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.031149, 32.901192, 36.317501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.014690, 33.175488, 36.608173>,  <28.004816, 33.340065, 36.782578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.014690, 33.175488, 36.608173>,  <28.031149, 32.901192, 36.317501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.014690, 33.175488, 36.608173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982199, 0.161174, -0.096480,
		-0.183282, 0.709778, -0.680164,
		-0.041145, 0.685740, 0.726683,
		28.002346, 33.381210, 36.826180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.071718, 33.213261, 35.630695>,  <28.031149, 32.901192, 36.317501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.071718, 33.213261, 35.630695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.975698, 33.474880, 35.917637>,  <27.918087, 33.631851, 36.089802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.975698, 33.474880, 35.917637>,  <28.071718, 33.213261, 35.630695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.975698, 33.474880, 35.917637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970467, 0.179861, 0.160760,
		-0.023880, 0.734762, -0.677904,
		-0.240049, 0.654045, 0.717358,
		27.903685, 33.671093, 36.132843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.461781, 33.816967, 35.429527>,  <28.071718, 33.213261, 35.630695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.461781, 33.816967, 35.429527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.377642, 33.798153, 35.820126>,  <28.327158, 33.786865, 36.054485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.377642, 33.798153, 35.820126>,  <28.461781, 33.816967, 35.429527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.377642, 33.798153, 35.820126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923852, 0.317146, 0.214281,
		-0.319770, 0.947210, -0.023258,
		-0.210345, -0.047034, 0.976495,
		28.314539, 33.784042, 36.113075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.935434, 34.279640, 35.606236>,  <28.461781, 33.816967, 35.429527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.935434, 34.279640, 35.606236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.836628, 34.098347, 35.948830>,  <28.777344, 33.989571, 36.154385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.836628, 34.098347, 35.948830>,  <28.935434, 34.279640, 35.606236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.836628, 34.098347, 35.948830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875255, 0.274932, 0.397921,
		-0.415826, 0.847933, 0.328784,
		-0.247017, -0.453236, 0.856481,
		28.762524, 33.962376, 36.205772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.217472, 34.657295, 36.094719>,  <28.935434, 34.279640, 35.606236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.217472, 34.657295, 36.094719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.205345, 34.286861, 36.245155>,  <29.198069, 34.064602, 36.335419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.205345, 34.286861, 36.245155>,  <29.217472, 34.657295, 36.094719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.205345, 34.286861, 36.245155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907749, 0.131996, 0.398207,
		-0.418417, 0.353468, 0.836653,
		-0.030319, -0.926087, 0.376090,
		29.196249, 34.009037, 36.357983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.026327, 34.718269, 36.366554>,  <29.217472, 34.657295, 36.094719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.026327, 34.718269, 36.366554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.113201, 34.449814, 36.650074>,  <30.165325, 34.288738, 36.820187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.113201, 34.449814, 36.650074>,  <30.026327, 34.718269, 36.366554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.113201, 34.449814, 36.650074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928792, -0.365469, -0.061461,
		0.300294, -0.644981, -0.702725,
		0.217183, -0.671142, 0.708802,
		30.178356, 34.248470, 36.862713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.986229, 33.850914, 36.174168>,  <30.026327, 34.718269, 36.366554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.986229, 33.850914, 36.174168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.902149, 33.978886, 36.543701>,  <29.851702, 34.055668, 36.765419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.902149, 33.978886, 36.543701>,  <29.986229, 33.850914, 36.174168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.902149, 33.978886, 36.543701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934796, -0.342498, -0.094082,
		0.286310, -0.883368, 0.371062,
		-0.210197, 0.319931, 0.923830,
		29.839090, 34.074863, 36.820850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.675001, 33.331238, 36.512753>,  <29.986229, 33.850914, 36.174168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.675001, 33.331238, 36.512753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.566572, 33.666168, 36.702663>,  <29.501514, 33.867126, 36.816608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.566572, 33.666168, 36.702663>,  <29.675001, 33.331238, 36.512753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.566572, 33.666168, 36.702663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951678, -0.159180, -0.262623,
		-0.144324, -0.523029, 0.840007,
		-0.271072, 0.837318, 0.474782,
		29.485250, 33.917366, 36.845097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.240442, 33.183769, 37.119160>,  <29.675001, 33.331238, 36.512753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.240442, 33.183769, 37.119160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.149256, 33.519608, 36.921932>,  <29.094543, 33.721111, 36.803596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.149256, 33.519608, 36.921932>,  <29.240442, 33.183769, 37.119160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.149256, 33.519608, 36.921932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921866, -0.349093, -0.168217,
		-0.313361, 0.416197, 0.853572,
		-0.227965, 0.839591, -0.493070,
		29.080866, 33.771484, 36.774010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.521183, 33.410690, 37.335995>,  <29.240442, 33.183769, 37.119160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.521183, 33.410690, 37.335995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.593208, 33.609600, 36.996513>,  <28.636423, 33.728947, 36.792824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.593208, 33.609600, 36.996513>,  <28.521183, 33.410690, 37.335995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.593208, 33.609600, 36.996513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944660, -0.153111, -0.290129,
		-0.274219, 0.853978, 0.442183,
		0.180061, 0.497271, -0.848705,
		28.647226, 33.758781, 36.741901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.046799, 33.960236, 37.396061>,  <28.521183, 33.410690, 37.335995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.046799, 33.960236, 37.396061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.136066, 33.886780, 37.013130>,  <28.189627, 33.842705, 36.783371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.136066, 33.886780, 37.013130>,  <28.046799, 33.960236, 37.396061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.136066, 33.886780, 37.013130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973780, 0.002457, -0.227479,
		0.044128, 0.982990, -0.178280,
		0.223171, -0.183644, -0.957324,
		28.203018, 33.831688, 36.725933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.616714, 34.371681, 37.025814>,  <28.046799, 33.960236, 37.396061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.616714, 34.371681, 37.025814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.745043, 34.060410, 36.809849>,  <27.822041, 33.873646, 36.680267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.745043, 34.060410, 36.809849>,  <27.616714, 34.371681, 37.025814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.745043, 34.060410, 36.809849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943329, -0.211444, -0.255779,
		0.084880, 0.591379, -0.801914,
		0.320822, -0.778179, -0.539917,
		27.841290, 33.826954, 36.647873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.304392, 34.456715, 36.293755>,  <27.616714, 34.371681, 37.025814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.304392, 34.456715, 36.293755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.412489, 34.091534, 36.416054>,  <27.477348, 33.872425, 36.489433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.412489, 34.091534, 36.416054>,  <27.304392, 34.456715, 36.293755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.412489, 34.091534, 36.416054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943957, -0.313749, -0.102499,
		0.189505, -0.260913, -0.946579,
		0.270245, -0.912955, 0.305747,
		27.493563, 33.817646, 36.507778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.032808, 34.004078, 35.771069>,  <27.304392, 34.456715, 36.293755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.032808, 34.004078, 35.771069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.090193, 33.778507, 36.096378>,  <27.124624, 33.643166, 36.291565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.090193, 33.778507, 36.096378>,  <27.032808, 34.004078, 35.771069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.090193, 33.778507, 36.096378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934203, -0.348383, -0.076775,
		0.326625, -0.748745, -0.576799,
		0.143462, -0.563924, 0.813271,
		27.133232, 33.609329, 36.340359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.825989, 33.356129, 35.600250>,  <27.032808, 34.004078, 35.771069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.825989, 33.356129, 35.600250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.823792, 33.368011, 36.000069>,  <26.822474, 33.375141, 36.239960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.823792, 33.368011, 36.000069>,  <26.825989, 33.356129, 35.600250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.823792, 33.368011, 36.000069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974885, -0.222707, 0.001263,
		0.222643, -0.974433, 0.030183,
		-0.005491, 0.029706, 0.999543,
		26.822144, 33.376923, 36.299931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.920507, 32.642029, 35.737560>,  <26.825989, 33.356129, 35.600250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.920507, 32.642029, 35.737560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.680828, 32.793083, 36.019939>,  <26.537020, 32.883717, 36.189365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.680828, 32.793083, 36.019939>,  <26.920507, 32.642029, 35.737560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.680828, 32.793083, 36.019939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799185, -0.334551, -0.499379,
		0.047593, -0.863406, 0.502259,
		-0.599198, 0.377631, 0.705944,
		26.501068, 32.906372, 36.231724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.444521, 32.124638, 36.024834>,  <26.920507, 32.642029, 35.737560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.444521, 32.124638, 36.024834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.253830, 32.474598, 36.058956>,  <26.139416, 32.684574, 36.079430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.253830, 32.474598, 36.058956>,  <26.444521, 32.124638, 36.024834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.253830, 32.474598, 36.058956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840446, -0.425199, -0.335941,
		-0.257645, -0.231846, 0.938012,
		-0.476728, 0.874902, 0.085304,
		26.110811, 32.737068, 36.084549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.439993, 31.865519, 36.638439>,  <26.444521, 32.124638, 36.024834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.439993, 31.865519, 36.638439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.058594, 31.769991, 36.711979>,  <25.829754, 31.712673, 36.756104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.058594, 31.769991, 36.711979>,  <26.439993, 31.865519, 36.638439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.058594, 31.769991, 36.711979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096611, -0.820014, -0.564131,
		0.285489, -0.520137, 0.804956,
		-0.953500, -0.238820, 0.183854,
		25.772543, 31.698345, 36.767136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.492704, 31.261709, 36.996471>,  <26.439993, 31.865519, 36.638439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.492704, 31.261709, 36.996471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.161442, 31.304527, 36.776398>,  <25.962685, 31.330217, 36.644356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.161442, 31.304527, 36.776398>,  <26.492704, 31.261709, 36.996471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.161442, 31.304527, 36.776398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215974, -0.844852, -0.489470,
		-0.517217, -0.524182, 0.676550,
		-0.828156, 0.107045, -0.550181,
		25.912994, 31.336641, 36.611343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.612377, 30.636389, 36.715546>,  <26.492704, 31.261709, 36.996471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.612377, 30.636389, 36.715546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.311701, 30.826168, 36.532303>,  <26.131294, 30.940035, 36.422356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.311701, 30.826168, 36.532303>,  <26.612377, 30.636389, 36.715546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.311701, 30.826168, 36.532303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230802, -0.461446, -0.856620,
		-0.617813, -0.749645, 0.237362,
		-0.751691, 0.474447, -0.458107,
		26.086193, 30.968502, 36.394871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.369106, 30.542068, 36.726761>,  <26.612377, 30.636389, 36.715546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.369106, 30.542068, 36.726761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.145851, 30.300333, 36.954182>,  <27.011898, 30.155291, 37.090633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.145851, 30.300333, 36.954182>,  <27.369106, 30.542068, 36.726761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.145851, 30.300333, 36.954182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801302, 0.570460, -0.180253,
		-0.215404, -0.556192, -0.802653,
		-0.558137, -0.604340, 0.568557,
		26.978411, 30.119032, 37.124748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.752733, 30.440052, 37.433075>,  <27.369106, 30.542068, 36.726761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.752733, 30.440052, 37.433075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.126698, 30.348013, 37.541149>,  <28.351076, 30.292789, 37.605991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.126698, 30.348013, 37.541149>,  <27.752733, 30.440052, 37.433075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.126698, 30.348013, 37.541149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155969, -0.417451, -0.895214,
		0.318775, 0.879084, -0.354391,
		0.934910, -0.230098, 0.270183,
		28.407171, 30.278984, 37.622204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.390232, 30.935347, 37.469540>,  <27.752733, 30.440052, 37.433075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.390232, 30.935347, 37.469540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.448273, 30.676229, 37.768688>,  <28.483097, 30.520760, 37.948177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.448273, 30.676229, 37.768688>,  <28.390232, 30.935347, 37.469540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.448273, 30.676229, 37.768688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736950, -0.433595, -0.518556,
		0.660189, 0.626388, 0.414473,
		0.145104, -0.647791, 0.747871,
		28.491804, 30.481892, 37.993050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.035290, 31.047882, 37.770836>,  <28.390232, 30.935347, 37.469540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.035290, 31.047882, 37.770836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.917322, 30.666307, 37.792839>,  <28.846542, 30.437363, 37.806042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.917322, 30.666307, 37.792839>,  <29.035290, 31.047882, 37.770836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.917322, 30.666307, 37.792839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848343, -0.287894, -0.444333,
		0.439702, -0.084377, 0.894171,
		-0.294918, -0.953938, 0.055007,
		28.828846, 30.380127, 37.809341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.582203, 30.594337, 38.085976>,  <29.035290, 31.047882, 37.770836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.582203, 30.594337, 38.085976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.353998, 30.368628, 37.847275>,  <29.217075, 30.233202, 37.704056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.353998, 30.368628, 37.847275>,  <29.582203, 30.594337, 38.085976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.353998, 30.368628, 37.847275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813768, -0.290285, -0.503503,
		0.110886, -0.772871, 0.624799,
		-0.570513, -0.564274, -0.596750,
		29.182844, 30.199345, 37.668251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.783087, 29.827873, 38.133976>,  <29.582203, 30.594337, 38.085976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.783087, 29.827873, 38.133976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.608154, 29.928375, 37.788582>,  <29.503195, 29.988676, 37.581345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.608154, 29.928375, 37.788582>,  <29.783087, 29.827873, 38.133976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.608154, 29.928375, 37.788582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864363, -0.147599, -0.480720,
		-0.248234, -0.956601, -0.152627,
		-0.437329, 0.251257, -0.863489,
		29.476955, 30.003752, 37.529533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.186684, 29.403399, 37.617332>,  <29.783087, 29.827873, 38.133976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.186684, 29.403399, 37.617332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.047407, 29.727583, 37.428902>,  <29.963840, 29.922092, 37.315842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.047407, 29.727583, 37.428902>,  <30.186684, 29.403399, 37.617332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.047407, 29.727583, 37.428902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733026, -0.077843, -0.675732,
		-0.584324, -0.580598, -0.566984,
		-0.348193, 0.810460, -0.471079,
		29.942949, 29.970720, 37.287579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.942226, 29.156742, 36.926289>,  <30.186684, 29.403399, 37.617332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.942226, 29.156742, 36.926289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.075769, 29.531328, 36.969315>,  <30.155895, 29.756081, 36.995129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.075769, 29.531328, 36.969315>,  <29.942226, 29.156742, 36.926289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.075769, 29.531328, 36.969315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673001, -0.156909, -0.722807,
		-0.660006, 0.313707, -0.682627,
		0.333860, 0.936466, 0.107564,
		30.175928, 29.812267, 37.001583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.769529, 29.670099, 36.326702>,  <29.942226, 29.156742, 36.926289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.769529, 29.670099, 36.326702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.110872, 29.712097, 36.530960>,  <30.315678, 29.737297, 36.653515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.110872, 29.712097, 36.530960>,  <29.769529, 29.670099, 36.326702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.110872, 29.712097, 36.530960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520946, -0.134183, -0.842977,
		-0.019989, 0.985379, -0.169203,
		0.853356, 0.104996, 0.510647,
		30.366879, 29.743595, 36.684155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.118120, 30.284626, 36.169624>,  <29.769529, 29.670099, 36.326702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.118120, 30.284626, 36.169624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.304770, 29.937471, 36.237785>,  <30.416759, 29.729179, 36.278683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.304770, 29.937471, 36.237785>,  <30.118120, 30.284626, 36.169624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.304770, 29.937471, 36.237785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402793, 0.036996, -0.914543,
		0.787414, 0.495386, 0.366841,
		0.466624, -0.867885, 0.170407,
		30.444757, 29.677107, 36.288906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.816473, 30.418695, 35.952202>,  <30.118120, 30.284626, 36.169624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.816473, 30.418695, 35.952202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.756338, 30.025011, 35.989563>,  <30.720257, 29.788799, 36.011978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.756338, 30.025011, 35.989563>,  <30.816473, 30.418695, 35.952202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.756338, 30.025011, 35.989563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503457, -0.157522, -0.849540,
		0.850841, -0.080693, 0.519190,
		-0.150336, -0.984213, 0.093401,
		30.711237, 29.729748, 36.017582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.443920, 30.187819, 35.987057>,  <30.816473, 30.418695, 35.952202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.443920, 30.187819, 35.987057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.186155, 29.916384, 35.846058>,  <31.031496, 29.753523, 35.761459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.186155, 29.916384, 35.846058>,  <31.443920, 30.187819, 35.987057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.186155, 29.916384, 35.846058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513384, -0.042295, -0.857116,
		0.566719, -0.733302, 0.375631,
		-0.644412, -0.678586, -0.352496,
		30.992832, 29.712809, 35.740311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.752802, 29.435165, 35.723957>,  <31.443920, 30.187819, 35.987057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.752802, 29.435165, 35.723957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.413177, 29.526541, 35.533417>,  <31.209402, 29.581366, 35.419094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.413177, 29.526541, 35.533417>,  <31.752802, 29.435165, 35.723957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.413177, 29.526541, 35.533417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427532, -0.232560, -0.873574,
		-0.310337, -0.945374, 0.099794,
		-0.849063, 0.228437, -0.476349,
		31.158459, 29.595072, 35.390511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.600046, 28.950750, 35.268097>,  <31.752802, 29.435165, 35.723957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.600046, 28.950750, 35.268097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.424267, 29.275923, 35.115242>,  <31.318798, 29.471025, 35.023529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.424267, 29.275923, 35.115242>,  <31.600046, 28.950750, 35.268097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.424267, 29.275923, 35.115242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325119, -0.252628, -0.911305,
		-0.837366, -0.524712, -0.153282,
		-0.439449, 0.812931, -0.382136,
		31.292433, 29.519802, 35.000603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.096409, 28.895687, 34.540176>,  <31.600046, 28.950750, 35.268097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.096409, 28.895687, 34.540176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.311232, 29.230734, 34.580105>,  <31.440126, 29.431763, 34.604061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.311232, 29.230734, 34.580105>,  <31.096409, 28.895687, 34.540176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.311232, 29.230734, 34.580105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342710, -0.108530, -0.933151,
		-0.770790, 0.535368, -0.345347,
		0.537059, 0.837617, 0.099823,
		31.472349, 29.482019, 34.610050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.002455, 29.207748, 33.921860>,  <31.096409, 28.895687, 34.540176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.002455, 29.207748, 33.921860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.330963, 29.376577, 34.075413>,  <31.528069, 29.477875, 34.167545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.330963, 29.376577, 34.075413>,  <31.002455, 29.207748, 33.921860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.330963, 29.376577, 34.075413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460256, -0.092500, -0.882954,
		-0.337163, 0.901830, -0.270230,
		0.821271, 0.422075, 0.383885,
		31.577345, 29.503201, 34.190578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.194048, 29.713142, 33.372524>,  <31.002455, 29.207748, 33.921860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.194048, 29.713142, 33.372524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.523659, 29.660673, 33.592987>,  <31.721424, 29.629190, 33.725266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.523659, 29.660673, 33.592987>,  <31.194048, 29.713142, 33.372524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.523659, 29.660673, 33.592987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530177, -0.164432, -0.831790,
		0.199738, 0.977627, -0.065951,
		0.824025, -0.131174, 0.551159,
		31.770866, 29.621321, 33.758335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.751799, 30.084896, 32.965733>,  <31.194048, 29.713142, 33.372524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.751799, 30.084896, 32.965733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.002655, 29.940805, 33.241974>,  <32.153168, 29.854351, 33.407719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.002655, 29.940805, 33.241974>,  <31.751799, 30.084896, 32.965733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.002655, 29.940805, 33.241974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733418, -0.025458, -0.679301,
		0.262283, 0.932518, 0.248229,
		0.627141, -0.360225, 0.690603,
		32.190796, 29.832739, 33.449154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.312126, 30.512156, 33.093224>,  <31.751799, 30.084896, 32.965733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.312126, 30.512156, 33.093224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.420547, 30.131695, 33.152336>,  <32.485600, 29.903418, 33.187801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.420547, 30.131695, 33.152336>,  <32.312126, 30.512156, 33.093224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.420547, 30.131695, 33.152336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668064, 0.075368, -0.740277,
		0.692977, 0.299384, 0.655859,
		0.271058, -0.951151, 0.147780,
		32.501865, 29.846350, 33.196671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.983559, 30.451841, 32.938938>,  <32.312126, 30.512156, 33.093224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.983559, 30.451841, 32.938938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.881123, 30.065903, 32.915325>,  <32.819660, 29.834339, 32.901157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.881123, 30.065903, 32.915325>,  <32.983559, 30.451841, 32.938938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.881123, 30.065903, 32.915325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569317, -0.101190, -0.815867,
		0.781214, -0.242544, 0.575219,
		-0.256090, -0.964849, -0.059033,
		32.804295, 29.776447, 32.897614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.550705, 30.122801, 32.751713>,  <32.983559, 30.451841, 32.938938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.550705, 30.122801, 32.751713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.272736, 29.855347, 32.645878>,  <33.105953, 29.694874, 32.582378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.272736, 29.855347, 32.645878>,  <33.550705, 30.122801, 32.751713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.272736, 29.855347, 32.645878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525379, -0.220887, -0.821697,
		0.490971, -0.710027, 0.504786,
		-0.694928, -0.668634, -0.264584,
		33.064259, 29.654757, 32.566502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923294, 29.529392, 32.513378>,  <33.550705, 30.122801, 32.751713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923294, 29.529392, 32.513378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569561, 29.487225, 32.331459>,  <33.357323, 29.461924, 32.222305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569561, 29.487225, 32.331459>,  <33.923294, 29.529392, 32.513378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.569561, 29.487225, 32.331459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462165, -0.059883, -0.884770,
		0.066038, -0.992623, 0.101679,
		-0.884332, -0.105421, -0.454801,
		33.304260, 29.455599, 32.195019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.975285, 28.963821, 32.021164>,  <33.923294, 29.529392, 32.513378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.975285, 28.963821, 32.021164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.680908, 29.200560, 31.889647>,  <33.504280, 29.342602, 31.810736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.680908, 29.200560, 31.889647>,  <33.975285, 28.963821, 32.021164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.680908, 29.200560, 31.889647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421152, 0.019940, -0.906771,
		-0.530111, -0.805805, -0.263932,
		-0.735943, 0.591845, -0.328796,
		33.460125, 29.378113, 31.791008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.734520, 28.795464, 31.356594>,  <33.975285, 28.963821, 32.021164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.734520, 28.795464, 31.356594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.537178, 29.143248, 31.346537>,  <33.418774, 29.351919, 31.340502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.537178, 29.143248, 31.346537>,  <33.734520, 28.795464, 31.356594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.537178, 29.143248, 31.346537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190464, 0.079777, -0.978447,
		-0.848717, -0.487515, -0.204960,
		-0.493359, 0.869462, -0.025146,
		33.389172, 29.404087, 31.338993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203873, 28.822985, 30.788078>,  <33.734520, 28.795464, 31.356594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.203873, 28.822985, 30.788078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.285675, 29.201790, 30.887152>,  <33.334755, 29.429073, 30.946596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.285675, 29.201790, 30.887152>,  <33.203873, 28.822985, 30.788078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.285675, 29.201790, 30.887152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173940, 0.213846, -0.961257,
		-0.963287, 0.239664, -0.120991,
		0.204505, 0.947012, 0.247683,
		33.347027, 29.485893, 30.961456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.971649, 29.180279, 30.157967>,  <33.203873, 28.822985, 30.788078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.971649, 29.180279, 30.157967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195961, 29.436291, 30.368067>,  <33.330547, 29.589899, 30.494127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195961, 29.436291, 30.368067>,  <32.971649, 29.180279, 30.157967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.195961, 29.436291, 30.368067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353637, 0.388460, -0.850905,
		-0.748646, 0.662916, -0.008499,
		0.560777, 0.640032, 0.525250,
		33.364193, 29.628300, 30.525642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827339, 29.875771, 29.893656>,  <32.971649, 29.180279, 30.157967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827339, 29.875771, 29.893656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.172157, 29.952673, 30.081236>,  <33.379047, 29.998814, 30.193783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.172157, 29.952673, 30.081236>,  <32.827339, 29.875771, 29.893656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.172157, 29.952673, 30.081236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254847, 0.635359, -0.728953,
		-0.438095, 0.747902, 0.498714,
		0.862047, 0.192255, 0.468948,
		33.430771, 30.010349, 30.221920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.921902, 30.669090, 30.004316>,  <32.827339, 29.875771, 29.893656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.921902, 30.669090, 30.004316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.278000, 30.488405, 29.980930>,  <33.491657, 30.379993, 29.966900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.278000, 30.488405, 29.980930>,  <32.921902, 30.669090, 30.004316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.278000, 30.488405, 29.980930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213556, 0.527320, -0.822392,
		0.402313, 0.719646, 0.565910,
		0.890246, -0.451713, -0.058463,
		33.545074, 30.352892, 29.963392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.324020, 31.175381, 29.975170>,  <32.921902, 30.669090, 30.004316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.324020, 31.175381, 29.975170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522827, 30.866224, 29.817383>,  <33.642113, 30.680729, 29.722710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522827, 30.866224, 29.817383>,  <33.324020, 31.175381, 29.975170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522827, 30.866224, 29.817383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244056, 0.560755, -0.791196,
		0.832711, 0.296968, 0.467336,
		0.497020, -0.772893, -0.394470,
		33.671932, 30.634356, 29.699041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.911259, 31.475157, 29.730097>,  <33.324020, 31.175381, 29.975170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.911259, 31.475157, 29.730097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.900444, 31.115589, 29.555183>,  <33.893955, 30.899849, 29.450235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.900444, 31.115589, 29.555183>,  <33.911259, 31.475157, 29.730097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.900444, 31.115589, 29.555183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399622, 0.391247, -0.828992,
		0.916281, -0.197160, 0.348649,
		-0.027036, -0.898918, -0.437282,
		33.892334, 30.845913, 29.423998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.528263, 31.423012, 29.409576>,  <33.911259, 31.475157, 29.730097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.528263, 31.423012, 29.409576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.295681, 31.154501, 29.225706>,  <34.156132, 30.993395, 29.115385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.295681, 31.154501, 29.225706>,  <34.528263, 31.423012, 29.409576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.295681, 31.154501, 29.225706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457845, 0.197062, -0.866917,
		0.672525, -0.714531, 0.192758,
		-0.581453, -0.671277, -0.459673,
		34.121246, 30.953117, 29.087805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952385, 31.003298, 28.840326>,  <34.528263, 31.423012, 29.409576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952385, 31.003298, 28.840326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576015, 30.928373, 28.727493>,  <34.350193, 30.883419, 28.659794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576015, 30.928373, 28.727493>,  <34.952385, 31.003298, 28.840326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576015, 30.928373, 28.727493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254205, 0.159569, -0.953896,
		0.223690, -0.969253, -0.102526,
		-0.940926, -0.187315, -0.282083,
		34.293736, 30.872181, 28.642868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.942764, 30.562105, 28.283575>,  <34.952385, 31.003298, 28.840326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.942764, 30.562105, 28.283575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577591, 30.717606, 28.233902>,  <34.358486, 30.810905, 28.204098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577591, 30.717606, 28.233902>,  <34.942764, 30.562105, 28.283575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577591, 30.717606, 28.233902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176776, 0.102430, -0.978907,
		-0.367829, -0.915632, -0.162234,
		-0.912936, 0.388750, -0.124185,
		34.303711, 30.834230, 28.196646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718052, 30.161123, 27.689800>,  <34.942764, 30.562105, 28.283575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718052, 30.161123, 27.689800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.499233, 30.490582, 27.749590>,  <34.367943, 30.688257, 27.785463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.499233, 30.490582, 27.749590>,  <34.718052, 30.161123, 27.689800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.499233, 30.490582, 27.749590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065402, 0.220073, -0.973288,
		-0.834541, -0.522662, -0.174259,
		-0.547051, 0.823646, 0.149476,
		34.335117, 30.737675, 27.794434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356918, 30.169788, 27.107447>,  <34.718052, 30.161123, 27.689800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356918, 30.169788, 27.107447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.360851, 30.536118, 27.268032>,  <34.363209, 30.755915, 27.364384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.360851, 30.536118, 27.268032>,  <34.356918, 30.169788, 27.107447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.360851, 30.536118, 27.268032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102443, 0.398450, -0.911451,
		-0.994690, 0.050087, -0.089903,
		0.009830, 0.915821, 0.401465,
		34.363800, 30.810863, 27.388472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998528, 30.543264, 26.713823>,  <34.356918, 30.169788, 27.107447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.998528, 30.543264, 26.713823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.196777, 30.834551, 26.903162>,  <34.315727, 31.009323, 27.016766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.196777, 30.834551, 26.903162>,  <33.998528, 30.543264, 26.713823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.196777, 30.834551, 26.903162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108670, 0.488715, -0.865649,
		-0.861711, 0.480476, 0.163085,
		0.495625, 0.728217, 0.473345,
		34.345467, 31.053017, 27.045166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701538, 31.241896, 26.380753>,  <33.998528, 30.543264, 26.713823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.701538, 31.241896, 26.380753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045670, 31.330450, 26.564417>,  <34.252148, 31.383583, 26.674616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045670, 31.330450, 26.564417>,  <33.701538, 31.241896, 26.380753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.045670, 31.330450, 26.564417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342631, 0.415777, -0.842457,
		-0.377417, 0.882109, 0.281850,
		0.860326, 0.221387, 0.459160,
		34.303768, 31.396866, 26.702166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.869564, 32.018002, 26.403837>,  <33.701538, 31.241896, 26.380753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.869564, 32.018002, 26.403837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.231888, 31.856573, 26.455442>,  <34.449280, 31.759716, 26.486404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.231888, 31.856573, 26.455442>,  <33.869564, 32.018002, 26.403837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.231888, 31.856573, 26.455442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358045, 0.566305, -0.742362,
		0.226539, 0.718628, 0.657461,
		0.905805, -0.403575, 0.129011,
		34.503628, 31.735500, 26.494146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.336254, 32.539776, 26.671713>,  <33.869564, 32.018002, 26.403837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.336254, 32.539776, 26.671713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.605671, 32.274208, 26.541765>,  <34.767323, 32.114868, 26.463797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.605671, 32.274208, 26.541765>,  <34.336254, 32.539776, 26.671713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605671, 32.274208, 26.541765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460946, 0.720876, -0.517559,
		0.577810, 0.198853, 0.791576,
		0.673547, -0.663924, -0.324869,
		34.807735, 32.075031, 26.444305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987274, 32.859558, 26.750534>,  <34.336254, 32.539776, 26.671713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987274, 32.859558, 26.750534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.033562, 32.578293, 26.469913>,  <35.061337, 32.409534, 26.301542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.033562, 32.578293, 26.469913>,  <34.987274, 32.859558, 26.750534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033562, 32.578293, 26.469913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434073, 0.671082, -0.601023,
		0.893414, -0.234973, 0.382883,
		0.115722, -0.703162, -0.701550,
		35.068279, 32.367344, 26.259449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670296, 33.033298, 26.616568>,  <34.987274, 32.859558, 26.750534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.670296, 33.033298, 26.616568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.491783, 32.827141, 26.323938>,  <35.384678, 32.703445, 26.148361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.491783, 32.827141, 26.323938>,  <35.670296, 33.033298, 26.616568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491783, 32.827141, 26.323938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385996, 0.626678, -0.676965,
		0.807368, -0.584499, -0.080730,
		-0.446277, -0.515398, -0.731574,
		35.357899, 32.672520, 26.104465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150093, 33.055984, 26.006151>,  <35.670296, 33.033298, 26.616568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.150093, 33.055984, 26.006151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.801445, 32.934940, 25.851900>,  <35.592258, 32.862312, 25.759350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.801445, 32.934940, 25.851900>,  <36.150093, 33.055984, 26.006151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801445, 32.934940, 25.851900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214329, 0.472240, -0.855016,
		0.440843, -0.827900, -0.346756,
		-0.871620, -0.302608, -0.385627,
		35.539959, 32.844158, 25.736212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278412, 32.650791, 25.387009>,  <36.150093, 33.055984, 26.006151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.278412, 32.650791, 25.387009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902119, 32.780064, 25.345873>,  <35.676342, 32.857628, 25.321192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902119, 32.780064, 25.345873>,  <36.278412, 32.650791, 25.387009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902119, 32.780064, 25.345873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183617, 0.230388, -0.955618,
		-0.285147, -0.917864, -0.276075,
		-0.940732, 0.323184, -0.102841,
		35.619900, 32.877018, 25.315022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.962284, 32.232506, 24.823139>,  <36.278412, 32.650791, 25.387009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.962284, 32.232506, 24.823139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.758820, 32.573742, 24.869614>,  <35.636742, 32.778484, 24.897497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.758820, 32.573742, 24.869614>,  <35.962284, 32.232506, 24.823139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758820, 32.573742, 24.869614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070340, 0.175672, -0.981932,
		-0.858086, -0.491303, -0.149365,
		-0.508666, 0.853088, 0.116184,
		35.606220, 32.829670, 24.904469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642872, 32.359852, 24.188536>,  <35.962284, 32.232506, 24.823139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642872, 32.359852, 24.188536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.614391, 32.732944, 24.329924>,  <35.597305, 32.956799, 24.414757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.614391, 32.732944, 24.329924>,  <35.642872, 32.359852, 24.188536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614391, 32.732944, 24.329924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137504, 0.360166, -0.922699,
		-0.987939, -0.017092, -0.153898,
		-0.071199, 0.932732, 0.353471,
		35.593033, 33.012764, 24.435965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259300, 32.713543, 23.697504>,  <35.642872, 32.359852, 24.188536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259300, 32.713543, 23.697504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.481907, 33.001503, 23.863409>,  <35.615471, 33.174278, 23.962952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.481907, 33.001503, 23.863409>,  <35.259300, 32.713543, 23.697504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.481907, 33.001503, 23.863409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223074, 0.351410, -0.909258,
		-0.800327, 0.598542, 0.034976,
		0.556520, 0.719901, 0.414762,
		35.648861, 33.217472, 23.987837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244617, 33.210690, 23.244928>,  <35.259300, 32.713543, 23.697504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244617, 33.210690, 23.244928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.543346, 33.345818, 23.474062>,  <35.722584, 33.426895, 23.611542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.543346, 33.345818, 23.474062>,  <35.244617, 33.210690, 23.244928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.543346, 33.345818, 23.474062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365013, 0.511806, -0.777702,
		-0.555902, 0.789895, 0.258919,
		0.746819, 0.337817, 0.572836,
		35.767391, 33.447163, 23.645912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.294891, 33.837116, 22.961576>,  <35.244617, 33.210690, 23.244928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.294891, 33.837116, 22.961576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.625591, 33.788132, 23.181208>,  <35.824013, 33.758743, 23.312986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.625591, 33.788132, 23.181208>,  <35.294891, 33.837116, 22.961576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.625591, 33.788132, 23.181208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470062, 0.686588, -0.554651,
		-0.309068, 0.716660, 0.625201,
		0.826751, -0.122458, 0.549077,
		35.873615, 33.751396, 23.345930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.457497, 34.457302, 23.320238>,  <35.294891, 33.837116, 22.961576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.457497, 34.457302, 23.320238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784599, 34.233059, 23.268091>,  <35.980862, 34.098515, 23.236803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784599, 34.233059, 23.268091>,  <35.457497, 34.457302, 23.320238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784599, 34.233059, 23.268091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398371, 0.714769, -0.574809,
		0.415424, 0.418119, 0.807836,
		0.817755, -0.560608, -0.130366,
		36.029926, 34.064877, 23.228981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974277, 34.938602, 23.317430>,  <35.457497, 34.457302, 23.320238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.974277, 34.938602, 23.317430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.163197, 34.621838, 23.162607>,  <36.276550, 34.431778, 23.069714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.163197, 34.621838, 23.162607>,  <35.974277, 34.938602, 23.317430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163197, 34.621838, 23.162607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327900, 0.565459, -0.756795,
		0.818177, 0.230519, 0.526733,
		0.472302, -0.791907, -0.387058,
		36.304886, 34.384266, 23.046490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.618855, 35.253139, 23.068689>,  <35.974277, 34.938602, 23.317430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.618855, 35.253139, 23.068689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.619728, 34.904266, 22.873022>,  <36.620251, 34.694942, 22.755621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.619728, 34.904266, 22.873022>,  <36.618855, 35.253139, 23.068689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619728, 34.904266, 22.873022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290028, 0.468697, -0.834390,
		0.957016, -0.140051, 0.253982,
		0.002184, -0.872186, -0.489169,
		36.620384, 34.642609, 22.726271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243256, 35.284065, 22.773821>,  <36.618855, 35.253139, 23.068689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243256, 35.284065, 22.773821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.010548, 35.039165, 22.559645>,  <36.870922, 34.892227, 22.431139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.010548, 35.039165, 22.559645>,  <37.243256, 35.284065, 22.773821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010548, 35.039165, 22.559645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279052, 0.468106, -0.838455,
		0.763982, -0.637207, -0.101484,
		-0.581774, -0.612245, -0.535439,
		36.836014, 34.855492, 22.399014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696682, 34.831432, 22.334850>,  <37.243256, 35.284065, 22.773821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.696682, 34.831432, 22.334850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.328861, 34.814930, 22.178532>,  <37.108170, 34.805027, 22.084740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.328861, 34.814930, 22.178532>,  <37.696682, 34.831432, 22.334850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328861, 34.814930, 22.178532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369656, 0.246621, -0.895842,
		0.133334, -0.968234, -0.211532,
		-0.919553, -0.041253, -0.390797,
		37.052994, 34.802555, 22.061293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840153, 34.491108, 21.780222>,  <37.696682, 34.831432, 22.334850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840153, 34.491108, 21.780222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.489319, 34.668964, 21.707541>,  <37.278820, 34.775677, 21.663931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.489319, 34.668964, 21.707541>,  <37.840153, 34.491108, 21.780222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.489319, 34.668964, 21.707541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346708, 0.324227, -0.880154,
		-0.332438, -0.834969, -0.438535,
		-0.877085, 0.444640, -0.181705,
		37.226192, 34.802357, 21.653028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.700386, 34.400505, 21.051102>,  <37.840153, 34.491108, 21.780222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.700386, 34.400505, 21.051102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.461941, 34.695370, 21.178379>,  <37.318874, 34.872288, 21.254745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.461941, 34.695370, 21.178379>,  <37.700386, 34.400505, 21.051102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461941, 34.695370, 21.178379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180859, 0.509399, -0.841310,
		-0.782268, -0.443966, -0.436980,
		-0.596110, 0.737162, 0.318191,
		37.283108, 34.916519, 21.273836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078236, 34.510124, 20.499258>,  <37.700386, 34.400505, 21.051102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.078236, 34.510124, 20.499258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.135777, 34.865368, 20.673878>,  <37.170300, 35.078514, 20.778650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.135777, 34.865368, 20.673878>,  <37.078236, 34.510124, 20.499258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135777, 34.865368, 20.673878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137993, 0.418827, -0.897520,
		-0.979931, 0.189348, -0.062304,
		0.143849, 0.888106, 0.436550,
		37.178932, 35.131798, 20.804842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588493, 34.949856, 20.144032>,  <37.078236, 34.510124, 20.499258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588493, 34.949856, 20.144032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.927338, 35.095558, 20.298805>,  <37.130646, 35.182980, 20.391670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.927338, 35.095558, 20.298805>,  <36.588493, 34.949856, 20.144032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.927338, 35.095558, 20.298805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206758, 0.444843, -0.871416,
		-0.489541, 0.818190, 0.301521,
		0.847113, 0.364252, 0.386936,
		37.181473, 35.204834, 20.414886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.618317, 35.588989, 19.958017>,  <36.588493, 34.949856, 20.144032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.618317, 35.588989, 19.958017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.002998, 35.497173, 20.017937>,  <37.233807, 35.442085, 20.053888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.002998, 35.497173, 20.017937>,  <36.618317, 35.588989, 19.958017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.002998, 35.497173, 20.017937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248959, 0.502885, -0.827723,
		0.114664, 0.833317, 0.540772,
		0.961702, -0.229540, 0.149799,
		37.291508, 35.428310, 20.062876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.148140, 36.177956, 19.981926>,  <36.618317, 35.588989, 19.958017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.148140, 36.177956, 19.981926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.285526, 35.839314, 19.819304>,  <37.367958, 35.636127, 19.721729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.285526, 35.839314, 19.819304>,  <37.148140, 36.177956, 19.981926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.285526, 35.839314, 19.819304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253938, 0.500486, -0.827665,
		0.904181, 0.181038, 0.386887,
		0.343470, -0.846604, -0.406558,
		37.388569, 35.585331, 19.697336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754353, 36.280525, 19.646633>,  <37.148140, 36.177956, 19.981926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.754353, 36.280525, 19.646633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.529819, 35.986721, 19.494112>,  <37.395100, 35.810436, 19.402599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.529819, 35.986721, 19.494112>,  <37.754353, 36.280525, 19.646633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.529819, 35.986721, 19.494112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074562, 0.413979, -0.907228,
		0.824223, -0.537689, -0.177614,
		-0.561334, -0.734515, -0.381302,
		37.361420, 35.766365, 19.379721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084324, 35.854973, 20.200298>,  <37.754353, 36.280525, 19.646633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084324, 35.854973, 20.200298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.032227, 36.248894, 20.154348>,  <38.000969, 36.485249, 20.126778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.032227, 36.248894, 20.154348>,  <38.084324, 35.854973, 20.200298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032227, 36.248894, 20.154348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784743, -0.031577, 0.619017,
		0.605983, 0.170770, 0.776931,
		-0.130243, 0.984805, -0.114876,
		37.993153, 36.544334, 20.119886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183735, 36.298706, 20.794378>,  <38.084324, 35.854973, 20.200298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.183735, 36.298706, 20.794378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.905743, 36.459354, 20.555815>,  <37.738949, 36.555744, 20.412678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.905743, 36.459354, 20.555815>,  <38.183735, 36.298706, 20.794378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.905743, 36.459354, 20.555815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590215, 0.155096, 0.792207,
		0.410670, 0.902575, 0.129257,
		-0.694979, 0.401625, -0.596407,
		37.697250, 36.579842, 20.376892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933197, 36.826706, 21.150988>,  <38.183735, 36.298706, 20.794378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933197, 36.826706, 21.150988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.663998, 36.680367, 20.893858>,  <37.502476, 36.592564, 20.739580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.663998, 36.680367, 20.893858>,  <37.933197, 36.826706, 21.150988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.663998, 36.680367, 20.893858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680585, -0.033991, 0.731880,
		-0.289610, 0.930052, -0.226117,
		-0.673000, -0.365852, -0.642824,
		37.462097, 36.570610, 20.701012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385166, 37.194107, 21.045719>,  <37.933197, 36.826706, 21.150988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.385166, 37.194107, 21.045719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.254845, 36.822815, 20.973904>,  <37.176651, 36.600040, 20.930815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.254845, 36.822815, 20.973904>,  <37.385166, 37.194107, 21.045719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.254845, 36.822815, 20.973904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529170, 0.021668, 0.848239,
		-0.783474, 0.371365, -0.498253,
		-0.325803, -0.928234, -0.179539,
		37.157104, 36.544346, 20.920042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596664, 37.210369, 20.988165>,  <37.385166, 37.194107, 21.045719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.596664, 37.210369, 20.988165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.727192, 36.847366, 21.093956>,  <36.805508, 36.629566, 21.157431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.727192, 36.847366, 21.093956>,  <36.596664, 37.210369, 20.988165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727192, 36.847366, 21.093956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378734, 0.130830, 0.916212,
		-0.866070, -0.399142, -0.301012,
		0.326317, -0.907507, 0.264477,
		36.825089, 36.575115, 21.173300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047371, 36.937897, 21.336027>,  <36.596664, 37.210369, 20.988165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047371, 36.937897, 21.336027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.403980, 36.786789, 21.436005>,  <36.617947, 36.696125, 21.495991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.403980, 36.786789, 21.436005>,  <36.047371, 36.937897, 21.336027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.403980, 36.786789, 21.436005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164891, 0.243275, 0.955839,
		-0.421888, -0.893370, 0.154597,
		0.891528, -0.377765, 0.249943,
		36.671440, 36.673458, 21.510988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899181, 36.888256, 21.933804>,  <36.047371, 36.937897, 21.336027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.899181, 36.888256, 21.933804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.295967, 36.838615, 21.943647>,  <36.534039, 36.808830, 21.949554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.295967, 36.838615, 21.943647>,  <35.899181, 36.888256, 21.933804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295967, 36.838615, 21.943647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015528, 0.073640, 0.997164,
		-0.125561, -0.989533, 0.071121,
		0.991964, -0.124101, 0.024612,
		36.593555, 36.801384, 21.951031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035442, 36.486561, 22.536304>,  <35.899181, 36.888256, 21.933804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.035442, 36.486561, 22.536304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.392975, 36.645077, 22.452387>,  <36.607494, 36.740185, 22.402037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.392975, 36.645077, 22.452387>,  <36.035442, 36.486561, 22.536304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.392975, 36.645077, 22.452387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148016, 0.180883, 0.972303,
		0.423263, -0.900131, 0.103022,
		0.893835, 0.396291, -0.209795,
		36.661125, 36.763966, 22.389448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.618160, 36.130745, 22.900398>,  <36.035442, 36.486561, 22.536304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.618160, 36.130745, 22.900398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.744705, 36.501438, 22.819319>,  <36.820633, 36.723854, 22.770672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.744705, 36.501438, 22.819319>,  <36.618160, 36.130745, 22.900398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.744705, 36.501438, 22.819319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182242, 0.150319, 0.971695,
		0.930968, -0.344349, -0.121333,
		0.316363, 0.926730, -0.202697,
		36.839615, 36.779457, 22.758509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188251, 36.213490, 23.249361>,  <36.618160, 36.130745, 22.900398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188251, 36.213490, 23.249361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058296, 36.589081, 23.204165>,  <36.980324, 36.814434, 23.177046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058296, 36.589081, 23.204165>,  <37.188251, 36.213490, 23.249361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058296, 36.589081, 23.204165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178510, 0.178208, 0.967665,
		0.928752, 0.294215, -0.225515,
		-0.324891, 0.938978, -0.112991,
		36.960831, 36.870773, 23.170267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623634, 36.593082, 23.637623>,  <37.188251, 36.213490, 23.249361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.623634, 36.593082, 23.637623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.317940, 36.848560, 23.601818>,  <37.134521, 37.001846, 23.580336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.317940, 36.848560, 23.601818>,  <37.623634, 36.593082, 23.637623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.317940, 36.848560, 23.601818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193846, 0.359858, 0.912648,
		0.615111, 0.680130, -0.398825,
		-0.764239, 0.638691, -0.089512,
		37.088669, 37.040169, 23.574965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838192, 37.275249, 23.964447>,  <37.623634, 36.593082, 23.637623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838192, 37.275249, 23.964447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.440662, 37.230965, 23.961628>,  <37.202145, 37.204391, 23.959936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.440662, 37.230965, 23.961628>,  <37.838192, 37.275249, 23.964447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.440662, 37.230965, 23.961628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021697, 0.131665, 0.991057,
		-0.108798, 0.985092, -0.133255,
		-0.993827, -0.110716, -0.007049,
		37.142513, 37.197750, 23.959513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551380, 37.917526, 24.399830>,  <37.838192, 37.275249, 23.964447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.551380, 37.917526, 24.399830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.260456, 37.644115, 24.375124>,  <37.085903, 37.480068, 24.360300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.260456, 37.644115, 24.375124>,  <37.551380, 37.917526, 24.399830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.260456, 37.644115, 24.375124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099477, 0.015948, 0.994912,
		-0.679063, 0.729753, -0.079594,
		-0.727309, -0.683525, -0.061764,
		37.042263, 37.439056, 24.356594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096157, 38.167377, 24.890429>,  <37.551380, 37.917526, 24.399830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.096157, 38.167377, 24.890429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.970997, 37.794506, 24.817616>,  <36.895901, 37.570782, 24.773928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.970997, 37.794506, 24.817616>,  <37.096157, 38.167377, 24.890429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970997, 37.794506, 24.817616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224562, -0.113614, 0.967814,
		-0.922857, 0.343706, -0.173782,
		-0.312899, -0.932179, -0.182033,
		36.877129, 37.514851, 24.763006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368942, 38.106071, 25.158890>,  <37.096157, 38.167377, 24.890429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368942, 38.106071, 25.158890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.542839, 37.746319, 25.140484>,  <36.647179, 37.530468, 25.129440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.542839, 37.746319, 25.140484>,  <36.368942, 38.106071, 25.158890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542839, 37.746319, 25.140484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300551, -0.193067, 0.934020,
		-0.848921, -0.392231, -0.354244,
		0.434744, -0.899378, -0.046013,
		36.673264, 37.476505, 25.126680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852142, 37.682426, 25.519730>,  <36.368942, 38.106071, 25.158890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852142, 37.682426, 25.519730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.187401, 37.464436, 25.528744>,  <36.388557, 37.333641, 25.534151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.187401, 37.464436, 25.528744>,  <35.852142, 37.682426, 25.519730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.187401, 37.464436, 25.528744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305470, -0.434766, 0.847152,
		-0.451895, -0.716914, -0.530873,
		0.838141, -0.544989, 0.022527,
		36.438843, 37.300941, 25.535503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.606770, 37.116905, 25.666960>,  <35.852142, 37.682426, 25.519730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.606770, 37.116905, 25.666960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.981495, 37.047749, 25.788609>,  <36.206329, 37.006256, 25.861597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.981495, 37.047749, 25.788609>,  <35.606770, 37.116905, 25.666960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981495, 37.047749, 25.788609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349333, -0.416076, 0.839552,
		-0.018609, -0.892744, -0.450181,
		0.936814, -0.172886, 0.304122,
		36.262539, 36.995884, 25.879845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609329, 36.521614, 25.935884>,  <35.606770, 37.116905, 25.666960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.609329, 36.521614, 25.935884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.930733, 36.703297, 26.089802>,  <36.123577, 36.812305, 26.182152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.930733, 36.703297, 26.089802>,  <35.609329, 36.521614, 25.935884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930733, 36.703297, 26.089802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231100, -0.357691, 0.904793,
		0.548600, -0.815937, -0.182442,
		0.803512, 0.454207, 0.384792,
		36.171787, 36.839558, 26.205240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018402, 36.002678, 26.193804>,  <35.609329, 36.521614, 25.935884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.018402, 36.002678, 26.193804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.110790, 36.335285, 26.395882>,  <36.166225, 36.534851, 26.517128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.110790, 36.335285, 26.395882>,  <36.018402, 36.002678, 26.193804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110790, 36.335285, 26.395882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183454, -0.472703, 0.861914,
		0.955508, -0.291758, 0.043365,
		0.230972, 0.831522, 0.505196,
		36.180080, 36.584743, 26.547440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483139, 35.690781, 26.586578>,  <36.018402, 36.002678, 26.193804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.483139, 35.690781, 26.586578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355778, 36.031368, 26.753246>,  <36.279362, 36.235722, 26.853249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355778, 36.031368, 26.753246>,  <36.483139, 35.690781, 26.586578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355778, 36.031368, 26.753246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343390, -0.513296, 0.786518,
		0.883573, 0.107350, 0.455822,
		-0.318405, 0.851471, 0.416672,
		36.260258, 36.286808, 26.878248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600502, 35.607433, 27.283407>,  <36.483139, 35.690781, 26.586578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.600502, 35.607433, 27.283407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.339340, 35.910381, 27.287535>,  <36.182644, 36.092148, 27.290010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.339340, 35.910381, 27.287535>,  <36.600502, 35.607433, 27.283407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.339340, 35.910381, 27.287535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416278, -0.370174, 0.830472,
		0.632792, 0.537926, 0.556965,
		-0.652907, 0.757368, 0.010316,
		36.143467, 36.137592, 27.290630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570156, 35.741081, 27.933863>,  <36.600502, 35.607433, 27.283407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570156, 35.741081, 27.933863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.264236, 35.972645, 27.820770>,  <36.080685, 36.111584, 27.752914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.264236, 35.972645, 27.820770>,  <36.570156, 35.741081, 27.933863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264236, 35.972645, 27.820770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493367, -0.244046, 0.834884,
		0.414323, 0.778013, 0.472263,
		-0.764804, 0.578910, -0.282733,
		36.034794, 36.146317, 27.735950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355511, 36.317089, 28.506670>,  <36.570156, 35.741081, 27.933863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355511, 36.317089, 28.506670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.041409, 36.246284, 28.269335>,  <35.852947, 36.203804, 28.126934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.041409, 36.246284, 28.269335>,  <36.355511, 36.317089, 28.506670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.041409, 36.246284, 28.269335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544573, -0.258585, 0.797856,
		-0.294655, 0.949633, 0.106661,
		-0.785251, -0.177008, -0.593337,
		35.805832, 36.193184, 28.091333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849018, 36.738354, 28.755550>,  <36.355511, 36.317089, 28.506670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849018, 36.738354, 28.755550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.693241, 36.428776, 28.555817>,  <35.599773, 36.243027, 28.435976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.693241, 36.428776, 28.555817>,  <35.849018, 36.738354, 28.755550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.693241, 36.428776, 28.555817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609434, -0.189959, 0.769744,
		-0.690596, 0.604085, -0.397693,
		-0.389445, -0.773949, -0.499335,
		35.576408, 36.196590, 28.406015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136379, 36.913277, 28.897308>,  <35.849018, 36.738354, 28.755550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136379, 36.913277, 28.897308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.184196, 36.539742, 28.762459>,  <35.212887, 36.315620, 28.681549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.184196, 36.539742, 28.762459>,  <35.136379, 36.913277, 28.897308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184196, 36.539742, 28.762459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581309, -0.341106, 0.738734,
		-0.804853, 0.107659, -0.583627,
		0.119547, -0.933839, -0.337123,
		35.220062, 36.259590, 28.661322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557404, 36.681122, 28.753584>,  <35.136379, 36.913277, 28.897308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557404, 36.681122, 28.753584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.768356, 36.352573, 28.840502>,  <34.894928, 36.155445, 28.892653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.768356, 36.352573, 28.840502>,  <34.557404, 36.681122, 28.753584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768356, 36.352573, 28.840502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713662, -0.289468, 0.637882,
		-0.461041, -0.491479, -0.738843,
		0.527377, -0.821375, 0.217293,
		34.926571, 36.106159, 28.905689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078972, 36.337017, 29.068802>,  <34.557404, 36.681122, 28.753584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.078972, 36.337017, 29.068802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.410389, 36.135391, 29.166317>,  <34.609238, 36.014416, 29.224827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.410389, 36.135391, 29.166317>,  <34.078972, 36.337017, 29.068802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410389, 36.135391, 29.166317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529001, -0.561990, 0.635865,
		-0.183512, -0.655806, -0.732286,
		0.828541, -0.504069, 0.243790,
		34.658951, 35.984169, 29.239454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.885811, 35.731384, 28.910288>,  <34.078972, 36.337017, 29.068802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.885811, 35.731384, 28.910288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.203548, 35.679211, 29.147606>,  <34.394192, 35.647907, 29.289997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.203548, 35.679211, 29.147606>,  <33.885811, 35.731384, 28.910288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.203548, 35.679211, 29.147606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433981, -0.805257, 0.404007,
		0.425059, -0.578401, -0.696260,
		0.794346, -0.130437, 0.593297,
		34.441853, 35.640079, 29.325594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.108040, 34.969803, 28.809122>,  <33.885811, 35.731384, 28.910288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.108040, 34.969803, 28.809122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.219131, 35.118847, 29.163303>,  <34.285786, 35.208271, 29.375813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.219131, 35.118847, 29.163303>,  <34.108040, 34.969803, 28.809122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219131, 35.118847, 29.163303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405872, -0.789899, 0.459703,
		0.870709, -0.487055, -0.068149,
		0.277732, 0.372608, 0.885454,
		34.302452, 35.230629, 29.428940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.199806, 34.341309, 29.169250>,  <34.108040, 34.969803, 28.809122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.199806, 34.341309, 29.169250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166084, 34.634605, 29.439140>,  <34.145851, 34.810581, 29.601074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166084, 34.634605, 29.439140>,  <34.199806, 34.341309, 29.169250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166084, 34.634605, 29.439140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465062, -0.627816, 0.624150,
		0.881254, -0.261169, 0.393931,
		-0.084307, 0.733238, 0.674726,
		34.140793, 34.854576, 29.641558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494858, 34.155094, 29.834278>,  <34.199806, 34.341309, 29.169250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494858, 34.155094, 29.834278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.243374, 34.446587, 29.942850>,  <34.092484, 34.621483, 30.007994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.243374, 34.446587, 29.942850>,  <34.494858, 34.155094, 29.834278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.243374, 34.446587, 29.942850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415664, -0.609918, 0.674702,
		0.657226, 0.311369, 0.686370,
		-0.628711, 0.728731, 0.271429,
		34.054760, 34.665207, 30.024279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.358173, 34.069351, 30.586203>,  <34.494858, 34.155094, 29.834278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.358173, 34.069351, 30.586203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.066525, 34.314247, 30.463860>,  <33.891537, 34.461185, 30.390453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.066525, 34.314247, 30.463860>,  <34.358173, 34.069351, 30.586203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.066525, 34.314247, 30.463860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633652, -0.435038, 0.639709,
		0.258596, 0.660230, 0.705141,
		-0.729118, 0.612240, -0.305856,
		33.847790, 34.497921, 30.372103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187801, 34.397385, 31.217726>,  <34.358173, 34.069351, 30.586203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187801, 34.397385, 31.217726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.884083, 34.397449, 30.957430>,  <33.701851, 34.397488, 30.801252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.884083, 34.397449, 30.957430>,  <34.187801, 34.397385, 31.217726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884083, 34.397449, 30.957430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622738, -0.290374, 0.726554,
		-0.188840, 0.956913, 0.220582,
		-0.759300, 0.000163, -0.650741,
		33.656292, 34.397499, 30.762207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.703365, 34.774021, 31.493122>,  <34.187801, 34.397385, 31.217726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.703365, 34.774021, 31.493122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.476871, 34.582405, 31.224825>,  <33.340973, 34.467438, 31.063847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.476871, 34.582405, 31.224825>,  <33.703365, 34.774021, 31.493122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.476871, 34.582405, 31.224825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714782, -0.119842, 0.689003,
		-0.410441, 0.869576, -0.274548,
		-0.566238, -0.479037, -0.670745,
		33.306999, 34.438694, 31.023602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031551, 34.925560, 31.621223>,  <33.703365, 34.774021, 31.493122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031551, 34.925560, 31.621223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.968899, 34.599197, 31.398596>,  <32.931309, 34.403381, 31.265020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.968899, 34.599197, 31.398596>,  <33.031551, 34.925560, 31.621223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.968899, 34.599197, 31.398596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688369, -0.313920, 0.653913,
		-0.708249, 0.485544, -0.512475,
		-0.156627, -0.815905, -0.556567,
		32.921909, 34.354427, 31.231627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.290730, 34.813095, 31.635828>,  <33.031551, 34.925560, 31.621223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.290730, 34.813095, 31.635828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.473850, 34.465370, 31.561306>,  <32.583725, 34.256737, 31.516594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.473850, 34.465370, 31.561306>,  <32.290730, 34.813095, 31.635828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.473850, 34.465370, 31.561306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597317, -0.455962, 0.659781,
		-0.658504, -0.190768, -0.727997,
		0.457804, -0.869314, -0.186304,
		32.611191, 34.204575, 31.505415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.767977, 34.301388, 31.734274>,  <32.290730, 34.813095, 31.635828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.767977, 34.301388, 31.734274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.107067, 34.095211, 31.784367>,  <32.310520, 33.971504, 31.814423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.107067, 34.095211, 31.784367>,  <31.767977, 34.301388, 31.734274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.107067, 34.095211, 31.784367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455397, -0.586162, 0.670095,
		-0.271987, -0.625087, -0.731635,
		0.847724, -0.515442, 0.125234,
		32.361385, 33.940578, 31.821938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.548800, 33.629570, 31.673126>,  <31.767977, 34.301388, 31.734274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.548800, 33.629570, 31.673126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.901283, 33.643593, 31.861696>,  <32.112774, 33.652004, 31.974838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.901283, 33.643593, 31.861696>,  <31.548800, 33.629570, 31.673126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.901283, 33.643593, 31.861696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335985, -0.655081, 0.676744,
		0.332544, -0.754745, -0.565486,
		0.881209, 0.035053, 0.471426,
		32.165646, 33.654110, 32.003124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.673307, 32.910801, 31.959919>,  <31.548800, 33.629570, 31.673126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.673307, 32.910801, 31.959919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.933962, 33.119408, 32.180241>,  <32.090355, 33.244572, 32.312435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.933962, 33.119408, 32.180241>,  <31.673307, 32.910801, 31.959919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.933962, 33.119408, 32.180241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267744, -0.521264, 0.810307,
		0.709707, -0.675499, -0.200041,
		0.651636, 0.521521, 0.550805,
		32.129452, 33.275864, 32.345482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.085125, 32.418858, 32.280586>,  <31.673307, 32.910801, 31.959919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.085125, 32.418858, 32.280586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.103565, 32.750092, 32.504070>,  <32.114628, 32.948830, 32.638161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.103565, 32.750092, 32.504070>,  <32.085125, 32.418858, 32.280586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.103565, 32.750092, 32.504070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197324, -0.540734, 0.817723,
		0.979254, -0.147940, 0.138474,
		0.046096, 0.828083, 0.558708,
		32.117393, 32.998516, 32.671684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.316116, 32.166950, 32.869377>,  <32.085125, 32.418858, 32.280586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.316116, 32.166950, 32.869377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.208271, 32.531750, 32.993034>,  <32.143562, 32.750629, 33.067230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.208271, 32.531750, 32.993034>,  <32.316116, 32.166950, 32.869377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.208271, 32.531750, 32.993034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197896, -0.366657, 0.909065,
		0.942415, 0.183919, 0.279336,
		-0.269615, 0.911996, 0.309146,
		32.127388, 32.805347, 33.085777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676468, 32.293346, 33.539192>,  <32.316116, 32.166950, 32.869377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676468, 32.293346, 33.539192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.367260, 32.546227, 33.518154>,  <32.181736, 32.697952, 33.505531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.367260, 32.546227, 33.518154>,  <32.676468, 32.293346, 33.539192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.367260, 32.546227, 33.518154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272142, -0.255584, 0.927694,
		0.573044, 0.731439, 0.369619,
		-0.773020, 0.632198, -0.052594,
		32.135353, 32.735886, 33.502377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.721001, 32.639378, 34.218224>,  <32.676468, 32.293346, 33.539192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.721001, 32.639378, 34.218224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.356441, 32.724113, 34.077099>,  <32.137707, 32.774956, 33.992424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.356441, 32.724113, 34.077099>,  <32.721001, 32.639378, 34.218224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.356441, 32.724113, 34.077099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391395, -0.181388, 0.902169,
		0.127122, 0.960323, 0.248231,
		-0.911400, 0.211842, -0.352808,
		32.083023, 32.787666, 33.971256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.283184, 32.979843, 34.804779>,  <32.721001, 32.639378, 34.218224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.283184, 32.979843, 34.804779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.056583, 32.791576, 34.534210>,  <31.920622, 32.678616, 34.371868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.056583, 32.791576, 34.534210>,  <32.283184, 32.979843, 34.804779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.056583, 32.791576, 34.534210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526405, -0.424844, 0.736482,
		-0.634013, 0.773289, -0.007088,
		-0.566502, -0.470670, -0.676420,
		31.886633, 32.650375, 34.331284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.601879, 33.012039, 35.200459>,  <32.283184, 32.979843, 34.804779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.601879, 33.012039, 35.200459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.606064, 32.735966, 34.911034>,  <31.608574, 32.570320, 34.737381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.606064, 32.735966, 34.911034>,  <31.601879, 33.012039, 35.200459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.606064, 32.735966, 34.911034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458464, -0.646374, 0.609928,
		-0.888651, 0.325345, -0.323186,
		0.010462, -0.690182, -0.723560,
		31.609203, 32.528912, 34.693966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.936239, 33.619797, 35.279346>,  <31.601879, 33.012039, 35.200459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.936239, 33.619797, 35.279346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.040501, 33.914341, 35.529095>,  <32.103058, 34.091068, 35.678944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.040501, 33.914341, 35.529095>,  <31.936239, 33.619797, 35.279346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.040501, 33.914341, 35.529095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577709, 0.399195, -0.711967,
		-0.773507, 0.546280, -0.321349,
		0.260653, 0.736357, 0.624370,
		32.118698, 34.135246, 35.716404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.893600, 34.169407, 34.824669>,  <31.936239, 33.619797, 35.279346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.893600, 34.169407, 34.824669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.109665, 34.267040, 35.146824>,  <32.239304, 34.325619, 35.340118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.109665, 34.267040, 35.146824>,  <31.893600, 34.169407, 34.824669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.109665, 34.267040, 35.146824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592828, 0.568898, -0.570009,
		-0.597314, 0.785353, 0.162597,
		0.540159, 0.244082, 0.805390,
		32.271713, 34.340263, 35.388439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.051727, 34.848473, 34.742794>,  <31.893600, 34.169407, 34.824669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.051727, 34.848473, 34.742794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.347473, 34.713669, 34.975952>,  <32.524921, 34.632786, 35.115849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.347473, 34.713669, 34.975952>,  <32.051727, 34.848473, 34.742794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.347473, 34.713669, 34.975952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670671, 0.445127, -0.593349,
		-0.059500, 0.829632, 0.555131,
		0.739365, -0.337006, 0.582895,
		32.569283, 34.612568, 35.150822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.443054, 35.402199, 34.749027>,  <32.051727, 34.848473, 34.742794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.443054, 35.402199, 34.749027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.692360, 35.109024, 34.858093>,  <32.841942, 34.933121, 34.923534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.692360, 35.109024, 34.858093>,  <32.443054, 35.402199, 34.749027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.692360, 35.109024, 34.858093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756988, 0.477960, -0.445559,
		0.196244, 0.484104, 0.852720,
		0.623263, -0.732937, 0.272665,
		32.879337, 34.889141, 34.939892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.026344, 35.776451, 34.954918>,  <32.443054, 35.402199, 34.749027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.026344, 35.776451, 34.954918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128696, 35.396011, 34.885715>,  <33.190109, 35.167747, 34.844193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128696, 35.396011, 34.885715>,  <33.026344, 35.776451, 34.954918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.128696, 35.396011, 34.885715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793222, 0.308868, -0.524786,
		0.552561, -0.002952, 0.833467,
		0.255882, -0.951100, -0.173010,
		33.205460, 35.110680, 34.833813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.717972, 35.748379, 35.129711>,  <33.026344, 35.776451, 34.954918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.717972, 35.748379, 35.129711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.689354, 35.400875, 34.933697>,  <33.672184, 35.192371, 34.816090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.689354, 35.400875, 34.933697>,  <33.717972, 35.748379, 35.129711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.689354, 35.400875, 34.933697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677320, 0.318336, -0.663250,
		0.732202, -0.379362, 0.565654,
		-0.071544, -0.868761, -0.490036,
		33.667892, 35.140247, 34.786686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421982, 35.393501, 35.040932>,  <33.717972, 35.748379, 35.129711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421982, 35.393501, 35.040932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.210419, 35.230282, 34.743271>,  <34.083481, 35.132351, 34.564674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.210419, 35.230282, 34.743271>,  <34.421982, 35.393501, 35.040932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.210419, 35.230282, 34.743271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717663, 0.252998, -0.648808,
		0.453013, -0.877205, 0.159029,
		-0.528904, -0.408048, -0.744149,
		34.051746, 35.107868, 34.520027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.915649, 34.908371, 34.649815>,  <34.421982, 35.393501, 35.040932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.915649, 34.908371, 34.649815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.623878, 35.024780, 34.402187>,  <34.448818, 35.094627, 34.253613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.623878, 35.024780, 34.402187>,  <34.915649, 34.908371, 34.649815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623878, 35.024780, 34.402187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682706, 0.366671, -0.632033,
		0.043055, -0.883660, -0.466145,
		-0.729424, 0.291027, -0.619067,
		34.405052, 35.112087, 34.216469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185371, 34.842705, 34.027981>,  <34.915649, 34.908371, 34.649815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185371, 34.842705, 34.027981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.868263, 35.062870, 33.923237>,  <34.677998, 35.194969, 33.860390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.868263, 35.062870, 33.923237>,  <35.185371, 34.842705, 34.027981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.868263, 35.062870, 33.923237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562656, 0.495626, -0.661644,
		-0.234394, -0.671864, -0.702608,
		-0.792766, 0.550412, -0.261857,
		34.630432, 35.227993, 33.844681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.978317, 34.879997, 33.274990>,  <35.185371, 34.842705, 34.027981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.978317, 34.879997, 33.274990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.833511, 35.233891, 33.392418>,  <34.746628, 35.446228, 33.462875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.833511, 35.233891, 33.392418>,  <34.978317, 34.879997, 33.274990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833511, 35.233891, 33.392418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564342, 0.458677, -0.686391,
		-0.741931, -0.082810, -0.665343,
		-0.362017, 0.884736, 0.293573,
		34.724907, 35.499310, 33.480492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992664, 35.212818, 32.620770>,  <34.978317, 34.879997, 33.274990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992664, 35.212818, 32.620770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.948841, 35.495270, 32.900593>,  <34.922546, 35.664742, 33.068485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.948841, 35.495270, 32.900593>,  <34.992664, 35.212818, 32.620770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948841, 35.495270, 32.900593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389911, 0.677915, -0.623218,
		-0.914312, 0.204486, -0.349599,
		-0.109559, 0.706128, 0.699557,
		34.915974, 35.707108, 33.110458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.528057, 35.778030, 32.287224>,  <34.992664, 35.212818, 32.620770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.528057, 35.778030, 32.287224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.735447, 35.933712, 32.591778>,  <34.859879, 36.027119, 32.774509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.735447, 35.933712, 32.591778>,  <34.528057, 35.778030, 32.287224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.735447, 35.933712, 32.591778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209159, 0.805641, -0.554252,
		-0.829120, 0.446615, 0.336297,
		0.518471, 0.389202, 0.761387,
		34.890987, 36.050472, 32.820194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258442, 36.487316, 32.407658>,  <34.528057, 35.778030, 32.287224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.258442, 36.487316, 32.407658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632141, 36.421715, 32.534328>,  <34.856361, 36.382355, 32.610332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632141, 36.421715, 32.534328>,  <34.258442, 36.487316, 32.407658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632141, 36.421715, 32.534328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332932, 0.719356, -0.609659,
		-0.127822, 0.675005, 0.726657,
		0.934247, -0.164000, 0.316680,
		34.912415, 36.372517, 32.629333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578827, 37.159943, 32.290630>,  <34.258442, 36.487316, 32.407658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578827, 37.159943, 32.290630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.874615, 36.892406, 32.321178>,  <35.052090, 36.731884, 32.339508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.874615, 36.892406, 32.321178>,  <34.578827, 37.159943, 32.290630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.874615, 36.892406, 32.321178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575447, 0.569155, -0.587301,
		0.349344, 0.478241, 0.805757,
		0.739472, -0.668841, 0.076372,
		35.096455, 36.691753, 32.344090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169788, 37.570404, 32.371098>,  <34.578827, 37.159943, 32.290630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169788, 37.570404, 32.371098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308464, 37.213619, 32.255020>,  <35.391670, 36.999550, 32.185375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308464, 37.213619, 32.255020>,  <35.169788, 37.570404, 32.371098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308464, 37.213619, 32.255020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576679, 0.446694, -0.684037,
		0.739760, 0.069803, 0.669240,
		0.346693, -0.891960, -0.290192,
		35.412472, 36.946030, 32.167961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978546, 37.643391, 32.394024>,  <35.169788, 37.570404, 32.371098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978546, 37.643391, 32.394024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.904964, 37.314434, 32.178677>,  <35.860817, 37.117062, 32.049469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.904964, 37.314434, 32.178677>,  <35.978546, 37.643391, 32.394024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.904964, 37.314434, 32.178677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517797, 0.384481, -0.764239,
		0.835493, -0.419348, 0.355103,
		-0.183952, -0.822387, -0.538368,
		35.849777, 37.067719, 32.017166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648151, 37.531048, 32.024849>,  <35.978546, 37.643391, 32.394024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648151, 37.531048, 32.024849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.338669, 37.358925, 31.838852>,  <36.152981, 37.255653, 31.727253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.338669, 37.358925, 31.838852>,  <36.648151, 37.531048, 32.024849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.338669, 37.358925, 31.838852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361298, 0.303224, -0.881771,
		0.520428, -0.850231, -0.079137,
		-0.773705, -0.430306, -0.464993,
		36.106556, 37.229832, 31.699354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922325, 37.313713, 31.427536>,  <36.648151, 37.531048, 32.024849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.922325, 37.313713, 31.427536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.535625, 37.334408, 31.327366>,  <36.303604, 37.346825, 31.267263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.535625, 37.334408, 31.327366>,  <36.922325, 37.313713, 31.427536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535625, 37.334408, 31.327366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255388, 0.244807, -0.935332,
		0.012914, -0.968190, -0.249881,
		-0.966752, 0.051738, -0.250425,
		36.245598, 37.349930, 31.252237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988144, 37.134777, 30.768848>,  <36.922325, 37.313713, 31.427536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.988144, 37.134777, 30.768848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.623650, 37.297405, 30.795238>,  <36.404953, 37.394981, 30.811073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.623650, 37.297405, 30.795238>,  <36.988144, 37.134777, 30.768848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623650, 37.297405, 30.795238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121907, 0.419223, -0.899661,
		-0.393431, -0.811761, -0.431575,
		-0.911236, 0.406567, 0.065976,
		36.350281, 37.419376, 30.815031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615089, 36.814278, 30.254528>,  <36.988144, 37.134777, 30.768848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615089, 36.814278, 30.254528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.433365, 37.162464, 30.330299>,  <36.324329, 37.371376, 30.375763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.433365, 37.162464, 30.330299>,  <36.615089, 36.814278, 30.254528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433365, 37.162464, 30.330299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151843, 0.285193, -0.946366,
		-0.877807, -0.401181, -0.261741,
		-0.454311, 0.870471, 0.189428,
		36.297073, 37.423607, 30.387127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237076, 36.940533, 29.663757>,  <36.615089, 36.814278, 30.254528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.237076, 36.940533, 29.663757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.228962, 37.301716, 29.835461>,  <36.224094, 37.518425, 29.938482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.228962, 37.301716, 29.835461>,  <36.237076, 36.940533, 29.663757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228962, 37.301716, 29.835461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246980, 0.420565, -0.872998,
		-0.968808, 0.088311, -0.231542,
		-0.020283, 0.902954, 0.429258,
		36.222878, 37.572601, 29.964237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663422, 37.483086, 29.370844>,  <36.237076, 36.940533, 29.663757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663422, 37.483086, 29.370844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.014767, 37.617695, 29.506630>,  <36.225574, 37.698460, 29.588100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.014767, 37.617695, 29.506630>,  <35.663422, 37.483086, 29.370844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.014767, 37.617695, 29.506630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283451, 0.205137, -0.936789,
		-0.384891, 0.919058, 0.084795,
		0.878359, 0.336527, 0.339463,
		36.278275, 37.718655, 29.608469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825401, 38.188629, 29.088078>,  <35.663422, 37.483086, 29.370844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.825401, 38.188629, 29.088078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.184265, 38.080143, 29.227533>,  <36.399582, 38.015053, 29.311207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.184265, 38.080143, 29.227533>,  <35.825401, 38.188629, 29.088078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.184265, 38.080143, 29.227533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434382, 0.398577, -0.807743,
		0.080113, 0.876116, 0.475398,
		0.897159, -0.271215, 0.348638,
		36.453411, 37.998779, 29.332125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248245, 38.793098, 29.105553>,  <35.825401, 38.188629, 29.088078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.248245, 38.793098, 29.105553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.501526, 38.484051, 29.087175>,  <36.653496, 38.298622, 29.076149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.501526, 38.484051, 29.087175>,  <36.248245, 38.793098, 29.105553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501526, 38.484051, 29.087175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431092, 0.401361, -0.808127,
		0.642814, 0.491905, 0.587214,
		0.633206, -0.772618, -0.045944,
		36.691486, 38.252266, 29.073393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.933319, 39.077503, 28.941488>,  <36.248245, 38.793098, 29.105553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.933319, 39.077503, 28.941488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.959522, 38.692181, 28.837372>,  <36.975243, 38.460987, 28.774902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.959522, 38.692181, 28.837372>,  <36.933319, 39.077503, 28.941488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959522, 38.692181, 28.837372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429211, 0.262688, -0.864160,
		0.900826, -0.055112, 0.430669,
		0.065506, -0.963306, -0.260290,
		36.979176, 38.403191, 28.759285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643410, 38.912415, 28.759455>,  <36.933319, 39.077503, 28.941488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.643410, 38.912415, 28.759455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.420334, 38.635399, 28.576427>,  <37.286488, 38.469189, 28.466610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.420334, 38.635399, 28.576427>,  <37.643410, 38.912415, 28.759455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.420334, 38.635399, 28.576427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569116, 0.082252, -0.818133,
		0.604228, -0.716673, 0.348266,
		-0.557688, -0.692542, -0.457569,
		37.253029, 38.427635, 28.439157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048603, 38.534626, 28.377083>,  <37.643410, 38.912415, 28.759455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.048603, 38.534626, 28.377083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.706371, 38.464100, 28.182392>,  <37.501034, 38.421783, 28.065578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.706371, 38.464100, 28.182392>,  <38.048603, 38.534626, 28.377083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.706371, 38.464100, 28.182392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501330, -0.047803, -0.863935,
		0.129058, -0.983172, 0.129291,
		-0.855577, -0.176315, -0.486724,
		37.449699, 38.411205, 28.036375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297009, 38.031925, 27.865665>,  <38.048603, 38.534626, 28.377083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.297009, 38.031925, 27.865665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.940632, 38.149017, 27.726791>,  <37.726807, 38.219273, 27.643467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.940632, 38.149017, 27.726791>,  <38.297009, 38.031925, 27.865665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940632, 38.149017, 27.726791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397076, 0.131187, -0.908362,
		-0.220358, -0.947153, -0.233115,
		-0.890939, 0.292729, -0.347184,
		37.673351, 38.236835, 27.622637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171314, 37.653408, 27.255533>,  <38.297009, 38.031925, 27.865665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171314, 37.653408, 27.255533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.948074, 37.981277, 27.203922>,  <37.814129, 38.178001, 27.172956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.948074, 37.981277, 27.203922>,  <38.171314, 37.653408, 27.255533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.948074, 37.981277, 27.203922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339988, 0.084048, -0.936667,
		-0.756920, -0.566625, -0.325588,
		-0.558104, 0.819678, -0.129028,
		37.780643, 38.227180, 27.165215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854694, 37.516754, 26.619671>,  <38.171314, 37.653408, 27.255533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.854694, 37.516754, 26.619671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.806377, 37.905624, 26.699949>,  <37.777386, 38.138947, 26.748116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.806377, 37.905624, 26.699949>,  <37.854694, 37.516754, 26.619671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.806377, 37.905624, 26.699949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451529, 0.233859, -0.861064,
		-0.884042, -0.013392, -0.467215,
		-0.120794, 0.972178, 0.200695,
		37.770138, 38.197277, 26.760159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562202, 37.841606, 26.036375>,  <37.854694, 37.516754, 26.619671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.562202, 37.841606, 26.036375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.726170, 38.154972, 26.223234>,  <37.824551, 38.342991, 26.335350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.726170, 38.154972, 26.223234>,  <37.562202, 37.841606, 26.036375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726170, 38.154972, 26.223234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402493, 0.304235, -0.863389,
		-0.818515, 0.541943, -0.190608,
		0.409918, 0.783415, 0.467149,
		37.849144, 38.389996, 26.363379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.321857, 38.431286, 25.665798>,  <37.562202, 37.841606, 26.036375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.321857, 38.431286, 25.665798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.669807, 38.516605, 25.843708>,  <37.878578, 38.567799, 25.950453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.669807, 38.516605, 25.843708>,  <37.321857, 38.431286, 25.665798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.669807, 38.516605, 25.843708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399437, 0.224469, -0.888855,
		-0.289430, 0.950851, 0.110060,
		0.869873, 0.213300, 0.444773,
		37.930771, 38.580597, 25.977140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589809, 38.917351, 25.307570>,  <37.321857, 38.431286, 25.665798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589809, 38.917351, 25.307570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.907284, 38.782948, 25.510412>,  <38.097767, 38.702305, 25.632118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.907284, 38.782948, 25.510412>,  <37.589809, 38.917351, 25.307570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.907284, 38.782948, 25.510412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566169, 0.103090, -0.817817,
		0.222518, 0.936199, 0.272061,
		0.793686, -0.336012, 0.507108,
		38.145390, 38.682144, 25.662544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108059, 39.448395, 25.138002>,  <37.589809, 38.917351, 25.307570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108059, 39.448395, 25.138002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.323666, 39.135624, 25.263256>,  <38.453030, 38.947964, 25.338409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.323666, 39.135624, 25.263256>,  <38.108059, 39.448395, 25.138002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323666, 39.135624, 25.263256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710325, 0.222194, -0.667883,
		0.452658, 0.582428, 0.675188,
		0.539017, -0.781925, 0.313135,
		38.485371, 38.901047, 25.357197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.744785, 39.705582, 25.436666>,  <38.108059, 39.448395, 25.138002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.744785, 39.705582, 25.436666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.818737, 39.333015, 25.311270>,  <38.863110, 39.109474, 25.236031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.818737, 39.333015, 25.311270>,  <38.744785, 39.705582, 25.436666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.818737, 39.333015, 25.311270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665224, 0.353412, -0.657706,
		0.723392, -0.086947, 0.684941,
		0.184881, -0.931419, -0.313494,
		38.874203, 39.053589, 25.217222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.440327, 39.792786, 25.235540>,  <38.744785, 39.705582, 25.436666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.440327, 39.792786, 25.235540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.313587, 39.443974, 25.086321>,  <39.237545, 39.234684, 24.996788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.313587, 39.443974, 25.086321>,  <39.440327, 39.792786, 25.235540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.313587, 39.443974, 25.086321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495864, 0.182988, -0.848902,
		0.808535, -0.453952, 0.374431,
		-0.316844, -0.872034, -0.373050,
		39.218533, 39.182362, 24.974405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074356, 39.380787, 24.932850>,  <39.440327, 39.792786, 25.235540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074356, 39.380787, 24.932850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.751095, 39.221066, 24.759672>,  <39.557137, 39.125233, 24.655766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.751095, 39.221066, 24.759672>,  <40.074356, 39.380787, 24.932850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.751095, 39.221066, 24.759672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410573, 0.145085, -0.900211,
		0.422269, -0.905267, 0.046692,
		-0.808157, -0.399302, -0.432943,
		39.508648, 39.101276, 24.629789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.324955, 38.969543, 24.373371>,  <40.074356, 39.380787, 24.932850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.324955, 38.969543, 24.373371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.938271, 39.043522, 24.302637>,  <39.706261, 39.087910, 24.260197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.938271, 39.043522, 24.302637>,  <40.324955, 38.969543, 24.373371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.938271, 39.043522, 24.302637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208043, 0.165747, -0.963974,
		-0.148970, -0.968672, -0.198705,
		-0.966709, 0.184942, -0.176834,
		39.648258, 39.099003, 24.249586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.166027, 38.297249, 24.774029>,  <40.324955, 38.969543, 24.373371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.166027, 38.297249, 24.774029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.401989, 37.975693, 24.743639>,  <40.543568, 37.782761, 24.725405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.401989, 37.975693, 24.743639>,  <40.166027, 38.297249, 24.774029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.401989, 37.975693, 24.743639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042371, -0.063141, 0.997105,
		-0.806361, -0.591415, -0.003185,
		0.589904, -0.803891, -0.075974,
		40.578960, 37.734524, 24.720846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.906666, 37.709602, 25.134756>,  <40.166027, 38.297249, 24.774029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.906666, 37.709602, 25.134756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.304710, 37.684517, 25.104239>,  <40.543537, 37.669468, 25.085928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.304710, 37.684517, 25.104239>,  <39.906666, 37.709602, 25.134756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.304710, 37.684517, 25.104239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080188, 0.062129, 0.994842,
		-0.057648, -0.996096, 0.066854,
		0.995111, -0.062712, -0.076294,
		40.603245, 37.665703, 25.081350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.172791, 37.098701, 25.435911>,  <39.906666, 37.709602, 25.134756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.172791, 37.098701, 25.435911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.461700, 37.374249, 25.460516>,  <40.635044, 37.539577, 25.475279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.461700, 37.374249, 25.460516>,  <40.172791, 37.098701, 25.435911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.461700, 37.374249, 25.460516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084581, -0.176254, 0.980704,
		0.686417, -0.703133, -0.185569,
		0.722273, 0.688868, 0.061512,
		40.678383, 37.580910, 25.478970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.745029, 36.799133, 25.837309>,  <40.172791, 37.098701, 25.435911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.745029, 36.799133, 25.837309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.788548, 37.195446, 25.869581>,  <40.814659, 37.433235, 25.888945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.788548, 37.195446, 25.869581>,  <40.745029, 36.799133, 25.837309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.788548, 37.195446, 25.869581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138691, -0.065238, 0.988185,
		0.984341, -0.118703, 0.130315,
		0.108799, 0.990784, 0.080680,
		40.821186, 37.492680, 25.893785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.333302, 36.957546, 26.329111>,  <40.745029, 36.799133, 25.837309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.333302, 36.957546, 26.329111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.105938, 37.286636, 26.326756>,  <40.969521, 37.484089, 26.325342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.105938, 37.286636, 26.326756>,  <41.333302, 36.957546, 26.329111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.105938, 37.286636, 26.326756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064037, 0.051377, 0.996624,
		0.820249, 0.566115, -0.081888,
		-0.568411, 0.822724, -0.005890,
		40.935413, 37.533455, 26.324989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.456829, 37.113567, 26.956478>,  <41.333302, 36.957546, 26.329111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.456829, 37.113567, 26.956478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.165955, 37.374878, 26.872164>,  <40.991428, 37.531662, 26.821575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.165955, 37.374878, 26.872164>,  <41.456829, 37.113567, 26.956478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.165955, 37.374878, 26.872164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241148, 0.044379, 0.969473,
		0.642685, 0.755821, 0.125264,
		-0.727189, 0.653273, -0.210786,
		40.947800, 37.570858, 26.808928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.612175, 37.625275, 27.420868>,  <41.456829, 37.113567, 26.956478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.612175, 37.625275, 27.420868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.228695, 37.677227, 27.319654>,  <40.998608, 37.708397, 27.258926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.228695, 37.677227, 27.319654>,  <41.612175, 37.625275, 27.420868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.228695, 37.677227, 27.319654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198374, 0.332179, 0.922120,
		0.203818, 0.934231, -0.292695,
		-0.958700, 0.129881, -0.253031,
		40.941086, 37.716190, 27.243746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.429115, 38.333870, 27.740665>,  <41.612175, 37.625275, 27.420868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.429115, 38.333870, 27.740665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.109818, 38.100315, 27.681490>,  <40.918240, 37.960182, 27.645985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.109818, 38.100315, 27.681490>,  <41.429115, 38.333870, 27.740665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.109818, 38.100315, 27.681490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284403, 0.148855, 0.947078,
		-0.530963, 0.798074, -0.284881,
		-0.798244, -0.583884, -0.147938,
		40.870346, 37.925148, 27.637108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.015690, 38.526878, 28.407211>,  <41.429115, 38.333870, 27.740665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.015690, 38.526878, 28.407211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.792866, 38.223705, 28.271427>,  <40.659172, 38.041801, 28.189957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.792866, 38.223705, 28.271427>,  <41.015690, 38.526878, 28.407211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.792866, 38.223705, 28.271427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439585, -0.077697, 0.894834,
		-0.704595, 0.647695, -0.289892,
		-0.557056, -0.757928, -0.339462,
		40.625748, 37.996326, 28.169588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.218872, 38.643761, 28.638945>,  <41.015690, 38.526878, 28.407211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.218872, 38.643761, 28.638945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.284576, 38.251865, 28.593119>,  <40.324001, 38.016727, 28.565622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.284576, 38.251865, 28.593119>,  <40.218872, 38.643761, 28.638945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.284576, 38.251865, 28.593119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514094, -0.184153, 0.837732,
		-0.841858, -0.078712, -0.533928,
		0.164264, -0.979741, -0.114565,
		40.333855, 37.957943, 28.558748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.557224, 38.294998, 28.711756>,  <40.218872, 38.643761, 28.638945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.557224, 38.294998, 28.711756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.834705, 38.017464, 28.789082>,  <40.001194, 37.850945, 28.835478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.834705, 38.017464, 28.789082>,  <39.557224, 38.294998, 28.711756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.834705, 38.017464, 28.789082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534572, -0.316098, 0.783782,
		-0.482707, -0.647053, -0.590183,
		0.693704, -0.693833, 0.193314,
		40.042816, 37.809315, 28.847076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.191246, 37.732552, 28.877649>,  <39.557224, 38.294998, 28.711756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.191246, 37.732552, 28.877649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.545677, 37.605846, 29.013020>,  <39.758335, 37.529823, 29.094242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.545677, 37.605846, 29.013020>,  <39.191246, 37.732552, 28.877649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.545677, 37.605846, 29.013020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463429, -0.589320, 0.661767,
		-0.010180, -0.743212, -0.668978,
		0.886075, -0.316761, 0.338427,
		39.811501, 37.510818, 29.114548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043304, 37.081284, 29.041088>,  <39.191246, 37.732552, 28.877649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.043304, 37.081284, 29.041088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.370850, 37.185810, 29.245510>,  <39.567375, 37.248528, 29.368162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.370850, 37.185810, 29.245510>,  <39.043304, 37.081284, 29.041088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.370850, 37.185810, 29.245510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320951, -0.529701, 0.785116,
		0.475870, -0.806926, -0.349883,
		0.818864, 0.261318, 0.511053,
		39.616508, 37.264206, 29.398827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279968, 36.456486, 29.259247>,  <39.043304, 37.081284, 29.041088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.279968, 36.456486, 29.259247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.442017, 36.722740, 29.509943>,  <39.539246, 36.882492, 29.660360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.442017, 36.722740, 29.509943>,  <39.279968, 36.456486, 29.259247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.442017, 36.722740, 29.509943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503712, -0.409588, 0.760599,
		0.762990, -0.623830, 0.169359,
		0.405117, 0.665638, 0.626742,
		39.563553, 36.922432, 29.697966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.599064, 36.103870, 29.891432>,  <39.279968, 36.456486, 29.259247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.599064, 36.103870, 29.891432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.545113, 36.490932, 29.976706>,  <39.512741, 36.723171, 30.027870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.545113, 36.490932, 29.976706>,  <39.599064, 36.103870, 29.891432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.545113, 36.490932, 29.976706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414344, -0.250518, 0.874963,
		0.900071, 0.029681, 0.434732,
		-0.134879, 0.967657, 0.213186,
		39.504650, 36.781231, 30.040661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.806210, 36.166958, 30.645241>,  <39.599064, 36.103870, 29.891432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.806210, 36.166958, 30.645241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.574986, 36.482826, 30.563007>,  <39.436253, 36.672348, 30.513668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.574986, 36.482826, 30.563007>,  <39.806210, 36.166958, 30.645241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.574986, 36.482826, 30.563007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492246, -0.136526, 0.859683,
		0.650802, 0.598143, 0.467634,
		-0.578058, 0.789674, -0.205582,
		39.401569, 36.719730, 30.501333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874382, 36.541740, 31.289402>,  <39.806210, 36.166958, 30.645241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.874382, 36.541740, 31.289402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.552448, 36.688213, 31.102573>,  <39.359287, 36.776096, 30.990477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.552448, 36.688213, 31.102573>,  <39.874382, 36.541740, 31.289402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.552448, 36.688213, 31.102573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544774, -0.143500, 0.826214,
		0.235521, 0.919411, 0.314981,
		-0.804830, 0.366184, -0.467074,
		39.311001, 36.798069, 30.962452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607311, 37.040279, 31.679031>,  <39.874382, 36.541740, 31.289402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.607311, 37.040279, 31.679031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.294449, 36.962704, 31.442179>,  <39.106731, 36.916157, 31.300068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.294449, 36.962704, 31.442179>,  <39.607311, 37.040279, 31.679031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.294449, 36.962704, 31.442179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590488, -0.072623, 0.803772,
		-0.198889, 0.978321, -0.057719,
		-0.782155, -0.193944, -0.592131,
		39.059803, 36.904522, 31.264540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054020, 37.305923, 32.065289>,  <39.607311, 37.040279, 31.679031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.054020, 37.305923, 32.065289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.876411, 37.063610, 31.801208>,  <38.769844, 36.918221, 31.642759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.876411, 37.063610, 31.801208>,  <39.054020, 37.305923, 32.065289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.876411, 37.063610, 31.801208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688682, -0.240627, 0.683971,
		-0.573201, 0.758370, -0.310347,
		-0.444025, -0.605783, -0.660204,
		38.743202, 36.881874, 31.603148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.308056, 37.547306, 31.913458>,  <39.054020, 37.305923, 32.065289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.308056, 37.547306, 31.913458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.328030, 37.154766, 31.839212>,  <38.340015, 36.919243, 31.794666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.328030, 37.154766, 31.839212>,  <38.308056, 37.547306, 31.913458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328030, 37.154766, 31.839212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544413, -0.182555, 0.818711,
		-0.837329, 0.060164, -0.543378,
		0.049939, -0.981353, -0.185613,
		38.343010, 36.860359, 31.783529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625309, 37.359028, 31.985964>,  <38.308056, 37.547306, 31.913458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.625309, 37.359028, 31.985964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.817165, 37.008327, 32.000088>,  <37.932281, 36.797905, 32.008560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.817165, 37.008327, 32.000088>,  <37.625309, 37.359028, 31.985964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817165, 37.008327, 32.000088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647873, -0.326719, 0.688124,
		-0.591779, -0.352929, -0.724733,
		0.479644, -0.876753, 0.035307,
		37.961060, 36.745300, 32.010681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111710, 36.730080, 31.895250>,  <37.625309, 37.359028, 31.985964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.111710, 36.730080, 31.895250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.440250, 36.609264, 32.088810>,  <37.637375, 36.536777, 32.204945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.440250, 36.609264, 32.088810>,  <37.111710, 36.730080, 31.895250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.440250, 36.609264, 32.088810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568440, -0.504093, 0.650205,
		0.047546, -0.809114, -0.585725,
		0.821350, -0.302034, 0.483901,
		37.686657, 36.518654, 32.233978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787781, 36.126728, 32.284580>,  <37.111710, 36.730080, 31.895250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787781, 36.126728, 32.284580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.154293, 36.179157, 32.435974>,  <37.374199, 36.210617, 32.526810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.154293, 36.179157, 32.435974>,  <36.787781, 36.126728, 32.284580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.154293, 36.179157, 32.435974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278675, -0.470105, 0.837462,
		0.287698, -0.872823, -0.394220,
		0.916281, 0.131077, 0.378482,
		37.429176, 36.218479, 32.549519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.875629, 35.552422, 32.604279>,  <36.787781, 36.126728, 32.284580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.875629, 35.552422, 32.604279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.145363, 35.765141, 32.809204>,  <37.307201, 35.892773, 32.932159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.145363, 35.765141, 32.809204>,  <36.875629, 35.552422, 32.604279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145363, 35.765141, 32.809204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222345, -0.515363, 0.827626,
		0.704157, -0.672006, -0.229283,
		0.674333, 0.531799, 0.512314,
		37.347664, 35.924679, 32.962898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392841, 35.160923, 32.916733>,  <36.875629, 35.552422, 32.604279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.392841, 35.160923, 32.916733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.366577, 35.497150, 33.131817>,  <37.350819, 35.698887, 33.260868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.366577, 35.497150, 33.131817>,  <37.392841, 35.160923, 32.916733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.366577, 35.497150, 33.131817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281172, -0.532624, 0.798282,
		0.957409, -0.098775, 0.271315,
		-0.065659, 0.840568, 0.537711,
		37.346878, 35.749321, 33.293129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.862438, 35.066475, 33.573235>,  <37.392841, 35.160923, 32.916733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.862438, 35.066475, 33.573235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.588432, 35.351955, 33.631737>,  <37.424030, 35.523243, 33.666840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.588432, 35.351955, 33.631737>,  <37.862438, 35.066475, 33.573235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.588432, 35.351955, 33.631737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148900, -0.333674, 0.930855,
		0.713152, 0.615870, 0.334841,
		-0.685014, 0.713698, 0.146257,
		37.382927, 35.566067, 33.675613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.972679, 35.333862, 34.204750>,  <37.862438, 35.066475, 33.573235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.972679, 35.333862, 34.204750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.607021, 35.480392, 34.135303>,  <37.387627, 35.568310, 34.093636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.607021, 35.480392, 34.135303>,  <37.972679, 35.333862, 34.204750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607021, 35.480392, 34.135303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259774, -0.200573, 0.944610,
		0.311211, 0.908613, 0.278514,
		-0.914147, 0.366324, -0.173614,
		37.332779, 35.590290, 34.083218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743767, 35.927177, 34.723259>,  <37.972679, 35.333862, 34.204750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743767, 35.927177, 34.723259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.427933, 35.722416, 34.587898>,  <37.238434, 35.599560, 34.506680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.427933, 35.722416, 34.587898>,  <37.743767, 35.927177, 34.723259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.427933, 35.722416, 34.587898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144758, -0.380524, 0.913371,
		-0.596326, 0.770169, 0.226353,
		-0.789583, -0.511900, -0.338404,
		37.191059, 35.568848, 34.486378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314972, 35.869072, 35.298264>,  <37.743767, 35.927177, 34.723259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314972, 35.869072, 35.298264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.149731, 35.604687, 35.047672>,  <37.050587, 35.446056, 34.897316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.149731, 35.604687, 35.047672>,  <37.314972, 35.869072, 35.298264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.149731, 35.604687, 35.047672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260423, -0.573456, 0.776742,
		-0.872654, 0.484026, 0.064768,
		-0.413105, -0.660960, -0.626480,
		37.025799, 35.406399, 34.859730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.590591, 35.728584, 35.511700>,  <37.314972, 35.869072, 35.298264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.590591, 35.728584, 35.511700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714596, 35.418041, 35.292187>,  <36.788998, 35.231716, 35.160480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714596, 35.418041, 35.292187>,  <36.590591, 35.728584, 35.511700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714596, 35.418041, 35.292187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303609, -0.627837, 0.716689,
		-0.900954, -0.055563, -0.430343,
		0.310007, -0.776359, -0.548782,
		36.807598, 35.185135, 35.127552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047195, 35.153576, 35.542580>,  <36.590591, 35.728584, 35.511700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047195, 35.153576, 35.542580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388119, 34.972534, 35.437725>,  <36.592674, 34.863911, 35.374813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388119, 34.972534, 35.437725>,  <36.047195, 35.153576, 35.542580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388119, 34.972534, 35.437725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059528, -0.581864, 0.811105,
		-0.519633, -0.675711, -0.522873,
		0.852313, -0.452602, -0.262131,
		36.643814, 34.836754, 35.359085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977299, 34.475414, 35.795040>,  <36.047195, 35.153576, 35.542580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977299, 34.475414, 35.795040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.372269, 34.521221, 35.751438>,  <36.609249, 34.548706, 35.725277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.372269, 34.521221, 35.751438>,  <35.977299, 34.475414, 35.795040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.372269, 34.521221, 35.751438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152684, -0.511798, 0.845429,
		0.041030, -0.851439, -0.522846,
		0.987423, 0.114518, -0.109002,
		36.668495, 34.555576, 35.718739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215199, 33.934788, 35.991844>,  <35.977299, 34.475414, 35.795040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215199, 33.934788, 35.991844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.548679, 34.153107, 36.025436>,  <36.748768, 34.284096, 36.045593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.548679, 34.153107, 36.025436>,  <36.215199, 33.934788, 35.991844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.548679, 34.153107, 36.025436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284541, -0.554916, 0.781732,
		0.473267, -0.627834, -0.617934,
		0.833700, 0.545796, 0.083979,
		36.798790, 34.316845, 36.050629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744858, 33.423183, 36.035423>,  <36.215199, 33.934788, 35.991844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.744858, 33.423183, 36.035423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.918114, 33.757481, 36.170429>,  <37.022068, 33.958061, 36.251434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.918114, 33.757481, 36.170429>,  <36.744858, 33.423183, 36.035423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918114, 33.757481, 36.170429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385320, -0.510221, 0.768897,
		0.814810, -0.202991, -0.543029,
		0.433144, 0.835745, 0.337516,
		37.048058, 34.008205, 36.271683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409943, 33.229401, 36.106571>,  <36.744858, 33.423183, 36.035423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409943, 33.229401, 36.106571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.354034, 33.526783, 36.368179>,  <37.320488, 33.705212, 36.525143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.354034, 33.526783, 36.368179>,  <37.409943, 33.229401, 36.106571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.354034, 33.526783, 36.368179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583753, -0.471646, 0.660895,
		0.799810, 0.474160, -0.368070,
		-0.139772, 0.743453, 0.654020,
		37.312103, 33.749821, 36.564384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.087463, 33.273823, 36.426117>,  <37.409943, 33.229401, 36.106571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.087463, 33.273823, 36.426117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.816788, 33.440235, 36.669102>,  <37.654381, 33.540085, 36.814892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.816788, 33.440235, 36.669102>,  <38.087463, 33.273823, 36.426117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816788, 33.440235, 36.669102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431386, -0.444569, 0.785025,
		0.596656, 0.793267, 0.121363,
		-0.676689, 0.416036, 0.607459,
		37.613781, 33.565044, 36.851341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.427444, 33.299778, 36.992954>,  <38.087463, 33.273823, 36.426117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.427444, 33.299778, 36.992954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.052063, 33.334175, 37.126770>,  <37.826836, 33.354813, 37.207062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.052063, 33.334175, 37.126770>,  <38.427444, 33.299778, 36.992954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.052063, 33.334175, 37.126770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297252, -0.292254, 0.908971,
		0.175940, 0.952466, 0.248703,
		-0.938449, 0.085997, 0.334542,
		37.770527, 33.359974, 37.227131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.519386, 33.720970, 37.499195>,  <38.427444, 33.299778, 36.992954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.519386, 33.720970, 37.499195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.193989, 33.505272, 37.586319>,  <37.998749, 33.375854, 37.638592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.193989, 33.505272, 37.586319>,  <38.519386, 33.720970, 37.499195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193989, 33.505272, 37.586319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340746, -0.138448, 0.929906,
		-0.471292, 0.830691, 0.296373,
		-0.813496, -0.539245, 0.217805,
		37.949940, 33.343498, 37.651661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.322533, 33.931812, 38.184216>,  <38.519386, 33.720970, 37.499195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.322533, 33.931812, 38.184216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.111588, 33.597675, 38.122143>,  <37.985020, 33.397194, 38.084900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.111588, 33.597675, 38.122143>,  <38.322533, 33.931812, 38.184216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111588, 33.597675, 38.122143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373403, -0.391928, 0.840811,
		-0.763187, 0.385471, 0.518611,
		-0.527366, -0.835347, -0.155178,
		37.953377, 33.347073, 38.075588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879631, 33.726562, 38.770115>,  <38.322533, 33.931812, 38.184216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879631, 33.726562, 38.770115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962376, 33.386799, 38.575912>,  <38.012024, 33.182941, 38.459393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962376, 33.386799, 38.575912>,  <37.879631, 33.726562, 38.770115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962376, 33.386799, 38.575912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378484, -0.388125, 0.840303,
		-0.902196, -0.357585, 0.241197,
		0.206866, -0.849407, -0.485505,
		38.024437, 33.131977, 38.430260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094593, 33.335224, 39.267147>,  <37.879631, 33.726562, 38.770115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094593, 33.335224, 39.267147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.156666, 33.066139, 38.977768>,  <38.193909, 32.904686, 38.804142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.156666, 33.066139, 38.977768>,  <38.094593, 33.335224, 39.267147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156666, 33.066139, 38.977768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420688, -0.617596, 0.664527,
		-0.893835, -0.407466, 0.187164,
		0.155181, -0.672715, -0.723445,
		38.203220, 32.864326, 38.760735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866081, 32.753433, 39.456966>,  <38.094593, 33.335224, 39.267147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866081, 32.753433, 39.456966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.126228, 32.636940, 39.176338>,  <38.282314, 32.567043, 39.007961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.126228, 32.636940, 39.176338>,  <37.866081, 32.753433, 39.456966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126228, 32.636940, 39.176338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460999, -0.582733, 0.669255,
		-0.603744, -0.758684, -0.244727,
		0.650364, -0.291240, -0.701574,
		38.321339, 32.549568, 38.965866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794216, 31.966320, 39.332397>,  <37.866081, 32.753433, 39.456966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.794216, 31.966320, 39.332397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.176674, 32.080208, 39.304901>,  <38.406147, 32.148540, 39.288403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.176674, 32.080208, 39.304901>,  <37.794216, 31.966320, 39.332397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.176674, 32.080208, 39.304901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274389, -0.788590, 0.550306,
		0.102478, -0.545032, -0.832128,
		0.956143, 0.284721, -0.068738,
		38.463516, 32.165623, 39.284279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189213, 31.362293, 39.133900>,  <37.794216, 31.966320, 39.332397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189213, 31.362293, 39.133900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.388103, 31.627661, 39.357555>,  <38.507439, 31.786880, 39.491749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.388103, 31.627661, 39.357555>,  <38.189213, 31.362293, 39.133900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.388103, 31.627661, 39.357555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195483, -0.713547, 0.672783,
		0.845311, -0.225223, -0.484482,
		0.497227, 0.663419, 0.559143,
		38.537273, 31.826687, 39.525299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.802174, 31.046682, 39.177635>,  <38.189213, 31.362293, 39.133900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.802174, 31.046682, 39.177635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.716862, 31.273750, 39.495697>,  <38.665676, 31.409990, 39.686535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.716862, 31.273750, 39.495697>,  <38.802174, 31.046682, 39.177635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.716862, 31.273750, 39.495697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212696, -0.767376, 0.604892,
		0.953558, 0.298135, 0.042922,
		-0.213277, 0.567670, 0.795150,
		38.652878, 31.444052, 39.734241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364559, 30.954882, 39.595009>,  <38.802174, 31.046682, 39.177635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.364559, 30.954882, 39.595009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.066078, 31.076426, 39.831940>,  <38.886990, 31.149351, 39.974098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.066078, 31.076426, 39.831940>,  <39.364559, 30.954882, 39.595009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.066078, 31.076426, 39.831940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371109, -0.548821, 0.749049,
		0.552689, 0.778759, 0.296765,
		-0.746199, 0.303859, 0.592332,
		38.842220, 31.167583, 40.009640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.588707, 31.080587, 40.319931>,  <39.364559, 30.954882, 39.595009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.588707, 31.080587, 40.319931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.200752, 30.984604, 40.336647>,  <38.967979, 30.927013, 40.346676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.200752, 30.984604, 40.336647>,  <39.588707, 31.080587, 40.319931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.200752, 30.984604, 40.336647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203301, -0.703020, 0.681492,
		-0.134148, 0.669465, 0.730631,
		-0.969883, -0.239959, 0.041794,
		38.909786, 30.912617, 40.349186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.154167, 31.299667, 40.902164>,  <39.588707, 31.080587, 40.319931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.154167, 31.299667, 40.902164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.091579, 30.940117, 40.738438>,  <39.054028, 30.724386, 40.640202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.091579, 30.940117, 40.738438>,  <39.154167, 31.299667, 40.902164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.091579, 30.940117, 40.738438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342175, -0.438087, 0.831262,
		-0.926517, -0.009988, 0.376121,
		-0.156471, -0.898877, -0.409313,
		39.044640, 30.670454, 40.615643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716030, 30.983437, 41.167820>,  <39.154167, 31.299667, 40.902164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.716030, 30.983437, 41.167820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.953838, 30.681517, 41.056950>,  <39.096523, 30.500366, 40.990429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.953838, 30.681517, 41.056950>,  <38.716030, 30.983437, 41.167820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.953838, 30.681517, 41.056950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209919, -0.478451, 0.852654,
		-0.776195, -0.448737, -0.442896,
		0.594521, -0.754798, -0.277173,
		39.132195, 30.455078, 40.973797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375179, 30.446913, 41.446301>,  <38.716030, 30.983437, 41.167820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.375179, 30.446913, 41.446301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.752632, 30.330996, 41.382336>,  <38.979103, 30.261446, 41.343956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.752632, 30.330996, 41.382336>,  <38.375179, 30.446913, 41.446301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752632, 30.330996, 41.382336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022443, -0.538054, 0.842611,
		-0.330223, -0.791529, -0.514231,
		0.943636, -0.289791, -0.159913,
		39.035725, 30.244059, 41.334362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317513, 29.670567, 41.289722>,  <38.375179, 30.446913, 41.446301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317513, 29.670567, 41.289722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638142, 29.818497, 41.477642>,  <38.830521, 29.907255, 41.590393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638142, 29.818497, 41.477642>,  <38.317513, 29.670567, 41.289722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638142, 29.818497, 41.477642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284400, -0.455331, 0.843677,
		0.525927, -0.809879, -0.259802,
		0.801572, 0.369825, 0.469800,
		38.878613, 29.929443, 41.618584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657452, 29.091589, 41.627464>,  <38.317513, 29.670567, 41.289722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.657452, 29.091589, 41.627464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826237, 29.405964, 41.808243>,  <38.927509, 29.594589, 41.916710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826237, 29.405964, 41.808243>,  <38.657452, 29.091589, 41.627464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826237, 29.405964, 41.808243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004177, -0.496804, 0.867853,
		0.906603, -0.368090, -0.206350,
		0.421963, 0.785936, 0.451942,
		38.952827, 29.641745, 41.943825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300182, 28.741825, 42.086235>,  <38.657452, 29.091589, 41.627464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.300182, 28.741825, 42.086235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.136650, 29.094206, 42.181553>,  <39.038532, 29.305634, 42.238743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.136650, 29.094206, 42.181553>,  <39.300182, 28.741825, 42.086235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.136650, 29.094206, 42.181553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204121, -0.342769, 0.916976,
		0.889489, 0.326248, 0.319955,
		-0.408831, 0.880949, 0.238295,
		39.014000, 29.358490, 42.253040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.609901, 29.000532, 42.632908>,  <39.300182, 28.741825, 42.086235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.609901, 29.000532, 42.632908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.238541, 29.144106, 42.594475>,  <39.015724, 29.230249, 42.571415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.238541, 29.144106, 42.594475>,  <39.609901, 29.000532, 42.632908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.238541, 29.144106, 42.594475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201721, -0.269708, 0.941577,
		0.312049, 0.893546, 0.322802,
		-0.928404, 0.358933, -0.096085,
		38.960018, 29.251785, 42.565651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427677, 29.161394, 43.276619>,  <39.609901, 29.000532, 42.632908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.427677, 29.161394, 43.276619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.071823, 29.149786, 43.094318>,  <38.858311, 29.142820, 42.984936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.071823, 29.149786, 43.094318>,  <39.427677, 29.161394, 43.276619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071823, 29.149786, 43.094318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430757, -0.278108, 0.858548,
		-0.151664, 0.960111, 0.234913,
		-0.889633, -0.029021, -0.455754,
		38.804932, 29.141079, 42.957592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043350, 29.456894, 43.712135>,  <39.427677, 29.161394, 43.276619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.043350, 29.456894, 43.712135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.790882, 29.238850, 43.491417>,  <38.639400, 29.108023, 43.358986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.790882, 29.238850, 43.491417>,  <39.043350, 29.456894, 43.712135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.790882, 29.238850, 43.491417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467698, -0.300057, 0.831399,
		-0.618774, 0.782828, -0.065560,
		-0.631171, -0.545111, -0.551795,
		38.601532, 29.075315, 43.325878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469711, 29.563934, 44.121170>,  <39.043350, 29.456894, 43.712135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469711, 29.563934, 44.121170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.335598, 29.259506, 43.899052>,  <38.255131, 29.076849, 43.765781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.335598, 29.259506, 43.899052>,  <38.469711, 29.563934, 44.121170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.335598, 29.259506, 43.899052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486030, -0.365195, 0.793982,
		-0.807067, 0.536104, -0.247457,
		-0.335287, -0.761068, -0.555299,
		38.235012, 29.031185, 43.732460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727577, 29.551731, 44.160973>,  <38.469711, 29.563934, 44.121170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727577, 29.551731, 44.160973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.835003, 29.182968, 44.049286>,  <37.899460, 28.961710, 43.982273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.835003, 29.182968, 44.049286>,  <37.727577, 29.551731, 44.160973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.835003, 29.182968, 44.049286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600307, -0.386878, 0.699970,
		-0.753328, -0.020375, -0.657329,
		0.268568, -0.921906, -0.279215,
		37.915573, 28.906397, 43.965523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134270, 29.190050, 44.108089>,  <37.727577, 29.551731, 44.160973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.134270, 29.190050, 44.108089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.408939, 28.901585, 44.144749>,  <37.573742, 28.728506, 44.166744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.408939, 28.901585, 44.144749>,  <37.134270, 29.190050, 44.108089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408939, 28.901585, 44.144749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571539, -0.457653, 0.681100,
		-0.449236, -0.520081, -0.726432,
		0.686681, -0.721159, 0.091652,
		37.614941, 28.685236, 44.172245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759876, 28.505556, 44.223415>,  <37.134270, 29.190050, 44.108089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.759876, 28.505556, 44.223415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.127838, 28.474333, 44.377132>,  <37.348614, 28.455599, 44.469364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.127838, 28.474333, 44.377132>,  <36.759876, 28.505556, 44.223415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127838, 28.474333, 44.377132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390794, -0.263642, 0.881914,
		0.032478, -0.961457, -0.273030,
		0.919905, -0.078056, 0.384295,
		37.403809, 28.450916, 44.492420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601868, 27.921776, 44.550903>,  <36.759876, 28.505556, 44.223415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.601868, 27.921776, 44.550903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.917999, 28.102579, 44.716343>,  <37.107677, 28.211061, 44.815605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.917999, 28.102579, 44.716343>,  <36.601868, 27.921776, 44.550903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.917999, 28.102579, 44.716343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220492, -0.419992, 0.880335,
		0.571627, -0.786952, -0.232269,
		0.790333, 0.452010, 0.413596,
		37.155098, 28.238182, 44.840424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466381, 27.230543, 44.838161>,  <36.601868, 27.921776, 44.550903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466381, 27.230543, 44.838161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.689186, 27.093052, 45.140575>,  <36.822868, 27.010557, 45.322025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.689186, 27.093052, 45.140575>,  <36.466381, 27.230543, 44.838161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.689186, 27.093052, 45.140575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676176, 0.716254, -0.172531,
		-0.482210, 0.607315, 0.631381,
		0.557010, -0.343728, 0.756036,
		36.856289, 26.989933, 45.367386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451111, 27.772261, 45.323448>,  <36.466381, 27.230543, 44.838161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.451111, 27.772261, 45.323448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.775898, 27.539433, 45.340900>,  <36.970768, 27.399734, 45.351372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.775898, 27.539433, 45.340900>,  <36.451111, 27.772261, 45.323448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775898, 27.539433, 45.340900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568592, 0.771831, -0.284572,
		0.131965, 0.255872, 0.957661,
		0.811966, -0.582072, 0.043632,
		37.019489, 27.364811, 45.353989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100510, 28.131372, 45.607937>,  <36.451111, 27.772261, 45.323448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100510, 28.131372, 45.607937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.196777, 27.834225, 45.358067>,  <37.254539, 27.655935, 45.208145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.196777, 27.834225, 45.358067>,  <37.100510, 28.131372, 45.607937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.196777, 27.834225, 45.358067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513942, 0.643501, -0.567248,
		0.823372, -0.184529, 0.536663,
		0.240669, -0.742870, -0.624678,
		37.268978, 27.611364, 45.170662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854389, 28.120708, 45.541416>,  <37.100510, 28.131372, 45.607937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.854389, 28.120708, 45.541416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.679249, 27.991343, 45.205872>,  <37.574165, 27.913723, 45.004543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.679249, 27.991343, 45.205872>,  <37.854389, 28.120708, 45.541416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679249, 27.991343, 45.205872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519632, 0.670383, -0.529687,
		0.733666, -0.667825, -0.125475,
		-0.437854, -0.323413, -0.838861,
		37.547894, 27.894320, 44.954212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438194, 28.187683, 44.997963>,  <37.854389, 28.120708, 45.541416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.438194, 28.187683, 44.997963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.085892, 28.196127, 44.808720>,  <37.874512, 28.201193, 44.695175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.085892, 28.196127, 44.808720>,  <38.438194, 28.187683, 44.997963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.085892, 28.196127, 44.808720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375046, 0.641077, -0.669597,
		0.289164, -0.767186, -0.572546,
		-0.880752, 0.021108, -0.473107,
		37.821667, 28.202459, 44.666786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.513367, 27.768934, 44.431278>,  <38.438194, 28.187683, 44.997963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.513367, 27.768934, 44.431278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.233559, 28.035301, 44.327572>,  <38.065674, 28.195122, 44.265347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.233559, 28.035301, 44.327572>,  <38.513367, 27.768934, 44.431278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.233559, 28.035301, 44.327572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493636, 0.187954, -0.849115,
		-0.516710, -0.721961, -0.460199,
		-0.699524, 0.665917, -0.259269,
		38.023701, 28.235077, 44.249790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434505, 27.692150, 43.707081>,  <38.513367, 27.768934, 44.431278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.434505, 27.692150, 43.707081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.258602, 28.041031, 43.792755>,  <38.153061, 28.250360, 43.844158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.258602, 28.041031, 43.792755>,  <38.434505, 27.692150, 43.707081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258602, 28.041031, 43.792755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351793, 0.386710, -0.852466,
		-0.826350, -0.299530, -0.476893,
		-0.439758, 0.872203, 0.214185,
		38.126675, 28.302692, 43.857010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174835, 27.845278, 43.059551>,  <38.434505, 27.692150, 43.707081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.174835, 27.845278, 43.059551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.188080, 28.199038, 43.245773>,  <38.196026, 28.411293, 43.357506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.188080, 28.199038, 43.245773>,  <38.174835, 27.845278, 43.059551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.188080, 28.199038, 43.245773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140471, 0.457065, -0.878271,
		-0.989531, 0.094473, -0.109101,
		0.033107, 0.884401, 0.465551,
		38.198013, 28.464357, 43.385437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.687958, 28.269600, 42.673332>,  <38.174835, 27.845278, 43.059551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.687958, 28.269600, 42.673332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987938, 28.485106, 42.826851>,  <38.167927, 28.614408, 42.918961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987938, 28.485106, 42.826851>,  <37.687958, 28.269600, 42.673332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987938, 28.485106, 42.826851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164768, 0.409766, -0.897186,
		-0.640640, 0.736086, 0.218535,
		0.749955, 0.538766, 0.383796,
		38.212925, 28.646736, 42.941990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618160, 28.929886, 42.380306>,  <37.687958, 28.269600, 42.673332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618160, 28.929886, 42.380306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.969524, 28.997143, 42.559246>,  <38.180344, 29.037497, 42.666611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.969524, 28.997143, 42.559246>,  <37.618160, 28.929886, 42.380306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969524, 28.997143, 42.559246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178313, 0.753148, -0.633224,
		-0.443390, 0.636000, 0.631593,
		0.878413, 0.168144, 0.447345,
		38.233047, 29.047586, 42.693451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699505, 29.577583, 42.483212>,  <37.618160, 28.929886, 42.380306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.699505, 29.577583, 42.483212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.087559, 29.481302, 42.495220>,  <38.320393, 29.423534, 42.502426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.087559, 29.481302, 42.495220>,  <37.699505, 29.577583, 42.483212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.087559, 29.481302, 42.495220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206468, 0.754451, -0.623036,
		0.127318, 0.610627, 0.781617,
		0.970135, -0.240703, 0.030020,
		38.378597, 29.409092, 42.504227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106766, 30.269342, 42.681034>,  <37.699505, 29.577583, 42.483212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.106766, 30.269342, 42.681034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.371201, 29.970007, 42.702785>,  <38.529861, 29.790405, 42.715836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.371201, 29.970007, 42.702785>,  <38.106766, 30.269342, 42.681034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371201, 29.970007, 42.702785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474813, 0.361134, -0.802580,
		0.580962, 0.556394, 0.594061,
		0.661086, -0.748337, 0.054378,
		38.569527, 29.745506, 42.719097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703552, 30.564161, 42.693951>,  <38.106766, 30.269342, 42.681034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.703552, 30.564161, 42.693951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.788635, 30.194725, 42.566364>,  <38.839684, 29.973063, 42.489815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.788635, 30.194725, 42.566364>,  <38.703552, 30.564161, 42.693951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.788635, 30.194725, 42.566364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620529, 0.379838, -0.686052,
		0.754785, -0.051999, 0.653908,
		0.212705, -0.923590, -0.318963,
		38.852448, 29.917648, 42.470676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391296, 30.656269, 42.523499>,  <38.703552, 30.564161, 42.693951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.391296, 30.656269, 42.523499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.276894, 30.316528, 42.346050>,  <39.208252, 30.112684, 42.239582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.276894, 30.316528, 42.346050>,  <39.391296, 30.656269, 42.523499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.276894, 30.316528, 42.346050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509501, 0.257298, -0.821100,
		0.811546, -0.460869, 0.359156,
		-0.286010, -0.849351, -0.443622,
		39.191090, 30.061724, 42.212963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942558, 30.406256, 42.180984>,  <39.391296, 30.656269, 42.523499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.942558, 30.406256, 42.180984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.613525, 30.278900, 41.992519>,  <39.416107, 30.202488, 41.879440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.613525, 30.278900, 41.992519>,  <39.942558, 30.406256, 42.180984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.613525, 30.278900, 41.992519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406361, 0.250488, -0.878707,
		0.397790, -0.914268, -0.076666,
		-0.822578, -0.318387, -0.471164,
		39.366753, 30.183384, 41.851170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.152695, 29.900951, 41.692867>,  <39.942558, 30.406256, 42.180984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.152695, 29.900951, 41.692867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.815254, 30.098888, 41.609470>,  <39.612789, 30.217651, 41.559433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.815254, 30.098888, 41.609470>,  <40.152695, 29.900951, 41.692867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.815254, 30.098888, 41.609470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359898, 0.232905, -0.903454,
		-0.398509, -0.837190, -0.374572,
		-0.843602, 0.494842, -0.208488,
		39.562172, 30.247341, 41.546925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.805393, 29.725481, 41.128609>,  <40.152695, 29.900951, 41.692867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.805393, 29.725481, 41.128609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.744125, 30.120083, 41.151756>,  <39.707363, 30.356844, 41.165646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.744125, 30.120083, 41.151756>,  <39.805393, 29.725481, 41.128609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.744125, 30.120083, 41.151756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212631, 0.090087, -0.972971,
		-0.965053, -0.136728, -0.223560,
		-0.153173, 0.986504, 0.057866,
		39.698174, 30.416035, 41.169117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.523514, 29.797316, 41.078533>,  <39.805393, 29.725481, 41.128609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.523514, 29.797316, 41.078533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.455585, 30.152058, 40.906647>,  <40.414829, 30.364902, 40.803516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.455585, 30.152058, 40.906647>,  <40.523514, 29.797316, 41.078533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.455585, 30.152058, 40.906647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972015, -0.222558, -0.075195,
		-0.162323, 0.404919, 0.899829,
		-0.169816, 0.886853, -0.429714,
		40.404640, 30.418114, 40.777733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.204109, 29.924202, 40.856785>,  <40.523514, 29.797316, 41.078533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.204109, 29.924202, 40.856785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.237823, 29.991493, 40.463928>,  <41.258053, 30.031868, 40.228214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.237823, 29.991493, 40.463928>,  <41.204109, 29.924202, 40.856785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.237823, 29.991493, 40.463928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182215, 0.966424, 0.181172,
		0.979639, -0.194231, 0.050802,
		0.084285, 0.168226, -0.982138,
		41.263107, 30.041962, 40.169285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.327343, 29.926147, 41.670574>,  <41.204109, 29.924202, 40.856785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.327343, 29.926147, 41.670574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.646309, 29.962059, 41.431889>,  <41.837688, 29.983606, 41.288677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.646309, 29.962059, 41.431889>,  <41.327343, 29.926147, 41.670574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.646309, 29.962059, 41.431889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592956, 0.300034, -0.747250,
		0.111948, 0.949694, 0.292486,
		0.797415, 0.089778, -0.596715,
		41.885532, 29.988993, 41.252872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.453178, 30.601557, 41.395332>,  <41.327343, 29.926147, 41.670574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.453178, 30.601557, 41.395332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.580585, 30.320938, 41.140343>,  <41.657028, 30.152567, 40.987347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.580585, 30.320938, 41.140343>,  <41.453178, 30.601557, 41.395332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.580585, 30.320938, 41.140343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615211, 0.358633, -0.702067,
		0.721154, 0.615802, -0.317370,
		0.318515, -0.701548, -0.637478,
		41.676140, 30.110474, 40.949100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.119568, 30.721058, 41.636391>,  <41.453178, 30.601557, 41.395332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.119568, 30.721058, 41.636391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.360783, 31.030527, 41.714138>,  <42.505512, 31.216209, 41.760784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.360783, 31.030527, 41.714138>,  <42.119568, 30.721058, 41.636391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.360783, 31.030527, 41.714138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656476, -0.342883, -0.671915,
		-0.453198, 0.532785, -0.714669,
		0.603034, 0.773674, 0.194366,
		42.541695, 31.262629, 41.772449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.369137, 31.084696, 40.981087>,  <42.119568, 30.721058, 41.636391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.369137, 31.084696, 40.981087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.633362, 31.118551, 41.279480>,  <42.791897, 31.138865, 41.458515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.633362, 31.118551, 41.279480>,  <42.369137, 31.084696, 40.981087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.633362, 31.118551, 41.279480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749714, -0.127077, -0.649446,
		0.039830, 0.988275, -0.147396,
		0.660562, 0.084637, 0.745985,
		42.831532, 31.143942, 41.503277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.792931, 31.749958, 40.956837>,  <42.369137, 31.084696, 40.981087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.792931, 31.749958, 40.956837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.973480, 31.452885, 41.154697>,  <43.081810, 31.274641, 41.273415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.973480, 31.452885, 41.154697>,  <42.792931, 31.749958, 40.956837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.973480, 31.452885, 41.154697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736561, -0.002824, -0.676365,
		0.503722, 0.669637, 0.545757,
		0.451378, -0.742683, 0.494651,
		43.108894, 31.230080, 41.303093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.469051, 31.798470, 40.998135>,  <42.792931, 31.749958, 40.956837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.469051, 31.798470, 40.998135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.488552, 31.403086, 41.055508>,  <43.500252, 31.165855, 41.089931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.488552, 31.403086, 41.055508>,  <43.469051, 31.798470, 40.998135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.488552, 31.403086, 41.055508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819916, -0.042406, -0.570911,
		0.570404, 0.145434, 0.808386,
		0.048750, -0.988459, 0.143432,
		43.503178, 31.106548, 41.098537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.219807, 31.630600, 41.277046>,  <43.469051, 31.798470, 40.998135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.219807, 31.630600, 41.277046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.022171, 31.358162, 41.060905>,  <43.903587, 31.194698, 40.931221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.022171, 31.358162, 41.060905>,  <44.219807, 31.630600, 41.277046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.022171, 31.358162, 41.060905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688359, 0.073182, -0.721670,
		0.531071, -0.728527, 0.432680,
		-0.494092, -0.681097, -0.540352,
		43.873943, 31.153833, 40.898800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.764336, 31.321102, 41.003464>,  <44.219807, 31.630600, 41.277046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.764336, 31.321102, 41.003464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.450798, 31.236616, 40.769890>,  <44.262676, 31.185925, 40.629745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.450798, 31.236616, 40.769890>,  <44.764336, 31.321102, 41.003464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.450798, 31.236616, 40.769890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564536, 0.149286, -0.811796,
		0.258639, -0.965971, 0.002224,
		-0.783840, -0.211218, -0.583937,
		44.215645, 31.173250, 40.594707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.069313, 31.361727, 40.385662>,  <44.764336, 31.321102, 41.003464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.069313, 31.361727, 40.385662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.695839, 31.268105, 40.277256>,  <44.471756, 31.211931, 40.212212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.695839, 31.268105, 40.277256>,  <45.069313, 31.361727, 40.385662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.695839, 31.268105, 40.277256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242044, 0.145283, -0.959327,
		0.263910, -0.961307, -0.078996,
		-0.933684, -0.234055, -0.271020,
		44.415733, 31.197887, 40.195950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.087013, 30.732664, 39.918983>,  <45.069313, 31.361727, 40.385662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.087013, 30.732664, 39.918983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.811310, 31.015682, 39.856632>,  <44.645885, 31.185493, 39.819221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.811310, 31.015682, 39.856632>,  <45.087013, 30.732664, 39.918983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.811310, 31.015682, 39.856632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311813, 0.095489, -0.945333,
		-0.653980, -0.700188, -0.286438,
		-0.689263, 0.707544, -0.155881,
		44.604530, 31.227945, 39.809868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.692879, 30.648983, 39.318565>,  <45.087013, 30.732664, 39.918983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.692879, 30.648983, 39.318565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.710602, 31.042845, 39.386082>,  <44.721237, 31.279161, 39.426594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.710602, 31.042845, 39.386082>,  <44.692879, 30.648983, 39.318565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.710602, 31.042845, 39.386082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551639, 0.116748, -0.825872,
		-0.832905, 0.129708, -0.538001,
		0.044312, 0.984655, 0.168792,
		44.723896, 31.338242, 39.436718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.980511, 30.679256, 38.774460>,  <44.692879, 30.648983, 39.318565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.980511, 30.679256, 38.774460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.966022, 31.048763, 38.926952>,  <44.957329, 31.270468, 39.018448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.966022, 31.048763, 38.926952>,  <44.980511, 30.679256, 38.774460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.966022, 31.048763, 38.926952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746192, 0.278754, -0.604562,
		-0.664745, 0.262577, -0.699405,
		-0.036218, 0.923769, 0.381233,
		44.955158, 31.325893, 39.041321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.017025, 31.156889, 38.320686>,  <44.980511, 30.679256, 38.774460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.017025, 31.156889, 38.320686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.190536, 31.336224, 38.633308>,  <45.294643, 31.443825, 38.820881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.190536, 31.336224, 38.633308>,  <45.017025, 31.156889, 38.320686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.190536, 31.336224, 38.633308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694384, 0.386407, -0.607059,
		-0.574166, 0.806029, -0.143705,
		0.433778, 0.448339, 0.781555,
		45.320671, 31.470726, 38.867775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.142529, 31.933628, 38.254688>,  <45.017025, 31.156889, 38.320686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.142529, 31.933628, 38.254688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.411526, 31.762289, 38.496105>,  <45.572926, 31.659485, 38.640957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.411526, 31.762289, 38.496105>,  <45.142529, 31.933628, 38.254688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.411526, 31.762289, 38.496105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737959, 0.450073, -0.502842,
		-0.056247, 0.783551, 0.618777,
		0.672497, -0.428348, 0.603544,
		45.613274, 31.633785, 38.677170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.535202, 32.437485, 38.594490>,  <45.142529, 31.933628, 38.254688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.535202, 32.437485, 38.594490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.694828, 32.083126, 38.499889>,  <45.790604, 31.870512, 38.443127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.694828, 32.083126, 38.499889>,  <45.535202, 32.437485, 38.594490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.694828, 32.083126, 38.499889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580518, 0.443763, -0.682695,
		0.709748, 0.135148, 0.691370,
		0.399069, -0.885895, -0.236504,
		45.814548, 31.817358, 38.428940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.268829, 32.430904, 38.772972>,  <45.535202, 32.437485, 38.594490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.268829, 32.430904, 38.772972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.181824, 32.188099, 38.467236>,  <46.129620, 32.042416, 38.283794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.181824, 32.188099, 38.467236>,  <46.268829, 32.430904, 38.772972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.181824, 32.188099, 38.467236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668788, 0.477688, -0.569682,
		0.710922, -0.635100, 0.302057,
		-0.217516, -0.607011, -0.764346,
		46.116570, 32.005997, 38.237930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.819214, 31.864397, 38.573704>,  <46.268829, 32.430904, 38.772972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.819214, 31.864397, 38.573704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.590351, 31.997990, 38.274078>,  <46.453033, 32.078144, 38.094303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.590351, 31.997990, 38.274078>,  <46.819214, 31.864397, 38.573704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.590351, 31.997990, 38.274078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751242, 0.579851, -0.315289,
		0.329042, -0.743121, -0.582668,
		-0.572159, 0.333982, -0.749060,
		46.418705, 32.098183, 38.049362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.258713, 31.974318, 37.971230>,  <46.819214, 31.864397, 38.573704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.258713, 31.974318, 37.971230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.921097, 32.169338, 37.881889>,  <46.718525, 32.286350, 37.828285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.921097, 32.169338, 37.881889>,  <47.258713, 31.974318, 37.971230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.921097, 32.169338, 37.881889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527746, 0.681147, -0.507467,
		-0.095280, -0.546198, -0.832220,
		-0.844042, 0.487552, -0.223354,
		46.667885, 32.315605, 37.814884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.193413, 32.097534, 37.204182>,  <47.258713, 31.974318, 37.971230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.193413, 32.097534, 37.204182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.997246, 32.372772, 37.418106>,  <46.879547, 32.537914, 37.546459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.997246, 32.372772, 37.418106>,  <47.193413, 32.097534, 37.204182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.997246, 32.372772, 37.418106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318236, 0.712689, -0.625140,
		-0.811306, -0.136384, -0.568491,
		-0.490417, 0.688094, 0.534807,
		46.850121, 32.579201, 37.578548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.806000, 32.432755, 36.785175>,  <47.193413, 32.097534, 37.204182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.806000, 32.432755, 36.785175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.857403, 32.710003, 37.068882>,  <46.888245, 32.876354, 37.239105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.857403, 32.710003, 37.068882>,  <46.806000, 32.432755, 36.785175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.857403, 32.710003, 37.068882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050750, 0.709666, -0.702708,
		-0.990409, 0.126299, 0.056022,
		0.128508, 0.693125, 0.709269,
		46.895954, 32.917942, 37.281662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.379597, 32.974529, 36.504940>,  <46.806000, 32.432755, 36.785175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.379597, 32.974529, 36.504940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.686184, 33.130322, 36.709229>,  <46.870136, 33.223797, 36.831802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.686184, 33.130322, 36.709229>,  <46.379597, 32.974529, 36.504940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.686184, 33.130322, 36.709229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109212, 0.704556, -0.701195,
		-0.632933, 0.593218, 0.497482,
		0.766465, 0.389479, 0.510723,
		46.916122, 33.247166, 36.862446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.338955, 33.686649, 36.531887>,  <46.379597, 32.974529, 36.504940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.338955, 33.686649, 36.531887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.718815, 33.562366, 36.548054>,  <46.946732, 33.487797, 36.557755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.718815, 33.562366, 36.548054>,  <46.338955, 33.686649, 36.531887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.718815, 33.562366, 36.548054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236680, 0.626840, -0.742330,
		0.205312, 0.714517, 0.668814,
		0.949647, -0.310705, 0.040414,
		47.003708, 33.469154, 36.560177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.772099, 34.141132, 36.988682>,  <46.338955, 33.686649, 36.531887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.772099, 34.141132, 36.988682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.959534, 33.961205, 36.684555>,  <47.071995, 33.853249, 36.502079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.959534, 33.961205, 36.684555>,  <46.772099, 34.141132, 36.988682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.959534, 33.961205, 36.684555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204414, 0.892509, -0.402048,
		0.859443, 0.032973, 0.510167,
		0.468586, -0.449823, -0.760320,
		47.100109, 33.826260, 36.456459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.369385, 34.574913, 36.591228>,  <46.772099, 34.141132, 36.988682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.369385, 34.574913, 36.591228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.294590, 34.311249, 36.299873>,  <47.249714, 34.153049, 36.125061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.294590, 34.311249, 36.299873>,  <47.369385, 34.574913, 36.591228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.294590, 34.311249, 36.299873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178722, 0.706262, -0.685020,
		0.965967, -0.258271, -0.014259,
		-0.186991, -0.659158, -0.728385,
		47.238491, 34.113503, 36.081356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.882481, 34.664276, 36.123695>,  <47.369385, 34.574913, 36.591228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.882481, 34.664276, 36.123695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.589756, 34.467915, 35.934608>,  <47.414120, 34.350098, 35.821156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.589756, 34.467915, 35.934608>,  <47.882481, 34.664276, 36.123695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.589756, 34.467915, 35.934608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095405, 0.613015, -0.784290,
		0.674794, -0.619054, -0.401778,
		-0.731814, -0.490902, -0.472720,
		47.370213, 34.320644, 35.792793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.098522, 34.582352, 35.456017>,  <47.882481, 34.664276, 36.123695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.098522, 34.582352, 35.456017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.699402, 34.564930, 35.435997>,  <47.459930, 34.554478, 35.423985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.699402, 34.564930, 35.435997>,  <48.098522, 34.582352, 35.456017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.699402, 34.564930, 35.435997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014998, 0.586706, -0.809662,
		0.064629, -0.808628, -0.584760,
		-0.997796, -0.043557, -0.050046,
		47.400063, 34.551865, 35.420982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.986286, 34.661121, 34.774982>,  <48.098522, 34.582352, 35.456017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.986286, 34.661121, 34.774982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.637478, 34.780739, 34.929981>,  <47.428192, 34.852509, 35.022980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.637478, 34.780739, 34.929981>,  <47.986286, 34.661121, 34.774982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.637478, 34.780739, 34.929981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135395, 0.613412, -0.778071,
		-0.470370, -0.730959, -0.494419,
		-0.872021, 0.299040, 0.387499,
		47.375870, 34.870449, 35.046230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.023296, 32.207565, 27.794386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.855659, 31.867193, 27.667719>,  <37.755077, 31.662970, 27.591719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.855659, 31.867193, 27.667719>,  <38.023296, 32.207565, 27.794386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.855659, 31.867193, 27.667719> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369310, -0.158858, 0.915628,
		-0.829442, 0.500679, -0.247682,
		-0.419089, -0.850932, -0.316669,
		37.729935, 31.611914, 27.572718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415607, 32.277912, 28.058128>,  <38.023296, 32.207565, 27.794386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.415607, 32.277912, 28.058128> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.430340, 31.882677, 27.998369>,  <37.439178, 31.645535, 27.962515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.430340, 31.882677, 27.998369>,  <37.415607, 32.277912, 28.058128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.430340, 31.882677, 27.998369> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493700, -0.147969, 0.856951,
		-0.868852, 0.042197, -0.493270,
		0.036828, -0.988091, -0.149396,
		37.441387, 31.586250, 27.953550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783165, 32.078560, 28.316114>,  <37.415607, 32.277912, 28.058128>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783165, 32.078560, 28.316114> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.978489, 31.731073, 28.282940>,  <37.095684, 31.522581, 28.263035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.978489, 31.731073, 28.282940>,  <36.783165, 32.078560, 28.316114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.978489, 31.731073, 28.282940> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426408, -0.320443, 0.845868,
		-0.761397, -0.377684, -0.526905,
		0.488314, -0.868718, -0.082937,
		37.124985, 31.470457, 28.258059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281742, 31.481138, 28.303471>,  <36.783165, 32.078560, 28.316114>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281742, 31.481138, 28.303471> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.639652, 31.355093, 28.430012>,  <36.854397, 31.279465, 28.505936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.639652, 31.355093, 28.430012>,  <36.281742, 31.481138, 28.303471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.639652, 31.355093, 28.430012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430126, -0.418099, 0.800116,
		-0.119861, -0.851996, -0.509643,
		0.894777, -0.315113, 0.316352,
		36.908085, 31.260559, 28.524918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.012463, 30.918013, 28.430141>,  <36.281742, 31.481138, 28.303471>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.012463, 30.918013, 28.430141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.352024, 30.963285, 28.636654>,  <36.555763, 30.990450, 28.760561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.352024, 30.963285, 28.636654>,  <36.012463, 30.918013, 28.430141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352024, 30.963285, 28.636654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383426, -0.540447, 0.748934,
		0.363788, -0.833731, -0.415393,
		0.848907, 0.113181, 0.516282,
		36.606697, 30.997240, 28.791538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980137, 30.275919, 28.879072>,  <36.012463, 30.918013, 28.430141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980137, 30.275919, 28.879072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.250778, 30.519329, 29.044920>,  <36.413162, 30.665375, 29.144428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.250778, 30.519329, 29.044920>,  <35.980137, 30.275919, 28.879072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.250778, 30.519329, 29.044920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192140, -0.397663, 0.897188,
		0.710841, -0.686702, -0.152136,
		0.676600, 0.608527, 0.414618,
		36.453758, 30.701887, 29.169306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444023, 29.814705, 29.219950>,  <35.980137, 30.275919, 28.879072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444023, 29.814705, 29.219950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.469398, 30.171982, 29.398022>,  <36.484623, 30.386349, 29.504864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.469398, 30.171982, 29.398022>,  <36.444023, 29.814705, 29.219950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469398, 30.171982, 29.398022> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197882, -0.425963, 0.882835,
		0.978171, -0.144095, 0.149726,
		0.063434, 0.893192, 0.445178,
		36.488430, 30.439939, 29.531574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753616, 29.661081, 29.803394>,  <36.444023, 29.814705, 29.219950>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753616, 29.661081, 29.803394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.611713, 30.024864, 29.890141>,  <36.526573, 30.243134, 29.942188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.611713, 30.024864, 29.890141>,  <36.753616, 29.661081, 29.803394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611713, 30.024864, 29.890141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187040, -0.296298, 0.936602,
		0.916058, 0.291705, 0.275219,
		-0.354758, 0.909459, 0.216865,
		36.505287, 30.297703, 29.955200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.086643, 29.816545, 30.403458>,  <36.753616, 29.661081, 29.803394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.086643, 29.816545, 30.403458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.789284, 30.084072, 30.400835>,  <36.610870, 30.244589, 30.399261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.789284, 30.084072, 30.400835>,  <37.086643, 29.816545, 30.403458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.789284, 30.084072, 30.400835> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222694, -0.238261, 0.945325,
		0.630689, 0.704211, 0.326064,
		-0.743397, 0.668818, -0.006555,
		36.566265, 30.284718, 30.398869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151802, 30.192804, 31.059221>,  <37.086643, 29.816545, 30.403458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151802, 30.192804, 31.059221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.772072, 30.216713, 30.935801>,  <36.544231, 30.231058, 30.861748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.772072, 30.216713, 30.935801>,  <37.151802, 30.192804, 31.059221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.772072, 30.216713, 30.935801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313894, -0.131316, 0.940333,
		0.015689, 0.989537, 0.143425,
		-0.949328, 0.059773, -0.308550,
		36.487274, 30.234646, 30.843235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800426, 30.616707, 31.473927>,  <37.151802, 30.192804, 31.059221>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.800426, 30.616707, 31.473927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.500465, 30.409843, 31.308910>,  <36.320488, 30.285725, 31.209900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.500465, 30.409843, 31.308910>,  <36.800426, 30.616707, 31.473927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.500465, 30.409843, 31.308910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428065, -0.096121, 0.898622,
		-0.504384, 0.850475, -0.149296,
		-0.749905, -0.517159, -0.412540,
		36.275494, 30.254696, 31.185148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239605, 30.925985, 31.788456>,  <36.800426, 30.616707, 31.473927>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239605, 30.925985, 31.788456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.091034, 30.577295, 31.660622>,  <36.001892, 30.368082, 31.583921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.091034, 30.577295, 31.660622>,  <36.239605, 30.925985, 31.788456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.091034, 30.577295, 31.660622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446782, -0.133922, 0.884562,
		-0.813894, 0.471339, -0.339728,
		-0.371432, -0.871725, -0.319584,
		35.979603, 30.315779, 31.564747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.589153, 31.094122, 31.739100>,  <36.239605, 30.925985, 31.788456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.589153, 31.094122, 31.739100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.619991, 30.699575, 31.797255>,  <35.638493, 30.462847, 31.832148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.619991, 30.699575, 31.797255>,  <35.589153, 31.094122, 31.739100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.619991, 30.699575, 31.797255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540625, 0.081165, 0.837339,
		-0.837724, -0.143153, -0.526997,
		0.077094, -0.986367, 0.145386,
		35.643120, 30.403666, 31.840870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899345, 30.833651, 32.030624>,  <35.589153, 31.094122, 31.739100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.899345, 30.833651, 32.030624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.174160, 30.569393, 32.151638>,  <35.339050, 30.410839, 32.224247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.174160, 30.569393, 32.151638>,  <34.899345, 30.833651, 32.030624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.174160, 30.569393, 32.151638> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324338, 0.093749, 0.941284,
		-0.650216, -0.744822, -0.149863,
		0.687040, -0.660644, 0.302531,
		35.380272, 30.371201, 32.242397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574158, 30.331396, 32.496330>,  <34.899345, 30.833651, 32.030624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.574158, 30.331396, 32.496330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.966766, 30.314028, 32.570881>,  <35.202332, 30.303606, 32.615612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.966766, 30.314028, 32.570881>,  <34.574158, 30.331396, 32.496330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966766, 30.314028, 32.570881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180041, 0.120574, 0.976241,
		-0.064865, -0.991754, 0.110527,
		0.981518, -0.043424, 0.186377,
		35.261223, 30.301001, 32.626793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570587, 30.196463, 33.253704>,  <34.574158, 30.331396, 32.496330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570587, 30.196463, 33.253704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.957230, 30.262390, 33.175209>,  <35.189217, 30.301947, 33.128113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.957230, 30.262390, 33.175209>,  <34.570587, 30.196463, 33.253704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957230, 30.262390, 33.175209> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170274, 0.159213, 0.972449,
		0.191526, -0.973388, 0.125831,
		0.966605, 0.164823, -0.196236,
		35.247211, 30.311836, 33.116337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015320, 29.764660, 33.721169>,  <34.570587, 30.196463, 33.253704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015320, 29.764660, 33.721169> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.235107, 30.083656, 33.621502>,  <35.366982, 30.275055, 33.561703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.235107, 30.083656, 33.621502>,  <35.015320, 29.764660, 33.721169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.235107, 30.083656, 33.621502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083100, 0.244580, 0.966062,
		0.831369, -0.551531, 0.068118,
		0.549473, 0.797492, -0.249168,
		35.399948, 30.322905, 33.546753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.708218, 29.636036, 33.938965>,  <35.015320, 29.764660, 33.721169>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.708218, 29.636036, 33.938965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.650814, 30.031244, 33.916248>,  <35.616371, 30.268370, 33.902618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.650814, 30.031244, 33.916248>,  <35.708218, 29.636036, 33.938965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.650814, 30.031244, 33.916248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177485, 0.082146, 0.980689,
		0.973604, 0.130654, -0.187147,
		-0.143505, 0.988019, -0.056789,
		35.607761, 30.327650, 33.899212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262371, 29.912325, 34.273342>,  <35.708218, 29.636036, 33.938965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262371, 29.912325, 34.273342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.981964, 30.197437, 34.264221>,  <35.813721, 30.368505, 34.258747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.981964, 30.197437, 34.264221>,  <36.262371, 29.912325, 34.273342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981964, 30.197437, 34.264221> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153277, 0.181819, 0.971313,
		0.696481, 0.677409, -0.236710,
		-0.701014, 0.712783, -0.022803,
		35.771660, 30.411272, 34.257381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.497818, 30.328146, 34.815018>,  <36.262371, 29.912325, 34.273342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.497818, 30.328146, 34.815018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.125664, 30.469353, 34.775494>,  <35.902370, 30.554077, 34.751778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.125664, 30.469353, 34.775494>,  <36.497818, 30.328146, 34.815018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125664, 30.469353, 34.775494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083280, 0.466042, 0.880834,
		0.357003, 0.811284, -0.462997,
		-0.930383, 0.353019, -0.098815,
		35.846550, 30.575258, 34.745850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563114, 31.013361, 35.118435>,  <36.497818, 30.328146, 34.815018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563114, 31.013361, 35.118435> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.170345, 30.938795, 35.105312>,  <35.934685, 30.894056, 35.097439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.170345, 30.938795, 35.105312>,  <36.563114, 31.013361, 35.118435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170345, 30.938795, 35.105312> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139253, 0.594084, 0.792258,
		-0.128198, 0.782505, -0.609304,
		-0.981923, -0.186414, -0.032806,
		35.875767, 30.882872, 35.095470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.926846, 30.769205, 35.662701>,  <36.563114, 31.013361, 35.118435>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.926846, 30.769205, 35.662701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.180679, 30.898432, 35.943535>,  <37.332981, 30.975967, 36.112034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.180679, 30.898432, 35.943535>,  <36.926846, 30.769205, 35.662701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.180679, 30.898432, 35.943535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645194, 0.278654, -0.711391,
		-0.425466, 0.904422, -0.031610,
		0.634589, 0.323067, 0.702086,
		37.371056, 30.995352, 36.154160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125267, 31.393841, 35.467598>,  <36.926846, 30.769205, 35.662701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125267, 31.393841, 35.467598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.410133, 31.273447, 35.721287>,  <37.581051, 31.201212, 35.873501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.410133, 31.273447, 35.721287>,  <37.125267, 31.393841, 35.467598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410133, 31.273447, 35.721287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690663, 0.138596, -0.709771,
		0.125729, 0.943505, 0.306580,
		0.712163, -0.300983, 0.634219,
		37.623783, 31.183153, 35.911552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680096, 31.876534, 35.383278>,  <37.125267, 31.393841, 35.467598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680096, 31.876534, 35.383278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.884739, 31.600857, 35.588516>,  <38.007523, 31.435450, 35.711658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.884739, 31.600857, 35.588516>,  <37.680096, 31.876534, 35.383278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.884739, 31.600857, 35.588516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788043, 0.138391, -0.599863,
		0.342413, 0.711239, 0.613916,
		0.511606, -0.689193, 0.513100,
		38.038219, 31.394098, 35.742447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270329, 32.210243, 35.596607>,  <37.680096, 31.876534, 35.383278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.270329, 32.210243, 35.596607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.349869, 31.818678, 35.577877>,  <38.397591, 31.583738, 35.566639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.349869, 31.818678, 35.577877>,  <38.270329, 32.210243, 35.596607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.349869, 31.818678, 35.577877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730377, 0.179885, -0.658931,
		0.653459, 0.096823, 0.750744,
		0.198847, -0.978911, -0.046830,
		38.409523, 31.525005, 35.563828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935677, 32.127037, 35.702698>,  <38.270329, 32.210243, 35.596607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.935677, 32.127037, 35.702698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.805798, 31.813175, 35.491455>,  <38.727871, 31.624859, 35.364712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.805798, 31.813175, 35.491455>,  <38.935677, 32.127037, 35.702698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.805798, 31.813175, 35.491455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711454, 0.165289, -0.683017,
		0.623220, -0.597495, 0.504575,
		-0.324699, -0.784652, -0.528102,
		38.708389, 31.577780, 35.333023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.552071, 31.900732, 35.332764>,  <38.935677, 32.127037, 35.702698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.552071, 31.900732, 35.332764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.279873, 31.663918, 35.160053>,  <39.116554, 31.521830, 35.056427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.279873, 31.663918, 35.160053>,  <39.552071, 31.900732, 35.332764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279873, 31.663918, 35.160053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598011, -0.108181, -0.794153,
		0.423456, -0.798619, 0.427659,
		-0.680491, -0.592034, -0.431773,
		39.075726, 31.486307, 35.030521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858665, 31.216854, 35.208317>,  <39.552071, 31.900732, 35.332764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.858665, 31.216854, 35.208317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.555729, 31.266720, 34.951912>,  <39.373966, 31.296638, 34.798069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.555729, 31.266720, 34.951912>,  <39.858665, 31.216854, 35.208317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555729, 31.266720, 34.951912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649744, 0.045607, -0.758784,
		-0.065359, -0.991150, -0.115540,
		-0.757338, 0.124665, -0.641013,
		39.328529, 31.304119, 34.759609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.023468, 30.769304, 34.584446>,  <39.858665, 31.216854, 35.208317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.023468, 30.769304, 34.584446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.741840, 31.032990, 34.478825>,  <39.572865, 31.191200, 34.415451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.741840, 31.032990, 34.478825>,  <40.023468, 30.769304, 34.584446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.741840, 31.032990, 34.478825> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383656, 0.040201, -0.922601,
		-0.597575, -0.750881, -0.281214,
		-0.704069, 0.659213, -0.264057,
		39.530621, 31.230753, 34.399609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724709, 30.484188, 33.965187>,  <40.023468, 30.769304, 34.584446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.724709, 30.484188, 33.965187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.609924, 30.866745, 33.943420>,  <39.541054, 31.096279, 33.930359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.609924, 30.866745, 33.943420>,  <39.724709, 30.484188, 33.965187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.609924, 30.866745, 33.943420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212811, 0.008258, -0.977058,
		-0.934004, -0.291961, -0.205901,
		-0.286963, 0.956394, -0.054420,
		39.523834, 31.153664, 33.927094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205563, 30.465626, 33.418190>,  <39.724709, 30.484188, 33.965187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.205563, 30.465626, 33.418190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.359360, 30.831224, 33.469997>,  <39.451637, 31.050583, 33.501083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.359360, 30.831224, 33.469997>,  <39.205563, 30.465626, 33.418190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.359360, 30.831224, 33.469997> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144369, 0.079045, -0.986362,
		-0.911768, 0.397949, -0.101560,
		0.384494, 0.913996, 0.129522,
		39.474709, 31.105423, 33.508854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.848328, 30.902981, 32.946125>,  <39.205563, 30.465626, 33.418190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.848328, 30.902981, 32.946125> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.178257, 31.111340, 33.034069>,  <39.376213, 31.236355, 33.086838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.178257, 31.111340, 33.034069>,  <38.848328, 30.902981, 32.946125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.178257, 31.111340, 33.034069> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127406, 0.207627, -0.969876,
		-0.550853, 0.827985, 0.104890,
		0.824820, 0.520895, 0.219863,
		39.425705, 31.267609, 33.100029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.744884, 31.545292, 32.627357>,  <38.848328, 30.902981, 32.946125>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.744884, 31.545292, 32.627357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.142475, 31.547901, 32.671104>,  <39.381031, 31.549467, 32.697353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.142475, 31.547901, 32.671104>,  <38.744884, 31.545292, 32.627357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142475, 31.547901, 32.671104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090709, 0.510842, -0.854876,
		-0.061444, 0.859650, 0.507175,
		0.993980, 0.006522, 0.109366,
		39.440670, 31.549858, 32.703915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982445, 32.151684, 32.555042>,  <38.744884, 31.545292, 32.627357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982445, 32.151684, 32.555042> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.312569, 31.943003, 32.468616>,  <39.510643, 31.817795, 32.416759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.312569, 31.943003, 32.468616>,  <38.982445, 32.151684, 32.555042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.312569, 31.943003, 32.468616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113478, 0.528068, -0.841586,
		0.553156, 0.670053, 0.495023,
		0.825313, -0.521703, -0.216067,
		39.560162, 31.786491, 32.403797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446754, 32.692841, 32.337959>,  <38.982445, 32.151684, 32.555042>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.446754, 32.692841, 32.337959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.634422, 32.372410, 32.189281>,  <39.747025, 32.180153, 32.100075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.634422, 32.372410, 32.189281>,  <39.446754, 32.692841, 32.337959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.634422, 32.372410, 32.189281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248859, 0.523770, -0.814699,
		0.847319, 0.289732, 0.445092,
		0.469170, -0.801074, -0.371698,
		39.775173, 32.132088, 32.077770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.864758, 32.986362, 31.872759>,  <39.446754, 32.692841, 32.337959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.864758, 32.986362, 31.872759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.886353, 32.598408, 31.777752>,  <39.899311, 32.365635, 31.720749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.886353, 32.598408, 31.777752>,  <39.864758, 32.986362, 31.872759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.886353, 32.598408, 31.777752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302797, 0.242564, -0.921671,
		0.951525, -0.022160, 0.306773,
		0.053988, -0.969882, -0.237516,
		39.902550, 32.307442, 31.706497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.472065, 32.882278, 31.495394>,  <39.864758, 32.986362, 31.872759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.472065, 32.882278, 31.495394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.232052, 32.582478, 31.383530>,  <40.088043, 32.402599, 31.316410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.232052, 32.582478, 31.383530>,  <40.472065, 32.882278, 31.495394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.232052, 32.582478, 31.383530> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129254, 0.254163, -0.958486,
		0.789465, -0.611270, -0.055630,
		-0.600033, -0.749500, -0.279662,
		40.052040, 32.357628, 31.299631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.810036, 32.792500, 30.859392>,  <40.472065, 32.882278, 31.495394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.810036, 32.792500, 30.859392> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.453068, 32.612770, 30.875835>,  <40.238888, 32.504932, 30.885700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.453068, 32.612770, 30.875835>,  <40.810036, 32.792500, 30.859392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.453068, 32.612770, 30.875835> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115964, 0.140365, -0.983285,
		0.436042, -0.882274, -0.177370,
		-0.892424, -0.449322, 0.041107,
		40.185341, 32.477974, 30.888168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.874050, 32.184853, 30.437769>,  <40.810036, 32.792500, 30.859392>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.874050, 32.184853, 30.437769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.496799, 32.314911, 30.465466>,  <40.270451, 32.392944, 30.482082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.496799, 32.314911, 30.465466>,  <40.874050, 32.184853, 30.437769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.496799, 32.314911, 30.465466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011220, 0.239291, -0.970883,
		-0.332247, -0.914888, -0.229330,
		-0.943125, 0.325146, 0.069239,
		40.213863, 32.412457, 30.486237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.506031, 31.970078, 29.788916>,  <40.874050, 32.184853, 30.437769>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.506031, 31.970078, 29.788916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.255058, 32.241550, 29.941610>,  <40.104477, 32.404434, 30.033226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.255058, 32.241550, 29.941610>,  <40.506031, 31.970078, 29.788916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.255058, 32.241550, 29.941610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175851, 0.354073, -0.918536,
		-0.758556, -0.643446, -0.102809,
		-0.627430, 0.678682, 0.381735,
		40.066830, 32.445156, 30.056131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.769444, 31.727280, 29.452936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.752457, 32.104301, 29.585474>,  <39.742264, 32.330513, 29.664997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.752457, 32.104301, 29.585474>,  <39.769444, 31.727280, 29.452936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752457, 32.104301, 29.585474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403153, 0.287279, -0.868872,
		-0.914147, -0.170482, 0.367793,
		-0.042468, 0.942553, 0.331345,
		39.739716, 32.387066, 29.684877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012447, 31.894474, 29.403225>,  <39.769444, 31.727280, 29.452936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.012447, 31.894474, 29.403225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.220974, 32.235779, 29.397911>,  <39.346088, 32.440563, 29.394724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.220974, 32.235779, 29.397911>,  <39.012447, 31.894474, 29.403225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.220974, 32.235779, 29.397911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322643, 0.182667, -0.928727,
		-0.790020, 0.488446, 0.370526,
		0.521316, 0.853260, -0.013283,
		39.377369, 32.491756, 29.393927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569492, 32.393745, 29.143709>,  <39.012447, 31.894474, 29.403225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.569492, 32.393745, 29.143709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.929588, 32.547611, 29.062120>,  <39.145645, 32.639931, 29.013168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.929588, 32.547611, 29.062120>,  <38.569492, 32.393745, 29.143709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.929588, 32.547611, 29.062120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343277, 0.338893, -0.875964,
		-0.267829, 0.858594, 0.437131,
		0.900238, 0.384666, -0.203971,
		39.199661, 32.663010, 29.000929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449799, 33.086952, 28.912125>,  <38.569492, 32.393745, 29.143709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.449799, 33.086952, 28.912125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.798775, 32.949585, 28.773035>,  <39.008160, 32.867165, 28.689581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.798775, 32.949585, 28.773035>,  <38.449799, 33.086952, 28.912125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798775, 32.949585, 28.773035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270685, 0.252856, -0.928867,
		0.406916, 0.904504, 0.127643,
		0.872439, -0.343420, -0.347726,
		39.060505, 32.846558, 28.668716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.575703, 33.617264, 28.321304>,  <38.449799, 33.086952, 28.912125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.575703, 33.617264, 28.321304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.822151, 33.308163, 28.260317>,  <38.970020, 33.122700, 28.223724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.822151, 33.308163, 28.260317>,  <38.575703, 33.617264, 28.321304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822151, 33.308163, 28.260317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055407, 0.150575, -0.987045,
		0.785702, 0.616585, 0.049956,
		0.616119, -0.772755, -0.152470,
		39.006989, 33.076336, 28.214577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024952, 33.894924, 27.874718>,  <38.575703, 33.617264, 28.321304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.024952, 33.894924, 27.874718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.068962, 33.501030, 27.820778>,  <39.095367, 33.264694, 27.788414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.068962, 33.501030, 27.820778>,  <39.024952, 33.894924, 27.874718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.068962, 33.501030, 27.820778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205264, 0.155261, -0.966313,
		0.972503, 0.078635, 0.219214,
		0.110021, -0.984739, -0.134851,
		39.101967, 33.205608, 27.780323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587151, 33.840675, 27.474726>,  <39.024952, 33.894924, 27.874718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.587151, 33.840675, 27.474726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.483521, 33.454712, 27.457603>,  <39.421341, 33.223133, 27.447330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.483521, 33.454712, 27.457603>,  <39.587151, 33.840675, 27.474726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483521, 33.454712, 27.457603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428856, -0.075212, -0.900236,
		0.865426, -0.251588, 0.433292,
		-0.259077, -0.964908, -0.042805,
		39.405796, 33.165241, 27.444761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.195095, 33.597710, 27.340752>,  <39.587151, 33.840675, 27.474726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.195095, 33.597710, 27.340752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.910660, 33.340271, 27.227522>,  <39.739998, 33.185806, 27.159584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.910660, 33.340271, 27.227522>,  <40.195095, 33.597710, 27.340752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.910660, 33.340271, 27.227522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472457, -0.139225, -0.870288,
		0.520707, -0.752592, 0.403075,
		-0.711089, -0.643600, -0.283072,
		39.697334, 33.147190, 27.142601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.514057, 32.958698, 27.275841>,  <40.195095, 33.597710, 27.340752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.514057, 32.958698, 27.275841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.183552, 32.948318, 27.050766>,  <39.985249, 32.942089, 26.915722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.183552, 32.948318, 27.050766>,  <40.514057, 32.958698, 27.275841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.183552, 32.948318, 27.050766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563285, -0.038826, -0.825350,
		-0.000428, -0.998909, 0.046699,
		-0.826262, -0.025952, -0.562687,
		39.935673, 32.940533, 26.881960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.687012, 32.453728, 26.819248>,  <40.514057, 32.958698, 27.275841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.687012, 32.453728, 26.819248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.397263, 32.679794, 26.661327>,  <40.223412, 32.815434, 26.566574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.397263, 32.679794, 26.661327>,  <40.687012, 32.453728, 26.819248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.397263, 32.679794, 26.661327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492238, 0.023046, -0.870156,
		-0.482686, -0.824653, -0.294892,
		-0.724373, 0.565169, -0.394802,
		40.179951, 32.849346, 26.542887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.493004, 32.144199, 26.260410>,  <40.687012, 32.453728, 26.819248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.493004, 32.144199, 26.260410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.363293, 32.515419, 26.187132>,  <40.285465, 32.738152, 26.143164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.363293, 32.515419, 26.187132>,  <40.493004, 32.144199, 26.260410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.363293, 32.515419, 26.187132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401689, -0.040241, -0.914892,
		-0.856439, -0.370270, -0.359739,
		-0.324280, 0.928052, -0.183198,
		40.266010, 32.793835, 26.132174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.575138, 32.112293, 25.566204>,  <40.493004, 32.144199, 26.260410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.575138, 32.112293, 25.566204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.514332, 32.498531, 25.650602>,  <40.477848, 32.730274, 25.701241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.514332, 32.498531, 25.650602>,  <40.575138, 32.112293, 25.566204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.514332, 32.498531, 25.650602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414829, 0.256094, -0.873116,
		-0.897111, -0.045198, -0.439487,
		-0.152013, 0.965594, 0.210996,
		40.468727, 32.788208, 25.713902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.243591, 32.441322, 25.046797>,  <40.575138, 32.112293, 25.566204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.243591, 32.441322, 25.046797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.446308, 32.738796, 25.221193>,  <40.567940, 32.917282, 25.325830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.446308, 32.738796, 25.221193>,  <40.243591, 32.441322, 25.046797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.446308, 32.738796, 25.221193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376392, 0.264110, -0.888017,
		-0.775557, 0.614146, -0.146068,
		0.506795, 0.743687, 0.435992,
		40.598347, 32.961903, 25.351992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.116093, 33.024937, 24.597143>,  <40.243591, 32.441322, 25.046797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.116093, 33.024937, 24.597143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.419720, 33.132267, 24.834404>,  <40.601894, 33.196663, 24.976761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.419720, 33.132267, 24.834404>,  <40.116093, 33.024937, 24.597143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.419720, 33.132267, 24.834404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434006, 0.470544, -0.768262,
		-0.485245, 0.840590, 0.240720,
		0.759063, 0.268321, 0.593150,
		40.647438, 33.212765, 25.012348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214108, 33.850151, 24.596813>,  <40.116093, 33.024937, 24.597143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.214108, 33.850151, 24.596813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.564037, 33.674206, 24.677999>,  <40.773994, 33.568638, 24.726711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.564037, 33.674206, 24.677999>,  <40.214108, 33.850151, 24.596813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.564037, 33.674206, 24.677999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444811, 0.563420, -0.696204,
		0.191881, 0.699340, 0.688553,
		0.874828, -0.439864, 0.202965,
		40.826485, 33.542248, 24.738890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.646606, 34.432739, 24.593033>,  <40.214108, 33.850151, 24.596813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.646606, 34.432739, 24.593033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.923698, 34.144516, 24.605185>,  <41.089954, 33.971581, 24.612476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.923698, 34.144516, 24.605185>,  <40.646606, 34.432739, 24.593033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.923698, 34.144516, 24.605185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662861, 0.619533, -0.420469,
		0.284151, 0.311409, 0.906798,
		0.692729, -0.720558, 0.030380,
		41.131516, 33.928349, 24.614298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.264908, 34.819603, 24.694576>,  <40.646606, 34.432739, 24.593033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.264908, 34.819603, 24.694576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.346363, 34.454742, 24.552301>,  <41.395237, 34.235825, 24.466936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.346363, 34.454742, 24.552301>,  <41.264908, 34.819603, 24.694576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.346363, 34.454742, 24.552301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638598, 0.399127, -0.657944,
		0.742108, -0.093160, 0.663774,
		0.203636, -0.912151, -0.355688,
		41.407455, 34.181099, 24.445595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.036434, 34.840637, 24.533363>,  <41.264908, 34.819603, 24.694576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.036434, 34.840637, 24.533363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.880291, 34.538033, 24.323484>,  <41.786606, 34.356468, 24.197557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.880291, 34.538033, 24.323484>,  <42.036434, 34.840637, 24.533363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.880291, 34.538033, 24.323484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537624, 0.275340, -0.796962,
		0.747384, -0.593188, 0.299241,
		-0.390355, -0.756516, -0.524697,
		41.763184, 34.311077, 24.166075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.552998, 34.431068, 24.093130>,  <42.036434, 34.840637, 24.533363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.552998, 34.431068, 24.093130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.211796, 34.354095, 23.899078>,  <42.007072, 34.307911, 23.782646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.211796, 34.354095, 23.899078>,  <42.552998, 34.431068, 24.093130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.211796, 34.354095, 23.899078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440582, 0.232778, -0.867008,
		0.279763, -0.953303, -0.113781,
		-0.853006, -0.192427, -0.485131,
		41.955894, 34.296368, 23.753540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.789162, 34.207901, 23.427620>,  <42.552998, 34.431068, 24.093130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.789162, 34.207901, 23.427620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.406208, 34.312801, 23.379204>,  <42.176437, 34.375740, 23.350155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.406208, 34.312801, 23.379204>,  <42.789162, 34.207901, 23.427620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.406208, 34.312801, 23.379204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235803, 0.467665, -0.851872,
		-0.166797, -0.844106, -0.509572,
		-0.957379, 0.262249, -0.121038,
		42.118996, 34.391476, 23.342892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.610962, 34.084095, 22.643808>,  <42.789162, 34.207901, 23.427620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.610962, 34.084095, 22.643808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.323868, 34.330891, 22.772921>,  <42.151611, 34.478970, 22.850388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.323868, 34.330891, 22.772921>,  <42.610962, 34.084095, 22.643808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.323868, 34.330891, 22.772921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047733, 0.418863, -0.906794,
		-0.694682, -0.666242, -0.271180,
		-0.717731, 0.616990, 0.322778,
		42.108547, 34.515987, 22.869755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.208477, 34.070751, 22.059263>,  <42.610962, 34.084095, 22.643808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.208477, 34.070751, 22.059263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.139214, 34.413074, 22.254240>,  <42.097656, 34.618469, 22.371227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.139214, 34.413074, 22.254240>,  <42.208477, 34.070751, 22.059263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.139214, 34.413074, 22.254240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081898, 0.480695, -0.873055,
		-0.981483, -0.191099, -0.013148,
		-0.173160, 0.855812, 0.487444,
		42.087265, 34.669819, 22.400473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.585484, 34.460258, 21.908260>,  <42.208477, 34.070751, 22.059263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.585484, 34.460258, 21.908260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.885441, 34.706985, 22.003927>,  <42.065414, 34.855022, 22.061327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.885441, 34.706985, 22.003927>,  <41.585484, 34.460258, 21.908260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.885441, 34.706985, 22.003927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076908, 0.440344, -0.894529,
		-0.657078, 0.652404, 0.377648,
		0.749889, 0.616819, 0.239166,
		42.110409, 34.892033, 22.075678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.227028, 35.163601, 22.046793>,  <41.585484, 34.460258, 21.908260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.227028, 35.163601, 22.046793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.610622, 35.157635, 21.933565>,  <41.840778, 35.154057, 21.865629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.610622, 35.157635, 21.933565>,  <41.227028, 35.163601, 22.046793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.610622, 35.157635, 21.933565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243446, 0.468201, -0.849424,
		0.145203, 0.883496, 0.445366,
		0.958984, -0.014916, -0.283068,
		41.898319, 35.153160, 21.848644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.563934, 34.907223, 21.921055>,  <41.227028, 35.163601, 22.046793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.563934, 34.907223, 21.921055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.279018, 35.036655, 21.671917>,  <40.108067, 35.114315, 21.522434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.279018, 35.036655, 21.671917>,  <40.563934, 34.907223, 21.921055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.279018, 35.036655, 21.671917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693300, -0.462702, 0.552486,
		-0.109419, 0.825351, 0.553916,
		-0.712293, 0.323578, -0.622845,
		40.065331, 35.133728, 21.485064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.898220, 35.010551, 22.274143>,  <40.563934, 34.907223, 21.921055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.898220, 35.010551, 22.274143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.810349, 34.910618, 21.896927>,  <39.757626, 34.850658, 21.670597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.810349, 34.910618, 21.896927>,  <39.898220, 35.010551, 22.274143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.810349, 34.910618, 21.896927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599151, -0.728319, 0.332519,
		-0.769908, 0.638072, 0.010311,
		-0.219681, -0.249831, -0.943040,
		39.744446, 34.835670, 21.614016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.124573, 35.004646, 22.116102>,  <39.898220, 35.010551, 22.274143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.124573, 35.004646, 22.116102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.306255, 34.750687, 21.866112>,  <39.415264, 34.598309, 21.716118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.306255, 34.750687, 21.866112>,  <39.124573, 35.004646, 22.116102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306255, 34.750687, 21.866112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565356, -0.747576, 0.348573,
		-0.688528, 0.195011, -0.698499,
		0.454205, -0.634903, -0.624977,
		39.442516, 34.560215, 21.678619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563259, 34.566956, 21.790852>,  <39.124573, 35.004646, 22.116102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.563259, 34.566956, 21.790852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.905991, 34.360813, 21.784531>,  <39.111629, 34.237129, 21.780737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.905991, 34.360813, 21.784531>,  <38.563259, 34.566956, 21.790852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.905991, 34.360813, 21.784531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439136, -0.745487, 0.501407,
		-0.270184, -0.422682, -0.865067,
		0.856832, -0.515354, -0.015804,
		39.163040, 34.206207, 21.779789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371468, 33.936295, 21.894369>,  <38.563259, 34.566956, 21.790852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371468, 33.936295, 21.894369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.758797, 33.858681, 21.957235>,  <38.991196, 33.812111, 21.994955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.758797, 33.858681, 21.957235>,  <38.371468, 33.936295, 21.894369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.758797, 33.858681, 21.957235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249687, -0.759194, 0.601066,
		0.002689, -0.621268, -0.783594,
		0.968323, -0.194037, 0.157164,
		39.049294, 33.800468, 22.004385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.484058, 33.209446, 21.830608>,  <38.371468, 33.936295, 21.894369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.484058, 33.209446, 21.830608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.778561, 33.346981, 22.063744>,  <38.955261, 33.429504, 22.203625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.778561, 33.346981, 22.063744>,  <38.484058, 33.209446, 21.830608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.778561, 33.346981, 22.063744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141782, -0.763795, 0.629695,
		0.661685, -0.546252, -0.513597,
		0.736255, 0.343841, 0.582840,
		38.999435, 33.450134, 22.238596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553833, 32.576073, 22.147532>,  <38.484058, 33.209446, 21.830608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.553833, 32.576073, 22.147532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.727089, 32.881062, 22.339794>,  <38.831043, 33.064053, 22.455151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.727089, 32.881062, 22.339794>,  <38.553833, 32.576073, 22.147532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.727089, 32.881062, 22.339794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015826, -0.526759, 0.849867,
		0.901188, -0.375718, -0.216094,
		0.433140, 0.762470, 0.480655,
		38.857033, 33.109802, 22.483990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053043, 32.268936, 22.672773>,  <38.553833, 32.576073, 22.147532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.053043, 32.268936, 22.672773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.961353, 32.637009, 22.799723>,  <38.906338, 32.857853, 22.875893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.961353, 32.637009, 22.799723>,  <39.053043, 32.268936, 22.672773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.961353, 32.637009, 22.799723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000563, -0.326182, 0.945307,
		0.973373, 0.216511, 0.075288,
		-0.229227, 0.920178, 0.317375,
		38.892586, 32.913063, 22.894936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531944, 32.374138, 23.225710>,  <39.053043, 32.268936, 22.672773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.531944, 32.374138, 23.225710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.236012, 32.639732, 23.269115>,  <39.058453, 32.799091, 23.295158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.236012, 32.639732, 23.269115>,  <39.531944, 32.374138, 23.225710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.236012, 32.639732, 23.269115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102318, -0.270449, 0.957282,
		0.664971, 0.697121, 0.268024,
		-0.739828, 0.663988, 0.108513,
		39.014065, 32.838928, 23.301670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.520493, 32.761463, 23.870567>,  <39.531944, 32.374138, 23.225710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.520493, 32.761463, 23.870567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.139038, 32.800373, 23.756641>,  <38.910168, 32.823719, 23.688286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.139038, 32.800373, 23.756641>,  <39.520493, 32.761463, 23.870567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139038, 32.800373, 23.756641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300955, -0.299346, 0.905438,
		0.002815, 0.949174, 0.314741,
		-0.953634, 0.097271, -0.284816,
		38.852947, 32.829556, 23.671196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067863, 33.162987, 24.410410>,  <39.520493, 32.761463, 23.870567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.067863, 33.162987, 24.410410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.840015, 32.914780, 24.194818>,  <38.703308, 32.765858, 24.065464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.840015, 32.914780, 24.194818>,  <39.067863, 33.162987, 24.410410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.840015, 32.914780, 24.194818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477100, -0.284344, 0.831579,
		-0.669262, 0.730828, -0.134080,
		-0.569617, -0.620514, -0.538979,
		38.669128, 32.728626, 24.033125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499268, 33.295742, 24.635086>,  <39.067863, 33.162987, 24.410410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.499268, 33.295742, 24.635086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.448917, 32.939659, 24.459959>,  <38.418705, 32.726009, 24.354883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.448917, 32.939659, 24.459959>,  <38.499268, 33.295742, 24.635086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448917, 32.939659, 24.459959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342999, -0.375053, 0.861213,
		-0.930863, 0.258580, -0.258129,
		-0.125880, -0.890209, -0.437815,
		38.411152, 32.672596, 24.328615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911983, 32.972778, 24.937202>,  <38.499268, 33.295742, 24.635086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.911983, 32.972778, 24.937202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.040249, 32.639469, 24.757051>,  <38.117207, 32.439484, 24.648960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.040249, 32.639469, 24.757051>,  <37.911983, 32.972778, 24.937202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040249, 32.639469, 24.757051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317119, -0.542489, 0.777908,
		-0.892532, -0.106621, -0.438200,
		0.320660, -0.833269, -0.450377,
		38.136448, 32.389488, 24.621939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342831, 32.539219, 24.897106>,  <37.911983, 32.972778, 24.937202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.342831, 32.539219, 24.897106> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.680244, 32.324738, 24.884844>,  <37.882690, 32.196049, 24.877485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.680244, 32.324738, 24.884844>,  <37.342831, 32.539219, 24.897106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.680244, 32.324738, 24.884844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335823, -0.571125, 0.749026,
		-0.419141, -0.621531, -0.661831,
		0.843531, -0.536206, -0.030658,
		37.933304, 32.163876, 24.875647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179638, 31.876520, 25.176441>,  <37.342831, 32.539219, 24.897106>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179638, 31.876520, 25.176441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.578957, 31.884069, 25.198528>,  <37.818546, 31.888599, 25.211781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.578957, 31.884069, 25.198528>,  <37.179638, 31.876520, 25.176441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.578957, 31.884069, 25.198528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034602, -0.570532, 0.820546,
		0.046989, -0.821058, -0.568907,
		0.998296, 0.018871, 0.055219,
		37.878445, 31.889730, 25.215094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350967, 31.126825, 25.225613>,  <37.179638, 31.876520, 25.176441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.350967, 31.126825, 25.225613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.678806, 31.314266, 25.357477>,  <37.875507, 31.426731, 25.436596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.678806, 31.314266, 25.357477>,  <37.350967, 31.126825, 25.225613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.678806, 31.314266, 25.357477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039948, -0.527240, 0.848777,
		0.571550, -0.708822, -0.413403,
		0.819594, 0.468604, 0.329660,
		37.924686, 31.454847, 25.456375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.816170, 30.569450, 25.622444>,  <37.350967, 31.126825, 25.225613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.816170, 30.569450, 25.622444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.930672, 30.926767, 25.761059>,  <37.999371, 31.141157, 25.844227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.930672, 30.926767, 25.761059>,  <37.816170, 30.569450, 25.622444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.930672, 30.926767, 25.761059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030299, -0.369930, 0.928566,
		0.957675, -0.255304, -0.132959,
		0.286252, 0.893293, 0.346537,
		38.016548, 31.194756, 25.865021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426815, 30.408327, 26.086578>,  <37.816170, 30.569450, 25.622444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.426815, 30.408327, 26.086578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.239933, 30.756409, 26.149145>,  <38.127804, 30.965258, 26.186686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.239933, 30.756409, 26.149145>,  <38.426815, 30.408327, 26.086578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.239933, 30.756409, 26.149145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229509, -0.290214, 0.929033,
		0.853842, 0.398148, 0.335308,
		-0.467204, 0.870203, 0.156418,
		38.099773, 31.017469, 26.196070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.673489, 30.707027, 26.778444>,  <38.426815, 30.408327, 26.086578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.673489, 30.707027, 26.778444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.315399, 30.874018, 26.716103>,  <38.100544, 30.974211, 26.678698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.315399, 30.874018, 26.716103>,  <38.673489, 30.707027, 26.778444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.315399, 30.874018, 26.716103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311590, -0.336397, 0.888678,
		0.318572, 0.844128, 0.431231,
		-0.895223, 0.417475, -0.155855,
		38.046833, 30.999260, 26.669346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841042, 31.412386, 26.635561>,  <38.673489, 30.707027, 26.778444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841042, 31.412386, 26.635561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.059669, 31.182676, 26.391768>,  <39.190845, 31.044851, 26.245491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.059669, 31.182676, 26.391768>,  <38.841042, 31.412386, 26.635561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.059669, 31.182676, 26.391768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515992, -0.342280, 0.785237,
		-0.659554, -0.743677, 0.109240,
		0.546571, -0.574273, -0.609483,
		39.223640, 31.010395, 26.208923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.753559, 31.383177, 32.216026> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.392895, 31.539253, 32.290607>,  <40.176498, 31.632900, 32.335354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.392895, 31.539253, 32.290607>,  <40.753559, 31.383177, 32.216026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.392895, 31.539253, 32.290607> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068080, -0.297695, 0.952230,
		0.427058, 0.871280, 0.241854,
		-0.901658, 0.390192, 0.186449,
		40.122398, 31.656311, 32.346542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.724270, 31.716265, 32.890953>,  <40.753559, 31.383177, 32.216026>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.724270, 31.716265, 32.890953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.336628, 31.637390, 32.831688>,  <40.104042, 31.590065, 32.796131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.336628, 31.637390, 32.831688>,  <40.724270, 31.716265, 32.890953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.336628, 31.637390, 32.831688> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135048, -0.078431, 0.987730,
		-0.206386, 0.977224, 0.049379,
		-0.969106, -0.197185, -0.148159,
		40.045895, 31.578234, 32.787239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.550564, 31.890945, 33.496243>,  <40.724270, 31.716265, 32.890953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.550564, 31.890945, 33.496243> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.212124, 31.717691, 33.371983>,  <40.009060, 31.613739, 33.297428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.212124, 31.717691, 33.371983>,  <40.550564, 31.890945, 33.496243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.212124, 31.717691, 33.371983> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388258, 0.101513, 0.915943,
		-0.365193, 0.895594, -0.254059,
		-0.846103, -0.433136, -0.310650,
		39.958294, 31.587751, 33.278790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874542, 32.368492, 33.602863>,  <40.550564, 31.890945, 33.496243>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.874542, 32.368492, 33.602863> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.789936, 31.977966, 33.584686>,  <39.739174, 31.743650, 33.573780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.789936, 31.977966, 33.584686>,  <39.874542, 32.368492, 33.602863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.789936, 31.977966, 33.584686> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498790, 0.067841, 0.864064,
		-0.840518, 0.205426, -0.501327,
		-0.211511, -0.976318, -0.045443,
		39.726482, 31.685070, 33.571053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233116, 32.403877, 33.827621>,  <39.874542, 32.368492, 33.602863>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.233116, 32.403877, 33.827621> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.320789, 32.014881, 33.859192>,  <39.373394, 31.781485, 33.878136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.320789, 32.014881, 33.859192>,  <39.233116, 32.403877, 33.827621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.320789, 32.014881, 33.859192> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476796, -0.036182, 0.878269,
		-0.851248, -0.230134, -0.471608,
		0.219183, -0.972486, 0.078927,
		39.386543, 31.723135, 33.882870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.600468, 32.058147, 34.119415>,  <39.233116, 32.403877, 33.827621>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.600468, 32.058147, 34.119415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.884747, 31.789549, 34.203327>,  <39.055313, 31.628389, 34.253674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.884747, 31.789549, 34.203327>,  <38.600468, 32.058147, 34.119415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884747, 31.789549, 34.203327> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500788, -0.273461, 0.821237,
		-0.494092, -0.688702, -0.530625,
		0.710693, -0.671497, 0.209779,
		39.097954, 31.588100, 34.266262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224850, 31.444420, 34.033638>,  <38.600468, 32.058147, 34.119415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224850, 31.444420, 34.033638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.554386, 31.412157, 34.258060>,  <38.752110, 31.392799, 34.392712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.554386, 31.412157, 34.258060>,  <38.224850, 31.444420, 34.033638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.554386, 31.412157, 34.258060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546853, -0.373515, 0.749292,
		0.149127, -0.924111, -0.351824,
		0.823840, -0.080656, 0.561054,
		38.801537, 31.387960, 34.426376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165901, 30.877363, 34.386795>,  <38.224850, 31.444420, 34.033638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165901, 30.877363, 34.386795> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.451859, 31.049913, 34.606918>,  <38.623432, 31.153442, 34.738995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.451859, 31.049913, 34.606918>,  <38.165901, 30.877363, 34.386795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451859, 31.049913, 34.606918> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417241, -0.368378, 0.830787,
		0.561103, -0.823537, -0.083364,
		0.714894, 0.431374, 0.550312,
		38.666328, 31.179325, 34.772011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452652, 30.382271, 34.897205>,  <38.165901, 30.877363, 34.386795>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.452652, 30.382271, 34.897205> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.525356, 30.749393, 35.038399>,  <38.568977, 30.969667, 35.123116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.525356, 30.749393, 35.038399>,  <38.452652, 30.382271, 34.897205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525356, 30.749393, 35.038399> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479566, -0.230650, 0.846650,
		0.858476, -0.323164, 0.398226,
		0.181756, 0.917805, 0.352986,
		38.579884, 31.024734, 35.144295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662685, 30.272224, 35.643135>,  <38.452652, 30.382271, 34.897205>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.662685, 30.272224, 35.643135> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.570644, 30.659878, 35.607727>,  <38.515419, 30.892469, 35.586483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.570644, 30.659878, 35.607727>,  <38.662685, 30.272224, 35.643135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570644, 30.659878, 35.607727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443611, -0.023491, 0.895912,
		0.866177, 0.245421, 0.435322,
		-0.230102, 0.969132, -0.088524,
		38.501614, 30.950617, 35.581169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701729, 30.540901, 36.379536>,  <38.662685, 30.272224, 35.643135>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.701729, 30.540901, 36.379536> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.493187, 30.810038, 36.169594>,  <38.368061, 30.971519, 36.043629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.493187, 30.810038, 36.169594>,  <38.701729, 30.540901, 36.379536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493187, 30.810038, 36.169594> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605645, 0.141530, 0.783048,
		0.601150, 0.726122, 0.333716,
		-0.521357, 0.672842, -0.524853,
		38.336781, 31.011890, 36.012138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627895, 31.128773, 36.777302>,  <38.701729, 30.540901, 36.379536>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.627895, 31.128773, 36.777302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.316612, 31.155800, 36.527554>,  <38.129845, 31.172016, 36.377705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.316612, 31.155800, 36.527554>,  <38.627895, 31.128773, 36.777302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316612, 31.155800, 36.527554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619489, 0.080639, 0.780852,
		0.103110, 0.994451, -0.020895,
		-0.778204, 0.067570, -0.624366,
		38.083153, 31.176071, 36.340244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189037, 31.483555, 37.078140>,  <38.627895, 31.128773, 36.777302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189037, 31.483555, 37.078140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.933018, 31.347685, 36.802471>,  <37.779408, 31.266163, 36.637070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.933018, 31.347685, 36.802471>,  <38.189037, 31.483555, 37.078140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933018, 31.347685, 36.802471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695783, -0.124243, 0.707425,
		-0.325921, 0.932300, -0.156820,
		-0.640048, -0.339677, -0.689172,
		37.741005, 31.245781, 36.595718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103889, 32.223698, 36.935577>,  <38.189037, 31.483555, 37.078140>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103889, 32.223698, 36.935577> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.930454, 31.960644, 36.689156>,  <37.826393, 31.802811, 36.541302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.930454, 31.960644, 36.689156>,  <38.103889, 32.223698, 36.935577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.930454, 31.960644, 36.689156> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398655, -0.473122, 0.785640,
		-0.808132, 0.586234, -0.057031,
		-0.433586, -0.657636, -0.616050,
		37.800377, 31.763353, 36.504341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048065, 32.037876, 37.698982>,  <38.103889, 32.223698, 36.935577>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.048065, 32.037876, 37.698982> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.026695, 32.348652, 37.949905>,  <38.013874, 32.535118, 38.100460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.026695, 32.348652, 37.949905>,  <38.048065, 32.037876, 37.698982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.026695, 32.348652, 37.949905> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496737, 0.524286, -0.691647,
		-0.866256, -0.348555, 0.357926,
		-0.053421, 0.776939, 0.627306,
		38.010670, 32.581734, 38.138096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349125, 32.201996, 37.718548>,  <38.048065, 32.037876, 37.698982>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349125, 32.201996, 37.718548> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.548248, 32.524902, 37.845356>,  <37.667721, 32.718647, 37.921440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.548248, 32.524902, 37.845356>,  <37.349125, 32.201996, 37.718548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548248, 32.524902, 37.845356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472343, 0.558920, -0.681543,
		-0.727378, 0.189535, 0.659543,
		0.497808, 0.807270, 0.317021,
		37.697590, 32.767082, 37.940464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850910, 32.722801, 37.893215>,  <37.349125, 32.201996, 37.718548>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850910, 32.722801, 37.893215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.185913, 32.934898, 37.840424>,  <37.386913, 33.062157, 37.808750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.185913, 32.934898, 37.840424>,  <36.850910, 32.722801, 37.893215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185913, 32.934898, 37.840424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488309, 0.617882, -0.616260,
		-0.245224, 0.580568, 0.776406,
		0.837508, 0.530247, -0.131978,
		37.437164, 33.093971, 37.800831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565697, 33.383682, 37.638485>,  <36.850910, 32.722801, 37.893215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565697, 33.383682, 37.638485> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.950199, 33.385468, 37.528236>,  <37.180901, 33.386539, 37.462086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.950199, 33.385468, 37.528236>,  <36.565697, 33.383682, 37.638485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.950199, 33.385468, 37.528236> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200725, 0.696656, -0.688753,
		0.188939, 0.717392, 0.670560,
		0.961255, 0.004466, -0.275624,
		37.238575, 33.386806, 37.445549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.749538, 34.183842, 37.613182>,  <36.565697, 33.383682, 37.638485>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.749538, 34.183842, 37.613182> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.020248, 33.989822, 37.391659>,  <37.182674, 33.873409, 37.258747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.020248, 33.989822, 37.391659>,  <36.749538, 34.183842, 37.613182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.020248, 33.989822, 37.391659> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061869, 0.712124, -0.699323,
		0.733584, 0.507549, 0.451939,
		0.676777, -0.485051, -0.553804,
		37.223282, 33.844307, 37.225517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327835, 34.658348, 37.446041>,  <36.749538, 34.183842, 37.613182>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.327835, 34.658348, 37.446041> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.303509, 34.392757, 37.147930>,  <37.288914, 34.233402, 36.969063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.303509, 34.392757, 37.147930>,  <37.327835, 34.658348, 37.446041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303509, 34.392757, 37.147930> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061730, 0.747732, -0.661125,
		0.996239, 0.005802, -0.086458,
		-0.060812, -0.663975, -0.745278,
		37.285267, 34.193565, 36.924347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648045, 35.039165, 36.786568>,  <37.327835, 34.658348, 37.446041>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.648045, 35.039165, 36.786568> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.437840, 34.731411, 36.641304>,  <37.311718, 34.546757, 36.554146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.437840, 34.731411, 36.641304>,  <37.648045, 35.039165, 36.786568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.437840, 34.731411, 36.641304> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090828, 0.475146, -0.875206,
		0.845924, -0.426946, -0.319576,
		-0.525511, -0.769385, -0.363159,
		37.280186, 34.500595, 36.532356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914715, 35.003170, 36.196915>,  <37.648045, 35.039165, 36.786568>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.914715, 35.003170, 36.196915> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.582386, 34.786343, 36.146469>,  <37.382988, 34.656246, 36.116203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.582386, 34.786343, 36.146469>,  <37.914715, 35.003170, 36.196915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582386, 34.786343, 36.146469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086060, 0.349003, -0.933161,
		0.549851, -0.764433, -0.336609,
		-0.830818, -0.542069, -0.126113,
		37.333141, 34.623722, 36.108635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983334, 34.506939, 35.491165>,  <37.914715, 35.003170, 36.196915>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.983334, 34.506939, 35.491165> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.592648, 34.552082, 35.564152>,  <37.358234, 34.579166, 35.607944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.592648, 34.552082, 35.564152>,  <37.983334, 34.506939, 35.491165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.592648, 34.552082, 35.564152> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142772, 0.292908, -0.945421,
		-0.160142, -0.949457, -0.269974,
		-0.976714, 0.112857, 0.182463,
		37.299633, 34.585938, 35.618889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.721676, 34.209160, 34.915176>,  <37.983334, 34.506939, 35.491165>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.721676, 34.209160, 34.915176> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.425961, 34.431259, 35.067570>,  <37.248531, 34.564518, 35.159008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.425961, 34.431259, 35.067570>,  <37.721676, 34.209160, 34.915176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.425961, 34.431259, 35.067570> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202941, 0.355758, -0.912278,
		-0.642078, -0.751756, -0.150326,
		-0.739291, 0.555246, 0.380987,
		37.204174, 34.597832, 35.181866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145695, 34.164078, 34.390862>,  <37.721676, 34.209160, 34.915176>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.145695, 34.164078, 34.390862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.048409, 34.467896, 34.632172>,  <36.990036, 34.650185, 34.776958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.048409, 34.467896, 34.632172>,  <37.145695, 34.164078, 34.390862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048409, 34.467896, 34.632172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284831, 0.538607, -0.792953,
		-0.927210, -0.364689, 0.085344,
		-0.243214, 0.759542, 0.603276,
		36.975445, 34.695759, 34.813156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562988, 34.490517, 34.098389>,  <37.145695, 34.164078, 34.390862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562988, 34.490517, 34.098389> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.682472, 34.787853, 34.337795>,  <36.754162, 34.966255, 34.481438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.682472, 34.787853, 34.337795>,  <36.562988, 34.490517, 34.098389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.682472, 34.787853, 34.337795> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266021, 0.667143, -0.695811,
		-0.916519, 0.048627, 0.397025,
		0.298707, 0.743341, 0.598513,
		36.772083, 35.010857, 34.517349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102951, 35.119793, 33.991611>,  <36.562988, 34.490517, 34.098389>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102951, 35.119793, 33.991611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.437973, 35.265747, 34.154266>,  <36.638988, 35.353317, 34.251858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.437973, 35.265747, 34.154266>,  <36.102951, 35.119793, 33.991611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437973, 35.265747, 34.154266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049049, 0.691062, -0.721129,
		-0.544140, 0.623934, 0.560908,
		0.837560, 0.364883, 0.406638,
		36.689240, 35.375214, 34.276257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095436, 35.870754, 33.865765>,  <36.102951, 35.119793, 33.991611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.095436, 35.870754, 33.865765> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.477062, 35.776844, 33.940212>,  <36.706036, 35.720497, 33.984882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.477062, 35.776844, 33.940212>,  <36.095436, 35.870754, 33.865765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477062, 35.776844, 33.940212> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297576, 0.670385, -0.679730,
		0.034813, 0.703891, 0.709455,
		0.954063, -0.234780, 0.186123,
		36.763283, 35.706409, 33.996048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591290, 36.479706, 33.865143>,  <36.095436, 35.870754, 33.865765>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.591290, 36.479706, 33.865143> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.364582, 36.384758, 33.549568>,  <35.228558, 36.327789, 33.360222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.364582, 36.384758, 33.549568>,  <35.591290, 36.479706, 33.865143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.364582, 36.384758, 33.549568> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697566, -0.371261, 0.612835,
		-0.438372, 0.897674, 0.044838,
		-0.566773, -0.237372, -0.788937,
		35.194550, 36.313545, 33.312885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938091, 36.719139, 33.998943>,  <35.591290, 36.479706, 33.865143>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938091, 36.719139, 33.998943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.911236, 36.414379, 33.741261>,  <34.895123, 36.231522, 33.586651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.911236, 36.414379, 33.741261>,  <34.938091, 36.719139, 33.998943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911236, 36.414379, 33.741261> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614339, -0.477186, 0.628395,
		-0.786180, 0.437950, -0.436028,
		-0.067139, -0.761901, -0.644204,
		34.891094, 36.185810, 33.548000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.229599, 36.583752, 33.938347>,  <34.938091, 36.719139, 33.998943>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.229599, 36.583752, 33.938347> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.392544, 36.249062, 33.791946>,  <34.490311, 36.048248, 33.704105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.392544, 36.249062, 33.791946>,  <34.229599, 36.583752, 33.938347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.392544, 36.249062, 33.791946> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674915, -0.545800, 0.496580,
		-0.615261, 0.044731, -0.787053,
		0.407361, -0.836721, -0.365999,
		34.514751, 35.998047, 33.682148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620110, 36.123600, 33.721813>,  <34.229599, 36.583752, 33.938347>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620110, 36.123600, 33.721813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.921238, 35.862995, 33.759335>,  <34.101913, 35.706631, 33.781849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.921238, 35.862995, 33.759335>,  <33.620110, 36.123600, 33.721813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.921238, 35.862995, 33.759335> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584932, -0.596806, 0.549252,
		-0.301861, -0.468355, -0.830375,
		0.752817, -0.651511, 0.093803,
		34.147083, 35.667542, 33.787476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.402817, 35.455837, 33.517628>,  <33.620110, 36.123600, 33.721813>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.402817, 35.455837, 33.517628> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.727665, 35.382988, 33.739361>,  <33.922573, 35.339279, 33.872402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.727665, 35.382988, 33.739361>,  <33.402817, 35.455837, 33.517628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.727665, 35.382988, 33.739361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548652, -0.561696, 0.619257,
		0.198589, -0.807050, -0.556087,
		0.812123, -0.182120, 0.554336,
		33.971302, 35.328350, 33.905663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.250248, 34.758251, 33.541889>,  <33.402817, 35.455837, 33.517628>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.250248, 34.758251, 33.541889> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.493805, 34.834496, 33.849892>,  <33.639938, 34.880241, 34.034695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.493805, 34.834496, 33.849892>,  <33.250248, 34.758251, 33.541889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.493805, 34.834496, 33.849892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649315, -0.437837, 0.621843,
		0.455669, -0.878615, -0.142829,
		0.608897, 0.190614, 0.770007,
		33.676476, 34.891678, 34.080894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436821, 34.161789, 33.952709>,  <33.250248, 34.758251, 33.541889>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436821, 34.161789, 33.952709> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.502556, 34.461105, 34.209785>,  <33.541996, 34.640694, 34.364033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.502556, 34.461105, 34.209785>,  <33.436821, 34.161789, 33.952709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.502556, 34.461105, 34.209785> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596499, -0.443532, 0.668931,
		0.785610, -0.493294, 0.373468,
		0.164334, 0.748292, 0.642692,
		33.551857, 34.685593, 34.402592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.558620, 33.924900, 34.652245>,  <33.436821, 34.161789, 33.952709>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.558620, 33.924900, 34.652245> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.420132, 34.297302, 34.698471>,  <33.337036, 34.520744, 34.726208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.420132, 34.297302, 34.698471>,  <33.558620, 33.924900, 34.652245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420132, 34.297302, 34.698471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563057, -0.304744, 0.768178,
		0.750396, 0.200895, 0.629720,
		-0.346227, 0.931006, 0.115563,
		33.316265, 34.576603, 34.733139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602013, 33.894569, 35.325928>,  <33.558620, 33.924900, 34.652245>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602013, 33.894569, 35.325928> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.404671, 34.230770, 35.236343>,  <33.286266, 34.432491, 35.182590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.404671, 34.230770, 35.236343>,  <33.602013, 33.894569, 35.325928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.404671, 34.230770, 35.236343> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638121, -0.174753, 0.749843,
		0.591106, 0.512852, 0.622556,
		-0.493352, 0.840503, -0.223964,
		33.256664, 34.482922, 35.169155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.456825, 34.117222, 35.925175>,  <33.602013, 33.894569, 35.325928>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.456825, 34.117222, 35.925175> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.191956, 34.293373, 35.682655>,  <33.033035, 34.399063, 35.537144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.191956, 34.293373, 35.682655>,  <33.456825, 34.117222, 35.925175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.191956, 34.293373, 35.682655> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665072, 0.027407, 0.746276,
		0.345257, 0.897396, 0.274732,
		-0.662175, 0.440374, -0.606296,
		32.993301, 34.425484, 35.500767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.197392, 34.763168, 36.236736>,  <33.456825, 34.117222, 35.925175>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.197392, 34.763168, 36.236736> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.914474, 34.630215, 35.987175>,  <32.744724, 34.550442, 35.837437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.914474, 34.630215, 35.987175>,  <33.197392, 34.763168, 36.236736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.914474, 34.630215, 35.987175> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627366, -0.111621, 0.770683,
		-0.325805, 0.936515, -0.129579,
		-0.707292, -0.332386, -0.623905,
		32.702286, 34.530499, 35.800003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.566746, 35.171211, 36.384861>,  <33.197392, 34.763168, 36.236736>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.566746, 35.171211, 36.384861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.454903, 34.816502, 36.237644>,  <32.387798, 34.603676, 36.149315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.454903, 34.816502, 36.237644>,  <32.566746, 35.171211, 36.384861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.454903, 34.816502, 36.237644> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681921, -0.086426, 0.726302,
		-0.675874, 0.454052, -0.580545,
		-0.279604, -0.886774, -0.368041,
		32.371021, 34.550468, 36.127232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.359524, 38.751102, 30.538567> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302181, 38.400688, 30.354389>,  <36.267776, 38.190437, 30.243883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302181, 38.400688, 30.354389>,  <36.359524, 38.751102, 30.538567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.302181, 38.400688, 30.354389> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394314, -0.376165, 0.838461,
		-0.907725, 0.301759, -0.291507,
		-0.143359, -0.876037, -0.460442,
		36.259174, 38.137878, 30.216257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.737591, 38.494877, 30.825592>,  <36.359524, 38.751102, 30.538567>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.737591, 38.494877, 30.825592> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942623, 38.178757, 30.691315>,  <36.065643, 37.989086, 30.610748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942623, 38.178757, 30.691315>,  <35.737591, 38.494877, 30.825592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942623, 38.178757, 30.691315> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305302, -0.533162, 0.789005,
		-0.802528, -0.301942, -0.514568,
		0.512582, -0.790297, -0.335694,
		36.096397, 37.941669, 30.590607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206059, 37.954704, 30.975901>,  <35.737591, 38.494877, 30.825592>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206059, 37.954704, 30.975901> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564030, 37.791325, 30.904032>,  <35.778812, 37.693298, 30.860910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564030, 37.791325, 30.904032>,  <35.206059, 37.954704, 30.975901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.564030, 37.791325, 30.904032> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202138, -0.730061, 0.652803,
		-0.397806, -0.547891, -0.735911,
		0.894925, -0.408444, -0.179673,
		35.832508, 37.668793, 30.850130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.137135, 37.303844, 30.728935>,  <35.206059, 37.954704, 30.975901>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.137135, 37.303844, 30.728935> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458351, 37.334000, 30.965391>,  <35.651081, 37.352093, 31.107265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458351, 37.334000, 30.965391>,  <35.137135, 37.303844, 30.728935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.458351, 37.334000, 30.965391> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368835, -0.716263, 0.592392,
		0.468070, -0.693747, -0.547381,
		0.803039, 0.075388, 0.591139,
		35.699265, 37.356617, 31.142733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.311203, 36.619045, 30.889341>,  <35.137135, 37.303844, 30.728935>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.311203, 36.619045, 30.889341> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527107, 36.810619, 31.166260>,  <35.656651, 36.925564, 31.332411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527107, 36.810619, 31.166260>,  <35.311203, 36.619045, 30.889341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.527107, 36.810619, 31.166260> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306605, -0.654052, 0.691527,
		0.783995, -0.585523, -0.206190,
		0.539764, 0.478934, 0.692298,
		35.689037, 36.954300, 31.373949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689957, 36.087196, 31.130917>,  <35.311203, 36.619045, 30.889341>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.689957, 36.087196, 31.130917> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706993, 36.385559, 31.396791>,  <35.717213, 36.564575, 31.556316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706993, 36.385559, 31.396791>,  <35.689957, 36.087196, 31.130917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.706993, 36.385559, 31.396791> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324137, -0.618988, 0.715394,
		0.945051, -0.245918, 0.215414,
		0.042589, 0.745907, 0.664687,
		35.719769, 36.609333, 31.596197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808311, 35.776020, 31.759916>,  <35.689957, 36.087196, 31.130917>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808311, 35.776020, 31.759916> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690983, 36.137341, 31.885149>,  <35.620586, 36.354134, 31.960289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690983, 36.137341, 31.885149>,  <35.808311, 35.776020, 31.759916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690983, 36.137341, 31.885149> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225911, -0.383700, 0.895399,
		0.928940, 0.191908, 0.316611,
		-0.293318, 0.903297, 0.313080,
		35.602989, 36.408329, 31.979073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087898, 35.894218, 32.488804>,  <35.808311, 35.776020, 31.759916>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.087898, 35.894218, 32.488804> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779831, 36.147350, 32.456894>,  <35.594990, 36.299229, 32.437748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779831, 36.147350, 32.456894>,  <36.087898, 35.894218, 32.488804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779831, 36.147350, 32.456894> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295677, -0.243398, 0.923760,
		0.565168, 0.735038, 0.374571,
		-0.770169, 0.632832, -0.079773,
		35.548779, 36.337200, 32.432961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118370, 36.368843, 33.151321>,  <36.087898, 35.894218, 32.488804>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118370, 36.368843, 33.151321> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743481, 36.362324, 33.011986>,  <35.518547, 36.358414, 32.928383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743481, 36.362324, 33.011986>,  <36.118370, 36.368843, 33.151321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.743481, 36.362324, 33.011986> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334917, -0.236239, 0.912152,
		-0.097159, 0.971558, 0.215951,
		-0.937225, -0.016298, -0.348344,
		35.462315, 36.357433, 32.907482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.499954, 36.543900, 33.782318>,  <36.118370, 36.368843, 33.151321>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.499954, 36.543900, 33.782318> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763599, 36.244171, 33.756729>,  <36.921787, 36.064335, 33.741375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763599, 36.244171, 33.756729>,  <36.499954, 36.543900, 33.782318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.763599, 36.244171, 33.756729> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552741, 0.540353, -0.634426,
		0.509955, 0.382798, 0.770333,
		0.659109, -0.749322, -0.063968,
		36.961330, 36.019375, 33.737537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161221, 36.877678, 33.924294>,  <36.499954, 36.543900, 33.782318>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.161221, 36.877678, 33.924294> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207710, 36.534855, 33.723518>,  <37.235603, 36.329159, 33.603054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207710, 36.534855, 33.723518>,  <37.161221, 36.877678, 33.924294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207710, 36.534855, 33.723518> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662475, 0.443420, -0.603744,
		0.740013, -0.262349, 0.619318,
		0.116226, -0.857060, -0.501936,
		37.242577, 36.277737, 33.572937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917198, 36.932728, 33.579407>,  <37.161221, 36.877678, 33.924294>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.917198, 36.932728, 33.579407> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770714, 36.606411, 33.400356>,  <37.682823, 36.410622, 33.292927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770714, 36.606411, 33.400356>,  <37.917198, 36.932728, 33.579407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.770714, 36.606411, 33.400356> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516857, 0.221688, -0.826870,
		0.773787, -0.534171, 0.340462,
		-0.366213, -0.815791, -0.447629,
		37.660851, 36.361675, 33.266068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447628, 36.633179, 33.212639>,  <37.917198, 36.932728, 33.579407>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.447628, 36.633179, 33.212639> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.164070, 36.445847, 33.001686>,  <37.993935, 36.333447, 32.875114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.164070, 36.445847, 33.001686>,  <38.447628, 36.633179, 33.212639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.164070, 36.445847, 33.001686> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466180, 0.250004, -0.848631,
		0.529290, -0.847445, 0.041101,
		-0.708893, -0.468332, -0.527386,
		37.951401, 36.305347, 32.843472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.740627, 35.980865, 32.796608>,  <38.447628, 36.633179, 33.212639>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.740627, 35.980865, 32.796608> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413342, 36.128185, 32.620026>,  <38.216972, 36.216576, 32.514076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413342, 36.128185, 32.620026>,  <38.740627, 35.980865, 32.796608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413342, 36.128185, 32.620026> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532629, 0.196562, -0.823207,
		-0.216414, -0.908691, -0.356997,
		-0.818213, 0.368300, -0.441456,
		38.167877, 36.238674, 32.487587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698429, 35.713577, 32.157200>,  <38.740627, 35.980865, 32.796608>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698429, 35.713577, 32.157200> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448837, 36.017181, 32.082855>,  <38.299080, 36.199345, 32.038250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448837, 36.017181, 32.082855>,  <38.698429, 35.713577, 32.157200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448837, 36.017181, 32.082855> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492931, 0.197760, -0.847296,
		-0.606354, -0.620314, -0.497540,
		-0.623983, 0.759014, -0.185859,
		38.261642, 36.244884, 32.027096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458076, 35.606918, 31.506084>,  <38.698429, 35.713577, 32.157200>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.458076, 35.606918, 31.506084> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421055, 35.994335, 31.598488>,  <38.398842, 36.226784, 31.653931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421055, 35.994335, 31.598488>,  <38.458076, 35.606918, 31.506084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.421055, 35.994335, 31.598488> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540340, 0.243729, -0.805375,
		-0.836341, 0.050282, -0.545899,
		-0.092556, 0.968539, 0.231010,
		38.393288, 36.284897, 31.667791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194180, 35.910202, 30.964039>,  <38.458076, 35.606918, 31.506084>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194180, 35.910202, 30.964039> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356251, 36.223293, 31.152998>,  <38.453495, 36.411148, 31.266373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356251, 36.223293, 31.152998>,  <38.194180, 35.910202, 30.964039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356251, 36.223293, 31.152998> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425352, 0.295988, -0.855258,
		-0.809263, 0.547468, -0.213009,
		0.405179, 0.782732, 0.472399,
		38.477806, 36.458115, 31.294718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053650, 36.530632, 30.584003>,  <38.194180, 35.910202, 30.964039>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053650, 36.530632, 30.584003> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366562, 36.642200, 30.806801>,  <38.554310, 36.709141, 30.940479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366562, 36.642200, 30.806801>,  <38.053650, 36.530632, 30.584003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.366562, 36.642200, 30.806801> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451609, 0.361930, -0.815510,
		-0.429060, 0.889498, 0.157164,
		0.782277, 0.278926, 0.556995,
		38.601246, 36.725880, 30.973900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196953, 37.240734, 30.441097>,  <38.053650, 36.530632, 30.584003>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.196953, 37.240734, 30.441097> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543995, 37.109425, 30.590498>,  <38.752220, 37.030640, 30.680138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543995, 37.109425, 30.590498>,  <38.196953, 37.240734, 30.441097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543995, 37.109425, 30.590498> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493309, 0.473700, -0.729558,
		0.062569, 0.817216, 0.572924,
		0.867601, -0.328276, 0.373502,
		38.804276, 37.010941, 30.702549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685154, 37.811531, 30.329872>,  <38.196953, 37.240734, 30.441097>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685154, 37.811531, 30.329872> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906704, 37.483276, 30.386127>,  <39.039635, 37.286324, 30.419880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906704, 37.483276, 30.386127>,  <38.685154, 37.811531, 30.329872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.906704, 37.483276, 30.386127> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652803, 0.323188, -0.685126,
		0.516785, 0.471286, 0.714719,
		0.553878, -0.820634, 0.140638,
		39.072868, 37.237087, 30.428318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.365505, 38.004326, 30.387388>,  <38.685154, 37.811531, 30.329872>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.365505, 38.004326, 30.387388> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364281, 37.622234, 30.269053>,  <39.363544, 37.392979, 30.198051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364281, 37.622234, 30.269053>,  <39.365505, 38.004326, 30.387388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.364281, 37.622234, 30.269053> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654332, 0.221801, -0.722948,
		0.756202, -0.195789, 0.624361,
		-0.003062, -0.955234, -0.295837,
		39.363361, 37.335663, 30.180302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.092697, 37.857601, 30.389952>,  <39.365505, 38.004326, 30.387388>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.092697, 37.857601, 30.389952> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.916183, 37.595394, 30.144819>,  <39.810276, 37.438068, 29.997740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.916183, 37.595394, 30.144819>,  <40.092697, 37.857601, 30.389952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.916183, 37.595394, 30.144819> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764217, 0.083438, -0.639539,
		0.470364, -0.750554, 0.464140,
		-0.441282, -0.655520, -0.612833,
		39.783798, 37.398739, 29.960970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.645931, 37.725567, 29.998745>,  <40.092697, 37.857601, 30.389952>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.645931, 37.725567, 29.998745> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.341293, 37.537975, 29.819849>,  <40.158508, 37.425419, 29.712511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.341293, 37.537975, 29.819849>,  <40.645931, 37.725567, 29.998745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.341293, 37.537975, 29.819849> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473342, 0.068801, -0.878188,
		0.442624, -0.880524, 0.169590,
		-0.761598, -0.468981, -0.447242,
		40.112816, 37.397282, 29.685677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.876186, 31.995171, 25.058104> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.015892, 32.183197, 25.382339>,  <35.099716, 32.296013, 25.576881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.015892, 32.183197, 25.382339>,  <34.876186, 31.995171, 25.058104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.015892, 32.183197, 25.382339> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129288, -0.832617, 0.538548,
		0.928063, -0.292893, -0.230026,
		0.349260, 0.470067, 0.810589,
		35.120670, 32.324219, 25.625517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226410, 31.491415, 25.357269>,  <34.876186, 31.995171, 25.058104>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.226410, 31.491415, 25.357269> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.214409, 31.759035, 25.654314>,  <35.207207, 31.919607, 25.832541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.214409, 31.759035, 25.654314>,  <35.226410, 31.491415, 25.357269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214409, 31.759035, 25.654314> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246546, -0.724946, 0.643170,
		0.968667, -0.163792, 0.186701,
		-0.030002, 0.669048, 0.742614,
		35.205410, 31.959749, 25.877098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.511406, 31.186214, 25.936207>,  <35.226410, 31.491415, 25.357269>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.511406, 31.186214, 25.936207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.310375, 31.480961, 26.117069>,  <35.189758, 31.657808, 26.225586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.310375, 31.480961, 26.117069>,  <35.511406, 31.186214, 25.936207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.310375, 31.480961, 26.117069> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292279, -0.637029, 0.713279,
		0.813629, 0.226320, 0.535526,
		-0.502574, 0.736867, 0.452157,
		35.159603, 31.702021, 26.252716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676540, 31.260233, 26.707281>,  <35.511406, 31.186214, 25.936207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676540, 31.260233, 26.707281> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.302307, 31.391651, 26.655512>,  <35.077766, 31.470503, 26.624451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.302307, 31.391651, 26.655512>,  <35.676540, 31.260233, 26.707281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.302307, 31.391651, 26.655512> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275781, -0.450929, 0.848886,
		0.220539, 0.829891, 0.512487,
		-0.935578, 0.328547, -0.129421,
		35.021633, 31.490215, 26.616686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447147, 31.501394, 27.323042>,  <35.676540, 31.260233, 26.707281>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.447147, 31.501394, 27.323042> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.097717, 31.484621, 27.129089>,  <34.888058, 31.474558, 27.012718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.097717, 31.484621, 27.129089>,  <35.447147, 31.501394, 27.323042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097717, 31.484621, 27.129089> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478410, -0.109027, 0.871342,
		-0.089402, 0.993154, 0.075183,
		-0.873574, -0.041932, -0.484882,
		34.835644, 31.472042, 26.983625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957584, 31.930868, 27.754696>,  <35.447147, 31.501394, 27.323042>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957584, 31.930868, 27.754696> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.773594, 31.658644, 27.526569>,  <34.663200, 31.495310, 27.389694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.773594, 31.658644, 27.526569>,  <34.957584, 31.930868, 27.754696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.773594, 31.658644, 27.526569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589702, -0.246052, 0.769227,
		-0.663832, 0.690143, -0.288150,
		-0.459977, -0.680560, -0.570316,
		34.635601, 31.454475, 27.355474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.336266, 31.988220, 27.936251>,  <34.957584, 31.930868, 27.754696>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.336266, 31.988220, 27.936251> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.362091, 31.627775, 27.764751>,  <34.377586, 31.411509, 27.661852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.362091, 31.627775, 27.764751>,  <34.336266, 31.988220, 27.936251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.362091, 31.627775, 27.764751> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547464, -0.391200, 0.739760,
		-0.834335, 0.186964, -0.518585,
		0.064562, -0.901115, -0.428748,
		34.381458, 31.357441, 27.636127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.587776, 31.785563, 28.018011>,  <34.336266, 31.988220, 27.936251>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.587776, 31.785563, 28.018011> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.826981, 31.470469, 27.958868>,  <33.970501, 31.281412, 27.923382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.826981, 31.470469, 27.958868>,  <33.587776, 31.785563, 28.018011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826981, 31.470469, 27.958868> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431681, -0.471995, 0.768683,
		-0.675306, -0.395850, -0.622306,
		0.598008, -0.787734, -0.147860,
		34.006382, 31.234148, 27.914511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.092541, 31.234150, 28.238609>,  <33.587776, 31.785563, 28.018011>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.092541, 31.234150, 28.238609> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.466541, 31.095894, 28.206829>,  <33.690941, 31.012941, 28.187761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.466541, 31.095894, 28.206829>,  <33.092541, 31.234150, 28.238609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466541, 31.095894, 28.206829> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133029, -0.549465, 0.824858,
		-0.328757, -0.760672, -0.559729,
		0.934999, -0.345638, -0.079449,
		33.747040, 30.992203, 28.182995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.028988, 30.523453, 28.401775>,  <33.092541, 31.234150, 28.238609>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.028988, 30.523453, 28.401775> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.401649, 30.644608, 28.482059>,  <33.625244, 30.717300, 28.530230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.401649, 30.644608, 28.482059>,  <33.028988, 30.523453, 28.401775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.401649, 30.644608, 28.482059> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005436, -0.563945, 0.825795,
		0.363313, -0.768261, -0.527046,
		0.931651, 0.302887, 0.200712,
		33.681145, 30.735474, 28.542273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.475719, 29.943222, 28.469982>,  <33.028988, 30.523453, 28.401775>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.475719, 29.943222, 28.469982> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.639107, 30.247444, 28.671856>,  <33.737141, 30.429977, 28.792980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.639107, 30.247444, 28.671856>,  <33.475719, 29.943222, 28.469982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.639107, 30.247444, 28.671856> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017501, -0.559340, 0.828753,
		0.912605, -0.329686, -0.241783,
		0.408468, 0.760556, 0.504687,
		33.761646, 30.475611, 28.823261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.755531, 29.664856, 28.908451>,  <33.475719, 29.943222, 28.469982>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.755531, 29.664856, 28.908451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.829422, 30.029131, 29.056246>,  <33.873756, 30.247696, 29.144922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.829422, 30.029131, 29.056246>,  <33.755531, 29.664856, 28.908451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829422, 30.029131, 29.056246> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176855, -0.400624, 0.899012,
		0.966746, -0.100724, -0.235066,
		0.184725, 0.910689, 0.369488,
		33.884838, 30.302338, 29.167091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300896, 29.556297, 29.441170>,  <33.755531, 29.664856, 28.908451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.300896, 29.556297, 29.441170> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.133980, 29.906706, 29.537880>,  <34.033833, 30.116951, 29.595907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.133980, 29.906706, 29.537880>,  <34.300896, 29.556297, 29.441170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.133980, 29.906706, 29.537880> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001421, -0.266676, 0.963785,
		0.908774, 0.401831, 0.112525,
		-0.417287, 0.876023, 0.241777,
		34.008793, 30.169512, 29.610413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.765423, 29.859131, 29.934179>,  <34.300896, 29.556297, 29.441170>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.765423, 29.859131, 29.934179> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.396481, 30.011768, 29.958332>,  <34.175114, 30.103352, 29.972824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.396481, 30.011768, 29.958332>,  <34.765423, 29.859131, 29.934179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396481, 30.011768, 29.958332> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050383, -0.273762, 0.960477,
		0.383041, 0.882860, 0.271731,
		-0.922356, 0.381593, 0.060381,
		34.119774, 30.126245, 29.976446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.258678, 30.297140, 30.374588>,  <34.765423, 29.859131, 29.934179>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.258678, 30.297140, 30.374588> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.626682, 30.268177, 30.528645>,  <35.847485, 30.250799, 30.621078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.626682, 30.268177, 30.528645>,  <35.258678, 30.297140, 30.374588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.626682, 30.268177, 30.528645> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353367, 0.578179, -0.735419,
		-0.169431, 0.812691, 0.557519,
		0.920014, -0.072406, 0.385140,
		35.902687, 30.246456, 30.644186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.496120, 31.031111, 30.369106>,  <35.258678, 30.297140, 30.374588>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.496120, 31.031111, 30.369106> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.815701, 30.790556, 30.367424>,  <36.007446, 30.646223, 30.366415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.815701, 30.790556, 30.367424>,  <35.496120, 31.031111, 30.369106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815701, 30.790556, 30.367424> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358989, 0.482505, -0.798947,
		0.482505, 0.636806, 0.601387,
		0.798947, -0.601387, -0.004205,
		36.055386, 30.610140, 30.366163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992065, 31.472637, 30.197636>,  <35.496120, 31.031111, 30.369106>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992065, 31.472637, 30.197636> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.167274, 31.115511, 30.155659>,  <36.272400, 30.901236, 30.130472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.167274, 31.115511, 30.155659>,  <35.992065, 31.472637, 30.197636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.167274, 31.115511, 30.155659> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662844, 0.399626, -0.633196,
		0.607266, 0.207795, 0.766844,
		0.438026, -0.892816, -0.104943,
		36.298683, 30.847666, 30.124176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715961, 31.552542, 30.159243>,  <35.992065, 31.472637, 30.197636>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715961, 31.552542, 30.159243> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.639458, 31.214676, 29.959257>,  <36.593555, 31.011957, 29.839266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.639458, 31.214676, 29.959257>,  <36.715961, 31.552542, 30.159243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.639458, 31.214676, 29.959257> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586128, 0.310292, -0.748447,
		0.787320, -0.436192, 0.435733,
		-0.191263, -0.844663, -0.499964,
		36.582081, 30.961277, 29.809269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298267, 31.480944, 29.722662>,  <36.715961, 31.552542, 30.159243>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.298267, 31.480944, 29.722662> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.020348, 31.252729, 29.547510>,  <36.853596, 31.115801, 29.442419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.020348, 31.252729, 29.547510>,  <37.298267, 31.480944, 29.722662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.020348, 31.252729, 29.547510> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486444, 0.075646, -0.870431,
		0.529737, -0.817781, 0.224975,
		-0.694803, -0.570537, -0.437877,
		36.811905, 31.081568, 29.416147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699722, 31.087793, 29.415419>,  <37.298267, 31.480944, 29.722662>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.699722, 31.087793, 29.415419> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.353313, 31.076149, 29.215759>,  <37.145466, 31.069162, 29.095963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.353313, 31.076149, 29.215759>,  <37.699722, 31.087793, 29.415419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.353313, 31.076149, 29.215759> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494524, 0.097460, -0.863683,
		0.073780, -0.994814, -0.070013,
		-0.866027, -0.029099, -0.499150,
		37.093506, 31.067415, 29.066013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026222, 30.782333, 28.876392>,  <37.699722, 31.087793, 29.415419>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.026222, 30.782333, 28.876392> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.674995, 30.919214, 28.742588>,  <37.464260, 31.001343, 28.662306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.674995, 30.919214, 28.742588>,  <38.026222, 30.782333, 28.876392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674995, 30.919214, 28.742588> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324749, -0.087312, -0.941761,
		-0.351478, -0.935561, -0.034464,
		-0.878067, 0.342201, -0.334511,
		37.411575, 31.021873, 28.642235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.892723, 30.376478, 28.296385>,  <38.026222, 30.782333, 28.876392>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.892723, 30.376478, 28.296385> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.651855, 30.695683, 28.286821>,  <37.507336, 30.887205, 28.281084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.651855, 30.695683, 28.286821>,  <37.892723, 30.376478, 28.296385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.651855, 30.695683, 28.286821> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204859, 0.125501, -0.970712,
		-0.771640, -0.589428, -0.239052,
		-0.602166, 0.798013, -0.023908,
		37.471207, 30.935087, 28.279650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524651, 30.244801, 27.794085>,  <37.892723, 30.376478, 28.296385>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524651, 30.244801, 27.794085> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.486439, 30.640074, 27.842030>,  <37.463512, 30.877237, 27.870796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.486439, 30.640074, 27.842030>,  <37.524651, 30.244801, 27.794085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486439, 30.640074, 27.842030> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323428, 0.144692, -0.935125,
		-0.941418, -0.050565, -0.333429,
		-0.095529, 0.988184, 0.119862,
		37.457779, 30.936529, 27.877989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103874, 30.490406, 27.267424>,  <37.524651, 30.244801, 27.794085>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.103874, 30.490406, 27.267424> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.325531, 30.809011, 27.364166>,  <37.458523, 31.000175, 27.422213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.325531, 30.809011, 27.364166>,  <37.103874, 30.490406, 27.267424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325531, 30.809011, 27.364166> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198066, 0.156037, -0.967689,
		-0.808517, 0.584137, -0.071296,
		0.554139, 0.796515, 0.241856,
		37.491772, 31.047966, 27.436724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.813477, 30.978445, 26.865274>,  <37.103874, 30.490406, 27.267424>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.813477, 30.978445, 26.865274> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.182255, 31.102011, 26.958729>,  <37.403522, 31.176149, 27.014801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.182255, 31.102011, 26.958729>,  <36.813477, 30.978445, 26.865274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.182255, 31.102011, 26.958729> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224907, 0.064117, -0.972268,
		-0.315328, 0.948926, -0.010365,
		0.921946, 0.308914, 0.233638,
		37.458839, 31.194685, 27.028820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016880, 31.734074, 26.530825>,  <36.813477, 30.978445, 26.865274>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016880, 31.734074, 26.530825> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.354717, 31.524540, 26.575108>,  <37.557419, 31.398819, 26.601677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.354717, 31.524540, 26.575108>,  <37.016880, 31.734074, 26.530825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.354717, 31.524540, 26.575108> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243368, 0.191437, -0.950854,
		0.476897, 0.830030, 0.289171,
		0.844596, -0.523834, 0.110707,
		37.608097, 31.367390, 26.608320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614899, 32.162388, 26.471304>,  <37.016880, 31.734074, 26.530825>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614899, 32.162388, 26.471304> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.734444, 31.792780, 26.375921>,  <37.806171, 31.571014, 26.318691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.734444, 31.792780, 26.375921>,  <37.614899, 32.162388, 26.471304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734444, 31.792780, 26.375921> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481059, 0.361683, -0.798604,
		0.824173, 0.123965, 0.552605,
		0.298866, -0.924023, -0.238455,
		37.824104, 31.515574, 26.304384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.236717, 32.381699, 26.280231>,  <37.614899, 32.162388, 26.471304>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.236717, 32.381699, 26.280231> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.157646, 32.020626, 26.127346>,  <38.110203, 31.803982, 26.035614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.157646, 32.020626, 26.127346>,  <38.236717, 32.381699, 26.280231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.157646, 32.020626, 26.127346> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430139, 0.270493, -0.861286,
		0.880855, -0.334659, 0.334810,
		-0.197673, -0.902683, -0.382215,
		38.098343, 31.749821, 26.012682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762146, 32.353024, 26.717796>,  <38.236717, 32.381699, 26.280231>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.762146, 32.353024, 26.717796> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.051888, 32.600887, 26.838684>,  <39.225735, 32.749603, 26.911217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.051888, 32.600887, 26.838684>,  <38.762146, 32.353024, 26.717796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051888, 32.600887, 26.838684> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256630, -0.164516, 0.952405,
		0.639883, -0.767438, 0.039854,
		0.724356, 0.619655, 0.302218,
		39.269196, 32.786785, 26.929350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.048233, 31.937338, 27.186632>,  <38.762146, 32.353024, 26.717796>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.048233, 31.937338, 27.186632> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.159599, 32.316154, 27.250631>,  <39.226421, 32.543446, 27.289030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.159599, 32.316154, 27.250631>,  <39.048233, 31.937338, 27.186632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.159599, 32.316154, 27.250631> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068082, -0.185623, 0.980259,
		0.958044, -0.262030, -0.116157,
		0.278419, 0.947040, 0.159996,
		39.243126, 32.600266, 27.298630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.370773, 31.914858, 27.750456>,  <39.048233, 31.937338, 27.186632>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.370773, 31.914858, 27.750456> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.326214, 32.312363, 27.748453>,  <39.299477, 32.550865, 27.747252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.326214, 32.312363, 27.748453>,  <39.370773, 31.914858, 27.750456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.326214, 32.312363, 27.748453> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155608, 0.022417, 0.987565,
		0.981518, 0.109233, -0.157134,
		-0.111397, 0.993763, -0.005005,
		39.292793, 32.610493, 27.746952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.040127, 32.242100, 27.997078>,  <39.370773, 31.914858, 27.750456>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.040127, 32.242100, 27.997078> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.728699, 32.487911, 28.047976>,  <39.541843, 32.635399, 28.078514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.728699, 32.487911, 28.047976>,  <40.040127, 32.242100, 27.997078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.728699, 32.487911, 28.047976> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196120, 0.045650, 0.979517,
		0.596128, 0.787576, -0.156062,
		-0.778568, 0.614524, 0.127246,
		39.495129, 32.672268, 28.086149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.332092, 32.783661, 28.271391>,  <40.040127, 32.242100, 27.997078>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.332092, 32.783661, 28.271391> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.949265, 32.806854, 28.384996>,  <39.719570, 32.820770, 28.453159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.949265, 32.806854, 28.384996>,  <40.332092, 32.783661, 28.271391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.949265, 32.806854, 28.384996> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276144, -0.115601, 0.954139,
		0.088154, 0.991602, 0.094626,
		-0.957065, 0.057981, 0.284016,
		39.662144, 32.824249, 28.470201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.335449, 33.205223, 28.836372>,  <40.332092, 32.783661, 28.271391>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.335449, 33.205223, 28.836372> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.977348, 33.035011, 28.889196>,  <39.762486, 32.932884, 28.920891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.977348, 33.035011, 28.889196>,  <40.335449, 33.205223, 28.836372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.977348, 33.035011, 28.889196> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139537, 0.013713, 0.990122,
		-0.423138, 0.904840, 0.047100,
		-0.895256, -0.425530, 0.132061,
		39.708771, 32.907352, 28.928814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.090687, 33.596428, 29.390806>,  <40.335449, 33.205223, 28.836372>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.090687, 33.596428, 29.390806> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.887405, 33.252037, 29.382359>,  <39.765438, 33.045403, 29.377289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.887405, 33.252037, 29.382359>,  <40.090687, 33.596428, 29.390806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.887405, 33.252037, 29.382359> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139163, -0.106293, 0.984548,
		-0.849921, 0.497410, 0.173835,
		-0.508201, -0.860979, -0.021120,
		39.734943, 32.993744, 29.376022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.552113, 33.645248, 29.903181>,  <40.090687, 33.596428, 29.390806>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.552113, 33.645248, 29.903181> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.620300, 33.255508, 29.844412>,  <39.661213, 33.021664, 29.809151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.620300, 33.255508, 29.844412>,  <39.552113, 33.645248, 29.903181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.620300, 33.255508, 29.844412> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055562, -0.158371, 0.985815,
		-0.983795, -0.159887, -0.081134,
		0.170468, -0.974348, -0.146921,
		39.671440, 32.963203, 29.800335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194054, 33.314068, 30.426682>,  <39.552113, 33.645248, 29.903181>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.194054, 33.314068, 30.426682> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.441227, 33.020630, 30.313545>,  <39.589531, 32.844566, 30.245663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.441227, 33.020630, 30.313545>,  <39.194054, 33.314068, 30.426682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.441227, 33.020630, 30.313545> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076309, -0.302083, 0.950222,
		-0.782521, -0.608754, -0.130686,
		0.617930, -0.733596, -0.282840,
		39.626606, 32.800552, 30.228693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922695, 32.660290, 30.568420>,  <39.194054, 33.314068, 30.426682>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922695, 32.660290, 30.568420> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.311131, 32.569790, 30.537985>,  <39.544193, 32.515491, 30.519724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.311131, 32.569790, 30.537985>,  <38.922695, 32.660290, 30.568420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.311131, 32.569790, 30.537985> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030371, -0.433287, 0.900744,
		-0.236760, -0.872396, -0.427634,
		0.971093, -0.226248, -0.076089,
		39.602459, 32.501915, 30.515158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.006065, 32.009201, 30.708437>,  <38.922695, 32.660290, 30.568420>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.006065, 32.009201, 30.708437> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.386166, 32.116245, 30.772198>,  <39.614227, 32.180473, 30.810455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.386166, 32.116245, 30.772198>,  <39.006065, 32.009201, 30.708437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.386166, 32.116245, 30.772198> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050518, -0.637375, 0.768896,
		0.307365, -0.722590, -0.619185,
		0.950250, 0.267612, 0.159403,
		39.671242, 32.196529, 30.820019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.336872, 31.410824, 30.798706>,  <39.006065, 32.009201, 30.708437>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.336872, 31.410824, 30.798706> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.540615, 31.708294, 30.971910>,  <39.662861, 31.886776, 31.075832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.540615, 31.708294, 30.971910>,  <39.336872, 31.410824, 30.798706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.540615, 31.708294, 30.971910> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011204, -0.497404, 0.867447,
		0.860480, -0.446695, -0.245027,
		0.509362, 0.743675, 0.433011,
		39.693424, 31.931396, 31.101814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.696701, 31.043486, 31.185635>,  <39.336872, 31.410824, 30.798706>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.696701, 31.043486, 31.185635> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.724083, 31.408215, 31.347569>,  <39.740513, 31.627052, 31.444729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.724083, 31.408215, 31.347569>,  <39.696701, 31.043486, 31.185635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.724083, 31.408215, 31.347569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255167, -0.408291, 0.876463,
		0.964471, 0.043302, -0.260617,
		0.068455, 0.911824, 0.404834,
		39.744621, 31.681763, 31.469019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.322514, 31.106850, 31.570950>,  <39.696701, 31.043486, 31.185635>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.322514, 31.106850, 31.570950> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.081089, 31.375742, 31.742445>,  <39.936234, 31.537077, 31.845343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.081089, 31.375742, 31.742445>,  <40.322514, 31.106850, 31.570950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.081089, 31.375742, 31.742445> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323650, -0.284869, 0.902275,
		0.728670, 0.683343, -0.045630,
		-0.603565, 0.672229, 0.428740,
		39.900021, 31.577412, 31.871067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.021267, 37.293251, 29.540213> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.642433, 37.341801, 29.421349>,  <40.415134, 37.370930, 29.350031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.642433, 37.341801, 29.421349>,  <41.021267, 37.293251, 29.540213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.642433, 37.341801, 29.421349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308693, 0.090604, -0.946837,
		-0.088002, -0.988463, -0.123278,
		-0.947082, 0.121378, -0.297158,
		40.358307, 37.378216, 29.332201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.877560, 36.767769, 28.989723>,  <41.021267, 37.293251, 29.540213>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.877560, 36.767769, 28.989723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.645458, 37.090530, 28.945515>,  <40.506199, 37.284187, 28.918989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.645458, 37.090530, 28.945515>,  <40.877560, 36.767769, 28.989723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.645458, 37.090530, 28.945515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320021, 0.101102, -0.942001,
		-0.748931, -0.581964, -0.316891,
		-0.580249, 0.806905, -0.110523,
		40.471382, 37.332603, 28.912357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.734898, 36.796894, 28.260042>,  <40.877560, 36.767769, 28.989723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.734898, 36.796894, 28.260042> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.598652, 37.159481, 28.359877>,  <40.516907, 37.377033, 28.419777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.598652, 37.159481, 28.359877>,  <40.734898, 36.796894, 28.260042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.598652, 37.159481, 28.359877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171495, 0.320907, -0.931455,
		-0.924432, -0.274460, -0.264760,
		-0.340610, 0.906472, 0.249588,
		40.496468, 37.431423, 28.434753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098522, 36.884785, 27.838575>,  <40.734898, 36.796894, 28.260042>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.098522, 36.884785, 27.838575> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.250092, 37.244244, 27.926981>,  <40.341034, 37.459919, 27.980024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.250092, 37.244244, 27.926981>,  <40.098522, 36.884785, 27.838575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.250092, 37.244244, 27.926981> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069793, 0.210391, -0.975123,
		-0.922794, 0.384919, 0.017002,
		0.378921, 0.898650, 0.221012,
		40.363770, 37.513840, 27.993284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.701805, 37.305382, 27.550562>,  <40.098522, 36.884785, 27.838575>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.701805, 37.305382, 27.550562> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.064938, 37.473103, 27.552607>,  <40.282818, 37.573734, 27.553833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.064938, 37.473103, 27.552607>,  <39.701805, 37.305382, 27.550562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.064938, 37.473103, 27.552607> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014351, 0.043253, -0.998961,
		-0.419084, 0.906818, 0.045284,
		0.907834, 0.419299, 0.005112,
		40.337288, 37.598892, 27.554140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.669865, 37.699432, 26.972445>,  <39.701805, 37.305382, 27.550562>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.669865, 37.699432, 26.972445> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.058617, 37.738003, 27.058369>,  <40.291870, 37.761147, 27.109924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.058617, 37.738003, 27.058369>,  <39.669865, 37.699432, 26.972445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.058617, 37.738003, 27.058369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169153, 0.348709, -0.921840,
		-0.163799, 0.932257, 0.322593,
		0.971883, 0.096429, 0.214812,
		40.350182, 37.766933, 27.122812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.969616, 38.381920, 26.770454>,  <39.669865, 37.699432, 26.972445>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.969616, 38.381920, 26.770454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.255066, 38.101757, 26.775682>,  <40.426334, 37.933659, 26.778820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.255066, 38.101757, 26.775682>,  <39.969616, 38.381920, 26.770454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.255066, 38.101757, 26.775682> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247969, 0.235110, -0.939806,
		0.655174, 0.673909, 0.341459,
		0.713624, -0.700407, 0.013070,
		40.469154, 37.891636, 26.779604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.501785, 38.710556, 26.320595>,  <39.969616, 38.381920, 26.770454>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.501785, 38.710556, 26.320595> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.636700, 38.334045, 26.326706>,  <40.717648, 38.108139, 26.330374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.636700, 38.334045, 26.326706>,  <40.501785, 38.710556, 26.320595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.636700, 38.334045, 26.326706> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369164, 0.117318, -0.921930,
		0.865999, 0.316598, 0.387056,
		0.337289, -0.941277, 0.015280,
		40.737888, 38.051662, 26.331289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.137989, 38.760513, 25.965565>,  <40.501785, 38.710556, 26.320595>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.137989, 38.760513, 25.965565> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.027813, 38.376469, 25.946281>,  <40.961708, 38.146042, 25.934711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.027813, 38.376469, 25.946281>,  <41.137989, 38.760513, 25.965565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.027813, 38.376469, 25.946281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232249, -0.017798, -0.972493,
		0.932841, -0.279060, 0.227887,
		-0.275440, -0.960109, -0.048209,
		40.945183, 38.088436, 25.931818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.650902, 38.392990, 25.423203>,  <41.137989, 38.760513, 25.965565>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.650902, 38.392990, 25.423203> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.334507, 38.148262, 25.425043>,  <41.144669, 38.001427, 25.426147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.334507, 38.148262, 25.425043>,  <41.650902, 38.392990, 25.423203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.334507, 38.148262, 25.425043> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154956, -0.207601, -0.965863,
		0.591887, -0.763270, 0.259014,
		-0.790986, -0.611817, 0.004603,
		41.097210, 37.964718, 25.426424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.883640, 37.816036, 25.073799>,  <41.650902, 38.392990, 25.423203>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.883640, 37.816036, 25.073799> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.488129, 37.757816, 25.060326>,  <41.250824, 37.722885, 25.052242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.488129, 37.757816, 25.060326>,  <41.883640, 37.816036, 25.073799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.488129, 37.757816, 25.060326> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078632, -0.315311, -0.945725,
		0.127031, -0.937760, 0.323217,
		-0.988777, -0.145552, -0.033683,
		41.191494, 37.714149, 25.050220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.725174, 37.145363, 24.753263>,  <41.883640, 37.816036, 25.073799>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.725174, 37.145363, 24.753263> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.366673, 37.315262, 24.702158>,  <41.151573, 37.417202, 24.671495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.366673, 37.315262, 24.702158>,  <41.725174, 37.145363, 24.753263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.366673, 37.315262, 24.702158> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089379, -0.455091, -0.885948,
		-0.434441, -0.782616, 0.445841,
		-0.896255, 0.424741, -0.127761,
		41.097797, 37.442684, 24.663830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.794460, 36.520992, 24.241108>,  <41.725174, 37.145363, 24.753263>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.794460, 36.520992, 24.241108> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.544113, 36.244553, 24.385702>,  <41.393906, 36.078690, 24.472460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.544113, 36.244553, 24.385702>,  <41.794460, 36.520992, 24.241108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.544113, 36.244553, 24.385702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510916, 0.013106, -0.859531,
		0.589281, -0.722644, -0.361294,
		-0.625870, -0.691096, 0.361487,
		41.356354, 36.037224, 24.494148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.684227, 35.839935, 23.830719>,  <41.794460, 36.520992, 24.241108>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.684227, 35.839935, 23.830719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.344505, 35.922901, 24.024900>,  <41.140671, 35.972679, 24.141409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.344505, 35.922901, 24.024900>,  <41.684227, 35.839935, 23.830719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.344505, 35.922901, 24.024900> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503520, -0.042023, -0.862961,
		-0.158589, -0.977351, 0.140127,
		-0.849304, 0.207413, 0.485451,
		41.089714, 35.985126, 24.170536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.604942, 35.757435, 23.048700>,  <41.684227, 35.839935, 23.830719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.604942, 35.757435, 23.048700> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.763027, 35.436260, 22.870214>,  <41.857880, 35.243557, 22.763123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.763027, 35.436260, 22.870214>,  <41.604942, 35.757435, 23.048700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.763027, 35.436260, 22.870214> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356140, -0.581698, 0.731294,
		-0.846741, -0.130103, -0.515852,
		0.395214, -0.802932, -0.446213,
		41.881592, 35.195381, 22.736351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.090050, 35.279121, 23.140026>,  <41.604942, 35.757435, 23.048700>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.090050, 35.279121, 23.140026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.390415, 35.029518, 23.053541>,  <41.570633, 34.879757, 23.001650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.390415, 35.029518, 23.053541>,  <41.090050, 35.279121, 23.140026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.390415, 35.029518, 23.053541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290766, -0.606350, 0.740132,
		-0.592946, -0.492907, -0.636756,
		0.750913, -0.624005, -0.216212,
		41.615688, 34.842316, 22.988678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.871464, 34.634937, 23.098934>,  <41.090050, 35.279121, 23.140026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.871464, 34.634937, 23.098934> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.259010, 34.564518, 23.168562>,  <41.491539, 34.522266, 23.210339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.259010, 34.564518, 23.168562>,  <40.871464, 34.634937, 23.098934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.259010, 34.564518, 23.168562> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245645, -0.596019, 0.764474,
		-0.030832, -0.783435, -0.620709,
		0.968870, -0.176045, 0.174070,
		41.549671, 34.511703, 23.220783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.875313, 33.974167, 23.107998>,  <40.871464, 34.634937, 23.098934>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.875313, 33.974167, 23.107998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.208134, 34.073254, 23.306520>,  <41.407825, 34.132706, 23.425634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.208134, 34.073254, 23.306520>,  <40.875313, 33.974167, 23.107998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.208134, 34.073254, 23.306520> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275591, -0.591881, 0.757447,
		0.481390, -0.767015, -0.424208,
		0.832054, 0.247720, 0.496308,
		41.457748, 34.147568, 23.455412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.139362, 33.376404, 23.456198>,  <40.875313, 33.974167, 23.107998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.139362, 33.376404, 23.456198> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.309898, 33.672031, 23.664818>,  <41.412220, 33.849407, 23.789989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.309898, 33.672031, 23.664818>,  <41.139362, 33.376404, 23.456198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.309898, 33.672031, 23.664818> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101656, -0.533776, 0.839494,
		0.898833, -0.410928, -0.152439,
		0.426339, 0.739068, 0.521549,
		41.437801, 33.893753, 23.821283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.737770, 33.131699, 23.801113>,  <41.139362, 33.376404, 23.456198>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.737770, 33.131699, 23.801113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.631821, 33.451710, 24.016443>,  <41.568253, 33.643719, 24.145641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.631821, 33.451710, 24.016443>,  <41.737770, 33.131699, 23.801113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.631821, 33.451710, 24.016443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093739, -0.576984, 0.811358,
		0.959716, 0.164444, 0.227821,
		-0.264872, 0.800030, 0.538326,
		41.552361, 33.691719, 24.177940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.053001, 33.035717, 24.557049>,  <41.737770, 33.131699, 23.801113>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.053001, 33.035717, 24.557049> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.752460, 33.297844, 24.588108>,  <41.572136, 33.455120, 24.606743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.752460, 33.297844, 24.588108>,  <42.053001, 33.035717, 24.557049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.752460, 33.297844, 24.588108> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410398, -0.556163, 0.722673,
		0.516767, 0.511113, 0.686815,
		-0.751349, 0.655321, 0.077647,
		41.527058, 33.494442, 24.611403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.010017, 33.236073, 25.220947>,  <42.053001, 33.035717, 24.557049>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.010017, 33.236073, 25.220947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.645596, 33.312477, 25.074800>,  <41.426941, 33.358318, 24.987112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.645596, 33.312477, 25.074800>,  <42.010017, 33.236073, 25.220947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.645596, 33.312477, 25.074800> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411685, -0.373760, 0.831155,
		0.022200, 0.907645, 0.419152,
		-0.911056, 0.191010, -0.365366,
		41.372280, 33.369781, 24.965191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.607765, 33.563175, 25.799809>,  <42.010017, 33.236073, 25.220947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.607765, 33.563175, 25.799809> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.325401, 33.440117, 25.544607>,  <41.155983, 33.366283, 25.391487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.325401, 33.440117, 25.544607>,  <41.607765, 33.563175, 25.799809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.325401, 33.440117, 25.544607> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565672, -0.297229, 0.769201,
		-0.426273, 0.903886, 0.035791,
		-0.705908, -0.307644, -0.638004,
		41.113628, 33.347824, 25.353207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.100597, 33.985462, 25.992910>,  <41.607765, 33.563175, 25.799809>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.100597, 33.985462, 25.992910> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.961357, 33.664070, 25.799730>,  <40.877811, 33.471233, 25.683823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.961357, 33.664070, 25.799730>,  <41.100597, 33.985462, 25.992910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.961357, 33.664070, 25.799730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658449, -0.157140, 0.736038,
		-0.667284, 0.574215, -0.474351,
		-0.348104, -0.803483, -0.482949,
		40.856926, 33.423027, 25.654846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.439552, 34.051277, 25.970583>,  <41.100597, 33.985462, 25.992910>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.439552, 34.051277, 25.970583> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.448662, 33.659916, 25.888405>,  <40.454128, 33.425098, 25.839098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.448662, 33.659916, 25.888405>,  <40.439552, 34.051277, 25.970583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.448662, 33.659916, 25.888405> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727879, -0.157100, 0.667467,
		-0.685328, 0.134339, -0.715737,
		0.022775, -0.978403, -0.205448,
		40.455494, 33.366394, 25.826771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.740086, 33.934963, 25.789974>,  <40.439552, 34.051277, 25.970583>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.740086, 33.934963, 25.789974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.910641, 33.592644, 25.907146>,  <40.012974, 33.387253, 25.977449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.910641, 33.592644, 25.907146>,  <39.740086, 33.934963, 25.789974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.910641, 33.592644, 25.907146> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649024, -0.063880, 0.758081,
		-0.630050, -0.513354, -0.582670,
		0.426385, -0.855796, 0.292932,
		40.038555, 33.335903, 25.995026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159660, 33.448215, 26.032866>,  <39.740086, 33.934963, 25.789974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159660, 33.448215, 26.032866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.486950, 33.274738, 26.183821>,  <39.683323, 33.170650, 26.274393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.486950, 33.274738, 26.183821>,  <39.159660, 33.448215, 26.032866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.486950, 33.274738, 26.183821> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505476, -0.229995, 0.831623,
		-0.273886, -0.871206, -0.407415,
		0.818218, -0.433708, 0.377381,
		39.732418, 33.144630, 26.297037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884647, 32.876022, 26.144564>,  <39.159660, 33.448215, 26.032866>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884647, 32.876022, 26.144564> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.211903, 32.885273, 26.374386>,  <39.408257, 32.890823, 26.512280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.211903, 32.885273, 26.374386>,  <38.884647, 32.876022, 26.144564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211903, 32.885273, 26.374386> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571850, -0.072056, 0.817188,
		0.060297, -0.997132, -0.045729,
		0.818139, 0.023124, 0.574555,
		39.457344, 32.892208, 26.546753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859806, 32.075676, 25.989315>,  <38.884647, 32.876022, 26.144564>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859806, 32.075676, 25.989315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.571213, 31.867310, 25.806837>,  <38.398056, 31.742289, 25.697350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.571213, 31.867310, 25.806837>,  <38.859806, 32.075676, 25.989315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571213, 31.867310, 25.806837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264623, 0.401393, -0.876846,
		0.639878, -0.753345, -0.151750,
		-0.721479, -0.520918, -0.456195,
		38.354771, 31.711035, 25.669979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.127876, 31.722651, 25.428228>,  <38.859806, 32.075676, 25.989315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.127876, 31.722651, 25.428228> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.739193, 31.757515, 25.340420>,  <38.505981, 31.778433, 25.287735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.739193, 31.757515, 25.340420>,  <39.127876, 31.722651, 25.428228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.739193, 31.757515, 25.340420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233264, 0.208282, -0.949845,
		-0.037067, -0.974177, -0.222720,
		-0.971707, 0.087160, -0.219521,
		38.447681, 31.783663, 25.274563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.015903, 31.458874, 24.786236>,  <39.127876, 31.722651, 25.428228>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.015903, 31.458874, 24.786236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.680351, 31.673584, 24.822355>,  <38.479019, 31.802410, 24.844027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.680351, 31.673584, 24.822355>,  <39.015903, 31.458874, 24.786236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.680351, 31.673584, 24.822355> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120094, 0.344321, -0.931139,
		-0.530904, -0.770269, -0.353307,
		-0.838879, 0.536776, 0.090297,
		38.428688, 31.834618, 24.849443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757893, 31.378494, 24.111822>,  <39.015903, 31.458874, 24.786236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.757893, 31.378494, 24.111822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.563538, 31.691549, 24.267456>,  <38.446926, 31.879383, 24.360836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.563538, 31.691549, 24.267456>,  <38.757893, 31.378494, 24.111822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563538, 31.691549, 24.267456> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108054, 0.495542, -0.861837,
		-0.867316, -0.376714, -0.325345,
		-0.485888, 0.782640, 0.389086,
		38.417770, 31.926342, 24.384182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309151, 31.611006, 23.626760>,  <38.757893, 31.378494, 24.111822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.309151, 31.611006, 23.626760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.312054, 31.939520, 23.854950>,  <38.313793, 32.136627, 23.991863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.312054, 31.939520, 23.854950>,  <38.309151, 31.611006, 23.626760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.312054, 31.939520, 23.854950> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014530, 0.570514, -0.821159,
		-0.999868, -0.002332, 0.016072,
		0.007255, 0.821285, 0.570473,
		38.314232, 32.185905, 24.026093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738338, 32.112251, 23.324389>,  <38.309151, 31.611006, 23.626760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.738338, 32.112251, 23.324389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.009979, 32.307907, 23.543316>,  <38.172962, 32.425301, 23.674673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.009979, 32.307907, 23.543316>,  <37.738338, 32.112251, 23.324389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.009979, 32.307907, 23.543316> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107724, 0.671137, -0.733464,
		-0.726096, 0.557057, 0.403079,
		0.679103, 0.489144, 0.547318,
		38.213711, 32.454651, 23.707512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528610, 32.912174, 23.447411>,  <37.738338, 32.112251, 23.324389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528610, 32.912174, 23.447411> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.925098, 32.882160, 23.490973>,  <38.162991, 32.864151, 23.517111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.925098, 32.882160, 23.490973>,  <37.528610, 32.912174, 23.447411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925098, 32.882160, 23.490973> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128082, 0.749815, -0.649132,
		-0.032952, 0.657379, 0.752839,
		0.991216, -0.075035, 0.108907,
		38.222462, 32.859650, 23.523645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035732, 33.384373, 23.856926>,  <37.528610, 32.912174, 23.447411>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.035732, 33.384373, 23.856926> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.684937, 33.521988, 23.722746>,  <36.474461, 33.604557, 23.642237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.684937, 33.521988, 23.722746>,  <37.035732, 33.384373, 23.856926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684937, 33.521988, 23.722746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429558, -0.248477, 0.868181,
		0.215333, 0.905483, 0.365695,
		-0.876990, 0.344035, -0.335452,
		36.421841, 33.625198, 23.622110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745350, 33.974586, 24.343040>,  <37.035732, 33.384373, 23.856926>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745350, 33.974586, 24.343040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.440292, 33.824467, 24.132318>,  <36.257259, 33.734394, 24.005886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.440292, 33.824467, 24.132318>,  <36.745350, 33.974586, 24.343040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.440292, 33.824467, 24.132318> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457763, -0.262244, 0.849518,
		-0.456978, 0.889031, 0.028199,
		-0.762643, -0.375303, -0.526805,
		36.211498, 33.711876, 23.974277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.160229, 34.239002, 24.700397>,  <36.745350, 33.974586, 24.343040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.160229, 34.239002, 24.700397> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.010159, 33.930447, 24.494797>,  <35.920116, 33.745312, 24.371435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.010159, 33.930447, 24.494797>,  <36.160229, 34.239002, 24.700397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010159, 33.930447, 24.494797> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618563, -0.204645, 0.758618,
		-0.690378, 0.602561, -0.400374,
		-0.375179, -0.771389, -0.514003,
		35.897606, 33.699028, 24.340595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460640, 34.202385, 24.924604>,  <36.160229, 34.239002, 24.700397>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.460640, 34.202385, 24.924604> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.502327, 33.837177, 24.766850>,  <35.527340, 33.618053, 24.672195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.502327, 33.837177, 24.766850>,  <35.460640, 34.202385, 24.924604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.502327, 33.837177, 24.766850> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288223, -0.407256, 0.866642,
		-0.951875, 0.023356, -0.305594,
		0.104214, -0.913015, -0.394389,
		35.533592, 33.563274, 24.648533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.916645, 33.860767, 25.359150>,  <35.460640, 34.202385, 24.924604>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.916645, 33.860767, 25.359150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.108204, 33.561348, 25.175701>,  <35.223137, 33.381695, 25.065632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.108204, 33.561348, 25.175701>,  <34.916645, 33.860767, 25.359150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108204, 33.561348, 25.175701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302273, -0.631081, 0.714401,
		-0.824191, -0.203494, -0.528487,
		0.478894, -0.748550, -0.458621,
		35.251873, 33.336784, 25.038115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.423077, 33.277180, 25.110369>,  <34.916645, 33.860767, 25.359150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.423077, 33.277180, 25.110369> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.791023, 33.135788, 25.178371>,  <35.011791, 33.050953, 25.219173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.791023, 33.135788, 25.178371>,  <34.423077, 33.277180, 25.110369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791023, 33.135788, 25.178371> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379875, -0.694901, 0.610580,
		-0.097688, -0.626233, -0.773492,
		0.919865, -0.353477, 0.170007,
		35.066982, 33.029743, 25.229374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.391052, 32.522766, 25.240257>,  <34.423077, 33.277180, 25.110369>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.391052, 32.522766, 25.240257> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.741695, 32.632469, 25.398420>,  <34.952080, 32.698292, 25.493319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.741695, 32.632469, 25.398420>,  <34.391052, 32.522766, 25.240257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.741695, 32.632469, 25.398420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031192, -0.787581, 0.615421,
		0.480199, -0.551815, -0.681843,
		0.876605, 0.274256, 0.395407,
		35.004677, 32.714745, 25.517042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.377602, 39.125771, 23.919735> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.765114, 39.074905, 24.004866>,  <38.997620, 39.044388, 24.055944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.765114, 39.074905, 24.004866>,  <38.377602, 39.125771, 23.919735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765114, 39.074905, 24.004866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247861, -0.477933, 0.842701,
		-0.005439, -0.869143, -0.494530,
		0.968780, -0.127159, 0.212827,
		39.055748, 39.036758, 24.068714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.465237, 38.499428, 24.098438>,  <38.377602, 39.125771, 23.919735>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.465237, 38.499428, 24.098438> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.792519, 38.653728, 24.268961>,  <38.988888, 38.746311, 24.371275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.792519, 38.653728, 24.268961>,  <38.465237, 38.499428, 24.098438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792519, 38.653728, 24.268961> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217624, -0.478515, 0.850684,
		0.532149, -0.788807, -0.307573,
		0.818204, 0.385755, 0.426305,
		39.037979, 38.769455, 24.396852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916576, 37.984386, 24.456957>,  <38.465237, 38.499428, 24.098438>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.916576, 37.984386, 24.456957> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.003780, 38.331444, 24.635691>,  <39.056103, 38.539680, 24.742931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.003780, 38.331444, 24.635691>,  <38.916576, 37.984386, 24.456957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.003780, 38.331444, 24.635691> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200031, -0.408401, 0.890616,
		0.955228, -0.283543, 0.084521,
		0.218010, 0.867647, 0.446833,
		39.069183, 38.591740, 24.769741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203194, 37.811085, 25.034039>,  <38.916576, 37.984386, 24.456957>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.203194, 37.811085, 25.034039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.116932, 38.194241, 25.109877>,  <39.065174, 38.424133, 25.155380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.116932, 38.194241, 25.109877>,  <39.203194, 37.811085, 25.034039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.116932, 38.194241, 25.109877> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433676, -0.267919, 0.860316,
		0.874882, 0.103304, 0.473190,
		-0.215651, 0.957887, 0.189597,
		39.052238, 38.481606, 25.166756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069241, 37.833374, 25.669952>,  <39.203194, 37.811085, 25.034039>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.069241, 37.833374, 25.669952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.916489, 38.197208, 25.604452>,  <38.824837, 38.415508, 25.565151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.916489, 38.197208, 25.604452>,  <39.069241, 37.833374, 25.669952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916489, 38.197208, 25.604452> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508147, -0.058647, 0.859271,
		0.771980, 0.411349, 0.484601,
		-0.381881, 0.909589, -0.163751,
		38.801926, 38.470085, 25.555326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.190861, 38.287266, 26.227839>,  <39.069241, 37.833374, 25.669952>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.190861, 38.287266, 26.227839> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.851231, 38.405018, 26.052376>,  <38.647453, 38.475670, 25.947098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.851231, 38.405018, 26.052376>,  <39.190861, 38.287266, 26.227839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851231, 38.405018, 26.052376> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428713, 0.101215, 0.897753,
		0.308679, 0.950314, 0.040266,
		-0.849071, 0.294380, -0.438655,
		38.596508, 38.493332, 25.920780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976406, 38.783966, 26.761177>,  <39.190861, 38.287266, 26.227839>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976406, 38.783966, 26.761177> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.677410, 38.704548, 26.507614>,  <38.498013, 38.656898, 26.355476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.677410, 38.704548, 26.507614>,  <38.976406, 38.783966, 26.761177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.677410, 38.704548, 26.507614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658335, 0.094133, 0.746815,
		-0.088605, 0.975560, -0.201073,
		-0.747491, -0.198546, -0.633906,
		38.453163, 38.644985, 26.317442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426788, 39.416050, 26.816236>,  <38.976406, 38.783966, 26.761177>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.426788, 39.416050, 26.816236> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.226833, 39.096493, 26.682438>,  <38.106861, 38.904758, 26.602158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.226833, 39.096493, 26.682438>,  <38.426788, 39.416050, 26.816236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.226833, 39.096493, 26.682438> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645124, 0.085768, 0.759249,
		-0.577868, 0.595329, -0.558258,
		-0.499884, -0.798891, -0.334499,
		38.076870, 38.856827, 26.582088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698345, 39.508923, 26.954451>,  <38.426788, 39.416050, 26.816236>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698345, 39.508923, 26.954451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.735832, 39.112225, 26.919436>,  <37.758324, 38.874207, 26.898426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.735832, 39.112225, 26.919436>,  <37.698345, 39.508923, 26.954451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.735832, 39.112225, 26.919436> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642086, -0.127402, 0.755973,
		-0.760883, -0.014641, -0.648724,
		0.093717, -0.991743, -0.087538,
		37.763947, 38.814701, 26.893175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.086018, 39.297298, 27.170525>,  <37.698345, 39.508923, 26.954451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.086018, 39.297298, 27.170525> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.287758, 38.952259, 27.154783>,  <37.408802, 38.745235, 27.145338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.287758, 38.952259, 27.154783>,  <37.086018, 39.297298, 27.170525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287758, 38.952259, 27.154783> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543673, -0.352626, 0.761626,
		-0.670858, -0.362729, -0.646820,
		0.504350, -0.862602, -0.039356,
		37.439064, 38.693478, 27.142977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574001, 38.736359, 27.183395>,  <37.086018, 39.297298, 27.170525>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.574001, 38.736359, 27.183395> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.916775, 38.586700, 27.325199>,  <37.122440, 38.496906, 27.410282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.916775, 38.586700, 27.325199>,  <36.574001, 38.736359, 27.183395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916775, 38.586700, 27.325199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493344, -0.396259, 0.774332,
		-0.149234, -0.838448, -0.524150,
		0.856937, -0.374143, 0.354509,
		37.173855, 38.474457, 27.431551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329903, 38.181496, 27.536385>,  <36.574001, 38.736359, 27.183395>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.329903, 38.181496, 27.536385> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.699913, 38.234093, 27.678955>,  <36.921921, 38.265652, 27.764498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.699913, 38.234093, 27.678955>,  <36.329903, 38.181496, 27.536385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699913, 38.234093, 27.678955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311814, -0.273173, 0.910027,
		0.217027, -0.952936, -0.211691,
		0.925025, 0.131492, 0.356424,
		36.977421, 38.273540, 27.785883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638195, 37.589619, 27.214437>,  <36.329903, 38.181496, 27.536385>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638195, 37.589619, 27.214437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.490265, 37.273220, 27.019482>,  <36.401508, 37.083382, 26.902508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.490265, 37.273220, 27.019482>,  <36.638195, 37.589619, 27.214437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490265, 37.273220, 27.019482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703450, 0.104306, -0.703049,
		0.606949, -0.602860, 0.517854,
		-0.369825, -0.791000, -0.487390,
		36.379318, 37.035919, 26.873264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179405, 37.257389, 26.916170>,  <36.638195, 37.589619, 27.214437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179405, 37.257389, 26.916170> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.866886, 37.153702, 26.689054>,  <36.679375, 37.091488, 26.552786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.866886, 37.153702, 26.689054>,  <37.179405, 37.257389, 26.916170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.866886, 37.153702, 26.689054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496821, 0.292374, -0.817121,
		0.377822, -0.920501, -0.099643,
		-0.781293, -0.259221, -0.567790,
		36.632500, 37.075935, 26.518717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477776, 36.935799, 26.289549>,  <37.179405, 37.257389, 26.916170>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477776, 36.935799, 26.289549> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.106056, 36.981293, 26.148994>,  <36.883026, 37.008591, 26.064663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.106056, 36.981293, 26.148994>,  <37.477776, 36.935799, 26.289549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.106056, 36.981293, 26.148994> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366050, 0.157074, -0.917243,
		-0.049131, -0.981016, -0.187602,
		-0.929297, 0.113737, -0.351384,
		36.827267, 37.015415, 26.043579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432293, 36.508980, 25.636475>,  <37.477776, 36.935799, 26.289549>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432293, 36.508980, 25.636475> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.121605, 36.757927, 25.597765>,  <36.935192, 36.907295, 25.574539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.121605, 36.757927, 25.597765>,  <37.432293, 36.508980, 25.636475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121605, 36.757927, 25.597765> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111123, -0.015830, -0.993681,
		-0.619965, -0.782566, -0.056864,
		-0.776721, 0.622366, -0.096776,
		36.888588, 36.944637, 25.568733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087673, 36.236809, 25.010368>,  <37.432293, 36.508980, 25.636475>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087673, 36.236809, 25.010368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.954922, 36.613106, 25.038239>,  <36.875271, 36.838886, 25.054960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.954922, 36.613106, 25.038239>,  <37.087673, 36.236809, 25.010368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.954922, 36.613106, 25.038239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004583, 0.075470, -0.997138,
		-0.943312, -0.330606, -0.029357,
		-0.331875, 0.940746, 0.069676,
		36.855358, 36.895329, 25.059141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.548527, 36.280720, 24.573133>,  <37.087673, 36.236809, 25.010368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.548527, 36.280720, 24.573133> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.620007, 36.670147, 24.630016>,  <36.662895, 36.903805, 24.664146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.620007, 36.670147, 24.630016>,  <36.548527, 36.280720, 24.573133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.620007, 36.670147, 24.630016> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259409, 0.186040, -0.947680,
		-0.949090, 0.132463, 0.285799,
		0.178702, 0.973572, 0.142207,
		36.673618, 36.962219, 24.672678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047169, 36.674690, 24.272596>,  <36.548527, 36.280720, 24.573133>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047169, 36.674690, 24.272596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.363327, 36.915730, 24.316681>,  <36.553024, 37.060352, 24.343132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.363327, 36.915730, 24.316681>,  <36.047169, 36.674690, 24.272596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363327, 36.915730, 24.316681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003602, 0.175337, -0.984502,
		-0.612582, 0.778546, 0.136416,
		0.790399, 0.602596, 0.110213,
		36.600449, 37.096508, 24.349745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869297, 37.430420, 23.979370>,  <36.047169, 36.674690, 24.272596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.869297, 37.430420, 23.979370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.260605, 37.347523, 23.981880>,  <36.495388, 37.297787, 23.983387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.260605, 37.347523, 23.981880>,  <35.869297, 37.430420, 23.979370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260605, 37.347523, 23.981880> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001768, -0.021927, -0.999758,
		0.207328, 0.978044, -0.021084,
		0.978270, -0.207241, 0.006276,
		36.554085, 37.285351, 23.983763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029377, 37.787407, 23.386585>,  <35.869297, 37.430420, 23.979370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029377, 37.787407, 23.386585> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.347233, 37.555984, 23.460150>,  <36.537945, 37.417130, 23.504288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.347233, 37.555984, 23.460150>,  <36.029377, 37.787407, 23.386585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347233, 37.555984, 23.460150> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134076, -0.128211, -0.982642,
		0.592095, 0.805501, -0.024311,
		0.794636, -0.578558, 0.183912,
		36.585625, 37.382416, 23.515324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599480, 38.092701, 23.004919>,  <36.029377, 37.787407, 23.386585>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599480, 38.092701, 23.004919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.705204, 37.710991, 23.060770>,  <36.768639, 37.481964, 23.094280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.705204, 37.710991, 23.060770>,  <36.599480, 38.092701, 23.004919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705204, 37.710991, 23.060770> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129332, -0.108398, -0.985659,
		0.955727, 0.278576, 0.094768,
		0.264308, -0.954278, 0.139628,
		36.784496, 37.424709, 23.102659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268547, 37.965900, 22.528923>,  <36.599480, 38.092701, 23.004919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.268547, 37.965900, 22.528923> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.108040, 37.608177, 22.608105>,  <37.011734, 37.393543, 22.655615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.108040, 37.608177, 22.608105>,  <37.268547, 37.965900, 22.528923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108040, 37.608177, 22.608105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241206, -0.311662, -0.919068,
		0.883630, -0.321047, 0.340774,
		-0.401271, -0.894313, 0.197956,
		36.987659, 37.339882, 22.667492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.687885, 37.531483, 22.136864>,  <37.268547, 37.965900, 22.528923>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.687885, 37.531483, 22.136864> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.366890, 37.304298, 22.209995>,  <37.174294, 37.167988, 22.253874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.366890, 37.304298, 22.209995>,  <37.687885, 37.531483, 22.136864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.366890, 37.304298, 22.209995> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145029, -0.482904, -0.863580,
		0.578770, -0.666500, 0.469897,
		-0.802491, -0.567963, 0.182829,
		37.126144, 37.133911, 22.264843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839012, 36.713009, 21.985802>,  <37.687885, 37.531483, 22.136864>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.839012, 36.713009, 21.985802> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.451851, 36.808659, 21.954842>,  <37.219555, 36.866051, 21.936266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.451851, 36.808659, 21.954842>,  <37.839012, 36.713009, 21.985802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.451851, 36.808659, 21.954842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019864, -0.379762, -0.924871,
		-0.250553, -0.893645, 0.372321,
		-0.967899, 0.239125, -0.077398,
		37.161480, 36.880398, 21.931622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316891, 36.232128, 21.420084>,  <37.839012, 36.713009, 21.985802>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316891, 36.232128, 21.420084> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.253960, 35.888348, 21.225523>,  <37.216202, 35.682079, 21.108786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.253960, 35.888348, 21.225523>,  <37.316891, 36.232128, 21.420084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253960, 35.888348, 21.225523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556506, -0.329728, 0.762614,
		-0.815812, 0.390665, -0.426417,
		-0.157325, -0.859453, -0.486404,
		37.206760, 35.630512, 21.079601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561386, 35.983944, 21.551338>,  <37.316891, 36.232128, 21.420084>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561386, 35.983944, 21.551338> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.785595, 35.664845, 21.462421>,  <36.920120, 35.473385, 21.409071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.785595, 35.664845, 21.462421>,  <36.561386, 35.983944, 21.551338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.785595, 35.664845, 21.462421> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437625, -0.513218, 0.738303,
		-0.703065, -0.316553, -0.636784,
		0.560521, -0.797747, -0.222294,
		36.953751, 35.425522, 21.395733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.101242, 35.477085, 21.610548>,  <36.561386, 35.983944, 21.551338>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.101242, 35.477085, 21.610548> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.435753, 35.257904, 21.618385>,  <36.636459, 35.126396, 21.623087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.435753, 35.257904, 21.618385>,  <36.101242, 35.477085, 21.610548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435753, 35.257904, 21.618385> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387378, -0.565164, 0.728374,
		-0.388044, -0.616712, -0.684900,
		0.836277, -0.547956, 0.019592,
		36.686638, 35.093517, 21.624262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888271, 34.736374, 21.509232>,  <36.101242, 35.477085, 21.610548>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.888271, 34.736374, 21.509232> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.254154, 34.752644, 21.670061>,  <36.473682, 34.762405, 21.766560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.254154, 34.752644, 21.670061>,  <35.888271, 34.736374, 21.509232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.254154, 34.752644, 21.670061> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308085, -0.573701, 0.758915,
		0.261539, -0.818055, -0.512234,
		0.914703, 0.040674, 0.402076,
		36.528564, 34.764847, 21.790684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.022949, 34.063206, 21.726646>,  <35.888271, 34.736374, 21.509232>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.022949, 34.063206, 21.726646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.286129, 34.288223, 21.926901>,  <36.444038, 34.423233, 22.047054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.286129, 34.288223, 21.926901>,  <36.022949, 34.063206, 21.726646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.286129, 34.288223, 21.926901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003886, -0.667332, 0.744750,
		0.753048, -0.488066, -0.441260,
		0.657954, 0.562548, 0.500636,
		36.483517, 34.456989, 22.077091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453129, 33.586056, 21.989122>,  <36.022949, 34.063206, 21.726646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.453129, 33.586056, 21.989122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.497635, 33.915440, 22.211668>,  <36.524338, 34.113068, 22.345196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.497635, 33.915440, 22.211668>,  <36.453129, 33.586056, 21.989122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497635, 33.915440, 22.211668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130985, -0.542806, 0.829581,
		0.985121, -0.165176, 0.047467,
		0.111261, 0.823456, 0.556365,
		36.531013, 34.162476, 22.378578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.742130, 33.290394, 22.525827>,  <36.453129, 33.586056, 21.989122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.742130, 33.290394, 22.525827> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.635250, 33.643833, 22.679640>,  <36.571121, 33.855896, 22.771927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.635250, 33.643833, 22.679640>,  <36.742130, 33.290394, 22.525827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.635250, 33.643833, 22.679640> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135272, -0.429481, 0.892887,
		0.954100, 0.186562, 0.234282,
		-0.267199, 0.883595, 0.384531,
		36.555092, 33.908913, 22.794998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180817, 33.450592, 23.139139>,  <36.742130, 33.290394, 22.525827>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.180817, 33.450592, 23.139139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.819363, 33.616596, 23.181499>,  <36.602489, 33.716198, 23.206915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.819363, 33.616596, 23.181499>,  <37.180817, 33.450592, 23.139139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.819363, 33.616596, 23.181499> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141640, -0.522887, 0.840552,
		0.404211, 0.744550, 0.531280,
		-0.903632, 0.415011, 0.105899,
		36.548271, 33.741100, 23.213268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933434, 33.508266, 23.228733>,  <37.180817, 33.450592, 23.139139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933434, 33.508266, 23.228733> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.278339, 33.314190, 23.286825>,  <38.485283, 33.197742, 23.321680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.278339, 33.314190, 23.286825>,  <37.933434, 33.508266, 23.228733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278339, 33.314190, 23.286825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452374, 0.608897, -0.651615,
		0.227728, 0.627562, 0.744517,
		0.862263, -0.485191, 0.145230,
		38.537018, 33.168633, 23.330395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603989, 34.041557, 23.385036>,  <37.933434, 33.508266, 23.228733>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603989, 34.041557, 23.385036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.707054, 33.690311, 23.223780>,  <38.768894, 33.479565, 23.127026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.707054, 33.690311, 23.223780>,  <38.603989, 34.041557, 23.385036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707054, 33.690311, 23.223780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427926, 0.477788, -0.767201,
		0.866308, 0.025164, 0.498876,
		0.257663, -0.878115, -0.403143,
		38.784351, 33.426876, 23.102837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255192, 34.146122, 23.169245>,  <38.603989, 34.041557, 23.385036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.255192, 34.146122, 23.169245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.157444, 33.826626, 22.949316>,  <39.098797, 33.634930, 22.817358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.157444, 33.826626, 22.949316>,  <39.255192, 34.146122, 23.169245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.157444, 33.826626, 22.949316> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477342, 0.394468, -0.785201,
		0.844056, -0.454330, 0.284876,
		-0.244365, -0.798736, -0.549824,
		39.084133, 33.587006, 22.784369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.893730, 33.971542, 22.925999>,  <39.255192, 34.146122, 23.169245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.893730, 33.971542, 22.925999> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.622631, 33.787907, 22.696253>,  <39.459972, 33.677723, 22.558405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.622631, 33.787907, 22.696253>,  <39.893730, 33.971542, 22.925999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.622631, 33.787907, 22.696253> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411796, 0.410153, -0.813756,
		0.609166, -0.788041, -0.088928,
		-0.677747, -0.459092, -0.574364,
		39.419308, 33.650181, 22.523943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.307178, 33.805851, 22.367561>,  <39.893730, 33.971542, 22.925999>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.307178, 33.805851, 22.367561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.927811, 33.767010, 22.246853>,  <39.700188, 33.743706, 22.174427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.927811, 33.767010, 22.246853>,  <40.307178, 33.805851, 22.367561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.927811, 33.767010, 22.246853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206716, 0.532266, -0.820951,
		0.240342, -0.840989, -0.484739,
		-0.948422, -0.097106, -0.301772,
		39.643284, 33.737877, 22.156321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.267399, 33.576237, 21.632689>,  <40.307178, 33.805851, 22.367561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.267399, 33.576237, 21.632689> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.928734, 33.779037, 21.697313>,  <39.725533, 33.900719, 21.736088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.928734, 33.779037, 21.697313>,  <40.267399, 33.576237, 21.632689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.928734, 33.779037, 21.697313> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157024, 0.528147, -0.834508,
		-0.508429, -0.681180, -0.526776,
		-0.846666, 0.507005, 0.161563,
		39.674732, 33.931137, 21.745783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.018562, 33.708839, 20.923073>,  <40.267399, 33.576237, 21.632689>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.018562, 33.708839, 20.923073> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.842834, 33.984608, 21.153444>,  <39.737400, 34.150070, 21.291668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.842834, 33.984608, 21.153444>,  <40.018562, 33.708839, 20.923073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.842834, 33.984608, 21.153444> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118200, 0.679899, -0.723717,
		-0.890522, -0.249867, -0.380181,
		-0.439317, 0.689423, 0.575930,
		39.711040, 34.191433, 21.326223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.913834, 34.193653, 20.432880>,  <40.018562, 33.708839, 20.923073>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.913834, 34.193653, 20.432880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.853210, 34.393242, 20.774185>,  <39.816837, 34.512997, 20.978968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.853210, 34.393242, 20.774185>,  <39.913834, 34.193653, 20.432880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.853210, 34.393242, 20.774185> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276783, 0.850124, -0.447973,
		-0.948906, 0.168277, -0.266948,
		-0.151555, 0.498971, 0.853264,
		39.807743, 34.542934, 21.030165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528732, 34.700520, 20.393303>,  <39.913834, 34.193653, 20.432880>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.528732, 34.700520, 20.393303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.797108, 34.765285, 20.682751>,  <39.958134, 34.804146, 20.856419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.797108, 34.765285, 20.682751>,  <39.528732, 34.700520, 20.393303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.797108, 34.765285, 20.682751> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343083, 0.797347, -0.496520,
		-0.657368, 0.581396, 0.479422,
		0.670940, 0.161915, 0.723618,
		39.998390, 34.813858, 20.899836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.032784, 30.231445, 35.809170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.192871, 30.573479, 35.677319>,  <35.288921, 30.778700, 35.598206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.192871, 30.573479, 35.677319>,  <35.032784, 30.231445, 35.809170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192871, 30.573479, 35.677319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169243, -0.284542, -0.943606,
		-0.900657, 0.433435, 0.030839,
		0.400217, 0.855085, -0.329630,
		35.312935, 30.830004, 35.578430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698456, 30.329065, 35.176926>,  <35.032784, 30.231445, 35.809170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698456, 30.329065, 35.176926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.036495, 30.540239, 35.143227>,  <35.239319, 30.666945, 35.123009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.036495, 30.540239, 35.143227>,  <34.698456, 30.329065, 35.176926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036495, 30.540239, 35.143227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131775, -0.358418, -0.924214,
		-0.518121, 0.769948, -0.372466,
		0.845096, 0.527936, -0.084244,
		35.290024, 30.698620, 35.117954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611576, 30.960167, 34.750488>,  <34.698456, 30.329065, 35.176926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.611576, 30.960167, 34.750488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.995453, 30.847740, 34.750038>,  <35.225777, 30.780285, 34.749767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.995453, 30.847740, 34.750038>,  <34.611576, 30.960167, 34.750488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.995453, 30.847740, 34.750038> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036657, -0.121201, -0.991951,
		0.278668, 0.952004, -0.126618,
		0.959688, -0.281067, -0.001123,
		35.283360, 30.763420, 34.749702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.921013, 31.379808, 34.234222>,  <34.611576, 30.960167, 34.750488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.921013, 31.379808, 34.234222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.202213, 31.096102, 34.255131>,  <35.370934, 30.925879, 34.267677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.202213, 31.096102, 34.255131>,  <34.921013, 31.379808, 34.234222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.202213, 31.096102, 34.255131> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132060, 0.057960, -0.989546,
		0.698821, 0.702554, 0.134411,
		0.703000, -0.709266, 0.052275,
		35.413113, 30.883322, 34.270813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402580, 31.576023, 33.688076>,  <34.921013, 31.379808, 34.234222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402580, 31.576023, 33.688076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.461617, 31.188108, 33.765770>,  <35.497040, 30.955359, 33.812386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.461617, 31.188108, 33.765770>,  <35.402580, 31.576023, 33.688076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461617, 31.188108, 33.765770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102500, -0.180328, -0.978251,
		0.983722, 0.164294, 0.072788,
		0.147595, -0.969788, 0.194233,
		35.505894, 30.897171, 33.824039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963013, 31.463396, 33.245464>,  <35.402580, 31.576023, 33.688076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.963013, 31.463396, 33.245464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.771572, 31.122196, 33.328724>,  <35.656708, 30.917477, 33.378681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.771572, 31.122196, 33.328724>,  <35.963013, 31.463396, 33.245464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771572, 31.122196, 33.328724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164353, -0.319907, -0.933085,
		0.862511, -0.412369, 0.293302,
		-0.478604, -0.853001, 0.208149,
		35.627991, 30.866295, 33.391171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371017, 30.826662, 32.882839>,  <35.963013, 31.463396, 33.245464>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371017, 30.826662, 32.882839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.025867, 30.645325, 32.972221>,  <35.818779, 30.536522, 33.025848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.025867, 30.645325, 32.972221>,  <36.371017, 30.826662, 32.882839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.025867, 30.645325, 32.972221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045696, -0.510275, -0.858796,
		0.503352, -0.730821, 0.461018,
		-0.862872, -0.453344, 0.223453,
		35.767006, 30.509321, 33.039257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510990, 30.089895, 32.870895>,  <36.371017, 30.826662, 32.882839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510990, 30.089895, 32.870895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.124165, 30.154333, 32.792068>,  <35.892071, 30.192995, 32.744774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.124165, 30.154333, 32.792068>,  <36.510990, 30.089895, 32.870895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.124165, 30.154333, 32.792068> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094002, -0.493449, -0.864680,
		-0.236535, -0.854726, 0.462055,
		-0.967065, 0.161093, -0.197064,
		35.834045, 30.202662, 32.732948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335194, 29.516270, 32.417210>,  <36.510990, 30.089895, 32.870895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.335194, 29.516270, 32.417210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.022587, 29.761290, 32.369858>,  <35.835022, 29.908302, 32.341446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.022587, 29.761290, 32.369858>,  <36.335194, 29.516270, 32.417210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022587, 29.761290, 32.369858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002201, -0.187032, -0.982351,
		-0.623880, -0.767984, 0.144820,
		-0.781517, 0.612551, -0.118376,
		35.788132, 29.945055, 32.334347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901760, 29.143631, 32.015854>,  <36.335194, 29.516270, 32.417210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.901760, 29.143631, 32.015854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.808868, 29.526915, 31.949032>,  <35.753132, 29.756886, 31.908939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.808868, 29.526915, 31.949032>,  <35.901760, 29.143631, 32.015854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808868, 29.526915, 31.949032> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149423, -0.134564, -0.979574,
		-0.961115, -0.252447, -0.111929,
		-0.232229, 0.958208, -0.167053,
		35.739201, 29.814377, 31.898916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.470985, 29.156141, 31.282391>,  <35.901760, 29.143631, 32.015854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.470985, 29.156141, 31.282391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.631603, 29.515068, 31.355701>,  <35.727974, 29.730423, 31.399687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.631603, 29.515068, 31.355701>,  <35.470985, 29.156141, 31.282391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.631603, 29.515068, 31.355701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152229, 0.131940, -0.979499,
		-0.903100, 0.421210, -0.083618,
		0.401542, 0.897315, 0.183275,
		35.752068, 29.784262, 31.410685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275059, 29.609852, 30.702978>,  <35.470985, 29.156141, 31.282391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275059, 29.609852, 30.702978> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.590237, 29.811455, 30.844465>,  <35.779343, 29.932417, 30.929358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.590237, 29.811455, 30.844465>,  <35.275059, 29.609852, 30.702978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.590237, 29.811455, 30.844465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182129, 0.357983, -0.915793,
		-0.588191, 0.786019, 0.190277,
		0.787947, 0.504007, 0.353720,
		35.826622, 29.962656, 30.950581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.632431, 30.017881, 30.627104>,  <35.275059, 29.609852, 30.702978>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.632431, 30.017881, 30.627104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.254631, 30.045843, 30.498707>,  <34.027950, 30.062620, 30.421669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.254631, 30.045843, 30.498707>,  <34.632431, 30.017881, 30.627104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.254631, 30.045843, 30.498707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328451, -0.181761, 0.926867,
		0.006446, 0.980855, 0.194632,
		-0.944499, 0.069902, -0.320991,
		33.971283, 30.066814, 30.402409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182953, 30.502777, 31.009325>,  <34.632431, 30.017881, 30.627104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.182953, 30.502777, 31.009325> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.915604, 30.246199, 30.858688>,  <33.755196, 30.092251, 30.768307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.915604, 30.246199, 30.858688>,  <34.182953, 30.502777, 31.009325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915604, 30.246199, 30.858688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389441, -0.129580, 0.911891,
		-0.633729, 0.756144, -0.163198,
		-0.668374, -0.641447, -0.376592,
		33.715092, 30.053764, 30.745710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.586887, 30.746172, 31.311752>,  <34.182953, 30.502777, 31.009325>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.586887, 30.746172, 31.311752> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.505909, 30.367466, 31.211628>,  <33.457321, 30.140244, 31.151554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.505909, 30.367466, 31.211628>,  <33.586887, 30.746172, 31.311752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505909, 30.367466, 31.211628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350482, -0.168627, 0.921264,
		-0.914428, 0.274233, -0.297687,
		-0.202443, -0.946764, -0.250311,
		33.445175, 30.083437, 31.136536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.833328, 30.557560, 31.432653>,  <33.586887, 30.746172, 31.311752>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.833328, 30.557560, 31.432653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.031685, 30.210670, 31.414705>,  <33.150700, 30.002537, 31.403936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.031685, 30.210670, 31.414705>,  <32.833328, 30.557560, 31.432653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.031685, 30.210670, 31.414705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448049, -0.299778, 0.842250,
		-0.743872, -0.397560, -0.537216,
		0.495891, -0.867225, -0.044871,
		33.180450, 29.950502, 31.401245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.337234, 29.972374, 31.416189>,  <32.833328, 30.557560, 31.432653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.337234, 29.972374, 31.416189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.691689, 29.826351, 31.530382>,  <32.904362, 29.738737, 31.598898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.691689, 29.826351, 31.530382>,  <32.337234, 29.972374, 31.416189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.691689, 29.826351, 31.530382> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421327, -0.378067, 0.824348,
		-0.193001, -0.850764, -0.488825,
		0.886134, -0.365055, 0.285482,
		32.957527, 29.716833, 31.616026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.174149, 29.335644, 31.609070>,  <32.337234, 29.972374, 31.416189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.174149, 29.335644, 31.609070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.508820, 29.430239, 31.806675>,  <32.709621, 29.486996, 31.925238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.508820, 29.430239, 31.806675>,  <32.174149, 29.335644, 31.609070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.508820, 29.430239, 31.806675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385562, -0.386305, 0.837920,
		0.388997, -0.891540, -0.232031,
		0.836674, 0.236486, 0.494015,
		32.759823, 29.501184, 31.954880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.127598, 28.862268, 32.160744>,  <32.174149, 29.335644, 31.609070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.127598, 28.862268, 32.160744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.422504, 29.090832, 32.304928>,  <32.599449, 29.227970, 32.391438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.422504, 29.090832, 32.304928>,  <32.127598, 28.862268, 32.160744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.422504, 29.090832, 32.304928> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317540, -0.177857, 0.931416,
		0.596331, -0.801160, 0.050318,
		0.737264, 0.571410, 0.360462,
		32.643684, 29.262255, 32.413067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.437935, 28.547441, 32.669937>,  <32.127598, 28.862268, 32.160744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.437935, 28.547441, 32.669937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.557636, 28.919514, 32.754986>,  <32.629459, 29.142757, 32.806015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.557636, 28.919514, 32.754986>,  <32.437935, 28.547441, 32.669937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.557636, 28.919514, 32.754986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246325, -0.139968, 0.959027,
		0.921830, -0.339368, 0.187241,
		0.299256, 0.930182, 0.212621,
		32.647411, 29.198568, 32.818771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.635571, 28.539869, 33.389359>,  <32.437935, 28.547441, 32.669937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.635571, 28.539869, 33.389359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.597458, 28.935671, 33.345901>,  <32.574589, 29.173151, 33.319828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.597458, 28.935671, 33.345901>,  <32.635571, 28.539869, 33.389359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.597458, 28.935671, 33.345901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263528, 0.080175, 0.961314,
		0.959935, 0.120225, 0.253123,
		-0.095280, 0.989504, -0.108645,
		32.568874, 29.232521, 33.313309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.858150, 28.869345, 33.915016>,  <32.635571, 28.539869, 33.389359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.858150, 28.869345, 33.915016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.630299, 29.165527, 33.772331>,  <32.493587, 29.343237, 33.686718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.630299, 29.165527, 33.772331>,  <32.858150, 28.869345, 33.915016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.630299, 29.165527, 33.772331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330916, 0.190661, 0.924199,
		0.752339, 0.644496, 0.136421,
		-0.569632, 0.740455, -0.356716,
		32.459408, 29.387663, 33.665318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.835960, 29.422970, 34.391319>,  <32.858150, 28.869345, 33.915016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.835960, 29.422970, 34.391319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.500668, 29.477367, 34.180088>,  <32.299492, 29.510006, 34.053349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.500668, 29.477367, 34.180088>,  <32.835960, 29.422970, 34.391319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.500668, 29.477367, 34.180088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504729, 0.173094, 0.845747,
		0.206425, 0.975471, -0.076452,
		-0.838235, 0.135996, -0.528079,
		32.249199, 29.518166, 34.021664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.632000, 30.089289, 34.645382>,  <32.835960, 29.422970, 34.391319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.632000, 30.089289, 34.645382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.305904, 29.910378, 34.498238>,  <32.110249, 29.803030, 34.409950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.305904, 29.910378, 34.498238>,  <32.632000, 30.089289, 34.645382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.305904, 29.910378, 34.498238> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524317, 0.300323, 0.796804,
		-0.245917, 0.842464, -0.479352,
		-0.815240, -0.447280, -0.367864,
		32.061333, 29.776194, 34.387878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.180275, 30.567177, 34.876461>,  <32.632000, 30.089289, 34.645382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.180275, 30.567177, 34.876461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.974154, 30.236177, 34.787281>,  <31.850481, 30.037579, 34.733772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.974154, 30.236177, 34.787281>,  <32.180275, 30.567177, 34.876461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.974154, 30.236177, 34.787281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494167, 0.074353, 0.866182,
		-0.700187, 0.556523, -0.447236,
		-0.515304, -0.827498, -0.222954,
		31.819563, 29.987928, 34.720394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.515299, 30.755711, 34.842941>,  <32.180275, 30.567177, 34.876461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.515299, 30.755711, 34.842941> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.554028, 30.373318, 34.953735>,  <31.577265, 30.143881, 35.020210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.554028, 30.373318, 34.953735>,  <31.515299, 30.755711, 34.842941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.554028, 30.373318, 34.953735> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537007, 0.184134, 0.823237,
		-0.838003, -0.228451, -0.495542,
		0.096823, -0.955984, 0.276984,
		31.583075, 30.086523, 35.036831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.475203, 31.509264, 35.083202>,  <31.515299, 30.755711, 34.842941>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.475203, 31.509264, 35.083202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.192156, 31.710508, 34.884747>,  <31.022327, 31.831255, 34.765675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.192156, 31.710508, 34.884747>,  <31.475203, 31.509264, 35.083202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.192156, 31.710508, 34.884747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661722, 0.225607, -0.715000,
		-0.247792, -0.834254, -0.492564,
		-0.707618, 0.503112, -0.496141,
		30.979870, 31.861443, 34.735905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.657925, 31.353525, 34.430870>,  <31.475203, 31.509264, 35.083202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.657925, 31.353525, 34.430870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.436787, 31.684195, 34.472767>,  <31.304104, 31.882597, 34.497906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.436787, 31.684195, 34.472767>,  <31.657925, 31.353525, 34.430870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.436787, 31.684195, 34.472767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649028, 0.506017, -0.568076,
		-0.522615, -0.246078, -0.816284,
		-0.552844, 0.826676, 0.104741,
		31.270933, 31.932198, 34.504189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.410305, 31.619738, 33.779442>,  <31.657925, 31.353525, 34.430870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.410305, 31.619738, 33.779442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.423811, 31.932976, 34.027836>,  <31.431913, 32.120918, 34.176872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.423811, 31.932976, 34.027836>,  <31.410305, 31.619738, 33.779442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.423811, 31.932976, 34.027836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432685, 0.548636, -0.715389,
		-0.900913, 0.292843, -0.320311,
		0.033763, 0.783097, 0.620982,
		31.433939, 32.167904, 34.214130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.992224, 32.171104, 33.567047>,  <31.410305, 31.619738, 33.779442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.992224, 32.171104, 33.567047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.258362, 32.347733, 33.807823>,  <31.418045, 32.453709, 33.952290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.258362, 32.347733, 33.807823>,  <30.992224, 32.171104, 33.567047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.258362, 32.347733, 33.807823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276068, 0.603619, -0.747951,
		-0.693614, 0.663823, 0.279712,
		0.665346, 0.441570, 0.601939,
		31.457966, 32.480202, 33.988403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.876371, 32.871853, 33.438831>,  <30.992224, 32.171104, 33.567047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.876371, 32.871853, 33.438831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.239599, 32.856533, 33.605656>,  <31.457537, 32.847340, 33.705750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.239599, 32.856533, 33.605656>,  <30.876371, 32.871853, 33.438831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.239599, 32.856533, 33.605656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342650, 0.640549, -0.687232,
		-0.240827, 0.766962, 0.594787,
		0.908071, -0.038300, 0.417061,
		31.512020, 32.845043, 33.730774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.137508, 33.606556, 33.518188>,  <30.876371, 32.871853, 33.438831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.137508, 33.606556, 33.518188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.442316, 33.347538, 33.516727>,  <31.625200, 33.192127, 33.515850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.442316, 33.347538, 33.516727>,  <31.137508, 33.606556, 33.518188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.442316, 33.347538, 33.516727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470379, 0.557394, -0.684145,
		0.445053, 0.519612, 0.729337,
		0.762018, -0.647546, -0.003655,
		31.670921, 33.153275, 33.515633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.718069, 34.017883, 33.368168>,  <31.137508, 33.606556, 33.518188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.718069, 34.017883, 33.368168> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.849874, 33.646687, 33.298599>,  <31.928959, 33.423969, 33.256859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.849874, 33.646687, 33.298599>,  <31.718069, 34.017883, 33.368168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.849874, 33.646687, 33.298599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563353, 0.341074, -0.752531,
		0.757663, 0.149991, 0.635177,
		0.329515, -0.927993, -0.173921,
		31.948729, 33.368290, 33.246422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.416157, 34.066128, 33.325352>,  <31.718069, 34.017883, 33.368168>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.416157, 34.066128, 33.325352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.301769, 33.742607, 33.119804>,  <32.233135, 33.548496, 32.996475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.301769, 33.742607, 33.119804>,  <32.416157, 34.066128, 33.325352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.301769, 33.742607, 33.119804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482171, 0.341969, -0.806578,
		0.828089, -0.478431, 0.292188,
		-0.285973, -0.808803, -0.513866,
		32.215977, 33.499966, 32.965645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005836, 33.927853, 32.984932>,  <32.416157, 34.066128, 33.325352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.005836, 33.927853, 32.984932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.769470, 33.692833, 32.763802>,  <32.627651, 33.551823, 32.631123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.769470, 33.692833, 32.763802>,  <33.005836, 33.927853, 32.984932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.769470, 33.692833, 32.763802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558714, 0.196264, -0.805804,
		0.581945, -0.785029, 0.212295,
		-0.590913, -0.587546, -0.552822,
		32.592197, 33.516571, 32.597954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.339081, 33.446503, 32.523945>,  <33.005836, 33.927853, 32.984932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.339081, 33.446503, 32.523945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.985241, 33.505840, 32.347095>,  <32.772938, 33.541443, 32.240986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.985241, 33.505840, 32.347095>,  <33.339081, 33.446503, 32.523945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985241, 33.505840, 32.347095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463043, 0.392060, -0.794908,
		0.055423, -0.907901, -0.415505,
		-0.884601, 0.148341, -0.442126,
		32.719860, 33.550343, 32.214458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.456806, 33.238976, 31.921429>,  <33.339081, 33.446503, 32.523945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.456806, 33.238976, 31.921429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.122143, 33.452888, 31.874086>,  <32.921345, 33.581238, 31.845680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.122143, 33.452888, 31.874086>,  <33.456806, 33.238976, 31.921429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122143, 33.452888, 31.874086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338970, 0.335818, -0.878820,
		-0.430231, -0.775393, -0.462241,
		-0.836660, 0.534782, -0.118356,
		32.871143, 33.613323, 31.838579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.180599, 33.106365, 31.222746>,  <33.456806, 33.238976, 31.921429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.180599, 33.106365, 31.222746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.038460, 33.464699, 31.329483>,  <32.953175, 33.679699, 31.393526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.038460, 33.464699, 31.329483>,  <33.180599, 33.106365, 31.222746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.038460, 33.464699, 31.329483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245622, 0.364935, -0.898049,
		-0.901885, -0.253579, -0.349717,
		-0.355351, 0.895835, 0.266844,
		32.931854, 33.733448, 31.409536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.876324, 33.244617, 30.582230>,  <33.180599, 33.106365, 31.222746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.876324, 33.244617, 30.582230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.919540, 33.581360, 30.793741>,  <32.945469, 33.783405, 30.920649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.919540, 33.581360, 30.793741>,  <32.876324, 33.244617, 30.582230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.919540, 33.581360, 30.793741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301944, 0.478978, -0.824263,
		-0.947184, 0.248713, -0.202446,
		0.108038, 0.841856, 0.528778,
		32.951950, 33.833916, 30.952375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.717140, 33.716450, 30.117001>,  <32.876324, 33.244617, 30.582230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.717140, 33.716450, 30.117001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.908894, 33.926308, 30.398407>,  <33.023945, 34.052223, 30.567251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.908894, 33.926308, 30.398407>,  <32.717140, 33.716450, 30.117001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.908894, 33.926308, 30.398407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435194, 0.554011, -0.709703,
		-0.762098, 0.646389, 0.037263,
		0.479388, 0.524646, 0.703515,
		33.052711, 34.083702, 30.609461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.741714, 34.414970, 29.816038>,  <32.717140, 33.716450, 30.117001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.741714, 34.414970, 29.816038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.994617, 34.447704, 30.124208>,  <33.146358, 34.467342, 30.309111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.994617, 34.447704, 30.124208>,  <32.741714, 34.414970, 29.816038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.994617, 34.447704, 30.124208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491070, 0.726812, -0.480203,
		-0.599250, 0.681944, 0.419347,
		0.632258, 0.081833, 0.770424,
		33.184296, 34.472256, 30.355335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.826065, 35.126442, 30.002232>,  <32.741714, 34.414970, 29.816038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.826065, 35.126442, 30.002232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.153339, 34.930984, 30.123419>,  <33.349705, 34.813709, 30.196131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.153339, 34.930984, 30.123419>,  <32.826065, 35.126442, 30.002232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153339, 34.930984, 30.123419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560620, 0.561144, -0.608952,
		0.127555, 0.668088, 0.733068,
		0.818190, -0.488647, 0.302967,
		33.398796, 34.784389, 30.214310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.286545, 35.644268, 30.170094>,  <32.826065, 35.126442, 30.002232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.286545, 35.644268, 30.170094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.523468, 35.323353, 30.140440>,  <33.665623, 35.130802, 30.122648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.523468, 35.323353, 30.140440>,  <33.286545, 35.644268, 30.170094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.523468, 35.323353, 30.140440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734088, 0.575295, -0.360763,
		0.332087, 0.159262, 0.929706,
		0.592311, -0.802291, -0.074136,
		33.701160, 35.082664, 30.118198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886070, 35.776257, 30.509100>,  <33.286545, 35.644268, 30.170094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886070, 35.776257, 30.509100> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.989510, 35.485664, 30.254431>,  <34.051571, 35.311310, 30.101629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.989510, 35.485664, 30.254431>,  <33.886070, 35.776257, 30.509100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.989510, 35.485664, 30.254431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737199, 0.574331, -0.355922,
		0.624232, -0.377314, 0.684082,
		0.258595, -0.726483, -0.636672,
		34.067089, 35.267719, 30.063429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658794, 35.718616, 30.623724>,  <33.886070, 35.776257, 30.509100>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658794, 35.718616, 30.623724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.528481, 35.586246, 30.269468>,  <34.450294, 35.506824, 30.056915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.528481, 35.586246, 30.269468>,  <34.658794, 35.718616, 30.623724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528481, 35.586246, 30.269468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749369, 0.480779, -0.455299,
		0.576465, -0.811999, 0.091353,
		-0.325782, -0.330921, -0.885640,
		34.430744, 35.486969, 30.003777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217262, 35.430908, 30.309574>,  <34.658794, 35.718616, 30.623724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217262, 35.430908, 30.309574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.965267, 35.516197, 30.010870>,  <34.814072, 35.567371, 29.831648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.965267, 35.516197, 30.010870>,  <35.217262, 35.430908, 30.309574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965267, 35.516197, 30.010870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776249, 0.202091, -0.597158,
		0.023585, -0.955874, -0.292830,
		-0.629986, 0.213224, -0.746762,
		34.776272, 35.580166, 29.786840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578735, 35.207603, 29.669401>,  <35.217262, 35.430908, 30.309574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578735, 35.207603, 29.669401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.289944, 35.451500, 29.538580>,  <35.116669, 35.597839, 29.460087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.289944, 35.451500, 29.538580>,  <35.578735, 35.207603, 29.669401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.289944, 35.451500, 29.538580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536878, 0.195499, -0.820696,
		-0.436474, -0.768112, -0.468502,
		-0.721978, 0.609741, -0.327052,
		35.073349, 35.634422, 29.440464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584488, 35.049583, 28.963333>,  <35.578735, 35.207603, 29.669401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.584488, 35.049583, 28.963333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.362274, 35.382175, 28.965132>,  <35.228947, 35.581730, 28.966211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.362274, 35.382175, 28.965132>,  <35.584488, 35.049583, 28.963333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.362274, 35.382175, 28.965132> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341123, 0.232840, -0.910725,
		-0.758298, -0.504406, -0.412988,
		-0.555535, 0.831481, 0.004497,
		35.195614, 35.631618, 28.966480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226513, 34.980537, 28.348902>,  <35.584488, 35.049583, 28.963333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.226513, 34.980537, 28.348902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.220951, 35.371620, 28.432709>,  <35.217613, 35.606270, 28.482992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.220951, 35.371620, 28.432709>,  <35.226513, 34.980537, 28.348902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220951, 35.371620, 28.432709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273803, 0.205251, -0.939630,
		-0.961685, 0.044297, -0.270554,
		-0.013909, 0.977707, 0.209515,
		35.216778, 35.664932, 28.495564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992229, 35.324009, 27.654188>,  <35.226513, 34.980537, 28.348902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992229, 35.324009, 27.654188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.166805, 35.591145, 27.895355>,  <35.271553, 35.751427, 28.040054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.166805, 35.591145, 27.895355>,  <34.992229, 35.324009, 27.654188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166805, 35.591145, 27.895355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463085, 0.407794, -0.786928,
		-0.771408, 0.622650, -0.131288,
		0.436443, 0.667840, 0.602915,
		35.297737, 35.791496, 28.076229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777645, 35.870892, 27.369352>,  <34.992229, 35.324009, 27.654188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777645, 35.870892, 27.369352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.094082, 35.966785, 27.594460>,  <35.283943, 36.024323, 27.729525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.094082, 35.966785, 27.594460>,  <34.777645, 35.870892, 27.369352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094082, 35.966785, 27.594460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369565, 0.545811, -0.752006,
		-0.487444, 0.802882, 0.343188,
		0.791088, 0.239731, 0.562770,
		35.331409, 36.038704, 27.763290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919060, 36.585846, 27.238794>,  <34.777645, 35.870892, 27.369352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.919060, 36.585846, 27.238794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.263496, 36.454571, 27.394135>,  <35.470158, 36.375805, 27.487339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.263496, 36.454571, 27.394135>,  <34.919060, 36.585846, 27.238794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263496, 36.454571, 27.394135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505427, 0.469337, -0.724062,
		0.055361, 0.819765, 0.570017,
		0.861092, -0.328187, 0.388348,
		35.521824, 36.356113, 27.510639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281952, 37.065887, 27.150356>,  <34.919060, 36.585846, 27.238794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281952, 37.065887, 27.150356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.552807, 36.780231, 27.221331>,  <35.715321, 36.608837, 27.263916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.552807, 36.780231, 27.221331>,  <35.281952, 37.065887, 27.150356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552807, 36.780231, 27.221331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656446, 0.477282, -0.584193,
		0.332509, 0.512058, 0.791981,
		0.677139, -0.714142, 0.177437,
		35.755947, 36.565990, 27.274561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872364, 37.392075, 27.471388>,  <35.281952, 37.065887, 27.150356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872364, 37.392075, 27.471388> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.991261, 37.047817, 27.306005>,  <36.062599, 36.841263, 27.206776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.991261, 37.047817, 27.306005>,  <35.872364, 37.392075, 27.471388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991261, 37.047817, 27.306005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647403, 0.499950, -0.575256,
		0.701796, -0.096683, 0.705787,
		0.297240, -0.860641, -0.413456,
		36.080433, 36.789623, 27.181969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480804, 37.509518, 27.979870>,  <35.872364, 37.392075, 27.471388>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.480804, 37.509518, 27.979870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.739330, 37.786304, 28.108526>,  <36.894447, 37.952377, 28.185720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.739330, 37.786304, 28.108526>,  <36.480804, 37.509518, 27.979870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.739330, 37.786304, 28.108526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146856, -0.300835, 0.942301,
		0.748807, -0.656257, -0.092814,
		0.646313, 0.691972, 0.321643,
		36.933224, 37.993896, 28.205019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991615, 37.182049, 28.397524>,  <36.480804, 37.509518, 27.979870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.991615, 37.182049, 28.397524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.001614, 37.565704, 28.510262>,  <37.007614, 37.795898, 28.577904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.001614, 37.565704, 28.510262>,  <36.991615, 37.182049, 28.397524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001614, 37.565704, 28.510262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031332, -0.282546, 0.958742,
		0.999196, -0.015134, -0.037115,
		0.024996, 0.959134, 0.281845,
		37.009113, 37.853443, 28.594814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391716, 37.184887, 28.938406>,  <36.991615, 37.182049, 28.397524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.391716, 37.184887, 28.938406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.173634, 37.517868, 28.977938>,  <37.042786, 37.717659, 29.001657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.173634, 37.517868, 28.977938>,  <37.391716, 37.184887, 28.938406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.173634, 37.517868, 28.977938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141924, -0.207852, 0.967810,
		0.826201, 0.513629, 0.231467,
		-0.545206, 0.832456, 0.098831,
		37.010071, 37.767605, 29.007587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645107, 37.662968, 29.557510>,  <37.391716, 37.184887, 28.938406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645107, 37.662968, 29.557510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.256077, 37.729034, 29.492004>,  <37.022659, 37.768673, 29.452702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.256077, 37.729034, 29.492004>,  <37.645107, 37.662968, 29.557510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256077, 37.729034, 29.492004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193220, -0.181773, 0.964170,
		0.129482, 0.969370, 0.208702,
		-0.972574, 0.165168, -0.163765,
		36.964306, 37.778584, 29.442875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430363, 38.135849, 30.036987>,  <37.645107, 37.662968, 29.557510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.430363, 38.135849, 30.036987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.083206, 37.989792, 29.902264>,  <36.874912, 37.902157, 29.821430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.083206, 37.989792, 29.902264>,  <37.430363, 38.135849, 30.036987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.083206, 37.989792, 29.902264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323583, -0.098891, 0.941018,
		-0.376910, 0.925686, -0.032326,
		-0.867890, -0.365139, -0.336809,
		36.822838, 37.880249, 29.801222>
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
