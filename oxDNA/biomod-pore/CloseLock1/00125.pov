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
	<24.012081, 35.398361, 35.086391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.125660, 35.047928, 35.242268>,  <24.193808, 34.837669, 35.335793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.125660, 35.047928, 35.242268>,  <24.012081, 35.398361, 35.086391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.125660, 35.047928, 35.242268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912126, 0.121494, -0.391490,
		0.295632, 0.466607, 0.833594,
		0.283949, -0.876080, 0.389687,
		24.210844, 34.785103, 35.359173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.691931, 35.660267, 35.271244>,  <24.012081, 35.398361, 35.086391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.691931, 35.660267, 35.271244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.650513, 35.264347, 35.310379>,  <24.625662, 35.026794, 35.333858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.650513, 35.264347, 35.310379>,  <24.691931, 35.660267, 35.271244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.650513, 35.264347, 35.310379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983926, -0.116325, -0.135493,
		0.145492, 0.082231, 0.985936,
		-0.103547, -0.989801, 0.097834,
		24.619448, 34.967407, 35.339729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.217331, 35.387596, 35.728043>,  <24.691931, 35.660267, 35.271244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.217331, 35.387596, 35.728043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.108580, 35.154308, 35.421856>,  <25.043329, 35.014336, 35.238144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.108580, 35.154308, 35.421856>,  <25.217331, 35.387596, 35.728043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.108580, 35.154308, 35.421856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958852, -0.096598, -0.266966,
		0.081757, -0.806551, 0.585484,
		-0.271878, -0.583219, -0.765466,
		25.027016, 34.979343, 35.192215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.383730, 34.646748, 35.720772>,  <25.217331, 35.387596, 35.728043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.383730, 34.646748, 35.720772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.398115, 34.758167, 35.336872>,  <25.406746, 34.825020, 35.106533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.398115, 34.758167, 35.336872>,  <25.383730, 34.646748, 35.720772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.398115, 34.758167, 35.336872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972018, 0.213331, 0.098341,
		0.232136, -0.936429, -0.263084,
		0.035965, 0.278551, -0.959748,
		25.408905, 34.841732, 35.048946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.963186, 34.314037, 35.278816>,  <25.383730, 34.646748, 35.720772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.963186, 34.314037, 35.278816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.878998, 34.659836, 35.096237>,  <25.828484, 34.867317, 34.986691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.878998, 34.659836, 35.096237>,  <25.963186, 34.314037, 35.278816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.878998, 34.659836, 35.096237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976512, 0.163895, -0.139869,
		-0.046108, -0.475162, -0.878690,
		-0.210473, 0.864500, -0.456444,
		25.815855, 34.919186, 34.959305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.447414, 34.344810, 34.791451>,  <25.963186, 34.314037, 35.278816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.447414, 34.344810, 34.791451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.364117, 34.736008, 34.796665>,  <26.314138, 34.970726, 34.799793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.364117, 34.736008, 34.796665>,  <26.447414, 34.344810, 34.791451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.364117, 34.736008, 34.796665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977677, 0.207760, 0.031367,
		0.027969, 0.019275, -0.999423,
		-0.208245, 0.977990, 0.013034,
		26.301643, 35.029404, 34.800575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.990088, 34.088863, 34.368820>,  <26.447414, 34.344810, 34.791451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.990088, 34.088863, 34.368820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.359821, 34.234303, 34.322502>,  <27.581661, 34.321564, 34.294712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.359821, 34.234303, 34.322502>,  <26.990088, 34.088863, 34.368820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.359821, 34.234303, 34.322502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291203, 0.476015, -0.829826,
		-0.246597, 0.800756, 0.545876,
		0.924332, 0.363594, -0.115798,
		27.637121, 34.343380, 34.287762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.793676, 34.479084, 33.963135>,  <26.990088, 34.088863, 34.368820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.793676, 34.479084, 33.963135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.183399, 34.562199, 33.928371>,  <27.417233, 34.612068, 33.907513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.183399, 34.562199, 33.928371>,  <26.793676, 34.479084, 33.963135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.183399, 34.562199, 33.928371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198978, 0.613281, -0.764391,
		-0.105527, 0.762044, 0.638868,
		0.974306, 0.207784, -0.086913,
		27.475691, 34.624535, 33.902298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.893805, 35.135075, 33.999554>,  <26.793676, 34.479084, 33.963135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.893805, 35.135075, 33.999554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.207720, 35.012543, 33.784046>,  <27.396069, 34.939026, 33.654743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.207720, 35.012543, 33.784046>,  <26.893805, 35.135075, 33.999554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.207720, 35.012543, 33.784046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246228, 0.643654, -0.724625,
		0.568753, 0.701337, 0.429705,
		0.784787, -0.306328, -0.538769,
		27.443155, 34.920643, 33.622414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.337914, 35.720207, 33.831841>,  <26.893805, 35.135075, 33.999554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.337914, 35.720207, 33.831841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.408852, 35.430042, 33.565807>,  <27.451414, 35.255943, 33.406189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.408852, 35.430042, 33.565807>,  <27.337914, 35.720207, 33.831841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.408852, 35.430042, 33.565807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168522, 0.643426, -0.746728,
		0.969613, 0.244509, -0.008139,
		0.177345, -0.725409, -0.665079,
		27.462055, 35.212418, 33.366283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.725996, 36.046574, 33.394070>,  <27.337914, 35.720207, 33.831841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.725996, 36.046574, 33.394070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.598574, 35.730537, 33.184582>,  <27.522121, 35.540916, 33.058891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.598574, 35.730537, 33.184582>,  <27.725996, 36.046574, 33.394070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.598574, 35.730537, 33.184582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022334, 0.558602, -0.829135,
		0.947641, -0.252429, -0.195592,
		-0.318555, -0.790091, -0.523716,
		27.503008, 35.493511, 33.027466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.081795, 36.064396, 32.779610>,  <27.725996, 36.046574, 33.394070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.081795, 36.064396, 32.779610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.760334, 35.839146, 32.702637>,  <27.567457, 35.703995, 32.656452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.760334, 35.839146, 32.702637>,  <28.081795, 36.064396, 32.779610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.760334, 35.839146, 32.702637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123880, 0.474584, -0.871449,
		0.582065, -0.676502, -0.451160,
		-0.803651, -0.563130, -0.192434,
		27.519239, 35.670208, 32.644905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.175245, 35.952427, 32.050640>,  <28.081795, 36.064396, 32.779610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.175245, 35.952427, 32.050640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.806286, 35.839466, 32.156040>,  <27.584909, 35.771690, 32.219280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.806286, 35.839466, 32.156040>,  <28.175245, 35.952427, 32.050640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.806286, 35.839466, 32.156040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383116, 0.582411, -0.716952,
		0.049003, -0.762265, -0.645407,
		-0.922399, -0.282399, 0.263497,
		27.529566, 35.754745, 32.235088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.847668, 35.600807, 31.461494>,  <28.175245, 35.952427, 32.050640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.847668, 35.600807, 31.461494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.540379, 35.740772, 31.675932>,  <27.356005, 35.824753, 31.804594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.540379, 35.740772, 31.675932>,  <27.847668, 35.600807, 31.461494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.540379, 35.740772, 31.675932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382403, 0.420775, -0.822628,
		-0.513424, -0.836964, -0.189441,
		-0.768221, 0.349914, 0.536093,
		27.309912, 35.845745, 31.836760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.252060, 35.479801, 31.037527>,  <27.847668, 35.600807, 31.461494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.252060, 35.479801, 31.037527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.165253, 35.771938, 31.296602>,  <27.113169, 35.947220, 31.452047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.165253, 35.771938, 31.296602>,  <27.252060, 35.479801, 31.037527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.165253, 35.771938, 31.296602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518822, 0.475732, -0.710284,
		-0.826877, -0.490181, 0.275675,
		-0.217020, 0.730344, 0.647689,
		27.100147, 35.991043, 31.490910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.565655, 35.790295, 30.713255>,  <27.252060, 35.479801, 31.037527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.565655, 35.790295, 30.713255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.733053, 36.057564, 30.959312>,  <26.833492, 36.217926, 31.106947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.733053, 36.057564, 30.959312>,  <26.565655, 35.790295, 30.713255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.733053, 36.057564, 30.959312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281115, 0.739345, -0.611836,
		-0.863618, 0.083125, 0.497247,
		0.418496, 0.668176, 0.615143,
		26.858603, 36.258018, 31.143856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.126055, 36.221088, 30.926495>,  <26.565655, 35.790295, 30.713255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.126055, 36.221088, 30.926495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.434237, 36.468651, 30.987623>,  <26.619146, 36.617188, 31.024302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.434237, 36.468651, 30.987623>,  <26.126055, 36.221088, 30.926495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.434237, 36.468651, 30.987623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406102, 0.661278, -0.630707,
		-0.491407, 0.423870, 0.760824,
		0.770454, 0.618907, 0.152823,
		26.665373, 36.654324, 31.033470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.737467, 36.892872, 30.994806>,  <26.126055, 36.221088, 30.926495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.737467, 36.892872, 30.994806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.121389, 37.000454, 30.962713>,  <26.351742, 37.065002, 30.943459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.121389, 37.000454, 30.962713>,  <25.737467, 36.892872, 30.994806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.121389, 37.000454, 30.962713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272481, 0.824388, -0.496123,
		-0.067295, 0.498042, 0.864537,
		0.959805, 0.268957, -0.080230,
		26.409330, 37.081142, 30.938644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.789886, 37.631271, 31.130432>,  <25.737467, 36.892872, 30.994806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.789886, 37.631271, 31.130432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.092802, 37.523396, 30.892515>,  <26.274551, 37.458672, 30.749765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.092802, 37.523396, 30.892515>,  <25.789886, 37.631271, 31.130432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.092802, 37.523396, 30.892515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149882, 0.814675, -0.560214,
		0.635647, 0.513394, 0.576524,
		0.757290, -0.269687, -0.594794,
		26.319988, 37.442490, 30.714077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.161919, 38.216702, 31.227169>,  <25.789886, 37.631271, 31.130432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.161919, 38.216702, 31.227169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.265121, 38.031086, 30.888206>,  <26.327044, 37.919716, 30.684828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.265121, 38.031086, 30.888206>,  <26.161919, 38.216702, 31.227169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.265121, 38.031086, 30.888206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228895, 0.822774, -0.520240,
		0.938637, 0.328193, 0.106065,
		0.258007, -0.464039, -0.847408,
		26.342524, 37.891876, 30.633984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.699265, 38.613842, 30.966928>,  <26.161919, 38.216702, 31.227169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.699265, 38.613842, 30.966928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.573952, 38.406982, 30.648329>,  <26.498764, 38.282867, 30.457169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.573952, 38.406982, 30.648329>,  <26.699265, 38.613842, 30.966928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.573952, 38.406982, 30.648329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067952, 0.848780, -0.524362,
		0.947226, -0.110149, -0.301049,
		-0.313282, -0.517146, -0.796502,
		26.479967, 38.251839, 30.409378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.062569, 38.858105, 30.403210>,  <26.699265, 38.613842, 30.966928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.062569, 38.858105, 30.403210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.744217, 38.703365, 30.216908>,  <26.553205, 38.610523, 30.105127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.744217, 38.703365, 30.216908>,  <27.062569, 38.858105, 30.403210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.744217, 38.703365, 30.216908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084898, 0.832964, -0.546776,
		0.599475, -0.395625, -0.695780,
		-0.795878, -0.386849, -0.465753,
		26.505453, 38.587311, 30.077181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.140497, 38.917782, 29.679543>,  <27.062569, 38.858105, 30.403210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.140497, 38.917782, 29.679543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.744177, 38.878727, 29.717031>,  <26.506386, 38.855293, 29.739525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.744177, 38.878727, 29.717031>,  <27.140497, 38.917782, 29.679543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.744177, 38.878727, 29.717031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133781, 0.811258, -0.569178,
		-0.020460, -0.576479, -0.816856,
		-0.990800, -0.097634, 0.093721,
		26.446938, 38.849438, 29.745148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.916101, 39.096909, 29.010429>,  <27.140497, 38.917782, 29.679543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.916101, 39.096909, 29.010429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.583389, 39.149967, 29.226040>,  <26.383762, 39.181801, 29.355406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.583389, 39.149967, 29.226040>,  <26.916101, 39.096909, 29.010429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.583389, 39.149967, 29.226040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169012, 0.864411, -0.473528,
		-0.528751, -0.484972, -0.696581,
		-0.831780, 0.132648, 0.539024,
		26.333855, 39.189762, 29.387747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.726315, 39.727558, 28.804464>,  <26.916101, 39.096909, 29.010429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.726315, 39.727558, 28.804464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.399086, 39.590473, 28.989206>,  <26.202749, 39.508221, 29.100052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.399086, 39.590473, 28.989206>,  <26.726315, 39.727558, 28.804464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.399086, 39.590473, 28.989206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493959, 0.830001, -0.259042,
		-0.294562, -0.440052, -0.848285,
		-0.818069, -0.342714, 0.461855,
		26.153666, 39.487659, 29.127762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.207716, 40.115257, 28.577036>,  <26.726315, 39.727558, 28.804464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.207716, 40.115257, 28.577036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.983318, 39.913425, 28.839544>,  <25.848680, 39.792328, 28.997049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.983318, 39.913425, 28.839544>,  <26.207716, 40.115257, 28.577036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.983318, 39.913425, 28.839544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725932, 0.680886, -0.097040,
		-0.397881, -0.530846, -0.748260,
		-0.560993, -0.504576, 0.656270,
		25.815020, 39.762054, 29.036425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.615885, 39.864189, 28.184254>,  <26.207716, 40.115257, 28.577036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.615885, 39.864189, 28.184254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.533991, 39.909180, 28.573187>,  <25.484854, 39.936176, 28.806547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.533991, 39.909180, 28.573187>,  <25.615885, 39.864189, 28.184254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.533991, 39.909180, 28.573187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703761, 0.673498, -0.226096,
		-0.680296, -0.730581, -0.058730,
		-0.204736, 0.112480, 0.972333,
		25.472570, 39.942924, 28.864887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.336496, 40.218285, 27.611059>,  <25.615885, 39.864189, 28.184254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.336496, 40.218285, 27.611059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.973892, 40.379696, 27.660704>,  <24.756329, 40.476543, 27.690491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.973892, 40.379696, 27.660704>,  <25.336496, 40.218285, 27.611059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.973892, 40.379696, 27.660704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397020, 0.714846, 0.575647,
		0.143568, 0.571105, -0.808225,
		-0.906511, 0.403526, 0.124111,
		24.701939, 40.500755, 27.697937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.967663, 40.077553, 27.189007>,  <25.336496, 40.218285, 27.611059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.967663, 40.077553, 27.189007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.023491, 40.353619, 26.904980>,  <26.056988, 40.519257, 26.734564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.023491, 40.353619, 26.904980>,  <25.967663, 40.077553, 27.189007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.023491, 40.353619, 26.904980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596417, 0.513830, 0.616657,
		0.790448, -0.509562, -0.339910,
		0.139568, 0.690163, -0.710067,
		26.065361, 40.560669, 26.691959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.714085, 40.186207, 26.954372>,  <25.967663, 40.077553, 27.189007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.714085, 40.186207, 26.954372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.472689, 40.502907, 26.916567>,  <26.327850, 40.692924, 26.893885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.472689, 40.502907, 26.916567>,  <26.714085, 40.186207, 26.954372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.472689, 40.502907, 26.916567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642404, 0.552995, 0.530578,
		0.472349, 0.259484, -0.842350,
		-0.603492, 0.791748, -0.094513,
		26.291641, 40.740433, 26.888212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.077620, 39.635151, 27.205692>,  <26.714085, 40.186207, 26.954372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.077620, 39.635151, 27.205692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.317509, 39.912971, 27.364656>,  <27.461443, 40.079662, 27.460035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.317509, 39.912971, 27.364656>,  <27.077620, 39.635151, 27.205692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.317509, 39.912971, 27.364656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749668, -0.661359, 0.024538,
		0.279874, 0.283210, -0.917313,
		0.599724, 0.694547, 0.397411,
		27.497425, 40.121334, 27.483879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.697287, 39.787457, 26.803350>,  <27.077620, 39.635151, 27.205692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.697287, 39.787457, 26.803350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.726427, 39.835735, 27.199356>,  <27.743912, 39.864704, 27.436958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.726427, 39.835735, 27.199356>,  <27.697287, 39.787457, 26.803350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.726427, 39.835735, 27.199356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740454, -0.671549, 0.027384,
		0.668147, 0.731064, -0.138296,
		0.072853, 0.120698, 0.990012,
		27.748283, 39.871944, 27.496359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.356600, 40.092686, 27.057062>,  <27.697287, 39.787457, 26.803350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.356600, 40.092686, 27.057062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.202267, 39.873829, 27.354187>,  <28.109667, 39.742516, 27.532463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.202267, 39.873829, 27.354187>,  <28.356600, 40.092686, 27.057062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.202267, 39.873829, 27.354187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883032, -0.452197, 0.125586,
		0.267184, 0.704383, 0.657614,
		-0.385832, -0.547140, 0.742813,
		28.086517, 39.709686, 27.577030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.681360, 39.827595, 26.387508>,  <28.356600, 40.092686, 27.057062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.681360, 39.827595, 26.387508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.001575, 40.056412, 26.316059>,  <29.193705, 40.193703, 26.273190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.001575, 40.056412, 26.316059>,  <28.681360, 39.827595, 26.387508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.001575, 40.056412, 26.316059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429446, -0.339703, 0.836766,
		0.417986, -0.746573, -0.517606,
		0.800540, 0.572041, -0.178622,
		29.241737, 40.228024, 26.262472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.343918, 39.447094, 26.500910>,  <28.681360, 39.827595, 26.387508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.343918, 39.447094, 26.500910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.366882, 39.837395, 26.585402>,  <29.380661, 40.071575, 26.636097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.366882, 39.837395, 26.585402>,  <29.343918, 39.447094, 26.500910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.366882, 39.837395, 26.585402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188106, -0.218360, 0.957567,
		0.980470, -0.015240, -0.196080,
		0.057409, 0.975749, 0.211229,
		29.384106, 40.130119, 26.648769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.915762, 39.427670, 26.704576>,  <29.343918, 39.447094, 26.500910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.915762, 39.427670, 26.704576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.757847, 39.757778, 26.866104>,  <29.663097, 39.955845, 26.963020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.757847, 39.757778, 26.866104>,  <29.915762, 39.427670, 26.704576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.757847, 39.757778, 26.866104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196319, -0.353597, 0.914564,
		0.897553, 0.440336, -0.022421,
		-0.394788, 0.825271, 0.403819,
		29.639410, 40.005360, 26.987249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.317822, 39.427822, 27.261963>,  <29.915762, 39.427670, 26.704576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.317822, 39.427822, 27.261963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.054249, 39.704239, 27.380804>,  <29.896105, 39.870090, 27.452108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.054249, 39.704239, 27.380804>,  <30.317822, 39.427822, 27.261963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.054249, 39.704239, 27.380804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240645, -0.180552, 0.953672,
		0.712669, 0.699902, -0.047324,
		-0.658933, 0.691042, 0.297102,
		29.856569, 39.911552, 27.469934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.586164, 39.740776, 27.766714>,  <30.317822, 39.427822, 27.261963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.586164, 39.740776, 27.766714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.198826, 39.801514, 27.845963>,  <29.966423, 39.837955, 27.893511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.198826, 39.801514, 27.845963>,  <30.586164, 39.740776, 27.766714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.198826, 39.801514, 27.845963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162925, -0.216837, 0.962516,
		0.189113, 0.964326, 0.185233,
		-0.968345, 0.151845, 0.198120,
		29.908323, 39.847069, 27.905399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.542538, 40.321819, 28.309347>,  <30.586164, 39.740776, 27.766714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.542538, 40.321819, 28.309347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.207191, 40.103775, 28.309330>,  <30.005983, 39.972950, 28.309320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.207191, 40.103775, 28.309330>,  <30.542538, 40.321819, 28.309347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.207191, 40.103775, 28.309330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209553, -0.322358, 0.923132,
		-0.503221, 0.773913, 0.384483,
		-0.838365, -0.545109, -0.000042,
		29.955683, 39.940243, 28.309317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.395224, 40.282497, 28.964804>,  <30.542538, 40.321819, 28.309347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.395224, 40.282497, 28.964804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.171389, 39.980301, 28.828514>,  <30.037088, 39.798981, 28.746740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.171389, 39.980301, 28.828514>,  <30.395224, 40.282497, 28.964804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.171389, 39.980301, 28.828514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059130, -0.446465, 0.892845,
		-0.826660, 0.479477, 0.294508,
		-0.559586, -0.755494, -0.340723,
		30.003513, 39.753654, 28.726297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.040430, 40.058136, 29.558329>,  <30.395224, 40.282497, 28.964804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.040430, 40.058136, 29.558329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.975960, 39.751675, 29.309481>,  <29.937277, 39.567799, 29.160172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.975960, 39.751675, 29.309481>,  <30.040430, 40.058136, 29.558329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.975960, 39.751675, 29.309481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069868, -0.637638, 0.767161,
		-0.984450, 0.080181, 0.156301,
		-0.161175, -0.766152, -0.622121,
		29.927607, 39.521828, 29.122845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.652224, 39.587452, 29.974937>,  <30.040430, 40.058136, 29.558329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.652224, 39.587452, 29.974937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.815681, 39.367558, 29.683514>,  <29.913757, 39.235622, 29.508659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.815681, 39.367558, 29.683514>,  <29.652224, 39.587452, 29.974937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.815681, 39.367558, 29.683514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081042, -0.773245, 0.628907,
		-0.909088, -0.316044, -0.271432,
		0.408645, -0.549735, -0.728560,
		29.938274, 39.202637, 29.464945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.245857, 38.959961, 29.884308>,  <29.652224, 39.587452, 29.974937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.245857, 38.959961, 29.884308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.622744, 38.901752, 29.763607>,  <29.848875, 38.866829, 29.691187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.622744, 38.901752, 29.763607>,  <29.245857, 38.959961, 29.884308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.622744, 38.901752, 29.763607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054372, -0.822360, 0.566364,
		-0.330566, -0.550043, -0.766928,
		0.942216, -0.145521, -0.301751,
		29.905409, 38.858097, 29.673082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.351158, 38.264202, 29.930315>,  <29.245857, 38.959961, 29.884308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.351158, 38.264202, 29.930315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.730137, 38.388226, 29.898806>,  <29.957525, 38.462639, 29.879900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.730137, 38.388226, 29.898806>,  <29.351158, 38.264202, 29.930315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.730137, 38.388226, 29.898806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304464, -0.798360, 0.519541,
		0.098199, -0.516222, -0.850807,
		0.947448, 0.310059, -0.078773,
		30.014372, 38.481243, 29.875174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.754505, 37.662270, 29.715761>,  <29.351158, 38.264202, 29.930315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.754505, 37.662270, 29.715761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.037685, 37.891628, 29.880695>,  <30.207594, 38.029243, 29.979656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.037685, 37.891628, 29.880695>,  <29.754505, 37.662270, 29.715761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.037685, 37.891628, 29.880695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307097, -0.775671, 0.551385,
		0.636000, -0.263726, -0.725226,
		0.707952, 0.573395, 0.412337,
		30.250071, 38.063648, 30.004396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.417433, 37.381607, 29.515474>,  <29.754505, 37.662270, 29.715761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.417433, 37.381607, 29.515474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.443350, 37.591400, 29.855057>,  <30.458900, 37.717274, 30.058805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.443350, 37.591400, 29.855057>,  <30.417433, 37.381607, 29.515474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.443350, 37.591400, 29.855057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392117, -0.795693, 0.461646,
		0.917631, 0.302978, -0.257212,
		0.064793, 0.524478, 0.848955,
		30.462788, 37.748745, 30.109743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.082516, 37.257557, 29.873585>,  <30.417433, 37.381607, 29.515474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.082516, 37.257557, 29.873585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.891773, 37.417782, 30.186546>,  <30.777328, 37.513916, 30.374323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.891773, 37.417782, 30.186546>,  <31.082516, 37.257557, 29.873585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.891773, 37.417782, 30.186546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516540, -0.592505, 0.618163,
		0.711193, 0.698917, 0.075631,
		-0.476856, 0.400566, 0.782403,
		30.748716, 37.537952, 30.421267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.513876, 37.047886, 30.332561>,  <31.082516, 37.257557, 29.873585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.513876, 37.047886, 30.332561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.207277, 37.187836, 30.547993>,  <31.023317, 37.271805, 30.677252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.207277, 37.187836, 30.547993>,  <31.513876, 37.047886, 30.332561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.207277, 37.187836, 30.547993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210064, -0.655887, 0.725042,
		0.606923, 0.668878, 0.429239,
		-0.766497, 0.349877, 0.538580,
		30.977327, 37.292797, 30.709566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.663998, 37.091019, 31.048876>,  <31.513876, 37.047886, 30.332561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.663998, 37.091019, 31.048876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.267462, 37.039688, 31.037701>,  <31.029541, 37.008892, 31.030994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.267462, 37.039688, 31.037701>,  <31.663998, 37.091019, 31.048876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.267462, 37.039688, 31.037701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091293, -0.826274, 0.555821,
		-0.094411, 0.548456, 0.830833,
		-0.991338, -0.128325, -0.027940,
		30.970060, 37.001190, 31.029318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.545090, 36.912006, 31.713406>,  <31.663998, 37.091019, 31.048876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.545090, 36.912006, 31.713406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.213694, 36.788910, 31.526260>,  <31.014856, 36.715050, 31.413973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.213694, 36.788910, 31.526260>,  <31.545090, 36.912006, 31.713406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.213694, 36.788910, 31.526260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165210, -0.663963, 0.729287,
		-0.535078, 0.681503, 0.499244,
		-0.828491, -0.307746, -0.467863,
		30.965147, 36.696587, 31.385902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.126747, 36.693798, 32.322388>,  <31.545090, 36.912006, 31.713406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.126747, 36.693798, 32.322388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.957098, 36.521687, 32.003647>,  <30.855309, 36.418419, 31.812401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.957098, 36.521687, 32.003647>,  <31.126747, 36.693798, 32.322388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.957098, 36.521687, 32.003647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427346, -0.680692, 0.595007,
		-0.798432, 0.592890, 0.104820,
		-0.424124, -0.430278, -0.796856,
		30.829861, 36.392605, 31.764589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.490313, 36.508015, 32.493843>,  <31.126747, 36.693798, 32.322388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.490313, 36.508015, 32.493843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.565737, 36.265278, 32.184990>,  <30.610991, 36.119637, 31.999678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.565737, 36.265278, 32.184990>,  <30.490313, 36.508015, 32.493843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.565737, 36.265278, 32.184990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357096, -0.774785, 0.521719,
		-0.914837, 0.177351, -0.362794,
		0.188560, -0.606840, -0.772134,
		30.622305, 36.083225, 31.953350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.889181, 36.196564, 32.439034>,  <30.490313, 36.508015, 32.493843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.889181, 36.196564, 32.439034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.158781, 35.966114, 32.254082>,  <30.320541, 35.827843, 32.143108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.158781, 35.966114, 32.254082>,  <29.889181, 36.196564, 32.439034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.158781, 35.966114, 32.254082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199201, -0.744474, 0.637242,
		-0.711363, -0.337397, -0.616543,
		0.674004, -0.576127, -0.462382,
		30.360981, 35.793274, 32.115368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.592422, 35.511009, 32.389053>,  <29.889181, 36.196564, 32.439034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.592422, 35.511009, 32.389053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.968859, 35.398884, 32.313400>,  <30.194721, 35.331608, 32.268009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.968859, 35.398884, 32.313400>,  <29.592422, 35.511009, 32.389053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.968859, 35.398884, 32.313400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207669, -0.920506, 0.330971,
		-0.266870, -0.272198, -0.924494,
		0.941092, -0.280314, -0.189128,
		30.251186, 35.314789, 32.256660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.471497, 34.804440, 32.313618>,  <29.592422, 35.511009, 32.389053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.471497, 34.804440, 32.313618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.867437, 34.846550, 32.351795>,  <30.105001, 34.871815, 32.374702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.867437, 34.846550, 32.351795>,  <29.471497, 34.804440, 32.313618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.867437, 34.846550, 32.351795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074504, -0.956440, 0.282261,
		0.120997, -0.272286, -0.954578,
		0.989853, 0.105273, 0.095440,
		30.164392, 34.878132, 32.380428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.780823, 34.352367, 31.898304>,  <29.471497, 34.804440, 32.313618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.780823, 34.352367, 31.898304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.034845, 34.416931, 32.200470>,  <30.187260, 34.455669, 32.381771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.034845, 34.416931, 32.200470>,  <29.780823, 34.352367, 31.898304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.034845, 34.416931, 32.200470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104541, -0.950971, 0.291076,
		0.765359, -0.263821, -0.587047,
		0.635056, 0.161407, 0.755414,
		30.225363, 34.465355, 32.427094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.385588, 33.836563, 31.872351>,  <29.780823, 34.352367, 31.898304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.385588, 33.836563, 31.872351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.354362, 33.988407, 32.241089>,  <30.335627, 34.079514, 32.462334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.354362, 33.988407, 32.241089>,  <30.385588, 33.836563, 31.872351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.354362, 33.988407, 32.241089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067557, -0.924556, 0.375009,
		0.994657, -0.033002, 0.097819,
		-0.078063, 0.379614, 0.921846,
		30.330944, 34.102291, 32.517643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.849167, 33.407864, 32.292988>,  <30.385588, 33.836563, 31.872351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.849167, 33.407864, 32.292988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.575056, 33.599960, 32.511990>,  <30.410589, 33.715218, 32.643391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.575056, 33.599960, 32.511990>,  <30.849167, 33.407864, 32.292988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.575056, 33.599960, 32.511990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238818, -0.858387, 0.454024,
		0.688012, 0.180378, 0.702924,
		-0.685277, 0.480245, 0.547503,
		30.369473, 33.744034, 32.676239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.485262, 33.705025, 32.120819>,  <30.849167, 33.407864, 32.292988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.485262, 33.705025, 32.120819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785225, 33.824165, 31.884541>,  <31.965202, 33.895649, 31.742773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785225, 33.824165, 31.884541>,  <31.485262, 33.705025, 32.120819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.785225, 33.824165, 31.884541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607736, 0.042548, 0.792999,
		0.261332, -0.953662, -0.149111,
		0.749908, 0.297857, -0.590694,
		32.010197, 33.913521, 31.707333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.137878, 33.452183, 32.316399>,  <31.485262, 33.705025, 32.120819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.137878, 33.452183, 32.316399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.252838, 33.784744, 32.126171>,  <32.321815, 33.984280, 32.012035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.252838, 33.784744, 32.126171>,  <32.137878, 33.452183, 32.316399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.252838, 33.784744, 32.126171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584161, 0.241334, 0.774928,
		0.759050, -0.500526, -0.416314,
		0.287401, 0.831403, -0.475572,
		32.339058, 34.034164, 31.983500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.857700, 33.543518, 32.482487>,  <32.137878, 33.452183, 32.316399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.857700, 33.543518, 32.482487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.743206, 33.904602, 32.353996>,  <32.674507, 34.121250, 32.276901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.743206, 33.904602, 32.353996>,  <32.857700, 33.543518, 32.482487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.743206, 33.904602, 32.353996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368806, 0.413226, 0.832602,
		0.884336, 0.119852, -0.451205,
		-0.286238, 0.902707, -0.321228,
		32.657333, 34.175415, 32.257629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396477, 33.935143, 32.775059>,  <32.857700, 33.543518, 32.482487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.396477, 33.935143, 32.775059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127094, 34.221592, 32.701702>,  <32.965466, 34.393459, 32.657688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127094, 34.221592, 32.701702>,  <33.396477, 33.935143, 32.775059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127094, 34.221592, 32.701702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219563, 0.430660, 0.875399,
		0.705868, 0.549277, -0.447264,
		-0.673455, 0.716119, -0.183389,
		32.925056, 34.436428, 32.646687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685642, 34.619129, 32.751263>,  <33.396477, 33.935143, 32.775059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685642, 34.619129, 32.751263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305622, 34.627182, 32.875843>,  <33.077610, 34.632015, 32.950592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305622, 34.627182, 32.875843>,  <33.685642, 34.619129, 32.751263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.305622, 34.627182, 32.875843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286072, 0.455136, 0.843216,
		-0.124772, 0.890194, -0.438163,
		-0.950050, 0.020136, 0.311448,
		33.020607, 34.633224, 32.969276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472263, 35.287472, 32.915825>,  <33.685642, 34.619129, 32.751263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472263, 35.287472, 32.915825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244415, 35.052040, 33.145294>,  <33.107704, 34.910782, 33.282978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244415, 35.052040, 33.145294>,  <33.472263, 35.287472, 32.915825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.244415, 35.052040, 33.145294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257691, 0.534895, 0.804663,
		-0.780464, 0.606187, -0.153018,
		-0.569624, -0.588579, 0.573675,
		33.073528, 34.875465, 33.317398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.970886, 35.718613, 33.291061>,  <33.472263, 35.287472, 32.915825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.970886, 35.718613, 33.291061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.057426, 35.371292, 33.469608>,  <33.109352, 35.162899, 33.576736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.057426, 35.371292, 33.469608>,  <32.970886, 35.718613, 33.291061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.057426, 35.371292, 33.469608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219713, 0.488771, 0.844292,
		-0.951271, -0.084593, 0.296525,
		0.216354, -0.868301, 0.446368,
		33.122334, 35.110802, 33.603519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.481392, 35.660599, 33.816071>,  <32.970886, 35.718613, 33.291061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.481392, 35.660599, 33.816071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.770901, 35.408607, 33.928688>,  <32.944607, 35.257412, 33.996258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.770901, 35.408607, 33.928688>,  <32.481392, 35.660599, 33.816071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.770901, 35.408607, 33.928688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093188, 0.315044, 0.944491,
		-0.683713, -0.709837, 0.169314,
		0.723776, -0.629983, 0.281548,
		32.988033, 35.219612, 34.013153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.245670, 35.130962, 34.386147>,  <32.481392, 35.660599, 33.816071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.245670, 35.130962, 34.386147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641319, 35.169979, 34.430176>,  <32.878708, 35.193390, 34.456593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641319, 35.169979, 34.430176>,  <32.245670, 35.130962, 34.386147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.641319, 35.169979, 34.430176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131736, 0.254863, 0.957962,
		0.065383, -0.962046, 0.264941,
		0.989126, 0.097537, 0.110072,
		32.938057, 35.199242, 34.463196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.414177, 34.678341, 34.974560>,  <32.245670, 35.130962, 34.386147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.414177, 34.678341, 34.974560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.723484, 34.928257, 34.931293>,  <32.909069, 35.078205, 34.905334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.723484, 34.928257, 34.931293>,  <32.414177, 34.678341, 34.974560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.723484, 34.928257, 34.931293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113940, 0.030896, 0.993007,
		0.623762, -0.780182, -0.047297,
		0.773265, 0.624789, -0.108166,
		32.955463, 35.115692, 34.898842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.038834, 34.403152, 35.348656>,  <32.414177, 34.678341, 34.974560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.038834, 34.403152, 35.348656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091766, 34.797752, 35.310074>,  <33.123528, 35.034512, 35.286926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091766, 34.797752, 35.310074>,  <33.038834, 34.403152, 35.348656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091766, 34.797752, 35.310074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231229, 0.063897, 0.970799,
		0.963857, -0.150772, -0.219652,
		0.132334, 0.986501, -0.096450,
		33.131466, 35.093704, 35.281139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.611961, 34.523106, 35.761761>,  <33.038834, 34.403152, 35.348656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.611961, 34.523106, 35.761761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.413536, 34.869762, 35.740383>,  <33.294483, 35.077755, 35.727558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.413536, 34.869762, 35.740383>,  <33.611961, 34.523106, 35.761761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.413536, 34.869762, 35.740383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064098, 0.097929, 0.993127,
		0.865918, 0.489226, -0.104129,
		-0.496061, 0.866641, -0.053440,
		33.264717, 35.129753, 35.724350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940575, 34.970425, 36.263786>,  <33.611961, 34.523106, 35.761761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.940575, 34.970425, 36.263786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.622486, 35.205841, 36.205486>,  <33.431633, 35.347092, 36.170506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.622486, 35.205841, 36.205486>,  <33.940575, 34.970425, 36.263786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.622486, 35.205841, 36.205486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146331, 0.046980, 0.988119,
		0.588401, 0.807098, 0.048763,
		-0.795218, 0.588546, -0.145747,
		33.383919, 35.382404, 36.161762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.062233, 35.561428, 36.679516>,  <33.940575, 34.970425, 36.263786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.062233, 35.561428, 36.679516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672726, 35.527832, 36.594925>,  <33.439022, 35.507675, 36.544170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672726, 35.527832, 36.594925>,  <34.062233, 35.561428, 36.679516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672726, 35.527832, 36.594925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209978, -0.026369, 0.977350,
		-0.087663, 0.996118, 0.008041,
		-0.973768, -0.083989, -0.211474,
		33.380596, 35.502636, 36.531483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.852379, 36.086948, 37.076359>,  <34.062233, 35.561428, 36.679516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.852379, 36.086948, 37.076359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.511036, 35.886047, 37.020470>,  <33.306229, 35.765507, 36.986935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.511036, 35.886047, 37.020470>,  <33.852379, 36.086948, 37.076359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.511036, 35.886047, 37.020470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165716, 0.007216, 0.986147,
		-0.494288, 0.864690, -0.089389,
		-0.853356, -0.502254, -0.139726,
		33.255028, 35.735371, 36.978550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.346489, 36.492897, 37.378021>,  <33.852379, 36.086948, 37.076359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.346489, 36.492897, 37.378021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.187805, 36.126091, 37.361515>,  <33.092594, 35.906006, 37.351612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.187805, 36.126091, 37.361515>,  <33.346489, 36.492897, 37.378021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.187805, 36.126091, 37.361515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246439, 0.063093, 0.967102,
		-0.884245, 0.393829, -0.251018,
		-0.396710, -0.917016, -0.041266,
		33.068790, 35.850986, 37.349136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.689270, 36.459232, 37.886852>,  <33.346489, 36.492897, 37.378021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.689270, 36.459232, 37.886852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.787552, 36.074837, 37.836052>,  <32.846519, 35.844200, 37.805573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.787552, 36.074837, 37.836052>,  <32.689270, 36.459232, 37.886852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.787552, 36.074837, 37.836052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474825, -0.233537, 0.848529,
		-0.845087, -0.148184, -0.513683,
		0.245702, -0.960990, -0.126998,
		32.861263, 35.786541, 37.797955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121475, 36.163425, 38.076099>,  <32.689270, 36.459232, 37.886852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.121475, 36.163425, 38.076099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.390171, 35.867210, 38.083748>,  <32.551388, 35.689480, 38.088337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.390171, 35.867210, 38.083748>,  <32.121475, 36.163425, 38.076099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.390171, 35.867210, 38.083748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397120, -0.338195, 0.853182,
		-0.625345, -0.580713, -0.521263,
		0.671743, -0.740538, 0.019124,
		32.591694, 35.645050, 38.089485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.775187, 35.648170, 38.371574>,  <32.121475, 36.163425, 38.076099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.775187, 35.648170, 38.371574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.163059, 35.563202, 38.419891>,  <32.395782, 35.512222, 38.448883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.163059, 35.563202, 38.419891>,  <31.775187, 35.648170, 38.371574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.163059, 35.563202, 38.419891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189056, -0.338964, 0.921608,
		-0.154823, -0.916505, -0.368848,
		0.969684, -0.212419, 0.120792,
		32.453964, 35.499477, 38.456127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.786060, 35.010483, 38.728764>,  <31.775187, 35.648170, 38.371574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.786060, 35.010483, 38.728764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.148640, 35.158676, 38.809849>,  <32.366188, 35.247593, 38.858501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.148640, 35.158676, 38.809849>,  <31.786060, 35.010483, 38.728764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.148640, 35.158676, 38.809849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044606, -0.393333, 0.918314,
		0.419955, -0.841446, -0.340010,
		0.906448, 0.370484, 0.202716,
		32.420574, 35.269821, 38.870663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.215549, 34.452019, 38.949017>,  <31.786060, 35.010483, 38.728764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.215549, 34.452019, 38.949017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.341038, 34.800251, 39.100632>,  <32.416332, 35.009190, 39.191601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.341038, 34.800251, 39.100632>,  <32.215549, 34.452019, 38.949017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.341038, 34.800251, 39.100632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190667, -0.448820, 0.873044,
		0.930175, -0.201620, -0.306795,
		0.313719, 0.870580, 0.379039,
		32.435154, 35.061424, 39.214344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.724861, 34.259090, 39.612194>,  <32.215549, 34.452019, 38.949017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.724861, 34.259090, 39.612194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.625595, 34.641788, 39.672932>,  <32.566036, 34.871407, 39.709373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.625595, 34.641788, 39.672932>,  <32.724861, 34.259090, 39.612194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.625595, 34.641788, 39.672932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019738, -0.151720, 0.988226,
		0.968517, 0.248238, 0.018767,
		-0.248163, 0.956744, 0.151843,
		32.551147, 34.928810, 39.718483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.133312, 34.452187, 40.162342>,  <32.724861, 34.259090, 39.612194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.133312, 34.452187, 40.162342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.845119, 34.728958, 40.143867>,  <32.672203, 34.895023, 40.132782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.845119, 34.728958, 40.143867>,  <33.133312, 34.452187, 40.162342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.845119, 34.728958, 40.143867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013399, 0.080475, 0.996667,
		0.693342, 0.717464, -0.067252,
		-0.720484, 0.691932, -0.046184,
		32.628975, 34.936539, 40.130013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319908, 35.003578, 40.677975>,  <33.133312, 34.452187, 40.162342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319908, 35.003578, 40.677975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931297, 35.074982, 40.615654>,  <32.698132, 35.117825, 40.578262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931297, 35.074982, 40.615654>,  <33.319908, 35.003578, 40.677975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.931297, 35.074982, 40.615654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151487, 0.037651, 0.987742,
		0.182183, 0.983218, -0.009538,
		-0.971525, 0.178505, -0.155804,
		32.639839, 35.128532, 40.568913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.235268, 35.590641, 41.047520>,  <33.319908, 35.003578, 40.677975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.235268, 35.590641, 41.047520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.880581, 35.409752, 41.009087>,  <32.667770, 35.301220, 40.986027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.880581, 35.409752, 41.009087>,  <33.235268, 35.590641, 41.047520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.880581, 35.409752, 41.009087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110788, 0.006087, 0.993825,
		-0.448842, 0.891886, -0.055498,
		-0.886717, -0.452219, -0.096078,
		32.614567, 35.274086, 40.980263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.796955, 35.887791, 41.474468>,  <33.235268, 35.590641, 41.047520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.796955, 35.887791, 41.474468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585037, 35.554726, 41.409973>,  <32.457886, 35.354889, 41.371277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585037, 35.554726, 41.409973>,  <32.796955, 35.887791, 41.474468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.585037, 35.554726, 41.409973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314410, 0.016256, 0.949148,
		-0.787696, 0.553547, -0.270409,
		-0.529794, -0.832659, -0.161236,
		32.426098, 35.304928, 41.361603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.965252, 35.942974, 41.703541>,  <32.796955, 35.887791, 41.474468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.965252, 35.942974, 41.703541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.074585, 35.559040, 41.728848>,  <32.140186, 35.328678, 41.744030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.074585, 35.559040, 41.728848>,  <31.965252, 35.942974, 41.703541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.074585, 35.559040, 41.728848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225601, -0.000031, 0.974220,
		-0.935090, -0.280559, -0.216549,
		0.273333, -0.959837, 0.063266,
		32.156586, 35.271088, 41.747826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.557144, 35.696095, 42.115955>,  <31.965252, 35.942974, 41.703541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.557144, 35.696095, 42.115955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.826195, 35.400444, 42.130230>,  <31.987625, 35.223053, 42.138794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.826195, 35.400444, 42.130230>,  <31.557144, 35.696095, 42.115955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.826195, 35.400444, 42.130230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329599, -0.256076, 0.908729,
		-0.662525, -0.622995, -0.415857,
		0.672625, -0.739123, 0.035682,
		32.027981, 35.178707, 42.140934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.154057, 35.160362, 42.346062>,  <31.557144, 35.696095, 42.115955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.154057, 35.160362, 42.346062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.536968, 35.071552, 42.420170>,  <31.766714, 35.018269, 42.464634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.536968, 35.071552, 42.420170>,  <31.154057, 35.160362, 42.346062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.536968, 35.071552, 42.420170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258272, -0.368298, 0.893114,
		-0.130055, -0.902809, -0.409905,
		0.957278, -0.222021, 0.185271,
		31.824152, 35.004948, 42.475750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.159672, 34.447624, 42.666565>,  <31.154057, 35.160362, 42.346062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.159672, 34.447624, 42.666565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.512512, 34.601475, 42.775349>,  <31.724216, 34.693783, 42.840618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.512512, 34.601475, 42.775349>,  <31.159672, 34.447624, 42.666565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.512512, 34.601475, 42.775349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200763, -0.215319, 0.955684,
		0.426136, -0.897610, -0.112715,
		0.882101, 0.384622, 0.271962,
		31.777143, 34.716862, 42.856937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.591618, 33.962120, 43.116604>,  <31.159672, 34.447624, 42.666565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.591618, 33.962120, 43.116604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.737503, 34.326279, 43.194752>,  <31.825035, 34.544773, 43.241642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.737503, 34.326279, 43.194752>,  <31.591618, 33.962120, 43.116604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.737503, 34.326279, 43.194752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231584, -0.114539, 0.966049,
		0.901860, -0.397577, 0.169059,
		0.364715, 0.910392, 0.195370,
		31.846918, 34.599396, 43.253365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.894735, 33.911152, 43.753311>,  <31.591618, 33.962120, 43.116604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.894735, 33.911152, 43.753311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.908184, 34.309952, 43.725422>,  <31.916254, 34.549232, 43.708691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.908184, 34.309952, 43.725422>,  <31.894735, 33.911152, 43.753311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.908184, 34.309952, 43.725422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192482, 0.074914, 0.978437,
		0.980724, -0.019477, 0.194424,
		0.033622, 0.997000, -0.069721,
		31.918270, 34.609051, 43.704506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.219101, 34.118816, 44.312813>,  <31.894735, 33.911152, 43.753311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.219101, 34.118816, 44.312813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.037037, 34.462482, 44.219292>,  <31.927799, 34.668682, 44.163177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.037037, 34.462482, 44.219292>,  <32.219101, 34.118816, 44.312813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.037037, 34.462482, 44.219292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244767, 0.131736, 0.960591,
		0.856106, 0.494451, 0.150334,
		-0.455161, 0.859164, -0.233805,
		31.900488, 34.720230, 44.149151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.440105, 34.624844, 44.755512>,  <32.219101, 34.118816, 44.312813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.440105, 34.624844, 44.755512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.090847, 34.776360, 44.632790>,  <31.881290, 34.867268, 44.559155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.090847, 34.776360, 44.632790>,  <32.440105, 34.624844, 44.755512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.090847, 34.776360, 44.632790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220368, 0.254680, 0.941582,
		0.434797, 0.889752, -0.138901,
		-0.873149, 0.378788, -0.306807,
		31.828903, 34.889996, 44.540749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.496239, 35.353333, 44.985790>,  <32.440105, 34.624844, 44.755512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.496239, 35.353333, 44.985790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.120640, 35.232395, 44.920212>,  <31.895281, 35.159832, 44.880863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.120640, 35.232395, 44.920212>,  <32.496239, 35.353333, 44.985790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.120640, 35.232395, 44.920212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286823, 0.425315, 0.858394,
		-0.189803, 0.853050, -0.486087,
		-0.938993, -0.302347, -0.163948,
		31.838942, 35.141689, 44.871029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.147095, 35.864922, 45.285603>,  <32.496239, 35.353333, 44.985790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.147095, 35.864922, 45.285603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.872938, 35.577484, 45.238503>,  <31.708445, 35.405022, 45.210243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.872938, 35.577484, 45.238503>,  <32.147095, 35.864922, 45.285603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.872938, 35.577484, 45.238503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410070, 0.247270, 0.877895,
		-0.601736, 0.649983, -0.464150,
		-0.685388, -0.718595, -0.117748,
		31.667322, 35.361904, 45.203178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.549738, 36.226555, 45.552551>,  <32.147095, 35.864922, 45.285603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.549738, 36.226555, 45.552551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.505844, 35.828999, 45.547958>,  <31.479507, 35.590466, 45.545204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.505844, 35.828999, 45.547958>,  <31.549738, 36.226555, 45.552551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.505844, 35.828999, 45.547958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451506, 0.039554, 0.891391,
		-0.885495, 0.102999, -0.453090,
		-0.109734, -0.993895, -0.011480,
		31.472923, 35.530830, 45.544514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.837435, 36.105637, 45.828461>,  <31.549738, 36.226555, 45.552551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.837435, 36.105637, 45.828461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.038799, 35.764812, 45.885838>,  <31.159618, 35.560318, 45.920265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.038799, 35.764812, 45.885838>,  <30.837435, 36.105637, 45.828461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.038799, 35.764812, 45.885838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320862, -0.030205, 0.946644,
		-0.802262, -0.522577, -0.288598,
		0.503412, -0.852057, 0.143443,
		31.189823, 35.509197, 45.928871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.318254, 35.732689, 46.287891>,  <30.837435, 36.105637, 45.828461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.318254, 35.732689, 46.287891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.671009, 35.548264, 46.327278>,  <30.882662, 35.437607, 46.350910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.671009, 35.548264, 46.327278>,  <30.318254, 35.732689, 46.287891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.671009, 35.548264, 46.327278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199844, -0.176420, 0.963814,
		-0.427009, -0.869653, -0.247724,
		0.881887, -0.461064, 0.098462,
		30.935575, 35.409943, 46.356815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.235518, 35.034824, 46.605797>,  <30.318254, 35.732689, 46.287891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.235518, 35.034824, 46.605797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.599529, 35.173630, 46.696507>,  <30.817936, 35.256912, 46.750931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.599529, 35.173630, 46.696507>,  <30.235518, 35.034824, 46.605797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.599529, 35.173630, 46.696507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093596, -0.360923, 0.927887,
		0.403840, -0.865629, -0.295971,
		0.910029, 0.347017, 0.226774,
		30.872538, 35.277733, 46.764538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.546947, 34.486401, 46.855816>,  <30.235518, 35.034824, 46.605797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.546947, 34.486401, 46.855816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.790056, 34.774651, 46.989273>,  <30.935923, 34.947601, 47.069347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.790056, 34.774651, 46.989273>,  <30.546947, 34.486401, 46.855816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.790056, 34.774651, 46.989273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030175, -0.440800, 0.897098,
		0.793537, -0.535165, -0.289652,
		0.607774, 0.720620, 0.333642,
		30.972389, 34.990837, 47.089367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.882763, 34.152382, 47.335625>,  <30.546947, 34.486401, 46.855816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.882763, 34.152382, 47.335625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.008913, 34.517735, 47.438591>,  <31.084602, 34.736946, 47.500370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.008913, 34.517735, 47.438591>,  <30.882763, 34.152382, 47.335625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.008913, 34.517735, 47.438591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040552, -0.283984, 0.957971,
		0.948100, -0.291682, -0.126601,
		0.315376, 0.913386, 0.257417,
		31.103525, 34.791752, 47.515816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.368713, 34.030960, 47.776218>,  <30.882763, 34.152382, 47.335625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.368713, 34.030960, 47.776218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.252129, 34.404518, 47.859062>,  <31.182178, 34.628651, 47.908768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.252129, 34.404518, 47.859062>,  <31.368713, 34.030960, 47.776218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.252129, 34.404518, 47.859062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098021, -0.244527, 0.964675,
		0.951547, 0.260865, 0.162812,
		-0.291462, 0.933893, 0.207109,
		31.164690, 34.684685, 47.921196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.799047, 34.301365, 48.396271>,  <31.368713, 34.030960, 47.776218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.799047, 34.301365, 48.396271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.443619, 34.482704, 48.368214>,  <31.230362, 34.591507, 48.351379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.443619, 34.482704, 48.368214>,  <31.799047, 34.301365, 48.396271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.443619, 34.482704, 48.368214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175596, -0.194876, 0.964982,
		0.423804, 0.869770, 0.252767,
		-0.888570, 0.453348, -0.070139,
		31.177048, 34.618710, 48.347172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.767441, 34.708862, 48.960796>,  <31.799047, 34.301365, 48.396271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.767441, 34.708862, 48.960796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.378578, 34.707268, 48.867073>,  <31.145262, 34.706310, 48.810841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.378578, 34.707268, 48.867073>,  <31.767441, 34.708862, 48.960796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.378578, 34.707268, 48.867073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228616, -0.203482, 0.952013,
		-0.051476, 0.979071, 0.196904,
		-0.972155, -0.003990, -0.234306,
		31.086931, 34.706070, 48.796780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.418871, 35.126854, 49.476421>,  <31.767441, 34.708862, 48.960796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.418871, 35.126854, 49.476421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.152592, 34.882122, 49.305534>,  <30.992825, 34.735283, 49.203003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.152592, 34.882122, 49.305534>,  <31.418871, 35.126854, 49.476421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.152592, 34.882122, 49.305534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277741, -0.328223, 0.902845,
		-0.692606, 0.719679, 0.048568,
		-0.665700, -0.611827, -0.427214,
		30.952881, 34.698574, 49.177372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.883188, 35.316589, 49.779465>,  <31.418871, 35.126854, 49.476421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.883188, 35.316589, 49.779465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.809904, 34.940975, 49.663090>,  <30.765934, 34.715607, 49.593266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.809904, 34.940975, 49.663090>,  <30.883188, 35.316589, 49.779465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.809904, 34.940975, 49.663090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271966, -0.235980, 0.932924,
		-0.944706, 0.250045, -0.212152,
		-0.183209, -0.939037, -0.290936,
		30.754942, 34.659264, 49.575809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.183949, 34.989574, 49.872570>,  <30.883188, 35.316589, 49.779465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.183949, 34.989574, 49.872570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.504688, 34.763042, 49.948792>,  <30.697132, 34.627125, 49.994526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.504688, 34.763042, 49.948792>,  <30.183949, 34.989574, 49.872570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.504688, 34.763042, 49.948792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329358, -0.152814, 0.931757,
		-0.498561, -0.809889, -0.309059,
		0.801848, -0.566329, 0.190556,
		30.745243, 34.593143, 50.005959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.887281, 34.374538, 50.221416>,  <30.183949, 34.989574, 49.872570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.887281, 34.374538, 50.221416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.280447, 34.412724, 50.284367>,  <30.516346, 34.435635, 50.322136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.280447, 34.412724, 50.284367>,  <29.887281, 34.374538, 50.221416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.280447, 34.412724, 50.284367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123274, -0.293500, 0.947978,
		0.136690, -0.951180, -0.276716,
		0.982914, 0.095467, 0.157374,
		30.575321, 34.441364, 50.331577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.692055, 34.197929, 50.908993>,  <29.887281, 34.374538, 50.221416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.692055, 34.197929, 50.908993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.528316, 33.835102, 50.948315>,  <29.430073, 33.617405, 50.971909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.528316, 33.835102, 50.948315>,  <29.692055, 34.197929, 50.908993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.528316, 33.835102, 50.948315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884600, -0.368188, 0.286217,
		-0.223425, 0.204121, 0.953109,
		-0.409346, -0.907068, 0.098303,
		29.405512, 33.562981, 50.977806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.013542, 33.866150, 51.531879>,  <29.692055, 34.197929, 50.908993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.013542, 33.866150, 51.531879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.896412, 33.582058, 51.275806>,  <29.826134, 33.411602, 51.122162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.896412, 33.582058, 51.275806>,  <30.013542, 33.866150, 51.531879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.896412, 33.582058, 51.275806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903800, -0.424125, 0.057124,
		-0.312087, -0.561868, 0.766098,
		-0.292825, -0.710227, -0.640181,
		29.808565, 33.368988, 51.083752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.118828, 33.249615, 51.912647>,  <30.013542, 33.866150, 51.531879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.118828, 33.249615, 51.912647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.119448, 33.154110, 51.524216>,  <30.119820, 33.096806, 51.291157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.119448, 33.154110, 51.524216>,  <30.118828, 33.249615, 51.912647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.119448, 33.154110, 51.524216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922755, -0.373896, 0.093405,
		-0.385384, -0.896210, 0.219743,
		0.001550, -0.238766, -0.971076,
		30.119913, 33.082481, 51.232891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.492559, 32.582035, 51.929276>,  <30.118828, 33.249615, 51.912647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.492559, 32.582035, 51.929276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.498508, 32.771309, 51.576942>,  <30.502077, 32.884872, 51.365543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.498508, 32.771309, 51.576942>,  <30.492559, 32.582035, 51.929276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.498508, 32.771309, 51.576942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987176, -0.146980, -0.062291,
		-0.158940, -0.868615, -0.469303,
		0.014872, 0.473186, -0.880837,
		30.502970, 32.913265, 51.312691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.841913, 32.094128, 51.447433>,  <30.492559, 32.582035, 51.929276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.841913, 32.094128, 51.447433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.915550, 32.480556, 51.374966>,  <30.959732, 32.712414, 51.331486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.915550, 32.480556, 51.374966>,  <30.841913, 32.094128, 51.447433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.915550, 32.480556, 51.374966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980031, -0.194503, -0.041331,
		-0.075166, -0.169941, -0.982583,
		0.184092, 0.966069, -0.181167,
		30.970778, 32.770378, 51.320614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.010887, 31.887527, 50.788452>,  <30.841913, 32.094128, 51.447433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.010887, 31.887527, 50.788452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.656906, 31.777937, 50.637829>,  <30.444517, 31.712183, 50.547455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.656906, 31.777937, 50.637829>,  <31.010887, 31.887527, 50.788452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.656906, 31.777937, 50.637829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344653, 0.158448, -0.925261,
		0.313165, -0.948594, -0.045792,
		-0.884953, -0.273977, -0.376556,
		30.391420, 31.695744, 50.524860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.074606, 31.455179, 50.341801>,  <31.010887, 31.887527, 50.788452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.074606, 31.455179, 50.341801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.708124, 31.573065, 50.233200>,  <30.488235, 31.643797, 50.168041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.708124, 31.573065, 50.233200>,  <31.074606, 31.455179, 50.341801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.708124, 31.573065, 50.233200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312354, 0.100850, -0.944597,
		-0.251006, -0.950249, -0.184455,
		-0.916205, 0.294715, -0.271501,
		30.433262, 31.661480, 50.151749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.898281, 30.959457, 49.885551>,  <31.074606, 31.455179, 50.341801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.898281, 30.959457, 49.885551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.677122, 31.285362, 49.815735>,  <30.544426, 31.480906, 49.773846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.677122, 31.285362, 49.815735>,  <30.898281, 30.959457, 49.885551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.677122, 31.285362, 49.815735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228322, -0.053316, -0.972125,
		-0.801357, -0.577337, -0.156550,
		-0.552897, 0.814763, -0.174544,
		30.511253, 31.529791, 49.763371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.542887, 30.882896, 49.216740>,  <30.898281, 30.959457, 49.885551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.542887, 30.882896, 49.216740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.568047, 31.281057, 49.245632>,  <30.583143, 31.519955, 49.262970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.568047, 31.281057, 49.245632>,  <30.542887, 30.882896, 49.216740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.568047, 31.281057, 49.245632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263232, 0.053269, -0.963261,
		-0.962680, 0.079605, -0.258671,
		0.062901, 0.995402, 0.072236,
		30.586916, 31.579678, 49.267303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.184118, 31.116903, 48.627659>,  <30.542887, 30.882896, 49.216740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.184118, 31.116903, 48.627659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.400135, 31.425932, 48.761219>,  <30.529745, 31.611349, 48.841354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.400135, 31.425932, 48.761219>,  <30.184118, 31.116903, 48.627659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.400135, 31.425932, 48.761219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128559, 0.316356, -0.939889,
		-0.831763, 0.550504, 0.071524,
		0.540040, 0.772570, 0.333905,
		30.562147, 31.657703, 48.861389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.919935, 31.736603, 48.213211>,  <30.184118, 31.116903, 48.627659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.919935, 31.736603, 48.213211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.291792, 31.819597, 48.335007>,  <30.514906, 31.869394, 48.408085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.291792, 31.819597, 48.335007>,  <29.919935, 31.736603, 48.213211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.291792, 31.819597, 48.335007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258740, 0.220762, -0.940382,
		-0.262335, 0.953003, 0.151545,
		0.929642, 0.207484, 0.304494,
		30.570684, 31.881842, 48.426353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.021278, 32.351074, 47.912216>,  <29.919935, 31.736603, 48.213211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.021278, 32.351074, 47.912216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.386206, 32.222790, 48.014053>,  <30.605162, 32.145817, 48.075153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.386206, 32.222790, 48.014053>,  <30.021278, 32.351074, 47.912216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.386206, 32.222790, 48.014053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336576, 0.233219, -0.912319,
		0.233219, 0.918014, 0.320715,
		0.912319, -0.320715, 0.254590,
		30.659901, 32.126575, 48.090431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.442616, 32.747524, 47.560665>,  <30.021278, 32.351074, 47.912216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.442616, 32.747524, 47.560665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.687115, 32.445568, 47.655754>,  <30.833815, 32.264393, 47.712807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.687115, 32.445568, 47.655754>,  <30.442616, 32.747524, 47.560665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.687115, 32.445568, 47.655754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382958, 0.019246, -0.923565,
		0.692616, 0.655568, 0.300855,
		0.611250, -0.754891, 0.237725,
		30.870489, 32.219101, 47.727070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.092173, 33.095036, 47.443882>,  <30.442616, 32.747524, 47.560665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.092173, 33.095036, 47.443882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.147919, 32.699261, 47.427948>,  <31.181366, 32.461796, 47.418388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.147919, 32.699261, 47.427948>,  <31.092173, 33.095036, 47.443882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.147919, 32.699261, 47.427948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449556, 0.099057, -0.887743,
		0.882313, 0.105813, 0.458614,
		0.139363, -0.989440, -0.039831,
		31.189728, 32.402428, 47.416000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.937370, 32.877247, 47.306572>,  <31.092173, 33.095036, 47.443882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.937370, 32.877247, 47.306572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.681871, 32.600441, 47.172035>,  <31.528572, 32.434357, 47.091312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.681871, 32.600441, 47.172035>,  <31.937370, 32.877247, 47.306572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.681871, 32.600441, 47.172035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577376, -0.142163, -0.804006,
		0.508567, -0.707749, 0.490357,
		-0.638745, -0.692012, -0.336338,
		31.490248, 32.392838, 47.071133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.391293, 32.499924, 47.038696>,  <31.937370, 32.877247, 47.306572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.391293, 32.499924, 47.038696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.051125, 32.357834, 46.883469>,  <31.847023, 32.272579, 46.790333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.051125, 32.357834, 46.883469>,  <32.391293, 32.499924, 47.038696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.051125, 32.357834, 46.883469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452558, -0.117783, -0.883922,
		0.268285, -0.927330, 0.260926,
		-0.850420, -0.355227, -0.388071,
		31.795998, 32.251266, 46.767048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.560013, 31.868637, 46.710171>,  <32.391293, 32.499924, 47.038696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.560013, 31.868637, 46.710171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.219429, 31.989553, 46.538757>,  <32.015079, 32.062103, 46.435909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.219429, 31.989553, 46.538757>,  <32.560013, 31.868637, 46.710171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.219429, 31.989553, 46.538757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333160, -0.319265, -0.887172,
		-0.405001, -0.898159, 0.171129,
		-0.851457, 0.302292, -0.428534,
		31.963991, 32.080242, 46.410198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.254921, 31.272470, 46.497307>,  <32.560013, 31.868637, 46.710171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.254921, 31.272470, 46.497307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.127544, 31.577499, 46.272068>,  <32.051117, 31.760517, 46.136925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.127544, 31.577499, 46.272068>,  <32.254921, 31.272470, 46.497307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.127544, 31.577499, 46.272068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426073, -0.415495, -0.803633,
		-0.846793, -0.495830, -0.192601,
		-0.318440, 0.762573, -0.563098,
		32.032013, 31.806271, 46.103138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.984379, 31.027733, 45.962833>,  <32.254921, 31.272470, 46.497307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.984379, 31.027733, 45.962833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.079075, 31.401127, 45.855083>,  <32.135895, 31.625162, 45.790432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.079075, 31.401127, 45.855083>,  <31.984379, 31.027733, 45.962833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.079075, 31.401127, 45.855083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418120, -0.348156, -0.839025,
		-0.877000, 0.086002, -0.472731,
		0.236742, 0.933483, -0.269374,
		32.150097, 31.681171, 45.774273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.948444, 31.043299, 45.238068>,  <31.984379, 31.027733, 45.962833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.948444, 31.043299, 45.238068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.165115, 31.372593, 45.306034>,  <32.295116, 31.570169, 45.346813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.165115, 31.372593, 45.306034>,  <31.948444, 31.043299, 45.238068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.165115, 31.372593, 45.306034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361415, -0.045589, -0.931290,
		-0.758924, 0.565867, -0.322224,
		0.541677, 0.823235, 0.169914,
		32.327618, 31.619564, 45.357010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.917980, 31.401085, 44.641205>,  <31.948444, 31.043299, 45.238068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.917980, 31.401085, 44.641205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.219357, 31.586206, 44.828026>,  <32.400185, 31.697279, 44.940117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.219357, 31.586206, 44.828026>,  <31.917980, 31.401085, 44.641205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.219357, 31.586206, 44.828026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563490, -0.088444, -0.821375,
		-0.338826, 0.882038, -0.327422,
		0.753443, 0.462803, 0.467052,
		32.445389, 31.725048, 44.968140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.257389, 31.750608, 44.111130>,  <31.917980, 31.401085, 44.641205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.257389, 31.750608, 44.111130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.547745, 31.776718, 44.385014>,  <32.721958, 31.792383, 44.549343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.547745, 31.776718, 44.385014>,  <32.257389, 31.750608, 44.111130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.547745, 31.776718, 44.385014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684768, 0.025032, -0.728331,
		-0.064680, 0.997553, -0.026527,
		0.725885, 0.065274, 0.684712,
		32.765511, 31.796301, 44.590427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.570007, 32.352627, 43.924328>,  <32.257389, 31.750608, 44.111130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.570007, 32.352627, 43.924328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.834137, 32.128445, 44.124275>,  <32.992615, 31.993937, 44.244244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.834137, 32.128445, 44.124275>,  <32.570007, 32.352627, 43.924328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.834137, 32.128445, 44.124275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587932, -0.028318, -0.808414,
		0.467232, 0.827703, 0.310808,
		0.660326, -0.560451, 0.499865,
		33.032234, 31.960310, 44.274235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.211544, 32.706284, 43.921097>,  <32.570007, 32.352627, 43.924328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.211544, 32.706284, 43.921097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.269550, 32.315117, 43.981289>,  <33.304356, 32.080418, 44.017406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.269550, 32.315117, 43.981289>,  <33.211544, 32.706284, 43.921097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.269550, 32.315117, 43.981289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530942, -0.051425, -0.845846,
		0.834907, 0.202561, 0.511761,
		0.145019, -0.977918, 0.150483,
		33.313057, 32.021740, 44.026432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826233, 32.649933, 43.580635>,  <33.211544, 32.706284, 43.921097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.826233, 32.649933, 43.580635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.715309, 32.268093, 43.624176>,  <33.648754, 32.038990, 43.650299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.715309, 32.268093, 43.624176>,  <33.826233, 32.649933, 43.580635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715309, 32.268093, 43.624176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498713, -0.239853, -0.832920,
		0.821211, -0.176687, 0.542582,
		-0.277306, -0.954596, 0.108854,
		33.632118, 31.981714, 43.656834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441975, 32.301727, 43.455898>,  <33.826233, 32.649933, 43.580635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441975, 32.301727, 43.455898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137665, 32.056194, 43.371578>,  <33.955078, 31.908875, 43.320988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137665, 32.056194, 43.371578>,  <34.441975, 32.301727, 43.455898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137665, 32.056194, 43.371578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389887, -0.172593, -0.904544,
		0.518853, -0.770342, 0.370628,
		-0.760776, -0.613829, -0.210795,
		33.909431, 31.872046, 43.308338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763153, 31.886011, 43.079418>,  <34.441975, 32.301727, 43.455898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763153, 31.886011, 43.079418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.376785, 31.821541, 42.998409>,  <34.144962, 31.782858, 42.949802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.376785, 31.821541, 42.998409>,  <34.763153, 31.886011, 43.079418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.376785, 31.821541, 42.998409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248467, -0.358198, -0.899977,
		0.072511, -0.919629, 0.386039,
		-0.965923, -0.161176, -0.202524,
		34.087009, 31.773188, 42.937653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789520, 31.518267, 42.551117>,  <34.763153, 31.886011, 43.079418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.789520, 31.518267, 42.551117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.393784, 31.575609, 42.540901>,  <34.156342, 31.610014, 42.534771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.393784, 31.575609, 42.540901>,  <34.789520, 31.518267, 42.551117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.393784, 31.575609, 42.540901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004448, -0.145546, -0.989341,
		-0.145546, -0.978910, 0.143357,
		0.989341, -0.143357, 0.025537,
		34.096981, 31.618616, 42.533241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.566616, 30.863401, 42.220516>,  <34.789520, 31.518267, 42.551117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.566616, 30.863401, 42.220516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.319294, 31.173540, 42.169067>,  <34.170902, 31.359623, 42.138199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.319294, 31.173540, 42.169067>,  <34.566616, 30.863401, 42.220516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.319294, 31.173540, 42.169067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018033, -0.177602, -0.983937,
		-0.785734, -0.606050, 0.123793,
		-0.618301, 0.775346, -0.128619,
		34.133804, 31.406143, 42.130482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.887390, 30.648926, 41.792492>,  <34.566616, 30.863401, 42.220516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.887390, 30.648926, 41.792492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.954311, 31.041054, 41.750565>,  <33.994465, 31.276331, 41.725410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.954311, 31.041054, 41.750565>,  <33.887390, 30.648926, 41.792492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.954311, 31.041054, 41.750565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011949, -0.108323, -0.994044,
		-0.985833, 0.165053, -0.029836,
		0.167302, 0.980318, -0.104816,
		34.004501, 31.335150, 41.719120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.444252, 30.790545, 41.202892>,  <33.887390, 30.648926, 41.792492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.444252, 30.790545, 41.202892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.674580, 31.111614, 41.265045>,  <33.812775, 31.304256, 41.302338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.674580, 31.111614, 41.265045>,  <33.444252, 30.790545, 41.202892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.674580, 31.111614, 41.265045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052104, 0.225692, -0.972805,
		-0.815915, 0.552064, 0.171780,
		0.575820, 0.802676, 0.155381,
		33.847324, 31.352417, 41.311661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.053940, 31.365252, 40.990997>,  <33.444252, 30.790545, 41.202892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.053940, 31.365252, 40.990997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433357, 31.491007, 41.006050>,  <33.661007, 31.566460, 41.015083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433357, 31.491007, 41.006050>,  <33.053940, 31.365252, 40.990997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.433357, 31.491007, 41.006050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022849, 0.186500, -0.982189,
		-0.315809, 0.930793, 0.184088,
		0.948548, 0.314390, 0.037630,
		33.717922, 31.585323, 41.017338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.091305, 31.944242, 40.535118>,  <33.053940, 31.365252, 40.990997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.091305, 31.944242, 40.535118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.475216, 31.839033, 40.574394>,  <33.705563, 31.775908, 40.597958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.475216, 31.839033, 40.574394>,  <33.091305, 31.944242, 40.535118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.475216, 31.839033, 40.574394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175090, 0.287376, -0.941679,
		0.219466, 0.920996, 0.321870,
		0.959780, -0.263023, 0.098188,
		33.763149, 31.760126, 40.603851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.509895, 32.524529, 40.201569>,  <33.091305, 31.944242, 40.535118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.509895, 32.524529, 40.201569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739590, 32.197083, 40.206135>,  <33.877407, 32.000614, 40.208874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739590, 32.197083, 40.206135>,  <33.509895, 32.524529, 40.201569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739590, 32.197083, 40.206135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252425, 0.163769, -0.953657,
		0.778806, 0.550503, 0.300680,
		0.574233, -0.818613, 0.011417,
		33.911858, 31.951498, 40.209560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.138393, 32.747459, 39.993465>,  <33.509895, 32.524529, 40.201569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.138393, 32.747459, 39.993465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150753, 32.352245, 39.933029>,  <34.158169, 32.115116, 39.896767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150753, 32.352245, 39.933029>,  <34.138393, 32.747459, 39.993465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.150753, 32.352245, 39.933029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266475, 0.153834, -0.951486,
		0.963346, -0.010857, 0.268041,
		0.030904, -0.988037, -0.151088,
		34.160023, 32.055836, 39.887703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811401, 32.553764, 39.683964>,  <34.138393, 32.747459, 39.993465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811401, 32.553764, 39.683964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529381, 32.303841, 39.549793>,  <34.360168, 32.153885, 39.469292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529381, 32.303841, 39.549793>,  <34.811401, 32.553764, 39.683964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529381, 32.303841, 39.549793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401031, 0.038813, -0.915242,
		0.584870, -0.779813, 0.223202,
		-0.705054, -0.624808, -0.335430,
		34.317863, 32.116398, 39.449165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226849, 32.230835, 39.262634>,  <34.811401, 32.553764, 39.683964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.226849, 32.230835, 39.262634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846798, 32.143742, 39.173321>,  <34.618767, 32.091488, 39.119732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846798, 32.143742, 39.173321>,  <35.226849, 32.230835, 39.262634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846798, 32.143742, 39.173321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240421, -0.055352, -0.969089,
		0.198641, -0.974438, 0.104938,
		-0.950126, -0.217731, -0.223280,
		34.561760, 32.078423, 39.106339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331139, 31.721844, 38.786034>,  <35.226849, 32.230835, 39.262634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.331139, 31.721844, 38.786034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957386, 31.860033, 38.751217>,  <34.733135, 31.942947, 38.730328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957386, 31.860033, 38.751217>,  <35.331139, 31.721844, 38.786034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957386, 31.860033, 38.751217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071620, -0.057195, -0.995791,
		-0.348999, -0.936683, 0.028699,
		-0.934382, 0.345475, -0.087046,
		34.677071, 31.963675, 38.725101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187096, 31.424856, 38.148537>,  <35.331139, 31.721844, 38.786034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187096, 31.424856, 38.148537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896107, 31.694239, 38.201061>,  <34.721516, 31.855867, 38.232578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896107, 31.694239, 38.201061>,  <35.187096, 31.424856, 38.148537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.896107, 31.694239, 38.201061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112151, 0.072100, -0.991072,
		-0.676912, -0.735702, 0.023078,
		-0.727470, 0.673457, 0.131315,
		34.677864, 31.896276, 38.240456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804691, 31.302740, 37.551327>,  <35.187096, 31.424856, 38.148537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.804691, 31.302740, 37.551327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690128, 31.660425, 37.688938>,  <34.621391, 31.875036, 37.771503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690128, 31.660425, 37.688938>,  <34.804691, 31.302740, 37.551327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690128, 31.660425, 37.688938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254391, 0.275209, -0.927117,
		-0.923718, -0.353053, 0.148657,
		-0.286409, 0.894211, 0.344029,
		34.604206, 31.928688, 37.792149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196480, 31.404821, 37.168308>,  <34.804691, 31.302740, 37.551327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196480, 31.404821, 37.168308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.345219, 31.754545, 37.293087>,  <34.434460, 31.964380, 37.367954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.345219, 31.754545, 37.293087>,  <34.196480, 31.404821, 37.168308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.345219, 31.754545, 37.293087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019294, 0.343252, -0.939045,
		-0.928095, 0.343159, 0.144504,
		0.371843, 0.874311, 0.311949,
		34.456772, 32.016838, 37.386673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914745, 31.875711, 36.745544>,  <34.196480, 31.404821, 37.168308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914745, 31.875711, 36.745544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.204063, 32.099197, 36.907867>,  <34.377655, 32.233288, 37.005260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.204063, 32.099197, 36.907867>,  <33.914745, 31.875711, 36.745544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.204063, 32.099197, 36.907867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059839, 0.534748, -0.842891,
		-0.687943, 0.633941, 0.353347,
		0.723294, 0.558717, 0.405810,
		34.421051, 32.266811, 37.029610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683861, 32.545082, 36.639687>,  <33.914745, 31.875711, 36.745544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683861, 32.545082, 36.639687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.082050, 32.538345, 36.677113>,  <34.320965, 32.534302, 36.699566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.082050, 32.538345, 36.677113>,  <33.683861, 32.545082, 36.639687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.082050, 32.538345, 36.677113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094101, 0.314403, -0.944614,
		-0.013506, 0.949140, 0.314564,
		0.995471, -0.016842, 0.093561,
		34.380692, 32.533291, 36.705181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.888123, 33.189194, 36.323261>,  <33.683861, 32.545082, 36.639687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.888123, 33.189194, 36.323261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207546, 32.948853, 36.337505>,  <34.399200, 32.804646, 36.346050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207546, 32.948853, 36.337505>,  <33.888123, 33.189194, 36.323261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207546, 32.948853, 36.337505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193528, 0.200289, -0.960433,
		0.569950, 0.773858, 0.276226,
		0.798564, -0.600856, 0.035609,
		34.447117, 32.768597, 36.348186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.528416, 33.587482, 35.920898>,  <33.888123, 33.189194, 36.323261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.528416, 33.587482, 35.920898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.565491, 33.189697, 35.940708>,  <34.587734, 32.951027, 35.952595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.565491, 33.189697, 35.940708>,  <34.528416, 33.587482, 35.920898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565491, 33.189697, 35.940708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226527, -0.027375, -0.973620,
		0.969585, 0.101457, 0.222736,
		0.092683, -0.994463, 0.049525,
		34.593296, 32.891357, 35.955566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.083363, 33.432724, 35.662708>,  <34.528416, 33.587482, 35.920898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.083363, 33.432724, 35.662708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.903000, 33.078022, 35.622021>,  <34.794781, 32.865200, 35.597607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.903000, 33.078022, 35.622021>,  <35.083363, 33.432724, 35.662708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903000, 33.078022, 35.622021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182447, 0.019988, -0.983012,
		0.873724, -0.461808, 0.152773,
		-0.450909, -0.886755, -0.101720,
		34.767727, 32.811996, 35.591503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498375, 33.128986, 35.242435>,  <35.083363, 33.432724, 35.662708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498375, 33.128986, 35.242435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.157516, 32.925350, 35.193993>,  <34.952999, 32.803169, 35.164925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.157516, 32.925350, 35.193993>,  <35.498375, 33.128986, 35.242435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.157516, 32.925350, 35.193993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140330, 0.000651, -0.990105,
		0.504134, -0.860711, 0.070886,
		-0.852148, -0.509093, -0.121112,
		34.901871, 32.772621, 35.157658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.633621, 32.368290, 35.080208>,  <35.498375, 33.128986, 35.242435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.633621, 32.368290, 35.080208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.302727, 32.557224, 34.958500>,  <35.104191, 32.670586, 34.885475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.302727, 32.557224, 34.958500>,  <35.633621, 32.368290, 35.080208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.302727, 32.557224, 34.958500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357839, 0.025416, -0.933437,
		-0.433161, -0.881053, -0.190044,
		-0.827238, 0.472334, -0.304266,
		35.054554, 32.698925, 34.867222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672188, 31.783468, 35.518902>,  <35.633621, 32.368290, 35.080208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672188, 31.783468, 35.518902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.031891, 31.623781, 35.447399>,  <36.247715, 31.527969, 35.404495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.031891, 31.623781, 35.447399>,  <35.672188, 31.783468, 35.518902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.031891, 31.623781, 35.447399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078494, -0.549320, 0.831917,
		-0.430312, -0.734079, -0.525318,
		0.899261, -0.399218, -0.178758,
		36.301670, 31.504015, 35.393772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.660995, 31.125772, 35.643551>,  <35.672188, 31.783468, 35.518902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.660995, 31.125772, 35.643551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.049206, 31.208668, 35.692757>,  <36.282131, 31.258406, 35.722279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.049206, 31.208668, 35.692757>,  <35.660995, 31.125772, 35.643551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.049206, 31.208668, 35.692757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011740, -0.550487, 0.834761,
		0.240715, -0.808712, -0.536694,
		0.970525, 0.207240, 0.123016,
		36.340363, 31.270840, 35.729660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.049381, 30.558706, 35.901608>,  <35.660995, 31.125772, 35.643551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.049381, 30.558706, 35.901608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.264904, 30.873549, 36.021709>,  <36.394218, 31.062454, 36.093769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.264904, 30.873549, 36.021709>,  <36.049381, 30.558706, 35.901608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264904, 30.873549, 36.021709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215083, -0.473132, 0.854333,
		0.814513, -0.395736, -0.424219,
		0.538802, 0.787108, 0.300256,
		36.426544, 31.109680, 36.111786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.694069, 30.301140, 36.243656>,  <36.049381, 30.558706, 35.901608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.694069, 30.301140, 36.243656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.672634, 30.680525, 36.368584>,  <36.659775, 30.908155, 36.443542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.672634, 30.680525, 36.368584>,  <36.694069, 30.301140, 36.243656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.672634, 30.680525, 36.368584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271730, -0.287119, 0.918545,
		0.960881, 0.134088, -0.242341,
		-0.053585, 0.948463, 0.312323,
		36.656559, 30.965063, 36.462280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.353146, 30.452993, 36.510960>,  <36.694069, 30.301140, 36.243656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.353146, 30.452993, 36.510960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.082138, 30.694458, 36.679039>,  <36.919533, 30.839336, 36.779884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.082138, 30.694458, 36.679039>,  <37.353146, 30.452993, 36.510960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.082138, 30.694458, 36.679039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311190, -0.282376, 0.907427,
		0.666433, 0.745557, 0.003460,
		-0.677515, 0.603663, 0.420195,
		36.878883, 30.875557, 36.805096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642681, 30.710819, 37.140995>,  <37.353146, 30.452993, 36.510960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.642681, 30.710819, 37.140995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.253242, 30.785503, 37.193535>,  <37.019581, 30.830315, 37.225060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.253242, 30.785503, 37.193535>,  <37.642681, 30.710819, 37.140995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253242, 30.785503, 37.193535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116654, -0.087653, 0.989297,
		0.196226, 0.978497, 0.063557,
		-0.973595, 0.186712, 0.131346,
		36.961163, 30.841516, 37.232937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.606144, 31.259932, 37.633766>,  <37.642681, 30.710819, 37.140995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.606144, 31.259932, 37.633766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.240295, 31.099300, 37.652512>,  <37.020786, 31.002922, 37.663757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.240295, 31.099300, 37.652512>,  <37.606144, 31.259932, 37.633766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.240295, 31.099300, 37.652512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057405, -0.014255, 0.998249,
		-0.400207, 0.915714, 0.036091,
		-0.914625, -0.401578, 0.046861,
		36.965908, 30.978827, 37.666569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284657, 31.616781, 38.081230>,  <37.606144, 31.259932, 37.633766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284657, 31.616781, 38.081230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087566, 31.268917, 38.069130>,  <36.969315, 31.060198, 38.061871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087566, 31.268917, 38.069130>,  <37.284657, 31.616781, 38.081230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087566, 31.268917, 38.069130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103948, -0.093331, 0.990194,
		-0.863957, 0.484745, 0.136386,
		-0.492721, -0.869662, -0.030246,
		36.939751, 31.008018, 38.060055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825909, 31.699337, 38.677235>,  <37.284657, 31.616781, 38.081230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.825909, 31.699337, 38.677235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.825546, 31.311970, 38.577503>,  <36.825329, 31.079550, 38.517662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.825546, 31.311970, 38.577503>,  <36.825909, 31.699337, 38.677235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825546, 31.311970, 38.577503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214507, -0.243340, 0.945924,
		-0.976722, 0.054345, -0.207511,
		-0.000911, -0.968417, -0.249333,
		36.825272, 31.021444, 38.502705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190636, 31.384209, 39.014420>,  <36.825909, 31.699337, 38.677235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190636, 31.384209, 39.014420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.461964, 31.098488, 38.945538>,  <36.624760, 30.927055, 38.904209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.461964, 31.098488, 38.945538>,  <36.190636, 31.384209, 39.014420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.461964, 31.098488, 38.945538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175967, -0.385469, 0.905786,
		-0.713384, -0.584111, -0.387166,
		0.678320, -0.714302, -0.172203,
		36.665459, 30.884197, 38.893875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908859, 30.892738, 39.318928>,  <36.190636, 31.384209, 39.014420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908859, 30.892738, 39.318928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.295158, 30.788950, 39.318214>,  <36.526939, 30.726677, 39.317787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.295158, 30.788950, 39.318214>,  <35.908859, 30.892738, 39.318928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295158, 30.788950, 39.318214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063524, -0.243081, 0.967924,
		-0.251587, -0.934657, -0.251238,
		0.965748, -0.259476, -0.001783,
		36.584885, 30.711109, 39.317680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966084, 30.282057, 39.711102>,  <35.908859, 30.892738, 39.318928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.966084, 30.282057, 39.711102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.349056, 30.397526, 39.711407>,  <36.578838, 30.466806, 39.711590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.349056, 30.397526, 39.711407>,  <35.966084, 30.282057, 39.711102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.349056, 30.397526, 39.711407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088514, -0.296094, 0.951049,
		0.274768, -0.910493, -0.309040,
		0.957428, 0.288672, 0.000766,
		36.636284, 30.484127, 39.711636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.422249, 29.707201, 39.922901>,  <35.966084, 30.282057, 39.711102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.422249, 29.707201, 39.922901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.596840, 30.048161, 40.038078>,  <36.701595, 30.252735, 40.107185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.596840, 30.048161, 40.038078>,  <36.422249, 29.707201, 39.922901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596840, 30.048161, 40.038078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211956, -0.408443, 0.887834,
		0.874394, -0.326487, -0.358946,
		0.436476, 0.852397, 0.287939,
		36.727783, 30.303879, 40.124458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583164, 29.447994, 40.649338>,  <36.422249, 29.707201, 39.922901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583164, 29.447994, 40.649338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.724586, 29.822056, 40.640476>,  <36.809441, 30.046492, 40.635159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.724586, 29.822056, 40.640476>,  <36.583164, 29.447994, 40.649338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724586, 29.822056, 40.640476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259766, -0.075398, 0.962724,
		0.898623, -0.346128, -0.269578,
		0.353551, 0.935153, -0.022158,
		36.830650, 30.102602, 40.633827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283386, 29.503183, 41.073242>,  <36.583164, 29.447994, 40.649338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283386, 29.503183, 41.073242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.159592, 29.880438, 41.024731>,  <37.085316, 30.106791, 40.995625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.159592, 29.880438, 41.024731>,  <37.283386, 29.503183, 41.073242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.159592, 29.880438, 41.024731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033387, 0.116688, 0.992607,
		0.950317, 0.311248, -0.004625,
		-0.309487, 0.943138, -0.121282,
		37.066746, 30.163380, 40.988346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640232, 29.940580, 41.573589>,  <37.283386, 29.503183, 41.073242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640232, 29.940580, 41.573589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.310570, 30.144093, 41.474060>,  <37.112774, 30.266199, 41.414341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.310570, 30.144093, 41.474060>,  <37.640232, 29.940580, 41.573589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.310570, 30.144093, 41.474060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220082, 0.117120, 0.968425,
		0.521857, 0.852893, 0.015448,
		-0.824154, 0.508779, -0.248827,
		37.063324, 30.296726, 41.399410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656601, 30.526947, 42.015907>,  <37.640232, 29.940580, 41.573589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656601, 30.526947, 42.015907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.271301, 30.471760, 41.923729>,  <37.040119, 30.438648, 41.868420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.271301, 30.471760, 41.923729>,  <37.656601, 30.526947, 42.015907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.271301, 30.471760, 41.923729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258670, 0.245453, 0.934260,
		-0.072334, 0.959540, -0.272122,
		-0.963254, -0.137969, -0.230450,
		36.982327, 30.430368, 41.854595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295998, 31.033218, 42.444233>,  <37.656601, 30.526947, 42.015907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295998, 31.033218, 42.444233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.011387, 30.785055, 42.312275>,  <36.840622, 30.636158, 42.233101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.011387, 30.785055, 42.312275>,  <37.295998, 31.033218, 42.444233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.011387, 30.785055, 42.312275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507299, 0.128703, 0.852105,
		-0.486192, 0.773649, -0.406306,
		-0.711523, -0.620406, -0.329896,
		36.797932, 30.598934, 42.213306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.618565, 31.370068, 42.496525>,  <37.295998, 31.033218, 42.444233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.618565, 31.370068, 42.496525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.534855, 30.978954, 42.491634>,  <36.484631, 30.744287, 42.488701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.534855, 30.978954, 42.491634>,  <36.618565, 31.370068, 42.496525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.534855, 30.978954, 42.491634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467600, 0.089084, 0.879440,
		-0.858811, 0.189758, -0.475853,
		-0.209272, -0.977781, -0.012224,
		36.472073, 30.685619, 42.487968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934574, 31.276287, 42.749424>,  <36.618565, 31.370068, 42.496525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934574, 31.276287, 42.749424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.075100, 30.903160, 42.781502>,  <36.159416, 30.679285, 42.800747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.075100, 30.903160, 42.781502>,  <35.934574, 31.276287, 42.749424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.075100, 30.903160, 42.781502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302231, -0.031925, 0.952700,
		-0.886134, -0.358936, -0.293142,
		0.351317, -0.932816, 0.080192,
		36.180496, 30.623316, 42.805561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395908, 30.863968, 42.960968>,  <35.934574, 31.276287, 42.749424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.395908, 30.863968, 42.960968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.719734, 30.656843, 43.071583>,  <35.914028, 30.532568, 43.137951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.719734, 30.656843, 43.071583>,  <35.395908, 30.863968, 42.960968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719734, 30.656843, 43.071583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353318, -0.053604, 0.933966,
		-0.468796, -0.853813, -0.226349,
		0.809565, -0.517813, 0.276538,
		35.962605, 30.501499, 43.154545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134510, 30.340981, 43.394054>,  <35.395908, 30.863968, 42.960968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134510, 30.340981, 43.394054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.519440, 30.342041, 43.502811>,  <35.750397, 30.342678, 43.568066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.519440, 30.342041, 43.502811>,  <35.134510, 30.340981, 43.394054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519440, 30.342041, 43.502811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269189, -0.131806, 0.954026,
		0.038369, -0.991272, -0.126126,
		0.962323, 0.002653, 0.271896,
		35.808136, 30.342836, 43.584381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111473, 29.823839, 43.874611>,  <35.134510, 30.340981, 43.394054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111473, 29.823839, 43.874611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.432045, 30.048635, 43.956463>,  <35.624390, 30.183514, 44.005573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.432045, 30.048635, 43.956463>,  <35.111473, 29.823839, 43.874611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.432045, 30.048635, 43.956463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343549, 0.152500, 0.926670,
		0.489573, -0.812964, 0.315289,
		0.801431, 0.561991, 0.204633,
		35.672474, 30.217232, 44.017853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.368591, 29.640549, 44.590801>,  <35.111473, 29.823839, 43.874611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.368591, 29.640549, 44.590801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.509247, 30.006926, 44.513447>,  <35.593639, 30.226751, 44.467033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.509247, 30.006926, 44.513447>,  <35.368591, 29.640549, 44.590801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509247, 30.006926, 44.513447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348466, 0.319801, 0.881078,
		0.868862, -0.242433, 0.431630,
		0.351638, 0.915944, -0.193383,
		35.614738, 30.281710, 44.455433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597252, 29.875214, 45.208279>,  <35.368591, 29.640549, 44.590801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597252, 29.875214, 45.208279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.527107, 30.201843, 44.988293>,  <35.485020, 30.397821, 44.856300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.527107, 30.201843, 44.988293>,  <35.597252, 29.875214, 45.208279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.527107, 30.201843, 44.988293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261923, 0.499792, 0.825593,
		0.949024, 0.288822, 0.126236,
		-0.175357, 0.816572, -0.549963,
		35.474499, 30.446815, 44.823303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036510, 30.341034, 45.551918>,  <35.597252, 29.875214, 45.208279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036510, 30.341034, 45.551918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.768715, 30.569674, 45.362156>,  <35.608040, 30.706858, 45.248299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.768715, 30.569674, 45.362156>,  <36.036510, 30.341034, 45.551918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768715, 30.569674, 45.362156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087981, 0.573142, 0.814719,
		0.737595, 0.587183, -0.333421,
		-0.669487, 0.571599, -0.474407,
		35.567867, 30.741154, 45.219833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283287, 31.058855, 45.497757>,  <36.036510, 30.341034, 45.551918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.283287, 31.058855, 45.497757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.884991, 31.091627, 45.480881>,  <35.646011, 31.111290, 45.470757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.884991, 31.091627, 45.480881>,  <36.283287, 31.058855, 45.497757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.884991, 31.091627, 45.480881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034243, 0.753969, 0.656017,
		0.085556, 0.651781, -0.753566,
		-0.995745, 0.081931, -0.042188,
		35.586266, 31.116207, 45.468224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070316, 31.824532, 45.421844>,  <36.283287, 31.058855, 45.497757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070316, 31.824532, 45.421844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.768940, 31.619802, 45.586945>,  <35.588116, 31.496965, 45.686005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.768940, 31.619802, 45.586945>,  <36.070316, 31.824532, 45.421844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768940, 31.619802, 45.586945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018437, 0.643945, 0.764849,
		-0.657256, 0.568659, -0.494612,
		-0.753442, -0.511821, 0.412752,
		35.542908, 31.466255, 45.710770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.634705, 32.302525, 45.576118>,  <36.070316, 31.824532, 45.421844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.634705, 32.302525, 45.576118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533497, 32.003021, 45.821182>,  <35.472775, 31.823320, 45.968220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533497, 32.003021, 45.821182>,  <35.634705, 32.302525, 45.576118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533497, 32.003021, 45.821182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145196, 0.655479, 0.741124,
		-0.956505, 0.098560, -0.274563,
		-0.253016, -0.748755, 0.612658,
		35.457592, 31.778395, 46.004978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.058361, 32.522076, 46.027416>,  <35.634705, 32.302525, 45.576118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.058361, 32.522076, 46.027416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.193272, 32.211555, 46.240437>,  <35.274220, 32.025246, 46.368248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.193272, 32.211555, 46.240437>,  <35.058361, 32.522076, 46.027416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.193272, 32.211555, 46.240437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304564, 0.445293, 0.841995,
		-0.890777, -0.446182, -0.086244,
		0.337279, -0.776296, 0.532548,
		35.294456, 31.978666, 46.400200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553883, 32.358875, 46.460094>,  <35.058361, 32.522076, 46.027416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.553883, 32.358875, 46.460094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867725, 32.186310, 46.638206>,  <35.056030, 32.082771, 46.745071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867725, 32.186310, 46.638206>,  <34.553883, 32.358875, 46.460094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867725, 32.186310, 46.638206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239167, 0.452001, 0.859357,
		-0.572007, -0.780753, 0.251462,
		0.784607, -0.431417, 0.445278,
		35.103107, 32.056885, 46.771790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.332355, 32.147541, 47.149673>,  <34.553883, 32.358875, 46.460094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.332355, 32.147541, 47.149673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.730801, 32.141911, 47.184448>,  <34.969868, 32.138531, 47.205315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.730801, 32.141911, 47.184448>,  <34.332355, 32.147541, 47.149673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.730801, 32.141911, 47.184448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066608, 0.525424, 0.848229,
		-0.057619, -0.850724, 0.522445,
		0.996114, -0.014075, 0.086940,
		35.029636, 32.137688, 47.210529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.521557, 31.909908, 47.808491>,  <34.332355, 32.147541, 47.149673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.521557, 31.909908, 47.808491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.851494, 32.097183, 47.681725>,  <35.049458, 32.209549, 47.605667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.851494, 32.097183, 47.681725>,  <34.521557, 31.909908, 47.808491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.851494, 32.097183, 47.681725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026210, 0.528276, 0.848668,
		0.564757, -0.708322, 0.423472,
		0.824841, 0.468192, -0.316913,
		35.098946, 32.237640, 47.586651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015686, 31.788618, 48.302593>,  <34.521557, 31.909908, 47.808491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015686, 31.788618, 48.302593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.130199, 32.130264, 48.128914>,  <35.198906, 32.335251, 48.024704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.130199, 32.130264, 48.128914>,  <35.015686, 31.788618, 48.302593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.130199, 32.130264, 48.128914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020611, 0.447575, 0.894009,
		0.957925, -0.264885, 0.110527,
		0.286279, 0.854115, -0.434202,
		35.216084, 32.386497, 47.998653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.627914, 32.080833, 48.630116>,  <35.015686, 31.788618, 48.302593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.627914, 32.080833, 48.630116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.511963, 32.409962, 48.434593>,  <35.442390, 32.607441, 48.317280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.511963, 32.409962, 48.434593>,  <35.627914, 32.080833, 48.630116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.511963, 32.409962, 48.434593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038345, 0.520308, 0.853117,
		0.956294, 0.228559, -0.182379,
		-0.289880, 0.822825, -0.488804,
		35.424999, 32.656811, 48.287952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052017, 32.674351, 48.806606>,  <35.627914, 32.080833, 48.630116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052017, 32.674351, 48.806606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.712254, 32.838966, 48.674461>,  <35.508396, 32.937737, 48.595173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.712254, 32.838966, 48.674461>,  <36.052017, 32.674351, 48.806606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.712254, 32.838966, 48.674461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054395, 0.690942, 0.720861,
		0.524929, 0.594333, -0.609276,
		-0.849406, 0.411543, -0.330367,
		35.457432, 32.962429, 48.575352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.146732, 33.394020, 48.860085>,  <36.052017, 32.674351, 48.806606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.146732, 33.394020, 48.860085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.749325, 33.353127, 48.840214>,  <35.510880, 33.328590, 48.828293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.749325, 33.353127, 48.840214>,  <36.146732, 33.394020, 48.860085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.749325, 33.353127, 48.840214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111996, 0.805937, 0.581311,
		-0.019398, 0.583107, -0.812164,
		-0.993519, -0.102235, -0.049673,
		35.451267, 33.322456, 48.825314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931667, 34.022160, 48.979931>,  <36.146732, 33.394020, 48.860085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931667, 34.022160, 48.979931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.612892, 33.786568, 49.033581>,  <35.421627, 33.645210, 49.065769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.612892, 33.786568, 49.033581>,  <35.931667, 34.022160, 48.979931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.612892, 33.786568, 49.033581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243831, 0.516802, 0.820647,
		-0.552662, 0.621302, -0.555471,
		-0.796938, -0.588982, 0.134124,
		35.373810, 33.609875, 49.073818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541710, 34.592754, 49.188721>,  <35.931667, 34.022160, 48.979931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.541710, 34.592754, 49.188721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.746887, 34.931686, 49.243740>,  <35.869995, 35.135044, 49.276752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.746887, 34.931686, 49.243740>,  <35.541710, 34.592754, 49.188721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.746887, 34.931686, 49.243740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150404, 0.069043, -0.986211,
		-0.845142, 0.526561, -0.092026,
		0.512947, 0.847329, 0.137548,
		35.900772, 35.185886, 49.285004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233650, 35.047092, 48.769211>,  <35.541710, 34.592754, 49.188721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.233650, 35.047092, 48.769211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.601006, 35.191608, 48.833740>,  <35.821419, 35.278316, 48.872459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.601006, 35.191608, 48.833740>,  <35.233650, 35.047092, 48.769211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.601006, 35.191608, 48.833740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199982, -0.072037, -0.977148,
		-0.341411, 0.929668, -0.138409,
		0.918393, 0.361288, 0.161323,
		35.876522, 35.299995, 48.882137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275612, 35.648994, 48.291176>,  <35.233650, 35.047092, 48.769211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275612, 35.648994, 48.291176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.655403, 35.562283, 48.381954>,  <35.883278, 35.510254, 48.436420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.655403, 35.562283, 48.381954>,  <35.275612, 35.648994, 48.291176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.655403, 35.562283, 48.381954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260206, 0.139455, -0.955429,
		0.175471, 0.966208, 0.188817,
		0.949475, -0.216782, 0.226943,
		35.940247, 35.497250, 48.450039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702732, 36.092628, 47.878376>,  <35.275612, 35.648994, 48.291176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702732, 36.092628, 47.878376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.900486, 35.757942, 47.972603>,  <36.019138, 35.557129, 48.029137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.900486, 35.757942, 47.972603>,  <35.702732, 36.092628, 47.878376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.900486, 35.757942, 47.972603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222908, -0.139901, -0.964749,
		0.840177, 0.529464, 0.117346,
		0.494383, -0.836717, 0.235563,
		36.048801, 35.506927, 48.043270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370239, 36.103218, 47.451580>,  <35.702732, 36.092628, 47.878376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.370239, 36.103218, 47.451580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.321781, 35.730671, 47.588921>,  <36.292706, 35.507145, 47.671326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.321781, 35.730671, 47.588921>,  <36.370239, 36.103218, 47.451580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321781, 35.730671, 47.588921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268777, -0.363750, -0.891877,
		0.955554, -0.015761, 0.294395,
		-0.121143, -0.931363, 0.343347,
		36.285439, 35.451263, 47.691925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967007, 35.788097, 47.208374>,  <36.370239, 36.103218, 47.451580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.967007, 35.788097, 47.208374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.717728, 35.484562, 47.284050>,  <36.568161, 35.302441, 47.329456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.717728, 35.484562, 47.284050>,  <36.967007, 35.788097, 47.208374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717728, 35.484562, 47.284050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230737, -0.409547, -0.882628,
		0.747250, -0.506400, 0.430321,
		-0.623200, -0.758835, 0.189189,
		36.530769, 35.256912, 47.340805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308510, 35.190388, 47.051758>,  <36.967007, 35.788097, 47.208374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308510, 35.190388, 47.051758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.920826, 35.092819, 47.065197>,  <36.688213, 35.034279, 47.073261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.920826, 35.092819, 47.065197>,  <37.308510, 35.190388, 47.051758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920826, 35.092819, 47.065197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059426, -0.364157, -0.929440,
		0.238947, -0.898828, 0.367441,
		-0.969213, -0.243923, 0.033601,
		36.630062, 35.019642, 47.075275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388088, 34.466965, 46.784012>,  <37.308510, 35.190388, 47.051758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.388088, 34.466965, 46.784012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.016632, 34.604988, 46.729527>,  <36.793758, 34.687801, 46.696835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.016632, 34.604988, 46.729527>,  <37.388088, 34.466965, 46.784012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016632, 34.604988, 46.729527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051485, -0.483495, -0.873832,
		-0.367380, -0.804466, 0.466761,
		-0.928645, 0.345060, -0.136209,
		36.738037, 34.708508, 46.688663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030373, 33.862640, 46.598999>,  <37.388088, 34.466965, 46.784012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.030373, 33.862640, 46.598999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.816574, 34.172531, 46.463879>,  <36.688293, 34.358467, 46.382805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.816574, 34.172531, 46.463879>,  <37.030373, 33.862640, 46.598999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816574, 34.172531, 46.463879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050929, -0.369436, -0.927860,
		-0.843635, -0.513142, 0.158007,
		-0.534497, 0.774727, -0.337802,
		36.656223, 34.404949, 46.362537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632244, 33.568409, 46.147549>,  <37.030373, 33.862640, 46.598999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.632244, 33.568409, 46.147549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.599266, 33.950352, 46.033394>,  <36.579479, 34.179516, 45.964901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.599266, 33.950352, 46.033394>,  <36.632244, 33.568409, 46.147549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599266, 33.950352, 46.033394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082335, -0.291913, -0.952895,
		-0.993189, -0.055067, 0.102686,
		-0.082449, 0.954858, -0.285391,
		36.574532, 34.236809, 45.947777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121391, 33.543877, 45.665951>,  <36.632244, 33.568409, 46.147549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121391, 33.543877, 45.665951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.313168, 33.885254, 45.584202>,  <36.428234, 34.090080, 45.535152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.313168, 33.885254, 45.584202>,  <36.121391, 33.543877, 45.665951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313168, 33.885254, 45.584202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090230, -0.183706, -0.978831,
		-0.872925, 0.487729, -0.011069,
		0.479437, 0.853448, -0.204370,
		36.457001, 34.141289, 45.522892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.859150, 33.638367, 45.079094>,  <36.121391, 33.543877, 45.665951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.859150, 33.638367, 45.079094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.164852, 33.896049, 45.091156>,  <36.348274, 34.050659, 45.098392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.164852, 33.896049, 45.091156>,  <35.859150, 33.638367, 45.079094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.164852, 33.896049, 45.091156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023181, 0.019286, -0.999545,
		-0.644496, 0.764608, -0.000194,
		0.764256, 0.644207, 0.030155,
		36.394131, 34.089314, 45.100201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821335, 34.040470, 44.513802>,  <35.859150, 33.638367, 45.079094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.821335, 34.040470, 44.513802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.210651, 34.093418, 44.588821>,  <36.444241, 34.125187, 44.633831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.210651, 34.093418, 44.588821>,  <35.821335, 34.040470, 44.513802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.210651, 34.093418, 44.588821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199972, -0.087726, -0.975866,
		-0.112725, 0.987310, -0.111854,
		0.973296, 0.132372, 0.187546,
		36.502640, 34.133129, 44.645084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029655, 34.514366, 44.072437>,  <35.821335, 34.040470, 44.513802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029655, 34.514366, 44.072437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.331150, 34.277367, 44.186165>,  <36.512047, 34.135166, 44.254402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.331150, 34.277367, 44.186165>,  <36.029655, 34.514366, 44.072437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.331150, 34.277367, 44.186165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252255, -0.138648, -0.957676,
		0.606840, 0.793552, 0.044957,
		0.753733, -0.592497, 0.284315,
		36.557270, 34.099617, 44.271458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624191, 34.699257, 43.577164>,  <36.029655, 34.514366, 44.072437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624191, 34.699257, 43.577164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.750950, 34.355221, 43.737072>,  <36.827003, 34.148800, 43.833015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.750950, 34.355221, 43.737072>,  <36.624191, 34.699257, 43.577164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.750950, 34.355221, 43.737072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357429, -0.282122, -0.890310,
		0.878534, 0.425024, 0.218019,
		0.316895, -0.860094, 0.399769,
		36.846020, 34.097191, 43.857002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222244, 34.565495, 43.241806>,  <36.624191, 34.699257, 43.577164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.222244, 34.565495, 43.241806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.159439, 34.204811, 43.402939>,  <37.121758, 33.988403, 43.499619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.159439, 34.204811, 43.402939>,  <37.222244, 34.565495, 43.241806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.159439, 34.204811, 43.402939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486635, -0.425573, -0.762938,
		0.859380, 0.076242, 0.505621,
		-0.157010, -0.901707, 0.402831,
		37.112335, 33.934299, 43.523788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844589, 34.302757, 43.210663>,  <37.222244, 34.565495, 43.241806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844589, 34.302757, 43.210663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.573967, 34.008652, 43.226971>,  <37.411594, 33.832188, 43.236755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.573967, 34.008652, 43.226971>,  <37.844589, 34.302757, 43.210663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573967, 34.008652, 43.226971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448882, -0.455660, -0.768686,
		0.583763, -0.501758, 0.638326,
		-0.676554, -0.735263, 0.040767,
		37.371002, 33.788074, 43.239201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235962, 33.537586, 43.123024>,  <37.844589, 34.302757, 43.210663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.235962, 33.537586, 43.123024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.849892, 33.510540, 43.021942>,  <37.618248, 33.494312, 42.961292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.849892, 33.510540, 43.021942>,  <38.235962, 33.537586, 43.123024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.849892, 33.510540, 43.021942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259081, -0.380696, -0.887664,
		-0.036181, -0.922224, 0.384958,
		-0.965178, -0.067619, -0.252705,
		37.560337, 33.490253, 42.946129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275692, 33.001060, 42.835468>,  <38.235962, 33.537586, 43.123024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275692, 33.001060, 42.835468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.911892, 33.113853, 42.713291>,  <37.693611, 33.181530, 42.639984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.911892, 33.113853, 42.713291>,  <38.275692, 33.001060, 42.835468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.911892, 33.113853, 42.713291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199923, -0.347522, -0.916111,
		-0.364483, -0.894266, 0.259694,
		-0.909496, 0.281988, -0.305450,
		37.639042, 33.198448, 42.621658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.982975, 32.348099, 42.572762>,  <38.275692, 33.001060, 42.835468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.982975, 32.348099, 42.572762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823967, 32.686760, 42.431252>,  <37.728561, 32.889957, 42.346344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823967, 32.686760, 42.431252>,  <37.982975, 32.348099, 42.572762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823967, 32.686760, 42.431252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152266, -0.319337, -0.935328,
		-0.904873, -0.425677, -0.001975,
		-0.397517, 0.846654, -0.353776,
		37.704712, 32.940758, 42.325119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489632, 32.135254, 42.071918>,  <37.982975, 32.348099, 42.572762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489632, 32.135254, 42.071918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.590736, 32.514977, 41.997166>,  <37.651398, 32.742809, 41.952312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.590736, 32.514977, 41.997166>,  <37.489632, 32.135254, 42.071918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.590736, 32.514977, 41.997166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089963, -0.215376, -0.972379,
		-0.963337, 0.228969, -0.139842,
		0.252763, 0.949308, -0.186881,
		37.666565, 32.799770, 41.941101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293732, 32.152943, 41.420757>,  <37.489632, 32.135254, 42.071918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293732, 32.152943, 41.420757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.476532, 32.508713, 41.424084>,  <37.586212, 32.722176, 41.426079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.476532, 32.508713, 41.424084>,  <37.293732, 32.152943, 41.420757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.476532, 32.508713, 41.424084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066585, -0.024881, -0.997471,
		-0.886973, 0.456394, -0.070593,
		0.456996, 0.889430, 0.008320,
		37.613632, 32.775543, 41.426579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047249, 32.520077, 40.866062>,  <37.293732, 32.152943, 41.420757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047249, 32.520077, 40.866062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.406513, 32.668495, 40.960407>,  <37.622074, 32.757545, 41.017014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.406513, 32.668495, 40.960407>,  <37.047249, 32.520077, 40.866062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406513, 32.668495, 40.960407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242824, 0.028587, -0.969649,
		-0.366523, 0.928176, -0.064422,
		0.898163, 0.371042, 0.235861,
		37.675961, 32.779808, 41.031166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045731, 33.023369, 40.365784>,  <37.047249, 32.520077, 40.866062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045731, 33.023369, 40.365784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.418907, 32.951996, 40.490868>,  <37.642811, 32.909172, 40.565918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.418907, 32.951996, 40.490868>,  <37.045731, 33.023369, 40.365784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.418907, 32.951996, 40.490868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309301, -0.047329, -0.949786,
		0.184273, 0.982813, 0.011034,
		0.932940, -0.178432, 0.312706,
		37.698788, 32.898464, 40.584679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416996, 33.414894, 39.891109>,  <37.045731, 33.023369, 40.365784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.416996, 33.414894, 39.891109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.675377, 33.157501, 40.055386>,  <37.830406, 33.003063, 40.153950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.675377, 33.157501, 40.055386>,  <37.416996, 33.414894, 39.891109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675377, 33.157501, 40.055386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395221, -0.178370, -0.901102,
		0.653101, 0.744386, 0.139100,
		0.645956, -0.643485, 0.410691,
		37.869164, 32.964455, 40.178593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101913, 33.574623, 39.621922>,  <37.416996, 33.414894, 39.891109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.101913, 33.574623, 39.621922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.123592, 33.206142, 39.776039>,  <38.136600, 32.985054, 39.868511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.123592, 33.206142, 39.776039>,  <38.101913, 33.574623, 39.621922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.123592, 33.206142, 39.776039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515933, -0.304533, -0.800670,
		0.854913, 0.242178, 0.458774,
		0.054193, -0.921200, 0.385297,
		38.139851, 32.929783, 39.891628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789661, 33.363621, 39.554455>,  <38.101913, 33.574623, 39.621922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789661, 33.363621, 39.554455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.553677, 33.041595, 39.579174>,  <38.412086, 32.848381, 39.594006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.553677, 33.041595, 39.579174>,  <38.789661, 33.363621, 39.554455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.553677, 33.041595, 39.579174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401408, -0.358849, -0.842674,
		0.700580, -0.472341, 0.534866,
		-0.589965, -0.805060, 0.061801,
		38.376686, 32.800079, 39.597713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.226967, 32.842438, 39.319118>,  <38.789661, 33.363621, 39.554455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.226967, 32.842438, 39.319118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.871281, 32.659824, 39.307308>,  <38.657867, 32.550259, 39.300220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.871281, 32.659824, 39.307308>,  <39.226967, 32.842438, 39.319118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.871281, 32.659824, 39.307308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224037, -0.378280, -0.898171,
		0.398871, -0.805286, 0.438653,
		-0.889218, -0.456529, -0.029528,
		38.604515, 32.522865, 39.298450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354614, 32.187141, 39.151741>,  <39.226967, 32.842438, 39.319118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.354614, 32.187141, 39.151741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.968868, 32.238388, 39.059151>,  <38.737419, 32.269135, 39.003597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.968868, 32.238388, 39.059151>,  <39.354614, 32.187141, 39.151741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.968868, 32.238388, 39.059151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178820, -0.329172, -0.927183,
		-0.194980, -0.935539, 0.294534,
		-0.964369, 0.128114, -0.231476,
		38.679558, 32.276821, 38.989708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125175, 31.492491, 38.975739>,  <39.354614, 32.187141, 39.151741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125175, 31.492491, 38.975739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.880062, 31.763365, 38.812809>,  <38.732994, 31.925890, 38.715054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.880062, 31.763365, 38.812809>,  <39.125175, 31.492491, 38.975739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.880062, 31.763365, 38.812809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146088, -0.409475, -0.900549,
		-0.776628, -0.611349, 0.151992,
		-0.612787, 0.677188, -0.407320,
		38.696224, 31.966520, 38.690613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840820, 31.202156, 38.357056>,  <39.125175, 31.492491, 38.975739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.840820, 31.202156, 38.357056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.791389, 31.595251, 38.301979>,  <38.761730, 31.831108, 38.268932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.791389, 31.595251, 38.301979>,  <38.840820, 31.202156, 38.357056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.791389, 31.595251, 38.301979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108763, -0.124504, -0.986240,
		-0.986356, -0.136854, -0.091499,
		-0.123579, 0.982736, -0.137690,
		38.754314, 31.890072, 38.260674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414120, 31.195492, 37.778133>,  <38.840820, 31.202156, 38.357056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414120, 31.195492, 37.778133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.586922, 31.555702, 37.797825>,  <38.690605, 31.771828, 37.809639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.586922, 31.555702, 37.797825>,  <38.414120, 31.195492, 37.778133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.586922, 31.555702, 37.797825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201211, -0.043032, -0.978602,
		-0.879138, 0.432669, -0.199786,
		0.432008, 0.900525, 0.049227,
		38.716526, 31.825859, 37.812592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070263, 31.668819, 37.226147>,  <38.414120, 31.195492, 37.778133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.070263, 31.668819, 37.226147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.434196, 31.785233, 37.344471>,  <38.652557, 31.855080, 37.415466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.434196, 31.785233, 37.344471>,  <38.070263, 31.668819, 37.226147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434196, 31.785233, 37.344471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335171, -0.095082, -0.937347,
		-0.244673, 0.951976, -0.184055,
		0.909833, 0.291033, 0.295810,
		38.707146, 31.872543, 37.433212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.170258, 32.081806, 36.766098>,  <38.070263, 31.668819, 37.226147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.170258, 32.081806, 36.766098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.539307, 32.030537, 36.911613>,  <38.760735, 31.999773, 36.998924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.539307, 32.030537, 36.911613>,  <38.170258, 32.081806, 36.766098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.539307, 32.030537, 36.911613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362138, -0.036798, -0.931398,
		0.132771, 0.991068, 0.012468,
		0.922620, -0.128178, 0.363789,
		38.816093, 31.992083, 37.020752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647480, 32.620747, 36.457573>,  <38.170258, 32.081806, 36.766098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647480, 32.620747, 36.457573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.875717, 32.313324, 36.573322>,  <39.012661, 32.128872, 36.642773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.875717, 32.313324, 36.573322>,  <38.647480, 32.620747, 36.457573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875717, 32.313324, 36.573322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580258, 0.127958, -0.804318,
		0.581137, 0.626854, 0.518975,
		0.570597, -0.768558, 0.289376,
		39.046898, 32.082756, 36.660133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278339, 32.879196, 36.457478>,  <38.647480, 32.620747, 36.457573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.278339, 32.879196, 36.457478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.399796, 32.498688, 36.478966>,  <39.472672, 32.270382, 36.491859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.399796, 32.498688, 36.478966>,  <39.278339, 32.879196, 36.457478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399796, 32.498688, 36.478966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589651, 0.143330, -0.794838,
		0.748407, 0.273022, 0.604439,
		0.303642, -0.951271, 0.053718,
		39.490887, 32.213306, 36.495083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.968140, 32.851784, 36.363914>,  <39.278339, 32.879196, 36.457478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.968140, 32.851784, 36.363914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.852493, 32.476910, 36.285851>,  <39.783104, 32.251984, 36.239010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.852493, 32.476910, 36.285851>,  <39.968140, 32.851784, 36.363914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.852493, 32.476910, 36.285851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578815, -0.008758, -0.815412,
		0.762485, -0.348716, 0.544990,
		-0.289120, -0.937188, -0.195164,
		39.765759, 32.195755, 36.227303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.508915, 32.550083, 36.246483>,  <39.968140, 32.851784, 36.363914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.508915, 32.550083, 36.246483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.251484, 32.300720, 36.068871>,  <40.097027, 32.151100, 35.962303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.251484, 32.300720, 36.068871>,  <40.508915, 32.550083, 36.246483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.251484, 32.300720, 36.068871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553811, 0.021145, -0.832374,
		0.528299, -0.781610, 0.331642,
		-0.643579, -0.623409, -0.444035,
		40.058411, 32.113697, 35.935661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.887135, 32.035965, 36.001694>,  <40.508915, 32.550083, 36.246483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.887135, 32.035965, 36.001694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.557941, 31.988808, 35.779415>,  <40.360428, 31.960512, 35.646046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.557941, 31.988808, 35.779415>,  <40.887135, 32.035965, 36.001694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.557941, 31.988808, 35.779415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567310, -0.221142, -0.793257,
		-0.029367, -0.968089, 0.248879,
		-0.822981, -0.117895, -0.555700,
		40.311047, 31.953440, 35.612705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.009850, 31.616394, 35.558834>,  <40.887135, 32.035965, 36.001694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.009850, 31.616394, 35.558834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.711853, 31.807375, 35.372490>,  <40.533054, 31.921963, 35.260681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.711853, 31.807375, 35.372490>,  <41.009850, 31.616394, 35.558834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.711853, 31.807375, 35.372490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540161, 0.021983, -0.841275,
		-0.391428, -0.878383, -0.274278,
		-0.744990, 0.477452, -0.465863,
		40.488358, 31.950611, 35.232731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.270699, 31.547682, 34.875393>,  <41.009850, 31.616394, 35.558834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.270699, 31.547682, 34.875393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.053055, 31.882786, 34.893726>,  <40.922470, 32.083847, 34.904728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.053055, 31.882786, 34.893726>,  <41.270699, 31.547682, 34.875393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.053055, 31.882786, 34.893726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506270, 0.371394, -0.778304,
		-0.669056, -0.400278, -0.626212,
		-0.544110, 0.837761, 0.045834,
		40.889820, 32.134113, 34.907478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.562141, 31.686314, 34.230900>,  <41.270699, 31.547682, 34.875393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.562141, 31.686314, 34.230900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.293037, 31.981899, 34.245449>,  <41.131573, 32.159252, 34.254177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.293037, 31.981899, 34.245449>,  <41.562141, 31.686314, 34.230900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.293037, 31.981899, 34.245449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318010, 0.333208, -0.887604,
		-0.668028, -0.585579, -0.459168,
		-0.672761, 0.738965, 0.036373,
		41.091209, 32.203590, 34.256359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.800560, 31.410143, 33.544083>,  <41.562141, 31.686314, 34.230900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.800560, 31.410143, 33.544083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.118763, 31.433149, 33.302799>,  <42.309685, 31.446953, 33.158031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.118763, 31.433149, 33.302799>,  <41.800560, 31.410143, 33.544083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.118763, 31.433149, 33.302799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424810, 0.762808, -0.487504,
		0.432092, 0.644062, 0.631254,
		0.795508, 0.057516, -0.603207,
		42.357414, 31.450405, 33.121838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.913715, 32.173336, 33.457272>,  <41.800560, 31.410143, 33.544083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.913715, 32.173336, 33.457272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.073311, 31.960058, 33.158871>,  <42.169067, 31.832092, 32.979832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.073311, 31.960058, 33.158871>,  <41.913715, 32.173336, 33.457272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.073311, 31.960058, 33.158871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341317, 0.668744, -0.660519,
		0.851066, 0.518160, 0.084832,
		0.398985, -0.533190, -0.746002,
		42.193005, 31.800100, 32.935070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.521492, 32.621975, 33.128098>,  <41.913715, 32.173336, 33.457272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.521492, 32.621975, 33.128098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.316837, 32.357460, 32.908672>,  <42.194046, 32.198750, 32.777016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.316837, 32.357460, 32.908672>,  <42.521492, 32.621975, 33.128098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.316837, 32.357460, 32.908672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491475, 0.748941, -0.444454,
		0.704757, 0.042208, -0.708192,
		-0.511635, -0.661290, -0.548566,
		42.163345, 32.159073, 32.744102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.070251, 33.064735, 33.564636>,  <42.521492, 32.621975, 33.128098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.070251, 33.064735, 33.564636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.881458, 33.322918, 33.804840>,  <41.768181, 33.477829, 33.948963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.881458, 33.322918, 33.804840>,  <42.070251, 33.064735, 33.564636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.881458, 33.322918, 33.804840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801182, 0.029796, 0.597678,
		0.367884, 0.763214, -0.531194,
		-0.471984, 0.645459, 0.600512,
		41.739864, 33.516556, 33.984993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.554752, 33.605286, 33.820366>,  <42.070251, 33.064735, 33.564636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.554752, 33.605286, 33.820366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.254646, 33.600922, 34.084782>,  <42.074581, 33.598301, 34.243431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.254646, 33.600922, 34.084782>,  <42.554752, 33.605286, 33.820366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.254646, 33.600922, 34.084782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658378, -0.103526, 0.745534,
		0.060298, 0.994567, 0.084858,
		-0.750269, -0.010914, 0.661043,
		42.029564, 33.597649, 34.283096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.713924, 33.598091, 32.986187>,  <42.554752, 33.605286, 33.820366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.713924, 33.598091, 32.986187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.042297, 33.555355, 32.761814>,  <43.239323, 33.529713, 32.627190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.042297, 33.555355, 32.761814>,  <42.713924, 33.598091, 32.986187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.042297, 33.555355, 32.761814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451339, 0.480358, -0.752030,
		0.349795, 0.870541, 0.346123,
		0.820936, -0.106837, -0.560936,
		43.288578, 33.523304, 32.593533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.929409, 34.240509, 32.907913>,  <42.713924, 33.598091, 32.986187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.929409, 34.240509, 32.907913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.079910, 34.026302, 32.605480>,  <43.170212, 33.897778, 32.424023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.079910, 34.026302, 32.605480>,  <42.929409, 34.240509, 32.907913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.079910, 34.026302, 32.605480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303265, 0.699910, -0.646650,
		0.875480, 0.472595, 0.100938,
		0.376251, -0.535518, -0.756079,
		43.192787, 33.865646, 32.378658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.145615, 34.700104, 32.413731>,  <42.929409, 34.240509, 32.907913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.145615, 34.700104, 32.413731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.159527, 34.379036, 32.175568>,  <43.167873, 34.186394, 32.032669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.159527, 34.379036, 32.175568>,  <43.145615, 34.700104, 32.413731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.159527, 34.379036, 32.175568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277165, 0.564649, -0.777400,
		0.960192, 0.192068, -0.202831,
		0.034785, -0.802671, -0.595406,
		43.169964, 34.138233, 31.996946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.409962, 34.972347, 31.830484>,  <43.145615, 34.700104, 32.413731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.409962, 34.972347, 31.830484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.238110, 34.627884, 31.721807>,  <43.134998, 34.421204, 31.656601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.238110, 34.627884, 31.721807>,  <43.409962, 34.972347, 31.830484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.238110, 34.627884, 31.721807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394335, 0.449596, -0.801476,
		0.812352, -0.237202, -0.532747,
		-0.429632, -0.861161, -0.271693,
		43.109219, 34.369537, 31.640299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.597565, 34.803204, 31.108185>,  <43.409962, 34.972347, 31.830484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.597565, 34.803204, 31.108185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.245117, 34.629459, 31.182987>,  <43.033649, 34.525215, 31.227869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.245117, 34.629459, 31.182987>,  <43.597565, 34.803204, 31.108185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.245117, 34.629459, 31.182987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375354, 0.401814, -0.835258,
		0.287658, -0.806152, -0.517081,
		-0.881115, -0.434357, 0.187007,
		42.980782, 34.499153, 31.239090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.331738, 34.484921, 30.498051>,  <43.597565, 34.803204, 31.108185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.331738, 34.484921, 30.498051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.989975, 34.500237, 30.705328>,  <42.784916, 34.509426, 30.829695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.989975, 34.500237, 30.705328>,  <43.331738, 34.484921, 30.498051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.989975, 34.500237, 30.705328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493531, 0.252148, -0.832375,
		-0.162537, -0.966931, -0.196537,
		-0.854406, 0.038295, 0.518193,
		42.733654, 34.511726, 30.860786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.825310, 34.179615, 30.115835>,  <43.331738, 34.484921, 30.498051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.825310, 34.179615, 30.115835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.619835, 34.429436, 30.351143>,  <42.496552, 34.579327, 30.492329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.619835, 34.429436, 30.351143>,  <42.825310, 34.179615, 30.115835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.619835, 34.429436, 30.351143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541227, 0.296136, -0.787005,
		-0.665733, -0.722661, 0.185903,
		-0.513686, 0.624551, 0.588271,
		42.465729, 34.616802, 30.527624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.109528, 33.970085, 30.031376>,  <42.825310, 34.179615, 30.115835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.109528, 33.970085, 30.031376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.131348, 34.332047, 30.200218>,  <42.144440, 34.549225, 30.301523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.131348, 34.332047, 30.200218>,  <42.109528, 33.970085, 30.031376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.131348, 34.332047, 30.200218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742007, 0.319620, -0.589295,
		-0.668169, -0.281059, 0.688880,
		0.054553, 0.904903, 0.422108,
		42.147713, 34.603516, 30.326851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.429459, 34.187675, 30.219486>,  <42.109528, 33.970085, 30.031376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.429459, 34.187675, 30.219486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.635029, 34.530308, 30.237976>,  <41.758373, 34.735889, 30.249071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.635029, 34.530308, 30.237976>,  <41.429459, 34.187675, 30.219486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.635029, 34.530308, 30.237976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764586, 0.481834, -0.428070,
		-0.388952, 0.184654, 0.902563,
		0.513930, 0.856586, 0.046226,
		41.789207, 34.787285, 30.251844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.948936, 34.747135, 30.402531>,  <41.429459, 34.187675, 30.219486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.948936, 34.747135, 30.402531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.233562, 34.942787, 30.200766>,  <41.404339, 35.060177, 30.079706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.233562, 34.942787, 30.200766>,  <40.948936, 34.747135, 30.402531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.233562, 34.942787, 30.200766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701630, 0.456550, -0.547064,
		-0.037295, 0.743181, 0.668051,
		0.711565, 0.489127, -0.504411,
		41.447033, 35.089523, 30.049442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.740417, 35.440487, 30.286877>,  <40.948936, 34.747135, 30.402531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.740417, 35.440487, 30.286877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.029324, 35.395947, 30.013840>,  <41.202667, 35.369221, 29.850018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.029324, 35.395947, 30.013840>,  <40.740417, 35.440487, 30.286877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.029324, 35.395947, 30.013840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517586, 0.567602, -0.640260,
		0.458735, 0.815739, 0.352326,
		0.722265, -0.111350, -0.682594,
		41.246002, 35.362541, 29.809061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.793892, 36.074821, 30.050461>,  <40.740417, 35.440487, 30.286877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.793892, 36.074821, 30.050461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.963707, 35.870815, 29.751221>,  <41.065594, 35.748413, 29.571676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.963707, 35.870815, 29.751221>,  <40.793892, 36.074821, 30.050461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.963707, 35.870815, 29.751221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345283, 0.672619, -0.654495,
		0.836988, 0.536164, 0.109452,
		0.424536, -0.510013, -0.748102,
		41.091068, 35.717812, 29.526791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.210953, 36.559383, 29.610323>,  <40.793892, 36.074821, 30.050461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.210953, 36.559383, 29.610323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.137009, 36.242802, 29.377281>,  <41.092644, 36.052853, 29.237455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.137009, 36.242802, 29.377281>,  <41.210953, 36.559383, 29.610323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.137009, 36.242802, 29.377281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424791, 0.598931, -0.678848,
		0.886217, 0.121997, -0.446919,
		-0.184856, -0.791454, -0.582606,
		41.081551, 36.005367, 29.202499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.385406, 36.754917, 28.918205>,  <41.210953, 36.559383, 29.610323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.385406, 36.754917, 28.918205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.142223, 36.446117, 28.844011>,  <40.996311, 36.260838, 28.799496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.142223, 36.446117, 28.844011>,  <41.385406, 36.754917, 28.918205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.142223, 36.446117, 28.844011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529523, 0.568325, -0.629772,
		0.591599, -0.284657, -0.754309,
		-0.607961, -0.771996, -0.185488,
		40.959835, 36.214520, 28.788366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.511784, 36.593552, 28.223490>,  <41.385406, 36.754917, 28.918205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.511784, 36.593552, 28.223490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.150013, 36.476326, 28.347502>,  <40.932949, 36.405991, 28.421909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.150013, 36.476326, 28.347502>,  <41.511784, 36.593552, 28.223490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.150013, 36.476326, 28.347502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426589, 0.630509, -0.648444,
		-0.005441, -0.718728, -0.695270,
		-0.904429, -0.293066, 0.310032,
		40.878685, 36.388405, 28.440512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.135033, 36.385509, 27.581255>,  <41.511784, 36.593552, 28.223490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.135033, 36.385509, 27.581255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.846096, 36.447216, 27.850899>,  <40.672733, 36.484241, 28.012686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.846096, 36.447216, 27.850899>,  <41.135033, 36.385509, 27.581255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.846096, 36.447216, 27.850899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503169, 0.551461, -0.665366,
		-0.474389, -0.819812, -0.320722,
		-0.722341, 0.154265, 0.674111,
		40.629395, 36.493496, 28.053133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.629883, 36.297710, 27.132662>,  <41.135033, 36.385509, 27.581255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.629883, 36.297710, 27.132662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.473042, 36.471516, 27.456997>,  <40.378937, 36.575798, 27.651598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.473042, 36.471516, 27.456997>,  <40.629883, 36.297710, 27.132662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.473042, 36.471516, 27.456997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612627, 0.534193, -0.582518,
		-0.686255, -0.725144, 0.056739,
		-0.392100, 0.434515, 0.810835,
		40.355412, 36.601871, 27.700247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.946083, 36.271729, 27.054449>,  <40.629883, 36.297710, 27.132662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.946083, 36.271729, 27.054449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.986610, 36.587090, 27.297153>,  <40.010925, 36.776306, 27.442776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.986610, 36.587090, 27.297153>,  <39.946083, 36.271729, 27.054449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.986610, 36.587090, 27.297153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691986, 0.494035, -0.526388,
		-0.714766, -0.366538, 0.595617,
		0.101315, 0.788403, 0.606759,
		40.017006, 36.823612, 27.479181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277004, 36.453289, 27.163887>,  <39.946083, 36.271729, 27.054449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.277004, 36.453289, 27.163887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.452694, 36.788181, 27.294197>,  <39.558105, 36.989117, 27.372383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.452694, 36.788181, 27.294197>,  <39.277004, 36.453289, 27.163887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452694, 36.788181, 27.294197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756632, 0.540246, -0.368296,
		-0.484348, -0.084729, 0.870763,
		0.439221, 0.837230, 0.325775,
		39.584461, 37.039349, 27.391930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770260, 36.787766, 27.527761>,  <39.277004, 36.453289, 27.163887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770260, 36.787766, 27.527761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.046627, 37.046955, 27.399532>,  <39.212448, 37.202469, 27.322596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.046627, 37.046955, 27.399532>,  <38.770260, 36.787766, 27.527761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.046627, 37.046955, 27.399532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718146, 0.564236, -0.407313,
		-0.083049, 0.511637, 0.855178,
		0.690919, 0.647970, -0.320571,
		39.253902, 37.241344, 27.303362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534519, 37.352898, 27.764544>,  <38.770260, 36.787766, 27.527761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.534519, 37.352898, 27.764544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.785255, 37.457771, 27.471060>,  <38.935699, 37.520695, 27.294970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.785255, 37.457771, 27.471060>,  <38.534519, 37.352898, 27.764544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.785255, 37.457771, 27.471060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765518, 0.382591, -0.517307,
		0.145081, 0.885937, 0.440530,
		0.626844, 0.262182, -0.733708,
		38.973309, 37.536427, 27.250948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492268, 38.038364, 27.782513>,  <38.534519, 37.352898, 27.764544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492268, 38.038364, 27.782513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.575974, 37.895191, 27.418514>,  <38.626198, 37.809288, 27.200115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.575974, 37.895191, 27.418514>,  <38.492268, 38.038364, 27.782513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.575974, 37.895191, 27.418514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790604, 0.485716, -0.372860,
		0.575458, 0.797474, -0.181337,
		0.209268, -0.357931, -0.909996,
		38.638752, 37.787811, 27.145515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138397, 38.759918, 27.851919>,  <38.492268, 38.038364, 27.782513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138397, 38.759918, 27.851919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.189777, 39.121033, 28.016102>,  <38.220604, 39.337704, 28.114611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.189777, 39.121033, 28.016102>,  <38.138397, 38.759918, 27.851919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.189777, 39.121033, 28.016102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608121, -0.255236, 0.751694,
		0.783383, -0.346162, 0.516220,
		0.128450, 0.902788, 0.410456,
		38.228313, 39.391869, 28.139238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.357872, 38.719341, 28.534000>,  <38.138397, 38.759918, 27.851919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.357872, 38.719341, 28.534000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.159920, 39.063564, 28.485758>,  <38.041149, 39.270096, 28.456812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.159920, 39.063564, 28.485758>,  <38.357872, 38.719341, 28.534000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159920, 39.063564, 28.485758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490311, -0.161944, 0.856370,
		0.717421, 0.482931, 0.502081,
		-0.494876, 0.860554, -0.120604,
		38.011456, 39.321732, 28.449577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124474, 38.969036, 29.222511>,  <38.357872, 38.719341, 28.534000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.124474, 38.969036, 29.222511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.921619, 39.215427, 28.981386>,  <37.799908, 39.363262, 28.836712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.921619, 39.215427, 28.981386>,  <38.124474, 38.969036, 29.222511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921619, 39.215427, 28.981386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824817, -0.144014, 0.546751,
		0.249974, 0.774487, 0.581105,
		-0.507139, 0.615979, -0.602811,
		37.769478, 39.400223, 28.800543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616512, 39.199738, 29.684212>,  <38.124474, 38.969036, 29.222511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.616512, 39.199738, 29.684212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.880108, 39.121384, 29.974691>,  <39.038265, 39.074371, 30.148979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.880108, 39.121384, 29.974691>,  <38.616512, 39.199738, 29.684212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.880108, 39.121384, 29.974691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712516, -0.146712, -0.686146,
		0.240945, 0.969591, 0.042886,
		0.658989, -0.195881, 0.726199,
		39.077805, 39.062618, 30.192551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.189064, 39.612476, 29.649778>,  <38.616512, 39.199738, 29.684212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.189064, 39.612476, 29.649778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.353065, 39.278015, 29.795519>,  <39.451466, 39.077339, 29.882963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.353065, 39.278015, 29.795519>,  <39.189064, 39.612476, 29.649778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.353065, 39.278015, 29.795519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612994, -0.043187, -0.788906,
		0.675380, 0.546796, 0.494849,
		0.410000, -0.836151, 0.364350,
		39.476067, 39.027168, 29.904823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.009266, 39.605167, 29.709642>,  <39.189064, 39.612476, 29.649778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.009266, 39.605167, 29.709642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.864189, 39.242134, 29.625019>,  <39.777145, 39.024315, 29.574245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.864189, 39.242134, 29.625019>,  <40.009266, 39.605167, 29.709642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.864189, 39.242134, 29.625019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642217, -0.078916, -0.762450,
		0.675289, -0.412397, 0.611485,
		-0.362688, -0.907580, -0.211557,
		39.755383, 38.969860, 29.561552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.527550, 39.026398, 29.739300>,  <40.009266, 39.605167, 29.709642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.527550, 39.026398, 29.739300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.245041, 38.897114, 29.487360>,  <40.075535, 38.819542, 29.336197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.245041, 38.897114, 29.487360>,  <40.527550, 39.026398, 29.739300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.245041, 38.897114, 29.487360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679009, -0.057535, -0.731872,
		0.200312, -0.944576, 0.260100,
		-0.706274, -0.323213, -0.629850,
		40.033157, 38.800152, 29.298405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.425343, 39.051758, 30.568853>,  <40.527550, 39.026398, 29.739300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.425343, 39.051758, 30.568853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.135471, 38.792961, 30.663717>,  <39.961548, 38.637684, 30.720636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.135471, 38.792961, 30.663717>,  <40.425343, 39.051758, 30.568853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.135471, 38.792961, 30.663717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605087, -0.432793, 0.668252,
		-0.329711, 0.627770, 0.705121,
		-0.724680, -0.646989, 0.237159,
		39.918068, 38.598866, 30.734865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.492805, 39.014557, 31.271147>,  <40.425343, 39.051758, 30.568853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.492805, 39.014557, 31.271147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.355839, 38.681210, 31.097597>,  <40.273659, 38.481201, 30.993467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.355839, 38.681210, 31.097597>,  <40.492805, 39.014557, 31.271147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.355839, 38.681210, 31.097597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622941, -0.547065, 0.559164,
		-0.703347, -0.078812, 0.706464,
		-0.342412, -0.833372, -0.433872,
		40.253117, 38.431198, 30.967436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.065987, 38.568626, 31.823515>,  <40.492805, 39.014557, 31.271147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.065987, 38.568626, 31.823515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.249119, 38.390671, 31.515629>,  <40.358997, 38.283897, 31.330896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.249119, 38.390671, 31.515629>,  <40.065987, 38.568626, 31.823515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.249119, 38.390671, 31.515629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490660, -0.595545, 0.636066,
		-0.741380, -0.668879, -0.054368,
		0.457829, -0.444890, -0.769717,
		40.386467, 38.257202, 31.284714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.996788, 37.863880, 31.887148>,  <40.065987, 38.568626, 31.823515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.996788, 37.863880, 31.887148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.314098, 37.869991, 31.643679>,  <40.504482, 37.873657, 31.497597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.314098, 37.869991, 31.643679>,  <39.996788, 37.863880, 31.887148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.314098, 37.869991, 31.643679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485652, -0.618831, 0.617406,
		-0.367233, -0.785376, -0.498322,
		0.793273, 0.015279, -0.608675,
		40.552082, 37.874577, 31.461077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.157990, 37.176636, 31.789610>,  <39.996788, 37.863880, 31.887148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.157990, 37.176636, 31.789610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.478161, 37.401863, 31.707371>,  <40.670265, 37.536999, 31.658028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.478161, 37.401863, 31.707371>,  <40.157990, 37.176636, 31.789610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.478161, 37.401863, 31.707371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548446, -0.549505, 0.630279,
		0.241910, -0.617254, -0.748651,
		0.800429, 0.563065, -0.205599,
		40.718288, 37.570782, 31.645691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.654537, 36.711182, 31.510891>,  <40.157990, 37.176636, 31.789610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.654537, 36.711182, 31.510891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.856789, 37.028912, 31.645576>,  <40.978142, 37.219551, 31.726389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.856789, 37.028912, 31.645576>,  <40.654537, 36.711182, 31.510891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.856789, 37.028912, 31.645576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568497, -0.600326, 0.562513,
		0.648959, -0.093003, -0.755118,
		0.505632, 0.794330, 0.336715,
		41.008480, 37.267212, 31.746592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.390312, 36.407616, 31.585392>,  <40.654537, 36.711182, 31.510891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.390312, 36.407616, 31.585392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.432499, 36.746883, 31.793043>,  <41.457809, 36.950443, 31.917633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.432499, 36.746883, 31.793043>,  <41.390312, 36.407616, 31.585392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.432499, 36.746883, 31.793043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702967, -0.432830, 0.564354,
		0.703359, 0.305409, -0.641881,
		0.105467, 0.848165, 0.519128,
		41.464138, 37.001331, 31.948782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.093292, 36.746624, 31.461815>,  <41.390312, 36.407616, 31.585392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.093292, 36.746624, 31.461815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.946484, 36.861893, 31.815594>,  <41.858398, 36.931053, 32.027863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.946484, 36.861893, 31.815594>,  <42.093292, 36.746624, 31.461815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.946484, 36.861893, 31.815594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814686, -0.359335, 0.455153,
		0.448978, 0.887599, -0.102889,
		-0.367021, 0.288176, 0.884449,
		41.836376, 36.948345, 32.080929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.772667, 36.855473, 31.873606>,  <42.093292, 36.746624, 31.461815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.772667, 36.855473, 31.873606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.496029, 36.938644, 32.150288>,  <42.330044, 36.988548, 32.316296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.496029, 36.938644, 32.150288>,  <42.772667, 36.855473, 31.873606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.496029, 36.938644, 32.150288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665039, -0.190328, 0.722148,
		0.281805, 0.959449, -0.006650,
		-0.691598, 0.207928, 0.691706,
		42.288548, 37.001022, 32.357800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.038441, 37.356384, 32.437099>,  <42.772667, 36.855473, 31.873606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.038441, 37.356384, 32.437099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.749996, 37.120701, 32.582878>,  <42.576927, 36.979290, 32.670345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.749996, 37.120701, 32.582878>,  <43.038441, 37.356384, 32.437099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.749996, 37.120701, 32.582878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618888, -0.311401, 0.721115,
		-0.311401, 0.745559, 0.589212,
		-0.721115, -0.589212, 0.364448,
		42.533661, 36.943935, 32.692211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.022827, 37.404751, 33.238152>,  <43.038441, 37.356384, 32.437099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.022827, 37.404751, 33.238152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.845463, 37.056297, 33.153767>,  <42.739044, 36.847225, 33.103134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.845463, 37.056297, 33.153767>,  <43.022827, 37.404751, 33.238152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.845463, 37.056297, 33.153767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611262, -0.466041, 0.639660,
		-0.655549, 0.154680, 0.739141,
		-0.443412, -0.871137, -0.210963,
		42.712440, 36.794956, 33.090477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.899117, 36.985252, 33.847729>,  <43.022827, 37.404751, 33.238152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.899117, 36.985252, 33.847729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.897884, 36.714039, 33.553719>,  <42.897144, 36.551311, 33.377312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.897884, 36.714039, 33.553719>,  <42.899117, 36.985252, 33.847729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.897884, 36.714039, 33.553719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540050, -0.619752, 0.569432,
		-0.841627, -0.395200, 0.368077,
		-0.003077, -0.678030, -0.735028,
		42.896961, 36.510632, 33.333210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.790306, 36.296406, 34.157635>,  <42.899117, 36.985252, 33.847729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.790306, 36.296406, 34.157635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.992252, 36.221710, 33.820534>,  <43.113422, 36.176891, 33.618271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.992252, 36.221710, 33.820534>,  <42.790306, 36.296406, 34.157635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.992252, 36.221710, 33.820534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556547, -0.675871, 0.483171,
		-0.659823, -0.712970, -0.237292,
		0.504865, -0.186743, -0.842756,
		43.143711, 36.165688, 33.567707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.991829, 35.545959, 34.274986>,  <42.790306, 36.296406, 34.157635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.991829, 35.545959, 34.274986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.206654, 35.660824, 33.957726>,  <43.335548, 35.729744, 33.767368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.206654, 35.660824, 33.957726>,  <42.991829, 35.545959, 34.274986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.206654, 35.660824, 33.957726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693072, -0.686203, 0.220856,
		-0.480845, -0.668328, -0.567561,
		0.537066, 0.287163, -0.793157,
		43.367775, 35.746971, 33.719780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.225239, 34.921383, 33.944412>,  <42.991829, 35.545959, 34.274986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.225239, 34.921383, 33.944412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.482780, 35.201038, 33.820057>,  <43.637306, 35.368832, 33.745445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.482780, 35.201038, 33.820057>,  <43.225239, 34.921383, 33.944412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.482780, 35.201038, 33.820057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747945, -0.660758, 0.063058,
		-0.161334, -0.273125, -0.948353,
		0.643855, 0.699143, -0.310886,
		43.675938, 35.410782, 33.726791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.637966, 34.518562, 33.445255>,  <43.225239, 34.921383, 33.944412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.637966, 34.518562, 33.445255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.836849, 34.857239, 33.521038>,  <43.956181, 35.060444, 33.566509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.836849, 34.857239, 33.521038>,  <43.637966, 34.518562, 33.445255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.836849, 34.857239, 33.521038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840207, -0.415405, -0.348555,
		-0.216417, 0.332488, -0.917941,
		0.497208, 0.846694, 0.189458,
		43.986012, 35.111248, 33.577877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.037663, 34.781967, 32.810616>,  <43.637966, 34.518562, 33.445255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.037663, 34.781967, 32.810616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.231361, 34.925842, 33.129646>,  <44.347580, 35.012169, 33.321064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.231361, 34.925842, 33.129646>,  <44.037663, 34.781967, 32.810616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.231361, 34.925842, 33.129646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846451, -0.423295, -0.323021,
		0.221423, 0.831531, -0.509438,
		0.484245, 0.359690, 0.797577,
		44.376637, 35.033749, 33.368919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.789875, 34.909092, 32.583916>,  <44.037663, 34.781967, 32.810616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.789875, 34.909092, 32.583916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.811874, 34.937134, 32.982327>,  <44.825073, 34.953957, 33.221371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.811874, 34.937134, 32.982327>,  <44.789875, 34.909092, 32.583916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.811874, 34.937134, 32.982327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985707, -0.162898, -0.042961,
		0.159238, 0.984149, -0.078058,
		0.054996, 0.070101, 0.996023,
		44.828373, 34.958164, 33.281132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.380211, 35.243958, 32.683319>,  <44.789875, 34.909092, 32.583916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.380211, 35.243958, 32.683319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.307640, 35.037357, 33.018059>,  <45.264099, 34.913399, 33.218903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.307640, 35.037357, 33.018059>,  <45.380211, 35.243958, 32.683319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.307640, 35.037357, 33.018059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928743, -0.369750, -0.026862,
		0.323299, 0.772345, 0.546774,
		-0.181423, -0.516497, 0.836849,
		45.253212, 34.882408, 33.269112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.876530, 35.363342, 33.235481>,  <45.380211, 35.243958, 32.683319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.876530, 35.363342, 33.235481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.728500, 34.995724, 33.289734>,  <45.639683, 34.775150, 33.322285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.728500, 34.995724, 33.289734>,  <45.876530, 35.363342, 33.235481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.728500, 34.995724, 33.289734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881316, -0.393487, -0.261631,
		0.293822, 0.022717, 0.955590,
		-0.370069, -0.919050, 0.135636,
		45.617481, 34.720009, 33.330425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.473965, 34.970829, 33.534878>,  <45.876530, 35.363342, 33.235481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.473965, 34.970829, 33.534878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.207077, 34.700893, 33.408764>,  <46.046944, 34.538933, 33.333096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.207077, 34.700893, 33.408764>,  <46.473965, 34.970829, 33.534878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.207077, 34.700893, 33.408764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730904, -0.511625, -0.451685,
		0.143509, -0.531817, 0.834611,
		-0.667221, -0.674842, -0.315284,
		46.006912, 34.498440, 33.314178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.941555, 34.410103, 33.372379>,  <46.473965, 34.970829, 33.534878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.941555, 34.410103, 33.372379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.585243, 34.283794, 33.241653>,  <46.371456, 34.208008, 33.163219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.585243, 34.283794, 33.241653>,  <46.941555, 34.410103, 33.372379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.585243, 34.283794, 33.241653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454193, -0.642423, -0.617253,
		-0.015041, -0.698270, 0.715676,
		-0.890776, -0.315771, -0.326812,
		46.318008, 34.189064, 33.143608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.945141, 33.734543, 33.415886>,  <46.941555, 34.410103, 33.372379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.945141, 33.734543, 33.415886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.692940, 33.856441, 33.130341>,  <46.541618, 33.929581, 32.959015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.692940, 33.856441, 33.130341>,  <46.945141, 33.734543, 33.415886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.692940, 33.856441, 33.130341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529196, -0.504033, -0.682571,
		-0.567817, -0.808136, 0.156527,
		-0.630504, 0.304741, -0.713860,
		46.503788, 33.947865, 32.916183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.530804, 34.101452, 33.923153>,  <46.945141, 33.734543, 33.415886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.530804, 34.101452, 33.923153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.322830, 34.440395, 33.966335>,  <47.198048, 34.643761, 33.992245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.322830, 34.440395, 33.966335>,  <47.530804, 34.101452, 33.923153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.322830, 34.440395, 33.966335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069718, -0.083866, 0.994035,
		0.851357, 0.524359, -0.015471,
		-0.519933, 0.847357, 0.107957,
		47.166851, 34.694603, 33.998722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.028164, 34.537697, 34.233814>,  <47.530804, 34.101452, 33.923153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.028164, 34.537697, 34.233814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.647812, 34.651257, 34.283169>,  <47.419601, 34.719391, 34.312782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.647812, 34.651257, 34.283169>,  <48.028164, 34.537697, 34.233814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.647812, 34.651257, 34.283169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146326, 0.060978, 0.987355,
		0.272786, 0.956913, -0.099525,
		-0.950882, 0.283899, 0.123387,
		47.362549, 34.736427, 34.320187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.976372, 35.306641, 34.449348>,  <48.028164, 34.537697, 34.233814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.976372, 35.306641, 34.449348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.668800, 35.083012, 34.573399>,  <47.484257, 34.948833, 34.647831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.668800, 35.083012, 34.573399>,  <47.976372, 35.306641, 34.449348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.668800, 35.083012, 34.573399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281281, 0.139778, 0.949391,
		-0.574131, 0.817249, 0.049778,
		-0.768931, -0.559076, 0.310128,
		47.438122, 34.915287, 34.666435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.613426, 35.618443, 35.036419>,  <47.976372, 35.306641, 34.449348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.613426, 35.618443, 35.036419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.671127, 35.229412, 35.109398>,  <47.705746, 34.995995, 35.153187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.671127, 35.229412, 35.109398>,  <47.613426, 35.618443, 35.036419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.671127, 35.229412, 35.109398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332008, 0.221258, 0.916960,
		-0.932182, -0.071697, 0.354819,
		0.144250, -0.972576, 0.182448,
		47.714401, 34.937637, 35.164131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.128098, 37.231880, 43.062092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.758369, 37.159569, 42.927654>,  <34.536533, 37.116180, 42.846992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.758369, 37.159569, 42.927654>,  <35.128098, 37.231880, 43.062092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.758369, 37.159569, 42.927654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380857, -0.380967, -0.842503,
		0.024264, -0.906744, 0.420984,
		-0.924316, -0.180777, -0.336096,
		34.481075, 37.105335, 42.826824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187534, 36.500973, 42.783562>,  <35.128098, 37.231880, 43.062092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187534, 36.500973, 42.783562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.869442, 36.688095, 42.629280>,  <34.678589, 36.800369, 42.536709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.869442, 36.688095, 42.629280>,  <35.187534, 36.500973, 42.783562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869442, 36.688095, 42.629280> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302128, -0.245806, -0.921031,
		-0.525674, -0.848962, 0.054134,
		-0.795226, 0.467807, -0.385709,
		34.630875, 36.828438, 42.513569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996681, 36.045116, 42.241966>,  <35.187534, 36.500973, 42.783562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996681, 36.045116, 42.241966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.791546, 36.381134, 42.171173>,  <34.668465, 36.582745, 42.128696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.791546, 36.381134, 42.171173>,  <34.996681, 36.045116, 42.241966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791546, 36.381134, 42.171173> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085457, -0.155180, -0.984183,
		-0.854219, -0.519855, 0.007795,
		-0.512842, 0.840042, -0.176983,
		34.637691, 36.633148, 42.118080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434952, 35.904934, 41.863129>,  <34.996681, 36.045116, 42.241966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434952, 35.904934, 41.863129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.468925, 36.296448, 41.788555>,  <34.489311, 36.531357, 41.743813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.468925, 36.296448, 41.788555>,  <34.434952, 35.904934, 41.863129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.468925, 36.296448, 41.788555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046592, -0.183004, -0.982008,
		-0.995297, 0.092093, 0.030060,
		0.084934, 0.978789, -0.186434,
		34.494408, 36.590084, 41.732624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.949768, 35.993977, 41.269951>,  <34.434952, 35.904934, 41.863129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.949768, 35.993977, 41.269951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.173584, 36.325485, 41.266804>,  <34.307873, 36.524391, 41.264915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.173584, 36.325485, 41.266804>,  <33.949768, 35.993977, 41.269951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.173584, 36.325485, 41.266804> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085709, -0.067298, -0.994045,
		-0.824362, 0.555531, -0.108689,
		0.559537, 0.828768, -0.007864,
		34.341446, 36.574116, 41.264446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678837, 36.391399, 40.776649>,  <33.949768, 35.993977, 41.269951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678837, 36.391399, 40.776649> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.059448, 36.512573, 40.797920>,  <34.287815, 36.585278, 40.810684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.059448, 36.512573, 40.797920>,  <33.678837, 36.391399, 40.776649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.059448, 36.512573, 40.797920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071894, -0.050954, -0.996110,
		-0.299046, 0.951648, -0.070263,
		0.951526, 0.302934, 0.053180,
		34.344906, 36.603455, 40.813873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.774483, 36.698864, 40.112759>,  <33.678837, 36.391399, 40.776649>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.774483, 36.698864, 40.112759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.142578, 36.639332, 40.257542>,  <34.363434, 36.603611, 40.344414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.142578, 36.639332, 40.257542>,  <33.774483, 36.698864, 40.112759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.142578, 36.639332, 40.257542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335552, -0.175947, -0.925444,
		0.201420, 0.973084, -0.111972,
		0.920236, -0.148831, 0.361960,
		34.418648, 36.594681, 40.366131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179333, 37.181866, 39.823410>,  <33.774483, 36.698864, 40.112759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179333, 37.181866, 39.823410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.386593, 36.849194, 39.903240>,  <34.510948, 36.649590, 39.951138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.386593, 36.849194, 39.903240>,  <34.179333, 37.181866, 39.823410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.386593, 36.849194, 39.903240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228906, -0.089978, -0.969281,
		0.824088, 0.547918, 0.143754,
		0.518152, -0.831679, 0.199571,
		34.542038, 36.599689, 39.963112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741093, 37.251965, 39.521679>,  <34.179333, 37.181866, 39.823410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.741093, 37.251965, 39.521679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.740097, 36.855396, 39.573959>,  <34.739502, 36.617455, 39.605328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.740097, 36.855396, 39.573959>,  <34.741093, 37.251965, 39.521679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740097, 36.855396, 39.573959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273702, -0.126385, -0.953475,
		0.961811, 0.033403, 0.271668,
		-0.002486, -0.991419, 0.130701,
		34.739349, 36.557972, 39.613171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391663, 36.975628, 39.297859>,  <34.741093, 37.251965, 39.521679>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391663, 36.975628, 39.297859> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.173409, 36.640873, 39.280396>,  <35.042454, 36.440022, 39.269917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.173409, 36.640873, 39.280396>,  <35.391663, 36.975628, 39.297859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173409, 36.640873, 39.280396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464578, -0.258722, -0.846895,
		0.697458, -0.482378, 0.529966,
		-0.545637, -0.836884, -0.043654,
		35.009716, 36.389809, 39.267300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845707, 36.409016, 39.287666>,  <35.391663, 36.975628, 39.297859>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845707, 36.409016, 39.287666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.490932, 36.307526, 39.133286>,  <35.278069, 36.246632, 39.040657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.490932, 36.307526, 39.133286>,  <35.845707, 36.409016, 39.287666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490932, 36.307526, 39.133286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452344, -0.308193, -0.836900,
		0.093394, -0.916865, 0.388120,
		-0.886940, -0.253725, -0.385955,
		35.224850, 36.231407, 39.017498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.898293, 35.701683, 39.031021>,  <35.845707, 36.409016, 39.287666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.898293, 35.701683, 39.031021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.576054, 35.827934, 38.830467>,  <35.382710, 35.903687, 38.710136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.576054, 35.827934, 38.830467>,  <35.898293, 35.701683, 39.031021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.576054, 35.827934, 38.830467> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376188, -0.381279, -0.844458,
		-0.457701, -0.868911, 0.188423,
		-0.805600, 0.315627, -0.501386,
		35.334373, 35.922623, 38.680050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.577126, 35.137165, 38.649025>,  <35.898293, 35.701683, 39.031021>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.577126, 35.137165, 38.649025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.514080, 35.497810, 38.487900>,  <35.476254, 35.714195, 38.391224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.514080, 35.497810, 38.487900>,  <35.577126, 35.137165, 38.649025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.514080, 35.497810, 38.487900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441657, -0.300478, -0.845371,
		-0.883231, -0.311146, -0.350843,
		-0.157613, 0.901610, -0.402811,
		35.466797, 35.768295, 38.367058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410549, 34.997520, 37.900291>,  <35.577126, 35.137165, 38.649025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410549, 34.997520, 37.900291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.461636, 35.393818, 37.881901>,  <35.492287, 35.631596, 37.870869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.461636, 35.393818, 37.881901>,  <35.410549, 34.997520, 37.900291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461636, 35.393818, 37.881901> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208065, -0.072086, -0.975455,
		-0.969741, 0.115015, -0.215346,
		0.127716, 0.990745, -0.045974,
		35.499950, 35.691040, 37.868107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082321, 35.096115, 37.236759>,  <35.410549, 34.997520, 37.900291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.082321, 35.096115, 37.236759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.283405, 35.424618, 37.344700>,  <35.404057, 35.621719, 37.409462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.283405, 35.424618, 37.344700>,  <35.082321, 35.096115, 37.236759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.283405, 35.424618, 37.344700> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329665, 0.106439, -0.938079,
		-0.799129, 0.560538, -0.217233,
		0.502706, 0.821260, 0.269848,
		35.434216, 35.670998, 37.425655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.849525, 35.642784, 36.821072>,  <35.082321, 35.096115, 37.236759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.849525, 35.642784, 36.821072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.215897, 35.763565, 36.926823>,  <35.435719, 35.836033, 36.990273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.215897, 35.763565, 36.926823>,  <34.849525, 35.642784, 36.821072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215897, 35.763565, 36.926823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311423, -0.119227, -0.942762,
		-0.253148, 0.945838, -0.203238,
		0.915932, 0.301952, 0.264373,
		35.490677, 35.854149, 37.006134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042175, 36.133472, 36.293163>,  <34.849525, 35.642784, 36.821072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042175, 36.133472, 36.293163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.378273, 35.988155, 36.454163>,  <35.579933, 35.900967, 36.550762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.378273, 35.988155, 36.454163>,  <35.042175, 36.133472, 36.293163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378273, 35.988155, 36.454163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320057, -0.266878, -0.909032,
		0.437659, 0.892635, -0.107971,
		0.840249, -0.363289, 0.402495,
		35.630348, 35.879169, 36.574913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646778, 36.296616, 35.855709>,  <35.042175, 36.133472, 36.293163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646778, 36.296616, 35.855709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.734745, 35.969769, 36.068859>,  <35.787525, 35.773659, 36.196751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.734745, 35.969769, 36.068859>,  <35.646778, 36.296616, 35.855709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734745, 35.969769, 36.068859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590003, -0.323607, -0.739713,
		0.776874, 0.477073, 0.410935,
		0.219916, -0.817117, 0.532876,
		35.800720, 35.724632, 36.228722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337521, 36.164513, 35.714520>,  <35.646778, 36.296616, 35.855709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.337521, 36.164513, 35.714520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.213543, 35.811764, 35.856640>,  <36.139156, 35.600117, 35.941914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.213543, 35.811764, 35.856640>,  <36.337521, 36.164513, 35.714520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.213543, 35.811764, 35.856640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579750, -0.471494, -0.664517,
		0.753540, 0.000020, 0.657402,
		-0.309948, -0.881869, 0.355301,
		36.120560, 35.547203, 35.963230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929314, 35.783390, 35.836353>,  <36.337521, 36.164513, 35.714520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.929314, 35.783390, 35.836353> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.623585, 35.529907, 35.788639>,  <36.440147, 35.377819, 35.760010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.623585, 35.529907, 35.788639>,  <36.929314, 35.783390, 35.836353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623585, 35.529907, 35.788639> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483735, -0.441146, -0.755904,
		0.426397, -0.635458, 0.643723,
		-0.764321, -0.633706, -0.119290,
		36.394287, 35.339794, 35.752853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222057, 35.210114, 35.605442>,  <36.929314, 35.783390, 35.836353>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.222057, 35.210114, 35.605442> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.843285, 35.113400, 35.520725>,  <36.616020, 35.055370, 35.469894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.843285, 35.113400, 35.520725>,  <37.222057, 35.210114, 35.605442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843285, 35.113400, 35.520725> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312391, -0.537143, -0.783511,
		0.075676, -0.808096, 0.584170,
		-0.946935, -0.241782, -0.211793,
		36.559204, 35.040863, 35.457188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179455, 34.440052, 35.265362>,  <37.222057, 35.210114, 35.605442>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179455, 34.440052, 35.265362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.848557, 34.648163, 35.180527>,  <36.650017, 34.773029, 35.129627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.848557, 34.648163, 35.180527>,  <37.179455, 34.440052, 35.265362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.848557, 34.648163, 35.180527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008510, -0.365840, -0.930639,
		-0.561782, -0.771668, 0.298211,
		-0.827241, 0.520278, -0.212089,
		36.600384, 34.804245, 35.116901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001305, 34.180523, 35.334637>,  <37.179455, 34.440052, 35.265362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.001305, 34.180523, 35.334637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.389080, 34.246376, 35.407398>,  <38.621746, 34.285889, 35.451054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.389080, 34.246376, 35.407398>,  <38.001305, 34.180523, 35.334637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389080, 34.246376, 35.407398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185381, 0.005881, 0.982649,
		0.160708, -0.986337, 0.036221,
		0.969436, 0.164634, 0.181903,
		38.679913, 34.295765, 35.461967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193668, 33.678391, 35.835335>,  <38.001305, 34.180523, 35.334637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.193668, 33.678391, 35.835335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.469978, 33.966595, 35.859627>,  <38.635765, 34.139519, 35.874203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.469978, 33.966595, 35.859627>,  <38.193668, 33.678391, 35.835335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469978, 33.966595, 35.859627> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099321, 0.011357, 0.994991,
		0.716213, -0.693350, 0.079407,
		0.690778, 0.720512, 0.060730,
		38.677212, 34.182747, 35.877846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701199, 33.494179, 36.307133>,  <38.193668, 33.678391, 35.835335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.701199, 33.494179, 36.307133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.771572, 33.887932, 36.309364>,  <38.813797, 34.124184, 36.310703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.771572, 33.887932, 36.309364>,  <38.701199, 33.494179, 36.307133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.771572, 33.887932, 36.309364> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184638, 0.027430, 0.982424,
		0.966932, -0.173869, 0.186581,
		0.175931, 0.984387, 0.005580,
		38.824352, 34.183247, 36.311039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129116, 33.604431, 36.944809>,  <38.701199, 33.494179, 36.307133>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.129116, 33.604431, 36.944809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.996941, 33.965816, 36.835583>,  <38.917633, 34.182648, 36.770046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.996941, 33.965816, 36.835583>,  <39.129116, 33.604431, 36.944809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.996941, 33.965816, 36.835583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018592, 0.283035, 0.958929,
		0.943643, 0.321947, -0.076729,
		-0.330442, 0.903461, -0.273069,
		38.897808, 34.236855, 36.753662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413628, 33.992146, 37.424812>,  <39.129116, 33.604431, 36.944809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413628, 33.992146, 37.424812> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.128300, 34.232517, 37.280560>,  <38.957100, 34.376740, 37.194008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.128300, 34.232517, 37.280560>,  <39.413628, 33.992146, 37.424812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.128300, 34.232517, 37.280560> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254533, 0.257304, 0.932206,
		0.652979, 0.756759, -0.030586,
		-0.713325, 0.600925, -0.360634,
		38.914303, 34.412796, 37.172371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.556953, 34.641876, 37.677162>,  <39.413628, 33.992146, 37.424812>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.556953, 34.641876, 37.677162> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.163845, 34.620697, 37.606339>,  <38.927979, 34.607990, 37.563843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.163845, 34.620697, 37.606339>,  <39.556953, 34.641876, 37.677162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163845, 34.620697, 37.606339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183471, 0.394415, 0.900431,
		0.022162, 0.917406, -0.397335,
		-0.982775, -0.052944, -0.177058,
		38.869011, 34.604813, 37.553223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.342106, 35.415920, 37.740932>,  <39.556953, 34.641876, 37.677162>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.342106, 35.415920, 37.740932> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.039589, 35.158665, 37.788925>,  <38.858078, 35.004311, 37.817719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.039589, 35.158665, 37.788925>,  <39.342106, 35.415920, 37.740932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.039589, 35.158665, 37.788925> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274861, 0.478767, 0.833807,
		-0.593694, 0.597625, -0.538861,
		-0.756293, -0.643138, 0.119977,
		38.812702, 34.965725, 37.824917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.948441, 35.822632, 38.130177>,  <39.342106, 35.415920, 37.740932>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.948441, 35.822632, 38.130177> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.772167, 35.465595, 38.168278>,  <38.666405, 35.251373, 38.191139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.772167, 35.465595, 38.168278>,  <38.948441, 35.822632, 38.130177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.772167, 35.465595, 38.168278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480169, 0.324053, 0.815124,
		-0.758443, 0.313474, -0.571401,
		-0.440685, -0.892594, 0.095255,
		38.639961, 35.197819, 38.196854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133213, 35.851814, 38.121689>,  <38.948441, 35.822632, 38.130177>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.133213, 35.851814, 38.121689> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.250011, 35.517338, 38.307384>,  <38.320091, 35.316650, 38.418800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.250011, 35.517338, 38.307384>,  <38.133213, 35.851814, 38.121689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.250011, 35.517338, 38.307384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395528, 0.336364, 0.854645,
		-0.870802, -0.433171, -0.232522,
		0.291995, -0.836195, 0.464238,
		38.337608, 35.266479, 38.446655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564861, 35.732632, 38.440742>,  <38.133213, 35.851814, 38.121689>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564861, 35.732632, 38.440742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.852955, 35.514683, 38.612495>,  <38.025810, 35.383915, 38.715549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.852955, 35.514683, 38.612495>,  <37.564861, 35.732632, 38.440742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.852955, 35.514683, 38.612495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207294, 0.421639, 0.882751,
		-0.662033, -0.724799, 0.190731,
		0.720236, -0.544873, 0.429386,
		38.069027, 35.351219, 38.741310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220722, 35.364201, 38.921806>,  <37.564861, 35.732632, 38.440742>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.220722, 35.364201, 38.921806> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.594349, 35.322598, 39.058453>,  <37.818523, 35.297638, 39.140442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.594349, 35.322598, 39.058453>,  <37.220722, 35.364201, 38.921806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.594349, 35.322598, 39.058453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294531, 0.316538, 0.901696,
		-0.201913, -0.942861, 0.265036,
		0.934068, -0.104003, 0.341615,
		37.874569, 35.291397, 39.160938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.173637, 35.009823, 39.569729>,  <37.220722, 35.364201, 38.921806>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.173637, 35.009823, 39.569729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.514915, 35.218224, 39.579670>,  <37.719681, 35.343266, 39.585632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.514915, 35.218224, 39.579670>,  <37.173637, 35.009823, 39.569729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.514915, 35.218224, 39.579670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259875, 0.383301, 0.886310,
		0.452244, -0.762652, 0.462425,
		0.853194, 0.521001, 0.024849,
		37.770874, 35.374523, 39.587124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.598152, 34.796734, 40.184795>,  <37.173637, 35.009823, 39.569729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.598152, 34.796734, 40.184795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.704933, 35.160816, 40.058140>,  <37.769001, 35.379265, 39.982147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.704933, 35.160816, 40.058140>,  <37.598152, 34.796734, 40.184795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.704933, 35.160816, 40.058140> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126756, 0.358870, 0.924741,
		0.955338, -0.206722, 0.211174,
		0.266948, 0.910208, -0.316639,
		37.785019, 35.433880, 39.963146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.211796, 34.998295, 40.653473>,  <37.598152, 34.796734, 40.184795>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.211796, 34.998295, 40.653473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.064842, 35.338516, 40.502964>,  <37.976669, 35.542648, 40.412659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.064842, 35.338516, 40.502964>,  <38.211796, 34.998295, 40.653473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064842, 35.338516, 40.502964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091157, 0.369687, 0.924674,
		0.925590, 0.374013, -0.058284,
		-0.367387, 0.850556, -0.376273,
		37.954628, 35.593681, 40.390083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621819, 35.595230, 40.988800>,  <38.211796, 34.998295, 40.653473>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621819, 35.595230, 40.988800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.282505, 35.732464, 40.827450>,  <38.078918, 35.814804, 40.730640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.282505, 35.732464, 40.827450>,  <38.621819, 35.595230, 40.988800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.282505, 35.732464, 40.827450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219287, 0.465777, 0.857301,
		0.482011, 0.815686, -0.319876,
		-0.848280, 0.343084, -0.403379,
		38.028023, 35.835388, 40.706436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619118, 36.276367, 41.056221>,  <38.621819, 35.595230, 40.988800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.619118, 36.276367, 41.056221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.224148, 36.222950, 41.022381>,  <37.987167, 36.190899, 41.002075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.224148, 36.222950, 41.022381>,  <38.619118, 36.276367, 41.056221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.224148, 36.222950, 41.022381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144669, 0.547594, 0.824143,
		-0.063729, 0.826019, -0.560028,
		-0.987426, -0.133541, -0.084602,
		37.927921, 36.182888, 40.997002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218803, 36.922180, 41.150707>,  <38.619118, 36.276367, 41.056221>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218803, 36.922180, 41.150707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.944176, 36.637775, 41.211483>,  <37.779400, 36.467133, 41.247948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.944176, 36.637775, 41.211483>,  <38.218803, 36.922180, 41.150707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944176, 36.637775, 41.211483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354151, 0.509557, 0.784174,
		-0.634977, 0.484582, -0.601651,
		-0.686572, -0.711008, 0.151942,
		37.738205, 36.424473, 41.257065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593948, 37.312260, 41.228432>,  <38.218803, 36.922180, 41.150707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.593948, 37.312260, 41.228432> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.532093, 36.960865, 41.409248>,  <37.494980, 36.750027, 41.517738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.532093, 36.960865, 41.409248>,  <37.593948, 37.312260, 41.228432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.532093, 36.960865, 41.409248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280824, 0.477756, 0.832398,
		-0.947219, 0.001779, -0.320582,
		-0.154641, -0.878491, 0.452040,
		37.485703, 36.697319, 41.544861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.429123, 37.245705, 41.691139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.691277, 36.968182, 41.810539>,  <36.848568, 36.801666, 41.882179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.691277, 36.968182, 41.810539>,  <36.429123, 37.245705, 41.691139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691277, 36.968182, 41.810539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293995, 0.129705, 0.946965,
		-0.695728, -0.708384, -0.118970,
		0.655384, -0.693807, 0.298501,
		36.887894, 36.760040, 41.900089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050106, 36.764336, 41.973728>,  <36.429123, 37.245705, 41.691139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.050106, 36.764336, 41.973728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.414120, 36.703403, 42.127941>,  <36.632526, 36.666843, 42.220467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.414120, 36.703403, 42.127941>,  <36.050106, 36.764336, 41.973728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.414120, 36.703403, 42.127941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361450, 0.163759, 0.917898,
		-0.202959, -0.974668, 0.093966,
		0.910034, -0.152331, 0.385530,
		36.687130, 36.657703, 42.243599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.998177, 36.300243, 42.563408>,  <36.050106, 36.764336, 41.973728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.998177, 36.300243, 42.563408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.339405, 36.500481, 42.622288>,  <36.544144, 36.620625, 42.657616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.339405, 36.500481, 42.622288>,  <35.998177, 36.300243, 42.563408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.339405, 36.500481, 42.622288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237930, 0.122125, 0.963574,
		0.464385, -0.857023, 0.223289,
		0.853074, 0.500596, 0.147198,
		36.595329, 36.650658, 42.666447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.184364, 35.987946, 43.125214>,  <35.998177, 36.300243, 42.563408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.184364, 35.987946, 43.125214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.358204, 36.347694, 43.106201>,  <36.462509, 36.563541, 43.094795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.358204, 36.347694, 43.106201>,  <36.184364, 35.987946, 43.125214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.358204, 36.347694, 43.106201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359677, 0.221706, 0.906355,
		0.825686, -0.376804, 0.419835,
		0.434598, 0.899369, -0.047532,
		36.488583, 36.617504, 43.091942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588234, 36.030453, 43.714203>,  <36.184364, 35.987946, 43.125214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588234, 36.030453, 43.714203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.551632, 36.410255, 43.594162>,  <36.529671, 36.638138, 43.522137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.551632, 36.410255, 43.594162>,  <36.588234, 36.030453, 43.714203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551632, 36.410255, 43.594162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220577, 0.274550, 0.935932,
		0.971068, 0.151835, 0.184318,
		-0.091502, 0.949510, -0.300098,
		36.524181, 36.695107, 43.504131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770016, 36.344765, 44.308426>,  <36.588234, 36.030453, 43.714203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.770016, 36.344765, 44.308426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.592560, 36.635921, 44.099293>,  <36.486084, 36.810616, 43.973812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.592560, 36.635921, 44.099293>,  <36.770016, 36.344765, 44.308426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592560, 36.635921, 44.099293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304343, 0.426352, 0.851821,
		0.842945, 0.537024, 0.032381,
		-0.443642, 0.727894, -0.522831,
		36.459469, 36.854290, 43.942444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034008, 36.998329, 44.546162>,  <36.770016, 36.344765, 44.308426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034008, 36.998329, 44.546162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.679871, 37.106987, 44.395233>,  <36.467388, 37.172180, 44.304676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.679871, 37.106987, 44.395233>,  <37.034008, 36.998329, 44.546162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679871, 37.106987, 44.395233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255854, 0.392969, 0.883241,
		0.388200, 0.878514, -0.278413,
		-0.885347, 0.271641, -0.377322,
		36.414265, 37.188480, 44.282036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017075, 37.688290, 44.693115>,  <37.034008, 36.998329, 44.546162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017075, 37.688290, 44.693115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.644569, 37.545849, 44.662277>,  <36.421066, 37.460384, 44.643776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.644569, 37.545849, 44.662277>,  <37.017075, 37.688290, 44.693115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644569, 37.545849, 44.662277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257856, 0.494660, 0.829953,
		-0.257413, 0.792782, -0.552481,
		-0.931262, -0.356101, -0.077092,
		36.365192, 37.439018, 44.639149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.340927, 38.162109, 44.587307>,  <37.017075, 37.688290, 44.693115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.340927, 38.162109, 44.587307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.276051, 37.831390, 44.802750>,  <36.237125, 37.632957, 44.932014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.276051, 37.831390, 44.802750>,  <36.340927, 38.162109, 44.587307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.276051, 37.831390, 44.802750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267279, 0.562236, 0.782593,
		-0.949872, -0.017031, -0.312174,
		-0.162187, -0.826801, 0.538604,
		36.227394, 37.583351, 44.964333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.078835, 38.464787, 45.116695>,  <36.340927, 38.162109, 44.587307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.078835, 38.464787, 45.116695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.011593, 38.082420, 45.213001>,  <35.971249, 37.853001, 45.270786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.011593, 38.082420, 45.213001>,  <36.078835, 38.464787, 45.116695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011593, 38.082420, 45.213001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438221, 0.291247, 0.850375,
		-0.883007, 0.037447, -0.467863,
		-0.168108, -0.955915, 0.240763,
		35.961159, 37.795647, 45.285229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.439991, 38.559521, 45.406601>,  <36.078835, 38.464787, 45.116695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.439991, 38.559521, 45.406601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.544651, 38.189316, 45.516121>,  <35.607445, 37.967194, 45.581833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.544651, 38.189316, 45.516121>,  <35.439991, 38.559521, 45.406601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.544651, 38.189316, 45.516121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293569, 0.193925, 0.936061,
		-0.919434, -0.325295, -0.220963,
		0.261646, -0.925514, 0.273798,
		35.623146, 37.911663, 45.598259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.842197, 38.317329, 45.826332>,  <35.439991, 38.559521, 45.406601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.842197, 38.317329, 45.826332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.167610, 38.112892, 45.937294>,  <35.362858, 37.990231, 46.003872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.167610, 38.112892, 45.937294>,  <34.842197, 38.317329, 45.826332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.167610, 38.112892, 45.937294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220405, 0.170445, 0.960401,
		-0.538133, -0.842459, 0.026016,
		0.813532, -0.511089, 0.277404,
		35.411671, 37.959564, 46.020515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534229, 37.847431, 46.304192>,  <34.842197, 38.317329, 45.826332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.534229, 37.847431, 46.304192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.930470, 37.860641, 46.357300>,  <35.168213, 37.868568, 46.389164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.930470, 37.860641, 46.357300>,  <34.534229, 37.847431, 46.304192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930470, 37.860641, 46.357300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133303, 0.014579, 0.990968,
		0.030789, -0.999348, 0.018844,
		0.990597, 0.033023, 0.132768,
		35.227650, 37.870548, 46.397129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686398, 37.227604, 46.656986>,  <34.534229, 37.847431, 46.304192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.686398, 37.227604, 46.656986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.957546, 37.507660, 46.746693>,  <35.120235, 37.675694, 46.800514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.957546, 37.507660, 46.746693>,  <34.686398, 37.227604, 46.656986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957546, 37.507660, 46.746693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245599, -0.071858, 0.966704,
		0.692948, -0.710376, 0.123245,
		0.677868, 0.700145, 0.224262,
		35.160908, 37.717705, 46.813972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.946243, 37.090034, 47.389923>,  <34.686398, 37.227604, 46.656986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.946243, 37.090034, 47.389923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.067017, 37.469154, 47.348919>,  <35.139481, 37.696629, 47.324318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.067017, 37.469154, 47.348919>,  <34.946243, 37.090034, 47.389923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.067017, 37.469154, 47.348919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151169, 0.153765, 0.976476,
		0.941269, -0.279330, 0.189705,
		0.301929, 0.947803, -0.102508,
		35.157597, 37.753494, 47.318165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292274, 37.219017, 47.958328>,  <34.946243, 37.090034, 47.389923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292274, 37.219017, 47.958328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.218372, 37.599911, 47.861080>,  <35.174030, 37.828449, 47.802731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.218372, 37.599911, 47.861080>,  <35.292274, 37.219017, 47.958328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.218372, 37.599911, 47.861080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082640, 0.231454, 0.969329,
		0.979305, 0.199176, 0.035931,
		-0.184751, 0.952238, -0.243124,
		35.162949, 37.885582, 47.788143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727142, 37.698967, 48.435844>,  <35.292274, 37.219017, 47.958328>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727142, 37.698967, 48.435844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.440670, 37.929150, 48.277893>,  <35.268787, 38.067257, 48.183121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.440670, 37.929150, 48.277893>,  <35.727142, 37.698967, 48.435844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.440670, 37.929150, 48.277893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282847, 0.277931, 0.918015,
		0.638025, 0.769160, -0.036285,
		-0.716185, 0.575454, -0.394882,
		35.225815, 38.101788, 48.159428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799541, 38.245510, 48.756683>,  <35.727142, 37.698967, 48.435844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799541, 38.245510, 48.756683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.434078, 38.257454, 48.594528>,  <35.214802, 38.264622, 48.497234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.434078, 38.257454, 48.594528>,  <35.799541, 38.245510, 48.756683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434078, 38.257454, 48.594528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395720, 0.162681, 0.903848,
		0.092938, 0.986227, -0.136818,
		-0.913657, 0.029860, -0.405389,
		35.159981, 38.266411, 48.472912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443439, 38.896202, 49.085209>,  <35.799541, 38.245510, 48.756683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443439, 38.896202, 49.085209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.165260, 38.641380, 48.952232>,  <34.998352, 38.488487, 48.872444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.165260, 38.641380, 48.952232>,  <35.443439, 38.896202, 49.085209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165260, 38.641380, 48.952232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293047, -0.170988, 0.940684,
		-0.656111, 0.751615, -0.067774,
		-0.695443, -0.637054, -0.332446,
		34.956627, 38.450264, 48.852497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892395, 38.978977, 49.575806>,  <35.443439, 38.896202, 49.085209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.892395, 38.978977, 49.575806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.771721, 38.635761, 49.409546>,  <34.699318, 38.429832, 49.309792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.771721, 38.635761, 49.409546>,  <34.892395, 38.978977, 49.575806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.771721, 38.635761, 49.409546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486957, -0.236133, 0.840901,
		-0.819671, 0.456086, -0.346590,
		-0.301682, -0.858037, -0.415645,
		34.681217, 38.378349, 49.284851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.089531, 38.896484, 49.659927>,  <34.892395, 38.978977, 49.575806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.089531, 38.896484, 49.659927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.228024, 38.529438, 49.581852>,  <34.311119, 38.309208, 49.535007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.228024, 38.529438, 49.581852>,  <34.089531, 38.896484, 49.659927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228024, 38.529438, 49.581852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410910, -0.335367, 0.847751,
		-0.843371, -0.213317, -0.493174,
		0.346235, -0.917619, -0.195185,
		34.331894, 38.254154, 49.523296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.566364, 38.396030, 49.773876>,  <34.089531, 38.896484, 49.659927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.566364, 38.396030, 49.773876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.925732, 38.230263, 49.831978>,  <34.141354, 38.130802, 49.866840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.925732, 38.230263, 49.831978>,  <33.566364, 38.396030, 49.773876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925732, 38.230263, 49.831978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224621, -0.149444, 0.962919,
		-0.377344, -0.897732, -0.227350,
		0.898419, -0.414419, 0.145258,
		34.195259, 38.105938, 49.875557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.370731, 37.863121, 50.189728>,  <33.566364, 38.396030, 49.773876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.370731, 37.863121, 50.189728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.763191, 37.924831, 50.236279>,  <33.998669, 37.961857, 50.264210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.763191, 37.924831, 50.236279>,  <33.370731, 37.863121, 50.189728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.763191, 37.924831, 50.236279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051124, -0.373518, 0.926213,
		0.186361, -0.914704, -0.358590,
		0.981151, 0.154277, 0.116373,
		34.057537, 37.971115, 50.271191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.763962, 37.666473, 50.496918>,  <33.370731, 37.863121, 50.189728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.763962, 37.666473, 50.496918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.437199, 37.489716, 50.645184>,  <32.241142, 37.383663, 50.734142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.437199, 37.489716, 50.645184>,  <32.763962, 37.666473, 50.496918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.437199, 37.489716, 50.645184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123252, -0.494073, -0.860640,
		0.563445, -0.748749, 0.349148,
		-0.816908, -0.441890, 0.370667,
		32.192127, 37.357147, 50.756382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.837395, 36.878296, 50.622204>,  <32.763962, 37.666473, 50.496918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.837395, 36.878296, 50.622204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.469143, 36.994602, 50.517982>,  <32.248192, 37.064384, 50.455448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.469143, 36.994602, 50.517982>,  <32.837395, 36.878296, 50.622204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.469143, 36.994602, 50.517982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050303, -0.573462, -0.817686,
		-0.387171, -0.765897, 0.513323,
		-0.920634, 0.290763, -0.260555,
		32.192951, 37.081833, 50.439816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.528210, 36.310246, 50.347359>,  <32.837395, 36.878296, 50.622204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.528210, 36.310246, 50.347359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.330738, 36.632843, 50.217220>,  <32.212257, 36.826401, 50.139137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.330738, 36.632843, 50.217220>,  <32.528210, 36.310246, 50.347359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.330738, 36.632843, 50.217220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055458, -0.344154, -0.937274,
		-0.867876, -0.480753, 0.125174,
		-0.493676, 0.806496, -0.325345,
		32.182636, 36.874790, 50.119617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.205246, 36.090088, 49.659225>,  <32.528210, 36.310246, 50.347359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.205246, 36.090088, 49.659225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.173706, 36.488556, 49.674305>,  <32.154781, 36.727638, 49.683353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.173706, 36.488556, 49.674305>,  <32.205246, 36.090088, 49.659225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.173706, 36.488556, 49.674305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171599, 0.050812, -0.983856,
		-0.982007, -0.071103, -0.174948,
		-0.078845, 0.996174, 0.037697,
		32.150051, 36.787407, 49.685616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.707188, 36.271973, 49.244747>,  <32.205246, 36.090088, 49.659225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.707188, 36.271973, 49.244747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.950842, 36.587288, 49.279522>,  <32.097034, 36.776478, 49.300388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.950842, 36.587288, 49.279522>,  <31.707188, 36.271973, 49.244747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.950842, 36.587288, 49.279522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212156, -0.056343, -0.975610,
		-0.764161, 0.612725, -0.201560,
		0.609137, 0.788285, 0.086938,
		32.133583, 36.823772, 49.305603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.656019, 36.499653, 48.545498>,  <31.707188, 36.271973, 49.244747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.656019, 36.499653, 48.545498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.939493, 36.723354, 48.717548>,  <32.109577, 36.857574, 48.820778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.939493, 36.723354, 48.717548>,  <31.656019, 36.499653, 48.545498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.939493, 36.723354, 48.717548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323578, 0.284110, -0.902540,
		-0.626950, 0.778793, 0.020382,
		0.708683, 0.559252, 0.430123,
		32.152100, 36.891129, 48.846584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.635492, 37.300503, 48.419846>,  <31.656019, 36.499653, 48.545498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.635492, 37.300503, 48.419846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.008423, 37.181477, 48.502041>,  <32.232182, 37.110062, 48.551357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.008423, 37.181477, 48.502041>,  <31.635492, 37.300503, 48.419846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.008423, 37.181477, 48.502041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286430, 0.260793, -0.921925,
		0.220740, 0.918392, 0.328375,
		0.932326, -0.297562, 0.205487,
		32.288120, 37.092209, 48.563686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.078724, 37.772488, 48.038887>,  <31.635492, 37.300503, 48.419846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.078724, 37.772488, 48.038887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.317776, 37.455521, 48.087738>,  <32.461208, 37.265339, 48.117050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.317776, 37.455521, 48.087738>,  <32.078724, 37.772488, 48.038887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.317776, 37.455521, 48.087738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490282, 0.240661, -0.837679,
		0.634400, 0.560497, 0.532334,
		0.597629, -0.792417, 0.122126,
		32.497063, 37.217796, 48.124374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.648624, 37.927734, 47.672668>,  <32.078724, 37.772488, 48.038887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.648624, 37.927734, 47.672668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.716091, 37.537655, 47.729996>,  <32.756573, 37.303608, 47.764393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.716091, 37.537655, 47.729996>,  <32.648624, 37.927734, 47.672668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716091, 37.537655, 47.729996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590803, -0.016360, -0.806650,
		0.788988, 0.220731, 0.573390,
		0.168672, -0.975198, 0.143317,
		32.766693, 37.245094, 47.772991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.402794, 37.849586, 47.460865>,  <32.648624, 37.927734, 47.672668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.402794, 37.849586, 47.460865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.209812, 37.500969, 47.425884>,  <33.094025, 37.291798, 47.404896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.209812, 37.500969, 47.425884>,  <33.402794, 37.849586, 47.460865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.209812, 37.500969, 47.425884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393120, -0.126223, -0.910782,
		0.782749, -0.473791, 0.403518,
		-0.482454, -0.871545, -0.087456,
		33.065075, 37.239506, 47.399647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951607, 37.300220, 47.429291>,  <33.402794, 37.849586, 47.460865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951607, 37.300220, 47.429291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.609261, 37.166405, 47.271515>,  <33.403854, 37.086117, 47.176849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.609261, 37.166405, 47.271515>,  <33.951607, 37.300220, 47.429291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.609261, 37.166405, 47.271515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456299, -0.129342, -0.880376,
		0.243499, -0.933465, 0.263347,
		-0.855862, -0.334536, -0.394444,
		33.352501, 37.066044, 47.153183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.110847, 36.572548, 47.108265>,  <33.951607, 37.300220, 47.429291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.110847, 36.572548, 47.108265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.771385, 36.722561, 46.959061>,  <33.567707, 36.812569, 46.869537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.771385, 36.722561, 46.959061>,  <34.110847, 36.572548, 47.108265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.771385, 36.722561, 46.959061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346203, -0.139334, -0.927755,
		-0.399909, -0.916481, -0.011591,
		-0.848655, 0.375031, -0.373009,
		33.516788, 36.835072, 46.847157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008179, 36.137871, 46.477360>,  <34.110847, 36.572548, 47.108265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008179, 36.137871, 46.477360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.731270, 36.418427, 46.409466>,  <33.565125, 36.586758, 46.368729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.731270, 36.418427, 46.409466>,  <34.008179, 36.137871, 46.477360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731270, 36.418427, 46.409466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040464, -0.197117, -0.979544,
		-0.720497, -0.684983, 0.108079,
		-0.692276, 0.701386, -0.169739,
		33.523586, 36.628841, 46.358543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626492, 35.964394, 45.867500>,  <34.008179, 36.137871, 46.477360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.626492, 35.964394, 45.867500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.548767, 36.355801, 45.895039>,  <33.502132, 36.590645, 45.911560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.548767, 36.355801, 45.895039>,  <33.626492, 35.964394, 45.867500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548767, 36.355801, 45.895039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035141, 0.077081, -0.996405,
		-0.980311, -0.191189, -0.049363,
		-0.194306, 0.978522, 0.068844,
		33.490475, 36.649357, 45.915691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.041336, 36.110413, 45.277195>,  <33.626492, 35.964394, 45.867500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.041336, 36.110413, 45.277195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.221462, 36.454098, 45.374336>,  <33.329536, 36.660309, 45.432621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.221462, 36.454098, 45.374336>,  <33.041336, 36.110413, 45.277195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221462, 36.454098, 45.374336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120896, 0.210814, -0.970022,
		-0.884649, 0.466172, -0.008943,
		0.450311, 0.859210, 0.242854,
		33.356556, 36.711861, 45.447193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.784775, 36.395287, 44.648354>,  <33.041336, 36.110413, 45.277195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.784775, 36.395287, 44.648354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.095665, 36.602966, 44.790543>,  <33.282200, 36.727573, 44.875858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.095665, 36.602966, 44.790543>,  <32.784775, 36.395287, 44.648354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.095665, 36.602966, 44.790543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130931, 0.419131, -0.898435,
		-0.615454, 0.744826, 0.257779,
		0.777221, 0.519195, 0.355477,
		33.328831, 36.758724, 44.897186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.602455, 37.118992, 44.546196>,  <32.784775, 36.395287, 44.648354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.602455, 37.118992, 44.546196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.999660, 37.082161, 44.575741>,  <33.237984, 37.060062, 44.593468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.999660, 37.082161, 44.575741>,  <32.602455, 37.118992, 44.546196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.999660, 37.082161, 44.575741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094161, 0.240501, -0.966071,
		0.071186, 0.966272, 0.247489,
		0.993009, -0.092075, 0.073865,
		33.297562, 37.054539, 44.597900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.876278, 37.701843, 44.256355>,  <32.602455, 37.118992, 44.546196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.876278, 37.701843, 44.256355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.149982, 37.410694, 44.238503>,  <33.314205, 37.236004, 44.227791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.149982, 37.410694, 44.238503>,  <32.876278, 37.701843, 44.256355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.149982, 37.410694, 44.238503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182618, 0.230289, -0.955833,
		0.706005, 0.645884, 0.290500,
		0.684257, -0.727874, -0.044635,
		33.355259, 37.192333, 44.225113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.429852, 38.095802, 43.779400>,  <32.876278, 37.701843, 44.256355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.429852, 38.095802, 43.779400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.530697, 37.710651, 43.818005>,  <33.591202, 37.479561, 43.841167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.530697, 37.710651, 43.818005>,  <33.429852, 38.095802, 43.779400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.530697, 37.710651, 43.818005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422335, 0.019742, -0.906225,
		0.870675, 0.269229, 0.411633,
		0.252109, -0.962874, 0.096516,
		33.606331, 37.421791, 43.846958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172874, 38.094734, 43.561268>,  <33.429852, 38.095802, 43.779400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172874, 38.094734, 43.561268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.028767, 37.722313, 43.538124>,  <33.942303, 37.498859, 43.524239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.028767, 37.722313, 43.538124>,  <34.172874, 38.094734, 43.561268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028767, 37.722313, 43.538124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537976, -0.156699, -0.828268,
		0.762093, -0.329529, 0.557338,
		-0.360273, -0.931051, -0.057859,
		33.920685, 37.442997, 43.520767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744492, 37.774830, 43.293358>,  <34.172874, 38.094734, 43.561268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744492, 37.774830, 43.293358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.453373, 37.512756, 43.212326>,  <34.278702, 37.355511, 43.163708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.453373, 37.512756, 43.212326>,  <34.744492, 37.774830, 43.293358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453373, 37.512756, 43.212326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392355, -0.155537, -0.906568,
		0.562464, -0.739282, 0.370265,
		-0.727800, -0.655187, -0.202577,
		34.235035, 37.316200, 43.151554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.777130, 37.782814, 26.256542> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.524364, 37.739391, 26.563501>,  <39.372707, 37.713337, 26.747677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.524364, 37.739391, 26.563501>,  <39.777130, 37.782814, 26.256542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.524364, 37.739391, 26.563501> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763389, -0.258227, 0.592079,
		0.133886, 0.959965, 0.246051,
		-0.631912, -0.108561, 0.767400,
		39.334789, 37.706821, 26.793722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.084309, 38.105152, 26.767271>,  <39.777130, 37.782814, 26.256542>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.084309, 38.105152, 26.767271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.829105, 37.858925, 26.952322>,  <39.675983, 37.711189, 27.063353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.829105, 37.858925, 26.952322>,  <40.084309, 38.105152, 26.767271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829105, 37.858925, 26.952322> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748494, -0.354667, 0.560329,
		-0.180840, 0.703768, 0.687028,
		-0.638008, -0.615566, 0.462628,
		39.637703, 37.674255, 27.091110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.309200, 38.106979, 27.557312>,  <40.084309, 38.105152, 26.767271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.309200, 38.106979, 27.557312> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.086506, 37.776150, 27.526320>,  <39.952888, 37.577652, 27.507723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.086506, 37.776150, 27.526320>,  <40.309200, 38.106979, 27.557312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.086506, 37.776150, 27.526320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550005, -0.436909, 0.711762,
		-0.622530, 0.353646, 0.698134,
		-0.556733, -0.827070, -0.077482,
		39.919487, 37.528030, 27.503075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.069168, 37.876537, 28.224049>,  <40.309200, 38.106979, 27.557312>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.069168, 37.876537, 28.224049> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.062897, 37.536804, 28.012997>,  <40.059132, 37.332966, 27.886366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.062897, 37.536804, 28.012997>,  <40.069168, 37.876537, 28.224049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.062897, 37.536804, 28.012997> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516362, -0.458762, 0.723123,
		-0.856227, -0.261109, 0.445755,
		-0.015682, -0.849329, -0.527631,
		40.058193, 37.282005, 27.854708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798637, 37.258785, 28.674654>,  <40.069168, 37.876537, 28.224049>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798637, 37.258785, 28.674654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.990871, 37.068153, 28.380196>,  <40.106213, 36.953773, 28.203522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.990871, 37.068153, 28.380196>,  <39.798637, 37.258785, 28.674654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.990871, 37.068153, 28.380196> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444169, -0.591516, 0.672921,
		-0.756143, -0.650368, -0.072591,
		0.480585, -0.476582, -0.736144,
		40.135048, 36.925179, 28.159353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.696621, 36.537189, 28.883427>,  <39.798637, 37.258785, 28.674654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.696621, 36.537189, 28.883427> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.985592, 36.521378, 28.607300>,  <40.158974, 36.511890, 28.441624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.985592, 36.521378, 28.607300>,  <39.696621, 36.537189, 28.883427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.985592, 36.521378, 28.607300> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507734, -0.647386, 0.568416,
		-0.469371, -0.761136, -0.447619,
		0.722424, -0.039527, -0.690319,
		40.202320, 36.509521, 28.400204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754593, 35.859413, 28.709633>,  <39.696621, 36.537189, 28.883427>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.754593, 35.859413, 28.709633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.097363, 36.054443, 28.642752>,  <40.303024, 36.171459, 28.602623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.097363, 36.054443, 28.642752>,  <39.754593, 35.859413, 28.709633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.097363, 36.054443, 28.642752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475879, -0.623730, 0.620081,
		0.198044, -0.610930, -0.766513,
		0.856923, 0.487571, -0.167203,
		40.354439, 36.200714, 28.592590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.288235, 35.201988, 28.529406>,  <39.754593, 35.859413, 28.709633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.288235, 35.201988, 28.529406> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.489563, 35.536266, 28.617296>,  <40.610359, 35.736835, 28.670031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.489563, 35.536266, 28.617296>,  <40.288235, 35.201988, 28.529406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.489563, 35.536266, 28.617296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628045, -0.528445, 0.571232,
		0.593492, -0.149511, -0.790831,
		0.503316, 0.835699, 0.219728,
		40.640556, 35.786976, 28.683214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.877010, 35.042259, 28.346848>,  <40.288235, 35.201988, 28.529406>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.877010, 35.042259, 28.346848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.933750, 35.327023, 28.621967>,  <40.967793, 35.497879, 28.787039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.933750, 35.327023, 28.621967>,  <40.877010, 35.042259, 28.346848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.933750, 35.327023, 28.621967> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702018, -0.562212, 0.437136,
		0.697889, 0.420843, -0.579518,
		0.141846, 0.711905, 0.687801,
		40.976303, 35.540596, 28.828308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.644711, 35.004868, 28.603971>,  <40.877010, 35.042259, 28.346848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.644711, 35.004868, 28.603971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.463295, 35.214996, 28.891956>,  <41.354446, 35.341072, 29.064747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.463295, 35.214996, 28.891956>,  <41.644711, 35.004868, 28.603971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.463295, 35.214996, 28.891956> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579757, -0.439643, 0.686000,
		0.676896, 0.728527, -0.105165,
		-0.453534, 0.525321, 0.719962,
		41.327236, 35.372593, 29.107944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.174664, 35.187744, 28.952011>,  <41.644711, 35.004868, 28.603971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.174664, 35.187744, 28.952011> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.871098, 35.243862, 29.206371>,  <41.688957, 35.277534, 29.358988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.871098, 35.243862, 29.206371>,  <42.174664, 35.187744, 28.952011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.871098, 35.243862, 29.206371> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550371, -0.383752, 0.741503,
		0.348058, 0.912717, 0.214019,
		-0.758912, 0.140296, 0.635901,
		41.643425, 35.285950, 29.397142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.522247, 35.531147, 29.471607>,  <42.174664, 35.187744, 28.952011>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.522247, 35.531147, 29.471607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.183697, 35.395733, 29.636068>,  <41.980568, 35.314484, 29.734745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.183697, 35.395733, 29.636068>,  <42.522247, 35.531147, 29.471607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.183697, 35.395733, 29.636068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504176, -0.260495, 0.823376,
		-0.171642, 0.904175, 0.391159,
		-0.846372, -0.338540, 0.411152,
		41.929787, 35.294170, 29.759415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.297596, 35.929291, 30.099670>,  <42.522247, 35.531147, 29.471607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.297596, 35.929291, 30.099670> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.141312, 35.561367, 30.114111>,  <42.047543, 35.340614, 30.122776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.141312, 35.561367, 30.114111>,  <42.297596, 35.929291, 30.099670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.141312, 35.561367, 30.114111> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509828, -0.183573, 0.840462,
		-0.766435, 0.346781, 0.540666,
		-0.390708, -0.919806, 0.036101,
		42.024097, 35.285423, 30.124941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.136402, 35.786636, 30.838648>,  <42.297596, 35.929291, 30.099670>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.136402, 35.786636, 30.838648> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.129402, 35.426556, 30.664600>,  <42.125202, 35.210506, 30.560171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.129402, 35.426556, 30.664600>,  <42.136402, 35.786636, 30.838648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.129402, 35.426556, 30.664600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387380, -0.407299, 0.827070,
		-0.921754, -0.154087, 0.355846,
		-0.017495, -0.900203, -0.435120,
		42.124153, 35.156494, 30.534065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.839737, 35.315441, 31.415390>,  <42.136402, 35.786636, 30.838648>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.839737, 35.315441, 31.415390> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.018795, 35.084999, 31.141830>,  <42.126228, 34.946735, 30.977694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.018795, 35.084999, 31.141830>,  <41.839737, 35.315441, 31.415390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.018795, 35.084999, 31.141830> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369761, -0.577105, 0.728167,
		-0.814180, -0.578841, -0.045319,
		0.447646, -0.576102, -0.683900,
		42.153088, 34.912167, 30.936661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.746674, 34.587578, 31.686201>,  <41.839737, 35.315441, 31.415390>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.746674, 34.587578, 31.686201> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.038250, 34.559921, 31.413773>,  <42.213196, 34.543327, 31.250315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.038250, 34.559921, 31.413773>,  <41.746674, 34.587578, 31.686201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.038250, 34.559921, 31.413773> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512305, -0.604806, 0.609716,
		-0.454074, -0.793365, -0.405447,
		0.728944, -0.069144, -0.681072,
		42.256931, 34.539177, 31.209452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.877102, 33.869270, 31.634806>,  <41.746674, 34.587578, 31.686201>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.877102, 33.869270, 31.634806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.206375, 34.047588, 31.494156>,  <42.403938, 34.154579, 31.409765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.206375, 34.047588, 31.494156>,  <41.877102, 33.869270, 31.634806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.206375, 34.047588, 31.494156> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567007, -0.613220, 0.549968,
		0.029547, -0.652098, -0.757559,
		0.823183, 0.445791, -0.351625,
		42.453331, 34.181324, 31.388668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.443550, 33.256596, 31.467506>,  <41.877102, 33.869270, 31.634806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.443550, 33.256596, 31.467506> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.653889, 33.594189, 31.509811>,  <42.780090, 33.796745, 31.535194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.653889, 33.594189, 31.509811>,  <42.443550, 33.256596, 31.467506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.653889, 33.594189, 31.509811> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720113, -0.507908, 0.472723,
		0.452687, -0.172416, -0.874841,
		0.525844, 0.843980, 0.105764,
		42.811642, 33.847382, 31.541540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.145802, 33.075233, 31.297026>,  <42.443550, 33.256596, 31.467506>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.145802, 33.075233, 31.297026> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.169781, 33.412464, 31.510801>,  <43.184170, 33.614803, 31.639067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.169781, 33.412464, 31.510801>,  <43.145802, 33.075233, 31.297026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.169781, 33.412464, 31.510801> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714713, -0.410016, 0.566633,
		0.696844, 0.348001, -0.627139,
		0.059948, 0.843079, 0.534438,
		43.187767, 33.665386, 31.671133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.902828, 33.252747, 31.474016>,  <43.145802, 33.075233, 31.297026>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.902828, 33.252747, 31.474016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.678066, 33.428104, 31.754608>,  <43.543209, 33.533318, 31.922964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.678066, 33.428104, 31.754608>,  <43.902828, 33.252747, 31.474016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.678066, 33.428104, 31.754608> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577625, -0.399080, 0.712099,
		0.592125, 0.805324, -0.028982,
		-0.561905, 0.438392, 0.701481,
		43.509495, 33.559624, 31.965052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.422943, 33.344627, 31.952435>,  <43.902828, 33.252747, 31.474016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.422943, 33.344627, 31.952435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.061039, 33.397842, 32.114277>,  <43.843895, 33.429771, 32.211384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.061039, 33.397842, 32.114277>,  <44.422943, 33.344627, 31.952435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.061039, 33.397842, 32.114277> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244710, -0.615140, 0.749480,
		0.348600, 0.777112, 0.523999,
		-0.904762, 0.133041, 0.404605,
		43.789612, 33.437756, 32.235657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.448086, 33.645851, 32.551544>,  <44.422943, 33.344627, 31.952435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.448086, 33.645851, 32.551544> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.133385, 33.399368, 32.537056>,  <43.944565, 33.251480, 32.528362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.133385, 33.399368, 32.537056>,  <44.448086, 33.645851, 32.551544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.133385, 33.399368, 32.537056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426386, -0.584949, 0.689949,
		-0.446341, 0.527372, 0.722951,
		-0.786750, -0.616209, -0.036223,
		43.897362, 33.214504, 32.526188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.215328, 33.711090, 32.617676>,  <44.448086, 33.645851, 32.551544>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.215328, 33.711090, 32.617676> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.542744, 33.870880, 32.782799>,  <45.739193, 33.966755, 32.881874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.542744, 33.870880, 32.782799>,  <45.215328, 33.711090, 32.617676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.542744, 33.870880, 32.782799> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567567, 0.451506, 0.688484,
		0.088645, -0.797849, 0.596304,
		0.818541, 0.399474, 0.412809,
		45.788307, 33.990723, 32.906643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.124393, 33.497101, 33.277370>,  <45.215328, 33.711090, 32.617676>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.124393, 33.497101, 33.277370> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.376698, 33.807228, 33.264545>,  <45.528080, 33.993305, 33.256851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.376698, 33.807228, 33.264545>,  <45.124393, 33.497101, 33.277370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.376698, 33.807228, 33.264545> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504941, 0.441466, 0.741716,
		0.589217, -0.451656, 0.669948,
		0.630760, 0.775316, -0.032060,
		45.565926, 34.039822, 33.254929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.234921, 33.672535, 33.959187>,  <45.124393, 33.497101, 33.277370>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.234921, 33.672535, 33.959187> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.349174, 33.991253, 33.746197>,  <45.417728, 34.182484, 33.618401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.349174, 33.991253, 33.746197>,  <45.234921, 33.672535, 33.959187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.349174, 33.991253, 33.746197> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516445, 0.596024, 0.614850,
		0.807277, 0.099372, 0.581746,
		0.285636, 0.796794, -0.532477,
		45.434864, 34.230289, 33.586452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.967255, 34.176476, 34.325516>,  <45.234921, 33.672535, 33.959187>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.967255, 34.176476, 34.325516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.062859, 34.408508, 34.014034>,  <45.120220, 34.547729, 33.827145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.062859, 34.408508, 34.014034>,  <44.967255, 34.176476, 34.325516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.062859, 34.408508, 34.014034> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812204, 0.558937, 0.167075,
		0.532163, 0.592534, 0.604737,
		0.239012, 0.580080, -0.778704,
		45.134563, 34.582531, 33.780422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.881462, 34.887836, 34.527214>,  <44.967255, 34.176476, 34.325516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.881462, 34.887836, 34.527214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.880344, 34.909512, 34.127804>,  <44.879673, 34.922516, 33.888157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.880344, 34.909512, 34.127804>,  <44.881462, 34.887836, 34.527214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.880344, 34.909512, 34.127804> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731752, 0.680456, 0.038974,
		0.681566, 0.730782, 0.037757,
		-0.002790, 0.054193, -0.998527,
		44.879509, 34.925770, 33.828247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.871956, 35.641678, 34.362247>,  <44.881462, 34.887836, 34.527214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.871956, 35.641678, 34.362247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.736912, 35.436916, 34.046280>,  <44.655884, 35.314060, 33.856701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.736912, 35.436916, 34.046280>,  <44.871956, 35.641678, 34.362247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.736912, 35.436916, 34.046280> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758366, 0.645032, -0.093884,
		0.557583, 0.567352, -0.605981,
		-0.337612, -0.511903, -0.789920,
		44.635628, 35.283344, 33.809303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.766251, 36.133335, 33.890011>,  <44.871956, 35.641678, 34.362247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.766251, 36.133335, 33.890011> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.538544, 35.817142, 33.799618>,  <44.401920, 35.627426, 33.745380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.538544, 35.817142, 33.799618>,  <44.766251, 36.133335, 33.890011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.538544, 35.817142, 33.799618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751595, 0.611777, -0.246647,
		0.333223, 0.029442, -0.942388,
		-0.569269, -0.790482, -0.225986,
		44.367764, 35.579998, 33.731823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.509102, 36.303215, 33.293262>,  <44.766251, 36.133335, 33.890011>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.509102, 36.303215, 33.293262> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.247257, 36.028175, 33.418919>,  <44.090149, 35.863152, 33.494312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.247257, 36.028175, 33.418919>,  <44.509102, 36.303215, 33.293262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.247257, 36.028175, 33.418919> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734097, 0.478962, -0.481350,
		0.180516, -0.545708, -0.818301,
		-0.654612, -0.687603, 0.314142,
		44.050873, 35.821896, 33.513161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.081688, 36.063736, 32.705948>,  <44.509102, 36.303215, 33.293262>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.081688, 36.063736, 32.705948> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.853943, 35.994923, 33.027500>,  <43.717297, 35.953636, 33.220432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.853943, 35.994923, 33.027500>,  <44.081688, 36.063736, 32.705948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.853943, 35.994923, 33.027500> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752048, 0.503944, -0.424810,
		-0.332033, -0.846431, -0.416303,
		-0.569366, -0.172029, 0.803883,
		43.683132, 35.943314, 33.268665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.393555, 35.828560, 32.384892>,  <44.081688, 36.063736, 32.705948>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.393555, 35.828560, 32.384892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.284035, 35.899014, 32.763100>,  <43.218323, 35.941288, 32.990025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.284035, 35.899014, 32.763100>,  <43.393555, 35.828560, 32.384892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.284035, 35.899014, 32.763100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833688, 0.446739, -0.324635,
		-0.479581, -0.877154, 0.024526,
		-0.273798, 0.176136, 0.945521,
		43.201897, 35.951855, 33.046757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.777668, 35.554810, 32.421585>,  <43.393555, 35.828560, 32.384892>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.777668, 35.554810, 32.421585> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.809856, 35.836445, 32.703800>,  <42.829170, 36.005428, 32.873127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.809856, 35.836445, 32.703800>,  <42.777668, 35.554810, 32.421585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.809856, 35.836445, 32.703800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761885, 0.499846, -0.411930,
		-0.642695, -0.504389, 0.576658,
		0.080467, 0.704092, 0.705535,
		42.833996, 36.047672, 32.915462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.138382, 35.649025, 32.812443>,  <42.777668, 35.554810, 32.421585>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.138382, 35.649025, 32.812443> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.317440, 35.998631, 32.888031>,  <42.424873, 36.208393, 32.933384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.317440, 35.998631, 32.888031>,  <42.138382, 35.649025, 32.812443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.317440, 35.998631, 32.888031> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825725, 0.485132, -0.287794,
		-0.343211, -0.027206, 0.938864,
		0.447643, 0.874018, 0.188967,
		42.451733, 36.260838, 32.944721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.736198, 36.112900, 33.237122>,  <42.138382, 35.649025, 32.812443>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.736198, 36.112900, 33.237122> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.988354, 36.358883, 33.047619>,  <42.139645, 36.506474, 32.933918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.988354, 36.358883, 33.047619>,  <41.736198, 36.112900, 33.237122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.988354, 36.358883, 33.047619> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776268, 0.495570, -0.389639,
		-0.004832, 0.613383, 0.789771,
		0.630384, 0.614957, -0.473755,
		42.177467, 36.543369, 32.905491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.353813, 36.785210, 33.256874>,  <41.736198, 36.112900, 33.237122>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.353813, 36.785210, 33.256874> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.638210, 36.863201, 32.986622>,  <41.808849, 36.909996, 32.824471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.638210, 36.863201, 32.986622>,  <41.353813, 36.785210, 33.256874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.638210, 36.863201, 32.986622> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672138, 0.470833, -0.571442,
		0.206690, 0.860407, 0.465810,
		0.710992, 0.194977, -0.675629,
		41.851509, 36.921696, 32.783932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.370052, 37.493683, 33.161961>,  <41.353813, 36.785210, 33.256874>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.370052, 37.493683, 33.161961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.535072, 37.318352, 32.842545>,  <41.634087, 37.213154, 32.650894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.535072, 37.318352, 32.842545>,  <41.370052, 37.493683, 33.161961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.535072, 37.318352, 32.842545> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578165, 0.551421, -0.601382,
		0.703936, 0.709789, -0.025938,
		0.412552, -0.438331, -0.798540,
		41.658836, 37.186852, 32.602982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.423424, 38.100494, 32.672146>,  <41.370052, 37.493683, 33.161961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.423424, 38.100494, 32.672146> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.454884, 37.763527, 32.458923>,  <41.473759, 37.561348, 32.330990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.454884, 37.763527, 32.458923>,  <41.423424, 38.100494, 32.672146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.454884, 37.763527, 32.458923> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426258, 0.454945, -0.781875,
		0.901176, 0.288716, -0.323304,
		0.078654, -0.842418, -0.533053,
		41.478481, 37.510803, 32.299007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.569176, 38.358727, 32.006390>,  <41.423424, 38.100494, 32.672146>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.569176, 38.358727, 32.006390> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.421810, 37.990616, 31.953695>,  <41.333389, 37.769749, 31.922079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.421810, 37.990616, 31.953695>,  <41.569176, 38.358727, 32.006390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.421810, 37.990616, 31.953695> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394159, 0.282961, -0.874398,
		0.841967, -0.270218, -0.466984,
		-0.368416, -0.920280, -0.131735,
		41.311287, 37.714531, 31.914175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.822517, 38.155193, 31.372511>,  <41.569176, 38.358727, 32.006390>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.822517, 38.155193, 31.372511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.477909, 37.972324, 31.460855>,  <41.271145, 37.862602, 31.513863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.477909, 37.972324, 31.460855>,  <41.822517, 38.155193, 31.372511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.477909, 37.972324, 31.460855> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381178, 0.295041, -0.876159,
		0.335392, -0.839014, -0.428447,
		-0.861519, -0.457172, 0.220860,
		41.219452, 37.835175, 31.527113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.609371, 37.961639, 30.755821>,  <41.822517, 38.155193, 31.372511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.609371, 37.961639, 30.755821> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.265755, 37.913582, 30.954863>,  <41.059586, 37.884747, 31.074287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.265755, 37.913582, 30.954863>,  <41.609371, 37.961639, 30.755821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.265755, 37.913582, 30.954863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509375, 0.297059, -0.807647,
		-0.050784, -0.947271, -0.316385,
		-0.859045, -0.120143, 0.497602,
		41.008041, 37.877541, 31.104143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.006245, 37.655556, 30.327745>,  <41.609371, 37.961639, 30.755821>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.006245, 37.655556, 30.327745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.833515, 37.862808, 30.623058>,  <40.729877, 37.987160, 30.800247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.833515, 37.862808, 30.623058>,  <41.006245, 37.655556, 30.327745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.833515, 37.862808, 30.623058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575981, 0.471488, -0.667791,
		-0.694097, -0.713608, 0.094834,
		-0.431828, 0.518134, 0.738283,
		40.703968, 38.018250, 30.844543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.895275, 36.012352, 39.587471> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551281, 35.808407, 39.596138>,  <38.344887, 35.686039, 39.601337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551281, 35.808407, 39.596138>,  <38.895275, 36.012352, 39.587471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551281, 35.808407, 39.596138> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298744, -0.537396, -0.788643,
		0.413744, -0.671746, 0.614470,
		-0.859981, -0.509865, 0.021664,
		38.293285, 35.655449, 39.602638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049034, 35.272141, 39.538326>,  <38.895275, 36.012352, 39.587471>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049034, 35.272141, 39.538326> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677845, 35.276123, 39.389317>,  <38.455132, 35.278511, 39.299911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677845, 35.276123, 39.389317>,  <39.049034, 35.272141, 39.538326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.677845, 35.276123, 39.389317> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287586, -0.616615, -0.732858,
		-0.236998, -0.787202, 0.569338,
		-0.927969, 0.009952, -0.372524,
		38.399456, 35.279110, 39.277557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.022312, 34.613655, 39.346153>,  <39.049034, 35.272141, 39.538326>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.022312, 34.613655, 39.346153> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720634, 34.804672, 39.165867>,  <38.539627, 34.919281, 39.057697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720634, 34.804672, 39.165867>,  <39.022312, 34.613655, 39.346153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.720634, 34.804672, 39.165867> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187270, -0.501453, -0.844674,
		-0.629382, -0.721453, 0.288763,
		-0.754194, 0.477546, -0.450712,
		38.494377, 34.947937, 39.030655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.501122, 34.066891, 39.004063>,  <39.022312, 34.613655, 39.346153>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.501122, 34.066891, 39.004063> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487507, 34.428017, 38.832592>,  <38.479340, 34.644691, 38.729710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487507, 34.428017, 38.832592>,  <38.501122, 34.066891, 39.004063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.487507, 34.428017, 38.832592> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144460, -0.419973, -0.895965,
		-0.988925, -0.092422, -0.116126,
		-0.034037, 0.902818, -0.428674,
		38.477295, 34.698864, 38.703991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064247, 33.989651, 38.427608>,  <38.501122, 34.066891, 39.004063>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.064247, 33.989651, 38.427608> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240189, 34.340824, 38.351959>,  <38.345753, 34.551529, 38.306572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240189, 34.340824, 38.351959>,  <38.064247, 33.989651, 38.427608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240189, 34.340824, 38.351959> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039411, -0.191513, -0.980699,
		-0.897203, 0.438820, -0.049638,
		0.439857, 0.877929, -0.189120,
		38.372147, 34.604202, 38.295223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656372, 34.301933, 37.909004>,  <38.064247, 33.989651, 38.427608>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656372, 34.301933, 37.909004> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010620, 34.484711, 37.875824>,  <38.223167, 34.594376, 37.855915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010620, 34.484711, 37.875824>,  <37.656372, 34.301933, 37.909004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.010620, 34.484711, 37.875824> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042897, -0.258339, -0.965101,
		-0.462424, 0.851155, -0.248391,
		0.885620, 0.456942, -0.082950,
		38.276306, 34.621792, 37.850941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607224, 34.488491, 37.235386>,  <37.656372, 34.301933, 37.909004>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.607224, 34.488491, 37.235386> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990318, 34.543507, 37.336433>,  <38.220177, 34.576515, 37.397060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990318, 34.543507, 37.336433>,  <37.607224, 34.488491, 37.235386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.990318, 34.543507, 37.336433> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246761, 0.058384, -0.967316,
		-0.147793, 0.988774, 0.021977,
		0.957740, 0.137540, 0.252619,
		38.277641, 34.584770, 37.412220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880444, 35.056019, 36.757294>,  <37.607224, 34.488491, 37.235386>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880444, 35.056019, 36.757294> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199871, 34.850834, 36.883244>,  <38.391529, 34.727722, 36.958813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199871, 34.850834, 36.883244>,  <37.880444, 35.056019, 36.757294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.199871, 34.850834, 36.883244> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409212, 0.079069, -0.909007,
		0.441391, 0.854760, 0.273054,
		0.798573, -0.512964, 0.314878,
		38.439442, 34.696945, 36.977707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414124, 35.398914, 36.477436>,  <37.880444, 35.056019, 36.757294>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414124, 35.398914, 36.477436> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.555038, 35.032715, 36.555157>,  <38.639587, 34.812996, 36.601788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.555038, 35.032715, 36.555157>,  <38.414124, 35.398914, 36.477436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.555038, 35.032715, 36.555157> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372044, -0.053504, -0.926672,
		0.858763, 0.398745, 0.321757,
		0.352291, -0.915500, 0.194298,
		38.660725, 34.758064, 36.613445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043068, 35.439632, 36.252262>,  <38.414124, 35.398914, 36.477436>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.043068, 35.439632, 36.252262> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976238, 35.045769, 36.272377>,  <38.936142, 34.809448, 36.284447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976238, 35.045769, 36.272377>,  <39.043068, 35.439632, 36.252262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.976238, 35.045769, 36.272377> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262097, -0.093525, -0.960499,
		0.950470, -0.147290, 0.273702,
		-0.167070, -0.984662, 0.050288,
		38.926117, 34.750370, 36.287464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518673, 35.177494, 35.830330>,  <39.043068, 35.439632, 36.252262>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.518673, 35.177494, 35.830330> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266914, 34.869938, 35.875343>,  <39.115860, 34.685402, 35.902351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266914, 34.869938, 35.875343>,  <39.518673, 35.177494, 35.830330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.266914, 34.869938, 35.875343> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198176, -0.298847, -0.933497,
		0.751392, -0.565235, 0.340469,
		-0.629393, -0.768895, 0.112535,
		39.078094, 34.639271, 35.909103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.925304, 34.581863, 35.787968>,  <39.518673, 35.177494, 35.830330>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.925304, 34.581863, 35.787968> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546844, 34.524563, 35.671841>,  <39.319771, 34.490181, 35.602165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546844, 34.524563, 35.671841>,  <39.925304, 34.581863, 35.787968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.546844, 34.524563, 35.671841> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298330, -0.037535, -0.953725,
		0.125729, -0.988974, 0.078251,
		-0.946146, -0.143256, -0.290321,
		39.263000, 34.481586, 35.584743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.024872, 34.021732, 35.316849>,  <39.925304, 34.581863, 35.787968>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.024872, 34.021732, 35.316849> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655087, 34.164200, 35.262413>,  <39.433216, 34.249680, 35.229752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655087, 34.164200, 35.262413>,  <40.024872, 34.021732, 35.316849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.655087, 34.164200, 35.262413> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041502, -0.448813, -0.892661,
		-0.379013, -0.819582, 0.429692,
		-0.924460, 0.356163, -0.136092,
		39.377750, 34.271049, 35.221584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.603825, 33.376953, 35.152313>,  <40.024872, 34.021732, 35.316849>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.603825, 33.376953, 35.152313> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470745, 33.729961, 35.019367>,  <39.390900, 33.941765, 34.939598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470745, 33.729961, 35.019367>,  <39.603825, 33.376953, 35.152313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.470745, 33.729961, 35.019367> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080617, -0.377771, -0.922382,
		-0.939582, -0.280078, 0.196830,
		-0.332696, 0.882522, -0.332368,
		39.370937, 33.994717, 34.919659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648018, 32.642826, 35.024750>,  <39.603825, 33.376953, 35.152313>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.648018, 32.642826, 35.024750> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.847847, 32.301033, 34.967770>,  <39.967747, 32.095959, 34.933582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.847847, 32.301033, 34.967770>,  <39.648018, 32.642826, 35.024750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.847847, 32.301033, 34.967770> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323558, -0.336593, 0.884316,
		-0.803577, -0.395692, -0.444627,
		0.499574, -0.854478, -0.142449,
		39.997719, 32.044689, 34.925034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.154491, 32.115070, 35.019226>,  <39.648018, 32.642826, 35.024750>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.154491, 32.115070, 35.019226> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.498043, 31.997272, 35.186848>,  <39.704174, 31.926594, 35.287422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.498043, 31.997272, 35.186848>,  <39.154491, 32.115070, 35.019226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.498043, 31.997272, 35.186848> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491782, -0.245529, 0.835384,
		-0.143123, -0.923575, -0.355704,
		0.858875, -0.294492, 0.419057,
		39.755707, 31.908924, 35.312565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241253, 31.343630, 35.306465>,  <39.154491, 32.115070, 35.019226>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.241253, 31.343630, 35.306465> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.494144, 31.580473, 35.506344>,  <39.645878, 31.722578, 35.626270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.494144, 31.580473, 35.506344>,  <39.241253, 31.343630, 35.306465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.494144, 31.580473, 35.506344> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534826, -0.133114, 0.834411,
		0.560578, -0.794788, 0.232517,
		0.632229, 0.592109, 0.499694,
		39.683815, 31.758106, 35.656254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321415, 31.007788, 35.947845>,  <39.241253, 31.343630, 35.306465>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.321415, 31.007788, 35.947845> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474651, 31.363884, 36.046402>,  <39.566593, 31.577541, 36.105537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474651, 31.363884, 36.046402>,  <39.321415, 31.007788, 35.947845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.474651, 31.363884, 36.046402> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248428, -0.157616, 0.955741,
		0.889675, -0.427350, 0.160779,
		0.383095, 0.890241, 0.246393,
		39.589581, 31.630957, 36.120319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657703, 30.921787, 36.508595>,  <39.321415, 31.007788, 35.947845>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.657703, 30.921787, 36.508595> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.608379, 31.318731, 36.510311>,  <39.578785, 31.556898, 36.511341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.608379, 31.318731, 36.510311>,  <39.657703, 30.921787, 36.508595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.608379, 31.318731, 36.510311> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369994, -0.049991, 0.927688,
		0.920814, 0.112804, 0.373332,
		-0.123310, 0.992359, 0.004296,
		39.571388, 31.616440, 36.511600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843685, 31.203459, 37.211311>,  <39.657703, 30.921787, 36.508595>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843685, 31.203459, 37.211311> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.612427, 31.471285, 37.024792>,  <39.473671, 31.631981, 36.912880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.612427, 31.471285, 37.024792>,  <39.843685, 31.203459, 37.211311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.612427, 31.471285, 37.024792> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370364, 0.293873, 0.881175,
		0.727035, 0.682146, 0.078081,
		-0.578144, 0.669563, -0.466299,
		39.438984, 31.672153, 36.884903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.020794, 31.810081, 37.510483>,  <39.843685, 31.203459, 37.211311>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.020794, 31.810081, 37.510483> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.656769, 31.873781, 37.357418>,  <39.438354, 31.912001, 37.265579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.656769, 31.873781, 37.357418>,  <40.020794, 31.810081, 37.510483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.656769, 31.873781, 37.357418> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300635, 0.381932, 0.873926,
		0.285322, 0.910367, -0.299706,
		-0.910060, 0.159249, -0.382662,
		39.383751, 31.921556, 37.242619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.835140, 32.536079, 37.678207>,  <40.020794, 31.810081, 37.510483>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.835140, 32.536079, 37.678207> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508236, 32.321938, 37.592903>,  <39.312092, 32.193455, 37.541721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508236, 32.321938, 37.592903>,  <39.835140, 32.536079, 37.678207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.508236, 32.321938, 37.592903> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430364, 0.320909, 0.843685,
		-0.383231, 0.781292, -0.492663,
		-0.817264, -0.535350, -0.213258,
		39.263058, 32.161331, 37.528927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.245735, 33.006630, 37.727219>,  <39.835140, 32.536079, 37.678207>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.245735, 33.006630, 37.727219> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085190, 32.641891, 37.761719>,  <38.988861, 32.423050, 37.782417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085190, 32.641891, 37.761719>,  <39.245735, 33.006630, 37.727219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085190, 32.641891, 37.761719> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555118, 0.317078, 0.768963,
		-0.728525, 0.260759, -0.633448,
		-0.401367, -0.911847, 0.086247,
		38.964779, 32.368336, 37.787594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614010, 33.113861, 37.964958>,  <39.245735, 33.006630, 37.727219>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.614010, 33.113861, 37.964958> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659775, 32.731415, 38.072849>,  <38.687233, 32.501945, 38.137585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659775, 32.731415, 38.072849>,  <38.614010, 33.113861, 37.964958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.659775, 32.731415, 38.072849> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529249, 0.171110, 0.831034,
		-0.840717, -0.237834, -0.486446,
		0.114413, -0.956115, 0.269729,
		38.694099, 32.444580, 38.153767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.889545, 32.913223, 38.178188>,  <38.614010, 33.113861, 37.964958>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.889545, 32.913223, 38.178188> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137676, 32.645134, 38.341160>,  <38.286556, 32.484280, 38.438942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137676, 32.645134, 38.341160>,  <37.889545, 32.913223, 38.178188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137676, 32.645134, 38.341160> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497383, 0.065507, 0.865054,
		-0.606467, -0.739264, -0.292721,
		0.620328, -0.670222, 0.407425,
		38.323776, 32.444069, 38.463387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484753, 32.444893, 38.601429>,  <37.889545, 32.913223, 38.178188>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.484753, 32.444893, 38.601429> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859085, 32.403072, 38.736065>,  <38.083683, 32.377979, 38.816845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859085, 32.403072, 38.736065>,  <37.484753, 32.444893, 38.601429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.859085, 32.403072, 38.736065> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319835, 0.149318, 0.935633,
		-0.148078, -0.983247, 0.106298,
		0.935830, -0.104549, 0.336587,
		38.139835, 32.371708, 38.837040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393845, 32.061745, 39.213177>,  <37.484753, 32.444893, 38.601429>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.393845, 32.061745, 39.213177> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767220, 32.201508, 39.245716>,  <37.991245, 32.285366, 39.265240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767220, 32.201508, 39.245716>,  <37.393845, 32.061745, 39.213177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767220, 32.201508, 39.245716> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142644, 0.153415, 0.977812,
		0.329173, -0.924326, 0.193043,
		0.933433, 0.349406, 0.081350,
		38.047249, 32.306328, 39.270123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807861, 31.678406, 39.723343>,  <37.393845, 32.061745, 39.213177>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807861, 31.678406, 39.723343> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952991, 32.049557, 39.688946>,  <38.040070, 32.272247, 39.668308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952991, 32.049557, 39.688946>,  <37.807861, 31.678406, 39.723343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.952991, 32.049557, 39.688946> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012554, 0.097141, 0.995192,
		0.931771, -0.360005, 0.046894,
		0.362830, 0.927879, -0.085993,
		38.061840, 32.327919, 39.663147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797520, 30.974316, 39.572220>,  <37.807861, 31.678406, 39.723343>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.797520, 30.974316, 39.572220> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.451782, 30.784655, 39.639267>,  <37.244339, 30.670858, 39.679493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.451782, 30.784655, 39.639267>,  <37.797520, 30.974316, 39.572220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.451782, 30.784655, 39.639267> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224909, 0.066344, -0.972119,
		0.449812, -0.877940, -0.163985,
		-0.864341, -0.474152, 0.167614,
		37.192478, 30.642408, 39.689552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.776093, 30.305153, 39.155945>,  <37.797520, 30.974316, 39.572220>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.776093, 30.305153, 39.155945> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.424740, 30.483912, 39.223743>,  <37.213928, 30.591166, 39.264423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.424740, 30.483912, 39.223743>,  <37.776093, 30.305153, 39.155945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424740, 30.483912, 39.223743> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068437, 0.233375, -0.969976,
		-0.473033, -0.863610, -0.174408,
		-0.878382, 0.446895, 0.169497,
		37.161224, 30.617979, 39.274593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455734, 29.912512, 38.606602>,  <37.776093, 30.305153, 39.155945>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.455734, 29.912512, 38.606602> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226208, 30.221245, 38.716148>,  <37.088490, 30.406485, 38.781876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226208, 30.221245, 38.716148>,  <37.455734, 29.912512, 38.606602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.226208, 30.221245, 38.716148> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436492, -0.005276, -0.899693,
		-0.692969, -0.635802, 0.339927,
		-0.573820, 0.771834, 0.273866,
		37.054062, 30.452795, 38.798309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736778, 29.743599, 38.415394>,  <37.455734, 29.912512, 38.606602>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.736778, 29.743599, 38.415394> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782848, 30.140196, 38.439636>,  <36.810490, 30.378155, 38.454182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782848, 30.140196, 38.439636>,  <36.736778, 29.743599, 38.415394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.782848, 30.140196, 38.439636> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331971, 0.095926, -0.938399,
		-0.936231, 0.087963, 0.340196,
		0.115178, 0.991494, 0.060608,
		36.817402, 30.437645, 38.457817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232651, 29.890467, 38.002705>,  <36.736778, 29.743599, 38.415394>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232651, 29.890467, 38.002705> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.469494, 30.212324, 38.020374>,  <36.611599, 30.405439, 38.030975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.469494, 30.212324, 38.020374>,  <36.232651, 29.890467, 38.002705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469494, 30.212324, 38.020374> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319495, 0.284727, -0.903799,
		-0.739815, 0.521036, 0.425670,
		0.592112, 0.804644, 0.044177,
		36.647129, 30.453718, 38.033627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787769, 30.498854, 37.595654>,  <36.232651, 29.890467, 38.002705>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787769, 30.498854, 37.595654> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.160286, 30.633516, 37.651299>,  <36.383797, 30.714314, 37.684685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.160286, 30.633516, 37.651299>,  <35.787769, 30.498854, 37.595654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.160286, 30.633516, 37.651299> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015883, 0.419062, -0.907819,
		-0.363921, 0.843237, 0.395617,
		0.931294, 0.336658, 0.139113,
		36.439674, 30.734514, 37.693031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.736160, 31.220343, 37.475636>,  <35.787769, 30.498854, 37.595654>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.736160, 31.220343, 37.475636> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.105629, 31.080130, 37.413715>,  <36.327309, 30.996002, 37.376564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.105629, 31.080130, 37.413715>,  <35.736160, 31.220343, 37.475636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105629, 31.080130, 37.413715> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040127, 0.490234, -0.870667,
		0.381085, 0.797996, 0.466880,
		0.923669, -0.350532, -0.154799,
		36.382729, 30.974970, 37.367275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218086, 31.781036, 37.440853>,  <35.736160, 31.220343, 37.475636>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.218086, 31.781036, 37.440853> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420555, 31.502531, 37.237282>,  <36.542038, 31.335428, 37.115139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420555, 31.502531, 37.237282>,  <36.218086, 31.781036, 37.440853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420555, 31.502531, 37.237282> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131813, 0.645629, -0.752189,
		0.852298, 0.313656, 0.418579,
		0.506176, -0.696263, -0.508925,
		36.572407, 31.293652, 37.084606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546616, 32.199070, 37.010143>,  <36.218086, 31.781036, 37.440853>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.546616, 32.199070, 37.010143> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582100, 31.837370, 36.843071>,  <36.603390, 31.620350, 36.742828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582100, 31.837370, 36.843071>,  <36.546616, 32.199070, 37.010143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582100, 31.837370, 36.843071> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053946, 0.423085, -0.904483,
		0.994595, 0.057708, 0.086314,
		0.088714, -0.904250, -0.417685,
		36.608715, 31.566095, 36.717766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047298, 32.184113, 36.482658>,  <36.546616, 32.199070, 37.010143>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047298, 32.184113, 36.482658> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833710, 31.868486, 36.361160>,  <36.705559, 31.679111, 36.288261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833710, 31.868486, 36.361160>,  <37.047298, 32.184113, 36.482658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.833710, 31.868486, 36.361160> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200949, 0.230516, -0.952093,
		0.821278, -0.569424, 0.035473,
		-0.533968, -0.789062, -0.303743,
		36.673519, 31.631767, 36.270039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508251, 31.897364, 35.897469>,  <37.047298, 32.184113, 36.482658>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.508251, 31.897364, 35.897469> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161983, 31.705208, 35.841122>,  <36.954224, 31.589914, 35.807312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161983, 31.705208, 35.841122>,  <37.508251, 31.897364, 35.897469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.161983, 31.705208, 35.841122> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104287, 0.102171, -0.989285,
		0.489636, -0.871083, -0.038347,
		-0.865668, -0.480390, -0.140869,
		36.902283, 31.561090, 35.798862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518150, 31.202227, 35.587238>,  <37.508251, 31.897364, 35.897469>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518150, 31.202227, 35.587238> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.190308, 31.417868, 35.509663>,  <36.993603, 31.547253, 35.463116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.190308, 31.417868, 35.509663>,  <37.518150, 31.202227, 35.587238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.190308, 31.417868, 35.509663> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219768, -0.016789, -0.975407,
		-0.529103, -0.842072, -0.104717,
		-0.819605, 0.539104, -0.193944,
		36.944427, 31.579599, 35.451481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.993416, 29.867138, 43.535431> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.669807, 30.068970, 43.414845>,  <36.475643, 30.190069, 43.342491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.669807, 30.068970, 43.414845>,  <36.993416, 29.867138, 43.535431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.669807, 30.068970, 43.414845> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291707, -0.100602, -0.951202,
		-0.510285, -0.857485, -0.065800,
		-0.809022, 0.504579, -0.301470,
		36.427101, 30.220343, 43.324402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.733089, 29.456696, 42.941216>,  <36.993416, 29.867138, 43.535431>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.733089, 29.456696, 42.941216> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.577427, 29.822939, 42.900768>,  <36.484032, 30.042685, 42.876499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.577427, 29.822939, 42.900768>,  <36.733089, 29.456696, 42.941216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.577427, 29.822939, 42.900768> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086531, -0.072947, -0.993575,
		-0.917100, -0.395402, -0.050841,
		-0.389153, 0.915607, -0.101114,
		36.460682, 30.097622, 42.870434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373100, 29.443663, 42.340313>,  <36.733089, 29.456696, 42.941216>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373100, 29.443663, 42.340313> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.374790, 29.839598, 42.397163>,  <36.375805, 30.077160, 42.431274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.374790, 29.839598, 42.397163>,  <36.373100, 29.443663, 42.340313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374790, 29.839598, 42.397163> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069865, 0.142072, -0.987388,
		-0.997547, -0.005755, 0.069756,
		0.004228, 0.989839, 0.142126,
		36.376057, 30.136549, 42.439800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846443, 29.731195, 41.876778>,  <36.373100, 29.443663, 42.340313>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846443, 29.731195, 41.876778> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.117420, 30.009285, 41.972893>,  <36.280006, 30.176140, 42.030563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.117420, 30.009285, 41.972893>,  <35.846443, 29.731195, 41.876778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117420, 30.009285, 41.972893> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227053, 0.113082, -0.967295,
		-0.699661, 0.709841, -0.081247,
		0.677438, 0.695225, 0.240291,
		36.320652, 30.217854, 42.044979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740669, 30.405798, 41.503181>,  <35.846443, 29.731195, 41.876778>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740669, 30.405798, 41.503181> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.127594, 30.390572, 41.603474>,  <36.359749, 30.381435, 41.663651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.127594, 30.390572, 41.603474>,  <35.740669, 30.405798, 41.503181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.127594, 30.390572, 41.603474> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253584, 0.131777, -0.958295,
		0.003436, 0.990548, 0.137122,
		0.967307, -0.038065, 0.250734,
		36.417786, 30.379152, 41.678696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975334, 30.888193, 41.124344>,  <35.740669, 30.405798, 41.503181>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975334, 30.888193, 41.124344> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.322090, 30.710724, 41.215252>,  <36.530144, 30.604242, 41.269798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.322090, 30.710724, 41.215252>,  <35.975334, 30.888193, 41.124344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.322090, 30.710724, 41.215252> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294601, 0.088192, -0.951542,
		0.402129, 0.891839, 0.207160,
		0.866892, -0.443672, 0.227272,
		36.582157, 30.577621, 41.283432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444778, 31.346495, 40.849686>,  <35.975334, 30.888193, 41.124344>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444778, 31.346495, 40.849686> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.613659, 30.988617, 40.908009>,  <36.714989, 30.773890, 40.943005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.613659, 30.988617, 40.908009>,  <36.444778, 31.346495, 40.849686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.613659, 30.988617, 40.908009> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249916, -0.039734, -0.967452,
		0.871370, 0.444904, 0.206823,
		0.422205, -0.894697, 0.145811,
		36.740322, 30.720207, 40.951752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157448, 31.417978, 40.642693>,  <36.444778, 31.346495, 40.849686>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157448, 31.417978, 40.642693> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.067459, 31.028976, 40.618626>,  <37.013466, 30.795574, 40.604183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.067459, 31.028976, 40.618626>,  <37.157448, 31.417978, 40.642693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.067459, 31.028976, 40.618626> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271475, -0.003253, -0.962440,
		0.935783, -0.232855, 0.264743,
		-0.224970, -0.972506, -0.060170,
		36.999969, 30.737225, 40.600574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729313, 31.144260, 40.320156>,  <37.157448, 31.417978, 40.642693>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729313, 31.144260, 40.320156> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.400631, 30.922272, 40.268295>,  <37.203423, 30.789080, 40.237179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.400631, 30.922272, 40.268295>,  <37.729313, 31.144260, 40.320156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400631, 30.922272, 40.268295> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106258, 0.074325, -0.991557,
		0.559921, -0.828544, -0.002103,
		-0.821704, -0.554970, -0.129655,
		37.154121, 30.755781, 40.229397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336143, 31.667694, 40.216202>,  <37.729313, 31.144260, 40.320156>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336143, 31.667694, 40.216202> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.256725, 32.049271, 40.126247>,  <38.209072, 32.278217, 40.072273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.256725, 32.049271, 40.126247>,  <38.336143, 31.667694, 40.216202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.256725, 32.049271, 40.126247> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038953, 0.236953, 0.970740,
		0.979317, 0.183978, -0.084205,
		-0.198548, 0.953942, -0.224885,
		38.197163, 32.335453, 40.058781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776566, 32.061401, 40.599220>,  <38.336143, 31.667694, 40.216202>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.776566, 32.061401, 40.599220> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.501644, 32.331463, 40.492050>,  <38.336693, 32.493500, 40.427750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.501644, 32.331463, 40.492050>,  <38.776566, 32.061401, 40.599220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501644, 32.331463, 40.492050> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084713, 0.440841, 0.893579,
		0.721415, 0.591462, -0.360185,
		-0.687302, 0.675154, -0.267924,
		38.295452, 32.534008, 40.411674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940262, 32.755352, 40.739071>,  <38.776566, 32.061401, 40.599220>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940262, 32.755352, 40.739071> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.541924, 32.786377, 40.720001>,  <38.302921, 32.804993, 40.708557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.541924, 32.786377, 40.720001>,  <38.940262, 32.755352, 40.739071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541924, 32.786377, 40.720001> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023592, 0.285966, 0.957949,
		0.087932, 0.955096, -0.282949,
		-0.995847, 0.077559, -0.047678,
		38.243168, 32.809643, 40.705696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794823, 33.355835, 41.179443>,  <38.940262, 32.755352, 40.739071>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794823, 33.355835, 41.179443> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.454094, 33.148895, 41.146564>,  <38.249657, 33.024731, 41.126839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.454094, 33.148895, 41.146564>,  <38.794823, 33.355835, 41.179443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454094, 33.148895, 41.146564> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233029, 0.233709, 0.943969,
		-0.469147, 0.823246, -0.319634,
		-0.851821, -0.517344, -0.082197,
		38.198547, 32.993690, 41.121906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.311062, 33.829887, 41.591553>,  <38.794823, 33.355835, 41.179443>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.311062, 33.829887, 41.591553> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.077888, 33.511673, 41.525455>,  <37.937984, 33.320744, 41.485798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.077888, 33.511673, 41.525455>,  <38.311062, 33.829887, 41.591553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077888, 33.511673, 41.525455> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569463, 0.254954, 0.781479,
		-0.579566, 0.549654, -0.601651,
		-0.582937, -0.795537, -0.165245,
		37.903008, 33.273010, 41.475883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.663578, 34.075447, 41.610050>,  <38.311062, 33.829887, 41.591553>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.663578, 34.075447, 41.610050> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.666286, 33.691814, 41.723270>,  <37.667912, 33.461636, 41.791203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.666286, 33.691814, 41.723270>,  <37.663578, 34.075447, 41.610050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666286, 33.691814, 41.723270> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567523, 0.229371, 0.790763,
		-0.823330, -0.165993, -0.542747,
		0.006771, -0.959080, 0.283053,
		37.668316, 33.404091, 41.808186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981548, 33.867123, 41.775097>,  <37.663578, 34.075447, 41.610050>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.981548, 33.867123, 41.775097> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.217476, 33.602272, 41.960011>,  <37.359032, 33.443363, 42.070957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.217476, 33.602272, 41.960011>,  <36.981548, 33.867123, 41.775097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217476, 33.602272, 41.960011> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528631, 0.116172, 0.840865,
		-0.610461, -0.740334, -0.281499,
		0.589818, -0.662125, 0.462282,
		37.394421, 33.403633, 42.098694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453606, 33.414196, 42.103157>,  <36.981548, 33.867123, 41.775097>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.453606, 33.414196, 42.103157> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.809303, 33.345238, 42.272636>,  <37.022724, 33.303864, 42.374325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.809303, 33.345238, 42.272636>,  <36.453606, 33.414196, 42.103157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.809303, 33.345238, 42.272636> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432471, -0.015079, 0.901522,
		-0.149032, -0.984912, -0.087967,
		0.889246, -0.172399, 0.423699,
		37.076077, 33.293518, 42.399746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.341370, 32.999046, 42.649792>,  <36.453606, 33.414196, 42.103157>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.341370, 32.999046, 42.649792> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.695133, 33.162197, 42.740528>,  <36.907391, 33.260086, 42.794971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.695133, 33.162197, 42.740528>,  <36.341370, 32.999046, 42.649792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695133, 33.162197, 42.740528> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314135, 0.160766, 0.935667,
		0.345170, -0.898771, 0.270311,
		0.884408, 0.407878, 0.226844,
		36.960457, 33.284561, 42.808582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468262, 32.843853, 43.317112>,  <36.341370, 32.999046, 42.649792>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.468262, 32.843853, 43.317112> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.756767, 33.120430, 43.300701>,  <36.929871, 33.286377, 43.290855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.756767, 33.120430, 43.300701>,  <36.468262, 32.843853, 43.317112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.756767, 33.120430, 43.300701> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176659, 0.240897, 0.954338,
		0.669755, -0.681081, 0.295900,
		0.721263, 0.691445, -0.041023,
		36.973145, 33.327862, 43.288395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782093, 32.790398, 43.867855>,  <36.468262, 32.843853, 43.317112>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782093, 32.790398, 43.867855> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.900452, 33.158539, 43.765560>,  <36.971466, 33.379421, 43.704182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.900452, 33.158539, 43.765560>,  <36.782093, 32.790398, 43.867855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.900452, 33.158539, 43.765560> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069536, 0.246266, 0.966705,
		0.952687, -0.303825, 0.008870,
		0.295893, 0.920350, -0.255741,
		36.989220, 33.434643, 43.688839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289627, 32.927731, 44.434040>,  <36.782093, 32.790398, 43.867855>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289627, 32.927731, 44.434040> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.181065, 33.263882, 44.246384>,  <37.115929, 33.465572, 44.133789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.181065, 33.263882, 44.246384>,  <37.289627, 32.927731, 44.434040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181065, 33.263882, 44.246384> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051304, 0.474115, 0.878967,
		0.961096, 0.262628, -0.085563,
		-0.271408, 0.840382, -0.469144,
		37.099644, 33.515995, 44.105640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692696, 33.588844, 44.532852>,  <37.289627, 32.927731, 44.434040>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692696, 33.588844, 44.532852> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.333233, 33.734077, 44.434391>,  <37.117558, 33.821217, 44.375313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.333233, 33.734077, 44.434391>,  <37.692696, 33.588844, 44.532852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333233, 33.734077, 44.434391> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063991, 0.446643, 0.892421,
		0.433967, 0.817729, -0.378143,
		-0.898653, 0.363084, -0.246155,
		37.063637, 33.843002, 44.360546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705883, 34.137806, 44.993137>,  <37.692696, 33.588844, 44.532852>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.705883, 34.137806, 44.993137> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.319485, 34.094978, 44.899002>,  <37.087646, 34.069283, 44.842522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.319485, 34.094978, 44.899002>,  <37.705883, 34.137806, 44.993137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.319485, 34.094978, 44.899002> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258445, 0.425485, 0.867276,
		0.007272, 0.898609, -0.438690,
		-0.965999, -0.107071, -0.235335,
		37.029686, 34.062859, 44.828400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.250208, 35.768261, 43.879566> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.453566, 35.435867, 43.969906>,  <31.575581, 35.236431, 44.024109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.453566, 35.435867, 43.969906>,  <31.250208, 35.768261, 43.879566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.453566, 35.435867, 43.969906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286724, -0.083951, -0.954328,
		0.811988, 0.549931, 0.195582,
		0.508395, -0.830980, 0.225846,
		31.606085, 35.186573, 44.037659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.917171, 35.871567, 43.629105>,  <31.250208, 35.768261, 43.879566>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.917171, 35.871567, 43.629105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.908903, 35.472290, 43.651661>,  <31.903942, 35.232723, 43.665195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.908903, 35.472290, 43.651661>,  <31.917171, 35.871567, 43.629105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.908903, 35.472290, 43.651661> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360228, -0.060051, -0.930930,
		0.932635, 0.001071, 0.360819,
		-0.020670, -0.998195, 0.056392,
		31.902702, 35.172832, 43.668579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.489479, 35.726944, 43.472473>,  <31.917171, 35.871567, 43.629105>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.489479, 35.726944, 43.472473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.282032, 35.392750, 43.399815>,  <32.157562, 35.192234, 43.356220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.282032, 35.392750, 43.399815>,  <32.489479, 35.726944, 43.472473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.282032, 35.392750, 43.399815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500742, -0.124603, -0.856581,
		0.693029, -0.535198, 0.482985,
		-0.518622, -0.835486, -0.181643,
		32.126446, 35.142105, 43.345322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.938927, 35.272320, 43.148026>,  <32.489479, 35.726944, 43.472473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.938927, 35.272320, 43.148026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.584358, 35.110611, 43.057854>,  <32.371616, 35.013584, 43.003750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.584358, 35.110611, 43.057854>,  <32.938927, 35.272320, 43.148026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.584358, 35.110611, 43.057854> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278066, -0.075745, -0.957571,
		0.370044, -0.911497, 0.179557,
		-0.886423, -0.404272, -0.225428,
		32.318432, 34.989330, 42.990227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.000172, 34.576614, 42.748569>,  <32.938927, 35.272320, 43.148026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.000172, 34.576614, 42.748569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.648396, 34.742531, 42.655155>,  <32.437332, 34.842083, 42.599106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.648396, 34.742531, 42.655155>,  <33.000172, 34.576614, 42.748569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.648396, 34.742531, 42.655155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200269, -0.122668, -0.972031,
		-0.431839, -0.901609, 0.024809,
		-0.879436, 0.414793, -0.233537,
		32.384563, 34.866970, 42.585094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.745365, 34.124798, 42.147141>,  <33.000172, 34.576614, 42.748569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.745365, 34.124798, 42.147141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.536083, 34.465534, 42.137100>,  <32.410515, 34.669975, 42.131077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.536083, 34.465534, 42.137100>,  <32.745365, 34.124798, 42.147141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.536083, 34.465534, 42.137100> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077221, 0.018060, -0.996850,
		-0.848702, -0.523494, -0.075229,
		-0.523204, 0.851838, -0.025097,
		32.379124, 34.721085, 42.129570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.365955, 34.001423, 41.506245>,  <32.745365, 34.124798, 42.147141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.365955, 34.001423, 41.506245> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.316513, 34.384254, 41.611107>,  <32.286850, 34.613953, 41.674023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.316513, 34.384254, 41.611107>,  <32.365955, 34.001423, 41.506245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.316513, 34.384254, 41.611107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143482, 0.244166, -0.959060,
		-0.981904, -0.156156, 0.107144,
		-0.123602, 0.957078, 0.262153,
		32.279434, 34.671379, 41.689754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.831743, 34.186539, 41.043156>,  <32.365955, 34.001423, 41.506245>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.831743, 34.186539, 41.043156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.011047, 34.529678, 41.143684>,  <32.118629, 34.735561, 41.204002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.011047, 34.529678, 41.143684>,  <31.831743, 34.186539, 41.043156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.011047, 34.529678, 41.143684> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181391, 0.362591, -0.914125,
		-0.875307, 0.364177, 0.318140,
		0.448258, 0.857848, 0.251319,
		32.145523, 34.787033, 41.219082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.379978, 34.793354, 40.823162>,  <31.831743, 34.186539, 41.043156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.379978, 34.793354, 40.823162> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.747917, 34.941357, 40.875278>,  <31.968681, 35.030159, 40.906548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.747917, 34.941357, 40.875278>,  <31.379978, 34.793354, 40.823162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.747917, 34.941357, 40.875278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019388, 0.288840, -0.957181,
		-0.391798, 0.882986, 0.258515,
		0.919847, 0.370009, 0.130287,
		32.023872, 35.052361, 40.914364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.411268, 35.435608, 40.533848>,  <31.379978, 34.793354, 40.823162>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.411268, 35.435608, 40.533848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.802158, 35.350784, 40.537022>,  <32.036694, 35.299892, 40.538925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.802158, 35.350784, 40.537022>,  <31.411268, 35.435608, 40.533848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.802158, 35.350784, 40.537022> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076401, 0.316699, -0.945444,
		0.197973, 0.924518, 0.325688,
		0.977226, -0.212055, 0.007937,
		32.095325, 35.287167, 40.539402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.680649, 35.902386, 40.186646>,  <31.411268, 35.435608, 40.533848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.680649, 35.902386, 40.186646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.966225, 35.623005, 40.166809>,  <32.137569, 35.455376, 40.154907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.966225, 35.623005, 40.166809>,  <31.680649, 35.902386, 40.186646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.966225, 35.623005, 40.166809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138127, 0.209912, -0.967914,
		0.686450, 0.684181, 0.246340,
		0.713938, -0.698451, -0.049590,
		32.180405, 35.413471, 40.151932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.250282, 36.194981, 39.766533>,  <31.680649, 35.902386, 40.186646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.250282, 36.194981, 39.766533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.298302, 35.798210, 39.750214>,  <32.327114, 35.560146, 39.740421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.298302, 35.798210, 39.750214>,  <32.250282, 36.194981, 39.766533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.298302, 35.798210, 39.750214> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208053, 0.065317, -0.975934,
		0.970723, 0.108669, 0.214215,
		0.120045, -0.991930, -0.040796,
		32.334316, 35.500629, 39.737976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.969383, 36.128258, 39.665249>,  <32.250282, 36.194981, 39.766533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.969383, 36.128258, 39.665249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.771957, 35.811680, 39.521019>,  <32.653500, 35.621735, 39.434483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.771957, 35.811680, 39.521019>,  <32.969383, 36.128258, 39.665249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.771957, 35.811680, 39.521019> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416831, 0.148606, -0.896754,
		0.763311, -0.592907, 0.256550,
		-0.493567, -0.791440, -0.360575,
		32.623886, 35.574249, 39.412846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.525738, 35.829330, 39.250248>,  <32.969383, 36.128258, 39.665249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.525738, 35.829330, 39.250248> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.184658, 35.660145, 39.127605>,  <32.980011, 35.558632, 39.054020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.184658, 35.660145, 39.127605>,  <33.525738, 35.829330, 39.250248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.184658, 35.660145, 39.127605> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224957, 0.232415, -0.946244,
		0.471489, -0.875833, -0.103030,
		-0.852697, -0.422966, -0.306606,
		32.928848, 35.533257, 39.035625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216694, 35.462357, 39.395905>,  <33.525738, 35.829330, 39.250248>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216694, 35.462357, 39.395905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.537167, 35.700085, 39.367897>,  <34.729450, 35.842720, 39.351093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.537167, 35.700085, 39.367897>,  <34.216694, 35.462357, 39.395905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.537167, 35.700085, 39.367897> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038854, 0.168415, 0.984950,
		0.597164, -0.786400, 0.158022,
		0.801177, 0.594316, -0.070017,
		34.777519, 35.878380, 39.346893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.825882, 35.311932, 39.914242>,  <34.216694, 35.462357, 39.395905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.825882, 35.311932, 39.914242> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.810860, 35.695671, 39.802353>,  <34.801846, 35.925915, 39.735218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.810860, 35.695671, 39.802353>,  <34.825882, 35.311932, 39.914242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.810860, 35.695671, 39.802353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102939, 0.274719, 0.955999,
		0.993979, 0.064699, 0.088436,
		-0.037557, 0.959346, -0.279725,
		34.799591, 35.983475, 39.718437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.370319, 35.662621, 40.382732>,  <34.825882, 35.311932, 39.914242>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.370319, 35.662621, 40.382732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.139969, 35.966663, 40.262333>,  <35.001759, 36.149090, 40.190094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.139969, 35.966663, 40.262333>,  <35.370319, 35.662621, 40.382732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139969, 35.966663, 40.262333> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077806, 0.315553, 0.945713,
		0.813823, 0.568037, -0.122580,
		-0.575880, 0.760106, -0.301001,
		34.967205, 36.194695, 40.172031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505398, 36.202667, 40.835358>,  <35.370319, 35.662621, 40.382732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505398, 36.202667, 40.835358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.173428, 36.361328, 40.678444>,  <34.974247, 36.456524, 40.584297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.173428, 36.361328, 40.678444>,  <35.505398, 36.202667, 40.835358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173428, 36.361328, 40.678444> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148232, 0.521113, 0.840517,
		0.537819, 0.755717, -0.373689,
		-0.829927, 0.396653, -0.392286,
		34.924450, 36.480324, 40.560757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.577812, 36.937210, 40.939590>,  <35.505398, 36.202667, 40.835358>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.577812, 36.937210, 40.939590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.191696, 36.835285, 40.916683>,  <34.960026, 36.774132, 40.902939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.191696, 36.835285, 40.916683>,  <35.577812, 36.937210, 40.939590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191696, 36.835285, 40.916683> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167319, 0.434997, 0.884750,
		-0.200531, 0.863626, -0.462534,
		-0.965294, -0.254810, -0.057271,
		34.902107, 36.758842, 40.899502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186684, 37.579075, 41.169720>,  <35.577812, 36.937210, 40.939590>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186684, 37.579075, 41.169720> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.916805, 37.285164, 41.197693>,  <34.754879, 37.108818, 41.214478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.916805, 37.285164, 41.197693>,  <35.186684, 37.579075, 41.169720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916805, 37.285164, 41.197693> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263766, 0.328511, 0.906922,
		-0.689359, 0.593449, -0.415454,
		-0.674693, -0.734778, 0.069930,
		34.714397, 37.064732, 41.218674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649197, 37.879669, 41.483418>,  <35.186684, 37.579075, 41.169720>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.649197, 37.879669, 41.483418> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.602272, 37.489624, 41.558659>,  <34.574116, 37.255596, 41.603806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.602272, 37.489624, 41.558659>,  <34.649197, 37.879669, 41.483418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.602272, 37.489624, 41.558659> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402472, 0.219845, 0.888642,
		-0.907884, 0.028544, -0.418249,
		-0.117315, -0.975117, 0.188105,
		34.567078, 37.197090, 41.615089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097546, 37.819111, 41.911648>,  <34.649197, 37.879669, 41.483418>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097546, 37.819111, 41.911648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.263126, 37.459335, 41.967720>,  <34.362473, 37.243469, 42.001366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.263126, 37.459335, 41.967720>,  <34.097546, 37.819111, 41.911648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.263126, 37.459335, 41.967720> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391659, -0.036965, 0.919368,
		-0.821735, -0.435476, -0.367576,
		0.413950, -0.899441, 0.140183,
		34.387310, 37.189503, 42.009773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.558571, 37.408981, 42.080944>,  <34.097546, 37.819111, 41.911648>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.558571, 37.408981, 42.080944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.884315, 37.220707, 42.216755>,  <34.079762, 37.107742, 42.298241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.884315, 37.220707, 42.216755>,  <33.558571, 37.408981, 42.080944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884315, 37.220707, 42.216755> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358766, 0.051571, 0.932002,
		-0.456187, -0.880794, -0.126867,
		0.814359, -0.470683, 0.339525,
		34.128624, 37.079502, 42.318611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.298294, 36.820705, 42.450905>,  <33.558571, 37.408981, 42.080944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.298294, 36.820705, 42.450905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.668003, 36.891712, 42.586082>,  <33.889828, 36.934315, 42.667191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.668003, 36.891712, 42.586082>,  <33.298294, 36.820705, 42.450905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.668003, 36.891712, 42.586082> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349340, 0.036475, 0.936286,
		0.153879, -0.983442, 0.095726,
		0.924274, 0.177516, 0.337943,
		33.945286, 36.944965, 42.687466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267994, 36.478542, 42.982506>,  <33.298294, 36.820705, 42.450905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267994, 36.478542, 42.982506> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.591175, 36.708054, 43.036152>,  <33.785084, 36.845760, 43.068340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.591175, 36.708054, 43.036152>,  <33.267994, 36.478542, 42.982506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.591175, 36.708054, 43.036152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102862, -0.086774, 0.990903,
		0.580197, -0.814401, -0.011090,
		0.807955, 0.573778, 0.134117,
		33.833561, 36.880188, 43.076385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.564713, 36.150433, 43.470245>,  <33.267994, 36.478542, 42.982506>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.564713, 36.150433, 43.470245> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.694283, 36.528828, 43.475483>,  <33.772026, 36.755867, 43.478626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.694283, 36.528828, 43.475483>,  <33.564713, 36.150433, 43.470245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.694283, 36.528828, 43.475483> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036257, -0.026244, 0.998998,
		0.945387, -0.323130, -0.042800,
		0.323929, 0.945991, 0.013095,
		33.791462, 36.812626, 43.479412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029022, 36.208755, 44.021721>,  <33.564713, 36.150433, 43.470245>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029022, 36.208755, 44.021721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.890755, 36.578102, 43.954906>,  <33.807793, 36.799709, 43.914818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.890755, 36.578102, 43.954906>,  <34.029022, 36.208755, 44.021721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.890755, 36.578102, 43.954906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078433, 0.148952, 0.985729,
		0.935072, 0.353840, 0.020934,
		-0.345672, 0.923369, -0.167034,
		33.787052, 36.855114, 43.904797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484474, 36.607735, 44.321190>,  <34.029022, 36.208755, 44.021721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484474, 36.607735, 44.321190> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.144493, 36.816208, 44.290337>,  <33.940506, 36.941292, 44.271824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.144493, 36.816208, 44.290337>,  <34.484474, 36.607735, 44.321190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144493, 36.816208, 44.290337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043926, 0.075786, 0.996156,
		0.525024, 0.850074, -0.041521,
		-0.849953, 0.521182, -0.077130,
		33.889507, 36.972561, 44.267197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.126488, 37.073536, 44.294106>,  <34.484474, 36.607735, 44.321190>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.126488, 37.073536, 44.294106> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.489086, 37.199242, 44.406887>,  <35.706646, 37.274666, 44.474556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.489086, 37.199242, 44.406887>,  <35.126488, 37.073536, 44.294106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489086, 37.199242, 44.406887> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315470, -0.060323, -0.947016,
		-0.280603, 0.947418, -0.153823,
		0.906499, 0.314262, 0.281955,
		35.761036, 37.293522, 44.491474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300877, 37.506847, 43.738857>,  <35.126488, 37.073536, 44.294106>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300877, 37.506847, 43.738857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.656494, 37.421139, 43.900696>,  <35.869865, 37.369713, 43.997799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.656494, 37.421139, 43.900696>,  <35.300877, 37.506847, 43.738857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.656494, 37.421139, 43.900696> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365972, -0.198377, -0.909237,
		0.275086, 0.956417, -0.097947,
		0.889040, -0.214272, 0.404592,
		35.923206, 37.356857, 44.022072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806995, 37.769966, 43.308495>,  <35.300877, 37.506847, 43.738857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.806995, 37.769966, 43.308495> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.006954, 37.487820, 43.509514>,  <36.126930, 37.318531, 43.630127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.006954, 37.487820, 43.509514>,  <35.806995, 37.769966, 43.308495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.006954, 37.487820, 43.509514> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533243, -0.206560, -0.820356,
		0.682460, 0.678077, 0.272873,
		0.499900, -0.705368, 0.502549,
		36.156925, 37.276211, 43.660278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.400745, 37.962971, 43.207603>,  <35.806995, 37.769966, 43.308495>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.400745, 37.962971, 43.207603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.423801, 37.572620, 43.291828>,  <36.437637, 37.338409, 43.342361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.423801, 37.572620, 43.291828>,  <36.400745, 37.962971, 43.207603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.423801, 37.572620, 43.291828> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521835, -0.150349, -0.839693,
		0.851097, 0.158280, 0.500581,
		0.057645, -0.975880, 0.210558,
		36.441093, 37.279858, 43.354996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161320, 37.815540, 43.068108>,  <36.400745, 37.962971, 43.207603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.161320, 37.815540, 43.068108> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.962543, 37.468456, 43.072662>,  <36.843277, 37.260204, 43.075394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.962543, 37.468456, 43.072662>,  <37.161320, 37.815540, 43.068108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.962543, 37.468456, 43.072662> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557201, -0.329113, -0.762373,
		0.665267, -0.372507, 0.647038,
		-0.496937, -0.867712, 0.011387,
		36.813461, 37.208141, 43.076077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692078, 37.308846, 42.992401>,  <37.161320, 37.815540, 43.068108>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692078, 37.308846, 42.992401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.354595, 37.119896, 42.890404>,  <37.152107, 37.006527, 42.829205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.354595, 37.119896, 42.890404>,  <37.692078, 37.308846, 42.992401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.354595, 37.119896, 42.890404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442406, -0.342834, -0.828699,
		0.304031, -0.811992, 0.498231,
		-0.843708, -0.472371, -0.254997,
		37.101482, 36.978184, 42.813904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.931686, 36.639782, 42.660027>,  <37.692078, 37.308846, 42.992401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.931686, 36.639782, 42.660027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.548985, 36.643578, 42.543728>,  <37.319363, 36.645855, 42.473949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.548985, 36.643578, 42.543728>,  <37.931686, 36.639782, 42.660027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548985, 36.643578, 42.543728> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243538, -0.520476, -0.818410,
		-0.159092, -0.853824, 0.495656,
		-0.956755, 0.009491, -0.290742,
		37.261959, 36.646423, 42.456505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738804, 35.956543, 42.460506>,  <37.931686, 36.639782, 42.660027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.738804, 35.956543, 42.460506> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.490101, 36.202515, 42.266483>,  <37.340878, 36.350098, 42.150070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.490101, 36.202515, 42.266483>,  <37.738804, 35.956543, 42.460506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490101, 36.202515, 42.266483> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100378, -0.551650, -0.828014,
		-0.776751, -0.563513, 0.281267,
		-0.621757, 0.614928, -0.485059,
		37.303574, 36.386993, 42.120964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213764, 35.563847, 42.129848>,  <37.738804, 35.956543, 42.460506>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.213764, 35.563847, 42.129848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.273582, 35.908730, 41.936260>,  <37.309471, 36.115662, 41.820107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.273582, 35.908730, 41.936260>,  <37.213764, 35.563847, 42.129848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273582, 35.908730, 41.936260> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294907, -0.506091, -0.810494,
		-0.943751, -0.021522, -0.329955,
		0.149544, 0.862211, -0.483971,
		37.318447, 36.167393, 41.791069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.813156, 35.566132, 41.444981>,  <37.213764, 35.563847, 42.129848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.813156, 35.566132, 41.444981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.109486, 35.830009, 41.394417>,  <37.287285, 35.988338, 41.364079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.109486, 35.830009, 41.394417>,  <36.813156, 35.566132, 41.444981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.109486, 35.830009, 41.394417> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168572, -0.364770, -0.915711,
		-0.650203, 0.657071, -0.381437,
		0.740824, 0.659697, -0.126411,
		37.331734, 36.027920, 41.356495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680733, 35.880119, 40.745674>,  <36.813156, 35.566132, 41.444981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.680733, 35.880119, 40.745674> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.063381, 35.968948, 40.821095>,  <37.292973, 36.022247, 40.866344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.063381, 35.968948, 40.821095>,  <36.680733, 35.880119, 40.745674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063381, 35.968948, 40.821095> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235117, -0.206395, -0.949800,
		-0.172011, 0.952934, -0.249657,
		0.956625, 0.222075, 0.188549,
		37.350368, 36.035572, 40.877659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.909660, 36.321140, 40.253578>,  <36.680733, 35.880119, 40.745674>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.909660, 36.321140, 40.253578> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.256695, 36.170502, 40.383484>,  <37.464916, 36.080116, 40.461430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.256695, 36.170502, 40.383484>,  <36.909660, 36.321140, 40.253578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256695, 36.170502, 40.383484> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309053, -0.103326, -0.945415,
		0.389600, 0.920596, 0.026746,
		0.867582, -0.376599, 0.324769,
		37.516968, 36.057522, 40.480915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.443142, 36.649712, 39.858349>,  <36.909660, 36.321140, 40.253578>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.443142, 36.649712, 39.858349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.637779, 36.340687, 40.021503>,  <37.754562, 36.155270, 40.119396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.637779, 36.340687, 40.021503>,  <37.443142, 36.649712, 39.858349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637779, 36.340687, 40.021503> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423341, -0.199897, -0.883642,
		0.764206, 0.602649, 0.229790,
		0.486592, -0.772564, 0.407889,
		37.783756, 36.108917, 40.143871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.150074, 36.674564, 39.729847>,  <37.443142, 36.649712, 39.858349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.150074, 36.674564, 39.729847> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.026909, 36.295052, 39.758137>,  <37.953011, 36.067345, 39.775112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.026909, 36.295052, 39.758137>,  <38.150074, 36.674564, 39.729847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.026909, 36.295052, 39.758137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495581, -0.223402, -0.839340,
		0.812152, -0.223389, 0.538987,
		-0.307909, -0.948783, 0.070729,
		37.934536, 36.010418, 39.779354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<25.614353, 39.923973, 30.225784> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.631697, 39.738556, 29.871778>,  <25.642103, 39.627308, 29.659374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.631697, 39.738556, 29.871778>,  <25.614353, 39.923973, 30.225784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.631697, 39.738556, 29.871778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022506, -0.885170, 0.464724,
		-0.998806, -0.040068, -0.027947,
		0.043359, -0.463540, -0.885014,
		25.644705, 39.599495, 29.606274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.233957, 39.264507, 30.120438>,  <25.614353, 39.923973, 30.225784>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.233957, 39.264507, 30.120438> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.561352, 39.226074, 29.893864>,  <25.757790, 39.203014, 29.757919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.561352, 39.226074, 29.893864>,  <25.233957, 39.264507, 30.120438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.561352, 39.226074, 29.893864> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117985, -0.936791, 0.329396,
		-0.562279, -0.336437, -0.755416,
		0.818488, -0.096084, -0.566433,
		25.806898, 39.197250, 29.723934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.198151, 38.658600, 29.677662>,  <25.233957, 39.264507, 30.120438>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.198151, 38.658600, 29.677662> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.592474, 38.724033, 29.692741>,  <25.829067, 38.763294, 29.701788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.592474, 38.724033, 29.692741>,  <25.198151, 38.658600, 29.677662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.592474, 38.724033, 29.692741> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142417, -0.933841, 0.328113,
		0.088878, -0.318088, -0.943886,
		0.985808, 0.163588, 0.037697,
		25.888216, 38.773109, 29.704050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.439514, 38.075798, 29.556986>,  <25.198151, 38.658600, 29.677662>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.439514, 38.075798, 29.556986> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.761467, 38.230812, 29.736755>,  <25.954639, 38.323818, 29.844618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.761467, 38.230812, 29.736755>,  <25.439514, 38.075798, 29.556986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.761467, 38.230812, 29.736755> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157467, -0.869652, 0.467877,
		0.572160, -0.305817, -0.760992,
		0.804883, 0.387531, 0.449424,
		26.002932, 38.347073, 29.871582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.956221, 37.604321, 29.408609>,  <25.439514, 38.075798, 29.556986>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.956221, 37.604321, 29.408609> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.111898, 37.795513, 29.723585>,  <26.205305, 37.910229, 29.912571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.111898, 37.795513, 29.723585>,  <25.956221, 37.604321, 29.408609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.111898, 37.795513, 29.723585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436352, -0.848510, 0.299381,
		0.811249, 0.227084, -0.538803,
		0.389195, 0.477980, 0.787441,
		26.228657, 37.938908, 29.959818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.778378, 37.364418, 29.550583>,  <25.956221, 37.604321, 29.408609>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.778378, 37.364418, 29.550583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.646784, 37.527485, 29.891306>,  <26.567827, 37.625324, 30.095739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.646784, 37.527485, 29.891306>,  <26.778378, 37.364418, 29.550583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.646784, 37.527485, 29.891306> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424252, -0.742059, 0.518998,
		0.843670, 0.532124, 0.071173,
		-0.328986, 0.407667, 0.851807,
		26.548088, 37.649784, 30.146849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.367113, 37.248623, 30.015663>,  <26.778378, 37.364418, 29.550583>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.367113, 37.248623, 30.015663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.047480, 37.324238, 30.243956>,  <26.855700, 37.369606, 30.380930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.047480, 37.324238, 30.243956>,  <27.367113, 37.248623, 30.015663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.047480, 37.324238, 30.243956> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323541, -0.664899, 0.673224,
		0.506745, 0.722615, 0.470146,
		-0.799081, 0.189041, 0.570730,
		26.807755, 37.380951, 30.415174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.602684, 37.515369, 30.709637>,  <27.367113, 37.248623, 30.015663>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.602684, 37.515369, 30.709637> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.239584, 37.354488, 30.757334>,  <27.021725, 37.257957, 30.785952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.239584, 37.354488, 30.757334>,  <27.602684, 37.515369, 30.709637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.239584, 37.354488, 30.757334> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339956, -0.538721, 0.770850,
		-0.245803, 0.740277, 0.625756,
		-0.907750, -0.402207, 0.119242,
		26.967258, 37.233826, 30.793106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.615696, 37.388298, 31.361141>,  <27.602684, 37.515369, 30.709637>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.615696, 37.388298, 31.361141> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.301596, 37.170235, 31.243708>,  <27.113136, 37.039398, 31.173248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.301596, 37.170235, 31.243708>,  <27.615696, 37.388298, 31.361141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.301596, 37.170235, 31.243708> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299748, -0.749578, 0.590155,
		-0.541788, 0.375419, 0.752015,
		-0.785250, -0.545154, -0.293582,
		27.066021, 37.006687, 31.155634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.261980, 37.171265, 31.983736>,  <27.615696, 37.388298, 31.361141>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.261980, 37.171265, 31.983736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.154295, 36.893246, 31.717073>,  <27.089684, 36.726433, 31.557076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.154295, 36.893246, 31.717073>,  <27.261980, 37.171265, 31.983736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.154295, 36.893246, 31.717073> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061466, -0.678400, 0.732117,
		-0.961117, 0.238073, 0.139913,
		-0.269214, -0.695050, -0.666655,
		27.073530, 36.684731, 31.517076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.643751, 36.884541, 32.281914>,  <27.261980, 37.171265, 31.983736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.643751, 36.884541, 32.281914> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.812023, 36.620136, 32.033367>,  <26.912987, 36.461494, 31.884239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.812023, 36.620136, 32.033367>,  <26.643751, 36.884541, 32.281914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.812023, 36.620136, 32.033367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127130, -0.635211, 0.761804,
		-0.898257, -0.399470, -0.183187,
		0.420680, -0.661008, -0.621367,
		26.938227, 36.421833, 31.846956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.303907, 36.284275, 32.578438>,  <26.643751, 36.884541, 32.281914>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.303907, 36.284275, 32.578438> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.604002, 36.150833, 32.350101>,  <26.784060, 36.070770, 32.213100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.604002, 36.150833, 32.350101>,  <26.303907, 36.284275, 32.578438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.604002, 36.150833, 32.350101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221490, -0.686677, 0.692399,
		-0.622966, -0.645898, -0.441281,
		0.750237, -0.333601, -0.570836,
		26.829073, 36.050751, 32.178852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.215277, 35.615471, 32.446693>,  <26.303907, 36.284275, 32.578438>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.215277, 35.615471, 32.446693> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.607288, 35.676029, 32.395123>,  <26.842495, 35.712364, 32.364182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.607288, 35.676029, 32.395123>,  <26.215277, 35.615471, 32.446693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.607288, 35.676029, 32.395123> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195005, -0.858632, 0.474051,
		-0.038929, -0.489725, -0.871008,
		0.980029, 0.151397, -0.128924,
		26.901297, 35.721447, 32.356445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.530704, 34.880157, 32.271320>,  <26.215277, 35.615471, 32.446693>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.530704, 34.880157, 32.271320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.826279, 35.117294, 32.399387>,  <27.003624, 35.259579, 32.476227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.826279, 35.117294, 32.399387>,  <26.530704, 34.880157, 32.271320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.826279, 35.117294, 32.399387> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381959, -0.760034, 0.525790,
		0.555051, -0.266235, -0.788059,
		0.738936, 0.592846, 0.320167,
		27.047960, 35.295147, 32.495438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.157400, 34.438465, 32.306229>,  <26.530704, 34.880157, 32.271320>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.157400, 34.438465, 32.306229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.256475, 34.757801, 32.525795>,  <27.315920, 34.949402, 32.657536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.256475, 34.757801, 32.525795>,  <27.157400, 34.438465, 32.306229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.256475, 34.757801, 32.525795> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563179, -0.579657, 0.588920,
		0.788340, 0.163270, -0.593181,
		0.247688, 0.798336, 0.548917,
		27.330782, 34.997303, 32.690472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.834698, 34.339958, 32.472534>,  <27.157400, 34.438465, 32.306229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.834698, 34.339958, 32.472534> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.726879, 34.615944, 32.741249>,  <27.662188, 34.781536, 32.902477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.726879, 34.615944, 32.741249>,  <27.834698, 34.339958, 32.472534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.726879, 34.615944, 32.741249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465956, -0.517060, 0.718007,
		0.842751, 0.506561, -0.182118,
		-0.269549, 0.689960, 0.671787,
		27.646015, 34.822933, 32.942787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.424175, 34.568932, 32.842594>,  <27.834698, 34.339958, 32.472534>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.424175, 34.568932, 32.842594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.123108, 34.640114, 33.096153>,  <27.942467, 34.682823, 33.248287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.123108, 34.640114, 33.096153>,  <28.424175, 34.568932, 32.842594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.123108, 34.640114, 33.096153> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514459, -0.441876, 0.734900,
		0.410882, 0.879248, 0.241036,
		-0.752667, 0.177954, 0.633896,
		27.897308, 34.693501, 33.286324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.731373, 34.457211, 33.446293>,  <28.424175, 34.568932, 32.842594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.731373, 34.457211, 33.446293> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.341627, 34.478729, 33.533669>,  <28.107779, 34.491642, 33.586094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.341627, 34.478729, 33.533669>,  <28.731373, 34.457211, 33.446293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.341627, 34.478729, 33.533669> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133710, -0.642385, 0.754628,
		0.180920, 0.764491, 0.618725,
		-0.974366, 0.053798, 0.218440,
		28.049316, 34.494869, 33.599201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.182991, 33.852844, 33.153133>,  <28.731373, 34.457211, 33.446293>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.182991, 33.852844, 33.153133> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.566643, 33.739666, 33.154285>,  <29.796835, 33.671761, 33.154976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.566643, 33.739666, 33.154285>,  <29.182991, 33.852844, 33.153133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.566643, 33.739666, 33.154285> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242212, 0.815703, -0.525320,
		0.146288, 0.504549, 0.850900,
		0.959132, -0.282946, 0.002880,
		29.854382, 33.654781, 33.155148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.565876, 34.421387, 33.418404>,  <29.182991, 33.852844, 33.153133>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.565876, 34.421387, 33.418404> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.823187, 34.187992, 33.220116>,  <29.977573, 34.047955, 33.101143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.823187, 34.187992, 33.220116>,  <29.565876, 34.421387, 33.418404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.823187, 34.187992, 33.220116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415502, 0.809874, -0.414080,
		0.643083, 0.060394, 0.763412,
		0.643275, -0.583487, -0.495722,
		30.016169, 34.012947, 33.071400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.272793, 34.689980, 33.645565>,  <29.565876, 34.421387, 33.418404>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.272793, 34.689980, 33.645565> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.287580, 34.505527, 33.290939>,  <30.296453, 34.394855, 33.078163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.287580, 34.505527, 33.290939>,  <30.272793, 34.689980, 33.645565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.287580, 34.505527, 33.290939> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330362, 0.842926, -0.424662,
		0.943130, -0.277185, 0.183505,
		0.036972, -0.461134, -0.886560,
		30.298672, 34.367188, 33.024971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.954700, 34.731155, 33.434925>,  <30.272793, 34.689980, 33.645565>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.954700, 34.731155, 33.434925> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.727541, 34.680119, 33.109665>,  <30.591246, 34.649494, 32.914509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.727541, 34.680119, 33.109665>,  <30.954700, 34.731155, 33.434925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.727541, 34.680119, 33.109665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493411, 0.737959, -0.460393,
		0.658814, -0.662674, -0.356129,
		-0.567899, -0.127595, -0.813148,
		30.557171, 34.641838, 32.865719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.373297, 35.091251, 32.839897>,  <30.954700, 34.731155, 33.434925>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.373297, 35.091251, 32.839897> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.032009, 35.000061, 32.652264>,  <30.827236, 34.945347, 32.539684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.032009, 35.000061, 32.652264>,  <31.373297, 35.091251, 32.839897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.032009, 35.000061, 32.652264> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166487, 0.733297, -0.659209,
		0.494265, -0.640548, -0.587708,
		-0.853220, -0.227978, -0.469086,
		30.776043, 34.931667, 32.511539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.467817, 35.011223, 32.084812>,  <31.373297, 35.091251, 32.839897>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.467817, 35.011223, 32.084812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.081013, 35.108467, 32.115242>,  <30.848930, 35.166813, 32.133499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.081013, 35.108467, 32.115242>,  <31.467817, 35.011223, 32.084812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.081013, 35.108467, 32.115242> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095407, 0.622563, -0.776733,
		-0.236193, -0.743851, -0.625219,
		-0.967011, 0.243109, 0.076076,
		30.790909, 35.181400, 32.138065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.241774, 35.147865, 31.449747>,  <31.467817, 35.011223, 32.084812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.241774, 35.147865, 31.449747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.968225, 35.337666, 31.671440>,  <30.804096, 35.451546, 31.804455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.968225, 35.337666, 31.671440>,  <31.241774, 35.147865, 31.449747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.968225, 35.337666, 31.671440> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025109, 0.774490, -0.632087,
		-0.729170, -0.418350, -0.541566,
		-0.683872, 0.474497, 0.554231,
		30.763063, 35.480015, 31.837709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.929008, 35.349236, 30.920252>,  <31.241774, 35.147865, 31.449747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.929008, 35.349236, 30.920252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.830610, 35.565372, 31.242125>,  <30.771570, 35.695057, 31.435247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.830610, 35.565372, 31.242125>,  <30.929008, 35.349236, 30.920252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.830610, 35.565372, 31.242125> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152507, 0.798276, -0.582664,
		-0.957198, -0.266053, -0.113967,
		-0.245996, 0.540344, 0.804682,
		30.756811, 35.727474, 31.483530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.384621, 35.694740, 30.819845>,  <30.929008, 35.349236, 30.920252>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.384621, 35.694740, 30.819845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.521946, 35.944012, 31.100924>,  <30.604342, 36.093575, 31.269571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.521946, 35.944012, 31.100924>,  <30.384621, 35.694740, 30.819845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.521946, 35.944012, 31.100924> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214233, 0.780404, -0.587430,
		-0.914462, 0.051132, 0.401429,
		0.343314, 0.623181, 0.702696,
		30.624941, 36.130966, 31.311731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.934656, 36.321228, 30.654757>,  <30.384621, 35.694740, 30.819845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.934656, 36.321228, 30.654757> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.234364, 36.430786, 30.895948>,  <30.414188, 36.496521, 31.040663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.234364, 36.430786, 30.895948>,  <29.934656, 36.321228, 30.654757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.234364, 36.430786, 30.895948> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071628, 0.938648, -0.337357,
		-0.658383, 0.209581, 0.722916,
		0.749267, 0.273891, 0.602978,
		30.459145, 36.512955, 31.076841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.679373, 36.911301, 30.933861>,  <29.934656, 36.321228, 30.654757>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.679373, 36.911301, 30.933861> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.073996, 36.951065, 30.985746>,  <30.310768, 36.974926, 31.016878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.073996, 36.951065, 30.985746>,  <29.679373, 36.911301, 30.933861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.073996, 36.951065, 30.985746> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040658, 0.918050, -0.394375,
		-0.158288, 0.383799, 0.909749,
		0.986556, 0.099414, 0.129712,
		30.369963, 36.980888, 31.024660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.843304, 37.460289, 31.359015>,  <29.679373, 36.911301, 30.933861>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.843304, 37.460289, 31.359015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.191813, 37.426689, 31.165590>,  <30.400917, 37.406528, 31.049536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.191813, 37.426689, 31.165590>,  <29.843304, 37.460289, 31.359015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.191813, 37.426689, 31.165590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129594, 0.910903, -0.391740,
		0.473385, 0.403978, 0.782756,
		0.871270, -0.084004, -0.483561,
		30.453194, 37.401489, 31.020521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.279211, 38.190487, 31.479706>,  <29.843304, 37.460289, 31.359015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.279211, 38.190487, 31.479706> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.389063, 37.985931, 31.153992>,  <30.454973, 37.863197, 30.958563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.389063, 37.985931, 31.153992>,  <30.279211, 38.190487, 31.479706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.389063, 37.985931, 31.153992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085394, 0.830530, -0.550389,
		0.957751, 0.220688, 0.184419,
		0.274629, -0.511387, -0.814286,
		30.471451, 37.832516, 30.909706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.724064, 38.570850, 31.155897>,  <30.279211, 38.190487, 31.479706>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.724064, 38.570850, 31.155897> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.654926, 38.327545, 30.846024>,  <30.613443, 38.181561, 30.660099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.654926, 38.327545, 30.846024>,  <30.724064, 38.570850, 31.155897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.654926, 38.327545, 30.846024> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143967, 0.793679, -0.591056,
		0.974370, 0.009368, -0.224754,
		-0.172845, -0.608265, -0.774686,
		30.603073, 38.145065, 30.613617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.070429, 38.878819, 30.553415>,  <30.724064, 38.570850, 31.155897>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.070429, 38.878819, 30.553415> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.818413, 38.613468, 30.391928>,  <30.667204, 38.454258, 30.295036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.818413, 38.613468, 30.391928>,  <31.070429, 38.878819, 30.553415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.818413, 38.613468, 30.391928> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165503, 0.622637, -0.764808,
		0.758722, -0.415043, -0.502076,
		-0.630039, -0.663372, -0.403718,
		30.629400, 38.414455, 30.270813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.300516, 38.798443, 29.869415>,  <31.070429, 38.878819, 30.553415>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.300516, 38.798443, 29.869415> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.912632, 38.701809, 29.855015>,  <30.679901, 38.643829, 29.846375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.912632, 38.701809, 29.855015>,  <31.300516, 38.798443, 29.869415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.912632, 38.701809, 29.855015> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115911, 0.584889, -0.802789,
		0.215002, -0.774300, -0.595176,
		-0.969711, -0.241588, -0.036002,
		30.621719, 38.629333, 29.844213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.051744, 38.534653, 29.208862>,  <31.300516, 38.798443, 29.869415>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.051744, 38.534653, 29.208862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.711901, 38.664505, 29.375130>,  <30.507994, 38.742416, 29.474890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.711901, 38.664505, 29.375130>,  <31.051744, 38.534653, 29.208862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.711901, 38.664505, 29.375130> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185838, 0.553321, -0.811973,
		-0.493589, -0.767106, -0.409778,
		-0.849608, 0.324628, 0.415671,
		30.457018, 38.761894, 29.499830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.672842, 38.716156, 28.583406>,  <31.051744, 38.534653, 29.208862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.672842, 38.716156, 28.583406> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.404148, 38.834305, 28.855150>,  <30.242931, 38.905193, 29.018196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.404148, 38.834305, 28.855150>,  <30.672842, 38.716156, 28.583406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.404148, 38.834305, 28.855150> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403200, 0.623550, -0.669787,
		-0.621452, -0.723836, -0.299764,
		-0.671734, 0.295376, 0.679357,
		30.202627, 38.922916, 29.058958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.084795, 38.569717, 28.291574>,  <30.672842, 38.716156, 28.583406>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.084795, 38.569717, 28.291574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.989050, 38.837151, 28.573200>,  <29.931602, 38.997608, 28.742176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.989050, 38.837151, 28.573200>,  <30.084795, 38.569717, 28.291574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.989050, 38.837151, 28.573200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435979, 0.573916, -0.693212,
		-0.867541, -0.472886, 0.154113,
		-0.239363, 0.668580, 0.704064,
		29.917240, 39.037724, 28.784420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.329182, 38.733791, 28.346014>,  <30.084795, 38.569717, 28.291574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.329182, 38.733791, 28.346014> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.537897, 39.058350, 28.451370>,  <29.663126, 39.253086, 28.514584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.537897, 39.058350, 28.451370>,  <29.329182, 38.733791, 28.346014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.537897, 39.058350, 28.451370> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474182, 0.532527, -0.701118,
		-0.709147, 0.240939, 0.662615,
		0.521787, 0.811396, 0.263391,
		29.694433, 39.301769, 28.530388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.892076, 39.221600, 28.041943>,  <29.329182, 38.733791, 28.346014>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.892076, 39.221600, 28.041943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.206362, 39.446056, 28.146078>,  <29.394932, 39.580730, 28.208559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.206362, 39.446056, 28.146078>,  <28.892076, 39.221600, 28.041943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.206362, 39.446056, 28.146078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217658, 0.644731, -0.732767,
		-0.579035, 0.519078, 0.628710,
		0.785712, 0.561141, 0.260341,
		29.442076, 39.614399, 28.224180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.645683, 39.956570, 28.052423>,  <28.892076, 39.221600, 28.041943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.645683, 39.956570, 28.052423> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.040150, 39.933109, 27.990406>,  <29.276829, 39.919033, 27.953196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.040150, 39.933109, 27.990406>,  <28.645683, 39.956570, 28.052423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.040150, 39.933109, 27.990406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100864, 0.529911, -0.842034,
		0.131547, 0.846023, 0.516663,
		0.986165, -0.058654, -0.155042,
		29.335999, 39.915512, 27.943893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.908699, 40.656960, 27.879833>,  <28.645683, 39.956570, 28.052423>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.908699, 40.656960, 27.879833> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.186258, 40.407246, 27.736292>,  <29.352793, 40.257416, 27.650167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.186258, 40.407246, 27.736292>,  <28.908699, 40.656960, 27.879833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.186258, 40.407246, 27.736292> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118859, 0.590819, -0.798001,
		0.710196, 0.511078, 0.484170,
		0.693897, -0.624285, -0.358851,
		29.394428, 40.219959, 27.628637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.469254, 41.090935, 27.650906>,  <28.908699, 40.656960, 27.879833>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.469254, 41.090935, 27.650906> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.487036, 40.738029, 27.463448>,  <29.497705, 40.526287, 27.350973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.487036, 40.738029, 27.463448>,  <29.469254, 41.090935, 27.650906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.487036, 40.738029, 27.463448> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047064, 0.470438, -0.881177,
		0.997902, 0.017118, 0.062438,
		0.044457, -0.882267, -0.468646,
		29.500372, 40.473351, 27.322853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.400707, 34.857552, 44.871262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.096321, 34.617008, 44.968670>,  <36.913689, 34.472683, 45.027115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.096321, 34.617008, 44.968670>,  <37.400707, 34.857552, 44.871262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096321, 34.617008, 44.968670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108146, 0.487658, 0.866310,
		-0.639715, 0.632898, -0.436126,
		-0.760966, -0.601357, 0.243517,
		36.868031, 34.436600, 45.041725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878593, 35.305958, 45.179108>,  <37.400707, 34.857552, 44.871262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878593, 35.305958, 45.179108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.753834, 34.940842, 45.284580>,  <36.678978, 34.721771, 45.347862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.753834, 34.940842, 45.284580>,  <36.878593, 35.305958, 45.179108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753834, 34.940842, 45.284580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300059, 0.357956, 0.884213,
		-0.901490, 0.196665, -0.385538,
		-0.311899, -0.912792, 0.263683,
		36.660263, 34.667004, 45.363686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458466, 35.491871, 45.702034>,  <36.878593, 35.305958, 45.179108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458466, 35.491871, 45.702034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.479748, 35.099514, 45.776886>,  <36.492516, 34.864101, 45.821796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.479748, 35.099514, 45.776886>,  <36.458466, 35.491871, 45.702034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479748, 35.099514, 45.776886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163078, 0.176345, 0.970726,
		-0.985178, -0.082161, -0.150580,
		0.053202, -0.980894, 0.187130,
		36.495708, 34.805244, 45.833023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910549, 35.402779, 45.980553>,  <36.458466, 35.491871, 45.702034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910549, 35.402779, 45.980553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.116299, 35.083145, 46.105057>,  <36.239750, 34.891365, 46.179760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.116299, 35.083145, 46.105057>,  <35.910549, 35.402779, 45.980553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.116299, 35.083145, 46.105057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303776, 0.169647, 0.937518,
		-0.801960, -0.576790, -0.155480,
		0.514375, -0.799083, 0.311265,
		36.270611, 34.843422, 46.198437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.475498, 35.036213, 46.390903>,  <35.910549, 35.402779, 45.980553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.475498, 35.036213, 46.390903> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.843826, 34.923908, 46.499168>,  <36.064823, 34.856525, 46.564129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.843826, 34.923908, 46.499168>,  <35.475498, 35.036213, 46.390903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843826, 34.923908, 46.499168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218503, 0.203432, 0.954396,
		-0.323020, -0.937970, 0.125977,
		0.920823, -0.280763, 0.270663,
		36.120071, 34.839680, 46.580368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410011, 34.599361, 46.993248>,  <35.475498, 35.036213, 46.390903>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410011, 34.599361, 46.993248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.788963, 34.726101, 47.011520>,  <36.016335, 34.802143, 47.022484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.788963, 34.726101, 47.011520>,  <35.410011, 34.599361, 46.993248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.788963, 34.726101, 47.011520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075787, 0.083350, 0.993634,
		0.311022, -0.944808, 0.102977,
		0.947376, 0.316846, 0.045680,
		36.073177, 34.821156, 47.025223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693180, 34.300117, 47.576416>,  <35.410011, 34.599361, 46.993248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693180, 34.300117, 47.576416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.969212, 34.584141, 47.520390>,  <36.134830, 34.754555, 47.486774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.969212, 34.584141, 47.520390>,  <35.693180, 34.300117, 47.576416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.969212, 34.584141, 47.520390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041695, 0.232214, 0.971771,
		0.722537, -0.664754, 0.189850,
		0.690074, 0.710055, -0.140066,
		36.176235, 34.797157, 47.478371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199978, 34.194252, 48.000378>,  <35.693180, 34.300117, 47.576416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199978, 34.194252, 48.000378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.252190, 34.582111, 47.917679>,  <36.283516, 34.814827, 47.868061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.252190, 34.582111, 47.917679>,  <36.199978, 34.194252, 48.000378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.252190, 34.582111, 47.917679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254678, 0.168737, 0.952191,
		0.958176, -0.176943, -0.224923,
		0.130531, 0.969649, -0.206743,
		36.291348, 34.873005, 47.855656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814217, 34.519985, 48.393036>,  <36.199978, 34.194252, 48.000378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.814217, 34.519985, 48.393036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.599987, 34.841957, 48.290863>,  <36.471451, 35.035141, 48.229561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.599987, 34.841957, 48.290863>,  <36.814217, 34.519985, 48.393036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599987, 34.841957, 48.290863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086886, 0.248340, 0.964768,
		0.840008, 0.538896, -0.063066,
		-0.535572, 0.804934, -0.255430,
		36.439316, 35.083439, 48.214233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144157, 35.087681, 48.750019>,  <36.814217, 34.519985, 48.393036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144157, 35.087681, 48.750019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.767532, 35.196709, 48.670860>,  <36.541557, 35.262123, 48.623367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.767532, 35.196709, 48.670860>,  <37.144157, 35.087681, 48.750019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.767532, 35.196709, 48.670860> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117001, 0.286277, 0.950977,
		0.315856, 0.918561, -0.237658,
		-0.941565, 0.272566, -0.197895,
		36.485062, 35.278477, 48.611492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081345, 35.776882, 49.045742>,  <37.144157, 35.087681, 48.750019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.081345, 35.776882, 49.045742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.717014, 35.614819, 49.014141>,  <36.498417, 35.517582, 48.995182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.717014, 35.614819, 49.014141>,  <37.081345, 35.776882, 49.045742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717014, 35.614819, 49.014141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150555, 0.147867, 0.977481,
		-0.384351, 0.902211, -0.195680,
		-0.910828, -0.405156, -0.079000,
		36.443768, 35.493271, 48.990440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672920, 36.144989, 49.535248>,  <37.081345, 35.776882, 49.045742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.672920, 36.144989, 49.535248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.441532, 35.828003, 49.457912>,  <36.302700, 35.637814, 49.411510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.441532, 35.828003, 49.457912>,  <36.672920, 36.144989, 49.535248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.441532, 35.828003, 49.457912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365556, 0.039968, 0.929931,
		-0.729209, 0.608609, -0.312809,
		-0.578467, -0.792463, -0.193336,
		36.267994, 35.590263, 49.399910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.970783, 36.297802, 49.571018>,  <36.672920, 36.144989, 49.535248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.970783, 36.297802, 49.571018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.030037, 35.912125, 49.659012>,  <36.065590, 35.680717, 49.711807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.030037, 35.912125, 49.659012>,  <35.970783, 36.297802, 49.571018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.030037, 35.912125, 49.659012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493513, 0.120694, 0.861323,
		-0.857031, -0.236151, -0.457963,
		0.148130, -0.964191, 0.219982,
		36.074474, 35.622868, 49.725006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763538, 36.778339, 50.047092>,  <35.970783, 36.297802, 49.571018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763538, 36.778339, 50.047092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.464455, 36.936440, 50.260521>,  <35.285004, 37.031300, 50.388580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.464455, 36.936440, 50.260521>,  <35.763538, 36.778339, 50.047092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464455, 36.936440, 50.260521> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221166, -0.905906, 0.361138,
		0.626109, 0.152019, 0.764773,
		-0.747713, 0.395253, 0.533574,
		35.240139, 37.055016, 50.420593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206062, 37.312443, 49.834167>,  <35.763538, 36.778339, 50.047092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206062, 37.312443, 49.834167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.874035, 37.534927, 49.850204>,  <34.674816, 37.668419, 49.859825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.874035, 37.534927, 49.850204>,  <35.206062, 37.312443, 49.834167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.874035, 37.534927, 49.850204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092369, 0.208031, -0.973751,
		-0.549951, -0.804581, -0.224057,
		-0.830073, 0.556212, 0.040088,
		34.625011, 37.701790, 49.862232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722435, 37.055096, 49.248119>,  <35.206062, 37.312443, 49.834167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.722435, 37.055096, 49.248119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.595413, 37.421463, 49.346310>,  <34.519199, 37.641281, 49.405224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.595413, 37.421463, 49.346310>,  <34.722435, 37.055096, 49.248119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595413, 37.421463, 49.346310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194022, 0.316158, -0.928655,
		-0.928178, -0.247270, -0.278105,
		-0.317554, 0.915916, 0.245475,
		34.500149, 37.696239, 49.419952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402027, 37.200314, 48.765697>,  <34.722435, 37.055096, 49.248119>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402027, 37.200314, 48.765697> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.455009, 37.567921, 48.914223>,  <34.486797, 37.788483, 49.003338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.455009, 37.567921, 48.914223>,  <34.402027, 37.200314, 48.765697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.455009, 37.567921, 48.914223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204062, 0.341301, -0.917536,
		-0.969956, 0.197302, -0.142329,
		0.132455, 0.919013, 0.371309,
		34.494747, 37.843624, 49.025616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.956207, 37.710575, 48.421814>,  <34.402027, 37.200314, 48.765697>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.956207, 37.710575, 48.421814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.253372, 37.947754, 48.546062>,  <34.431671, 38.090061, 48.620613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.253372, 37.947754, 48.546062>,  <33.956207, 37.710575, 48.421814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.253372, 37.947754, 48.546062> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089749, 0.371617, -0.924038,
		-0.663341, 0.714360, 0.222864,
		0.742916, 0.592950, 0.310622,
		34.476246, 38.125641, 48.639248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.942608, 38.335068, 48.030449>,  <33.956207, 37.710575, 48.421814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.942608, 38.335068, 48.030449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.317211, 38.312824, 48.168926>,  <34.541973, 38.299477, 48.252014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.317211, 38.312824, 48.168926>,  <33.942608, 38.335068, 48.030449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.317211, 38.312824, 48.168926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349839, 0.214660, -0.911885,
		-0.023605, 0.975105, 0.220486,
		0.936513, -0.055610, 0.346196,
		34.598164, 38.296143, 48.272785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.293152, 38.974037, 47.701374>,  <33.942608, 38.335068, 48.030449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.293152, 38.974037, 47.701374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.552208, 38.693726, 47.821022>,  <34.707642, 38.525539, 47.892811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.552208, 38.693726, 47.821022>,  <34.293152, 38.974037, 47.701374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552208, 38.693726, 47.821022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439053, 0.022381, -0.898182,
		0.622731, 0.713029, 0.322174,
		0.647641, -0.700777, 0.299120,
		34.746502, 38.483494, 47.910759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037464, 39.110271, 47.514137>,  <34.293152, 38.974037, 47.701374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037464, 39.110271, 47.514137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.018669, 38.714844, 47.571438>,  <35.007393, 38.477585, 47.605816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.018669, 38.714844, 47.571438>,  <35.037464, 39.110271, 47.514137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.018669, 38.714844, 47.571438> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349320, -0.150613, -0.924819,
		0.935824, 0.006582, 0.352405,
		-0.046990, -0.988571, 0.143247,
		35.004574, 38.418274, 47.614410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598572, 38.916294, 47.025490>,  <35.037464, 39.110271, 47.514137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598572, 38.916294, 47.025490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.494740, 38.547520, 47.140484>,  <35.432442, 38.326256, 47.209480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.494740, 38.547520, 47.140484>,  <35.598572, 38.916294, 47.025490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.494740, 38.547520, 47.140484> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272953, -0.355592, -0.893897,
		0.926346, -0.153566, 0.343950,
		-0.259578, -0.921939, 0.287485,
		35.416866, 38.270939, 47.226730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181942, 38.555286, 46.966663>,  <35.598572, 38.916294, 47.025490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.181942, 38.555286, 46.966663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.873005, 38.302494, 46.941101>,  <35.687641, 38.150818, 46.925762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.873005, 38.302494, 46.941101>,  <36.181942, 38.555286, 46.966663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.873005, 38.302494, 46.941101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397651, -0.402599, -0.824493,
		0.495334, -0.662205, 0.562253,
		-0.772346, -0.631980, -0.063905,
		35.641300, 38.112900, 46.921928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493614, 37.961220, 46.681927>,  <36.181942, 38.555286, 46.966663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.493614, 37.961220, 46.681927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.105415, 37.925625, 46.592285>,  <35.872498, 37.904266, 46.538502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.105415, 37.925625, 46.592285>,  <36.493614, 37.961220, 46.681927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105415, 37.925625, 46.592285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241070, -0.338563, -0.909538,
		0.005066, -0.936726, 0.350027,
		-0.970494, -0.088989, -0.224101,
		35.814266, 37.898930, 46.525055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.378326, 37.233128, 46.461948>,  <36.493614, 37.961220, 46.681927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.378326, 37.233128, 46.461948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.081837, 37.458412, 46.315861>,  <35.903942, 37.593582, 46.228210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.081837, 37.458412, 46.315861>,  <36.378326, 37.233128, 46.461948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.081837, 37.458412, 46.315861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165407, -0.374053, -0.912538,
		-0.650560, -0.736804, 0.184098,
		-0.741224, 0.563209, -0.365216,
		35.859470, 37.627377, 46.206295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019150, 36.779327, 46.076180>,  <36.378326, 37.233128, 46.461948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.019150, 36.779327, 46.076180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.892757, 37.129154, 45.929058>,  <35.816921, 37.339050, 45.840786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.892757, 37.129154, 45.929058>,  <36.019150, 36.779327, 46.076180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892757, 37.129154, 45.929058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068007, -0.365788, -0.928210,
		-0.946324, -0.318313, 0.056106,
		-0.315985, 0.874572, -0.367801,
		35.797962, 37.391525, 45.818718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372604, 36.727249, 45.556995>,  <36.019150, 36.779327, 46.076180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372604, 36.727249, 45.556995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.575016, 37.062401, 45.475121>,  <35.696465, 37.263493, 45.425995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.575016, 37.062401, 45.475121>,  <35.372604, 36.727249, 45.556995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.575016, 37.062401, 45.475121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003847, -0.239504, -0.970888,
		-0.862507, 0.490511, -0.124420,
		0.506030, 0.837876, -0.204687,
		35.726826, 37.313763, 45.413715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198101, 36.748642, 44.935539>,  <35.372604, 36.727249, 45.556995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198101, 36.748642, 44.935539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.461040, 37.049713, 44.950363>,  <35.618805, 37.230354, 44.959255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.461040, 37.049713, 44.950363>,  <35.198101, 36.748642, 44.935539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461040, 37.049713, 44.950363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081147, -0.021810, -0.996463,
		-0.749208, 0.658028, -0.075414,
		0.657345, 0.752678, 0.037057,
		35.658245, 37.275517, 44.961479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586517, 37.197208, 44.774536>,  <35.198101, 36.748642, 44.935539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586517, 37.197208, 44.774536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.194336, 37.142765, 44.717697>,  <33.959026, 37.110100, 44.683594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.194336, 37.142765, 44.717697>,  <34.586517, 37.197208, 44.774536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.194336, 37.142765, 44.717697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156151, 0.098810, 0.982778,
		-0.119724, 0.985754, -0.118132,
		-0.980450, -0.136109, -0.142097,
		33.900200, 37.101933, 44.675068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.367527, 37.527405, 45.326496>,  <34.586517, 37.197208, 44.774536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.367527, 37.527405, 45.326496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.040916, 37.316216, 45.233089>,  <33.844948, 37.189503, 45.177048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.040916, 37.316216, 45.233089>,  <34.367527, 37.527405, 45.326496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.040916, 37.316216, 45.233089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232316, -0.069787, 0.970133,
		-0.528497, 0.846391, -0.065673,
		-0.816529, -0.527970, -0.233512,
		33.795959, 37.157825, 45.163036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876740, 37.909660, 45.741730>,  <34.367527, 37.527405, 45.326496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876740, 37.909660, 45.741730> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.715378, 37.549870, 45.674561>,  <33.618561, 37.333992, 45.634258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.715378, 37.549870, 45.674561>,  <33.876740, 37.909660, 45.741730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715378, 37.549870, 45.674561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367392, -0.008860, 0.930024,
		-0.838027, 0.436869, -0.326888,
		-0.403402, -0.899482, -0.167927,
		33.594357, 37.280025, 45.624184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.223267, 37.932808, 45.991787>,  <33.876740, 37.909660, 45.741730>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.223267, 37.932808, 45.991787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.307636, 37.542332, 45.971558>,  <33.358257, 37.308044, 45.959419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.307636, 37.542332, 45.971558>,  <33.223267, 37.932808, 45.991787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307636, 37.542332, 45.971558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310006, -0.115871, 0.943647,
		-0.927042, -0.183361, -0.327065,
		0.210926, -0.976193, -0.050574,
		33.370914, 37.249474, 45.956387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.633385, 37.568756, 46.058949>,  <33.223267, 37.932808, 45.991787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.633385, 37.568756, 46.058949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.920731, 37.310154, 46.161705>,  <33.093136, 37.154995, 46.223358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.920731, 37.310154, 46.161705>,  <32.633385, 37.568756, 46.058949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.920731, 37.310154, 46.161705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439385, -0.135362, 0.888042,
		-0.539348, -0.750808, -0.381302,
		0.718363, -0.646502, 0.256886,
		33.136238, 37.116203, 46.238770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.342281, 37.010944, 46.344524>,  <32.633385, 37.568756, 46.058949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.342281, 37.010944, 46.344524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.710079, 36.985069, 46.499622>,  <32.930759, 36.969543, 46.592682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.710079, 36.985069, 46.499622>,  <32.342281, 37.010944, 46.344524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710079, 36.985069, 46.499622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391664, -0.235158, 0.889551,
		0.033636, -0.969802, -0.241563,
		0.919493, -0.064691, 0.387746,
		32.985928, 36.965664, 46.615948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.278542, 36.489616, 46.734798>,  <32.342281, 37.010944, 46.344524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.278542, 36.489616, 46.734798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.605724, 36.686855, 46.853325>,  <32.802032, 36.805199, 46.924442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.605724, 36.686855, 46.853325>,  <32.278542, 36.489616, 46.734798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.605724, 36.686855, 46.853325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337314, -0.006160, 0.941372,
		0.466011, -0.869954, 0.161290,
		0.817956, 0.493095, 0.296318,
		32.851112, 36.834785, 46.942219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.132824, 35.669632, 46.706818>,  <32.278542, 36.489616, 46.734798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.132824, 35.669632, 46.706818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.768972, 35.508545, 46.747593>,  <31.550661, 35.411892, 46.772057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.768972, 35.508545, 46.747593>,  <32.132824, 35.669632, 46.706818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.768972, 35.508545, 46.747593> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019556, -0.203604, -0.978858,
		0.414960, -0.892391, 0.177328,
		-0.909629, -0.402719, 0.101939,
		31.496084, 35.387730, 46.778175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.124565, 34.904011, 46.500568>,  <32.132824, 35.669632, 46.706818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.124565, 34.904011, 46.500568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.749928, 35.034920, 46.450478>,  <31.525145, 35.113464, 46.420425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.749928, 35.034920, 46.450478>,  <32.124565, 34.904011, 46.500568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.749928, 35.034920, 46.450478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024956, -0.294157, -0.955431,
		-0.349525, -0.897977, 0.267338,
		-0.936595, 0.327276, -0.125225,
		31.468948, 35.133102, 46.412910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.793970, 34.386047, 46.091961>,  <32.124565, 34.904011, 46.500568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.793970, 34.386047, 46.091961> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.600801, 34.733433, 46.047127>,  <31.484900, 34.941864, 46.020226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.600801, 34.733433, 46.047127>,  <31.793970, 34.386047, 46.091961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.600801, 34.733433, 46.047127> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115498, -0.063708, -0.991263,
		-0.868013, -0.491649, -0.069540,
		-0.482923, 0.868460, -0.112084,
		31.455925, 34.993969, 46.013500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.168125, 34.270985, 45.652294>,  <31.793970, 34.386047, 46.091961>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.168125, 34.270985, 45.652294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.247614, 34.661518, 45.618149>,  <31.295307, 34.895836, 45.597660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.247614, 34.661518, 45.618149>,  <31.168125, 34.270985, 45.652294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.247614, 34.661518, 45.618149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087685, -0.104466, -0.990656,
		-0.976125, 0.189380, -0.106369,
		0.198723, 0.976331, -0.085366,
		31.307230, 34.954418, 45.592541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.743282, 34.446400, 45.155258>,  <31.168125, 34.270985, 45.652294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.743282, 34.446400, 45.155258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.038731, 34.715630, 45.170280>,  <31.216000, 34.877167, 45.179295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.038731, 34.715630, 45.170280>,  <30.743282, 34.446400, 45.155258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.038731, 34.715630, 45.170280> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129523, -0.087025, -0.987750,
		-0.661559, 0.734439, -0.151457,
		0.738623, 0.673072, 0.037554,
		31.260317, 34.917553, 45.181545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.617582, 34.854713, 44.650124>,  <30.743282, 34.446400, 45.155258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.617582, 34.854713, 44.650124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.007700, 34.920788, 44.708790>,  <31.241772, 34.960430, 44.743992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.007700, 34.920788, 44.708790>,  <30.617582, 34.854713, 44.650124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.007700, 34.920788, 44.708790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168986, -0.130281, -0.976970,
		-0.142269, 0.977620, -0.154976,
		0.975296, 0.165182, 0.146669,
		31.300289, 34.970341, 44.752792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.723671, 35.271938, 44.039131>,  <30.617582, 34.854713, 44.650124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.723671, 35.271938, 44.039131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.077959, 35.164673, 44.190704>,  <31.290531, 35.100315, 44.281647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.077959, 35.164673, 44.190704>,  <30.723671, 35.271938, 44.039131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.077959, 35.164673, 44.190704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356781, -0.129000, -0.925239,
		0.296997, 0.954698, -0.018582,
		0.885720, -0.268163, 0.378930,
		31.343676, 35.084225, 44.304382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<33.982761, 32.637787, 48.967426> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.904232, 32.758087, 49.340736>,  <33.857113, 32.830269, 49.564724>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.904232, 32.758087, 49.340736>,  <33.982761, 32.637787, 48.967426>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.904232, 32.758087, 49.340736> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749496, 0.659725, -0.054937,
		-0.632228, 0.688702, -0.354933,
		-0.196323, 0.300754, 0.933276,
		33.845337, 32.848312, 49.620720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117043, 33.257145, 48.713882>,  <33.982761, 32.637787, 48.967426>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117043, 33.257145, 48.713882> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.514034, 33.299747, 48.737995>,  <34.752232, 33.325310, 48.752464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.514034, 33.299747, 48.737995>,  <34.117043, 33.257145, 48.713882>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514034, 33.299747, 48.737995> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104852, -0.486000, -0.867646,
		-0.063109, 0.867445, -0.493514,
		0.992483, 0.106502, 0.060283,
		34.811779, 33.331699, 48.756081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385815, 33.564720, 48.132439>,  <34.117043, 33.257145, 48.713882>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385815, 33.564720, 48.132439> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.709511, 33.377689, 48.274712>,  <34.903728, 33.265472, 48.360077>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.709511, 33.377689, 48.274712>,  <34.385815, 33.564720, 48.132439>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.709511, 33.377689, 48.274712> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220645, -0.319214, -0.921639,
		0.544475, 0.824303, -0.155152,
		0.809236, -0.467576, 0.355682,
		34.952282, 33.237415, 48.381416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.926178, 33.649796, 47.573662>,  <34.385815, 33.564720, 48.132439>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.926178, 33.649796, 47.573662> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.080223, 33.359970, 47.802292>,  <35.172649, 33.186077, 47.939468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.080223, 33.359970, 47.802292>,  <34.926178, 33.649796, 47.573662>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.080223, 33.359970, 47.802292> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341360, -0.463576, -0.817662,
		0.857414, 0.510008, 0.068805,
		0.385118, -0.724562, 0.571572,
		35.195759, 33.142601, 47.973763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.576534, 33.433720, 47.303158>,  <34.926178, 33.649796, 47.573662>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.576534, 33.433720, 47.303158> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.474834, 33.108219, 47.512218>,  <35.413815, 32.912918, 47.637653>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.474834, 33.108219, 47.512218>,  <35.576534, 33.433720, 47.303158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474834, 33.108219, 47.512218> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377585, -0.581040, -0.720987,
		0.890385, 0.014033, 0.454991,
		-0.254250, -0.813754, 0.522648,
		35.398560, 32.864094, 47.669014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185562, 32.911369, 47.272480>,  <35.576534, 33.433720, 47.303158>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185562, 32.911369, 47.272480> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.845150, 32.717857, 47.354156>,  <35.640903, 32.601749, 47.403164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.845150, 32.717857, 47.354156>,  <36.185562, 32.911369, 47.272480>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.845150, 32.717857, 47.354156> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183898, -0.638810, -0.747063,
		0.491856, -0.598226, 0.632616,
		-0.851034, -0.483784, 0.204190,
		35.589840, 32.572723, 47.415413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298183, 32.146027, 47.288517>,  <36.185562, 32.911369, 47.272480>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298183, 32.146027, 47.288517> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.901020, 32.122375, 47.247253>,  <35.662724, 32.108185, 47.222496>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.901020, 32.122375, 47.247253>,  <36.298183, 32.146027, 47.288517>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901020, 32.122375, 47.247253> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114181, -0.716206, -0.688485,
		-0.033173, -0.695379, 0.717877,
		-0.992906, -0.059128, -0.103158,
		35.603149, 32.104637, 47.216305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.105621, 31.428200, 47.259808>,  <36.298183, 32.146027, 47.288517>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.105621, 31.428200, 47.259808> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.793411, 31.632748, 47.115982>,  <35.606087, 31.755476, 47.029686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.793411, 31.632748, 47.115982>,  <36.105621, 31.428200, 47.259808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793411, 31.632748, 47.115982> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111794, -0.680092, -0.724553,
		-0.615049, -0.525334, 0.587996,
		-0.780524, 0.511370, -0.359560,
		35.559254, 31.786160, 47.008114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.601818, 30.951714, 47.078644>,  <36.105621, 31.428200, 47.259808>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.601818, 30.951714, 47.078644> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.509315, 31.280737, 46.870827>,  <35.453815, 31.478151, 46.746136>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.509315, 31.280737, 46.870827>,  <35.601818, 30.951714, 47.078644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509315, 31.280737, 46.870827> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197941, -0.562626, -0.802665,
		-0.952544, -0.082781, 0.292928,
		-0.231254, 0.822556, -0.519541,
		35.439938, 31.527504, 46.714966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980900, 30.708824, 46.615520>,  <35.601818, 30.951714, 47.078644>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980900, 30.708824, 46.615520> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.108727, 31.051519, 46.453594>,  <35.185425, 31.257137, 46.356438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.108727, 31.051519, 46.453594>,  <34.980900, 30.708824, 46.615520>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108727, 31.051519, 46.453594> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061151, -0.407680, -0.911075,
		-0.945587, 0.315907, -0.077892,
		0.319570, 0.856738, -0.404815,
		35.204597, 31.308540, 46.332150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483883, 30.885674, 46.103523>,  <34.980900, 30.708824, 46.615520>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483883, 30.885674, 46.103523> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.830208, 31.045313, 45.982803>,  <35.038002, 31.141098, 45.910370>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.830208, 31.045313, 45.982803>,  <34.483883, 30.885674, 46.103523>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.830208, 31.045313, 45.982803> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152854, -0.363361, -0.919024,
		-0.476445, 0.841836, -0.253600,
		0.865815, 0.399101, -0.301800,
		35.089951, 31.165043, 45.892262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.267307, 31.188309, 45.422371>,  <34.483883, 30.885674, 46.103523>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.267307, 31.188309, 45.422371> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.664371, 31.149771, 45.451618>,  <34.902611, 31.126648, 45.469166>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.664371, 31.149771, 45.451618>,  <34.267307, 31.188309, 45.422371>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664371, 31.149771, 45.451618> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028668, -0.399888, -0.916116,
		0.117504, 0.911486, -0.394190,
		0.992659, -0.096346, 0.073119,
		34.962170, 31.120867, 45.473553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843796, 31.810658, 45.305367>,  <34.267307, 31.188309, 45.422371>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.843796, 31.810658, 45.305367> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.511616, 31.756716, 45.089153>,  <33.312309, 31.724350, 44.959427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.511616, 31.756716, 45.089153>,  <33.843796, 31.810658, 45.305367>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.511616, 31.756716, 45.089153> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557060, 0.212515, 0.802821,
		0.006606, 0.967807, -0.251605,
		-0.830446, -0.134856, -0.540531,
		33.262482, 31.716259, 44.926994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.403336, 32.281883, 45.627510>,  <33.843796, 31.810658, 45.305367>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.403336, 32.281883, 45.627510> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.122608, 32.103203, 45.405552>,  <32.954170, 31.995995, 45.272377>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.122608, 32.103203, 45.405552>,  <33.403336, 32.281883, 45.627510>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122608, 32.103203, 45.405552> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698559, 0.279026, 0.658908,
		-0.139507, 0.850060, -0.507874,
		-0.701821, -0.446702, -0.554891,
		32.912064, 31.969193, 45.239086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.817924, 32.765114, 45.541370>,  <33.403336, 32.281883, 45.627510>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.817924, 32.765114, 45.541370> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.683392, 32.393917, 45.477238>,  <32.602673, 32.171200, 45.438759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.683392, 32.393917, 45.477238>,  <32.817924, 32.765114, 45.541370>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.683392, 32.393917, 45.477238> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770990, 0.173565, 0.612740,
		-0.540792, 0.329696, -0.773850,
		-0.336331, -0.927995, -0.160330,
		32.582493, 32.115517, 45.429138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.144608, 32.866119, 45.336681>,  <32.817924, 32.765114, 45.541370>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.144608, 32.866119, 45.336681> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.153698, 32.492619, 45.479565>,  <32.159153, 32.268520, 45.565292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.153698, 32.492619, 45.479565>,  <32.144608, 32.866119, 45.336681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.153698, 32.492619, 45.479565> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841370, 0.175117, 0.511302,
		-0.539981, -0.312164, -0.781649,
		0.022730, -0.933750, 0.357205,
		32.160519, 32.212494, 45.586727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.463453, 32.774521, 45.453060>,  <32.144608, 32.866119, 45.336681>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.463453, 32.774521, 45.453060> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.643353, 32.488235, 45.666779>,  <31.751291, 32.316463, 45.795010>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.643353, 32.488235, 45.666779>,  <31.463453, 32.774521, 45.453060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.643353, 32.488235, 45.666779> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841576, -0.139236, 0.521885,
		-0.299129, -0.684369, -0.664952,
		0.449746, -0.715718, 0.534299,
		31.778276, 32.273521, 45.827068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.892481, 32.305370, 45.739433>,  <31.463453, 32.774521, 45.453060>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.892481, 32.305370, 45.739433> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.217316, 32.229019, 45.960007>,  <31.412216, 32.183208, 46.092350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.217316, 32.229019, 45.960007>,  <30.892481, 32.305370, 45.739433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.217316, 32.229019, 45.960007> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581087, -0.177991, 0.794139,
		-0.053431, -0.965342, -0.255459,
		0.812086, -0.190875, 0.551438,
		31.460941, 32.171757, 46.125439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.617159, 31.831976, 46.275051>,  <30.892481, 32.305370, 45.739433>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.617159, 31.831976, 46.275051> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.970476, 31.960403, 46.411701>,  <31.182467, 32.037460, 46.493690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.970476, 31.960403, 46.411701>,  <30.617159, 31.831976, 46.275051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.970476, 31.960403, 46.411701> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318426, -0.123958, 0.939808,
		0.344091, -0.938908, -0.007254,
		0.883293, 0.321070, 0.341626,
		31.235464, 32.056725, 46.514191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.901720, 31.314661, 46.695072>,  <30.617159, 31.831976, 46.275051>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.901720, 31.314661, 46.695072> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.079752, 31.655483, 46.805279>,  <31.186571, 31.859976, 46.871403>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.079752, 31.655483, 46.805279>,  <30.901720, 31.314661, 46.695072>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.079752, 31.655483, 46.805279> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275718, -0.162329, 0.947433,
		0.851988, -0.497646, 0.162678,
		0.445079, 0.852055, 0.275512,
		31.213276, 31.911100, 46.887932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.244623, 31.110956, 47.356022>,  <30.901720, 31.314661, 46.695072>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.244623, 31.110956, 47.356022> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.220827, 31.510120, 47.366112>,  <31.206551, 31.749619, 47.372166>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.220827, 31.510120, 47.366112>,  <31.244623, 31.110956, 47.356022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.220827, 31.510120, 47.366112> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082429, -0.030094, 0.996143,
		0.994820, 0.057181, 0.084047,
		-0.059489, 0.997910, 0.025225,
		31.202980, 31.809494, 47.373680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.711636, 31.330605, 47.868008>,  <31.244623, 31.110956, 47.356022>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.711636, 31.330605, 47.868008> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.455908, 31.637465, 47.847027>,  <31.302471, 31.821581, 47.834438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.455908, 31.637465, 47.847027>,  <31.711636, 31.330605, 47.868008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.455908, 31.637465, 47.847027> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095880, -0.011847, 0.995322,
		0.762940, 0.641359, 0.081129,
		-0.639320, 0.767150, -0.052455,
		31.264112, 31.867609, 47.831291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.895847, 31.769381, 48.318134>,  <31.711636, 31.330605, 47.868008>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.895847, 31.769381, 48.318134> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.511980, 31.862541, 48.255154>,  <31.281660, 31.918438, 48.217365>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.511980, 31.862541, 48.255154>,  <31.895847, 31.769381, 48.318134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.511980, 31.862541, 48.255154> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150706, 0.046599, 0.987480,
		0.237321, 0.971384, -0.009620,
		-0.959670, 0.232899, -0.157453,
		31.224079, 31.932411, 48.207916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.754929, 32.258022, 48.883778>,  <31.895847, 31.769381, 48.318134>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.754929, 32.258022, 48.883778> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.393858, 32.145134, 48.753838>,  <31.177216, 32.077400, 48.675873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.393858, 32.145134, 48.753838>,  <31.754929, 32.258022, 48.883778>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.393858, 32.145134, 48.753838> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334819, -0.013586, 0.942184,
		-0.270314, 0.959254, -0.082228,
		-0.902677, -0.282217, -0.324849,
		31.123055, 32.060471, 48.656384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.332966, 32.614376, 49.306477>,  <31.754929, 32.258022, 48.883778>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.332966, 32.614376, 49.306477> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.104776, 32.318604, 49.163479>,  <30.967863, 32.141140, 49.077679>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.104776, 32.318604, 49.163479>,  <31.332966, 32.614376, 49.306477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.104776, 32.318604, 49.163479> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317722, -0.202699, 0.926265,
		-0.757371, 0.641995, -0.119297,
		-0.570476, -0.739429, -0.357494,
		30.933634, 32.096775, 49.056232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.574398, 32.837521, 49.476021>,  <31.332966, 32.614376, 49.306477>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.574398, 32.837521, 49.476021> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.580027, 32.442959, 49.410530>,  <30.583405, 32.206223, 49.371235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.580027, 32.442959, 49.410530>,  <30.574398, 32.837521, 49.476021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.580027, 32.442959, 49.410530> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453178, -0.152252, 0.878322,
		-0.891309, 0.061839, -0.449160,
		0.014071, -0.986405, -0.163728,
		30.584248, 32.147038, 49.361412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.503967, 33.458469, 49.069038>,  <30.574398, 32.837521, 49.476021>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.503967, 33.458469, 49.069038> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.533609, 33.818974, 49.239792>,  <30.551395, 34.035278, 49.342243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.533609, 33.818974, 49.239792>,  <30.503967, 33.458469, 49.069038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.533609, 33.818974, 49.239792> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275800, 0.392845, -0.877272,
		-0.958354, 0.182747, -0.219456,
		0.074107, 0.901264, 0.426887,
		30.555841, 34.089352, 49.367859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.992077, 33.897572, 48.773235>,  <30.503967, 33.458469, 49.069038>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.992077, 33.897572, 48.773235> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.287592, 34.137352, 48.896423>,  <30.464901, 34.281219, 48.970337>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.287592, 34.137352, 48.896423>,  <29.992077, 33.897572, 48.773235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.287592, 34.137352, 48.896423> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023365, 0.433916, -0.900650,
		-0.673534, 0.672584, 0.306566,
		0.738787, 0.599456, 0.307972,
		30.509228, 34.317188, 48.988815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.845764, 34.489449, 48.463730>,  <29.992077, 33.897572, 48.773235>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.845764, 34.489449, 48.463730> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.217123, 34.584553, 48.577961>,  <30.439938, 34.641613, 48.646500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.217123, 34.584553, 48.577961>,  <29.845764, 34.489449, 48.463730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.217123, 34.584553, 48.577961> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094422, 0.592349, -0.800129,
		-0.359395, 0.769801, 0.527485,
		0.928396, 0.237757, 0.285574,
		30.495642, 34.655880, 48.663631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.064211, 35.310734, 48.396267>,  <29.845764, 34.489449, 48.463730>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.064211, 35.310734, 48.396267> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.393751, 35.085480, 48.370495>,  <30.591476, 34.950329, 48.355034>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.393751, 35.085480, 48.370495>,  <30.064211, 35.310734, 48.396267>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.393751, 35.085480, 48.370495> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245383, 0.456817, -0.855047,
		0.510936, 0.688623, 0.514532,
		0.823852, -0.563131, -0.064428,
		30.640907, 34.916542, 48.351166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.541479, 35.783989, 48.160110>,  <30.064211, 35.310734, 48.396267>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.541479, 35.783989, 48.160110> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.737309, 35.442482, 48.089233>,  <30.854807, 35.237579, 48.046707>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.737309, 35.442482, 48.089233>,  <30.541479, 35.783989, 48.160110>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.737309, 35.442482, 48.089233> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417243, 0.407814, -0.812155,
		0.765654, 0.323677, 0.555884,
		0.489574, -0.853768, -0.177192,
		30.884180, 35.186352, 48.036076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.259501, 35.966805, 47.967812>,  <30.541479, 35.783989, 48.160110>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.259501, 35.966805, 47.967812> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.190973, 35.607967, 47.804901>,  <31.149857, 35.392666, 47.707157>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.190973, 35.607967, 47.804901>,  <31.259501, 35.966805, 47.967812>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.190973, 35.607967, 47.804901> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449534, 0.296666, -0.842561,
		0.876680, -0.327430, 0.352450,
		-0.171319, -0.897095, -0.407272,
		31.139578, 35.338840, 47.682720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.932327, 35.664486, 47.610264>,  <31.259501, 35.966805, 47.967812>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.932327, 35.664486, 47.610264> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.621874, 35.485668, 47.432381>,  <31.435602, 35.378380, 47.325649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.621874, 35.485668, 47.432381>,  <31.932327, 35.664486, 47.610264>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.621874, 35.485668, 47.432381> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397390, 0.200810, -0.895409,
		0.489588, -0.871681, 0.021794,
		-0.776134, -0.447042, -0.444712,
		31.389034, 35.351555, 47.298965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.470901, 36.107300, 47.310463>,  <31.932327, 35.664486, 47.610264>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.470901, 36.107300, 47.310463> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.663368, 36.456432, 47.343079>,  <32.778847, 36.665913, 47.362648>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.663368, 36.456432, 47.343079>,  <32.470901, 36.107300, 47.310463>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.663368, 36.456432, 47.343079> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133164, -0.019162, 0.990909,
		0.866457, -0.487650, 0.107009,
		0.481166, 0.872829, 0.081541,
		32.807716, 36.718281, 47.367542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012360, 35.992722, 47.721775>,  <32.470901, 36.107300, 47.310463>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012360, 35.992722, 47.721775> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.927444, 36.382992, 47.743656>,  <32.876495, 36.617153, 47.756786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.927444, 36.382992, 47.743656>,  <33.012360, 35.992722, 47.721775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.927444, 36.382992, 47.743656> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183419, -0.094766, 0.978456,
		0.959839, 0.197683, 0.199076,
		-0.212290, 0.975675, 0.054701,
		32.863758, 36.675694, 47.760067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.282066, 36.169773, 48.335075>,  <33.012360, 35.992722, 47.721775>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.282066, 36.169773, 48.335075> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.033859, 36.478176, 48.277794>,  <32.884937, 36.663219, 48.243423>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.033859, 36.478176, 48.277794>,  <33.282066, 36.169773, 48.335075>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.033859, 36.478176, 48.277794> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179957, 0.037736, 0.982950,
		0.763267, 0.635705, 0.115332,
		-0.620515, 0.771009, -0.143202,
		32.847706, 36.709480, 48.234833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483875, 36.826328, 48.707153>,  <33.282066, 36.169773, 48.335075>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.483875, 36.826328, 48.707153> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.086994, 36.863010, 48.673386>,  <32.848866, 36.885017, 48.653126>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.086994, 36.863010, 48.673386>,  <33.483875, 36.826328, 48.707153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.086994, 36.863010, 48.673386> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060631, 0.236630, 0.969706,
		0.108898, 0.967263, -0.229225,
		-0.992202, 0.091701, -0.084415,
		32.789333, 36.890522, 48.648060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.365585, 37.272491, 49.245590>,  <33.483875, 36.826328, 48.707153>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.365585, 37.272491, 49.245590> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.994041, 37.165985, 49.142578>,  <32.771114, 37.102081, 49.080772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.994041, 37.165985, 49.142578>,  <33.365585, 37.272491, 49.245590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.994041, 37.165985, 49.142578> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322625, 0.239913, 0.915617,
		-0.182010, 0.933566, -0.308749,
		-0.928862, -0.266262, -0.257526,
		32.715382, 37.086105, 49.065319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.880764, 37.864796, 49.309677>,  <33.365585, 37.272491, 49.245590>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.880764, 37.864796, 49.309677> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.648685, 37.539444, 49.326614>,  <32.509438, 37.344234, 49.336777>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.648685, 37.539444, 49.326614>,  <32.880764, 37.864796, 49.309677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.648685, 37.539444, 49.326614> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353250, 0.298139, 0.886751,
		-0.733884, 0.499534, -0.460304,
		-0.580197, -0.813375, 0.042339,
		32.474625, 37.295433, 49.339317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.166840, 38.078449, 49.462746>,  <32.880764, 37.864796, 49.309677>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.166840, 38.078449, 49.462746> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.161198, 37.691494, 49.563904>,  <32.157814, 37.459320, 49.624599>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.161198, 37.691494, 49.563904>,  <32.166840, 38.078449, 49.462746>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.161198, 37.691494, 49.563904> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567247, 0.216024, 0.794710,
		-0.823427, -0.132248, -0.551796,
		-0.014102, -0.967390, 0.252898,
		32.156967, 37.401276, 49.639774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.461641, 37.828438, 49.607288>,  <32.166840, 38.078449, 49.462746>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.461641, 37.828438, 49.607288> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.692383, 37.541912, 49.764324>,  <31.830828, 37.369995, 49.858547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.692383, 37.541912, 49.764324>,  <31.461641, 37.828438, 49.607288>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.692383, 37.541912, 49.764324> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416589, 0.155427, 0.895710,
		-0.702633, -0.680242, -0.208752,
		0.576854, -0.716319, 0.392590,
		31.865438, 37.327015, 49.882103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.032309, 37.500114, 50.090153>,  <31.461641, 37.828438, 49.607288>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.032309, 37.500114, 50.090153> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.403814, 37.393410, 50.193100>,  <31.626717, 37.329388, 50.254868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.403814, 37.393410, 50.193100>,  <31.032309, 37.500114, 50.090153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.403814, 37.393410, 50.193100> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207510, 0.201152, 0.957328,
		-0.307149, -0.942537, 0.131467,
		0.928762, -0.266762, 0.257370,
		31.682444, 37.313381, 50.270309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.474766, 35.372578, 34.732124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.828335, 35.212959, 34.829655>,  <36.040474, 35.117188, 34.888172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.828335, 35.212959, 34.829655>,  <35.474766, 35.372578, 34.732124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828335, 35.212959, 34.829655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154139, 0.243652, 0.957536,
		-0.441509, -0.883967, 0.153860,
		0.883918, -0.399045, 0.243829,
		36.093510, 35.093246, 34.902802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291191, 34.864418, 35.194820>,  <35.474766, 35.372578, 34.732124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291191, 34.864418, 35.194820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683338, 34.897846, 35.266251>,  <35.918629, 34.917904, 35.309109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683338, 34.897846, 35.266251>,  <35.291191, 34.864418, 35.194820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683338, 34.897846, 35.266251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181433, 0.027897, 0.983008,
		0.077168, -0.996111, 0.042512,
		0.980371, 0.083570, 0.178575,
		35.977451, 34.922916, 35.319824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399891, 34.509872, 35.796997>,  <35.291191, 34.864418, 35.194820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399891, 34.509872, 35.796997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.702770, 34.769726, 35.769802>,  <35.884499, 34.925636, 35.753487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.702770, 34.769726, 35.769802>,  <35.399891, 34.509872, 35.796997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702770, 34.769726, 35.769802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127729, 0.249340, 0.959956,
		0.640570, -0.718197, 0.271778,
		0.757202, 0.649633, -0.067985,
		35.929932, 34.964615, 35.749405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841183, 34.409748, 36.470245>,  <35.399891, 34.509872, 35.796997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841183, 34.409748, 36.470245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.923248, 34.762951, 36.301384>,  <35.972488, 34.974873, 36.200069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.923248, 34.762951, 36.301384>,  <35.841183, 34.409748, 36.470245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923248, 34.762951, 36.301384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099582, 0.447919, 0.888511,
		0.973649, -0.140251, 0.179828,
		0.205163, 0.883005, -0.422149,
		35.984798, 35.027851, 36.174740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321972, 34.788036, 36.886292>,  <35.841183, 34.409748, 36.470245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321972, 34.788036, 36.886292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.137600, 35.087532, 36.695740>,  <36.026978, 35.267227, 36.581409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.137600, 35.087532, 36.695740>,  <36.321972, 34.788036, 36.886292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.137600, 35.087532, 36.695740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058822, 0.509847, 0.858252,
		0.885486, 0.423615, -0.190960,
		-0.460929, 0.748737, -0.476380,
		35.999321, 35.312153, 36.552826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683918, 35.448509, 37.166492>,  <36.321972, 34.788036, 36.886292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.683918, 35.448509, 37.166492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.340420, 35.562500, 36.996155>,  <36.134319, 35.630894, 36.893951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.340420, 35.562500, 36.996155>,  <36.683918, 35.448509, 37.166492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.340420, 35.562500, 36.996155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205454, 0.569851, 0.795650,
		0.469410, 0.770753, -0.430807,
		-0.858745, 0.284975, -0.425848,
		36.082798, 35.647991, 36.868401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660313, 36.147308, 37.342461>,  <36.683918, 35.448509, 37.166492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660313, 36.147308, 37.342461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.289726, 36.044613, 37.232380>,  <36.067375, 35.982994, 37.166332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.289726, 36.044613, 37.232380>,  <36.660313, 36.147308, 37.342461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.289726, 36.044613, 37.232380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348707, 0.310393, 0.884341,
		-0.141623, 0.915282, -0.377096,
		-0.926470, -0.256739, -0.275206,
		36.011784, 35.967590, 37.149818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371086, 36.528477, 37.801147>,  <36.660313, 36.147308, 37.342461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371086, 36.528477, 37.801147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.082867, 36.282333, 37.673306>,  <35.909935, 36.134647, 37.596600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.082867, 36.282333, 37.673306>,  <36.371086, 36.528477, 37.801147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082867, 36.282333, 37.673306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562776, 0.249702, 0.787993,
		-0.405092, 0.747651, -0.526230,
		-0.720544, -0.615360, -0.319608,
		35.866703, 36.097725, 37.577423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792023, 36.963913, 37.851250>,  <36.371086, 36.528477, 37.801147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792023, 36.963913, 37.851250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.681087, 36.579605, 37.852169>,  <35.614529, 36.349022, 37.852722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.681087, 36.579605, 37.852169>,  <35.792023, 36.963913, 37.851250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.681087, 36.579605, 37.852169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592852, 0.173013, 0.786507,
		-0.756051, 0.216763, -0.617577,
		-0.277335, -0.960771, 0.002299,
		35.597889, 36.291374, 37.852859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028011, 36.895142, 37.866600>,  <35.792023, 36.963913, 37.851250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028011, 36.895142, 37.866600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.139507, 36.537018, 38.005577>,  <35.206406, 36.322144, 38.088963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.139507, 36.537018, 38.005577>,  <35.028011, 36.895142, 37.866600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139507, 36.537018, 38.005577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700852, 0.057707, 0.710969,
		-0.656589, -0.441685, -0.611396,
		0.278743, -0.895312, 0.347445,
		35.223129, 36.268425, 38.109810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399689, 36.520599, 38.032242>,  <35.028011, 36.895142, 37.866600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399689, 36.520599, 38.032242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.691177, 36.331688, 38.230598>,  <34.866070, 36.218342, 38.349613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.691177, 36.331688, 38.230598>,  <34.399689, 36.520599, 38.032242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691177, 36.331688, 38.230598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595082, -0.078382, 0.799833,
		-0.338875, -0.877957, -0.338164,
		0.728725, -0.472279, 0.495895,
		34.909794, 36.190002, 38.379368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161633, 35.801960, 38.453369>,  <34.399689, 36.520599, 38.032242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161633, 35.801960, 38.453369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.490463, 35.974033, 38.602570>,  <34.687763, 36.077278, 38.692089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.490463, 35.974033, 38.602570>,  <34.161633, 35.801960, 38.453369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490463, 35.974033, 38.602570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458116, 0.110727, 0.881969,
		0.338109, -0.895924, 0.288101,
		0.822078, 0.430186, 0.372999,
		34.737087, 36.103088, 38.714470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692509, 35.323528, 38.716125>,  <34.161633, 35.801960, 38.453369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692509, 35.323528, 38.716125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308880, 35.412552, 38.646103>,  <33.078701, 35.465965, 38.604088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308880, 35.412552, 38.646103>,  <33.692509, 35.323528, 38.716125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.308880, 35.412552, 38.646103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186214, 0.030007, -0.982051,
		-0.213310, -0.974458, -0.070222,
		-0.959074, 0.222558, -0.175057,
		33.021156, 35.479321, 38.593586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.506332, 34.752777, 38.221287>,  <33.692509, 35.323528, 38.716125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.506332, 34.752777, 38.221287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.228748, 35.037720, 38.179401>,  <33.062199, 35.208687, 38.154270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.228748, 35.037720, 38.179401>,  <33.506332, 34.752777, 38.221287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.228748, 35.037720, 38.179401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071076, -0.076946, -0.994499,
		-0.716498, -0.697584, 0.002766,
		-0.693959, 0.712360, -0.104713,
		33.020561, 35.251427, 38.147987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050510, 34.515572, 37.762051>,  <33.506332, 34.752777, 38.221287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050510, 34.515572, 37.762051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.992950, 34.911148, 37.747662>,  <32.958416, 35.148495, 37.739029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.992950, 34.911148, 37.747662>,  <33.050510, 34.515572, 37.762051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.992950, 34.911148, 37.747662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034138, -0.041290, -0.998564,
		-0.989004, -0.142463, 0.039702,
		-0.143897, 0.988939, -0.035973,
		32.949780, 35.207829, 37.736870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.610718, 34.588436, 37.282547>,  <33.050510, 34.515572, 37.762051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.610718, 34.588436, 37.282547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746971, 34.963856, 37.304775>,  <32.828724, 35.189110, 37.318111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746971, 34.963856, 37.304775>,  <32.610718, 34.588436, 37.282547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.746971, 34.963856, 37.304775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109715, 0.019024, -0.993781,
		-0.933773, 0.344612, -0.096494,
		0.340634, 0.938552, 0.055573,
		32.849163, 35.245422, 37.321445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.210251, 34.990841, 36.843674>,  <32.610718, 34.588436, 37.282547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.210251, 34.990841, 36.843674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.536179, 35.219746, 36.880730>,  <32.731735, 35.357090, 36.902962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.536179, 35.219746, 36.880730>,  <32.210251, 34.990841, 36.843674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.536179, 35.219746, 36.880730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110897, 0.002983, -0.993827,
		-0.569010, 0.820062, -0.061032,
		0.814818, 0.572266, 0.092640,
		32.780624, 35.391426, 36.908524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.112835, 35.509106, 36.337589>,  <32.210251, 34.990841, 36.843674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.112835, 35.509106, 36.337589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.506630, 35.535034, 36.402817>,  <32.742905, 35.550591, 36.441952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.506630, 35.535034, 36.402817>,  <32.112835, 35.509106, 36.337589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.506630, 35.535034, 36.402817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162748, 0.010203, -0.986615,
		-0.065615, 0.997845, -0.000505,
		0.984483, 0.064819, 0.163066,
		32.801975, 35.554482, 36.451736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.296387, 36.009659, 35.850464>,  <32.112835, 35.509106, 36.337589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.296387, 36.009659, 35.850464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634480, 35.815754, 35.940430>,  <32.837337, 35.699409, 35.994408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634480, 35.815754, 35.940430>,  <32.296387, 36.009659, 35.850464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.634480, 35.815754, 35.940430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186653, -0.126561, -0.974240,
		0.500738, 0.865442, -0.016492,
		0.845235, -0.484761, 0.224911,
		32.888050, 35.670326, 36.007904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.769520, 36.300346, 35.413982>,  <32.296387, 36.009659, 35.850464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.769520, 36.300346, 35.413982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.941029, 35.957294, 35.527565>,  <33.043934, 35.751465, 35.595715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.941029, 35.957294, 35.527565>,  <32.769520, 36.300346, 35.413982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.941029, 35.957294, 35.527565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274514, -0.175766, -0.945383,
		0.860694, 0.483306, 0.160066,
		0.428775, -0.857626, 0.283955,
		33.069660, 35.700008, 35.612751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390709, 36.331234, 35.119400>,  <32.769520, 36.300346, 35.413982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390709, 36.331234, 35.119400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311230, 35.944859, 35.185699>,  <33.263542, 35.713032, 35.225479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311230, 35.944859, 35.185699>,  <33.390709, 36.331234, 35.119400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.311230, 35.944859, 35.185699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226145, -0.209745, -0.951244,
		0.953613, -0.151528, 0.260119,
		-0.198699, -0.965943, 0.165748,
		33.251621, 35.655075, 35.235424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.960976, 35.995628, 34.833401>,  <33.390709, 36.331234, 35.119400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.960976, 35.995628, 34.833401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.663208, 35.728577, 34.837654>,  <33.484547, 35.568344, 34.840206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.663208, 35.728577, 34.837654>,  <33.960976, 35.995628, 34.833401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663208, 35.728577, 34.837654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289719, -0.337313, -0.895702,
		0.601586, -0.663694, 0.444527,
		-0.744417, -0.667630, 0.010638,
		33.439884, 35.528286, 34.840847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.210014, 35.352798, 34.578865>,  <33.960976, 35.995628, 34.833401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.210014, 35.352798, 34.578865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.814369, 35.309593, 34.538902>,  <33.576981, 35.283669, 34.514923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.814369, 35.309593, 34.538902>,  <34.210014, 35.352798, 34.578865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.814369, 35.309593, 34.538902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143021, -0.546388, -0.825231,
		0.034552, -0.830538, 0.555890,
		-0.989116, -0.108018, -0.099906,
		33.517635, 35.277187, 34.508930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.150726, 34.698513, 34.364796>,  <34.210014, 35.352798, 34.578865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.150726, 34.698513, 34.364796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.789371, 34.839626, 34.267277>,  <33.572559, 34.924294, 34.208767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.789371, 34.839626, 34.267277>,  <34.150726, 34.698513, 34.364796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.789371, 34.839626, 34.267277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012401, -0.589771, -0.807475,
		-0.428646, -0.726439, 0.537167,
		-0.903387, 0.352782, -0.243795,
		33.518356, 34.945461, 34.194138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.552067, 34.203415, 34.368412>,  <34.150726, 34.698513, 34.364796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.552067, 34.203415, 34.368412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432926, 34.491005, 34.117218>,  <33.361443, 34.663559, 33.966503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432926, 34.491005, 34.117218>,  <33.552067, 34.203415, 34.368412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.432926, 34.491005, 34.117218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194854, -0.689778, -0.697308,
		-0.934514, -0.085330, 0.345546,
		-0.297851, 0.718975, -0.627981,
		33.343571, 34.706696, 33.928825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.068340, 33.797832, 34.070107>,  <33.552067, 34.203415, 34.368412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.068340, 33.797832, 34.070107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.132175, 34.099457, 33.815254>,  <33.170475, 34.280430, 33.662342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.132175, 34.099457, 33.815254>,  <33.068340, 33.797832, 34.070107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.132175, 34.099457, 33.815254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197412, -0.607985, -0.769014,
		-0.967244, 0.248501, 0.051833,
		0.159587, 0.754057, -0.637126,
		33.180050, 34.325672, 33.624115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.764694, 33.495388, 34.058811>,  <33.068340, 33.797832, 34.070107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.764694, 33.495388, 34.058811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.824821, 33.353512, 33.689682>,  <33.860897, 33.268387, 33.468204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.824821, 33.353512, 33.689682>,  <33.764694, 33.495388, 34.058811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.824821, 33.353512, 33.689682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160274, 0.912336, -0.376769,
		0.975560, 0.204538, 0.080288,
		0.150314, -0.354693, -0.922821,
		33.869915, 33.247105, 33.412834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.885815, 33.294952, 34.838463>,  <33.764694, 33.495388, 34.058811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.885815, 33.294952, 34.838463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.989178, 32.965740, 34.636139>,  <34.051197, 32.768211, 34.514744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.989178, 32.965740, 34.636139>,  <33.885815, 33.294952, 34.838463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.989178, 32.965740, 34.636139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294183, -0.431683, 0.852705,
		-0.920152, -0.369150, 0.130570,
		0.258411, -0.823030, -0.505812,
		34.066700, 32.718830, 34.484394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.528275, 32.697323, 35.076653>,  <33.885815, 33.294952, 34.838463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.528275, 32.697323, 35.076653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901833, 32.631245, 34.949818>,  <34.125969, 32.591599, 34.873714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901833, 32.631245, 34.949818>,  <33.528275, 32.697323, 35.076653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901833, 32.631245, 34.949818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303500, -0.102547, 0.947297,
		-0.189004, -0.980915, -0.045632,
		0.933897, -0.165194, -0.317090,
		34.182003, 32.581688, 34.854691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.705372, 32.059849, 35.295856>,  <33.528275, 32.697323, 35.076653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.705372, 32.059849, 35.295856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051170, 32.252258, 35.237534>,  <34.258652, 32.367702, 35.202541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051170, 32.252258, 35.237534>,  <33.705372, 32.059849, 35.295856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051170, 32.252258, 35.237534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280572, -0.221137, 0.934011,
		0.417038, -0.848360, -0.326135,
		0.864499, 0.481023, -0.145804,
		34.310520, 32.396564, 35.193794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224411, 31.619770, 35.503059>,  <33.705372, 32.059849, 35.295856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224411, 31.619770, 35.503059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.388374, 31.983992, 35.524467>,  <34.486752, 32.202526, 35.537312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.388374, 31.983992, 35.524467>,  <34.224411, 31.619770, 35.503059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.388374, 31.983992, 35.524467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245473, -0.166637, 0.954974,
		0.878474, -0.378317, -0.291822,
		0.409911, 0.910554, 0.053520,
		34.511349, 32.257156, 35.540524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750980, 31.575897, 36.028183>,  <34.224411, 31.619770, 35.503059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750980, 31.575897, 36.028183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.685200, 31.969637, 36.002850>,  <34.645729, 32.205879, 35.987648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.685200, 31.969637, 36.002850>,  <34.750980, 31.575897, 36.028183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685200, 31.969637, 36.002850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195361, 0.095442, 0.976076,
		0.966844, 0.148149, -0.208000,
		-0.164456, 0.984349, -0.063335,
		34.635864, 32.264942, 35.983849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414955, 31.947399, 36.310921>,  <34.750980, 31.575897, 36.028183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414955, 31.947399, 36.310921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.097778, 32.190712, 36.324951>,  <34.907471, 32.336700, 36.333370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.097778, 32.190712, 36.324951>,  <35.414955, 31.947399, 36.310921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097778, 32.190712, 36.324951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141117, 0.127339, 0.981769,
		0.592727, 0.783439, -0.186812,
		-0.792944, 0.608284, 0.035079,
		34.859894, 32.373196, 36.335476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672180, 32.403595, 36.748611>,  <35.414955, 31.947399, 36.310921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672180, 32.403595, 36.748611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.272461, 32.418476, 36.747307>,  <35.032627, 32.427406, 36.746525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.272461, 32.418476, 36.747307>,  <35.672180, 32.403595, 36.748611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.272461, 32.418476, 36.747307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005512, -0.060611, 0.998146,
		0.036935, 0.997468, 0.060773,
		-0.999303, 0.037201, -0.003259,
		34.972672, 32.429638, 36.746330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519321, 32.785801, 37.461967>,  <35.672180, 32.403595, 36.748611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.519321, 32.785801, 37.461967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.186649, 32.608837, 37.327755>,  <34.987045, 32.502659, 37.247227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.186649, 32.608837, 37.327755>,  <35.519321, 32.785801, 37.461967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.186649, 32.608837, 37.327755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275962, -0.195019, 0.941176,
		-0.481824, 0.875350, 0.040104,
		-0.831680, -0.442414, -0.335528,
		34.937145, 32.476112, 37.227097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975990, 33.080517, 37.876484>,  <35.519321, 32.785801, 37.461967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.975990, 33.080517, 37.876484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.828823, 32.749546, 37.706779>,  <34.740524, 32.550964, 37.604958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.828823, 32.749546, 37.706779>,  <34.975990, 33.080517, 37.876484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828823, 32.749546, 37.706779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436353, -0.249277, 0.864556,
		-0.821118, 0.503211, -0.269339,
		-0.367914, -0.827430, -0.424264,
		34.718449, 32.501316, 37.579502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248039, 33.148064, 37.961121>,  <34.975990, 33.080517, 37.876484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.248039, 33.148064, 37.961121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.388683, 32.774628, 37.933460>,  <34.473068, 32.550568, 37.916862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.388683, 32.774628, 37.933460>,  <34.248039, 33.148064, 37.961121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.388683, 32.774628, 37.933460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308383, -0.185255, 0.933049,
		-0.883894, -0.306745, -0.353041,
		0.351611, -0.933589, -0.069151,
		34.494167, 32.494553, 37.912716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.772526, 32.833313, 38.490128>,  <34.248039, 33.148064, 37.961121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.772526, 32.833313, 38.490128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.047428, 32.554001, 38.410049>,  <34.212368, 32.386414, 38.362003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.047428, 32.554001, 38.410049>,  <33.772526, 32.833313, 38.490128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.047428, 32.554001, 38.410049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112022, -0.374171, 0.920569,
		-0.717725, -0.610242, -0.335375,
		0.687257, -0.698285, -0.200191,
		34.253605, 32.344517, 38.349991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.446297, 32.178032, 38.593231>,  <33.772526, 32.833313, 38.490128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.446297, 32.178032, 38.593231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836979, 32.094601, 38.613407>,  <34.071388, 32.044540, 38.625515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836979, 32.094601, 38.613407>,  <33.446297, 32.178032, 38.593231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.836979, 32.094601, 38.613407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138102, -0.431032, 0.891706,
		-0.164246, -0.877899, -0.449796,
		0.976704, -0.208577, 0.050445,
		34.129990, 32.032028, 38.628540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497547, 31.489407, 38.673862>,  <33.446297, 32.178032, 38.593231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.497547, 31.489407, 38.673862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.800587, 31.690617, 38.840240>,  <33.982410, 31.811342, 38.940067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.800587, 31.690617, 38.840240>,  <33.497547, 31.489407, 38.673862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.800587, 31.690617, 38.840240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129834, -0.508377, 0.851291,
		0.639675, -0.698942, -0.319838,
		0.757601, 0.503024, 0.415943,
		34.027866, 31.841524, 38.965023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.478760, 31.099390, 39.149708>,  <33.497547, 31.489407, 38.673862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.478760, 31.099390, 39.149708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752655, 31.373882, 39.247868>,  <33.916992, 31.538578, 39.306763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752655, 31.373882, 39.247868>,  <33.478760, 31.099390, 39.149708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.752655, 31.373882, 39.247868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029749, -0.310118, 0.950232,
		0.728180, -0.657962, -0.191936,
		0.684740, 0.686231, 0.245395,
		33.958076, 31.579752, 39.321487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994038, 30.786406, 39.589222>,  <33.478760, 31.099390, 39.149708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994038, 30.786406, 39.589222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005745, 31.173798, 39.688168>,  <34.012772, 31.406233, 39.747536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005745, 31.173798, 39.688168>,  <33.994038, 30.786406, 39.589222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005745, 31.173798, 39.688168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070473, -0.244853, 0.966996,
		0.997084, -0.045737, 0.061085,
		0.029270, 0.968481, 0.247362,
		34.014526, 31.464342, 39.762375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.444946, 30.774237, 40.223438>,  <33.994038, 30.786406, 39.589222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.444946, 30.774237, 40.223438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.283062, 31.139608, 40.206234>,  <34.185932, 31.358831, 40.195911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.283062, 31.139608, 40.206234>,  <34.444946, 30.774237, 40.223438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283062, 31.139608, 40.206234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058503, 0.021079, 0.998065,
		0.912569, 0.406449, 0.044908,
		-0.404715, 0.913430, -0.043015,
		34.161648, 31.413637, 40.193329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952824, 31.255041, 40.624989>,  <34.444946, 30.774237, 40.223438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952824, 31.255041, 40.624989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.594734, 31.433268, 40.622440>,  <34.379879, 31.540203, 40.620911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.594734, 31.433268, 40.622440>,  <34.952824, 31.255041, 40.624989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.594734, 31.433268, 40.622440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019705, -0.025293, 0.999486,
		0.445176, 0.894891, 0.031423,
		-0.895226, 0.445567, -0.006374,
		34.326168, 31.566938, 40.620529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971733, 31.914516, 40.912621>,  <34.952824, 31.255041, 40.624989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.971733, 31.914516, 40.912621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589642, 31.803896, 40.954678>,  <34.360386, 31.737524, 40.979912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589642, 31.803896, 40.954678>,  <34.971733, 31.914516, 40.912621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589642, 31.803896, 40.954678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094137, 0.052822, 0.994157,
		-0.280490, 0.959546, -0.024424,
		-0.955230, -0.276552, 0.105145,
		34.303074, 31.720930, 40.986221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.747368, 32.376637, 41.400047>,  <34.971733, 31.914516, 40.912621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.747368, 32.376637, 41.400047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.475498, 32.084137, 41.376991>,  <34.312378, 31.908638, 41.363159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.475498, 32.084137, 41.376991>,  <34.747368, 32.376637, 41.400047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.475498, 32.084137, 41.376991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117625, 0.031088, 0.992571,
		-0.724023, 0.681404, -0.107143,
		-0.679673, -0.731247, -0.057641,
		34.271595, 31.864763, 41.359699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.130150, 32.629581, 41.657520>,  <34.747368, 32.376637, 41.400047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.130150, 32.629581, 41.657520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109035, 32.232380, 41.699772>,  <34.096367, 31.994059, 41.725124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109035, 32.232380, 41.699772>,  <34.130150, 32.629581, 41.657520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109035, 32.232380, 41.699772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200191, 0.114151, 0.973084,
		-0.978334, 0.030215, -0.204816,
		-0.052781, -0.993004, 0.105629,
		34.093201, 31.934479, 41.731461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.505653, 32.583344, 42.054058>,  <34.130150, 32.629581, 41.657520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.505653, 32.583344, 42.054058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.689018, 32.228725, 42.079041>,  <33.799038, 32.015957, 42.094028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.689018, 32.228725, 42.079041>,  <33.505653, 32.583344, 42.054058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.689018, 32.228725, 42.079041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324583, -0.101590, 0.940386,
		-0.827347, -0.451356, -0.334327,
		0.458413, -0.886542, 0.062453,
		33.826542, 31.962763, 42.097775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.001659, 32.180061, 42.251579>,  <33.505653, 32.583344, 42.054058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.001659, 32.180061, 42.251579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.346245, 31.999279, 42.344196>,  <33.552998, 31.890810, 42.399765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.346245, 31.999279, 42.344196>,  <33.001659, 32.180061, 42.251579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.346245, 31.999279, 42.344196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317339, -0.123169, 0.940279,
		-0.396446, -0.883496, -0.249530,
		0.861467, -0.451955, 0.231538,
		33.604687, 31.863693, 42.413658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.816303, 31.680595, 42.615108>,  <33.001659, 32.180061, 42.251579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.816303, 31.680595, 42.615108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200653, 31.714836, 42.720478>,  <33.431263, 31.735380, 42.783699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200653, 31.714836, 42.720478>,  <32.816303, 31.680595, 42.615108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.200653, 31.714836, 42.720478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229334, -0.287461, 0.929931,
		0.155328, -0.953960, -0.256582,
		0.960874, 0.085601, 0.263426,
		33.488914, 31.740517, 42.799507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.866364, 31.139107, 43.026192>,  <32.816303, 31.680595, 42.615108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.866364, 31.139107, 43.026192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.178299, 31.370655, 43.121490>,  <33.365459, 31.509584, 43.178669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.178299, 31.370655, 43.121490>,  <32.866364, 31.139107, 43.026192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.178299, 31.370655, 43.121490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266663, -0.037129, 0.963075,
		0.566344, -0.814571, 0.125409,
		0.779837, 0.578874, 0.238244,
		33.412251, 31.544317, 43.192963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120857, 30.809780, 43.663406>,  <32.866364, 31.139107, 43.026192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120857, 30.809780, 43.663406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.273041, 31.179693, 43.661148>,  <33.364349, 31.401642, 43.659794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.273041, 31.179693, 43.661148>,  <33.120857, 30.809780, 43.663406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.273041, 31.179693, 43.661148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156488, 0.070394, 0.985168,
		0.911463, -0.373929, 0.171499,
		0.380455, 0.924782, -0.005647,
		33.387177, 31.457129, 43.659454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.670334, 30.787374, 44.203011>,  <33.120857, 30.809780, 43.663406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.670334, 30.787374, 44.203011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.530964, 31.156910, 44.139610>,  <33.447342, 31.378632, 44.101570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.530964, 31.156910, 44.139610>,  <33.670334, 30.787374, 44.203011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.530964, 31.156910, 44.139610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339764, 0.033124, 0.939927,
		0.873591, 0.381348, 0.302346,
		-0.348424, 0.923838, -0.158505,
		33.426437, 31.434061, 44.092060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959251, 31.169825, 44.778625>,  <33.670334, 30.787374, 44.203011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959251, 31.169825, 44.778625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.647533, 31.372309, 44.630871>,  <33.460503, 31.493799, 44.542217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.647533, 31.372309, 44.630871>,  <33.959251, 31.169825, 44.778625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.647533, 31.372309, 44.630871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387993, 0.073122, 0.918757,
		0.492095, 0.859304, 0.139422,
		-0.779297, 0.506210, -0.369388,
		33.413746, 31.524172, 44.520054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.627075, 31.377781, 44.586895>,  <33.959251, 31.169825, 44.778625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.627075, 31.377781, 44.586895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.913742, 31.181704, 44.785328>,  <35.085743, 31.064056, 44.904388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.913742, 31.181704, 44.785328>,  <34.627075, 31.377781, 44.586895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.913742, 31.181704, 44.785328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311828, -0.411023, -0.856635,
		0.623816, 0.768616, -0.141712,
		0.716671, -0.490193, 0.496078,
		35.128742, 31.034645, 44.934151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247692, 31.453056, 44.142033>,  <34.627075, 31.377781, 44.586895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.247692, 31.453056, 44.142033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384266, 31.162945, 44.381161>,  <35.466209, 30.988878, 44.524639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384266, 31.162945, 44.381161>,  <35.247692, 31.453056, 44.142033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384266, 31.162945, 44.381161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359220, -0.487066, -0.796070,
		0.868552, 0.486556, 0.094234,
		0.341435, -0.725279, 0.597823,
		35.486698, 30.945360, 44.560509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957478, 31.500839, 44.213203>,  <35.247692, 31.453056, 44.142033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.957478, 31.500839, 44.213203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.865490, 31.115778, 44.270355>,  <35.810299, 30.884741, 44.304646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.865490, 31.115778, 44.270355>,  <35.957478, 31.500839, 44.213203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865490, 31.115778, 44.270355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554238, -0.250224, -0.793856,
		0.799960, -0.103373, 0.591082,
		-0.229967, -0.962653, 0.142876,
		35.796501, 30.826982, 44.313217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.673817, 31.147535, 44.071434>,  <35.957478, 31.500839, 44.213203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.673817, 31.147535, 44.071434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.381435, 30.874655, 44.064350>,  <36.206009, 30.710926, 44.060101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.381435, 30.874655, 44.064350>,  <36.673817, 31.147535, 44.071434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381435, 30.874655, 44.064350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341683, -0.343394, -0.874833,
		0.590732, -0.645509, 0.484100,
		-0.730950, -0.682201, -0.017705,
		36.162151, 30.669994, 44.059040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041309, 30.588438, 43.979103>,  <36.673817, 31.147535, 44.071434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.041309, 30.588438, 43.979103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.664726, 30.530817, 43.857182>,  <36.438778, 30.496244, 43.784027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.664726, 30.530817, 43.857182>,  <37.041309, 30.588438, 43.979103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.664726, 30.530817, 43.857182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334498, -0.286289, -0.897859,
		0.042075, -0.947253, 0.317714,
		-0.941457, -0.144052, -0.304808,
		36.382290, 30.487602, 43.765739>
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
